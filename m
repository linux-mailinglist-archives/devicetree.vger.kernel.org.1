Return-Path: <devicetree+bounces-233762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 596B9C253E5
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:23:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F05818899E0
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434E232720D;
	Fri, 31 Oct 2025 13:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y+1qLC4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3BD1B142D
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 13:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761916906; cv=none; b=kwTcwgSOGkL4pHuRd316m+vE6TJXduI3i/boPL5zebEBIRnFqz0/2o0n+gEZ4rmACWZr1yccwJ4LWB2S7ua+O2Jt+6oOVfDSd+iEzqSLHmqoqLPoxV2G9b6YR3U9sBqxosWByj/HwIPvvbB1HNaYDiXG8/s8fb5Urm3hj8Nep10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761916906; c=relaxed/simple;
	bh=9F8gqc4rpAW0lwHjC+yXvFyXO3F6d/9S0upqMfbC7T4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=f0j3060iU+3hW8dr5oYcFRSWCpgG7mwn87VEIR+sn9VeoVNKoebg9z5XBb50QkDJAbNZBdTEBwuuMovfbL6oAKpijGfZcxz2tYtvYm8WwpHXOJQ2YZz8AZJh4PXLcV2g5WBih5PnNn+p046Dq8MXlCPRF7pmSJWf5uRij6OxH2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y+1qLC4K; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b3f5a6e114dso39924266b.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 06:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761916903; x=1762521703; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5rcO1WrShaPm5De8Wjzz/fE42huUhjGMGtrFHb04y+8=;
        b=Y+1qLC4KK9MQxsAJIOOGOzedunVHVCZwCJYjCtmh5fhXGS598PmyI0MshNA2B36HjZ
         tvL6kJcLbFNpoDIDtfv3cQJXwZ6+4Re2wyh/DqO/pkZ/iFzhpd5//H0HYS1fpRIhIgl0
         +dZCpHxR6TZQmfULI6J59oPZAJ3Dq8yY4AaTvyNO+moAU48sGSCr5Hg2iYRdRDfqxGSQ
         R5OTPaRPI4UarfCZ5oQsElBLOQv5RjPc20n6F2AfqLf1eagxY7kLmxv9BLXt0W5/QBAK
         l8qnsYULTCabapLhaiWj1dLGiCuJcXJdw7hX37AekWk6ozmbA8LMzKbbSwECbwAAFEX0
         BeYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761916903; x=1762521703;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5rcO1WrShaPm5De8Wjzz/fE42huUhjGMGtrFHb04y+8=;
        b=F+zAciIdcCK0CPVTaaxub20OUwGmrX3uyydME8Dfc36aAZHxkg3+5r0pt9a0jUWNWG
         +QF++VCDYVBnjPIXfd9vUOb++P2O8ZuxsxRjF3eEOxCwBcyRu7p3CEvh7Q5rh4EENniR
         cK7vy6HP6HQqzHd9fYsSJZeWzP+UOHUmOGmIIV0VAkj1wdh2xqWHB8UZUtvsdkgd/Squ
         h1axEbQVywuQvkQOiHsPE8uEt8LvlEFvQZaVDc91zQF4chQghHnmj/VgqgQJi0M8QojJ
         j7VpHxeQgZdMK04MLaOaypSyKSBllCEe37xmzmN4vqEtNLON928TzLA1wrtlsDBDYIiN
         lI8w==
X-Forwarded-Encrypted: i=1; AJvYcCUCR6tBGVBelreFlokn00NU+3BbEt8oarIk4Dqfa0XDORYFqrV8ijOn60O5SQwUuMf8O7w8vlFnV61+@vger.kernel.org
X-Gm-Message-State: AOJu0YxjyH3MLNtiQ90ma6c+jPPqYM3/FSXU4EQmg/C/E5RNX+jKQ3QF
	w1BxtskYqbXSVI+TjZQqqmDq63WFs1Hea+UCdsi3+XHO2d2+qtkRoag/DLVOAF45HOo=
X-Gm-Gg: ASbGncubXWfccZktzyO3TnDnD7fy4Sjpex7efiKO7MSqUUIOm74LS5zKNdE646lBnfN
	JD0WmyqjdCRBFG8XsdP79QrrxomLleHPT42oOyw3O6LB9Vm2r1xCTeqWYSyqCHIk/wrbHt//DQy
	8dHRaX4yY1BoziqaU1BMzZv4N1NihhQvte9HG+ptTmMTEe5LkvkpaglmrxDZ6MyNSdmEEVmndNb
	gyu2QuTd4IPDumCkDSO9xeE9wskshThjJuXag3QEVmSVh6SgerTMjKdOHJig4j2R2SKbJkIlfap
	19DBmxRUjJ8W+9HcFTwN9HmHQmFs+uars0Aiso8oXydmTYAV1QLIB7Iuv2AXLAE1MrYmRsIeOnK
	P1m3rEf5EyzvpoCwpdyR9NenuTrQFak6pX0iRhl0QQZcwwmd0o+ccQ8wm4bs7l0vmPM4B1V3PlI
	txd3HPFWD+4g2mHkQloQWcCrCwVc0=
X-Google-Smtp-Source: AGHT+IHrjxX6puaY6w2PZtpMXH0moreOfvriHk3Y/1virPJB7joYYP7PIoZd61/ZbxsYgldtkurG8Q==
X-Received: by 2002:a17:906:fd8a:b0:b6d:5106:86d2 with SMTP id a640c23a62f3a-b70708a3f30mr208643866b.8.1761916902672;
        Fri, 31 Oct 2025 06:21:42 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077975cfesm174858266b.4.2025.10.31.06.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 06:21:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Aaron Kling <webgeek1234@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org
In-Reply-To: <20251027-tegra186-icc-p2-v4-0-e4e4f57e2103@gmail.com>
References: <20251027-tegra186-icc-p2-v4-0-e4e4f57e2103@gmail.com>
Subject: Re: [PATCH v4 0/5] memory: tegra: Support EMC dfs on
 Tegra186/Tegra194
Message-Id: <176191690156.74562.382156724041473426.b4-ty@linaro.org>
Date: Fri, 31 Oct 2025 14:21:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Mon, 27 Oct 2025 13:55:14 -0500, Aaron Kling wrote:
> This series borrows the concept used on Tegra234 to scale EMC based on
> CPU frequency and applies it to Tegra186 and Tegra194. Except that the
> bpmp on those archs does not support bandwidth manager, so the scaling
> iteself is handled similar to how Tegra124 currently works.
> 
> 

Applied, thanks!

[1/5] dt-bindings: memory: tegra186-mc: Add dummy client IDs for Tegra186
      https://git.kernel.org/krzk/linux-mem-ctrl/c/c15b28b1b3befb7ebf1c01c42623c3cede4cf9d1
[2/5] dt-bindings: memory: tegra194-mc: Add dummy client IDs for Tegra194
      https://git.kernel.org/krzk/linux-mem-ctrl/c/2aad3b30a7df710ff281d12a81bf84aa4bd98500
[3/5] memory: tegra186-emc: Support non-bpmp icc scaling
      https://git.kernel.org/krzk/linux-mem-ctrl/c/1004666bc437e234910c660f9d03a71ad44c027a
[4/5] memory: tegra186: Support icc scaling
      https://git.kernel.org/krzk/linux-mem-ctrl/c/dd6814eefbe524e433e1dbc25229c9338cb50027
[5/5] memory: tegra194: Support icc scaling
      https://git.kernel.org/krzk/linux-mem-ctrl/c/c9e39dd13ad6650b46ff3288ed33130a8bc771f8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


