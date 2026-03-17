Return-Path: <devicetree+bounces-276795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OM2BFJeWuWmhKwIAu9opvQ
	(envelope-from <devicetree+bounces-276795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:59:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC89D2B0790
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFC2C3169BFC
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 972AC37881E;
	Tue, 17 Mar 2026 17:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gdvK5O8r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304AB3624B3
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773768553; cv=none; b=lqKOnBVZi1TSytP0sxZChUezBgF+whe3/XF2hx1Q/JwWhrIQufq09+hOH222NoGi7d94XJ7h+0YOHks/jRstRpfmefHbU4y8TKQnbsXgYEk42X3NmjV/HOGq3MEGz9ONIPJ2BWxG5dDjOZ17vfI3cmEbkqomMG6MpZQ77PoUIT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773768553; c=relaxed/simple;
	bh=GAKCFy2OkiKG7jpWJ/XJktQv9SAhQII1ABVEufIwzOY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PcJB/Pcwerzn++q7Iakb/oGjHrervgDKuJF0/5el2eP50dX/tv14oGXVJZ5ne9EMpdMCEDtGlHbCbmLqQZozehACyAdTCDa/GExro/cfbzWwxzQHJuVHpyd8eA2ipU6xmddlJHuERSXXKqn+lgJ6xig4bnVUnUaMPxyNbkUdHGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gdvK5O8r; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48628ce9ab5so13302755e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773768550; x=1774373350; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HY9BNi0SB5U83gy+SRIh1ay4mmvnJ8DxaHKR7xUwkfM=;
        b=gdvK5O8r42PNDfDku/MX5Sha8NGmBDu+QKqs07OwjWBFNc9/TE5KGT1Z36AjEI8L47
         RLqjxfEWLSLMpwAhMw4SDFVyfY467iWwQeRHY1/vo4WwaPZkeO5AfxxNJ8d33bqMyV/v
         wGYv/V8qIcam/5MUKT5o7SE/PSIXxzwCwptaJoaDeYpFdGury+tFzLzH+1pvgYhn7Snp
         81c4ZFoxRPXTeGGkAHJk9MZYgayvSbQtw8odV+RnRgAaGHKeUZBk8msUSL3HJTm35apv
         b2/bWsS5S+v9zuFRKkSBXrt4s+56DYGEYODmwSZ4+1jr5gjo/FtV3dDoWQ5WdEXrZ7Ut
         E/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773768550; x=1774373350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HY9BNi0SB5U83gy+SRIh1ay4mmvnJ8DxaHKR7xUwkfM=;
        b=rD9llygHGN30w/FL6x9a6iRwyg4jfTJgu3AIc8gCKsabCktay9+z2phSnu+KH4Me0g
         yv+1lRb5oNk6megiaXDt6SyeOrpmW1iJ7kq4wjxX77NjDSXW6KlyDI55wSe9K0q1jUwo
         +gC+y+FoNGd6z2F2aT3EXKC1g2SI/ugCbfr0b/otdgXP5qVlHRRhyi6PvPCeTAFjYuAr
         HBOpeJRfw667TuDeaBu3WK/LXPBym/cMiVKMIAA64IzVSXagXLDG/swNjzrqQynXoT1i
         SCGpVL5ekz+0ikXNhJeBxF6+ldLZmTbclRU5JaZeS2o5pIez7HvUnfib7WAdFG1nr4aO
         Yo7w==
X-Forwarded-Encrypted: i=1; AJvYcCWK7zzFZS00SLR2FkAIcTVGETXt+kMB9/5CqnHle/wHGEBJFzr6QU42JJvnOzArSyJot8oLmeLhEOb7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+X52pN4eHx8A66P61qGzD+3lbWtsKrDcUvWET3koLw6iCjQvk
	N1WmPAXNZoWDbVcOAuFaQpcq1SsvcBFRFozBj+G0tgPhOBe3MrGoqX4yjwu4ViCjUzs=
X-Gm-Gg: ATEYQzw4X2crd8/ow6uD2WQosK9ESnuLfwlLOcU1Hp7uaNPUCEKKx5vw5tfYHKRQRTi
	HDijnJgunluyEd59GNPPe9mjdeWt1q4Oknh442IhPomVw5sSO5USp0EEEOCRzUZehMvteH6XTAV
	qF4Y4R2Zom85O+NBnC9OExOyzvYP6Py8gU2qKFzR0fdJImX2l2nDrBcHBlelUFmZ2kxK6YOvH7u
	sL4xMYznOCiFHUD1MUCOFsa4sNGlv6mKQwkyl/fn0e49npHqQVSprYazhPg1gaKMWiL3RFPjXoM
	y2J8rPfIiocb/sfIlorF4u0qxsC9kzD2Vj/FvBomFOBIj1FtW7MPGWmXTAPKTjgajtP6Kde4v68
	8VO97kOasfDE+WZS/XAFlzJJIQ0IIZWSZ6u/uipaa641cPjYrApyVhiI/0eR/zSGYiRPojoUMlg
	8KSkAGjQW+O/hnbBoQGY5iQWYugnq8JzX7uYCdLoQq724jIJn20ZPU4o+JAycE3AXCrgWmuUan6
	+vVDdI=
X-Received: by 2002:a05:600c:4f0c:b0:485:358b:e80c with SMTP id 5b1f17b1804b1-486f4208becmr8101705e9.0.1773768550459;
        Tue, 17 Mar 2026 10:29:10 -0700 (PDT)
Received: from [192.168.0.100] (188-141-32-125.dynamic.upc.ie. [188.141.32.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f443b77esm4890005e9.15.2026.03.17.10.29.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 10:29:09 -0700 (PDT)
Message-ID: <85fc368a-c765-487e-bd9a-c5dd0376fca8@linaro.org>
Date: Tue, 17 Mar 2026 17:29:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/7] dt-bindings: media: qcom,x1e80100-camss: Add
 simple-mfd compatible
To: Krzysztof Kozlowski <krzk@kernel.org>, Bryan O'Donoghue <bod@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org>
 <20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-1-fdfe984fe941@linaro.org>
 <20260316-glaring-jaybird-from-wonderland-4f8fd6@quoll>
 <94f4fda4-504e-44eb-87f0-e34e557402f8@linaro.org>
 <471895f6-dc60-44d8-84ce-8ba0069110e4@kernel.org>
 <xSErLOaV_RuZ1DggWWH3WGK4mpUp_7CrvmjVU4ZZd33l60PWpjxiSGID27A9hHbdDYmghPXgZONyhiTJ_USPDg==@protonmail.internalid>
 <1671b8ce-cbf9-45ae-947b-f35d174be93e@kernel.org>
 <61fa4409-e19c-49d9-b7fa-dc6f8413c181@kernel.org>
 <2eef8129-8cec-4ef3-9bb1-22e78b004905@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <2eef8129-8cec-4ef3-9bb1-22e78b004905@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-276795-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: AC89D2B0790
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 17/03/2026 16:29, Krzysztof Kozlowski wrote:
>> To my mind that fits the criteria you've set of !depends on parent.
> OK, understood, although I have doubts though, because you have also
> interconnects and iommus only in the parent.
> 
> Regardless of that, even if this fits simple-mfd there is simply no
> benefits of doing that way and your driver should just populate children.

Right so this is a precursor to what I'd like to do with ICP/BPS and IPE 
which will define iommus within themselves.

Not quite ready for RFC yet but:

https://github.com/0xB0D/linux/blob/qcom-laptops-v6.18-rc4-camss-icp-bps-ipe-icp-boots%2Bstats/arch/arm64/boot/dts/qcom/hamoa.dtsi#L5676

Then again if I'm understanding you here, you aren't opposed to 
sub-nodes its the simple-mfd you're skeptical about.

There's nothing stopping us doing platform_register_device() from inside 
of camss to launch these devices ..

---
bod

