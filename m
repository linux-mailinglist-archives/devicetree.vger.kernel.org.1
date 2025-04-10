Return-Path: <devicetree+bounces-165145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF69A83932
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 08:28:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1859219E204C
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 06:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811C02036EC;
	Thu, 10 Apr 2025 06:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="diOq5bPQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B58C18FC9D
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 06:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744266441; cv=none; b=gSOsgL+bNLIGVtI6IGsfZlV5oWWvp9uHR/v5zUqR6odXByocwPEqVqJnKgBv+V4Vt07Y24VyV9hIPa80ZwvPS9j2egMyNmnqzExG76+JergN0OGuPEbJnrbIkJO3YqaWsST64YIZTu9gDS7orf0LQQC2eYIgZvn0aOgaqPnMOQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744266441; c=relaxed/simple;
	bh=DbAUYbu5Va2xJQiy7VvKkV4e/4jPiHlqCkXhEFbYoL0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=taPdmm9u+TSY+nsWwTVzvZW+J02Khk+q8a4R8bPWetbwyZgsEzrIq8xnvFQNOAjkuTT7IJInBQlbPV/pTJy2UhanIikCNB4RCBAsyy322bNsTmVkGz03DaFQ74pCEcQNWxm8gttfztJYTDUo72iCwGrtlzlsQwYjYSBS+LnzWB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=diOq5bPQ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43d64e6c83eso465815e9.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 23:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744266438; x=1744871238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VvT2Gppf3uxd/yxNywWCnYiGlORidfrwioHAQ0OTxgU=;
        b=diOq5bPQ41tWsiC7hQG9OTkhh5pHHEMaAnADGSF/ewK7twX/K/8M4iV+MSyqXKM7fd
         UESkRuyOxvcKWybN6KtU9tR309fUL53knl4hJ5oDUrpdKr8JWPLqIj3iSL/ChhbV13Xl
         vFoFpj4m+sut8p8h6HmV+EYnnS5nDvuSp+iRZpHPUog0pooI/ZJdfgcwW4HCud+y5q6x
         Vv0/3Iz6/gZoO87oUhU1eUd14DfdSRcEup/Sj67qpeEDbI8B/W599isJosvoAgul0wqm
         ksRfFe9iNLvGKGUg3pYFCJoLqws7QFpIjz0bFfqT7Q2vyYtKv66Qgz1CvfozWqHYL5WF
         V3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744266438; x=1744871238;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VvT2Gppf3uxd/yxNywWCnYiGlORidfrwioHAQ0OTxgU=;
        b=bmUenAKCYjI//ZLyWgve3of+tFGozhMZYXH9Coig4eSNEd+WHRDRrBcMY90vI3FJ0d
         MAlv73IiHxmXUpLqnbAN1YYx0+LZOBW6IRFqxNE0kuIC38uyI5P+9zayflljIFVZk9Nu
         /NuCHe7o923VJTWPZAWcT3wMxwptO8ltmsm0+rQVrollDPlLpI3dM/fubh8QyTB3x/E7
         bJnqOQjCQrvLrEcbkDxtgrXf/eOMVZ9d14feNdT2PYDUr8vjK1E2CtG4rVffKEoHRDpB
         cEWTw36E6NMXtkUfUZBPwOJ0B20emvNYEb7aysw3BaXwemnolCLNmI7c50iVZW2Mnk7x
         lzyw==
X-Forwarded-Encrypted: i=1; AJvYcCW/xygN/OBLcz7LrvDQEH3gPCpoxUm22zHO5idlAYeVKQnKp3caz3noZ1P4ymqy7VEwyfPc5shNv5pN@vger.kernel.org
X-Gm-Message-State: AOJu0YzC15o9zr2rEu4jRf5/M24jJqcjWOk9m9iC7ia6sQ8qssYxdj4q
	pJe7/rgX8kBpdAHtvMk5uRAl/mK4f6jzGszmlYAm/ckX84Byt7rMuWJcoFggBdA=
X-Gm-Gg: ASbGncsOGgHATrey3mf4KWv4Quuzw0N/TR9kieMFiOhchTHqYwe3dh4pSys5Y8xp13c
	Knd/LivH1vNE7hw85sfwgETShJVlREj+FLSvC5k+1J1PAD+qnbkp4Nq+Ja3OFzeTPCFQnTuYEU4
	dLsTrTSlsugiWfj48LGGTdKqAgZcrn7kWfxu5giImVaHrIG94I+9kg4vqAwHeeEqe+mYRGkrG4s
	y4WVXXw0hxQCYECCensicmwMkdhPdngkSp36UDPb5Zi8BPLxNBBOYmFsRzwR7md/BmK7e52iQg+
	KpUiDG1AGSqtN9NxTsgYrVrHZAfJmPp/euFwxgxpaVlSW9X63ycgCIgkk5w=
X-Google-Smtp-Source: AGHT+IFVRI+eHYzRePN86bPROJmtppmFeI/4qAEBjgxUHImff0Q+A3BjR9d8MWHmWJZEinQXV/yX6g==
X-Received: by 2002:a05:600c:c87:b0:439:94f8:fc7b with SMTP id 5b1f17b1804b1-43f1eae40f4mr18061085e9.0.1744266437939;
        Wed, 09 Apr 2025 23:27:17 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f233c8219sm39520695e9.21.2025.04.09.23.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 23:27:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
In-Reply-To: <20250409-s2mpg10-v4-3-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
 <20250409-s2mpg10-v4-3-d66d5f39b6bf@linaro.org>
Subject: Re: (subset) [PATCH v4 03/32] dt-bindings: firmware:
 google,gs101-acpm-ipc: add PMIC child node
Message-Id: <174426643614.15856.3555538804191184531.b4-ty@linaro.org>
Date: Thu, 10 Apr 2025 08:27:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2


On Wed, 09 Apr 2025 21:37:24 +0100, André Draszik wrote:
> The PMIC is supposed to be a child of ACPM, add it here to describe the
> connection.
> 
> 

Applied, thanks!

[03/32] dt-bindings: firmware: google,gs101-acpm-ipc: add PMIC child node
        https://git.kernel.org/krzk/linux/c/935e5bd95df2c79404630a691caf42c3d7bc3a93

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


