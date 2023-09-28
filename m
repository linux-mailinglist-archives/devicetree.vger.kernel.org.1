Return-Path: <devicetree+bounces-4140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E52C27B1635
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:41:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 44026281C12
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9E253BD;
	Thu, 28 Sep 2023 08:41:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6255B1FA5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:41:01 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E4D180;
	Thu, 28 Sep 2023 01:40:56 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 22C7724E03E;
	Thu, 28 Sep 2023 16:40:55 +0800 (CST)
Received: from EXMBX173.cuchost.com (172.16.6.93) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 28 Sep
 2023 16:40:55 +0800
Received: from [192.168.1.218] (180.164.60.184) by EXMBX173.cuchost.com
 (172.16.6.93) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 28 Sep
 2023 16:40:54 +0800
Message-ID: <9ac2d04c-ed0c-9940-53b4-b36d6df22afe@starfivetech.com>
Date: Thu, 28 Sep 2023 16:40:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v9 0/8] Add StarFive Camera Subsystem driver
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
	<mchehab@kernel.org>, Robert Foss <rfoss@kernel.org>, Todor Tomov
	<todor.too@gmail.com>, "bryan.odonoghue@linaro.org"
	<bryan.odonoghue@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>
CC: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>, "Changhuang
 Liang" <changhuang.liang@starfivetech.com>
References: <20230914031607.34877-1-jack.zhu@starfivetech.com>
 <11735008-1adf-4b84-9023-d295371caed5@xs4all.nl>
 <705f6143-169d-907e-9453-a5b384f921cd@starfivetech.com>
 <c9eb7857-896f-43dd-b8fe-4711ba202c81@xs4all.nl>
From: Jack Zhu <jack.zhu@starfivetech.com>
In-Reply-To: <c9eb7857-896f-43dd-b8fe-4711ba202c81@xs4all.nl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX173.cuchost.com
 (172.16.6.93)
X-YovoleRuleAgent: yovoleflag
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 2023/9/28 16:22, Hans Verkuil wrote:
> On 28/09/2023 10:12, Jack Zhu wrote:
>> 
>> 
>> On 2023/9/15 17:26, Hans Verkuil wrote:
>>> On 14/09/2023 05:15, Jack Zhu wrote:
>>>> Hi,
>>>>
>>>> This series is the v9 series that attempts to support the Camera Subsystem
>>>> found on StarFive JH7110 SoC.
>>>>
>>>> This series is based on top of the master branch of media_stage repository.
>>>>
>>>> The following are the media graph for the device and the v4l2-compliance
>>>> output.
>>>>
>>>> ===========================================================================
>>>> [the media graph]:
>>>>
>>>> digraph board {
>>>> 	rankdir=TB
>>>> 	n00000001 [label="{{<port0> 0} | stf_isp\n/dev/v4l-subdev0 | {<port1> 1}}", shape=Mrecord, style=filled, fillcolor=green]
>>>> 	n00000001:port1 -> n00000008 [style=dashed]
>>>> 	n00000004 [label="capture_raw\n/dev/video0", shape=box, style=filled, fillcolor=yellow]
>>>> 	n00000008 [label="capture_yuv\n/dev/video1", shape=box, style=filled, fillcolor=yellow]
>>>> 	n0000000e [label="{{<port0> 0} | cdns_csi2rx.19800000.csi-bridge\n | {<port1> 1 | <port2> 2 | <port3> 3 | <port4> 4}}", shape=Mrecord, style=filled, fillcolor=green]
>>>> 	n0000000e:port1 -> n00000001:port0 [style=dashed]
>>>> 	n0000000e:port1 -> n00000004 [style=dashed]
>>>> 	n00000018 [label="{{} | imx219 6-0010\n/dev/v4l-subdev1 | {<port0> 0}}", shape=Mrecord, style=filled, fillcolor=green]
>>>> 	n00000018:port0 -> n0000000e:port0 [style=bold]
>>>> }
>>>>
>>>> [the device topology]:
>>>>
>>>> Media controller API version 6.5.0
>>>>
>>>> Media device information
>>>> ------------------------
>>>> driver          starfive-camss
>>>> model           Starfive Camera Subsystem
>>>> serial          
>>>> bus info        platform:19840000.camss
>>>> hw revision     0x0
>>>> driver version  6.5.0
>>>>
>>>> Device topology
>>>> - entity 1: stf_isp (2 pads, 2 links)
>>>>             type V4L2 subdev subtype Unknown flags 0
>>>>             device node name /dev/v4l-subdev0
>>>> 	pad0: Sink
>>>> 		[fmt:SRGGB10_1X10/1920x1080 field:none colorspace:srgb
>>>> 		 crop.bounds:(0,0)/1920x1080
>>>> 		 crop:(0,0)/1920x1080]
>>>> 		<- "cdns_csi2rx.19800000.csi-bridge":1 []
>>>> 	pad1: Source
>>>> 		[fmt:YUYV8_1_5X8/1920x1080 field:none colorspace:srgb
>>>> 		 crop.bounds:(0,0)/1920x1080
>>>> 		 crop:(0,0)/1920x1080]
>>>> 		-> "capture_yuv":0 []
>>>>
>>>> - entity 4: capture_raw (1 pad, 1 link)
>>>>             type Node subtype V4L flags 0
>>>>             device node name /dev/video0
>>>> 	pad0: Sink
>>>> 		<- "cdns_csi2rx.19800000.csi-bridge":1 []
>>>>
>>>> - entity 8: capture_yuv (1 pad, 1 link)
>>>>             type Node subtype V4L flags 0
>>>>             device node name /dev/video1
>>>> 	pad0: Sink
>>>> 		<- "stf_isp":1 []
>>>>
>>>> - entity 14: cdns_csi2rx.19800000.csi-bridge (5 pads, 3 links)
>>>>              type V4L2 subdev subtype Unknown flags 0
>>>> 	pad0: Sink
>>>> 		<- "imx219 6-0010":0 [ENABLED,IMMUTABLE]
>>>> 	pad1: Source
>>>> 		-> "stf_isp":0 []
>>>> 		-> "capture_raw":0 []
>>>> 	pad2: Source
>>>> 	pad3: Source
>>>> 	pad4: Source
>>>>
>>>> - entity 24: imx219 6-0010 (1 pad, 1 link)
>>>>              type V4L2 subdev subtype Sensor flags 0
>>>>              device node name /dev/v4l-subdev1
>>>> 	pad0: Source
>>>> 		[fmt:SRGGB10_1X10/3280x2464 field:none colorspace:srgb xfer:srgb ycbcr:601 quantization:full-range
>>>> 		 crop.bounds:(8,8)/3280x2464
>>>> 		 crop:(8,8)/3280x2464]
>>>> 		-> "cdns_csi2rx.19800000.csi-bridge":0 [ENABLED,IMMUTABLE]
>>>>
>>>> ===========================================================================
>>>> [the v4l2-compliance output]:
>>>>
>>>> v4l2-compliance 1.24.1, 64 bits, 64-bit time_t
>>>
>>> This v4l2-compliance version is from a distro. For driver acceptance you
>>> must test with a v4l2-compliance compiled from the git repo (git://linuxtv.org/v4l-utils.git).
>>>
>>> Also, since this driver uses the media controller, you must run v4l2-compliance
>>> with the -m /dev/mediaX option. This will test the compliance of all devices
>>> reported by the media controller.
>>>
>>>>
>>>> Compliance test for stf camss device /dev/video1:
>>>>
>>>> Driver Info:
>>>> 	Driver name      : stf camss
>>>
>>> The module is called starfive-camss, so shouldn't the driver name reported here
>>> be the same?
>>>
>>>> 	Card type        : Starfive Camera Subsystem
>>>> 	Bus info         : platform:19840000.camss
>>>> 	Driver version   : 6.5.0
>>>> 	Capabilities     : 0x84200001
>>>> 		Video Capture
>>>> 		Streaming
>>>> 		Extended Pix Format
>>>> 		Device Capabilities
>>>> 	Device Caps      : 0x04200001
>>>> 		Video Capture
>>>> 		Streaming
>>>> 		Extended Pix Format
>>>> Media Driver Info:
>>>> 	Driver name      : starfive-camss
>>>
>>> It's correct in the media controller information.
>>>
>>>> 	Model            : Starfive Camera Subsystem
>>>> 	Serial           : 
>>>> 	Bus info         : platform:19840000.camss
>>>> 	Media version    : 6.5.0
>>>> 	Hardware revision: 0x00000000 (0)
>>>> 	Driver version   : 6.5.0
>>>> Interface Info:
>>>> 	ID               : 0x0300000a
>>>> 	Type             : V4L Video
>>>> Entity Info:
>>>> 	ID               : 0x00000008 (8)
>>>> 	Name             : capture_yuv
>>>> 	Function         : V4L2 I/O
>>>> 	Pad 0x01000009   : 0: Sink
>>>> 	  Link 0x0200000c: from remote pad 0x1000003 of entity 'stf_isp' (Unknown Function (00004009)): Data, Enabled
>>>
>>> Hmm, this reports "Unknown Function". I bet that when you run v4l2-compliance
>>> with the -m option it will fail on this. If not, then that's likely a bug in
>>> the compliance test, please let me know if that's the case.
>>>
>> 
>> Hi Hans,
>> 
>> The following is the latest test log, which does not report a failure, but
>> also reports "Unknown Function".
>> 
>> I make the following settings in the stf-isp.c file:
>> v4l2_subdev.entity.function = MEDIA_ENT_F_PROC_VIDEO_ISP;
>> 
> 
> Can you post the output of:
> 
> v4l2-compliance --verbose -M /dev/media0
> 

Output log of the above command:

# 
# v4l2-compliance --verbose -M /dev/media0
v4l2-compliance 1.25.0, 64 bits, 64-bit time_t

Compliance test for starfive-camss device /dev/media0:

Media Driver Info:
	Driver name      : starfive-camss
	Model            : Starfive Camera Subsystem
	Serial           : 
	Bus info         : platform:19840000.camss
	Media version    : 6.5.0
	Hardware revision: 0x00000000 (0)
	Driver version   : 6.5.0

Required ioctls:
	test MEDIA_IOC_DEVICE_INFO: OK
	test invalid ioctls: OK

Allow for multiple opens:
	test second /dev/media0 open: OK
	test MEDIA_IOC_DEVICE_INFO: OK
	test for unlimited opens: OK

Media Controller ioctls:
		Entity: 0x00000001 (Name: 'stf_isp', Function: Unknown Function (00004009))
		Entity: 0x00000004 (Name: 'capture_raw', Function: V4L2 I/O)
		Entity: 0x00000008 (Name: 'capture_yuv', Function: V4L2 I/O)
		Entity: 0x0000000e (Name: 'cdns_csi2rx.19800000.csi-bridge', Function: Video Interface Bridge)
		Entity: 0x00000018 (Name: 'imx219 6-0010', Function: Camera Sensor)
		Interface: 0x03000006 (Type: V4L Video, DevPath: /dev/video0)
		Interface: 0x0300000a (Type: V4L Video, DevPath: /dev/video1)
		Interface: 0x0300001c (Type: V4L Sub-Device, DevPath: /dev/v4l-subdev0)
		Interface: 0x0300001e (Type: V4L Sub-Device, DevPath: /dev/v4l-subdev1)
		Pad: 0x01000002 (0, stf_isp, Sink)
		Pad: 0x01000003 (1, stf_isp, Source)
		Pad: 0x01000005 (0, capture_raw, Sink)
		Pad: 0x01000009 (0, capture_yuv, Sink)
		Pad: 0x0100000f (0, cdns_csi2rx.19800000.csi-bridge, Sink)
		Pad: 0x01000010 (1, cdns_csi2rx.19800000.csi-bridge, Source)
		Pad: 0x01000011 (2, cdns_csi2rx.19800000.csi-bridge, Source)
		Pad: 0x01000012 (3, cdns_csi2rx.19800000.csi-bridge, Source)
		Pad: 0x01000013 (4, cdns_csi2rx.19800000.csi-bridge, Source)
		Pad: 0x01000019 (0, imx219 6-0010, Source)
		Interface Link: 0x02000007 (capture_raw to /dev/video0)
		Interface Link: 0x0200000b (capture_yuv to /dev/video1)
		Data Link: 0x0200000c (stf_isp:1 -> capture_yuv:0, Data, Enabled)
		Data Link: 0x02000014 (cdns_csi2rx.19800000.csi-bridge:1 -> stf_isp:0, Data, Enabled)
		Data Link: 0x02000016 (cdns_csi2rx.19800000.csi-bridge:1 -> capture_raw:0, Data)
		Data Link: 0x0200001a (imx219 6-0010:0 -> cdns_csi2rx.19800000.csi-bridge:0, Data, Enabled, Immutable)
		Interface Link: 0x0200001d (stf_isp to /dev/v4l-subdev0)
		Interface Link: 0x0200001f (imx219 6-0010 to /dev/v4l-subdev1)
	test MEDIA_IOC_G_TOPOLOGY: OK
	Entities: 5 Interfaces: 4 Pads: 10 Links: 8
		Entity: 0x00000001 (Name: 'stf_isp', Type: Unknown V4L2 Sub-Device, DevPath: /dev/v4l-subdev0)
		Entity: 0x00000004 (Name: 'capture_raw', Type: V4L2 I/O, DevPath: /dev/video0)
		Entity: 0x00000008 (Name: 'capture_yuv', Type: V4L2 I/O, DevPath: /dev/video1)
		Entity: 0x0000000e (Name: 'cdns_csi2rx.19800000.csi-bridge', Type: Unknown V4L2 Sub-Device)
		Entity: 0x00000018 (Name: 'imx219 6-0010', Type: Camera Sensor, DevPath: /dev/v4l-subdev1)
	test MEDIA_IOC_ENUM_ENTITIES/LINKS: OK
	test MEDIA_IOC_SETUP_LINK: OK

Total for starfive-camss device /dev/media0: 8, Succeeded: 8, Failed: 0, Warnings: 0
# 

--
Regards,

Jack Zhu

