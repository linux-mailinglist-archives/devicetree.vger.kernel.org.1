Return-Path: <devicetree+bounces-227560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE80BE2A7E
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 12:10:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8CF91A62DAC
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2672D32BF33;
	Thu, 16 Oct 2025 10:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ngSVI82t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716F6303A24
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760609132; cv=none; b=QbzX3kaK/bwNgr8mFkW2gEA0p2kg0Cy0ZcHxHxHToodHpNxE4igfpl0apHnEzCNszpvQXqOL/mw+13YwZN+Oy/Wf/q7vseZbdI+E3r7Psgy9tpV1CwpxXU8FOjVhO2AVKW9o7jbUxeQdQUMBGriJP6QB0K2nEH9QUy82sO6sKPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760609132; c=relaxed/simple;
	bh=cWcu3Ax4DtLLzYh8TBE+qD5Mbh/poXOPZlGQ2j7waPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FkLfWwRAnOR4tBQ6BBiAWtS9ccDexRwEvPz4p4a/HDo+H30aRp4gXOipmVfpoQnnab/AMbEhXXD2dN+gJCXiZYFGlmJbVWSyJ6TCdMlWj3wDRl0sGiSUnMngLAYQOi5reWOKNdF+C74Th7y9fpweGC+XVBM7RaTVp8XuFp4Glzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ngSVI82t; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3f0ae439bc3so252584f8f.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1760609129; x=1761213929; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hbRkTY0r4UfeaobdwWGJ7pbhy9oy6EGUrhUtAkEQNXI=;
        b=ngSVI82tWvVDPOV4jF6NrIxkxHD1v2TZRJ/ARvuuJTOoWM5rTm5xzXAuPUt8NwG1Fw
         16P2jrkfc10ts04GUPd1ZpFrkE0owlDWEvGy4ortejmduWZcVTYOnOHaj7iiD3q8PzYe
         dVHySTAjJKth2/737JpOOe7P6OkCB1qgPFD1HvMf3jGOsyqb+cgNJ5v3nkbyramUHFfU
         RNp8Iw7afTE46qmY9RT7PeZXFWrWy3aiZ2FYojmZwMp6mMACRG+QQSHlIk8Go53W+Upx
         YpUvXNeO9wN1So7YN7YhyRAmyGp7QHYQ8wKBpnUIVLUyyYrG2FqCQOw3+gKIUVYinyIN
         bmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760609129; x=1761213929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hbRkTY0r4UfeaobdwWGJ7pbhy9oy6EGUrhUtAkEQNXI=;
        b=Q2unQgCukad/pUbkOFOqX5+gXcCRRQihOLzD8YjIT1dtI9j+CczDiCTaPV+kvzAOYV
         7IsLmnNvCWjfa+zBo2ahdvRigeiS7TAaX0zpPuRSlgGJN1Fed85M75i2AbBtYBvlk8AW
         glTp/+Lvf4MqLfuHW+c6dHoVLKB1ET/c/UMw4ry8Qd1RA4EOLK+37uD+oPZyaaQJrdwf
         2Gt4MHO6JcQA3KQpg7wxL1EhDwZfg3ab+lrQT2lq4GAssvy2V3RPrLDdmxRylzuO2B6S
         Hcqhj0XxZZYJ5UuHZbQhwf38ma9Xnfe9/33s9xkknrR3P4Zjw1zQjV3zBk5q7qa1Y4Mm
         MkuA==
X-Forwarded-Encrypted: i=1; AJvYcCXdA+P7qCXak0sHsOVc/Q/dV1zuvWpm/NriYxiArRPrVOkxPzBfCGCKFA/6+s4kBKQdBJ3fZkH/MnnD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4xZOb0KPeVRnzRa53Es2YNbpefxLLe1p/Ve3TEa15V2E+fUD0
	9h6qkX962f4mAV4ozbf1DsZAFCRyZxQXgfeLbUt8EHz5NWAly1ncCFYZ5n+PMVFShBY=
X-Gm-Gg: ASbGnctaZVcoox5n8T9V9iIC4i2Lzc6GN0BYB7fcyzddKLpdRuRtyTaD3Y3KZfC2uMW
	LOUzFXVFA42NwPr60fKbIyWlULYNHve4zhEFyKvpZKetgHrzjWvK/dd9dT91QQ8f7zLEXEKoaSi
	gOS7ZQymknmwcp4jxFNMatf91RsTfP0l3YYq28fD8jQzBJGbd3HcoxKAnGliNCwBmINVHxSrWMl
	/boTWijYqp1C3j/5cq8DGuvcMzI2I1xmxZf9MAztjHqDf3sBIm092GRwxbCYtD9saZ0Kkp9K0jd
	O8L1LIm4yl4mryAqk9sQojRevyk7zyBYqAGhq9msMVsivSC71QIrqZwqTyoX/gfCxKuS+kWxq09
	QbKwcLXd1010O8Kvq49t/pyl4fDmrm21JbX5XlTBVyhcMO4Aajjga0zUExORD8oZBdzWPpSnEmQ
	1L
X-Google-Smtp-Source: AGHT+IHDKsfvqCwt3ncOL6/nII8RAMltxRMuxkPPio2iyUMSFnL2Ai/Qs3jx0un5E4aQb+USZeFKjQ==
X-Received: by 2002:a05:6000:4305:b0:3ee:13ba:e138 with SMTP id ffacd0b85a97d-42666ab9934mr21320424f8f.26.1760609128627;
        Thu, 16 Oct 2025 03:05:28 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:ef97:57cb:86cb:f7c4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e1024sm33475547f8f.42.2025.10.16.03.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 03:05:28 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Shawn Guo <shawnguo@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: (subset) [PATCH v6 0/9] drivers: gpio: and the QIXIS FPGA GPIO controller
Date: Thu, 16 Oct 2025 12:05:13 +0200
Message-ID: <176060910602.64650.7023197009719546944.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251014155358.3885805-1-ioana.ciornei@nxp.com>
References: <20251014155358.3885805-1-ioana.ciornei@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 14 Oct 2025 18:53:49 +0300, Ioana Ciornei wrote:
> This patch set adds support for the GPIO controllers on the QIXIS FPGAs
> found on some Layerscape boards such as LX2160ARDB and LS1046AQDS. At
> the same time it describes the SFP+ cages found on these boards, which
> are the users of those GPIO lines.
> 
> Before actually adding the GPIO driver, patches #2 and #3 add and
> describe a new compatible string - fsl,lx2160ardb-fpga - which would be
> used for the QIXIS FPGA found on the LX2160ARDB board. As opposed to the
> other compatible strings found in fsl,fpga-qixis-i2c.yaml, the
> fsl,lx2160ardb-fpga imposes a unit address for its child devices. This
> will be used in the next patches when the gpio controller node will
> define its unit address as the address of its underlying register offset
> inside the FPGA. This requirement is described in the yaml file and it
> only affects the newly added compatible.
> 
> [...]

Applied, thanks!

[1/9] dt-bindings: gpio: add QIXIS FPGA based GPIO controller
      https://git.kernel.org/brgl/linux/c/d5896130a8781de5ac8970dbb7083ce4cd6fe57a
[4/9] gpio: regmap: add the .fixed_direction_output configuration parameter
      https://git.kernel.org/brgl/linux/c/ae495810cffe29c3c30a757bd48b0bb035fc3098
[5/9] gpio: add QIXIS FPGA GPIO controller
      https://git.kernel.org/brgl/linux/c/e88500247dc3267787abc837848b001c1237f692

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

