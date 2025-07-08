Return-Path: <devicetree+bounces-194189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0D4AFD17C
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 18:36:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E03E583210
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC2302E5B0B;
	Tue,  8 Jul 2025 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zTwCKCBE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1372A1BA
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 16:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751992463; cv=none; b=JPOqBG6Q/jQtcicFdImYv4eODEpWhzCWcwIuiAuSb7JLjASd3ncDPbgBg6IuzK+y18dUUJaKW/MSl9SNhYiETuKVLtO4K9ann9UkLldjkrziBBpqcSDGBO91xkqjVqhxNZ9EMA93nwmcqPiEJfsFI8I9tyKsPUe0cKymRssKpuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751992463; c=relaxed/simple;
	bh=egjXBQIDVMcPJrFuesqfHI+sAnZEJZw1CswxrACs2UM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F0rgFO0IB8f7Knz+CONKYfSUnBVHtEnX7eIe/KkG0edLLHdXhY/CznEXbl61dJB3pjS7QTsKpQPx4Q2sTMVjaXj56GZv5RNicr8kdGxd0nDfzi0A15pP9VDFCwCxqPFz811Pveo09GCWHrD8d+/et7amNSUQcr9t1KHsPf+g2SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zTwCKCBE; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ae3b336e936so849593866b.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 09:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751992460; x=1752597260; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r0at4FacdZ6pma9HH5OGwEa8HPAQDJiRPxVtv3dm2mI=;
        b=zTwCKCBEjZVqNGlOUf66R0xz6GPjDzoODQCQjowRKc4kLXpR2NdKTHja9tpXiUm7vE
         sGZDVqSVjSoZs3+qRNAn6eHGTdYG8hkw/xj81WBWGY6vOqpQHGJ/Jdr3010WT9oeihic
         GHuvL3gOxCkxl3hHhH+9ILkphOMi2csjKtISJSNZadKlaueWEokcGdhaWbZ/NYQefMVD
         BnuibIJLAEXXhA6JPVgxmnr+in2fd2FkmuvVjyvpBHdF4KZr7l7Z1GEjXOEiKIREoHZI
         vlFgmrsh8yjsjEWTtFmRv9XlLd8MC6QCWf/rEBgAWY5OsyEgqfia3wnUlh9DDJuKEgpL
         baCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751992460; x=1752597260;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r0at4FacdZ6pma9HH5OGwEa8HPAQDJiRPxVtv3dm2mI=;
        b=MKN3RSi5YbI4s4mAR4L/5BAUVH5abbzJ0P1Pi0x8OguAX3aN2E2O2gcwQ34cuwFdd1
         EwkflxgNQXe+ukxnKjovrJdSb8F9W+BKagA0/sY+VfTlxPVe/MZSKYI0Z0OU1RxO+4JR
         3j+DgFYJmjkkDincf9zJKXrDLAjN1YjqwR+5KZu59/Ufwiaod3JWtzaJ1BlXU6S2PsaM
         rpenS8VfyxsfRoiBXUmoQN3A0OCJhEYP39uj7b0dS/hj1xUqzgfjKhQqtiBDvWcb/oW+
         aX+5x13fTSxlC0Px1H1Bkz1yqn4U0SUn/7HAbjhecxpKeIaUUCj1azBLPuDPqvIvYf69
         LLQg==
X-Forwarded-Encrypted: i=1; AJvYcCUfMTO78dIyBy83lvb02X5CsIMO3UETKIq7I3t0cjWp5HkvZJpTpVx+AXdzbBZ9sRj7izzTy36KpFkF@vger.kernel.org
X-Gm-Message-State: AOJu0YwyrC7SyAvvS9bFc0gYrkTOUG3WSKnRcLcXwhkgvKjoJnbyQhNO
	dbnITdGxxY2YnydUxVbHHEMTuH2mRvNHb7+G4gZsWUN3kyspKE8HWgQMKeHv5LrzAZCxUdoMmbE
	hFgxo
X-Gm-Gg: ASbGncu7bE6H9/oZ8iJ/Z2RCNLECEvmxnNoW4pObcIG2n8RAIn3+ZDiT6Yl80Jsj+i3
	EWt0IaKZhmxWIK4xOAU48YYVUJzJ1RSEMj92ODz3wpnFaImiq0H2XFXzcGXNyESyxGXGIflsk4r
	QMZ2i9t+UvbdogPX6gf0Y2dKQo9EclJ8tg2sn9pZb8spdFbYVXakRI11xmzo0ypo/p+VJyUhGmR
	z2KAs13+2pObnSz8F2+bQ5ZTfz/UQariGsHwB1yhzSqM2V1A0IaXtNuPxpFxL3biOhdZFRor6/j
	mK0bhuYp1nsc19Mnz1G0nPvdvh/fDyG6xbBlqXHsjubh0ZQc4pEhjLxIKmM=
X-Google-Smtp-Source: AGHT+IGKBE0r3i/OgmjaRqVmGAN5LyHLg8zBEZZguDeNMFqqfCLNiGPwn8x/2LgZv96cHHN089ljmg==
X-Received: by 2002:a17:907:9496:b0:ade:422d:3168 with SMTP id a640c23a62f3a-ae3fe6fa77cmr1690286466b.37.1751992459765;
        Tue, 08 Jul 2025 09:34:19 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6bb1effsm934223466b.175.2025.07.08.09.34.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 09:34:18 -0700 (PDT)
Date: Tue, 8 Jul 2025 19:34:17 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>,
	Frank Li <frank.li@nxp.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/6] MAINTAINERS: Update i.MX Clock Entry
Message-ID: <aG1IiVXZSl+/4+Xg@linaro.org>
References: <20250707-imx95-blk-ctl-7-1-v3-0-c1b676ec13be@nxp.com>
 <20250707-imx95-blk-ctl-7-1-v3-5-c1b676ec13be@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250707-imx95-blk-ctl-7-1-v3-5-c1b676ec13be@nxp.com>

On 25-07-07 10:24:41, Peng Fan wrote:
> Update file match pattern to include nxp,imx* and fsl,imx*.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

