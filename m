Return-Path: <devicetree+bounces-209322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D56B359B5
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 12:00:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 020077A5696
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 09:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7923126DB;
	Tue, 26 Aug 2025 09:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="xUaOVQju"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1AF3002B4
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756202351; cv=none; b=fMOT6A20CfAs0uCvY7fWGkkcGDqq6g92cn2fedqCttIsGMyv41duK/UmOMBtOgP4zAzeSRS9szLN5PwwiIwOJsARsH3xduA5f+YbWruncGnfBh+EumVpuozipXrok6+n4dr+1yPH3fPo2WP2B+wD0qFZ7dtC5zMpBqAMvOwl9X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756202351; c=relaxed/simple;
	bh=TLQe8HKqVprzOWSS+QrcEEJ6qsTop6HAIBHPmWLduOw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Vjb4LZiD6KDLR+tMkhqZ8VNJiyw4PRVZn2sSmsCwo5WRDEvgr/KgZERrtOl1GqTvpIVGk2mUPuYDvNcgRyPaaOASz9eUzDhwnFrkDHtMFiBgo242+oOS480rjOFfToxXUmLfKDgKcbR4ggSk/ujyMbtFg/HnEvz0LYNck27anGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=xUaOVQju; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45a1b066b5eso28600405e9.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 02:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756202348; x=1756807148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l+Y0JVb+zyxoD2ZTloOvpkOul6QpmpNVbYqGaduRqGk=;
        b=xUaOVQjuS0XGQY+NggXHewaAIjKOx14olU/RNXG73mRF4WSM03fmRopl4J2XuYuOh3
         +mEgXvZUSMz50uVGVAfB35hfs1tzJdZYdN4aPGPacB+r4D79aNjpJTxxB1U6nRNurJ1t
         7e+fXNu1B/NR4T8X+I0wXChKM4Ztm1LwqSURefHJnnzAkS2uPeg+jh7xdYRuLOArv/l1
         S8CNeGEy5I5Jvhf3m4bFomHwnQzYZj4L538SZ0j35MSnnOj1AKKXpNv6Y38b61aW30PG
         2nVcsrjNdKxb8Vf/u43oj0UhnYc+49tgAx087kOPn817ho/77+5Di5i2wvORoYfPimQ3
         CzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756202348; x=1756807148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l+Y0JVb+zyxoD2ZTloOvpkOul6QpmpNVbYqGaduRqGk=;
        b=njLzpSDQinm8beeQH8IJtlPB25+Pyp+akqOjSk/0QWppKNzrfCWBYjUYgy6O5MBuEH
         ng1DTl4aCBBsph3BCBpeP2dNGE1Evlg8sUl5d9Hc7hqqGxqWWCBbhgBbjqfHmL3Tyziz
         TPhEWbIxr9xFS5ons2Kbz1RK32v+VRTzw/M511Hfuin56xAeuWZdUYfGfqFVrsa1sCAp
         B+Atzf5HnEEUTgbKZvEu+pxgNNS2N/05ddNp72vMvmpqbKwWwJmNnikqrha9DY4MPhN1
         /KXS1V9q4vpyvTy2aoY8TD+9Ts/q+QmXTyMME8BRvaU0T5hCO+Fn03FV0OhJwdh+jpgG
         wsjQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5YrX2g1orEQsp9ebRD0HJB4zLnruXa/8oWy5ysZu0rbJXlXutU1q5LcOTV96k3yLgduYP74qO2KHo@vger.kernel.org
X-Gm-Message-State: AOJu0YwVxv/N7nfbq8CkiVeGcBjYKE1fxt28S+4GwNrSW3FiKU1oXtTs
	FVNnHJrQK4kx1nMAN42B0+kIB3nbSqln/Val/g/GLF9XQYHMm9/1ig2kOEZcdZJvBAE=
X-Gm-Gg: ASbGncthHmjh0Vve1MNYn3Z0EEeDwUwsWJzLUlBHRJgrW6/KXvc7jNuyprW8ZGo3wJW
	8GKxLEIgULpwxSeDh+26qwJi0XYGxKPEBbc0p96Ubs1H4ZeIMGTMa2I4VATVkx9avTULzxf138K
	e+utvVuWEgoh1KfriCUhIcqcv5FjwpFycAaiA1ie2MBSf2WPAOmJUynzRl6EyUG1aLJAffkkYCs
	2lIsuh/Ca4AmmzoyrI9a358iK/+Jc3GrUg2lnKUQBxC5+VccIwcKFODYwpALCzNKuW2p1Ggi8Y4
	qXYGZzN+la/2Hy32QrCloEnxJks7o/gzyufCJDDgrN+DHuqtezJbAgrWFrMkpUiBonbCEtii4HI
	PFwpHjqJulyH7rvRL3ZzcWrH5ZopPGPnz6M2VNEkkiHUv1g==
X-Google-Smtp-Source: AGHT+IHBhKg7IjKrhhcVMyL/r57y1ugEvw4mEz2iVwUNncB45EjnSI4PTdqiXHRrUmtm1gPJ4N/MCQ==
X-Received: by 2002:a05:600c:1548:b0:459:d709:e5b0 with SMTP id 5b1f17b1804b1-45b5178e893mr140193745e9.5.1756202348058;
        Tue, 26 Aug 2025 02:59:08 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:fed4:79fc:9440:6629])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6300da81sm60418635e9.23.2025.08.26.02.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 02:59:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Dong Aisheng <aisheng.dong@nxp.com>,
	Jacky Bai <ping.bai@nxp.com>,
	NXP S32 Linux Team <s32@nxp.com>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 1/1] dt-bindings: gpio: Move fsl,mxs-pinctrl.txt into gpio-mxs.yaml
Date: Tue, 26 Aug 2025 11:59:05 +0200
Message-ID: <175620234226.21143.1718612785479357856.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250820164946.3782702-1-Frank.Li@nxp.com>
References: <20250820164946.3782702-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Wed, 20 Aug 2025 12:49:45 -0400, Frank Li wrote:
> Move mxs-pinctrl part into gpio-mxs.yaml and add pinctrl examples to fix
> below CHECK_DTB warning:
> 
> arch/arm/boot/dts/nxp/mxs/imx28-xea.dtb: pinctrl@80018000 (fsl,imx28-pinctrl):
>    'auart0-2pins@0', 'auart0@0',  ... 'usb1@1' do not match any of the regexes: 'gpio@[0-9]+$', 'pinctrl-[0-9]+'
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: Move fsl,mxs-pinctrl.txt into gpio-mxs.yaml
      https://git.kernel.org/brgl/linux/c/66edbb1e32eede16b261a90014451d67119fc875

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

