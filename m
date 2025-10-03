Return-Path: <devicetree+bounces-223561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B57C4BB7DDD
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 20:16:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A7D104E61D7
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 18:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5032DA77E;
	Fri,  3 Oct 2025 18:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HTogVdCm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826961F4CBC
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 18:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759515365; cv=none; b=Ln6ojcHgJAVJxOyKXfDmlKzgU9BxrnWr9h5Of1bxh/crPNrxEjb9FsRC/79t15528oHxGyb2TxfSC7n5Be1AzEj1o6y8pPf6gAcBMXTrB6i44v17mYMgCvkrzrpsEiyksQHMTOix78yaEXL72HS6ZDwMBVsjoOPxEj+D2xMCW3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759515365; c=relaxed/simple;
	bh=DWENI6DuXEJ8v7lUaZGvnNMdfDIGbQfCAclwdMGY22A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qI3eEDMzUWFrNbBprv1dIq0diQuy34oAk+PoFA4bjeLNGKK9vNK91NPCRkYXHc8dEoejqi+MIq4bE9Cv7gpErQ5SNSTlPr9zktEKWWyol8RUCSqO2+aqJ6f+ORf+A2kvM3eE+JwgOiW3zF7bzzYg+ly+z0y4XYFXm2TQpbu1Yak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HTogVdCm; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-72ce9790ab3so30160597b3.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 11:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759515362; x=1760120162; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hA+2wesaVrYL13Ek9PytzgyCt01NNN1W3ZjSk7cfKyA=;
        b=HTogVdCmeZbs/su7w+K8BnsdCVVsoGvhgVN4YfVlUSieWK5p1PQoMiWEUCj9h+saV0
         SPZaf0LHkxsB8FG5ryuriE9z8L/dRF8g+2JInPpb1LTrl425ozWfdkYImxz3Yc3xG5Bc
         bET4Dca9yz11TGw/u6Gvlb5vISzWzJ7tiLS0cVTIkhzrSkI/F9QtoyQWrHxIkGDgD4xh
         cC3ILjpy0tbWT2UdavsL5I9XVgHWGAgKX5JA7XsQX81GdGgMNc5eTsUOG/aLcqUuYEa4
         ILfZmClWS5pOUXFKMKMHfJdt73VMZH+qm6zOuiIhPNWIWbmCp3d+NbdkIkNkBLtgmp+d
         6Frw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759515362; x=1760120162;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hA+2wesaVrYL13Ek9PytzgyCt01NNN1W3ZjSk7cfKyA=;
        b=vB8rak2LaQrtgQhvitoOOIRej61rnUFwwbGoPDjbD7l5j0kizkg98astbiiyI6ePvG
         P63mXLhn0I7c3tQxc4AqPo21LoODq3AOqFYeDFRSEqJT4ihWNT0Rxlfl+XTCRbJl9s3S
         6SQDyz1ii523IXQxXSdB9N7fc2QyPHiY1aavxPsJd/nj/7GIfKLmHCQsW3dEpWZjqmim
         yo0U/KsViM/v9vBSaYK58L/pNkvQPc1KP4KhIgLbMxP5CyTLmAlWt/CCHUzB2EmLc8DX
         4CvaXpNjFWHWCtwy/kee9O0L5FLrmlxKBHCA7HClUkv8euJxxeza+pccghttRKiSBXSA
         R9kA==
X-Forwarded-Encrypted: i=1; AJvYcCV0Mp13HD25oeJOKHOCS74Ete0U9TQRjGDnn0hMOjp7V6eNbKYKHyiAqCJHR9+qQwYgXOzqLY+dx9Ar@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq58lM22Oz1NedDQeFud6+klWRcD9YJF+FAYl+AkLwD1Suw44G
	2s0qlthbneLLB/YZYiOZ1pAWtsXPKPLhTTbVqlxzPoI1bg0rIf3uQ4Bbr921Kb4sBXOwsH0+WEn
	v/duPMaQe6YflwwxsYaiHl1Q9rRH4pqg=
X-Gm-Gg: ASbGncu2E00lLmw8yK05QJEQwQqBu+VvKUDJmRc5aPSzPhLUsb8TdQGUJb3xf7M+1kC
	kuJgbGzRZmM5UFbkYekHrdG7n5JcdGEjPi2sz7pDGHsq80d8dF3dt8p6GGsEh/wGM9wSrP8uxt+
	btf7F6Iky2xkcsBEJr4LZr78zgUYXOR3/0nCwMo6qnSQgXC1T4D2ZO20wQDqiRbjSgk/i65TlQL
	pYL9W2YmxecyYNI/ZyZ5Fti9J3kBQtKXVLK0F7q9ZmXcEkWf7VrruVx464/vTmHBNknI9tDv/FO
	6nM6JCDckbdXLOVAhGgZrurBHTJbkJqN
X-Google-Smtp-Source: AGHT+IHcaFQJqVTztaB0e9RyZeNiAagOyj3g8KNYxpfdC0wTuijqki+QAQ/mSLPGzCBtgMgInYIWdXqQgPlyAlcpaNk=
X-Received: by 2002:a05:690e:28d:b0:604:3849:89a8 with SMTP id
 956f58d0204a3-63b9a076118mr3027885d50.16.1759515362277; Fri, 03 Oct 2025
 11:16:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929-mt8196-gpufreq-v5-0-3056e5ecf765@collabora.com> <20250929-mt8196-gpufreq-v5-4-3056e5ecf765@collabora.com>
In-Reply-To: <20250929-mt8196-gpufreq-v5-4-3056e5ecf765@collabora.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Fri, 3 Oct 2025 11:15:51 -0700
X-Gm-Features: AS18NWBanN0MXtcDFrnukKn4J7dSEQIT7fLhFbzGJzYOporRHK4S0vyKzeHBSFc
Message-ID: <CAPaKu7Tz9tw=fbz17kpPn1Pj_YsGRJZR9o28zkfiBgvxL3rdxg@mail.gmail.com>
Subject: Re: [PATCH v5 4/7] mailbox: add MediaTek GPUEB IPI mailbox
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Chen-Yu Tsai <wenst@chromium.org>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-hardening@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 29, 2025 at 12:47=E2=80=AFAM Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> The MT8196 SoC uses an embedded MCU to control frequencies and power of
> the GPU. This controller is referred to as "GPUEB".
>
> It communicates to the application processor, among other ways, through
> a mailbox.
>
> The mailbox exposes one interrupt, which appears to only be fired when a
> response is received, rather than a transaction is completed. For us,
> this means we unfortunately need to poll for txdone.
>
> The mailbox also requires the EB clock to be on when touching any of the
> mailbox registers.
>
> Add a simple driver for it based on the common mailbox framework.
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Chia-I Wu <olvaffe@gmail.com>
> ---
>  drivers/mailbox/Kconfig             |  10 ++
>  drivers/mailbox/Makefile            |   2 +
>  drivers/mailbox/mtk-gpueb-mailbox.c | 318 ++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 330 insertions(+)
[...]
> +static irqreturn_t mtk_gpueb_mbox_thread(int irq, void *data)
> +{
> +       struct mtk_gpueb_mbox_chan *ch =3D data;
> +       u8 buf[GPUEB_MBOX_MAX_RX_SIZE] =3D {};
nit: move to inside the if-block below.
> +       int status;
> +
> +       status =3D atomic_cmpxchg(&ch->rx_status, GPUEB_MBOX_FULL | GPUEB=
_MBOX_BLOCKED,
> +                               GPUEB_MBOX_FULL);
> +       if (status =3D=3D (GPUEB_MBOX_FULL | GPUEB_MBOX_BLOCKED)) {
> +               mtk_gpueb_mbox_read_rx(buf, ch);
> +               writel(BIT(ch->num), ch->ebm->mbox_ctl + GPUEB_MBOX_CTL_I=
RQ_CLR);
> +               mbox_chan_received_data(&ch->ebm->mbox.chans[ch->num], bu=
f);
> +               atomic_set(&ch->rx_status, 0);
> +               return IRQ_HANDLED;
> +       }
> +
> +       return IRQ_NONE;
> +}

