Return-Path: <devicetree+bounces-197554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5107B09D3A
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:59:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5732A8592D
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 07:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0858A2BD030;
	Fri, 18 Jul 2025 07:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="LF+KcaSa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375C329347C
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825394; cv=none; b=s+f5PH1LaeMS949X40XJAptO7Kny+GLMBEyvOSfoTjTVbbyGoSa04MCn4lWc5/kywMXhKXnWR7+Hj1YCCQ7Y818nuqePO24uymA2OWX7rkytQweLuCt3578f5P0IwPIZ2f5CEE7Ca7EZFOQxTQMbKmES4aqnOYMo3My/3b3i53M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825394; c=relaxed/simple;
	bh=9ojAwmVyzkyjw/JHV/oncADnzoHfQo87GI9xPiP44Ys=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LJUexTKJd7OsK//Qw25zXr4yaEW1zFmy4JivGrLczPU7tjVgVIoAqovvaFgG0IZmMPgRubpa7CEKodHHBTHwoi2w6vF9UvUtSUUzO8dllrGcSRud9YxuiBHzFdYyaBEkL1Igr8rNOIoNlt9DfU4AzRkN813iuvjBMIjfZ0Nx0B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=LF+KcaSa; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a6cdc27438so1251260f8f.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 00:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752825391; x=1753430191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ckV+jtDuK4a1URfzEn0Dotj11VNsvgXwo2gZXZRoU4Y=;
        b=LF+KcaSaky8plZ9KXwProCpxRm0KFClyIE+rAaT6EzT8VnnLRnhBFu52Jza2oxZOzf
         oH4S2uSbC1HGRygvc7VYgRpkT/JNumOBpxsp6R5fdH1gmN+MlcfJaf93K9nI9ijRvucg
         Y580faLAgpUfaJoM6KIZKyWQ7wRvdL70QQTbHU58rsmsIlIUbwr5oyZTpUN9L/xIDpHS
         dComYsGF0qH4Knz5RtkGH/z3H8EbqdHDIffm52sxxjjrR/niY2+iruY1T2JSb48mSFf4
         WXsahzJVuIl5uKRZ7/qkH6g8gYm3xopbweGGWzLcASdOUYTUYjhfLZcmStYue72rxBiL
         h1Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752825391; x=1753430191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ckV+jtDuK4a1URfzEn0Dotj11VNsvgXwo2gZXZRoU4Y=;
        b=ujx59Y/97vEagX4jmEjhPU/+tdOg5eZobqjzLwAYlLaNbTt45KXu4+5r6m/0pt4j9+
         LjOSIdN0OaSyR5kLiBa9e6W+SeWppaVpAkLQBHFmCpQsYMeL6+R/rE64mgOr71feaMFa
         qj/SPplZKzb0Bz7t5Oj9zBs5et/CSfNTyBbQWvgm5jFzodRK0vZTK3caggsOMhfegq63
         /UnC5n16WTwE62TiNGty+RyR/E+GBDMa4MtaNtOzXzx0P207AX9I4T6sCso/kADlVIcL
         f/UJ4bjQZWGZYNAJ06z/fy1p6cC7GITwN8Cc64+T+H7Py03M3PyjLDySJ3e1erA5IL06
         Eg8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVgXZbo0xPvgCNg16nWXt1RHoU89RiHAczww13hq7VDn0xwkQO9+y6pgGq3yuSqT+ksD2SDZ6PqlPsA@vger.kernel.org
X-Gm-Message-State: AOJu0YynPzHGKQ3xefVoLZ0IejPin7Nx1PMLT+e1qkUmV/s8BYfzoMOi
	UxI+CIe3E6tCbmviB9Vfsx6WicQCBYnk2Bn6M5HIC88x6VbwmXoaihrEtO2mX2X+y7I=
X-Gm-Gg: ASbGncstfR4a8VewnRczWl3c73yzBBbn+PGkAUqykMdyHQM6ZPAP5Q42bTJYjVq4ugE
	UMTfjm9+9sG7bkSv/+c+hcq1J8kXqWynO4n2nc0aHYoXv1Q7dt9lH6df+bzZ56fbeCPCnVLz0/5
	jry5nGtb80rTFCuBQMLzRQVehyz5ef5She90gIOkqGSFbw8+MYcV7KFao+uN9pUxRB4o51Td7LR
	RK4bBJ1jHbywD9Ex9gh8rxYTSKHS/pPH1lYvUit/YAAgme4bMWDyKcKUhtGgcTSUM/TmwsG+E1t
	0hivgl859iFcV+XQAbBqh2UioLvxllQXOF5jEZhBAJFrSLLn/VAItGmt8LduF6MS/qsHCx/1hT2
	CndqkvvNhQyLHhHkPcZ02
X-Google-Smtp-Source: AGHT+IHHfzVdB75isJbxOE4IprChk5aDxsZwB9rMG28675J8E1GR5pJQu+Z+X8Cs4aMgYfRSrfTMdw==
X-Received: by 2002:a05:6000:2484:b0:3b5:f8d5:5dba with SMTP id ffacd0b85a97d-3b60e51c90emr6903564f8f.30.1752825391521;
        Fri, 18 Jul 2025 00:56:31 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:be63:a233:df8:a223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b61ca48a23sm1080851f8f.54.2025.07.18.00.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 00:56:30 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: gpio: fsl,qoriq-gpio: Add missing mpc8xxx compatibles
Date: Fri, 18 Jul 2025 09:56:00 +0200
Message-ID: <175282531517.45055.4508674496903135144.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250714202941.3013390-1-robh@kernel.org>
References: <20250714202941.3013390-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 14 Jul 2025 15:29:40 -0500, Rob Herring (Arm) wrote:
> The fsl,mpc8349-gpio, fsl,mpc8572-gpio, and fsl,mpc8610-gpio compatibles
> are already documented in fsl,qoriq-gpio.yaml. Add the additional
> compatibles that use fsl,mpc8349-gpio as a fallback. With that,
> the 8xxx_gpio.txt binding document is redundant and can be removed.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: fsl,qoriq-gpio: Add missing mpc8xxx compatibles
      https://git.kernel.org/brgl/linux/c/1a17da5b6bcab1d46aeb83a3e6f3904b1b1940a2

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

