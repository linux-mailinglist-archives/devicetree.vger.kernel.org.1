Return-Path: <devicetree+bounces-34110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB07838AFC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 10:55:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A2010B25997
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4508C59B6A;
	Tue, 23 Jan 2024 09:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AS2hSVaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CDE5A0E1
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 09:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706003699; cv=none; b=UwOCnZwnlTc+V6UhwEzlybNnCLAbfjBr7ftkbKhjvzLBstbwalLvKj5QP74iwGdsKVvxaHVr0jdutKzbdFnkYYjMwgluc85BWrrPSIigOyt66UTi2og3ytNnYtCG45ntbUIVgGKn1UbnuAl4arCVTegCi+IDmCVFT9BWBjlFpio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706003699; c=relaxed/simple;
	bh=s9+X44rPvtMGKpTNWIFeGkpPDxkX8dmkzY3qoWw0MEg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=JXDG9Onb/Jo2jvdrktU307JwFqdcRH18wjKIaeu4UdRh0Z2+/FqcNvMaS1V3q80/uV+cW0M3SCRYnO9+ougGn3N+aS9dQXAAXzCC/lNR6uPGPkb94X1WPVm1JruOl2xAYPTW2VV6rwRymewJbZE2yYJxQM1FgMsrFoFWKEj4VM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AS2hSVaF; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-337d6d7fbd5so2970988f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 01:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706003696; x=1706608496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Im8GtCvE7H26gkn/fdW7k+g4Cg7EiQCmiyIP3+igXQU=;
        b=AS2hSVaFOPuPZ7iRgo43bn97pX4mFEmUJyRDZzU1Sche6I6ZQ5ma/ABTD+cgxSz8Hz
         joTNvO1OcAkqQDGijJgqQ509dx4LFTuzevvIKjik/fuS+z0Eg/t69tO+uePlTwdkkz4Z
         dEKgXYic56E7Q5Dk6WWyf75kZB0+4xBUHLTfDd2/3iFOj+pfQw+d/LCreqhGiPoJsfU4
         sXQHbUbiPxHhJ6gjoVZtYGgDBzd7tnsAxDNk2YSqm6P+0JONO0/OYY0AQIUIXDDBMBv9
         5P9i772SvcqQIiD5RzBjuTVH2us2QwCv0VbfVMpq+GWzG+S28lulIk3NayWRmLWKCtfE
         XfGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706003696; x=1706608496;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Im8GtCvE7H26gkn/fdW7k+g4Cg7EiQCmiyIP3+igXQU=;
        b=rZwLI6PVoLDEAZTuAJ1/DsKZHpkJ0TvTVTZLpZBLvg3HufvZCZDnmcwnd3xR+v5SIx
         RL4ieCJDzj+b0TYfyuHhhlhlOnAOkczrAaVU9c+zKX8bnuW9heyxqMgEdJ4JvUSuk98N
         UsBMT8Ib0kykMjRLyZtK95XTjMJK7nGcJhcI/yUdq5LnIxtkWT/GAv2j7kKt3gjyVZDZ
         a2hv3xx4/Aye7Nvz1SuAzlti+5vmFVw7AkyMZf7iymVrXKNzrjsc/BI4dpR+3G94iODn
         2SiMlic5QpLZtCr/XpDaC1BFpapaRhzV9uvbDUGDfHGabKXW+Udm2Pd1/rXXYbC36ck+
         Zc1w==
X-Gm-Message-State: AOJu0YwPJJh8D+/+6oxOV049dLGoobpKCrxa/XG+pAzPRl8bRK2IH3Eh
	AOAyP/k8yJHbTMUvyDm2ThWCzG8oDZnEldyzkTNqgy28BnDgu6KE2quAq1iAKhw=
X-Google-Smtp-Source: AGHT+IHw/B87/PaQqzMO5KRdBZBLAqtogyyjUnxTtDRW9gb+I3AZovHZMua5klsp86mAFZRTrAyj7A==
X-Received: by 2002:a05:600c:2183:b0:40d:1d1c:ffaa with SMTP id e3-20020a05600c218300b0040d1d1cffaamr335809wme.169.1706003695716;
        Tue, 23 Jan 2024 01:54:55 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id l34-20020a05600c1d2200b0040e89ade84bsm21649964wms.4.2024.01.23.01.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 01:54:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: mturquette@baylibre.com, sboyd@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
 Varada Pavani <v.pavani@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, alim.akhtar@samsung.com, 
 aswani.reddy@samsung.com, pankaj.dubey@samsung.com
In-Reply-To: <20231219115834.65720-1-v.pavani@samsung.com>
References: <CGME20231219115856epcas5p371abeb4264f60309e597b90954e6d58c@epcas5p3.samsung.com>
 <20231219115834.65720-1-v.pavani@samsung.com>
Subject: Re: (subset) [PATCH 1/2] dt-bindings: clock: Fix spelling mistake
 in 'tesla,fsd-clock.yaml'
Message-Id: <170600369366.35728.6701987973179299907.b4-ty@linaro.org>
Date: Tue, 23 Jan 2024 10:54:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Tue, 19 Dec 2023 17:28:33 +0530, Varada Pavani wrote:
> Fix typo 'inteernal' to 'internal' in 'Documentation/devicetree/
> bindings/clock/tesla,fsd-clock.yaml'.
> 
> 

Applied, thanks!

[1/2] dt-bindings: clock: Fix spelling mistake in 'tesla,fsd-clock.yaml'
      https://git.kernel.org/krzk/linux/c/5b62ea0b85ea8e11945f862fd2eee16ac3a45d4b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


