Return-Path: <devicetree+bounces-232200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD02C15783
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:33:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF9104641F4
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933F7342C9D;
	Tue, 28 Oct 2025 15:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GJXOPB2D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A63340DBB
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665437; cv=none; b=li7Dt0jtvRQUKNAAZh9LK0Efsk7EzoT5BmBDnmZEv2gtrWvzYUe5OkSIuoH6SqFI5aSKUR7jRDmWH06pNJxX22Qz2BtOMOdtZFAvihe8nV5QWyRrFkLz+wH/9Ca70zF/ifvHDRYuC+WYfvxAO9KzJaQFVHYZtXCyONKRRCmeLC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665437; c=relaxed/simple;
	bh=omCv2xt9sfDV1Sj6ZTG7T9nKYAOrU+rkJnFSocGZeR0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZoqI7wfDLpuyZW4sxkLExFBM9sJS9mKo9sKITkMkua2tEriqYveBd5laqfKpl+Um5vTQrSdxuB27jrnxxiraokwNX+wTmAKz0LjX/WYsbcwx2diF19bXT2ulYYnELErCK6aO1j/zCqlk4XTHllNqUedKuoriIfRCthwnbDeZ5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GJXOPB2D; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7811a02316bso4483120b3a.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761665433; x=1762270233; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxRG+6Pho2gqh+4Q9HbMHt6ljAWQLQ6AqeZiXpRBEU8=;
        b=GJXOPB2Daxx/pmTMYjIE5yzSaiUPH2jbPFwNqtzFYmwU5rMQvOgmyO9f9QxAC6gk4b
         oxDGmtN2a/n7nHdUVvha9ZXRhJK+JivlZa2ffR3BasGxySA6ctSmLNjPWcfNcO6rHhKt
         ACRm1BTiCTGEDHAaEoXWAxHbXtFSDTnjyVffUzrUZIc11acr+4We5yHykjuEUHghOBDY
         GdQlGh/EKOOxm9r7xdNtpq1y3UEW+cCUbvPeauwmUv7yZS5p63Ad1Wmek4UgQUMz1rGd
         mmE/lQepa/zvdoJ6GOOSKAXfbcHV/4/UO1lrSYJXWYFEC1JPCXhS7Plkd2Z9X5NNEf8y
         AD7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665433; x=1762270233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxRG+6Pho2gqh+4Q9HbMHt6ljAWQLQ6AqeZiXpRBEU8=;
        b=GMQRUkU2L2w08jZquxapeZeiIunSUbL9k+Ux+uCQilG+4w9WYC9v0KB8Tf4scqH39T
         7+Gavf7UzNFr88fKsuWy2kBlk2vDMzgy/gVIq7Td53FSfLQzS5bDEB4iocneMWVObUxY
         JulBAQWG2f35dnUvdAU2Z5WnFDiUdAb+9DOEhTHk3+6iyy0U+wilkiJ2J9gZLbGGZF++
         pTfkxGcF+uI40EDL1V0sp9KEZ5A7azCqiIsS8VMsYpInQI/AmjpITj0UORGqI0S5HQZf
         Xg38z41zvqk68a9SuLq8f4ubFFuek7MN/odsEaJaxUmrvnoOoRmq3Q2B+PL4c5481d/h
         2BOQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5iBNfbxnFvz5HIbnRE3vmhaGekqjM0PwcW+YMY4te1L7+PAovmv64Myk/s9H9ReTA/oHh+iWIB4Q0@vger.kernel.org
X-Gm-Message-State: AOJu0YzN1QEnPn/4zpdC6zv9qD8+BvZWxL2ejCaXHHpogyRNVCjwl7Oi
	xv0ILYARWY5tOQxOlALWKJ+LlH6wGbg4i6pMlDA+Gd9DFDOA52Wa1RuC
X-Gm-Gg: ASbGnctB0r9KK9/HUHB227SPStnnpuNcxsabkft4WAlZOFdWw5BVfxwBzOTzsrl1ZZY
	HBvS1wU7aTR/nkb2+Lz0CiFrfKVExGxjP1wH3QhIWNyzeJXHFgAFhCYKIHld9EM73SetNCJWFOg
	I6h9I+8TZRtzzC/d1ZvkJAR5enOYeCgKXNkAgRSw5JKfbyWOVLtCu3LPJocxLvVN4sIDfePNdWl
	FXMGsktpjSKFt0pxJ370oyOVjHds+cfFiGZEwEBpRikl3jwJxGqgfknlcAQbgMm4V8jPvdjALvG
	B0tTIMuwuf2uug/EKZc+OfvZldS36+LplDKtaM3qOz7JXfFLc5sPf4oHXfM1lOMyHYArfEy8Dc/
	j48oujHR6Kq/tQfWP9I3Vcvmm+Wf4n8yJYiLkmi+QAoUyH+xOPSN1JG7VfyRuUQj7d2/kCZajdm
	Os2JNvgJ4vFTb/
X-Google-Smtp-Source: AGHT+IGPgJpaXpS+qGfCVwjy5qKW3g9pioh78AOdOiTvXDrTwpjB0TQBFCGFxXT+WLbv0GqTWaiN5w==
X-Received: by 2002:a05:6a00:3926:b0:7a2:8111:780a with SMTP id d2e1a72fcca58-7a441bbe4a5mr4578185b3a.2.1761665433210;
        Tue, 28 Oct 2025 08:30:33 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414011acdsm11958328b3a.13.2025.10.28.08.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:30:32 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 28 Oct 2025 08:30:31 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Frank Li <Frank.Li@nxp.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i3c@lists.infradead.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-iio@vger.kernel.org, joshua.yeong@starfivetech.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/5] i3c: Add HDR API support
Message-ID: <c0ee9047-691c-4f5d-a273-333a6bbcd5a8@roeck-us.net>
References: <20251027-i3c_ddr-v7-0-866a0ff7fc46@nxp.com>
 <20251027-i3c_ddr-v7-1-866a0ff7fc46@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251027-i3c_ddr-v7-1-866a0ff7fc46@nxp.com>

On Mon, Oct 27, 2025 at 04:08:29PM -0400, Frank Li wrote:
> Rename struct i3c_priv_xfer to struct i3c_xfer, since private xfer in the
> I3C spec refers only to SDR transfers. Ref: i3c spec ver1.2, section 3,
> Technical Overview.
> 
> i3c_xfer will be used for both SDR and HDR.
> 
> Rename enum i3c_hdr_mode to i3c_xfer_mode. Previous definition need match
> CCC GET_CAP1 bit position. Use 31 as SDR transfer mode.
> 
> Add i3c_device_do_xfers() with an xfer mode argument, while keeping
> i3c_device_do_priv_xfers() as a wrapper that calls i3c_device_do_xfers()
> with I3C_SDR for backward compatibility.
> 
> Introduce a 'cmd' field in struct i3c_xfer as an anonymous union with
> 'rnw', since HDR mode uses read/write commands instead of the SDR address
> bit.
> 
> Add .i3c_xfers() callback for master controllers. If not implemented, fall
> back to SDR with .priv_xfers(). The .priv_xfers() API can be removed once
> all controllers switch to .i3c_xfers().
> 
> Add 'mode_mask' bitmask to advertise controller capability.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Why not add hdr mode in struct i3c_priv_xfer because mode can't be mixed in
> one i3c transfer. for example, can't send a HDR follow one SDR between
> START and STOP.
> 
> i3c_priv_xfer should be treat as whole i3c transactions. If user want send
> HDR follow SDR, should be call i3c_device_do_priv_xfers_mode() twice,
> instead put into a big i3c_priv_xfer[n].
> 
> change in v7
> - explicit set enum I3C_HDR_* to value, which spec required.
> - add comments about check priv_xfers and i3c_xfers
> 
> change in v5-v6
> - none
> 
> change in v4
> - Rename enum i3c_hdr_mode to i3c_xfer_mode.
> 
> change in v3
> - Add Depreciated comment for priv_xfers.

Deprecated

> 
> change in v2
> - don't use 'priv_' since it is refer to sdr mode transfer in spec.
> - add 'mode_mask' indicate controller's capibility.
> - add helper function to check master's supported transfer mode.
> ---
...
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -2821,10 +2821,14 @@ EXPORT_SYMBOL_GPL(i3c_generic_ibi_recycle_slot);
>  
>  static int i3c_master_check_ops(const struct i3c_master_controller_ops *ops)
>  {
> -	if (!ops || !ops->bus_init || !ops->priv_xfers ||
> +	if (!ops || !ops->bus_init ||
>  	    !ops->send_ccc_cmd || !ops->do_daa || !ops->i2c_xfers)
>  		return -EINVAL;
>  
> +	/* Must provide one of priv_xfers (SDR only) or i3c_xfers (all modes) */
> +	if (!ops->priv_xfers && !ops->i3c_xfers)
> +		return -EINVAL;
> +
>  	if (ops->request_ibi &&
>  	    (!ops->enable_ibi || !ops->disable_ibi || !ops->free_ibi ||
>  	     !ops->recycle_ibi_slot))
> @@ -3014,9 +3018,8 @@ int i3c_dev_setdasa_locked(struct i3c_dev_desc *dev)
>  						dev->boardinfo->init_dyn_addr);
>  }
>  
> -int i3c_dev_do_priv_xfers_locked(struct i3c_dev_desc *dev,
> -				 struct i3c_priv_xfer *xfers,
> -				 int nxfers)
> +int i3c_dev_do_xfers_locked(struct i3c_dev_desc *dev, struct i3c_xfer *xfers,
> +			    int nxfers, enum i3c_xfer_mode mode)
>  {
>  	struct i3c_master_controller *master;
>  
> @@ -3027,9 +3030,18 @@ int i3c_dev_do_priv_xfers_locked(struct i3c_dev_desc *dev,
>  	if (!master || !xfers)
>  		return -EINVAL;
>  
> +	if (mode != I3C_SDR && !(master->this->info.hdr_cap & BIT(mode)))
> +		return -EOPNOTSUPP;
> +
> +	if (master->ops->i3c_xfers)
> +		return master->ops->i3c_xfers(dev, xfers, nxfers, mode);
> +
>  	if (!master->ops->priv_xfers)
>  		return -EOPNOTSUPP;

i3c_master_check_ops() already ensures that either i3c_xfers or priv_xfers
is not NULL. The above check is therefore unnecessary.

That is not a new issue, though. Maybe there was/is a reason for the
additional check, but I don't see it.

>  
> +	if (mode != I3C_SDR)
> +		return -EINVAL;
> +
>  	return master->ops->priv_xfers(dev, xfers, nxfers);
>  }
>  
...
> diff --git a/include/linux/i3c/master.h b/include/linux/i3c/master.h
> index c52a82dd79a63436c1de6a01c11df9e295c1660e..7e22f9d2a2ca3f4ab808db50f809efd192c795cd 100644
> --- a/include/linux/i3c/master.h
> +++ b/include/linux/i3c/master.h
> @@ -474,9 +474,13 @@ struct i3c_master_controller_ops {
>  				 const struct i3c_ccc_cmd *cmd);
>  	int (*send_ccc_cmd)(struct i3c_master_controller *master,
>  			    struct i3c_ccc_cmd *cmd);
> +	/* Depreciated, please use i3c_xfers() */

Deprecated

