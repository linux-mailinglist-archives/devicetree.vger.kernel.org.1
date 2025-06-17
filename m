Return-Path: <devicetree+bounces-186568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B6720ADC5E7
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:14:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 241441892A41
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2849291C15;
	Tue, 17 Jun 2025 09:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="YCEjUtBY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD455290BCD
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750151664; cv=none; b=G9k2Vp3Bce0bRnwodyeh9DDipsv8jwY+Y2ivTdG7Sj6UgkcXZ7AJKz6yyYjk6Rv7hJYu18jAIfWZKkEYrYPFr5fE6gHwgUTK7PBZzpt+ypJ61SGQcLUFfPdPRVzSiWtxiKqrmsMH4dGVGwLjr/l1OIwYnyK4syeR2OZieAEnh2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750151664; c=relaxed/simple;
	bh=Pg+a11153qJ1ibrfg8vK0qJ81vAzJN95tmjWPPAy6Iw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qf4M0R3KlAEZ6fPs/ikvhfaeXdOmIV/IcFgkV5VXokkAjAv695hz35h6C/1Sa83y6KbunZh7hBcEtBNS5IcaB8pwGqSnZF5qeF89xEn7uEt+alNNJCITpfbiXzCZQu9+9Sy+KmiPs75bSnplSOYxCwMRkgr7+7BTGAJh4vYHu74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=YCEjUtBY; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a54700a463so408937f8f.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750151660; x=1750756460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UnaoVN6uaaPExRjDgZo8b3KkCScwP4IUmjW/6H1GBX0=;
        b=YCEjUtBYQRSjsyyi0+bN2bxbBRgBocCrj6p65LOMSZlCyBry9mFsAUTfWdC0J5ZwhM
         p/R0L/eAc8n1gkb6fFX9Xy3LtYq9FRLjjbHWZzLp5no9x0PO2AxT2bVsmL0gr9yx4DdW
         T3oKYA/dtUYnIdz21a4MCHuuywHr04pDvUHFnAWo76VAtDKETVzcLfaFJtJT/vrLNuOT
         IsmXdOHtHt1AlDsWrC4grYd6OZ55mGGh17mujWWeO2xVmza00jDeh1lU+Y8kAmV8iSr3
         BJCwt5YUl3NaXlRlYhSn/KunIZt/bsJNBcStNtxsj6/NfQPf+A8fBx2nQ9kjYl1askgA
         hGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750151660; x=1750756460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UnaoVN6uaaPExRjDgZo8b3KkCScwP4IUmjW/6H1GBX0=;
        b=MiKVvShw6FAsPNj/3zouhxgKcWfQBFfazbMPpt8rIQsJkeX4sKaaFsb1tnXRMHO0Z8
         q60+BwzfxA3vsQ4WjmBPjhFAHKzjz2mnlwH6Vr846/A+X6V3TIKwpgjI0TIjlEkNDk1S
         ZHj/zoVy1qHS4IOlWR8de2EyShrIHkujh/QfVmzZNHjZfKZvfv16X3F9wOKMCGDg/v4a
         REnJv35qBikW+o45x7f/dz+0FggwJWTqQoCYUJGjxi26GLM3XALXkKZ1J8KHaKMZkvpu
         v1rq8+tBmsMrj2Sx9f3/nvpjWifdEwis1bMUO4b5+OtNvwkXQ55I+kfHfCsDWPbcFHAE
         77LA==
X-Forwarded-Encrypted: i=1; AJvYcCWHV2j+MdCPV5OKMHAt85NWLgvX09MHMV3zzzxj8iv0XlKZf2tnXMgpzvVoh4cSraOpMAE6u1WFv/KJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+lAHZlK5Jfjjv0v41jTG4uaxyDMq7NecstqiaWP/lz9De2Ckm
	pajFJEnrIu1q+pSneg8srfwF67l7ER+Ot8aCEWwVmAwBAGbvpD1niE+hxBlaqPciyiw=
X-Gm-Gg: ASbGncvh4C9F2xw4oYROER57P6a21AN8+wCrqrj/04LRsAUFBr7MPJmB+MbmD5W+yIR
	9I2horZJRDUaNx2J04640NQio2rTwmTAUXKxmTTockRIB/cSxZL0gpL1h2uD9D4bIZYVlO2m2tU
	Fy7GqB8boBK/0dh9mC/itQGDqwDS5BuYkqe8jGhXvKUMNjsKuJMIWkVSeTgliiNaI9ISU48qIr2
	b/Q5RSI3MXTvzSeRZgvJtxphcX/MmQj9jAJoaEjF6qt7yvb4s6m1sjNOVRWx7HpuaP7CA9JDxh3
	Gl5W7RZL09pvKQbO2Yx7rSvdCWDzewCwwI9/EHrXPTuEpxwte9+TKjqy91B8N1g=
X-Google-Smtp-Source: AGHT+IHTn2wDMsbvMniANLwl39rjbgUv/TbrwZjrJk9B4M+SEDhL4V7ekAYBvqmllDgC3dCpG6O08g==
X-Received: by 2002:a05:6000:2504:b0:3a4:e624:4ec9 with SMTP id ffacd0b85a97d-3a572384087mr10329583f8f.3.1750151660151;
        Tue, 17 Jun 2025 02:14:20 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:90df:ded7:9cbf:4074])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a633ddsm13280685f8f.26.2025.06.17.02.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 02:14:19 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: linux-kernel@vger.kernel.org,
	monstr@monstr.eu,
	git@xilinx.com,
	Michal Simek <michal.simek@amd.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Moritz Fischer <mdf@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
	Srinivas Neeli <srinivas.neeli@amd.com>,
	Tom Rix <trix@redhat.com>,
	Wu Hao <hao.wu@intel.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	"open list:FPGA MANAGER FRAMEWORK" <linux-fpga@vger.kernel.org>,
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v3] dt-bindings: gpio: gpio-xilinx: Mark clocks as required property
Date: Tue, 17 Jun 2025 11:14:16 +0200
Message-ID: <175015165194.21779.15497760973651030426.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <94151cfbcff5e4ae05894981c7e398b605d4b00a.1750059796.git.michal.simek@amd.com>
References: <94151cfbcff5e4ae05894981c7e398b605d4b00a.1750059796.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 16 Jun 2025 09:43:18 +0200, Michal Simek wrote:
> On Microblaze platforms there is no need to handle clocks because the
> system is starting with clocks enabled (can be described via fixed clock
> node or clock-frequency property or not described at all).
> With using soft IPs with SOC platforms there is mandatory to handle clocks
> as is explained in commit 60dbdc6e08d6 ("dt-bindings: net: emaclite: Add
> clock support").
> That's why make clock as required in dt binding because it is present in
> both configurations and should be described even there is no way how to
> handle it on Microblaze systems.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: gpio-xilinx: Mark clocks as required property
      https://git.kernel.org/brgl/linux/c/d03b53c9139352b744ed007bf562bd35517bacff

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

