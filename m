Return-Path: <devicetree+bounces-9599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC5A7CD815
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08AB31C20A44
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBD6118046;
	Wed, 18 Oct 2023 09:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC74418043;
	Wed, 18 Oct 2023 09:31:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83C51C433C8;
	Wed, 18 Oct 2023 09:31:34 +0000 (UTC)
Message-ID: <56a09e21-5f43-4d0d-b603-777bbfd1885f@xs4all.nl>
Date: Wed, 18 Oct 2023 11:31:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 0/8] Add StarFive Camera Subsystem driver
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
References: <20231008085154.6757-1-jack.zhu@starfivetech.com>
 <98297bfc-ab81-4bb5-acc3-619fdf879276@xs4all.nl>
 <bb5b776c-f1dd-f53e-079c-8048af2e73f1@starfivetech.com>
 <4a74a40c-ee3c-4563-87d1-27e859eb6982@xs4all.nl>
 <687a4c58-3666-1c7b-fcfd-d586c28dea35@starfivetech.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <687a4c58-3666-1c7b-fcfd-d586c28dea35@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/10/2023 11:25, Jack Zhu wrote:
> 
> 
> On 2023/10/18 16:50, Hans Verkuil wrote:
>> Hi Jack,
>>
>> On 18/10/2023 04:37, Jack Zhu wrote:
>>
>> <snip>
>>
>>>>> --------------------------------------------------------------------------------
>>>>> Compliance test for device /dev/v4l-subdev1:
>>>>>
>>>>> Driver Info:
>>>>> 	Driver version   : 6.6.0
>>>>> 	Capabilities     : 0x00000000
>>>>
>>>> But this does not appear for v4l-subdev1.
>>>>
>>>> I can't really tell why it doesn't show that. Can you debug a little bit?
>>>> The code is in v4l2-compliance.cpp, line 1086:
>>>>
>>>> ent_id = mi_media_info_for_fd(media_fd, node.g_fd(), &is_invalid, &node.function);
>>>>
>>>> The mi_media_info_for_fd() function calls ioctl(media_fd, MEDIA_IOC_DEVICE_INFO, &mdinfo),
>>>> and that fails for some reason. It could be that media_fd is invalid (would be weird).
>>>>
>>>> This could well be a v4l2-compliance bug that you hit with this driver.
>>>>
>>>
>>> On the test board, /dev/v4l-subdev1 is imx219, and the corresponding directory is
>>> /sys/dev/char/81:3/device. Media0 does not exist in this directory. Therefore, the media_fd
>>> obtained through mi_get_media_fd(node.g_fd(), node.bus_info) is invalid.
>>>
>>> I don't know why media0 does not exist in /sys/dev/char/81:3/device?
>>>
>>
>> Can you try again with this v4l2-compliance patch?
>>
>> I need to dig a bit deeper as to why media0 is missing, but for now try this.
>>
>> Regards,
>>
>> 	Hans
>>
>> diff --git a/utils/v4l2-compliance/v4l2-compliance.cpp b/utils/v4l2-compliance/v4l2-compliance.cpp
>> index 7169eefe..29475d6b 100644
>> --- a/utils/v4l2-compliance/v4l2-compliance.cpp
>> +++ b/utils/v4l2-compliance/v4l2-compliance.cpp
>> @@ -968,7 +968,7 @@ err:
>>  }
>>
>>  void testNode(struct node &node, struct node &node_m2m_cap, struct node &expbuf_node, media_type type,
>> -	      unsigned frame_count, unsigned all_fmt_frame_count)
>> +	      unsigned frame_count, unsigned all_fmt_frame_count, int parent_media_fd)
>>  {
>>  	struct node node2;
>>  	struct v4l2_capability vcap = {};
>> @@ -997,8 +997,12 @@ void testNode(struct node &node, struct node &node_m2m_cap, struct node &expbuf_
>>  		memset(&vcap, 0, sizeof(vcap));
>>  	}
>>
>> -	if (!node.is_media())
>> -		media_fd = mi_get_media_fd(node.g_fd(), node.bus_info);
>> +	if (!node.is_media()) {
>> +		if (parent_media_fd >= 0)
>> +			media_fd = parent_media_fd;
>> +		else
>> +			media_fd = mi_get_media_fd(node.g_fd(), node.bus_info);
>> +	}
>>
>>  	int fd = node.is_media() ? node.g_fd() : media_fd;
>>  	if (fd >= 0) {
>> diff --git a/utils/v4l2-compliance/v4l2-compliance.h b/utils/v4l2-compliance/v4l2-compliance.h
>> index 7caf254b..c47f25f5 100644
>> --- a/utils/v4l2-compliance/v4l2-compliance.h
>> +++ b/utils/v4l2-compliance/v4l2-compliance.h
>> @@ -308,7 +308,7 @@ int check_ustring(const __u8 *s, int len);
>>  int check_0(const void *p, int len);
>>  int restoreFormat(struct node *node);
>>  void testNode(struct node &node, struct node &node_m2m_cap, struct node &expbuf_node, media_type type,
>> -	      unsigned frame_count, unsigned all_fmt_frame_count);
>> +	      unsigned frame_count, unsigned all_fmt_frame_count, int parent_media_fd = -1);
>>  std::string stream_from(const std::string &pixelformat, bool &use_hdr);
>>
>>  // Media Controller ioctl tests
>>
> 
> From the log, there is no change.

Oops, my mistake. Also apply this change:

diff --git a/utils/v4l2-compliance/v4l2-test-media.cpp b/utils/v4l2-compliance/v4l2-test-media.cpp
index 0195ac58..52ab7fb8 100644
--- a/utils/v4l2-compliance/v4l2-test-media.cpp
+++ b/utils/v4l2-compliance/v4l2-test-media.cpp
@@ -612,7 +612,7 @@ void walkTopology(struct node &node, struct node &expbuf_node,
 		}

 		testNode(test_node, test_node, expbuf_node, type,
-			 frame_count, all_fmt_frame_count);
+			 frame_count, all_fmt_frame_count, node.g_fd());
 		test_node.close();
 	}
 }

Regards,

	Hans

