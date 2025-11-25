Return-Path: <devicetree+bounces-241921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E12C84569
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A7023AC286
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B0612ED85D;
	Tue, 25 Nov 2025 09:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iM54Qs/B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7104E2ECEA5
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764064778; cv=none; b=TEDZsTpbF5RnHk6KEO+5Cdh4dS+kCFwgnEgpkWxPx/fd2iNglrAUF9gT0RDoYmz6b8O0Bfp3GU0W5/9zYVwy6SW98jWRXnO8YLI2oQqmeVbh6e10KS1qwGSnaZwfzfIS1rFBMF1pcTEa0R/iBYxdf5FrYP6UFSLWpM2WOE6Qku0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764064778; c=relaxed/simple;
	bh=R6QMB1wFC2BATzYNPhRuQ8QidzB6qeV3IovdUk/YQTI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=prbbWbjgEtas4Lq7+WClxdZ8m2HXh73WZLDFbxWkVP1hVgqT62gv4KRbivrvZKPiw18U+u4mSbthRknq1mhHjCKbl/KULWBXh62J2mxQHajIczWbdUdquk7qLdEtlJovkt3DBBzQmCdF9B1v7pTS8qkxwBXorMi7+J+gY3NmnoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iM54Qs/B; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b736cd741c1so927849666b.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 01:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764064775; x=1764669575; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fgh4ODFDnXgu6g2WTTqzK1hFnk5Jr1ZOv10EVLwZMBY=;
        b=iM54Qs/B6/n5IrKlNppjpuL91giWasf+ib/GKeY4wgUM5PapbJNBzhmeYkHOqRmmCn
         5+hkIxAYrA6m2BPIU1h9DGfcVj/wsd/5nk2BfhwBpOQKiYNmq67jW2qsBDr1qbbEcDnM
         UNLj1GUL98yAdQA9zCf/i3evPIdBrJH86espWP9SrVA7dFrh4tFtImyt/cWS1BKlerre
         zcLoGFlx/De2VSolFm8RYGX8ZNOO71XeenEi1aBIMBWdRuaIXi5LXwe+d1lMIDdl3Q8C
         65xPDlavFwHHZj9mLOYu4d68JP6oQWOg1H73zrIermC6hIxARXM4knK8OAsEMBJ8v2Hz
         ly7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764064775; x=1764669575;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fgh4ODFDnXgu6g2WTTqzK1hFnk5Jr1ZOv10EVLwZMBY=;
        b=hrKjGX/dgYjeAy2VSodxilrs4fcheHKz99Nz02UsavxpUHWxbjFDFiTK2rPML7Jige
         aoTQ/ER774gp21bW9YaZlBKMlLbM9c33uidJK+WO6yIs/EoVaLFrZOHcV4O9dRzd1B2d
         q8mkMVRiQTm799WpZdiOjsRQ7CclvWcYi5ooTmecWhIU/kIGfUDVWgj6nwMrlSkm6FA+
         hkAwPexJ64rTbLzfrT85Ang8rlZUedhckRSgMk/QGoQrPLu2P/Za5JiID18rb2vP6+fR
         +aXw1rLdHY96gKPvTb9o0lPuc8ctIXXIxUpml9YgMcvjJM2jcl6JCeH2uFJu1ajClDPt
         F1Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUh0EPJuOFHRw01Zv5OkvaJkX67cBtg7vcNYPmEFI5/r9O/rw8cNSMhYVtXXVY+OcaXHi+I91pMv6Zg@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1PXvyFIDAQv/dO/Wxv894MGADHf7aLMs6fOzJbv8cQQN+QK3b
	nEYc4GVdKD85N4gleSzJwbMNeE0sQ6247mNAJNpBK5zPPHnsAkRfeuI3
X-Gm-Gg: ASbGncsQJ593nEiyYzVNa/uXlNA3RZ5yXWv6udafb2BKD9Xo7McfAovXtpJ1K7jIWmt
	uyA/NugLVHwhwYjj+k+h+3g1/QwS7ItXGY6McgmaHHYqgI1UNGHy283RqU5MMR69QUWee6fSw2h
	aRsTfWZ/KSGCQv71GFhZo5oNyJH+HNCnwZhEaYkfOWu7NCOSWeXZiBNQgJdH83V9pvn2qPmCOaH
	aY/D4RbFhjqm2hymGJPZkGWDZfensooKagVygrrFveRySX0aVoVdLr8RbhE+tQ+vo9d680R0cqa
	PPiQOVRliXURr3LmBogjm6fFEf1yIKPsM/fbdcQLchCGcltQs+s+K73cpDqQULN9/NAeQEd06rA
	jbZTWe2XNcTDkGFxCDlIG365x9o3zKBnMP8PcvsdmJwnIf12Y0J7GbO8NMNUuTVKcixOkDDWYV7
	u0t44dClhW5sb7oK9Byarg0074HV31io7ioCA/i4qKY/M=
X-Google-Smtp-Source: AGHT+IESxJDwS/BJ1YU+rQ3vBeFJBP5tEOROc8lHgEyTp+47bod8zHWxWQ5jr9upDauFLWFNyK0Ddg==
X-Received: by 2002:a17:907:3daa:b0:b73:57eb:688 with SMTP id a640c23a62f3a-b767183c4b1mr1636055866b.53.1764064774524;
        Tue, 25 Nov 2025 01:59:34 -0800 (PST)
Received: from [10.25.216.228] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654fd51fbsm1498870766b.33.2025.11.25.01.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 01:59:34 -0800 (PST)
Message-ID: <4a022153-009c-44fd-8c4b-39819ae69390@gmail.com>
Date: Tue, 25 Nov 2025 01:59:31 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] reset: imx8mp-audiomix: Replace mask with bit
 index
To: Frank Li <Frank.li@nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
 <20251114133738.1762-3-laurentiumihalcea111@gmail.com>
 <aSCHjNqj3CV3ahX0@lizhi-Precision-Tower-5810>
 <6be8a682-6c72-45c8-be0e-880ab66045ff@gmail.com>
 <aSR8q5cE/XXbZuF0@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <aSR8q5cE/XXbZuF0@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 11/24/2025 7:41 AM, Frank Li wrote:
> On Mon, Nov 24, 2025 at 01:28:32AM -0800, Laurentiu Mihalcea wrote:
>> On 11/21/2025 7:38 AM, Frank Li wrote:
>>> On Fri, Nov 14, 2025 at 05:37:34AM -0800, Laurentiu Mihalcea wrote:
>>>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>>>
>>>> Replace the reset map mask with the bit index to make it clear that all
>>>> reset lines are managed by exactly 1 bit.
>>> I don't think there are benefit because I met some periphal need a magic
>>> number to reset.
>>
>> Please provide more information. What SoC? Which peripherals? What block control?
>>
> I can't reminder exact one. I grep some code
>
> [IMX8MP_MEDIABLK_PD_LCDIF_1] = {
>                 .name = "mediablk-lcdif-1",
>                 .clk_names = (const char *[]){ "disp1", "apb", "axi", },
>                 .num_clks = 3,
>                 .gpc_name = "lcdif1",
>                 .rst_mask = BIT(4) | BIT(5) | BIT(23),
>                 .clk_mask = BIT(4) | BIT(5) | BIT(23),
>                 .path_names = (const char *[]){"lcdif-rd", "lcdif-wr"},
>                 .num_paths = 2,
>         },
>
> mask is more extenable and easily support more hardware in future. Change
> to bit number have not big benefit.


sure, I'm fine with the mask-based approach. The big idea here is to make this driver

usable in as many scenarios as possible.


Philipp, please let me know if you're okay with the proposal. Will also have to tweak

one of the subsequent patches since, so far, we've been operating under the assumption

that reset lines are 1 bit.


