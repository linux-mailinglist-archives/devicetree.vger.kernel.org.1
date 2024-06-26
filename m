Return-Path: <devicetree+bounces-80446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2B49198C0
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 22:09:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F9241C21F35
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 20:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59021193061;
	Wed, 26 Jun 2024 20:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="ZuQnqL3N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFD7192B7A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 20:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719432571; cv=none; b=U4IcIH6vsTcllQDntQ2Qt7YRqiJzmfvykkGs8j/1QTaEaMI8LPzCCuzMGIKsPFeUhk8ltI2m5wlfpD2ZK4BLvnohtK+4FnsP1NuwqQBep5ccDDdYHkSn5MbMghPW1/9kYr2OxMzf0vp0/WH/6V2g3tas26rBAg1XViR/65wYPlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719432571; c=relaxed/simple;
	bh=WQSAWrkLj4K2WmJ8sjI4muU+NasCNdjh36VyrdZLgjc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lyg7jOaSrpY2ycZJB2mfsv1gfhyq74T1He2epHqIlezKGK0NxuSe9eNCZEW1e1UzTlJc4WM7i/gVGDfltBI8jMVZGJfjwcTtfK/Sq8ONbi/UwjdJTiJgC8/+jbKjsZi9LjL25Vbj1pnKsQ1FCfCepy3d1KNfhYUvIbhYBIi2xUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk; spf=pass smtp.mailfrom=kernel.dk; dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b=ZuQnqL3N; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.dk
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3772749962dso854915ab.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 13:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1719432568; x=1720037368; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XFoBjCaXOuAuWDxpGYUmcGmS4rl71MBSo9IrE9Xx5Dc=;
        b=ZuQnqL3NOOwKAVZeFtlKVibvHrgKMkwRvjWf2xU4Q8rbKaarFxs2oeN3bNsh4UHrb4
         EO29YP4nj+tcsiJ5oOrOEvKfFEuTFxjlDrJfC7cO1mlTjIRsEX5T8iFviDC7AUKFthRb
         UzFMDjfH2zudIQzR9vAXFbe5zQuWRcyiwUPoGobzIrD/EBe9zqvLWAbqwbQ63+9ASxSk
         6/1tvuUOSoiZ/LWLlzpGpoN5GDJFzIVsJ0vkkVpcd9bDjAhwuVu8ThrGLYxmtIedJe7S
         BRu8iLQf1enj+aypNuQR3DIoAEf//c+4p5KYDvY6YG6HTxB2zcXVE0JchYeLTwKqJ8WD
         i/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719432568; x=1720037368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XFoBjCaXOuAuWDxpGYUmcGmS4rl71MBSo9IrE9Xx5Dc=;
        b=iTklw/Une4BWgPohA75lIWsKzQhYvsLmoJe+/auqmYHGqBdZLx6Aye+gDOaz4SLvXV
         UgxSKHi5L5+/D20AN/2yyAriK5xthxC2K2GsVENl4lp0MAsOoNeyYn3ci4Ww81ImmLxn
         spVroixnlcO2rmcN/9BtVdsinYcocM7nWvb2LKyhJ9W/u+XKRnD49erdJvJadAfLDTta
         SoF6jAbott2iIb2umNAqCCy7/bBJ2TvSXkYF9MbAbSRLkQeU69ElilYeK6+FKqChevSc
         28I/wgG6QG/1aNmP22XArngmRGEq6hVXLebndwgeVgwOu+ls04mhsY12JJy509uUWbqg
         /oZg==
X-Forwarded-Encrypted: i=1; AJvYcCVXjnb890qBbuLi2hxov+RqeFoHSyjhEOY333iwh3b0WnRoAf9zrPvmPZsScnQhl3yayC8aQXGpENSFH2bZtp4xDXpK+AiVO/eg+w==
X-Gm-Message-State: AOJu0Yz6vNXl8diZxpZuj3MwlFdK/NnoqyyTWmTTe9OSPeprYJfUvRT7
	9klomJCuxcl/qxHYTwkyixwZjeLqpw39scCqHZeIeYH6o7KBI43hTKbdpThPqMo=
X-Google-Smtp-Source: AGHT+IFd8ycHFY0EV3fQ/ysqJ31z0UTdeJK8CX1EFtFBpVl3MeFi4xbYR0M2X9flhqcvpPKYIGhIkg==
X-Received: by 2002:a05:6e02:13a5:b0:376:3918:c50 with SMTP id e9e14a558f8ab-37639180e02mr150373115ab.0.1719432567747;
        Wed, 26 Jun 2024 13:09:27 -0700 (PDT)
Received: from [192.168.1.150] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-71acc0424cfsm5855973a12.26.2024.06.26.13.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 13:09:26 -0700 (PDT)
Message-ID: <1233bf3c-335c-497a-ba08-cd52362f3723@kernel.dk>
Date: Wed, 26 Jun 2024 14:09:24 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] block: partitions: populate fwnode
To: Daniel Golle <daniel@makrotopia.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Hauke Mehrtens <hauke@hauke-m.de>, Felix Fietkau <nbd@nbd.name>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Dave Chinner <dchinner@redhat.com>, Jan Kara <jack@suse.cz>,
 Christian Brauner <brauner@kernel.org>,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 Al Viro <viro@zeniv.linux.org.uk>, Li Lingfeng <lilingfeng3@huawei.com>,
 Christian Heusel <christian@heusel.eu>, Min Li <min15.li@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Hannes Reinecke <hare@suse.de>, Mikko Rapeli <mikko.rapeli@linaro.org>,
 Yeqi Fu <asuk4.q@gmail.com>, Victor Shih <victor.shih@genesyslogic.com.tw>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Li Zhijian <lizhijian@fujitsu.com>,
 "Ricardo B. Marliere" <ricardo@marliere.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-block@vger.kernel.org
References: <cover.1719368448.git.daniel@makrotopia.org>
 <afa870ec6ac1027561d1c002205ab1e05358a46c.1719368448.git.daniel@makrotopia.org>
 <2de992b3-d71c-40f2-ad68-76a9f48338d4@kernel.dk>
 <Znxy0BJNTE79MrCq@makrotopia.org>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <Znxy0BJNTE79MrCq@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/26/24 1:58 PM, Daniel Golle wrote:
> On Wed, Jun 26, 2024 at 01:43:49PM -0600, Jens Axboe wrote:
>> On 6/25/24 8:50 PM, Daniel Golle wrote:
>>> diff --git a/block/partitions/core.c b/block/partitions/core.c
>>> index ab76e64f0f6c..f88829e254e6 100644
>>> --- a/block/partitions/core.c
>>> +++ b/block/partitions/core.c
>>> @@ -10,6 +10,8 @@
>>>  #include <linux/ctype.h>
>>>  #include <linux/vmalloc.h>
>>>  #include <linux/raid/detect.h>
>>> +#include <linux/property.h>
>>> +
>>>  #include "check.h"
>>>  
>>>  static int (*const check_part[])(struct parsed_partitions *) = {
>>> @@ -281,6 +283,42 @@ static ssize_t whole_disk_show(struct device *dev,
>>>  }
>>>  static const DEVICE_ATTR(whole_disk, 0444, whole_disk_show, NULL);
>>>  
>>> +static struct fwnode_handle *find_partition_fwnode(struct block_device *bdev)
>>> +{
>>> +	struct fwnode_handle *fw_parts, *fw_part;
>>> +	struct device *ddev = disk_to_dev(bdev->bd_disk);
>>> +	const char *partname, *uuid;
>>> +	u32 partno;
>>> +
>>> +	fw_parts = device_get_named_child_node(ddev, "partitions");
>>> +	if (!fw_parts)
>>> +		fw_parts = device_get_named_child_node(ddev->parent, "partitions");
>>> +
>>> +	if (!fw_parts)
>>> +		return NULL;
>>
>> That last if check should to inside the previous one.
> 
> Actually the previous one should have been removed entirely. I somehow
> forgot to 'git add' that change.
> 
>>
>>> +	fwnode_for_each_child_node(fw_parts, fw_part) {
>>> +		if (!fwnode_property_read_string(fw_part, "uuid", &uuid) &&
>>> +		    (!bdev->bd_meta_info || strlen(uuid) > PARTITION_META_INFO_UUIDLTH ||
>>> +		     strncmp(uuid, bdev->bd_meta_info->uuid, PARTITION_META_INFO_UUIDLTH)))
>>> +			continue;
>>> +
>>> +		if (!fwnode_property_read_string(fw_part, "partname", &partname) &&
>>> +		    (!bdev->bd_meta_info || strlen(uuid) > PARTITION_META_INFO_VOLNAMELTH ||
>>> +		     strncmp(partname, bdev->bd_meta_info->volname,
>>> +			     PARTITION_META_INFO_VOLNAMELTH)))
>>> +			continue;
>>
>> This is pretty hard to make sense of...
> 
> I'll add comments explaining it. Or should I use another syntax, e.g. several
> nested if-clauses, instead?

Maybe some kind of helpers for these instead, with comments? Nobody can
read the above.

-- 
Jens Axboe


