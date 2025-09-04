Return-Path: <devicetree+bounces-212881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2B5B43ECA
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:31:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E693166A2B
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04CBC318156;
	Thu,  4 Sep 2025 14:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KJrT+Hd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA2A31E0FB
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756996104; cv=none; b=ABAaqceibH6FntA/zaHn+bPtaiHuiJDgh/t5u+KoDTEm2/vcfIfITZho+xjmIazg6IOlzlZtaGjClgQB64ZlOsKl91EyIKeugOP4ttJTERfVQlxyUNGesjtO6c493ZDrBSk1COdLRVPKmJKwWtCVIriCGdQ+EhOyKdInvNougQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756996104; c=relaxed/simple;
	bh=QTjgMxMpkqLWpIeuMVGtCnInfpv7GD4qqA4XFz+DIsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KPb4Mvwd3ghzp/tJFnWcVw3Ygamrt+Koc7om3SRxfAZMERbg6AsTY4cM5zAnqDrBU5N9bMNbobhrnUKwxeqniV64NYIYfJ4Cvdwji0KFgsfNyVLV/DN8z55uoSX3LdWHzLVo8LFC5AjI8yHXkqhKnetqIxjp+/r6IgonH35Zsdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KJrT+Hd0; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45b83ae1734so7350565e9.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756996101; x=1757600901; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DcDEKKNnQTPrirM2TKss0tLgkg6+UenJjOFVj0kydUE=;
        b=KJrT+Hd0DpngAN2dUpXudbOaUJPr9KJ7KCZuGfLtyAC7stz78Pe21xEW+6VrjXkQqx
         UqfcvkItHcrGdBkmpZ3nwHBzc01kXtle9VIWJU6DkDexB1HHhU4DuQxEtv0q148jTE59
         rTH1KY34QJ4NjtNo6MMC9ii4mmGQoKx89HNacbsbFbTepyrgIaSqVMscztxzEEsbrDP3
         Eq5PfIW4e00pYdSHglC0WQAE+zHczOH9ymvBuVcXvHUmjePxQzo8f5SCF4jAMdK9lm8h
         vilY774VRmXcSqku+vaDrOnZcJiaERXneDyR8OAm+CeOMRHToCkY/y9TvZrR0TpFehjn
         DgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756996101; x=1757600901;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DcDEKKNnQTPrirM2TKss0tLgkg6+UenJjOFVj0kydUE=;
        b=KUKQLMqP/u4eql6IiBvhAgG6C2DebgyjsJbSzlYLdHaMOc0amHdrZpi88EY37CQ/ep
         qo56YS1FLOuJ2s7fjSylnTmrTFwHQkDwDSNe2RkAHJRdZ30WSIivDPy+FlVk2tiZ/Ph3
         5qVTgV9chRtfQMMbKN42ddNPToCFfkrYp8ZMpDYLZMMlY+sR7Ug9mUSyAOPdbX/BR3lB
         iQEZXmnONZ2DbhIA9UR9n+1K793sCJTvAO+KIIk6Ms9zE1uS8gAe3BXaWgoypyB+UNiz
         I6C0g4IW7ILVtvqSN+ix1KDABQA8fyUFIIL6z/UUMMTYi+nlpo7M90viyj3paBhEK8We
         epBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxQ6pjr/8eSNU5zzmOL90C9Px5Hk2ns8+f/ukHRh7EVTGJ/78xr9E54bk2g5QZiuxSPGc0JTTj5WIA@vger.kernel.org
X-Gm-Message-State: AOJu0YwEcCDJKAPEVV4/CGBCIoRzeNFr36NFvj184ZuYt/wQLJBip5y+
	V5aBqTPRauaUq+ubHHDg2azpsyU/ZVb9pdH4y1yA0sbizex74IZib3dAfW3CVP3s0MU=
X-Gm-Gg: ASbGnctcsbP9rVd+vXxmO2sjZOQIT/SYBK1ww7IfJ1/sqcD4U10SRiOhrbdFe6auPO1
	x/s9TlwPd+gkPwdyCddD1c0i6SC4GLjNaBSG4v0ySts0Ukrlb26VuAu0oRxXHADlmrfF2vn3+E9
	meksmPPo4vluR3hdlX9Yh9vVyTwVgOwiRH3+tKDg1BkYPu7p0Z/gy6p0e9ApVYO4vds8NUEMd7u
	OdZWoUNrcZe74uRY3O0t/iF/OTS59KR2Y9wtb4RO4/t7wxRz5NYRogbdSrJzPPiO+muYaVveyAZ
	5pcdcZ0uCuwCNOfS0YEgi7qdLBTkGJlYG0Jg7x6JSHzdTR2vrOCUf6IHwIFROFUpGNE0CP72+x9
	wx6fZIQ39Wv0a0j/DbBbgig6QAm1WkGj4
X-Google-Smtp-Source: AGHT+IFMpG6ZWacwiwSPkZLZJzyjsT25qjvuify+8jgJtfkFvC5YMwDloMKDY1OfWLbskoCZF7jJRw==
X-Received: by 2002:a05:600c:8b23:b0:459:d5d1:d602 with SMTP id 5b1f17b1804b1-45b8553f3ffmr156662065e9.3.1756996101466;
        Thu, 04 Sep 2025 07:28:21 -0700 (PDT)
Received: from [192.168.0.251] ([79.115.63.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45cb61377a7sm79031275e9.13.2025.09.04.07.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 07:28:20 -0700 (PDT)
Message-ID: <3cc48a65-5d08-4469-9ed7-f836a2210702@linaro.org>
Date: Thu, 4 Sep 2025 15:28:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] arm64: dts: exynos: gs101: add cpufreq support
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, willmcvicker@google.com,
 kernel-team@android.com, Will Deacon <will@kernel.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peter Griffin <peter.griffin@linaro.org>
References: <20250903-acpm-dvfs-dt-v3-0-f24059e5cd95@linaro.org>
 <175699523574.4060004.693479596122414416.robh@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <175699523574.4060004.693479596122414416.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/4/25 3:17 PM, Rob Herring (Arm) wrote:
> arch/arm64/boot/dts/exynos/google/gs101.dtsi:10:10: fatal error: dt-bindings/clock/google,gs101-acpm.h: No such file or directory
>    10 | #include <dt-bindings/clock/google,gs101-acpm.h>

That's alright, I described in the cover letter the dependency on the patch
that adds this bindings file. Thanks!
ta

