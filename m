Return-Path: <devicetree+bounces-192733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E73CFAF7B30
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 17:22:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30A4C1CA7604
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 15:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E624F2EFD8C;
	Thu,  3 Jul 2025 15:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mfgFCklq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15CC2EFD8A
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 15:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751555626; cv=none; b=JqWO/RmLI/LCsqDPXeWcHTrlvSQb9Gjt+fsJemtgN+ZWfvjuF69H3WB3OMm15vpMI+Ha+kO+A7qya5Q3ESLiLoyH9ESLKZyGe4mMdnl99fNYiRfk3X/0cajcPgFduJoCHhyJ0gWKIbwp1Gz0jgsLvjPO/4e8rjPOuoSyG947lUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751555626; c=relaxed/simple;
	bh=qJgf1RF5GwyM1t3Atw/Q+kAszB7c4DDzNJhbDeMNAts=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MuNV+Oyd0fuf+b6/yV6GvC4m1ALl2RyrziFaMt4WvflYLL6pHqi9kvyBz84qllH4GvzViWStVFodjEX/XSQztfFIP/rdqvpUnDPhcp8iwQFPeLhn5I/oi5HQqTyVIB+oYBovl05Cm5IT3sTVZzm2/JfA0ZnbaSgc3+1kWXZ+sDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mfgFCklq; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-60bf5a08729so11396564a12.0
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 08:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751555623; x=1752160423; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+rhVhsVllegKUMnK5NOGl/rqgDtbDtwFSHzwLKRqIUk=;
        b=mfgFCklqtoxCLPZy3t+4gjqsCrB5P567O9yGv2ICMwYWYF9p6akr2ozIQo9ulLf4tO
         0PoL5YPOBvnRopNc286PS8bk/YmoBUOcxnbNraLGwo1JAdRZDUXSI5xySfRNPrkwBxBd
         rAYoBG9IxVGiTLwP47thngj005FHJJmrWr3XQi5EnUgPSx64I//tDiSHwqhFceig2neX
         vidUlXD9pV0cQ8Fyu/q6EvRw7p99gis1jmxGWvF2MrUMIZ/Mw1rNSWeK7p2I9HTd5d0I
         pwOGrKytSCpojm6KyL8hDW0Sn3bXjYCePzrzkTq/CXBEkE8SxrXk9DpcrmqfFfM/MFU1
         vF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751555623; x=1752160423;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+rhVhsVllegKUMnK5NOGl/rqgDtbDtwFSHzwLKRqIUk=;
        b=ceDMcPLqS2veFfGYKiGUM6Hm6a8vb0zyK40cTK/eUa9IAPbuKhBaKd1mANsqlPxZ3D
         H5r6XiXw980/cXUmXzK6Izvm8tL70XwiMYOu/ze3+QHS57idf1aGnQtzyuFUIcz2W3Ow
         iie//o8MQdMkqIm/XTabIzc3kQg7eI2TRi6B248m66VjjAffIq72AKIWc/jFSbhFr9BH
         N1KP8al6NMp481W9NHxBBChzUgJqBiuWNlYBpCXa2n/RnSOqqPJS1cfj/4Jz/jUk57cL
         osK0z2Qw42M7S501kZ63TvJGDsLitKJMTcLXDXtTewwerRzrttmj66+iQDxSmTY6rIJm
         MxKA==
X-Forwarded-Encrypted: i=1; AJvYcCWOXX7ADPH1j1E7SfKVS3IgnydZJH/RJwgR4rehcM9MhwMWWKw7nXZirRZow+s13rwwLBXwG1RIjcna@vger.kernel.org
X-Gm-Message-State: AOJu0YytyIFVgIZWaFEuAMzJdnfyenysbhLdmYS4CZUKxmDgzKeogJCp
	MzRC2eUZNrfxV2MbT2m/Bd84lRyuYgnBYGDMXtBmHXWbylievzSQT4bosAzfLyZjTGA=
X-Gm-Gg: ASbGncvKplck1xu6mQOF5EfUh9pMhh8PHarLD8V7LKcnSoTOlBfMSQDoJDF+Jhqj/ee
	HYYMJ0CqR1KtADMkhym96OsTINglfweZ8OBYSNsop+TzSTdbYFyThk1ofBHcFI2PVWl9oThdkHx
	pdkW/Ptlw+pvjAIV/+tnWh4BTeQZKX2NCORCxdFW1ERbzKY+5toMuO0ftf5c+FlXC04f4T6SWK4
	7Pa1uf7YV5yQMAiMs+CD0AdFJ4YY67u0RTw9SLX2K34nAggBJa0Ipb2k6BaAbj8sA46b2BFA5ui
	v/7xDj8cwy2jJgpcLvcjLclGjbyYPGXqAQjEJcXoqSUV8pvf60xk0XzHS/tse5rznFhOyw==
X-Google-Smtp-Source: AGHT+IHLbeEWvDtZyLpkZYq9v/9MjHWg44ua068Wk7HOmNac3d6CS9uj1wvGNiv38jkJSQ0CP6C9+w==
X-Received: by 2002:a05:6402:22ca:b0:60c:39e4:93e6 with SMTP id 4fb4d7f45d1cf-60e52d1939cmr4886568a12.24.1751555623170;
        Thu, 03 Jul 2025 08:13:43 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c828e1845sm10903471a12.23.2025.07.03.08.13.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 08:13:42 -0700 (PDT)
Date: Thu, 3 Jul 2025 18:13:40 +0300
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
Subject: Re: [PATCH v2 1/5] dt-bindings: clock: Add support for i.MX94
 LVDS/DISPLAY CSR
Message-ID: <aGaeJIjFMLcV8ly1@linaro.org>
References: <20250703-imx95-blk-ctl-7-1-v2-0-b378ad796330@nxp.com>
 <20250703-imx95-blk-ctl-7-1-v2-1-b378ad796330@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250703-imx95-blk-ctl-7-1-v2-1-b378ad796330@nxp.com>

On 25-07-03 11:40:20, Peng Fan wrote:
> Add i.MX94 LVDS/DISPLAY CSR compatible string.
> 
> Add clock index for the two CSRs.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml        |  2 ++
>  include/dt-bindings/clock/nxp,imx94-clock.h                 | 13 +++++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml b/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> index d0291bfff23a27cb55683880fe3a1f8b3e2ada5a..27403b4c52d6219d31649d75539af93edae0f17d 100644
> --- a/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> +++ b/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> @@ -13,6 +13,8 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - nxp,imx94-display-csr
> +          - nxp,imx94-lvds-csr
>            - nxp,imx95-camera-csr
>            - nxp,imx95-display-csr
>            - nxp,imx95-hsio-blk-ctl
> diff --git a/include/dt-bindings/clock/nxp,imx94-clock.h b/include/dt-bindings/clock/nxp,imx94-clock.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..b47f74f00f119ff1c1e6dad885b5b1e3b1f248a1
> --- /dev/null
> +++ b/include/dt-bindings/clock/nxp,imx94-clock.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR MIT */

/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */

With that fixed:

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

