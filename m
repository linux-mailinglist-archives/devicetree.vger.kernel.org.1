Return-Path: <devicetree+bounces-184086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAB3AD2F9C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:12:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BBADD188F494
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8857280A5B;
	Tue, 10 Jun 2025 08:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nUJZDlkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45F52820AA
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749543130; cv=none; b=CBDqQu5iXB9IN4XedV4UYIbg6OKd/86iI+f21/oSNq1VzrXKqtD3SGC04AnuPFHkgXIGPkl+MiloLbk7bKzDFvMKGp2Oukvhn6dmGM2dmNv9c3aruk/Fy1NPPm5/Hf6zciObj04BWBvHh/M+rYV7uMk9Oq0iK57E5CwXYSkmBkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749543130; c=relaxed/simple;
	bh=v2CT6plJIgNl22pzwKw1D3YejkQkKza1J01LiUDlcu0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Jw6ZpeLLshKLTZB+O5cHJjeE6fsV94bIFB4PfWd6tWn8g5sB5QgdwocnFCBtCBc+RLw4M43qYj0pVb1+3virhOHSiZFptTuhiisRPpkhHDq7xP3uYOD5a8albxuZurh9pY/j+tv+dlP3xvNVpuLSO3kU2xqCZaG6Tt7jS6k5hGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nUJZDlkb; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45300c82c1cso8576075e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1749543127; x=1750147927; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yho1AYPPcSyhpFNf11EN63wRjrUMMghOh4GvyBpFQxk=;
        b=nUJZDlkbBm5vttk3sySpcJHq8ezQTRBwOuEhUiKUTueYiRzHx2gzRalgkt/0rnUgNj
         PPU9c1iOjNQXgn7JPAJY18m5+dKHYmOTDjW99GNxyZIaBC4onOusR3ja8uGUIdjzmRQZ
         uj2E0LcYCewrZWYgoHx9ZsnVmn3ySwPanqMnF/U0Rn3lAPpormMNcU6fn1NEM4OjD8iX
         tuWBjJeEoKFGzdHzAfClsr00UL0NuVWAyTWO9ZYTD9uVfCHNtYAf/zXZo3un9x4Mkgwy
         5LG5v77NGOvXBv8q8aZ37j4AJ4qBmnldFCNcXArZBK4wAH6Dd0HyiVMqYVnoAUJIl4ur
         ZARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749543127; x=1750147927;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yho1AYPPcSyhpFNf11EN63wRjrUMMghOh4GvyBpFQxk=;
        b=mCKQWA2ictkxtlqDU08zlwEax9tKluQNyaooZuDsg8htKP4Jyf3790l7pHwz818UXm
         SfSexc7OduTbUZolDFWIhFcvlfUgggehv5HP8jwljYwgz6bhMjoi3oH8NCoEl5ePgU9f
         TNdUQIBIQqy9ZnstoZ+lqCqWE7uVKC9crMwafmB85ei6Wyv3gjicFccvfUCoCh/2JMvI
         PxEo+ysMfZci7D4wH/DHuMm+0iFyiwfTQFhI54Gr4xZI/cgY9fJYTBaiv57u352ek8VQ
         0RRwuOZgsRh71OUEPBP/uKUXS7VQINS+X5zXJW+Wbm1/Sct/PGaKkU4TwjYRgU2jIVod
         O8oA==
X-Forwarded-Encrypted: i=1; AJvYcCW1hOxvNNSXnGkVauzqEZz7/6p3LmE4zbvWt+5rNA6PWRrlFIqihQWW7BGeLT4foSTQQSXe0skMMCfI@vger.kernel.org
X-Gm-Message-State: AOJu0YzYgPJTT8jrz3IveumLJLcuYulxwMFw88Wg5S33ILJ43auONdkm
	K2hkybudqSpRCo5EYapb+CTdQktW4Qx7DqkBQ4lh1Uxxottuy7T2RGJPFWDSqWKdwDqUek8yIUU
	Onbrk
X-Gm-Gg: ASbGncuJTVDdgAb//TmEeXBSGRqIwK3GsEOlRJrTpM8CQ5AmP306Qr362fyFLnzW3bt
	AJMGx6Ysbcdom9p7HxatBJ77oPtt+a6u2EhL5bBFNBtDokk1g66pzjUmVwpzANLFXlEmGjQQThf
	T0O3hIxA431AGNEuLrlKMw+qy/JdpK0JCoI1xucAM90Hx37xtc75pJ8KBqU4eB9TBQITf1okddg
	GQsyixDCq0GyT1PynwAbeVGcsA5pStLLNZIoJNJ2U+Uca+7RX+2UguiiYfpT9Rcscsh+LYFo6Ly
	d2GfzPGLumvBMcjdF7jn0fVmkO6DmHkqZnImqjFJPAq7jm3ZSyKE9++otIrrFh2BTyFH3IE=
X-Google-Smtp-Source: AGHT+IGOtNoadr72JztV6ZhAT+ubSCYHDknKz2gb1C9ZO0My9Ib2KVUPVReo+n/L60M1Q/VEFy9cMA==
X-Received: by 2002:a05:600c:3587:b0:43c:f6c6:578c with SMTP id 5b1f17b1804b1-452013ab6b1mr159226445e9.15.1749543127060;
        Tue, 10 Jun 2025 01:12:07 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:4d:e52b:812d:eb7c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-452730b9b3esm130838565e9.25.2025.06.10.01.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:12:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: gpio: convert nxp,lpc1850-gpio.txt to yaml format
Date: Tue, 10 Jun 2025 10:11:54 +0200
Message-ID: <174954311123.28634.2017679231712927757.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250602144259.944257-1-Frank.Li@nxp.com>
References: <20250602144259.944257-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 02 Jun 2025 10:42:58 -0400, Frank Li wrote:
> Convert nxp,lpc1850-gpio.txt to yaml format.
> 
> Additional changes:
> - remove interrupt-controller and #interupt-cells from required list to
>   match existed dts files.
> - remove gpio consumer in examples.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: convert nxp,lpc1850-gpio.txt to yaml format
      https://git.kernel.org/brgl/linux/c/114ab5afdf6640d40c8982170ea78c127c983dad

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

