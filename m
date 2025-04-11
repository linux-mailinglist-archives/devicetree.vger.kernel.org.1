Return-Path: <devicetree+bounces-166120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A635A865CB
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 20:50:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 309473B25BD
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 18:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C8226FA7A;
	Fri, 11 Apr 2025 18:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="JmD3z4VB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD72268C7A
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 18:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744397370; cv=none; b=raOEoI9J5zwwizhJCkSzdS2Ie7q/yQg3OE2nBxxhf8/LuyoWlGBrB1IyogcIeu861R8xmoy9gxlg/cUW6/d3ZhoADjAyrQTQ2efq1U+IjmsVSQv/Vx7hlG3wYlprR2236cEYom2aRZackh1U/z+MGQnPnNiIx9zRSJ1CkGB/hrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744397370; c=relaxed/simple;
	bh=Hl26pqtFHZFSG+1hpOMXgwzxe8ApHPTC5HGMlZ94Xz0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cYBnvu9dZvJ6p4hsuXnoqLeQDanmqrQ4y1Ky+HPmdR+G9/WOuCmdVMEcSWJhW0WzxBVaek70E+ZbY9G7HBE4WhckBXi8QlU6PvJglYl4F44yyT54QV0/e9IcGQ8S6FUB26HK+y52OoA5Ihwbli73mP5i7fF8I9ASAXQCcc6AVLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=JmD3z4VB; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-af91fc1fa90so2192029a12.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 11:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1744397367; x=1745002167; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2d/tTun9JFnIkfP1YqxhBUY8akZ/H8pYOxt1P4JGzvQ=;
        b=JmD3z4VBxTU6eDPDWvY/0Zxmqk/hb8oCMYf8nE9Soa4Vlvz+MRS+Z9JsLk50IBWGfb
         4C3qjXCFgSAJAFreMdgd4x63Ypp+bh44B4vnNf03FXXijTxIHVE8O08cnqxK8dUI8ybs
         hTscUVoK6rV4kn72Tb7TFcfLi4ClDU1/xFToJIejo5OvFPsQNRFfWA7qlPdGCL4KXIBZ
         ErBA37+3FtyXsE09Lk1IkzJreTEZXUVp1Iz+q1uDojDP7Mjpl1AdWIzSldE9P4pityNb
         91AGl6iAOEFndRQFydhpSaOxW3nEft/VJN9DjMbF/umuQUvdQj7xoh04e2KAH/hgX2IB
         U21Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744397367; x=1745002167;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2d/tTun9JFnIkfP1YqxhBUY8akZ/H8pYOxt1P4JGzvQ=;
        b=wnIXTxR/+1YrUjHDUPOBk100jFW6Vptx3CkCjSZjRdIxM5O9CAAkyxCmO+JglL2D4l
         /G9x/fLMrm4/kwsB0dSMbtV7SvllN4WEBUqt0MRYb/kvn/PVAiS79qC/jPXYWMdHOJBm
         /zuVJkxaPO46ok5n88aSbzED1xU8DjGQvweH6YVNkZwOjkFz6FNWrHyCua3XQkL7CNiJ
         QNmUxRQL97IZrystPGhWbSsj5fjsWx68I92htvYevPoUTcs7o25lLQW983qIRrCovDfp
         f5z8csdKnotY2RG2n/BVfB2+n1kBAcIvp1uyPwTi/VzJkxO+wmuXwRB2xzO4WIl2iQrY
         YtHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXQNi1qCyhRGKvunckV7gDkZCGS8VanXD89ZHuuDb54UBq5eKJbRQFPB8p5gxX4cZenz7dLe8DlocJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwKfB9PD/+PIs0/BpFSZYp5JCZsj2Aljm9K8LDO0dA6Ba0bVW61
	dWclCUQW99RnDamkUW985jNqoO9gEbFo7Dchq19SWxaLzocfLAtAnhXQllqGiA==
X-Gm-Gg: ASbGnctX64LRbgR75v8SToVRAkt/BFNoK74MLRCQzMmJzfrjO+wH0xHbdnwwlbwNTti
	pdZ975hukmKbGt+xLc+UTTYsSb6upeDAl5excU/IGmWzRHI49PFdzP+R6B1Un0W12FEhhLO3DSH
	BNmYaAnJs6eO3ROAOLn0awhOP2hiGrf0oiGujkyZnpJ83X0LtUPW2p8gpNAGby80pfFQAQvXoSc
	b9DLexmhoYFBr1i4+mi5+0yUi8iO/a9e6a543DHWeh6Wmo7fXB7oha3OEWyjsz1w+NekAanDbS5
	kLyY+KyYqzRqYNz40q1w3UtlZsnJcucc1axgKXWEmWaUhf0=
X-Google-Smtp-Source: AGHT+IEhPndhi3CdSc7UE8aGaWa69pXyv+/ous+jXD14lRn9STbgK4FviyVEW9pBkxb0zitBaRkPDA==
X-Received: by 2002:a17:90b:2d87:b0:2fe:b8b9:5aa6 with SMTP id 98e67ed59e1d1-3082367ef21mr5601706a91.31.1744397367168;
        Fri, 11 Apr 2025 11:49:27 -0700 (PDT)
Received: from [172.16.118.31] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-306df2fae34sm6047853a91.39.2025.04.11.11.49.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 11:49:26 -0700 (PDT)
Message-ID: <d78e60f2-e2e5-4e6a-9724-68cc0481fd77@beagleboard.org>
Date: Sat, 12 Apr 2025 00:19:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] Add new `export-symbols` node
To: Andrew Davis <afd@ti.com>, Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>,
 Robert Nelson <robertcnelson@beagleboard.org>, nenad.marinkovic@mikroe.com,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Robert Nelson <robertcnelson@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>,
 David Gibson <david@gibson.dropbear.id.au>,
 Herve Codina <herve.codina@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Grant Likely <grant.likely@secretlab.ca>, Dhruva Gole <d-gole@ti.com>
Cc: devicetree-spec@vger.kernel.org, devicetree@vger.kernel.org
References: <20250411-export-symbols-v3-1-f59368d97063@beagleboard.org>
 <0d25b3d4-7735-4e35-8553-d6e64b8ad8f7@ti.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <0d25b3d4-7735-4e35-8553-d6e64b8ad8f7@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/11/25 23:09, Andrew Davis wrote:

> On 4/11/25 3:00 AM, Ayush Singh wrote:
>> `export-symbols` is designed to be a local replacement of global
>> `__symbols__` allowing nodes to define aliases to nodes in a tree, which
>> will take precedence over the aliases defined in the global 
>> `__symbols__`.
>>
>> Having a way to allow node local aliases helps in usecases such as
>> connectors and addon-boards, by allowing decoupling of
>> overlays/devicetree nodes of addon-board from the base connector.
>>
>> Reviewed-by: Herve Codina <herve.codina@bootlin.com>
>> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>> Signed-off-by: Ayush Singh <ayush@beagleboard.org>
>> ---
>> This patch series follows the initial RFC [9] sent a few weeks ago. I
>> will be reiterating the RFC here for anyone who might be seeing this the
>> first time, since there was not much feedback in that thread.
>>
>
> I think this is a useful tool in the effort to build a complete 
> addon-board
> solution. But I'm still missing how it all fits together, do you have 
> a real
> working overlay making use of this somewhere I could take a look at? 
> Maybe
> an overlay for one of the addon-boards you list below (one of the 
> BeagleCapes
> for instance).
>
> Andrew


Well, I do not have a completely working for MikroBUS right now, but I 
think Herve Codina and Luca Ceresolli should have some working overlays 
for their addon-board setups, so maybe they can link those here. I have 
mostly been working on devicetree side of things to make it more general 
devicetree thing rather just a Linux thing (Zephyr also needs MikroBUS 
support). Additionally, I have been trying to get the support in base 
fdtoverlay, so that static use-cases are also covered.

I will try posting a MikroBUS patch based on the kernel export-symbols 
support patches [0] soon to maybe provide a better picture regarding how 
all the pieces fit together. The spec patch series was supposed to be 
for getting initial feedback regarding this particular direction, but I 
guess to get real feedback, I need some more concrete prototypes.


Best Regards,

Ayush Singh


[0]: 
https://lore.kernel.org/all/20241209151830.95723-1-herve.codina@bootlin.com/


