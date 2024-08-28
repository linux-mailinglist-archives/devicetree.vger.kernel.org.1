Return-Path: <devicetree+bounces-97407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E23962277
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 10:45:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FA421C20B93
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 08:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D4615D5B9;
	Wed, 28 Aug 2024 08:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="siNh6tgY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC37315854A
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 08:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724834755; cv=none; b=NJOAEHdR/YQqlFOwlRk9YNWW4DdZykdO5cwT8m5JBoP145/GcUcHO8AjZBQ/5aiWNE0fYWwokG3bspvaQfHuee0ZdNDuT7qmMSO+rPANQOcrY7QId58vuuLnz9a3JT3MKBQn3ka8kiZmjob8eWJHNu+pTSNPz0Puo5/dmCCY66o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724834755; c=relaxed/simple;
	bh=yu4Wy0wOcgEQcfzt1v6vuNg/URcukRaqet6Jqj3F69g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ULlD/FNzwlUEFIQa7bIQWsjPqyuRLlUvCbGhSYH9K06f1pQb3tJE78KFxwpjGjhlTXNlzu5gS/AXTqBi1lghjlxgMa0cthi70gnsNIlemE19APmuTP6FO0JHHUGKlEvcY8S/olOwZpFNHenOaOBZX84aA3d5Mf+RAGMs/eO5XII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=siNh6tgY; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5334c4d6829so8978738e87.2
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 01:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724834751; x=1725439551; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vdBIi5m8EWzWp93xlsbcf9ZPOqz4SwEvCdHpMtK8yDU=;
        b=siNh6tgYFdG5L3dy1prcX5AvluHDhQibkzL3uRB7JgU19vPcP/Uym7CaNt0hwxfoQo
         BfemX837yo4Y+Gd3Yg/ENT65IiAVmERbvmGo4y22IRKRRMDZtJCthC8ilaNq8Kd+OoaA
         R5X/vFR6l1RO+Txljh0D68N3q6ji8u4Q4Ax5QaVG57MdFkozKYjPb+dwh2SnEDtEmKeU
         f2r/Y0LQloVmmmzt6LCIdCJ9QRxQb/RKzQ5jeJy0n53XN9oZYrgv3yYvsit6eMBibIqh
         mLPRBwRryM0bNyIARcyTtBu9K30ptIm0g88eHwpPJgt17Tn06ESGpTQvK1+hz67Lersz
         +wZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724834751; x=1725439551;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vdBIi5m8EWzWp93xlsbcf9ZPOqz4SwEvCdHpMtK8yDU=;
        b=Jfixi/nkw1fhBVmfG9N2DMb8wDKQv6nsLK9EP9gs7HyZiIXpqbhLfxUPlJeY+5uwo3
         R+V8WntywuVmCaK0kn4wWRQ4a6dV8bd7yxcFxjd1UTlykb25Ug6rJbEilwZ0Hq5QAfTb
         vot1GxZLi61SqrdrhFUBKFDzoBa1w+o6GKvXSlNOZYRwL4Xc6mgRLz0wBoUAvctf6/TM
         L8Uq2uV1UEoLZAxzGQL7MLVFG/9UKOTLUeDHEpM6UgQU+XWkT2jg9QxR9o9E5GQ9pLhA
         +KynanYUuHv8V2dPtvtKdvW32vZMEwnHbYngMUliWtykXFAX+qbvBXXVrv2RryXCCUmk
         GrhA==
X-Forwarded-Encrypted: i=1; AJvYcCW4zjFd6NYbU1zsnDPuVsEM6FBSHa+b3CvQBP9FSOpK1y3OEZ+UPQpO8KPSAgtQ2ZnZXq5WYzSbLPXU@vger.kernel.org
X-Gm-Message-State: AOJu0YwX6j2WrIQShY5JuNN+wZ1RIohGPaFbFzWiQ9YtdOqSqAolYfVl
	JgqXnJYoiTfZRm+kNMJaYtE9NMGn6mzsHotXbXTvRGovFltXvgpCGjhyKPmfIm0=
X-Google-Smtp-Source: AGHT+IHWxfcTIgRBRkO/+YAr6ZW+2Y5xXvy9KTaUM5ZOJKXQFVXhMO86M5E4uZUCWTKcKt1OVXzUNg==
X-Received: by 2002:a05:6512:224b:b0:533:88d:48ca with SMTP id 2adb3069b0e04-534750c2934mr986691e87.55.1724834750626;
        Wed, 28 Aug 2024 01:45:50 -0700 (PDT)
Received: from linaro.org ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a86e5878562sm211665066b.156.2024.08.28.01.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 01:45:50 -0700 (PDT)
Date: Wed, 28 Aug 2024 11:45:48 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Wei Fang <wei.fang@nxp.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	festevam@gmail.com, abelvesa@kernel.org, peng.fan@nxp.com,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 RESEND 1/4] dt-bindings: clock: add i.MX95 NETCMIX
 block control
Message-ID: <Zs7jvCHO+ifC3VaT@linaro.org>
References: <20240729012756.3686758-1-wei.fang@nxp.com>
 <20240729012756.3686758-2-wei.fang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240729012756.3686758-2-wei.fang@nxp.com>

On 24-07-29 09:27:53, Wei Fang wrote:
> Add 'nxp,imx95-netcmix-blk-ctrl' compatible string for i.MX95 platform.
> 
> Signed-off-by: Wei Fang <wei.fang@nxp.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml b/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> index 2dffc02dcd8b..b0072bae12d9 100644
> --- a/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> +++ b/Documentation/devicetree/bindings/clock/nxp,imx95-blk-ctl.yaml
> @@ -17,6 +17,7 @@ properties:
>            - nxp,imx95-display-csr
>            - nxp,imx95-camera-csr
>            - nxp,imx95-vpu-csr
> +          - nxp,imx95-netcmix-blk-ctrl

Move this above vpu-csr, please.

Also, for some reason, this patchset doesn't apply cleanly.

Please respin.

>        - const: syscon
>  
>    reg:
> -- 
> 2.34.1
> 

