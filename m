Return-Path: <devicetree+bounces-215248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 284DDB50FBF
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBBB0446475
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 07:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35BB30C373;
	Wed, 10 Sep 2025 07:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ex9SIpBB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E6330BF6C
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757490091; cv=none; b=aX1a17cJGnWdftu4I73ixDEoZz2gLvVZelC0RcIPFTd8rJM1Pzfd3ot13YqOpY3FsD65+wsslRWUF9Z7Vaq559sKYhGQt+OynvcehC4r2f6zjysQoe1fs9PrcWlwW5eO/ulYZAU2qvgN/d2NbF3coIq3TasCBS5hc8kEQYMR75I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757490091; c=relaxed/simple;
	bh=TurTq2vFe7uDSAQE72/3WsN+FsxxrdvX1f5DqftHi8k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=iiyMLI5STHaffcHaDO25At691KCReip6gEJ+lwXCL8aBdge6r83JpYpyEeiI6IqcBJF6lEvJ0FsFmMV1Pw/A4GwSjF+AL40+26q+ahRdv1EW8Gt2ARl+zdkSX/3jIF2xkvVQA6xkOkLk8JRExayeRqhIJgRwDT4IDY4uNiqQAtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ex9SIpBB; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45dec026c78so20588585e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 00:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757490088; x=1758094888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFi9l2xoUcPdKDTlp7DtxIMxRchiKoMRzV8J34u2n6Q=;
        b=ex9SIpBBv85d4NMr8/AwTht4O/nkoVaYFsWm8u9HRM+kIXQmcrUnweCS+2TSIbZcWU
         SB5mXgjFZh0dlu9ENH7hr5uRUMeEruySNRfr21/XZuO8O3RtbNUi47BHq4jaY+LO+LwB
         QWZ24p0uDLKK6AH2D4rtNFjiu+cwE7cMa6+3PU7lDOK4tbvlOKnsCHAVgr7UsAVA/RkR
         DDoV1i0TpzH1oWf1tqlPwbFFpKGp7FKGmtx3lc4PAVgBHCA0DH51HdHCf76hUF8NeIz8
         dEFn/70i3rY2N7BYbPOzXJxpOG6JDD4AKlDCeZEnWanO4KyNHD2GQUQ0BFuyaDwk/i6L
         bRXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757490088; x=1758094888;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OFi9l2xoUcPdKDTlp7DtxIMxRchiKoMRzV8J34u2n6Q=;
        b=guQ91W2q972iJIc+kFqDi8q7UUF4WWnY34RrjqOV5PbIH38RahRX9C1lE5Lg8H3MH4
         B33URL81g2sM+KMO8jNfTSPjpp08caJC33zh7E2eYB6kjJWINb1Ek7u+JoVZoUhgxMmG
         /Rj6oMFW9O8iSQh2M/yvmek6IJLS8w3rbaFwe+xgldMCZzMNDqXGBgFxrH5X0ni/rW9O
         o7HKfqC3KZrbtYplT7m7qQqjhpuEHgG4iBs5BDVZ32pt4K2e1Uui1pizDTvCMI6k6yYC
         5iFn4224mZaFEZbqW5ZDgwPBUV68L8Z7HBfH4fK3GSUz8YEPF407oHeEq4qpFeEFZwm6
         l2Tw==
X-Gm-Message-State: AOJu0YzyHl0TkT/B5Sxk5FnfEYkA6GSkP0ffeQIGRh4jIbgvUJFvyhxs
	i9T1/z+yraNCSyIEheVMs65hvrLQZecfOz62xUiTsyBCgFjpFqEpsRZ7q0DaHAmzgpY=
X-Gm-Gg: ASbGncu1Gk90ScwJBM6VSrfrDeMaV8Tl2lywsDz5KLbEDaa10gBUbeS/2dozNR6Cwm/
	l+f7ZKs4TBXTJD9JOg4Hgfb+GJiypn3NmfOyDizmOmiskur3cUdZS341Es1Dl+Y8EWiQs9Kz9fD
	2rD7e9YQR6apr5GfveGvKsrIwTmMbkhxwXkKJ0YNS5Sp0r9kR1N4+2JMWJAXwH6DepqXeztm8xP
	mONta9RmHevPoYEMUJlk2TFVP/PkRXi8MKD4zu+GcZ9y/lyCdy7agktmWZpUvtdu5qoz+WeZVMm
	jxbEOu/XNXwj8FzV6kvBA4wdgLZz7pZTFa5zSp+sdsgZUmVB7L0kvOONcROsIjBZHHlozTghsQY
	tXS/J5KPjcjHAr9O4OJzxuVc4g0BIsh2hbXlt5/FyXNZAQV9VxP2SNg==
X-Google-Smtp-Source: AGHT+IFsU3yXlWlG1yOOb7EeI/0GYa1ze44ob0J5hkt+SyO3sFYx+UnxBi7g+7gTTu6mB+/M07fxiQ==
X-Received: by 2002:a05:600c:4b19:b0:45d:d88b:cc6 with SMTP id 5b1f17b1804b1-45dde66c652mr88230185e9.25.1757490088210;
        Wed, 10 Sep 2025 00:41:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df8259cb1sm17003035e9.24.2025.09.10.00.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 00:41:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Valerio Setti <vsetti@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250908-fix-reboot-v2-1-354d0e57c855@baylibre.com>
References: <20250908-fix-reboot-v2-1-354d0e57c855@baylibre.com>
Subject: Re: [PATCH v2] arm64: dts: amlogic: gxbb-odroidc2: remove UHS
 capability for SD card
Message-Id: <175749008761.1189257.11203428787242176794.b4-ty@linaro.org>
Date: Wed, 10 Sep 2025 09:41:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Mon, 08 Sep 2025 21:50:03 +0200, Valerio Setti wrote:
> This is meant to resolve reboot not working on this board.
> 
> The problem is as follows. In order to be able to switch from HS to UHS
> mode the bus voltage needs to be reduced from 3.3V down to 1.8V and this
> is achieved by the "vqmmc-supply" regulator. The ROM bootloader is only
> able to manage the card in HS mode (3.3V) and the switch HS->UHS happen
> at boottime in the kernel. The problem appears when the reboot command
> is issued or watchdog expires because in this case the "vqmmc-supply"
> voltage is not returned back at 3.3V before rebooting the board so the
> ROM bootloader will be completely stuck.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.18/arm64-dt)

[1/1] arm64: dts: amlogic: gxbb-odroidc2: remove UHS capability for SD card
      https://git.kernel.org/amlogic/c/663bfe77b6f70bcb33b2607e16c94fcb1029580e

These changes has been applied on the intermediate git tree [1].

The v6.18/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


