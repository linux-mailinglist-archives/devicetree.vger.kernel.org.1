Return-Path: <devicetree+bounces-231861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 62327C11DFD
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 466B64E3CEE
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B6F9330B30;
	Mon, 27 Oct 2025 22:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EEjkpzYh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333DE330B2B
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761604772; cv=none; b=X7m2cUOquDRhu9XsPIx6tJ7rXhpte+gTUNNUFT31CIbCVHIZGJEjUvhpbL4xn+XrLcpZ/Jb9ccyMVSv1F++ISwGttoq5VjOa3D3eAOYyIzyzySs3qxur7bvittVAfCuotYEOHPEpCHguSDVDI285yY5UE403NPayYX7vAD5Pgo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761604772; c=relaxed/simple;
	bh=juewRQi/lhSosLtQ759S+HHeS+N8yoLqb0zkYyjR288=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DTOBmnouB8xuhTkYAPU3Zo9+rjENevmbli+x0RbewIZUAfHEM/VnS3ZyfF5x3rgODMT0nyqOr2VbuvzqU5xKSwHfzkEkdbO6vp2bTtqbAV/Xt7DUkG+LLOYXvi3OEhr7/aTLDnm6tQ/4RghfNVWAt+wbggWMIpF5J9AsLQiOPVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EEjkpzYh; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3fffd2bbcbdso315476f8f.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761604768; x=1762209568; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YvpDbsrlJIOTaMRaOid9yTZf9U4Ng8ymNsEuTR6O/hY=;
        b=EEjkpzYhx8G+Z0RYuPSs3ZCuQ1t6DAOViXTimpjx5NVwPKwEUr9+TD19UTjoD+UIXF
         XQFOh93qZHUbSeBiG7F8BYe8kOX1zbezUzqYUEsKL/Iyx9wsRU0atq6U2NLUoXOm+6rD
         Wq5cnL784duZlVdXnkReRkJ4e0orZK5QXYcBISX8Yd0lYSeRv0bjx7nTRHCMMB3o5EIZ
         FFiZgSYgK9rXaRMtzo4V7nqtNusgZWz3EJ5ZaHu5r9drDPRmC49xDxZmpAigKCtl/TEV
         5xyOpwcU/VZ6i3aXoR1r/7gW3F3rnw20s0bMVLdFjdnF/GVWjL+cX2SrQ1BZ5uU8RKaf
         7YDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761604768; x=1762209568;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YvpDbsrlJIOTaMRaOid9yTZf9U4Ng8ymNsEuTR6O/hY=;
        b=mOCsCsBbNv8Zi/4/VNZ5WovfsbV/s3OmStRELASwLWJpP0w50OvFVi4gdcqP5dB7e+
         i3Yj23NDR1GBt/4HMWNbByBw47s9+8O97fD4UHnOk9gFcTPK+ozYbOlfwbED0+B4wP0J
         a+wP0CXevb0tyqkYgyt6SpCaPQfCfBu7SV50Xb58IqT5svADDBC63MPJM2FyIG4ri3rz
         rDpvU9xzm0JicAiB0S0BhBA1pH6o0IZkvkN+GovuFiXq6hIk1Igr6+6qcwhg/3Iw1ZJu
         nRqCVFaBRt4aaHJfD3xHmTFgCtoTvcwb6IqpFj95TSegpohZANlJDZkzgGMAyP/TEiXA
         Y9Ew==
X-Forwarded-Encrypted: i=1; AJvYcCX49N+hYQB8a/9aDZA3QZIBBI+gIgfpw4h6gt9mHrDZ+l4qWa+sfRtuaCKy6lHLO8hf+T4wjHilV7aQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxtDilZOPjxFI7tPP6E8458dRhr1/aK1Ao59GWDzRbhdL84CLY8
	vwI2d0d46zvZunf8kbdFDQNsf4TljivMPoMyIMg4SngLJe3gukxsrutz
X-Gm-Gg: ASbGnct+O+W/hHzu79EKxYIAtW4c6+o8X46UvtLi3NW0R5IF4krGMehso8IwZpM9no/
	JxO2j07tnZ+FJd35ih+zu/6mcvsSsgMhhjO8DYMtgp1NRF8Oq3LCahrEAM3UJWwQoG0dZpgNL15
	VcM9OQmodfZmJmzdSruf4KyfsWc7Ssb4b20xYpSIuEDAIq5fDcQnwGn1/eqHQ4yT+Gk/2sKNwYo
	h99V6r+E8LZAgpqiFD6LpA9Zl2b4sSXB0sP2/AtPhZg6i+L3gqw4P5YVK4Ipd20K8ORPWEaB5Z+
	xgqu/Bnzw7i7Hw/dojHSEdOY2kxW2qotzygEEAMl/IS43oF7Z4E7skFf2fDa/ydj1nTf4W3L+8b
	E+Qp1WRDn7aSGSoP1lVjiZr6sT/FIIWj1MaZpiljO+7xiSpaR8rnJI/fClGkCBENw7EQT
X-Google-Smtp-Source: AGHT+IG7ZwAR08agDx1ivDH/sVshrwRmm2QAMO06s/6waDyxXo1zMnSEnxrvbvB/FBUt4P7KDlQEnQ==
X-Received: by 2002:a05:600c:4511:b0:475:d7fe:87a5 with SMTP id 5b1f17b1804b1-47717e6d26amr5828055e9.6.1761604768464;
        Mon, 27 Oct 2025 15:39:28 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d406:ee00:3eb9:f316:6516:8b90])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd489e6dsm157269015e9.6.2025.10.27.15.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 15:39:26 -0700 (PDT)
Date: Tue, 28 Oct 2025 00:39:23 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Andreas Schirm <andreas.schirm@siemens.com>,
	Lukas Stockmann <lukas.stockmann@siemens.com>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Peter Christen <peter.christen@siemens.com>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v3 04/12] net: dsa: lantiq_gswip: set link
 parameters also for CPU port
Message-ID: <20251027223923.trrwei3gkl7yozqe@skbuf>
References: <cover.1761521845.git.daniel@makrotopia.org>
 <cover.1761521845.git.daniel@makrotopia.org>
 <833c9a9a0cc8fca70e764f13035da4d1444a0805.1761521845.git.daniel@makrotopia.org>
 <833c9a9a0cc8fca70e764f13035da4d1444a0805.1761521845.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <833c9a9a0cc8fca70e764f13035da4d1444a0805.1761521845.git.daniel@makrotopia.org>
 <833c9a9a0cc8fca70e764f13035da4d1444a0805.1761521845.git.daniel@makrotopia.org>

On Sun, Oct 26, 2025 at 11:44:24PM +0000, Daniel Golle wrote:
> On standalone switch ICs the link parameters of the CPU port need to
> be setup just like user ports. The destinction in the driver to not
> carry out link parameter setup for the CPU port does make sense for
> in-SoC switches on which the CPU port is internally connected to the
> SoC's Ethernet MAC.
> Set link parameters also for the CPU port unless it is an internal
> interface.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  drivers/net/dsa/lantiq/lantiq_gswip_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/dsa/lantiq/lantiq_gswip_common.c b/drivers/net/dsa/lantiq/lantiq_gswip_common.c
> index 092187603dea..0ac87eb23bb5 100644
> --- a/drivers/net/dsa/lantiq/lantiq_gswip_common.c
> +++ b/drivers/net/dsa/lantiq/lantiq_gswip_common.c
> @@ -1459,7 +1459,7 @@ static void gswip_phylink_mac_link_up(struct phylink_config *config,
>  	struct gswip_priv *priv = dp->ds->priv;
>  	int port = dp->index;
>  
> -	if (!dsa_port_is_cpu(dp)) {
> +	if (!dsa_port_is_cpu(dp) || interface != PHY_INTERFACE_MODE_INTERNAL) {
>  		gswip_port_set_link(priv, port, true);
>  		gswip_port_set_speed(priv, port, speed, interface);
>  		gswip_port_set_duplex(priv, port, duplex);
> -- 
> 2.51.1

PHY_INTERFACE_MODE_INTERNAL has two meanings: an internal MAC-to-MAC
connection or an internal PHY. In principle, your check excludes the
link parameter setup for CPU ports with internal PHYs. I had to check
that these don't exist, by looking at allowed_cpu_ports and seeing that
only the MII ports can be CPU ports. So this is OK, although being a bit
more explicit in the commit message would help, if you need to resend.

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

