Return-Path: <devicetree+bounces-137475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB27BA09280
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7355A188DCD7
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F98920E6F9;
	Fri, 10 Jan 2025 13:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x/MHSryn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96824400
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736517045; cv=none; b=B8fEYYsJ4fA1vixFWPWrR8TAar1P3U/gLe8ZgGDyD3UcwzbauJRSyvaaL9BS/wM34bpcwX2UQ8ecdUwuYfV6lXCPhSLA44INoDxE14cAgOyDpZIKb5iDSRHuNcAnpFognDC3U4HTa9MtvLTnGUkYDX+VmGJuPxT2petOTl1puLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736517045; c=relaxed/simple;
	bh=ciJAEmo8xS1YodmCHYYwU3P0gYxHOe/kHbBoWXH+FFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cQpJCV4WHAa6UL/1Fd4tn8NSQDdW+s+xkQL+BDYg84zjyYqh2N2S7qtBI/94xR78SNrDtrPA9TcbbO0s1isFsCwreGAp98GAwL1/MeUtTMKIAhTRao3e8r84pv4deCfowRbRihLnh03tXkN0YsS3/ntQ9rhxGQP89oBLrDPKIfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x/MHSryn; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862d16b4f5so1323108f8f.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736517042; x=1737121842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+KDUqAsdGT0AfuSaRdiWzIkDzcUh2fPCqtIyZmpfwLg=;
        b=x/MHSrynt13XPwt5cR6U2vDjhnPDRvjhJU3njGCW0HypqxMCRAldIYAnC7Im9gv3dV
         ElqKmmPe76cCcAjmNxQwtQ9D2HfkH3vHoFQ5KPx68UdnCB7E0kvSh/7h68JgineZTIT/
         e3UKu9wpn/CWUXx+pejAeFFrZt6d+pYqLvDnGv4U+2aOmkWa+PHUukY9GVyBm0QfPN0/
         DNU9rjOf0DKp/0rIk1QWA6A+rM4VYAmPsXEd834rWyHJpwJCkt/pLwaTsEJEuxw0kad7
         avNTh+877+90GmCX/1Mbcb0V0WCWdrq6B1AWlkJY2hpt7ft3cP8RksbZG2OVMpysJ3V8
         CYYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736517042; x=1737121842;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+KDUqAsdGT0AfuSaRdiWzIkDzcUh2fPCqtIyZmpfwLg=;
        b=MDYP5GY7aHDP+VtIQp0VBvfuHq9ndTSzzNklYr9bjX4clqisPv0UiJQT4jdbzIPxRg
         wjWgOmvDC+MDuPr65+e7OVRkEIDSu/WiMv/Lg4YlgN0gcssVwDUhAR6U/Ntf0KxNmmGq
         F7OCWpLM+f5d3szH/A8sTZvbJF18GWsL4Xz4WXUhcYU02Di6sCnTcrVemzHnhxaAdQt9
         QoxaNrkB5+pKneBrrwLxtlVR2hkedrvzN9dtg1MqclfD/2LN8AYt6bK/IDAfVrVuMMC9
         Tg3sRz2X1hrgjtQXHSAXbJnxt2tmIItmjBnQOk63iC0kwUrGxOWgWdE89UB0ukl3xf98
         X9Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVTk2Otfg8P0vi4Ej58TXADiFuwpGmtStix6w1fouoNskJ9OJUXFAtOAI/+Fcht+8M68De9pwntjwgh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5lIMmO3LWF9DfNHP8nvsFzRdbUUQPqgut+WBS5FEztEnEa6We
	TP6Dcp2revcVgszg9YsyqCxm/R0n0elXon4UKxhZEnTPBBcDPKq6LEnTbfSShUU=
X-Gm-Gg: ASbGncs5Cf741sX0zmDa9vCLwP2CXI/3peqTqylN6IDYuVgfVYdWAJjEurAkSHTxRGU
	lzzxklXy4bI6XYNLu425Yk2FWLu5FtkLK/qiUcebcYWDkeQaGwXU3bGZVpTLADp/lbm8bzWnjmy
	ikDCeM26Yokp9+2IGVvn2JHRNP0BAqJlgJc1n6+lYh6dpfrskAxl6jJCIDto30o3kLAMpH2W+o1
	7CYHT/M+6d/41/rpQHhFZpQx9t7gFvN1QrOMm/VFNK6myB5NN8W3m6UE1//04L2e9KBsw==
X-Google-Smtp-Source: AGHT+IEgRpwnL9+2BYjn1UjqK+ab40fSxMxuHo8PKVl2h8lrY3ULkx3M7dtkhojEPsThVIBzRXZZGg==
X-Received: by 2002:a05:6000:2a9:b0:38a:88bc:aea6 with SMTP id ffacd0b85a97d-38a8b0b816dmr6511542f8f.6.1736517042032;
        Fri, 10 Jan 2025 05:50:42 -0800 (PST)
Received: from [192.168.0.43] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e9e03f62sm52506215e9.22.2025.01.10.05.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 05:50:41 -0800 (PST)
Message-ID: <cc1f4718-2553-4c49-b1c8-6f6f3bbeeb56@linaro.org>
Date: Fri, 10 Jan 2025 13:50:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 00/16] media: qcom: camss: Add sm8550 support
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org,
 hverkuil@xs4all.nl
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20250108143733.2761200-1-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250108143733.2761200-1-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/01/2025 14:37, Depeng Shao wrote:
> v8:
> - Add correct version number for each patch - Krzysztof, Hans, Bryan
> - Correct the copyright in patches [15/16] and [16/16]
> - Link to v7: https://lore.kernel.org/all/20241225133523.4034820-1-quic_depengs@quicinc.com/
Patch #9 doesn't apply to media.git/next

git remote add media git://linuxtv.org/media.git
git fetch media

git checkout -b media-next-25-10-01-camss-8550 media/next

b4 shazam 20250108143733.2761200-1-quic_depengs@quicinc.com 

Grabbing thread from 
lore.kernel.org/all/20250108143733.2761200-1-quic_depengs@quicinc.com/t.mbox.gz
Checking for newer revisions
Grabbing search results from lore.kernel.org
Analyzing 17 messages in the thread
Analyzing 260 code-review messages
Checking attestation on all messages, may take a moment...
---
   ✓ [PATCH v8 1/16] media: qcom: camss: csiphy-3ph: Fix trivial 
indentation fault in defines
   ✓ [PATCH v8 2/16] media: qcom: camss: csiphy-3ph: Remove redundant 
PHY init sequence control loop
   ✓ [PATCH v8 3/16] media: qcom: camss: csiphy-3ph: Rename struct
   ✓ [PATCH v8 4/16] media: qcom: camss: csiphy: Add an init callback to 
CSI PHY devices
   ✓ [PATCH v8 5/16] media: qcom: camss: csiphy-3ph: Move CSIPHY 
variables to data field inside csiphy struct
   ✓ [PATCH v8 6/16] media: qcom: camss: csiphy-3ph: Use an offset 
variable to find common control regs
   ✓ [PATCH v8 7/16] media: qcom: camss: csid: Move common code into 
csid core
   ✓ [PATCH v8 8/16] media: qcom: camss: vfe: Move common code into vfe core
   ✓ [PATCH v8 9/16] media: qcom: camss: Add callback API for RUP update 
and buf done
   ✓ [PATCH v8 10/16] media: qcom: camss: Add default case in 
vfe_src_pad_code
   ✓ [PATCH v8 11/16] media: qcom: camss: csid: Only add TPG v4l2 ctrl 
if TPG hardware is available
   ✓ [PATCH v8 12/16] dt-bindings: media: camss: Add qcom,sm8550-camss 
binding
   ✓ [PATCH v8 13/16] media: qcom: camss: Add sm8550 compatible
   ✓ [PATCH v8 14/16] media: qcom: camss: csiphy-3ph: Add Gen2 v2.1.2 
two-phase MIPI CSI-2 DPHY support
   ✓ [PATCH v8 15/16] media: qcom: camss: Add CSID 780 support
   ✓ [PATCH v8 16/16] media: qcom: camss: Add support for VFE 780
   ---
   ✓ Signed: DKIM/quicinc.com
---
Total patches: 16
---
  Base: using specified base-commit 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
Applying: media: qcom: camss: csiphy-3ph: Fix trivial indentation fault 
in defines
Applying: media: qcom: camss: csiphy-3ph: Remove redundant PHY init 
sequence control loop
Applying: media: qcom: camss: csiphy-3ph: Rename struct
Applying: media: qcom: camss: csiphy: Add an init callback to CSI PHY 
devices
Applying: media: qcom: camss: csiphy-3ph: Move CSIPHY variables to data 
field inside csiphy struct
Applying: media: qcom: camss: csiphy-3ph: Use an offset variable to find 
common control regs
Applying: media: qcom: camss: csid: Move common code into csid core
Applying: media: qcom: camss: vfe: Move common code into vfe core
Applying: media: qcom: camss: Add callback API for RUP update and buf done
Patch failed at 0009 media: qcom: camss: Add callback API for RUP update 
and buf done
error: patch failed: drivers/media/platform/qcom/camss/camss.c:2454


