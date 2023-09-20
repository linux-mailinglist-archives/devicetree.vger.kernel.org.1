Return-Path: <devicetree+bounces-1750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 427097A8079
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F151C281CEC
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 214F415AD3;
	Wed, 20 Sep 2023 12:37:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AFA156E5;
	Wed, 20 Sep 2023 12:37:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72EC9C433C9;
	Wed, 20 Sep 2023 12:37:24 +0000 (UTC)
Message-ID: <daa98de2-62d3-43a9-9d09-389cf246ee15@xs4all.nl>
Date: Wed, 20 Sep 2023 14:37:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/8] Add StarFive Camera Subsystem driver
Content-Language: en-US, nl
To: Jack Zhu <jack.zhu@starfivetech.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, bryan.odonoghue@linaro.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-staging@lists.linux.dev,
 changhuang.liang@starfivetech.com
References: <20230914031607.34877-1-jack.zhu@starfivetech.com>
 <11735008-1adf-4b84-9023-d295371caed5@xs4all.nl>
 <41370a5d-ffa3-f85b-aa2a-b6dd9cc570f6@starfivetech.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <41370a5d-ffa3-f85b-aa2a-b6dd9cc570f6@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 18/09/2023 11:30, Jack Zhu wrote:
> Hi Hans，
> 
> Thanks for your comment.
> 
> On 2023/9/15 17:26, Hans Verkuil wrote:
>> On 14/09/2023 05:15, Jack Zhu wrote:
>>> Hi,
>>>
>>> This series is the v9 series that attempts to support the Camera Subsystem
>>> found on StarFive JH7110 SoC.
>>>
>>> This series is based on top of the master branch of media_stage repository.
>>>
>>> The following are the media graph for the device and the v4l2-compliance
>>> output.
>>>
>>> ===========================================================================
>>> [the media graph]:
>>>
>>> digraph board {
>>> 	rankdir=TB
>>> 	n00000001 [label="{{<port0> 0} | stf_isp\n/dev/v4l-subdev0 | {<port1> 1}}", shape=Mrecord, style=filled, fillcolor=green]
>>> 	n00000001:port1 -> n00000008 [style=dashed]
>>> 	n00000004 [label="capture_raw\n/dev/video0", shape=box, style=filled, fillcolor=yellow]
>>> 	n00000008 [label="capture_yuv\n/dev/video1", shape=box, style=filled, fillcolor=yellow]
>>> 	n0000000e [label="{{<port0> 0} | cdns_csi2rx.19800000.csi-bridge\n | {<port1> 1 | <port2> 2 | <port3> 3 | <port4> 4}}", shape=Mrecord, style=filled, fillcolor=green]
>>> 	n0000000e:port1 -> n00000001:port0 [style=dashed]
>>> 	n0000000e:port1 -> n00000004 [style=dashed]
>>> 	n00000018 [label="{{} | imx219 6-0010\n/dev/v4l-subdev1 | {<port0> 0}}", shape=Mrecord, style=filled, fillcolor=green]
>>> 	n00000018:port0 -> n0000000e:port0 [style=bold]
>>> }
>>>
>>> [the device topology]:
>>>
>>> Media controller API version 6.5.0
>>>
>>> Media device information
>>> ------------------------
>>> driver          starfive-camss
>>> model           Starfive Camera Subsystem
>>> serial          
>>> bus info        platform:19840000.camss
>>> hw revision     0x0
>>> driver version  6.5.0
>>>
>>> Device topology
>>> - entity 1: stf_isp (2 pads, 2 links)
>>>             type V4L2 subdev subtype Unknown flags 0
>>>             device node name /dev/v4l-subdev0
>>> 	pad0: Sink
>>> 		[fmt:SRGGB10_1X10/1920x1080 field:none colorspace:srgb
>>> 		 crop.bounds:(0,0)/1920x1080
>>> 		 crop:(0,0)/1920x1080]
>>> 		<- "cdns_csi2rx.19800000.csi-bridge":1 []
>>> 	pad1: Source
>>> 		[fmt:YUYV8_1_5X8/1920x1080 field:none colorspace:srgb
>>> 		 crop.bounds:(0,0)/1920x1080
>>> 		 crop:(0,0)/1920x1080]
>>> 		-> "capture_yuv":0 []
>>>
>>> - entity 4: capture_raw (1 pad, 1 link)
>>>             type Node subtype V4L flags 0
>>>             device node name /dev/video0
>>> 	pad0: Sink
>>> 		<- "cdns_csi2rx.19800000.csi-bridge":1 []
>>>
>>> - entity 8: capture_yuv (1 pad, 1 link)
>>>             type Node subtype V4L flags 0
>>>             device node name /dev/video1
>>> 	pad0: Sink
>>> 		<- "stf_isp":1 []
>>>
>>> - entity 14: cdns_csi2rx.19800000.csi-bridge (5 pads, 3 links)
>>>              type V4L2 subdev subtype Unknown flags 0
>>> 	pad0: Sink
>>> 		<- "imx219 6-0010":0 [ENABLED,IMMUTABLE]
>>> 	pad1: Source
>>> 		-> "stf_isp":0 []
>>> 		-> "capture_raw":0 []
>>> 	pad2: Source
>>> 	pad3: Source
>>> 	pad4: Source
>>>
>>> - entity 24: imx219 6-0010 (1 pad, 1 link)
>>>              type V4L2 subdev subtype Sensor flags 0
>>>              device node name /dev/v4l-subdev1
>>> 	pad0: Source
>>> 		[fmt:SRGGB10_1X10/3280x2464 field:none colorspace:srgb xfer:srgb ycbcr:601 quantization:full-range
>>> 		 crop.bounds:(8,8)/3280x2464
>>> 		 crop:(8,8)/3280x2464]
>>> 		-> "cdns_csi2rx.19800000.csi-bridge":0 [ENABLED,IMMUTABLE]
>>>
>>> ===========================================================================
>>> [the v4l2-compliance output]:
>>>
>>> v4l2-compliance 1.24.1, 64 bits, 64-bit time_t
>>
>> This v4l2-compliance version is from a distro. For driver acceptance you
>> must test with a v4l2-compliance compiled from the git repo (git://linuxtv.org/v4l-utils.git).
>>
> 
> It is compiled from buildroot, but its source code is also downloaded from the repo tag v4l-utils-1.24.1.
> Do you mean I should use the latest stable version (stable-1.24) on the repo?
> 

No, you want the latest version, period. So just the master branch of the v4l-utils git repo.

For the compliance tests you want the latest and greatest, since the stable tags are often
fairly old.

Regards,

	Hans

