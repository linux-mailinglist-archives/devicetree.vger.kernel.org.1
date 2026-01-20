Return-Path: <devicetree+bounces-257411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB6OE6RacWnLGAAAu9opvQ
	(envelope-from <devicetree+bounces-257411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:00:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0375F338
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DEBD66C155D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC9C42315A;
	Tue, 20 Jan 2026 12:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b="S6/lUwie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ACEF3D3D17
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913764; cv=pass; b=cvl/0ARHgGHn3GfS1C0D6ndakGzDYRuNivYEMaHmPd0jUFYQDhTF+Fe7TgU4H9sYBYpMy47ARsfF3iqcI1A5OAyCNWQzZ7HwyPhNsFt0hgpwOpL65oavEcvq1rSHJJPkC+nuUwx4nLakz1uvF6yUkuIZKkJlD2iokoEkgW5PqYk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913764; c=relaxed/simple;
	bh=JdvXIE7d7vOjdBIjkdkTCadRaLJD/dzpk1kdKBasKBo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mQjzZBmA9L6uqxou/OWROSw7GpyadYA9hdb+4UpPKz9iXhJKvfntwtVVNdWnmj6OGjz5rvTjz0/QlXFW+BWVnyLqOt4LlLWX0PSjx83wzunSM1DkYwjwnSqIdhgWOYIVByFeL3L2CGzpDK6E7jKfiHYA1/V01v83lHx5Unj9M/M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org; spf=pass smtp.mailfrom=fooishbar.org; dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b=S6/lUwie; arc=pass smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fooishbar.org
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-894676e6863so4513216d6.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:56:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768913760; cv=none;
        d=google.com; s=arc-20240605;
        b=PvvoqjJdb2hdbbV/sxe/Ew3lqIIV8YDllmMbG0PDPX0at4Yj8bwrsQFVHvCPEs2iZ6
         UggMvchY2WIReQo7ieD65AnIoM6Na7oDdhRgRJvfgaKVKteA6pZ1pZRZH+WBvRT2dQ+O
         w/tnPKDgpsSgFPnEbEJLCBlyO0Ris05QJzTZW09LxrkRByuRt+GOPmyVFLDmpxLYoTk6
         Umg8+4QEU1UCbMvQ/M8xTSLztBzo9n6GaDu1XTaZOLB7ohMzgNQXMVnJB4Xsdi69pebf
         PjNk86X+JmRaEDgbAkzxKgJSP3tY/BLhfVhFMpw3B6tQExlCOooPNuzmLX6EIPw92FAl
         cmRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xIKhuYFw63DINEPQxv2wgmdGn5ZNASi1pTjZrRr4yhE=;
        fh=p5tuz+smvl4ECYwIYlCmByT85ibZYnb/A9DlI/3BFGU=;
        b=Yhwe+OOgAVOsqC3WSc1YxhmcsPIC8jIokCuxlnfzd3mzC/gJYeNGAtiHx6W0ITDc++
         vZkXp9cNJZnKATOEjRjMxO78cTOpbobQzaywsPSzgqhuluU30ItsFUkVeOfPEt2SwSJq
         gSeTmb+2QJ396F3fwg/J4+nwbAVhH72yo1at05AmHVpOegncTROaVFXY8Ad7rACMqmkb
         P2ZU7//fDWkisQSnsariBSFnGGtuOd1TP4pTz5AEzSSCsKVQvUmATYCZ+tfyuIeJn4zP
         zE6UagnM/wpl6yIUEOK4x3tTzoSlHAUdlvUpVC7Jz5N8YnUU2vDqVAs43UKQAaObhwy0
         2byA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1768913760; x=1769518560; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xIKhuYFw63DINEPQxv2wgmdGn5ZNASi1pTjZrRr4yhE=;
        b=S6/lUwiehgVFiK4/1ZmY11+LnCQIJHi+aRrskHGezsoCKVwQXoulOPqOTAoRdendf/
         TLp31ANKVryXw7tm7qzIRxCjQ6kPBLnk6c+gQ1bSkGOpl0iX3QC23JGU5y05sAdYPMY5
         eFr4hdNSF1tkoJW62bby8jY+L4WHG1tU6oF6//zGpLFMHf+6Mm/GI5ifPZMLlwUI7Nh3
         7tMYv6GLVMAQBfbOT8GJF98gL15Tyg3xD1ZLq56YLiv60pPxQANqv2ZhvdCOnwC05zK1
         jVySOaq0Kji+CkkdtCeAXzztPOAWEVCK/O6puD9LawE9r9b9j7J8pmLGgPvz06b6B+Ex
         d0hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768913760; x=1769518560;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIKhuYFw63DINEPQxv2wgmdGn5ZNASi1pTjZrRr4yhE=;
        b=rIFH/FjmstFl0FF4/SLTOJ0B0sCN8zCgWh5UGGCIL1reJL855CQV3j7sNdvkRmH84A
         iV9iyJgkdtbVvLtZ0nEj99yXQibX0sEmPwgb4B+3R/MsPivGnodnpIipbx8MF6N7+GTz
         0CxmWhVmM2C9SCS9qaVQHMo2DA7rX0Aw40cPsH9aPLlTdRrTroMfmFhwfztrLmlUm9Vl
         tF9mXR3y4RU9HM0iDU1ywj3QorsL52XmfrXCHuTFZuOz98Jti5eq9/yFZd8Q991LRCTy
         BGDnw8U4RQ9960mUd3aAoC4LNXPoqVBlqy9BofDnbCQ+BTvlz6pybyjLt2NebIZaAS5s
         OSRA==
X-Forwarded-Encrypted: i=1; AJvYcCWIYVRyrVGP4Lcyk7jAwumFvkBySjazeDJSXSaKswdiupyTcUwKkhj0DbFe1I7PIgAbHRN6hC2v+jp/@vger.kernel.org
X-Gm-Message-State: AOJu0YwqaATVjONb8CUlKxjrNC6R5mXe7oUnI6AqQsvK8Vh8se1kx1tq
	5/WBZADvSeerqZu7YUe/oJy01sWbu6twIpzYg6eLABBqyALHgsvT8sn8MZqUnxa9uzU2csCxrPr
	O21/u7Imyor5eLbioJ7qGQgp9Jo/uEc1HUcH3922qfA==
X-Gm-Gg: AZuq6aKpKD0qrSLZy11e5bukQe8zVXbfEQyXeJJj0Jh/+yV6Ds4Jn9nlDjXYmrDXXeN
	MOfP05GIPtQCsLIk0LCGKHVkg8ZPVqLUQnP0YT63zNtj1m7nvAzEg6XbhjiZZQX0Gr9zxpsau5d
	rQ7/qHR0/F5EvSKToVyZgw+/GFIwSa0jBLdJPMk1B8f1eG9M1tVTuOJgtBDoHHyuyAPqLESIuat
	22TmmscClOOkfSGsUDoXCA42hJFVE4T8Dr+ETBz58ayQNyEehpATmMZxfjzL717ohWpukxbR47N
	bkg=
X-Received: by 2002:a05:6214:19c5:b0:894:6dc8:924d with SMTP id
 6a1803df08f44-8946dc893a8mr4189616d6.24.1768913760251; Tue, 20 Jan 2026
 04:56:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120-cpitchen-mainline_gfx2d-v6-0-1a16cd1d70b8@microchip.com> <20260120-cpitchen-mainline_gfx2d-v6-2-1a16cd1d70b8@microchip.com>
In-Reply-To: <20260120-cpitchen-mainline_gfx2d-v6-2-1a16cd1d70b8@microchip.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 20 Jan 2026 12:55:47 +0000
X-Gm-Features: AZwV_QhsNtOa999KaX-_EQFOd0iUAVt0uZ4iVZSigcVCX1SaDa3SaynZsl9mIpQ
Message-ID: <CAPj87rPwJ_FHpzn-4wQ_3kG=iJfLbnF=KpCrOA8a59WrSW9c2Q@mail.gmail.com>
Subject: Re: [PATCH v6 2/5] drm/microchip: add a driver for the Microchip
 GFX2D GPU
To: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Russell King <linux@armlinux.org.uk>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DATE_IN_PAST(1.00)[34];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257411-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[fooishbar.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[fooishbar.org:+];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@fooishbar.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,microchip.com,bootlin.com,tuxon.dev,armlinux.org.uk,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,mail.gmail.com:mid,fooishbar.org:dkim]
X-Rspamd-Queue-Id: BD0375F338
X-Rspamd-Action: no action

Hi Cyrille,

On Tue, 20 Jan 2026 at 12:06, Cyrille Pitchen
<cyrille.pitchen@microchip.com> wrote:
> +static int mchp_gfx2d_ioctl_alloc_buffer(struct drm_device *dev, void *data,
> +                                        struct drm_file *file_priv)
> +{
> +       struct drm_mchp_gfx2d_alloc_buffer *args = data;
> +       struct mchp_gfx2d_gem_object *gfx2d_obj;
> +       enum dma_data_direction dir;
> +       struct drm_gem_object *obj;
> +       int ret;
> +
> +       ret = to_dma_data_direction(args->direction, &dir);
> +       if (ret)
> +               return ret;
> +
> +       if (!valid_pixel_format(args->format))
> +               return -EINVAL;
> +
> +       gfx2d_obj = mchp_gfx2d_gem_create_with_handle(file_priv, dev,
> +                                                     args->size, dir,
> +                                                     &args->handle);
> +       if (IS_ERR(gfx2d_obj))
> +               return PTR_ERR(gfx2d_obj);
> +
> +       gfx2d_obj->width = args->width;
> +       gfx2d_obj->height = args->height;
> +       gfx2d_obj->stride = args->stride;

You need to validate height*stride vs. the size here. Same on the import path.

Cheers,
Daniel

