Return-Path: <devicetree+bounces-207077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF2CB2E6F3
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 22:49:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1985A2450D
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 20:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE20B2D3739;
	Wed, 20 Aug 2025 20:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j44rFRcz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3A52857CB
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 20:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755722966; cv=none; b=opWZyLtBP8v4+xRw+n/4jHy5ChcqD3pcXNxI3yEBEBJKeA+nkDYZDVPkfGKWyTx5j8/lCDrWFNtVfd28vA8AGTqcBRvdHg/FB7Vp35aQSea9Ndf8D34vLrsBU1c3gzqea5LZ6yDSzaY3yNYZ+c64xoPY6qJ8fipwXSJXQID944Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755722966; c=relaxed/simple;
	bh=2VLSz3wHxmzDBw+7dDQ0rcBNHyEKToxUIFKa/DJSnxI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D3hPQRHndA7wU76wcEF9TRvCcv8ysMoj0YtucGB1Vgw6CFiSOhcjFU5/7O8AS7umXEJGqIVlJfR3o71a2NqcHCO0FlnGec608cD+BeO2WiEThH9bsBh6DBt7LR34qhm0Kg4GRgdg+5NzKWhHarRHCgAr7+CHZl9OVhaYThbkESo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j44rFRcz; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-76e34c4ce54so346104b3a.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 13:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755722964; x=1756327764; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4v/yTvx7RBI8LtWbJxBxyTglyBh+fQ/yrAxsVqZVRi0=;
        b=j44rFRcz56iTxoqRAjGVCqA+LNjXtfSubuNhTWeLQ8yor0L7Lwxm5zcpPWdmbmRAvd
         H4YbaNeAxgBgTmJ06oKBIjzSSGNMDTwUAWzxeHZ/TCEk4vH5yE+kMQ1fCt5Nm9/f6Klk
         6+j5ixJy8xaVQYy+e2p1CBV4OzX89tpOyT3yhz6OfsEmCr13FvYqHvMC/E7CkaInI5MN
         AQzOpMZegvxyitrFMSj2kVuGHRyhqsBCH73B76cBIdjUl2f2W3I4c39YpFqVCoaDM44P
         2QrecQoXMmleHiMdg2tpWxNCnWOb/A/O90ySv9OCOadjtyDAtKJGAxPMPHRqfSfBBkKM
         maLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755722964; x=1756327764;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4v/yTvx7RBI8LtWbJxBxyTglyBh+fQ/yrAxsVqZVRi0=;
        b=DTnQclJas2B9qdgUxK1gwFiFgmgTMehyy/M2HdbEDUEZ513RbKi8NjFYQx7pBmkD6G
         M8T6Y2tOYMfzcBHD/SLlV06nTVGPkeho3FveyNeEAqXdHznTXp2FXbrlXt2ZP9W5WWh3
         N6KzhRtqdxz+7gLb29U8/jJbKk72xRh+vO3Tu38PWPtHVKu4Fjvsv/BCKhBxQ1RUxTp+
         3t/om0VkwpUphzDFm5VAPa8ySU35NYZZGhbdQqDZljOitKRu1dcdQuC2mh12tMbm0ZYI
         onjoP0+oSLKoGuivatYSf0mKf8phhxWAuERB75SINFK5ksFNhu+yUcVrJG5DrmPa59fP
         HmsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVK48VE+sZ+PFsbl1uvv0pcumBgDIxelv+xUay7v5rCladb9tUYcnyqoV/W9S4cb+9X3WOBMvQ4w++8@vger.kernel.org
X-Gm-Message-State: AOJu0YwW7HhFxQY1XZON7rH04UiileCllv60cN6hq4MC4UMi89qsVEGl
	9Cd1EJJhS0bnOo8goakFZnRZTh6Jiu/P+Ngl9D6iavHuwGkWfzfqC8Ute7ydi3tJaIo=
X-Gm-Gg: ASbGnctr/mbF+KAKFYtU/VofLLnQcXyQ6ZPYlEBXwDuJ3GVDHeBuVxseJCrl6QwTtv3
	YtX9dcC1a8XY5p07VonMFA/OOs3+xVSUC+o8EmsycdpT7mCULIlgiTcXM1elC0hPA5nFH5K417m
	vYUYtwfZwTEyarlkQ6HHuGUSGhgF6fFRkWsqxR9QWkK/j3qkRfG02O2GHyEBg/o1/529HYD6Hgh
	Ij5/2bubXUOLV+VByteCSt3iJudWr+tCHAVs3pMKHAMhKp6E3Da0FaBcy8v/L4JhxsmLoBwVHSw
	lm94JttUFTE58Un3l1oExk6Es7Vo8gDr0JmvhOZUU6S0a+ht1/AqZtMPY0yFdf0CFFp6GJb4bTb
	pmcnXabfTmwnatkPlqkDfOWATxw==
X-Google-Smtp-Source: AGHT+IGhgPqqfmRMNGx86fAr6FlVuQIPW8YOrUg5lPs2NO14D0x2SMo+UNh8zB+5H+CHAosyVL/RUA==
X-Received: by 2002:a05:6a20:3ca8:b0:23d:7a30:a82d with SMTP id adf61e73a8af0-2432c196a3cmr1194253637.5.1755722964369;
        Wed, 20 Aug 2025 13:49:24 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:ed3c:56fb:c00a:205e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d0d1522sm6263547b3a.18.2025.08.20.13.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 13:49:23 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:49:21 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-imx@nxp.com
Subject: Re: [PATCH 0/4] Enable Remote GPIO over RPMSG on i.MX Platform
Message-ID: <aKY00cmV0NnOlAmx@p14s>
References: <20250818204420.794554-1-shenwei.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818204420.794554-1-shenwei.wang@nxp.com>

Did you send me a patchset that doesn't clear checkpatch.pl?

On Mon, Aug 18, 2025 at 03:44:16PM -0500, Shenwei Wang wrote:
> Support the remote devices on the remote processor via the RPMSG bus on
> i.MX platform.
> 
> The expected DTS layout structure is following:
> 
>     cm33: remoteproc-cm33 {
>              compatible = "fsl,imx8ulp-cm33";
> 
>              rpmsg {
>                      rpmsg-io-channel {
>                              gpio@0 {
>                                      compatible = "fsl,imx-rpmsg-gpio";
>                                      reg = <0>;
>                              };
> 
>                              gpio@1 {
>                                      compatible = "fsl,imx-rpmsg-gpio";
>                                      reg = <1>;
>                              };
> 
>                              ...
>                      };
> 
>                      rpmsg-i2c-channel {
>                              i2c@0 {
>                                      compatible = "fsl,imx-rpmsg-i2c";
>                                      reg = <0>;
>                              };
>                      };
> 
>                      ...
>              };
>      };
> 
> 
> Shenwei Wang (4):
>   dt-bindings: remoteproc: imx_rproc: Add "rpmsg" subnode support
>   remoteproc: imx_rproc: Populate devices under "rpmsg" subnode
>   gpio: imx-rpmsg: add imx-rpmsg GPIO driver
>   arm64: dts: imx8ulp: Add rpmsg node under imx_rproc
> 
>  .../bindings/remoteproc/fsl,imx-rproc.yaml    | 117 ++++
>  arch/arm64/boot/dts/freescale/imx8ulp.dtsi    |  27 +
>  drivers/gpio/Kconfig                          |  11 +
>  drivers/gpio/Makefile                         |   1 +
>  drivers/gpio/gpio-imx-rpmsg.c                 | 559 ++++++++++++++++++
>  drivers/remoteproc/imx_rproc.c                | 125 ++++
>  include/linux/imx_rpmsg.h                     |  55 ++
>  7 files changed, 895 insertions(+)
>  create mode 100644 drivers/gpio/gpio-imx-rpmsg.c
>  create mode 100644 include/linux/imx_rpmsg.h
> 
> --
> 2.43.0
> 

