Return-Path: <devicetree+bounces-294817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJVaAtyt/mnJuwAAu9opvQ
	(envelope-from <devicetree+bounces-294817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 05:45:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8FA4FDF1C
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 05:45:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CE9EE3008D7C
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 03:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34DE1F37D3;
	Sat,  9 May 2026 03:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b="LNqk5sqc"
X-Original-To: devicetree@vger.kernel.org
Received: from out28-121.mail.aliyun.com (out28-121.mail.aliyun.com [115.124.28.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0753E288B1
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 03:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.28.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778298329; cv=none; b=VqL/vELNc0mxTX4AYx7bYyyKQzKihYMZekalDRLWomcXV0R19lC9x493OxmxrLq7Sz9jpzCI1lVYkuNmO7NKEbCP064Nce0CAF/O72DWMw4iirIeAKFNrHQa9CQu4eMyoH3pju9Ywpawo8/5fazkUVVR4uqdhTkfKdvgNFZ+QTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778298329; c=relaxed/simple;
	bh=c/fbMdv4pfgVPj1blvwpVs1G+FVYcIzsDmOAEGMazFM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=twrSD18XSzb0Q8++e63XssqE42kQaa/l2UFtnZccVyPWFIrZ0JyYflcoxVjs+c4ejxWRElnrgS612NWJJTbd+OgLrx/fpychYFgK6EYv4neCmtAhLIH06rzrEBzSJBSKHu/9C37wQWIO3r6p4VFC6wVdu23NywylmPTLiRbtrys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=LNqk5sqc; arc=none smtp.client-ip=115.124.28.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lontium.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1778298324; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	bh=qGK9XfT0UNwOZBrWMMgeIb99xBMNK/YMA7jv7NcYbNg=;
	b=LNqk5sqcuRMiJZz4wdRzLtH5M+KJ+XOCankryJx9oUUvIgpKscv2eX464n3zJkAcD0QKtzM0mSBUO6ThB0AhICGzQlvEoCiZm0YDUNUyAwe4A/IFCJK1ocXWEaXGeZXv0UEOe1+t+ZYYOCbA9iv4Np+PSfDAyrvOGOmsmmGTfntWtjt2IXMV/fzTBaDh7gcj3DgG7jIwgrU4d0a1UouAhL321q6Sd5IA8dyYamENu4jv0/cnS/BDYXRBS0+HWDwLNb6508FH54kiHK1aX+Ro7gD0QvMpjrO83zFfjADNsVykfJqnSdVHMRePgYa5mrsh+/JlyHTinTjR5SdfTrqflQ==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.4450526|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0434244-0.00788896-0.948687;FP=10254890737992427316|0|0|0|0|-1|-1|-1;HT=maildocker-contentspam033040074035;MF=syyang@lontium.com;NM=1;PH=DS;RN=5;RT=5;SR=0;TI=SMTPD_---.hT38w2D_1778298006;
Received: from 192.168.51.146(mailfrom:syyang@lontium.com fp:SMTPD_---.hT38w2D_1778298006 cluster:ay29)
          by smtp.aliyun-inc.com;
          Sat, 09 May 2026 11:40:06 +0800
Message-ID: <07b51d33-52ac-49d7-a596-b7ca70d68a58@lontium.com>
Date: Sat, 9 May 2026 11:39:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] dt-bindings: bridge: Add Lontium LT7911EXC eDP to
 MIPI DSI bridge
To: sashiko@lists.linux.dev
Cc: conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org
References: <20260508134702.4713-2-syyang@lontium.com>
 <20260508205007.655C6C2BCB0@smtp.kernel.org>
Content-Language: en-US
From: Sunyun Yang <syyang@lontium.com>
Organization: Lontium
In-Reply-To: <20260508205007.655C6C2BCB0@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 9D8FA4FDF1C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294817-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[lontium.com:s=default];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[lontium.com];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[lontium.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c09:e001:a7::/64:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

在 2026/5/9 4:50, sashiko-bot@kernel.org 写道:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Medium] The binding lacks support for the dual-port MIPI DSI output claimed in the commit message.

1. When using single-port mode:
   (a). Only either Port A or Port B can be output at a time.
   (b). Port A and Port B are combined into a single port to output 
8-lane DSI.

2. When using dual-port mode:
Port A outputs the signal, and Port B copy the same signal from Port 
A.Both ports output the same image, and configuration for Port A alone 
is sufficient.

I need to look into how to modify it.

> - [Low] Typographical errors in the commit message alter the meaning and reduce clarity.
      it will be fixed.> --
> 
> commit d7e3500f4741bb0ae26a44a80c52b86455bf1c05
> Author: Sunyun Yang <syyang@lontium.com>
> 
> dt-bindings: bridge: Add Lontium LT7911EXC eDP to MIPI DSI bridge
> 
> This commit adds the device tree binding schema for the Lontium LT7911EXC.
> This device is an I2C-controlled bridge that converts eDP 1.4 input to MIPI
> DSI output.
> 
>> The LT7911EXC is an I2C-controlled bridge that Receiver eDP1.4
>> and output signal/dual port mipi dsi.
> 
> This isn't a bug, but there appear to be a few typos in the commit message
> description. The word Receiver reads like it should be receives, and the
> word signal looks like a typo for single.
> 
it will be fixed in next version.

>> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
>> new file mode 100644
>> index 0000000000000..3290b10ce8835
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt7911exc.yaml
> 
> [ ... ]
> 
>>    ports:
>>      $ref: /schemas/graph.yaml#/properties/ports
>>
>>      properties:
>>        port@0:
>>          $ref: /schemas/graph.yaml#/properties/port
>>          description: Video port for eDP input.
>>
>>        port@1:
>>          $ref: /schemas/graph.yaml#/properties/port
>>          description: Video port for MIPI DSI output.
> 
> Since the commit message indicates the hardware supports dual port MIPI DSI
> output, should the schema define a secondary DSI interface here?
> 
> Without a second endpoint or an additional port defined, it seems device
> tree authors would be unable to properly model a dual-port display panel
> connection.
> 


