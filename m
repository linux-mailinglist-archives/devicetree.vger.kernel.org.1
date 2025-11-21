Return-Path: <devicetree+bounces-241250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F29C7B8F4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 20:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 55AF535241C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E010303A06;
	Fri, 21 Nov 2025 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ggqFK1/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB2530214C
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 19:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763753853; cv=none; b=XD3aVogPqDaB9bI7d8R+ydxVIjgzQdZZkwmv3a1yMP0BOT2kT8QSHh6iVRwvueXg69Ga2ZGgZ7FvttK06ysLcr9C4U00GlqKVNNJnHD3aVsuNxhxxtEvMMeDM0a+4MBifjX3jZwFXwigg+c65omUS+SLdGWQZHJPjRTPifeQUYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763753853; c=relaxed/simple;
	bh=UgSKme/gXLmu4ztikSvSNsXda91TqjSZ+q1O4KdLtDw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jf0kjfYLhMwqk69UC8AxIhVRMINoJ7sFvUeFF6d0eJSdbmooT51hRo3t5n//9/ycdNzOxWn3QWyHHibHT9Zz57Re0r0av287tnKpfHaNLJhiFhr8qFwoRobkkHRRiwNBNwO94uyVsohTjUuVLVm6B6RfmZpKtV0HGQAZ/yVyoSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ggqFK1/3; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47798f4059fso2109975e9.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763753848; x=1764358648; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qJM1mZpGIoqjTJBi+7n1u/HmWUJqp4d9cJ4oHyspqrY=;
        b=ggqFK1/3NFUxooi9DrUFK4RKVfxIZXkvAptbyEqsHhd3oHk8T9uH2PGZD4k/SvJK4v
         RVfSgY96+bJwa4jhAm5Bid+duA2Zl5cKI8AsvaCNfswjNtE4BzfNm6LWihLFgYeyXogM
         oBRxMwna+KdkUyJ9oWiB8jzPkFo/MsFKtXAVxZ6FXh/CoVm+7rWGJR/uHd52G1pvPfAb
         5rSaUzXg208AyojoJqX8/kBRJk/iaFExb3rsByQyg5VLF1sdJqTafkpXgTPYOqdxZWFk
         1RfxkCMsqZ+GELGbWYKMjBb3JxusG09oejiCBLcZb4hwa37rfzT8ftLWSG+J+0+wlGCQ
         2bIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763753848; x=1764358648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qJM1mZpGIoqjTJBi+7n1u/HmWUJqp4d9cJ4oHyspqrY=;
        b=hMzTSIO5jyUqvv86MXyjgrsRVN2mK07W7EpFO/2ecoezefHqmsqlN+jUy0jBuesBKH
         VA52JvPeujuQgbxDh0drF001yUvO8K2Tk33NddD5EdF0GV0ofRbpS8D9S32Fii60XY2i
         qHOgy4dhtXTJRC/GNRNf3IQ/DqaeV27IS0/jC5gboAiYRXzHCr2aKyqcIiZy0XdKeoe7
         zsWC/xXUqH7YScqlTBdUwau0wJ0cDeFBWEnx+Ec/lDeXD0/EZ/GiZyuRaX1Wg0kXDZ8x
         +xlRyrkfsLVD7aSXWTGjK3zggp6FbBWoIjYRxTf7cGrCYQtcYThCM/MdoedWh2GdxYv+
         E6ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJET1WdOotGK3AyqDmvxxjk7KgSjCg5WJAnYVpYYzKxLs6cJkvu2XRgIMwwy0SXLVN8gL5E4mG0iF/@vger.kernel.org
X-Gm-Message-State: AOJu0YzR0YPnzCnM2ddVHLixsMptxsXZJdVISRTy8SKvLxc/jFeqr9Fj
	KPlzsjPDpGCiWSw5+nNvzl2l+hi4FeooFzB4G8OdO78Ao5PeZQzxPxQv
X-Gm-Gg: ASbGnct8ZstuX1dwQTwKd/CdBDQ05DR4rdl9u72EUipbqcJWGKEYwsLsiCJPOnoyG/Z
	PuipdmhDoCZza813cyQMK68bbupxCOVi4h7DxVY+tRFUb0EZsew4FUQ1xr8CGBZ3jy7zzDvGd3D
	VjG8OvTfty4McPMp0pkuKO1hGQ6CneCi8Dw+jTj7R9BlT0l+OsY/c2SmGVz5ivbkxN9a2hEOMJo
	+aVMiO/hfOV0ZGWQ730ERw5UkJ3yt/leZaFLKJNUuMRvZZpgj16Ao0jT3bbcKkH724+D7BOuAIe
	yENc1kfp3K10YltZ5kB4SzRJw85ggmOTBGLoAZ8yJ1mYTaxiitDhaHRM8RuGK8Px7ueW/rKpFks
	1mhX7b5RX1G6dVtuIQQocdIpP1SGj4q0cRFx8b/bq3HfQmJ1DoGENMCuxxiZTuvOwCS+AZGC88b
	2Q6nI=
X-Google-Smtp-Source: AGHT+IE3zswDLhAtOxPxtN3e0zQWCopDK2avgOY05M1JcEMvCUwdTqXrYP7mxELJXsHw+IAadTlULQ==
X-Received: by 2002:a05:600c:3514:b0:477:a450:7aa2 with SMTP id 5b1f17b1804b1-477c016c020mr19801875e9.1.1763753848160;
        Fri, 21 Nov 2025 11:37:28 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:b19f:2efa:e88a:a382])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f3635bsm12773438f8f.17.2025.11.21.11.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 11:37:27 -0800 (PST)
Date: Fri, 21 Nov 2025 21:37:24 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH net-next 05/11] net: dsa: rzn1-a5psw: Add support for
 optional reset control
Message-ID: <20251121193724.djjtzqg3q3r3pl45@skbuf>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121113553.2955854-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-6-prabhakar.mahadev-lad.rj@bp.renesas.com>

On Fri, Nov 21, 2025 at 11:35:31AM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add support for an optional reset control to the RZN1 A5PSW driver.
> Obtain the reset line using
> devm_reset_control_get_optional_exclusive_deasserted() during probe
> to ensure that the Ethernet switch (ETHSW) block is properly released
> from reset before initialization.
> 
> This change prepares the driver for use on Renesas RZ/T2H and RZ/N2H
> SoCs, where the ETHSW IP block is connected to a dedicated reset line
> that must be controlled by software.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

