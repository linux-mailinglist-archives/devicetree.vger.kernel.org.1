Return-Path: <devicetree+bounces-161471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5261FA74471
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:43:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FC8C189FFB9
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 07:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D95E211A20;
	Fri, 28 Mar 2025 07:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="SamfyIl/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D329F21146D
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 07:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743147821; cv=none; b=AHH4ayDlzq31AeuxN9bRXys5vwficLh3xspWV88xUGgRUS/VUTTawvr5Yeq+ZJIDBwSd2/Kl9HMmyG+kpS5+eC7fbfCmXdGL3pOZUmq4YgzsX3rf74eNRu2x/KCcL1nmulESeU2fSTsSFvb9ZXGwl2cA5d7ZyLgpCx2ot68g41c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743147821; c=relaxed/simple;
	bh=GUwHGHtcekuJHk1xhCjyFJJsexDTEJVvMOtVROHgMUg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VTGDn8M6uiTYoDl5yGqukG+xLKs9kVASCdfl3PPwArI3WJrJuiqLK6mGYo3LSIqUZL7RRmgKNnXaZopm8FkeaYRBKKWJYkjY2pO7Hgbn2zeK79NifwyEe6IBWYC1O4hg1XTvcdaXwQzbHL7CRjE6tED9XayigxKDzxalhfk/eRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=SamfyIl/; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-301493f461eso2265503a91.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 00:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743147819; x=1743752619; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EhPsI/ZEvgNXitJgR9ckQ3y8+qZ9nTwox9jyo4rmDzU=;
        b=SamfyIl/T1QsiyCwCTcn2AxfXxPBDJcVehgo7JvRz2QXvultucq5fQAm2kRS9zEA44
         yQ1iYpuFYcHo+8BbBYoxuhXzkViHLZ8rjmitzuY+yS8USvZ5nsGn0tv1hywYVtC96eMl
         64/df5pRZcfcvoSt7j6aaSQCMVzGQngL0C9y/zHQ1ZveGYaxCXGaiikkAIf2RaSpQfnD
         uSnmHpNnIehG+H5USYAnez9i8LUr9r6hJT+7poEPNAW9dh2/yE9SwwEXztL+ldlBl2XG
         FHAXjPf4OEO60qKhgwRB0vgKyjB+xlaXiInc+1nyet3QEmT6OIUpa9m8E+g3o4JGMBUL
         OC0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743147819; x=1743752619;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EhPsI/ZEvgNXitJgR9ckQ3y8+qZ9nTwox9jyo4rmDzU=;
        b=IViYQghY6TK8xBkGdz9+k4wJawGQR+ndVYNmfol92jreRA188SnhJiwoXbXYBHfn1t
         d0T+cTeXMG24mWPUMeHLwAC0KLW7INljlRzH1n170UJa/rR+Ig/+D5eshVgF4Zqrl+qU
         PbN9zgV69XdKi5LW7nYmEBSl2NStO/xdjX8EyqaSMGWpOU6qai2WZIJKQp/r9rDSLEWO
         CHjUF83fJvb6C2P8sX950ZQxvWhQbxywrqJNXVJHkzHCXHaOSCpv09tCCNpi1FlzI5F2
         UbYpMkEy3jPqbH+rseefKUZL/pIRHBHqfbqAIpKzSBsSAjQrQuu8PZu4TmvrFsbJA4nF
         CwKA==
X-Forwarded-Encrypted: i=1; AJvYcCWOYkSJnbPwiFUpHJRyTP+pfCmhgUFM8K5wmY/yI5XoBQYYpFHQNfILyZfqmiNWykGPjq8MJ+DIJVRd@vger.kernel.org
X-Gm-Message-State: AOJu0YyXBgM5PawOI+pDmG9c9UDZEJljc6KiO7CnOYcRWaq2KmyY9OVj
	+DFIcbsXXe0ONB/Lc9bbO5K+UMz6sTT3GmmRTk/OKg/Ys+9S8cigtbKOZjnH5WuheWG0bd1RH+p
	VYlz2XIIXyM0GXCP22rWRu0SSHeUg6Q4JbwK3jckSy7d04su/n0ClnnA=
X-Gm-Gg: ASbGnctokiC4Hm6IkeR5KZi1TUnMaREI+/LcOTK8/otoIHK9EjZrmZrucrdGjFIopv3
	L7kKGpLU1Vhd7QBOCELPqo/UIywlLz0lUOrApXei6d9vdIFNKJcs72hnrG/85Eynw8n+J4lrT8z
	COwha+1m3xRHUBkxzaQuqCa/pD7D92DBjD/h/0CurwK4bVCQ1PcHDuze+U
X-Google-Smtp-Source: AGHT+IE/m0PqM3Q/R1MJGOYp2CNoRyCUvk7Z2WplHUYzJmL6YLxuW3IrkCSrOJ4naDkFdoQXHdd6i6W39PZ+itf3HRs=
X-Received: by 2002:a17:90b:1f90:b0:2ff:5357:1c7f with SMTP id
 98e67ed59e1d1-303a906c301mr10597175a91.30.1743147818760; Fri, 28 Mar 2025
 00:43:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250319005141.312805-1-quic_wcheng@quicinc.com> <20250319005141.312805-4-quic_wcheng@quicinc.com>
In-Reply-To: <20250319005141.312805-4-quic_wcheng@quicinc.com>
From: Puma Hsu <pumahsu@google.com>
Date: Fri, 28 Mar 2025 15:43:00 +0800
X-Gm-Features: AQ5f1JoscHqcjKIzzp3PhAhHjK1iWgRRVM5T75yBZmXckMY8JRIwcMocaWatiQI
Message-ID: <CAGCq0LZBDa9H6wQhvmM3twAJwM_z_XWEy=-N9mp=HA4e+9Ee0g@mail.gmail.com>
Subject: Re: [PATCH v36 03/31] usb: host: xhci-mem: Allow for interrupter
 clients to choose specific index
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: srinivas.kandagatla@linaro.org, mathias.nyman@intel.com, perex@perex.cz, 
	conor+dt@kernel.org, dmitry.torokhov@gmail.com, corbet@lwn.net, 
	broonie@kernel.org, lgirdwood@gmail.com, krzk+dt@kernel.org, 
	pierre-louis.bossart@linux.intel.com, Thinh.Nguyen@synopsys.com, 
	tiwai@suse.com, robh@kernel.org, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 19, 2025 at 8:59=E2=80=AFAM Wesley Cheng <quic_wcheng@quicinc.c=
om> wrote:
>
> Some clients may operate only on a specific XHCI interrupter instance.
> Allow for the associated class driver to request for the interrupter that
> it requires.
>
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>

Tested-by: Puma Hsu <pumahsu@google.com>

> ---
>  drivers/usb/host/xhci-mem.c       | 24 ++++++++++++++----------
>  drivers/usb/host/xhci-sideband.c  |  5 +++--
>  drivers/usb/host/xhci.h           |  2 +-
>  include/linux/usb/xhci-sideband.h |  2 +-
>  4 files changed, 19 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
> index daea0f76e844..ed36df46b140 100644
> --- a/drivers/usb/host/xhci-mem.c
> +++ b/drivers/usb/host/xhci-mem.c
> @@ -2331,14 +2331,15 @@ xhci_add_interrupter(struct xhci_hcd *xhci, struc=
t xhci_interrupter *ir,
>
>  struct xhci_interrupter *
>  xhci_create_secondary_interrupter(struct usb_hcd *hcd, unsigned int segs=
,
> -                                 u32 imod_interval)
> +                                 u32 imod_interval, unsigned int intr_nu=
m)
>  {
>         struct xhci_hcd *xhci =3D hcd_to_xhci(hcd);
>         struct xhci_interrupter *ir;
>         unsigned int i;
>         int err =3D -ENOSPC;
>
> -       if (!xhci->interrupters || xhci->max_interrupters <=3D 1)
> +       if (!xhci->interrupters || xhci->max_interrupters <=3D 1 ||
> +           intr_num >=3D xhci->max_interrupters)
>                 return NULL;
>
>         ir =3D xhci_alloc_interrupter(xhci, segs, GFP_KERNEL);
> @@ -2346,15 +2347,18 @@ xhci_create_secondary_interrupter(struct usb_hcd =
*hcd, unsigned int segs,
>                 return NULL;
>
>         spin_lock_irq(&xhci->lock);
> -
> -       /* Find available secondary interrupter, interrupter 0 is reserve=
d for primary */
> -       for (i =3D 1; i < xhci->max_interrupters; i++) {
> -               if (xhci->interrupters[i] =3D=3D NULL) {
> -                       err =3D xhci_add_interrupter(xhci, ir, i);
> -                       break;
> +       if (!intr_num) {
> +               /* Find available secondary interrupter, interrupter 0 is=
 reserved for primary */
> +               for (i =3D 1; i < xhci->max_interrupters; i++) {
> +                       if (!xhci->interrupters[i]) {
> +                               err =3D xhci_add_interrupter(xhci, ir, i)=
;
> +                               break;
> +                       }
>                 }
> +       } else {
> +               if (!xhci->interrupters[intr_num])
> +                       err =3D xhci_add_interrupter(xhci, ir, intr_num);
>         }
> -
>         spin_unlock_irq(&xhci->lock);
>
>         if (err) {
> @@ -2370,7 +2374,7 @@ xhci_create_secondary_interrupter(struct usb_hcd *h=
cd, unsigned int segs,
>                           i, imod_interval);
>
>         xhci_dbg(xhci, "Add secondary interrupter %d, max interrupters %d=
\n",
> -                i, xhci->max_interrupters);
> +                ir->intr_num, xhci->max_interrupters);
>
>         return ir;
>  }
> diff --git a/drivers/usb/host/xhci-sideband.c b/drivers/usb/host/xhci-sid=
eband.c
> index 19c58ae60414..742bbc6c2d9b 100644
> --- a/drivers/usb/host/xhci-sideband.c
> +++ b/drivers/usb/host/xhci-sideband.c
> @@ -259,7 +259,7 @@ EXPORT_SYMBOL_GPL(xhci_sideband_get_event_buffer);
>   */
>  int
>  xhci_sideband_create_interrupter(struct xhci_sideband *sb, int num_seg,
> -                                bool ip_autoclear, u32 imod_interval)
> +                                bool ip_autoclear, u32 imod_interval, in=
t intr_num)
>  {
>         int ret =3D 0;
>
> @@ -273,7 +273,8 @@ xhci_sideband_create_interrupter(struct xhci_sideband=
 *sb, int num_seg,
>         }
>
>         sb->ir =3D xhci_create_secondary_interrupter(xhci_to_hcd(sb->xhci=
),
> -                                                  num_seg, imod_interval=
);
> +                                                  num_seg, imod_interval=
,
> +                                                  intr_num);
>         if (!sb->ir) {
>                 ret =3D -ENOMEM;
>                 goto out;
> diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
> index 3fa8669e3b2d..7eaabe4f6c87 100644
> --- a/drivers/usb/host/xhci.h
> +++ b/drivers/usb/host/xhci.h
> @@ -1853,7 +1853,7 @@ void xhci_free_container_ctx(struct xhci_hcd *xhci,
>                 struct xhci_container_ctx *ctx);
>  struct xhci_interrupter *
>  xhci_create_secondary_interrupter(struct usb_hcd *hcd, unsigned int segs=
,
> -                                 u32 imod_interval);
> +                                 u32 imod_interval, unsigned int intr_nu=
m);
>  void xhci_remove_secondary_interrupter(struct usb_hcd
>                                        *hcd, struct xhci_interrupter *ir)=
;
>  void xhci_skip_sec_intr_events(struct xhci_hcd *xhci,
> diff --git a/include/linux/usb/xhci-sideband.h b/include/linux/usb/xhci-s=
ideband.h
> index 4b382af892fa..f8722afb8a2d 100644
> --- a/include/linux/usb/xhci-sideband.h
> +++ b/include/linux/usb/xhci-sideband.h
> @@ -66,7 +66,7 @@ struct sg_table *
>  xhci_sideband_get_event_buffer(struct xhci_sideband *sb);
>  int
>  xhci_sideband_create_interrupter(struct xhci_sideband *sb, int num_seg,
> -                                bool ip_autoclear, u32 imod_interval);
> +                                bool ip_autoclear, u32 imod_interval, in=
t intr_num);
>  void
>  xhci_sideband_remove_interrupter(struct xhci_sideband *sb);
>  int
>

