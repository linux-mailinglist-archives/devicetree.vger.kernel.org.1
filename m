Return-Path: <devicetree+bounces-16869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F4B7F02AF
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 20:35:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61EF71F2388A
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 19:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3BB51A71C;
	Sat, 18 Nov 2023 19:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=linosanfilippo@gmx.de header.b="MQecScli"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 979171BE3;
	Sat, 18 Nov 2023 11:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
	t=1700336107; x=1700940907; i=linosanfilippo@gmx.de;
	bh=Ikulmv0OWG9oj4px7fDbSbJHKMR8cPpQwYidISoLDMc=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
	 In-Reply-To;
	b=MQecScliHiWBudktJezhtLPQW9okknSpjjtjCmnPXG8tIeu2/MAkjVi2n95OBEsE
	 8qtFVY0lvrU0YZF9pa655cPmlozcWPNtgHRt3S1F/lJsQ3ven3zzvzqcCqx2pSZWr
	 zY1kWEYD/F4li/Sx9dN0ROHjwe8w1okEoeoPPDNMSfT5rIfOgI64keGTsGlSyl/YA
	 7qlgSar0AsEjPACKkn/6ork3aqVQ00O712vgudJgpbRgR/hAVWzKNsog+p/+fdNAR
	 MgLDMCFMxOabaIdA/lMfkJusdatlns1iyVeXTZn57gGK+JYVpW8ZqaQU3mFXaBiAF
	 iQRbUx5lCfjr3mVCSA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.2.42] ([84.162.21.41]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1ML9yS-1qnSRN1uMM-00IAx4; Sat, 18
 Nov 2023 20:35:07 +0100
Message-ID: <50a34ccb-d26e-4e8b-b371-a3e268dec126@gmx.de>
Date: Sat, 18 Nov 2023 20:35:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] tty: serial: uartps: Add rs485 support to uartps
 driver
Content-Language: en-US
To: "Guntupalli, Manikanta" <manikanta.guntupalli@amd.com>,
 "git (AMD-Xilinx)" <git@amd.com>, "Simek, Michal" <michal.simek@amd.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jirislaby@kernel.org" <jirislaby@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Cc: "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>,
 "Goud, Srinivas" <srinivas.goud@amd.com>,
 "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>,
 "manion05gk@gmail.com" <manion05gk@gmail.com>
References: <20231024144847.2316941-1-manikanta.guntupalli@amd.com>
 <20231024144847.2316941-3-manikanta.guntupalli@amd.com>
 <97bfc5ee-6c07-4e4b-8192-f46c701a0604@gmx.de>
 <DM4PR12MB6109482E2C540D2794A446C78CB1A@DM4PR12MB6109.namprd12.prod.outlook.com>
From: Lino Sanfilippo <LinoSanfilippo@gmx.de>
In-Reply-To: <DM4PR12MB6109482E2C540D2794A446C78CB1A@DM4PR12MB6109.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:gke6qnG3un9v6Mzn4MeN0WnT/7NvLD2h4Wn7LvNRFRlQ+0K8NUQ
 qoIJz77qEmjl9X9VTVOhYsISnJFfac3/yp70hPyCqdf6GoGuceOXDU/8KhNH8B0pnvqioB0
 jDejsaq4kr88PylAtpZEeUjMtPhz6CyK1GEWIX9NEjf8BgqyqH2pJ0+mgrdc4zYAW5WyubS
 UHtTSNlYediu+Eo85P+LA==
UI-OutboundReport: notjunk:1;M01:P0:Ge3/s5fUzNo=;HeyuoUPLFbRS22W5DhdsJk38a9i
 kLthU/YZ29X5/XPO+tkD9DOeQ1rtWIJ+W186QGJ1OcrKJBstSGdfb8YQzficepj3qlWh45enr
 pGgidWop23K6PaYnEY1LbSEahbntsiCZ3mZ9OyxQesiNqn5upW60ka1jSrVXfQ9q+mHaZuXp7
 8HXZ1+5MF3Gtm4Dhd10I0j5oCyednVhobEeoZHba+Zsy5M70rZTGeY2uxXW52YrOzkddUyfma
 myMCpAOeYHRSerF/EMURPSl6l4zGJfH/mbnteBg6EBJtOLeUZhsoyynNzpjOm4QA0BwPvK80w
 u1JHD50wKV31xTk0/xlz0fCiFs7CHEYrplz2nAEa2uweMmhpAnRdKQwJ55qFIxqjX+ikgmUjq
 AgYpPj/6//HLLd5rBTfR5Jk0ufnEHtns20IAz+HCAGYqREY61GsXxH3KsR7yYa7CFrTFoBrLN
 Kj8JiWEWyIhJpF76N048mNJIvm6hQ197Bt99Qoy69jS94Ai7vGSLU/UTPLs51S5fL6l2hgIVh
 qdUflEQcqZ9GPe6bR0DnQgfeZ0iywrMJL0j4b5Pdd66Ubk3mv1rcZYbbXdLtUQiJixre4+IDj
 aD6ZPlKOPBNq6c+e5tEPuYLjdpuYArXGlqVdCn/1t9R+QuKKbuKUyWB7Q5L9yf4yPDM4Jt4go
 1Q5xY0q99eYDaSrv7cjiKVKBSE5DVRtahZbKvD4i4hCg8SxKCPFDZx6gr/bqanSUYi/Xn43+9
 TxGL1t11y8Me1eB1P4r3M+GoekfEZwyzzgMz5aIaMlAq4VRP9tyyPhMJL7NUiHq5Gfizo753p
 MLfHtS4qGIhhUue1ZH+3bTsJpsX4sYRu5A+BkSIL/2GB7QvJ52Zu+jMQA5WkG6Lgibn6ERqy5
 4qHAVeDmPPDdUgzBltg/xcx3+dbs4d4p5eSKQg4XemCPydH5+T1VLPQxDLZnZfezGiDsiWjQ/
 ER03GnoJI93zLhc2os917qQ+WiA=

Hi,

On 15.11.23 07:50, Guntupalli, Manikanta wrote:

>> From: Lino Sanfilippo <LinoSanfilippo@gmx.de>
>>
>> So, this will be executed each time (including the rts_before_send delay) the
>> core wants to send data? This is not how it is supposed to work: The tx setup
>> (and the delay before send) has to be done once when transmission starts.
>> Note that when sending a bulk of data the core may call cdns_uart_start_tx()
>> several times before it eventually calls cdns_uart_stop_tx() to stop the
>> transmission.
> We have tested bulk transfer (5000 bytes) and observed that cdns_uart_start_tx() is getting called only once. Can you please suggest how to reproduce the case where the core may call cdns_uart_start_tx() several times before it eventually calls cdns_uart_stop_tx().


Thats strange. Normally the uart_ports start_tx() function is called whenever there is new
data in the tty circular buffer (see uart_write()) and the writing process is suspended after
that (see n_tty_write() in case of N_TTY line discipline). The writing process is woken up via
uart_write_wakeup() called from the uart driver and then it writes new data into the circular
buffer which results in another call to the uart_ports start_tx(). There is no stop_tx() until
all data from the passed userspace buffer is written. But there is a start_tx for every new bulk
of data that is available in the circular buffer.
This is at least what I can observe in my test setup (using a PL011 UART with the amba driver). If
I write a test buffer of 9212 bytes to the tty device using one single write() I can see 10
consecutive calls of tx_start() before tx_stop() eventually is called. What does your test setup look like?

Regards,
Lino

