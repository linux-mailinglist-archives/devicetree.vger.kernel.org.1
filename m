Return-Path: <devicetree+bounces-264798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NnQCE6fjGmPrgAAu9opvQ
	(envelope-from <devicetree+bounces-264798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 16:25:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 850341259D2
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 16:25:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60195303B4F7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 15:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9882DEA8F;
	Wed, 11 Feb 2026 15:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cr1D1YC4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2998E2DC333
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 15:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770823322; cv=pass; b=Yr8EOJLQ1ASORNz3jHvvEkXRhuHYU4f6Za5IA3qCTbdlGnVsN7/SUUey35pd0oi5nFbUTROZJ+E5WF0ZFN8598mgNvxb58vQRwTQNvh0nn5xr9d6EPsUdtdwrY1ajoUC8yZyz11LjaXjLJ/vpP/C4xvJprYSmCkdQxB5JzERaGk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770823322; c=relaxed/simple;
	bh=jKgnH55cP6rygXD28uxPooGQFmgnbRJFPJU7uSCkyCM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YNnr+uk/lW43bNMVYn0YaqDfGnKWoRoksg8dAUcL/lG86/BqMmxUU4rcMjEiDeYIlwAEQKRgnz833ojjBK2J2fvYY8az/cS9l0VBvgfVqrjEst6KK8g0nsQL9sJfowU+ti+/OBPtDu4gBj0CktdQqI8amjtW/ReThXl+d2qEZ6A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cr1D1YC4; arc=pass smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59de0b7c28aso2261600e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 07:21:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770823318; cv=none;
        d=google.com; s=arc-20240605;
        b=DIOh/AI53Wb/WLGjaEHuBdQwqEaj+MuZjOAHGj0AxBguF5JiNALTFsYwO4wtNPTF6i
         fy8JeoF8hdHrMCFiXsIZveeKcfE4a6u3iQ5d5Nao/r4rkoeUaHXq+r9WD8kl96Yn5Ce3
         G7m/0Tr4Zr0Ccbwu8C93ojFotdb2e4PLsQs1zgCOjM6ZKCi9jolvW6LD1YlS3wLQIWRX
         L4BsbRCXUZC4OlHwmrlGCMESkrT0L6gjSvXtMqGYDEjcG7wfV62+7M/Qqo9+QJJDkZuZ
         LzBbjjMd1tC7GnrUEiFk/BaLaAjfkSOTeHQ9sSk9jNDgEmuLMnfg2xVFguiePlFAoRoc
         KFjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=D8tEaQ6SYPSExfheur4wSJ9KP74RCbKGRXJfEtk6eHc=;
        fh=XouxeT13BEVpMmEL5sK7BsWTRWI4oJq+6fZCmJfI6cI=;
        b=gHJRtmmuJF506WGZZM+Xf8AofCanpulKlVkIMZodl6k8rR5Ll1N0oV4/MOyPyzWBB5
         2K3FhNIFPVMx+ty4iZpTjyhw3vScGIntA/KAOIQ5ScSwmDSOLKuVWDtu2fnYTiB3XrGT
         LAHeVQBrL1fIAXx282jT/wcx60PXKFvmVSX3bpFR7b/7omuskvLbTXMX7lOLVfsbk1FF
         UPfwwTDWc5f0IiNbXtBfuF5FT1oWXKkCYWipZVx4Njcfx825bqQweI4NW63i3sCyLUJE
         8i3dSccfbX8N4lyG5rJOKNH8ZVEQKl8fhItajRkBKf84WcXt0RcNjGu/yZvzK72nHhnv
         DjOQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770823318; x=1771428118; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D8tEaQ6SYPSExfheur4wSJ9KP74RCbKGRXJfEtk6eHc=;
        b=Cr1D1YC4J51agWTPL3i2QI3a3E5aaDqXAbF2wi8RF4s3N+Xzy4Ze/Ly/z6TihKlccb
         OaOVvyXVjAoKjFETbl1jcmIb+Bt8raHH0pAla3QWpUlVcrfM5CxmY0NrWNLlZh4mRMMO
         lAtdulLRC2DOvb1kqlEUgxpwEBkMYJh89Ds6k7Jhm2RpS9f1Wt7fag9dsXf0YpCVl35b
         iWOPwjwiOyBjKBkQtf1rA22IZ32ni7b+lpEKMauXFbk4pQBQ6xnR0YLKwIhCvesZ00N3
         NOc+0MakQtxK8EzudQ9QkA/OBspcxIrQNXDbXFFTfBRWMYQpSd3MM534CNdzXPDhTn+b
         Ojcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770823318; x=1771428118;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D8tEaQ6SYPSExfheur4wSJ9KP74RCbKGRXJfEtk6eHc=;
        b=Jb4CjYgUWcQZP/0JQEiwo9t50IJ8nABkWu1o8uhN2K21wNoQTHlm+l3uoZ4otfC/77
         91QO8ivCzOa9i6d9+mpJ37ECWtAtsIs2x4Fh1S4dWMFin/U46aFFckE2TLP85ThOAo4U
         ja5dPwN+kIvTIwVlUC49ENfT4IJZT8nQ6lmqHZD7rP9q+9e2cC0S0eGgBDg6SD9LPLIO
         ViusV4cwFbpSwdrpogMuE+sjmYexpED0E4wd/LmXhRcq5OtXBxuptjf87hu3ty3UYBRC
         YJEVx5l2mfvUHSPWiat1g2gBdYfzcJo6WzoSEMHI3+lZIOikl54wK3HEQtzLkp1JRu8f
         +TcA==
X-Forwarded-Encrypted: i=1; AJvYcCUz/ay1qodq3NMJo5mbXsjgGn9AASI2Bt7nnvsESQMMXcu9fnwqmgBf5KhZU7lSCnFFZNxdUMmwmtP2@vger.kernel.org
X-Gm-Message-State: AOJu0YzrtdXzVeUvf9l9Q5ihEeNJdvea6WqzkcXsMcoa6HIFYJc1opy5
	iiCGXnLjAqIW80adp7dmbDCu6ypf7NmdjydK4RLr0YchhP/UamMokJbi8YY4nnPukuwIT9mM7tk
	pv1sAdYKni2v6RsM+HB44vnohNG7ZR60vcFBqSbqnSw==
X-Gm-Gg: AZuq6aL7Y0Qw7NG2HIlzdmzplI+KHJ3U+c8dvMG/bBINgmMwOZlL02OJIXaQEba9YQ+
	HXc3R0Z5Bp60ZIihsImRHlJpfL9bFhsyjfVFg5iYACzn1ZQ8w+Fud6FU7hdivIElq2su1RSUij7
	2/nXe+Vbz1YNC0G9A9zoYDW8IQsL9MFpkgGwPewn6wWqpCLyWJMhkSrtiLVl2hy9B3VVOiN+FR0
	qMguZwuNHyTyaKGSWatO1pEJfD3Km01hWlc376sWA3G/BZbLrraGQZ6nI6/gt0iPfmsNDICj5Hp
	f1oQiX5a
X-Received: by 2002:a05:6512:15a9:b0:59d:e5dd:2bf8 with SMTP id
 2adb3069b0e04-59e45043c8bmr6830204e87.4.1770823318175; Wed, 11 Feb 2026
 07:21:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206-imx8mm_gpu_power_domain-v4-1-52fb603da502@nxp.com>
In-Reply-To: <20260206-imx8mm_gpu_power_domain-v4-1-52fb603da502@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 11 Feb 2026 16:21:21 +0100
X-Gm-Features: AZwV_Qh6uuJ5R6yExA5NxdnwgpEPG3g1Bp9Nwj2TBDZ8Mr0Gl4mQPg_5pQZVBWI
Message-ID: <CAPDyKFqkXBa=9qW0rd4=Cf2gjVAVDw3No5DbnSQ4OFuze00Yfg@mail.gmail.com>
Subject: Re: [PATCH v4] pmdomain: imx: gpcv2: Fix the imx8mm gpu hang due to
 wrong adb400 reset
To: Jacky Bai <ping.bai@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-pm@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, stable@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264798-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,linuxfoundation.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,nxp.com:email,pengutronix.de:email]
X-Rspamd-Queue-Id: 850341259D2
X-Rspamd-Action: no action

On Fri, 6 Feb 2026 at 15:42, Jacky Bai <ping.bai@nxp.com> wrote:
>
> On i.MX8MM, the GPUMIX, GPU2D, and GPU3D blocks share a common reset
> domain. Due to this hardware limitation, powering off/on GPU2D or GPU3D
> also triggers a reset of the GPUMIX domain, including its ADB400 port.
> However, the ADB400 interface must always be placed into power=E2=80=91do=
wn mode
> before being reset.
>
> Currently the GPUMIX and GPU2D/3D power domains rely on runtime PM to
> handle dependency ordering. In some corner cases, the GPUMIX power off
> sequence is skipped, leaving the ADB400 port active when GPU2D/3D reset.
> This causes the GPUMIX ADB400 port to be reset while still active,
> leading to unpredictable bus behavior and GPU hangs.
>
> To avoid this, refine the power=E2=80=91domain control logic so that the =
GPUMIX
> ADB400 port is explicitly powered down and powered up as part of the GPU
> power domain on/off sequence. This ensures proper ordering and prevents
> incorrect ADB400 reset.
>
> Fixes: 055467378bf1 ("driver core: Enable fw_devlink=3Drpm by default")
> Cc: stable@vger.kernel.org
> Suggested-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

This doesn't apply cleanly on my next branch, can you please rebase
and re-submit a new version?

Kind regards
Uffe

> ---
> Changes in v4:
> - Add the Fixes tag
> - Link to v3: https://lore.kernel.org/r/20260123-imx8mm_gpu_power_domain-=
v3-1-3752618050c9@nxp.com
>
> Changes in v3:
> - Fix the Suggested-by tag typo
> - Link to v2: https://lore.kernel.org/r/20260120-imx8mm_gpu_power_domain-=
v2-1-be10fd018108@nxp.com
>
> Changes in v2:
> - add prefix to patch subject as suggested by Krzysztof
> - refine the patch to move the GPUMIX ADB400 into GPU power domain
> - Link to v1: https://lore.kernel.org/r/20260119-imx8mm_gpu_power_domain-=
v1-0-34d81c766916@nxp.com
> ---
>  drivers/pmdomain/imx/gpcv2.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/pmdomain/imx/gpcv2.c b/drivers/pmdomain/imx/gpcv2.c
> index b7cea89140ee8923f32486eab953c0e1a36bf06d..a829f8da5be70d0392276bd13=
5fb7fc1bbf10496 100644
> --- a/drivers/pmdomain/imx/gpcv2.c
> +++ b/drivers/pmdomain/imx/gpcv2.c
> @@ -165,13 +165,11 @@
>  #define IMX8M_VPU_HSK_PWRDNREQN                        BIT(5)
>  #define IMX8M_DISP_HSK_PWRDNREQN               BIT(4)
>
> -#define IMX8MM_GPUMIX_HSK_PWRDNACKN            BIT(29)
> -#define IMX8MM_GPU_HSK_PWRDNACKN               (BIT(27) | BIT(28))
> +#define IMX8MM_GPU_HSK_PWRDNACKN               GENMASK(29, 27)
>  #define IMX8MM_VPUMIX_HSK_PWRDNACKN            BIT(26)
>  #define IMX8MM_DISPMIX_HSK_PWRDNACKN           BIT(25)
>  #define IMX8MM_HSIO_HSK_PWRDNACKN              (BIT(23) | BIT(24))
> -#define IMX8MM_GPUMIX_HSK_PWRDNREQN            BIT(11)
> -#define IMX8MM_GPU_HSK_PWRDNREQN               (BIT(9) | BIT(10))
> +#define IMX8MM_GPU_HSK_PWRDNREQN               GENMASK(11, 9)
>  #define IMX8MM_VPUMIX_HSK_PWRDNREQN            BIT(8)
>  #define IMX8MM_DISPMIX_HSK_PWRDNREQN           BIT(7)
>  #define IMX8MM_HSIO_HSK_PWRDNREQN              (BIT(5) | BIT(6))
> @@ -794,8 +792,6 @@ static const struct imx_pgc_domain imx8mm_pgc_domains=
[] =3D {
>                 .bits  =3D {
>                         .pxx =3D IMX8MM_GPUMIX_SW_Pxx_REQ,
>                         .map =3D IMX8MM_GPUMIX_A53_DOMAIN,
> -                       .hskreq =3D IMX8MM_GPUMIX_HSK_PWRDNREQN,
> -                       .hskack =3D IMX8MM_GPUMIX_HSK_PWRDNACKN,
>                 },
>                 .pgc   =3D BIT(IMX8MM_PGC_GPUMIX),
>                 .keep_clocks =3D true,
>
> ---
> base-commit: 0f853ca2a798ead9d24d39cad99b0966815c582a
> change-id: 20260113-imx8mm_gpu_power_domain-56c22ce012a1
>
> Best regards,
> --
> Jacky Bai <ping.bai@nxp.com>
>

