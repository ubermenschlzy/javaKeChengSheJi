<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<html>
	<head>
		<title>
			Schedule: Spring 2018
		</title>
	</head>
	
	<body bgcolor = "#ffffff" text = "#000000" >
		<div align = "center">
			<h2>
			 Schedule:Spring 2018
			</h2>
			<h3> TR1-2:30,E25-111</h3>
		</div>
		Here is the tentative schedule of lectures and due dates.
		The lecture notes and paper questions
		for future dates are copies from previous years,
		and may change.
		<p>
			<style>	
				table.calendar {
				    font-family: arial, helvetica;
				    font-size: 10pt;
				    empty-cells: show;
				    border: 1px solid #000000;
				    border-collapse: collapse;
				}
				table.calendar tr td {
				    border: 1px solid #aaaaaa;
				}
				table.calendar tr {
				    vertical-align: top;
				    height: 6em;
				    background: #eeeeee;
				}
				table.calendar thead tr {
				    text-align: center;
				    background: #444444;
				    color: #ffffff;
				    height: auto;
				    font-weight: bold;
				}
				.lecture {
				    background: #ffffaa;
				}
				.recitation {
				    background: #cccc99;
				}
				.tutorial {
				    background: #dddd55;
				}
				.quiz {
				    background: #ff9900;
				}
				.holiday {
				    background: #ccffcc;
				}
				.special {
				    background: #aaaaff;
				}
				.important {
				    background: #ffaaaa;
				}
				.reading {
				    color: #3333ff;
				}
				.deadline {
				    color: #ff0000;
				}
				.assignment {
				    color: #0aa00a;
				}
				.date {
				    color: #444444;
				}
				.due {
				    background: #ffaaaa;
				}
			</style>
		</p>
		<p>
			<table class = "calendar" cellspacing = "0" cellpadding = "6" width = "100%">
				<thead>
					<tr>
						<td width="16%">Monday</td>
						<td width="26%">Tuesday</td>
						<td width="16%">Wednesday</td>
						<td width="26%">Thursday</td>
						<td width="16%">Friday</td>
					</tr>
				</thead>
				<tbody>
					<tr> <!-- week of mar 5 -->
  						<td id="2018-3-5" class="special">
  							<span class="date">mar 5</span>
  							<br>
   					 	<i>Reg day</i>
   					 	</td>
  						<td id="2018-3-6" class="lecture">
  							<span class="date">mar 6</span>
  							<br>
    						<b>LEC 1:</b> 
    						<a href="notes/l01.txt">Introduction</a>
    						<br>
    						<span class="reading">
    							<b>Preparation:</b>  
    							Read 
    							<a href="papers/mapreduce.pdf">MapReduce</a>
    						</span>
    						<br>
    						<span class="reading">
    							<b>Assigned:</b>
    							 <a href="labs/lab-1.html">Lab 1</a>
    							</span>
    							<br>
    						<i>First day of classes</i> 
    					</td>
  						<td id="2018-3-7">
  							<span class="date">mar 7</span>
  						</td>
  						<td id="2018-3-8" class="special">
  							<span class="date">mar 8</span>
  							<br>
    						<i>Do the 
    							<a href="http://tour.golang.org/">Online Go tutorial</a> 
    							and work on lab 1</i>
    					</td>
  						<td id="2018-3-9" class="assign">
  							<span class="date">mar 9</span>
  							<br>
    					<span class="reading">
    						<b>Assigned:</b> 
    						<a href="labs/lab-2.html">Lab 2</a>
    					</span>
    					</td>
					</tr>
					<tr> <!-- week of mar 12 -->
					  <td id="2018-3-12" class="due">
					  	<span class="date">mar 12
					  	</span>
					  	<br>
					    <span class="deadline">
					    	<b>DUE:</b> 
					    	<a href="labs/lab-1.html">Lab 1</a>
					    </span>
					 	</td>
					  	<td id="2018-3-13" class="lecture">
					  		<span class="date">mar 13
					  		</span>
					  		<br>
					    	<b>LEC 2:</b>
					    	 <a href="notes/l02.txt">At-most-once RPC</a>, 
					    	 <a href="notes/l02-rpc-mutex.go">toy rpc w. mutexes</a>, 
					    	 <a href="notes/l02-rpc-chan.go">toy rpc w. channels </a>
					    	 <br>
					    	<span class="reading">
					    		<b>Preparation:</b>  
					    		(<a href="questions.html?q=q-gorpc&amp;lec=2">Question</a>)
					    	</span>
					    </td>
					  	<td id="2018-3-14">
					  		<span class="date">mar 14
					  		</span>
					  	</td>
					  	<td id="2018-3-15" class="lecture">
					  		<span class="date">mar 15
					  		</span>
					  		<br>
					    	<b>LEC 3:</b> 
					    	<a href="notes/l03.txt">Fault Tolerance: primary/backup replication</a>
					    	<br>
					    	<span class="reading">
					    		<b>Preparation:</b>  
					    		Read 
					    		<a href="papers/bressoud-hypervisor.pdf">Hypervisor (1995)</a> 
					    		(<a href="questions.html?q=q-hypervisor&amp;lec=3">Question</a>)
					    	</span>
					    	<br>
					    	<span class="deadline">
					    		<b>DUE:</b> 
					    		<a href="labs/lab-2.html">Lab 2, part A</a>
					    	</span>
					    </td>
					  	<td id="2018-3-16">
					  		<span class="date">mar 16
					  		</span>
					  	</td>
					</tr>


					<tr>
						 <!-- week of mar 19 -->
  						<td id="2018-3-19" class="holiday">
  							<span class="date">mar 19</span>
  							<br>
    						President's day
    					</td>
  						<td id="2018-3-20" class="special">
  							<span class="date">mar 20</span>
  							<br>
    						<i>Monday schedule</i>
    					</td>
  						<td id="2018-3-21">
  							<span class="date">mar 21</span>
  						</td>
  						<td id="2018-3-22" class="lecture">
  							<span class="date">mar 22</span>
  							<br>
    						<b>LEC 4:</b> 
    						<a href="notes/l04.txt">More Primary/Backup</a>
    						<br>
    						<span class="reading">
    							<b>Preparation:</b>  
    							Read 
    							<a href="papers/fds.pdf">Flat Datacenter Storage (2012)</a> 
    							(<a href="questions.html?q=q-fds&amp;lec=4">Question</a>)
    						</span>
    						<br>
    						<span class="reading">
    							<b>Assigned:</b> 
    							<a href="labs/lab-3.html">Lab 3</a>
    						</span>
    					</td>
  						<td id="2018-3-23" class="due">
  							<span class="date">mar 23</span>
  							<br>
    						<span class="deadline">
    							<b>DUE:</b> 
    							<a href="labs/lab-2.html">Lab 2, part B</a>
    						</span>
    					</td>
					</tr>


					<tr> <!-- week of mar 26 -->
  						<td id="2018-3-26">
  							<span class="date">mar26</span>
  						</td>
  						<td id="2018-3-27" class="lecture">
  							<span class="date">mar 27</span>
  							<br>
    						<b>LEC 5:</b> 
    						<a href="notes/l05-paxos.txt">Fault Tolerance: Paxos</a>, 
    						<a href="notes/paxos-code.html">handout</a>
    						<br>
    						<span class="reading">
    							<b>Preparation:</b>  
    							Read 
    							<a href="papers/paxos-simple.pdf">Paxos (2001)</a> 
    							(<a href="questions.html?q=q-paxos&amp;lec=5">Question</a>)
    						</span>
    					</td>
  						<td id="2018-3-28">
  							<span class="date">mar 28</span>
  						</td>
  						<td id="2018-3-29" class="lecture">
  							<span class="date">mar 29</span>
  							<br>
    						<b>LEC 6:</b> 
    						Guest lecturer: 
    						<a href="http://swtch.com/~rsc/">Russ Cox</a> 
    						(Google/Go)
    						<br>
    					<span class="reading">
    						<b>Preparation:</b>  
    						(<a href="questions.html?q=q-go&amp;lec=6">Question</a>)
    					</span>
    					</td>
  						<td id="2018-3-30" class="due">
  							<span class="date">mar 30
  							</span>
  							<br>
    						<span class="deadline">
    							<b>DUE:</b> 
    							<a href="labs/lab-3.html">Lab 3, part A</a>
    						</span>
    					</td>
					</tr>


					<tr> <!-- week of apr 2 -->
					  <td id="2018-4-2">
					  	<span class="date">apr 2
					  	</span>
					  </td>
					  <td id="2018-4-3" class="lecture">
					  	<span class="date">apr 3</span>
					  	<br>
					    <b>LEC 7:</b> 
					    <a href="notes/l07-harp.txt">Case Studies: Replicated File System</a>
					    <br>
					    <span class="reading">
					    	<b>Preparation:</b>  
					    	Read 
					    	<a href="papers/bliskov-harp.pdf">Harp (1991)</a> 
					    	(<a href="questions.html?q=q-harp&amp;lec=7">Question</a>)
					    </span>
					    <br>
					    <span class="deadline">
					    	<b>DUE:</b>
					    	 Lab 2 code review
					    	</span>
					    </td>
					  <td id="2018-4-4">
					  	<span class="date">apr 4
					  	</span>
					  </td>
					  <td id="2018-4-5" class="lecture">
					  	<span class="date">apr 5</span>
					  	<br>
					    <b>LEC 8:</b> 
					    <a href="notes/l08-epaxos.txt">Fault Tolerance: Egalitarian Paxos</a>
					    <br>
					    <span class="reading">
					    	<b>Preparation:</b>  
					    	Read 
					    	<a href="papers/epaxos.pdf">EPaxos (2013)</a> 
					    	(<a href="questions.html?q=q-epaxos&amp;lec=8">Question</a>)
					    </span>
					</td>
					  <td id="2018-4-6" class="special">
					  	<span class="date">apr 6</span>
					  	<br>
					    <i>ADD DATE</i>
					</td>
					</tr>


					<tr> <!-- week of apr 9 -->
					  <td id="2018-4-9"><span class="date">mar 10
					  </span>
					  </td>
					  <td id="2018-4-10" class="lecture">
					  	<span class="date">apr 10
					  	</span>
					  	<br>
					    <b>LEC 9:</b> 
					    Guest lecturer: 
					    <a href="http://research.google.com/pubs/author1760.html">Wilson Hsieh</a> 
					    (Google)
					    <br>
					    <span class="reading">
					    	<b>Preparation:</b>  
					    	Read <a href="papers/spanner.pdf">Spanner (2012)</a> 
					    	<a href="notes/l09.txt">2013 notes</a> 
					    	(<a href="questions.html?q=q-spanner&amp;lec=9">Question</a>)
					    </span>
					  </td>
					  <td id="2018-4-11">
					  	<span class="date">apr 11
					  	</span>
					  </td>
					  <td id="2018-4-12" class="lecture">
					  	<span class="date">apr 12
					  	</span>
					  	<br>
					    <b>LEC 10:</b> 
					    <a href="notes/l10-lynx.txt">Atomicity: Distributed Transactions</a>
					    <br>
					    <span class="reading">
					    	<b>Preparation:</b> 
					    	 Read 
					    	 <a href="papers/lynx.pdf">Transaction Chains (2013)</a>
					    	  (<a href="questions.html?q=q-txchains&amp;lec=10">Question</a>)
					    	</span>
					    	<br>
					    <span class="reading">
					    	<b>Assigned:</b> 
					    	<a href="labs/lab-4.html">Lab 4</a>
					    </span>
					    <br>
					    <span class="reading">
					    	<b>Assigned:</b> 
					    	<a href="labs/lab-5.html">Project</a>
					    </span>
					  </td>
					  <td id="2018-4-13" class="due">
					  	<span class="date">apr 13
					  	</span>
					  	<br>
					    <span class="deadline">
					    	<b>DUE:</b> 
					    	<a href="labs/lab-3.html">Lab 3, part B</a>
					    </span>
					  </td>
					</tr>


					<tr> <!-- week of apr 16 -->
					  <td id="2018-4-16"><span class="date">apr 16</span></td>
					  <td id="2018-4-17" class="lecture"><span class="date">apr 17</span><br>
					    <b>LEC 11:</b> 
					    <a href="notes/l11.txt">Distributed Computing: Sequential consistency</a> 
					    <a href="notes/ivy-code.txt">pseudocode</a><br>
					    <span class="reading">
					    	<b>Preparation:</b>  
					    	Read 
					    	<a href="papers/li-dsm.pdf">Shared Virtual Memory (1986)</a> 
					    	(<a href="questions.html?q=q-ivy&amp;lec=11">Question</a>)
					    </span>
					  </td>
					  <td id="2018-4-18"><span class="date">apr 18</span></td>
					  <td id="2018-4-19" class="lecture"><span class="date">apr 19</span><br>
					    <b>LEC 12:</b> <a href="notes/l12-treadmarks.txt">Distributed Computing: Relaxed consistency</a><br>
					    <span class="reading"><b>Preparation:</b>  Read <a href="papers/keleher-treadmarks.pdf">TreadMarks (1994)</a> (<a href="questions.html?q=q-treadmarks&amp;lec=12">Question</a>)</span><br>
					    <span class="deadline"><b>DUE:</b> <a href="labs/lab-5.html">Piazza discussions for final project</a></span></td>
					  <td id="2018-4-20" class="due"><span class="date">apr 20</span><br>
					    <span class="deadline"><b>DUE:</b> <a href="labs/lab-4.html">Lab 4, part A</a></span></td>
					</tr>


					<tr> <!-- week of apr 23 -->
					  <td id="2018-4-23" class="holiday"><span class="date">apr 23</span><br>
					    Spring break</td>
					  <td id="2018-4-24" class="holiday"><span class="date">apr 24</span><br>
					    Spring break</td>
					  <td id="2018-4-25" class="holiday"><span class="date">apr 25</span><br>
					    Spring break</td>
					  <td id="2018-4-26" class="holiday"><span class="date">apr 26</span><br>
					    Spring break</td>
					  <td id="2018-4-27" class="holiday"><span class="date">apr 27</span><br>
					    Spring break</td>
					</tr>


					<tr> <!-- week of apr 30 -->
					  <td id="2018-4-30"><span class="date">apr 30</span></td>
					  <td id="2018-5-1" class="quiz"><span class="date">may 1</span><br>
					    <b>Quiz 1:</b> Mid-term quiz during lecture time in 50-340 (Walker)<br>
					    <b>Materials:</b> Open book and notes<br>
					    <b>Scope:</b> Lectures 1-10</td>
					  <td id="2018-5-2"><span class="date">may 2</span></td>
					  <td id="2018-5-3" class="lecture"><span class="date">amy 3</span><br>
					    <b>LEC 13:</b> <a href="notes/l13-spark.txt">Case Studies: Spark</a><br>
					    <span class="reading"><b>Preparation:</b>  Read <a href="papers/zaharia-spark.pdf">Spark (2012)</a> (<a href="questions.html?q=q-spark&amp;lec=13">Question</a>)</span></td>
					  <td id="2018-5-4" class="due"><span class="date">amy 4</span><br>
					    <span class="deadline"><b>DUE:</b> Project team and proposal</span></td>
					</tr>


					<tr> <!-- week of may 7 -->
					  <td id="2018-5-7"><span class="date">may 7</span></td>
					  <td id="2018-5-8" class="lecture"><span class="date">may 8</span><br>
					    <b>LEC 14:</b> <a href="notes/l14-ficus.txt">Disconnected Operation: Version Vectors and File Synchronization</a><br>
					    <span class="reading"><b>Preparation:</b>  Read <a href="papers/ficus.pdf">Ficus (1994)</a> (<a href="questions.html?q=q-ficus&amp;lec=14">Question</a>)</span><br>
					    <span class="deadline"><b>DUE:</b> Lab 3 code review</span></td>
					  <td id="2018-5-9"><span class="date">may 9</span></td>
					  <td id="2018-5-10" class="lecture"><span class="date">may 10</span><br>
					    <b>LEC 15:</b> <a href="notes/l15-bayou.txt">Disconnected Operation: Eventual Consistency</a><br>
					    <span class="reading"><b>Preparation:</b>  Read <a href="papers/bayou-conflicts.pdf">Bayou (1995)</a> (<a href="questions.html?q=q-bayou&amp;lec=15">Question</a>)</span></td>
					  <td id="2018-5-11" class="due"><span class="date">may 11</span><br>
					    <span class="deadline"><b>DUE:</b> <a href="labs/lab-4.html">Lab 4, part B</a></span></td>
					</tr>


					<tr> <!-- week of may 14 -->
					  <td id="2018-5-14"><span class="date">may 14</span></td>
					  <td id="2018-5-15" class="lecture"><span class="date">may 15</span><br>
					    <b>LEC 16:</b> <a href="notes/l16-pnuts.txt">Case Studies: Relaxed Consistency</a><br>
					    <span class="reading"><b>Preparation:</b>  Read <a href="papers/cooper-pnuts.pdf">PNUTS (2008)</a> (<a href="questions.html?q=q-pnuts&amp;lec=16">Question</a>)</span></td>
					  <td id="2018-5-16"><span class="date">may 16</span></td>
					  <td id="2018-5-17" class="lecture"><span class="date">may 17</span><br>
					    <b>LEC 17:</b> <a href="notes/l17-dynamo.txt">Case Studies: Dynamo</a><br>
					    <span class="reading"><b>Preparation:</b>  Read <a href="papers/dynamo.pdf">Dynamo (2007)</a> (<a href="questions.html?q=q-dynamo&amp;lec=17">Question</a>)</span></td>
					  <td id="2018-5-18"><span class="date">may 18</span></td>
					</tr>


					<tr> <!-- week of may 21 -->
					  <td id="2018-5-21" class="holiday"><span class="date">may 21</span><br>
					    Patriots day</td>
					  <td id="2018-5-21" class="holiday"><span class="date">may 22</span><br>
					    Patriots day</td>
					  <td id="2018-5-23"><span class="date">apr 23</span></td>
					  <td id="2018-5-24" class="lecture"><span class="date">may 24</span><br>
					    <b>LEC 18:</b> <a href="notes/dht/index.html">Peer-to-peer: Trackerless Bittorrent and DHTs</a> (<a href="notes/dht/dht-9-per-page.pdf">handouts</a>, <a href="notes/dht/dht.pdf">slides</a>)<br>
					    <span class="reading"><b>Preparation:</b>  Read <a href="papers/kademlia.pdf">Kademlia (2002)</a> and <a href="http://www.bittorrent.org/beps/bep_0005.html">Trackerless Bittorrent (2008)</a> (<a href="questions.html?q=q-kademlia&amp;lec=18">Question</a>)</span><br>
					    <span class="deadline"><b>DUE:</b> Lab 4 code review</span><br>
					    <i><b class="deadline">DROP DATE</b></i></td>
					  <td id="2018-5-25"><span class="date">may 25</span></td>
					</tr>


					<tr> <!-- week of may 28 -->
					  <td id="2018-5-28"><span class="date">may 28</span></td>
					  <td id="2018-5-29" class="special"><span class="date">may 29</span><br>
					    <i>Project hacking day</i></td>
					  <td id="2018-5-30"><span class="date">may 30</span></td>
					  <td id="2018-5-31" class="special"><span class="date">may 31</span><br>
					    <i>Project hacking day</i></td>
					  <td id="2018-6-1"><span class="date">jun 1</span></td>
					</tr>


					<tr> <!-- week of jun  4 -->
					  <td id="2018-6-4"><span class="date">jun 4</span>
					  </td>
					  <td id="2018-6-5" class="lecture">
					  	<span class="date">jun 5</span>
					  	<br>
					    <b>LEC 19:</b> 
					    Distributed systems in the real world (Guest lecturer: Emil Sit)
					    <br>
					    <span class="reading">
					    	b>Preparation:</b>  
					    	Read 
					    	<a href="papers/akamai.pdf">Akamai paper</a>
					     	and 
					    	<a href="http://dev.hubspot.com/blog/how-we-deploy-300-times-a-day">Hubspot blog post</a> 
					    	(<a href="questions.html?q=q-realworld&amp;lec=19">Question</a>)
					    </span>
					  </td>
					  <td id="2018-6-6"><span class="date">jun 6
					  </span>
					  </td>
					  <td id="2018-6-7" class="lecture"><span class="date">jun 7
					  	</span>
					  	<br>
					    <b>LEC 20:</b> 
					    Peer-to-peer: 
					    <a href="notes/l20-bitcoin.txt">Bitcoin</a>
					    <br>
					    <span class="reading">
					    	<b>Preparation:</b> 
					    	 Read 
					    	 <a href="papers/bitcoin.pdf">Bitcoin</a>, 
					    	<a href="http://www.michaelnielsen.org/ddi/how-the-bitcoin-protocol-actually-works/">summary</a> 
					    	(<a href="questions.html?q=q-bitcoin&amp;lec=20">Question</a>)
					    </span>
					  </td>
					  <td id="2018-6-8" class="due"><span class="date">jun 8
					  	</span>
					 	<br>
					    <span class="deadline"><b>DUE:</b> 
					    <a href="labs/lab-5.html">Final project code and write-up</a>
						</span>
					  </td>
					</tr>


					<tr> <!-- week of jun  11 -->
					  <td id="2018-6-11"><span class="date">jun 11</span></td>
					  <td id="2018-6-12" class="lecture"><span class="date">jun 12</span><br>
					    <b>LEC 21:</b> Final project demos<br>
					    <span class="reading">
					    	<b>Preparation:</b>  
					    	Read 
					    	<a href="papers/katabi-analogicfs.pdf">AnalogicFS experience paper</a> 
					    (<a href="questions.html?q=q-analogic&amp;lec=21">Question</a>)
						</span>
					  </td>
					  <td id="2018-6-13"><span class="date">jun 13</span></td>
					  <td id="2018-6-14" class="lecture"><span class="date">jun 14</span><br>
					    <b>LEC 22:</b> Final project demos<br>
					    <i>Last day of classes</i>
					  </td>
					  <td id="2018-6-15"><span class="date">jun 15</span>
					  </td>
					</tr>


					<tr> <!-- week of jun 18 -->
					  <td id="2018-6-18"><span class="date">jun 18</span></td>
					  <td id="2018-6-19"><span class="date">jun 19</span></td>
					  <td id="2018-6-20"><span class="date">jun 20</span></td>
					  <td id="2018-6-21" class="special"><span class="date"jun 21</span><br>
					    <i>Final: 9:00 to 12:00 noon, Johnson Ice Rink</i></td>
					  <td id="2018-6-22"><span class="date">jun 22</span></td>
					</tr>

				

					<tr> <!-- week of jun 25 -->
					  <td id="2018-6-25"><span class="date">jun 25</span></td>
					  <td id="2018-6-26"><span class="date">jun 26</span></td>
					  <td id="2018-6-27"><span class="date">jun 27</span></td>
					  <td id="2018-6-28" class="special"><span class="date">jun 28</span><br>
					    <i>Final: 9:00 to 12:00 noon, Johnson Ice Rink</i></td>
					  <td id="2018-6-29"><span class="date">jun 29</span></td>
					</tr>

					<tr> <!-- week of jul 2 -->
					  <td id="2018-7-2"><span class="date">jul 2</span></td>
					  <td id="2018-7-3"><span class="date">jul 3</span></td>
					  <td id="2018-7-4"><span class="date">jul 4</span></td>
					  <td id="2018-7-5" class="special"><span class="date">jul 5</span><br>
					    <i>Final: 9:00 to 12:00 noon, Johnson Ice Rink</i></td>
					  <td id="2018-7-6"><span class="date">jul 6</span></td>
					</tr>

					<tr> <!-- week of jul 9-->
					  <td id="2018-7-9"><span class="date">jul 9</span></td>
					  <td id="2018-7-10"><span class="date">jul 10</span></td>
					  <td id="2018-7-11"><span class="date">jul 11</span></td>
					  <td id="2018-7-12" class="special"><span class="date">jul 12</span><br>
					    <i>Final: 9:00 to 12:00 noon, Johnson Ice Rink</i></td>
					  <td id="2018-7-13"><span class="date">jul 13</span></td>
					</tr>

				</tbody>
			</table>
			<script type="text/javascript">
				var d = new Date();
				for (var fwd = 0; fwd < 3; fwd++) {
				  var i = d.getFullYear()+'-'+(d.getMonth()+1)+'-'+d.getDate();
				  var e = document.getElementById(i);
				  if (e) { e.style.border = '2px solid blue'; break; }
				  d.setTime(d.getTime() + 24*60*60*1000);
				}
			</script>
		</p>
		<p>
		For questions or comments, email <a href="mailto:第一军团@bjfu.edu.cn">第一军团@bjfu.edu.cn</a>.
		</p>
		<p>
		Back to <a href=".">第一军团 home</a>.
		</p>
	</body>

</html>