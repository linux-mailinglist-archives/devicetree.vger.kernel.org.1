Return-Path: <devicetree+bounces-216665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD95B558FC
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 00:15:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72BF317E053
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 22:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12473368095;
	Fri, 12 Sep 2025 22:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H4I8qU5z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA88836206D
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 22:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757715084; cv=none; b=Jo5zLXn0G1AYBAjNIwSklJlOPkEwGlVqZZO2aAGBkwLS39kH0i8BoIgjNQ4h71/yrExx2SVJtYKbFt+qecIitsalFcRKXUmBNCDn5BYxCoeoyhVtIDFfHyGiOcd/kgwymi7+CZSoXFds6khictopmGiYNLle0bTbIEqJ6hbIFJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757715084; c=relaxed/simple;
	bh=SbE2cgv2kQcmjvErb4P8aWuTkv80m0Jw5VHNYIRdjbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u4Z6xWPy1mSTGUfvfdpka5FarYe7eCJmAmvQYMPvQY0iyzlUXgKyy5dNb7qTODFWqXbjY5areBpIgUu32wARdUoSvIulmB4VDtIqDLA50Wu7fsXRejg5c9EN9GCZw8XktPJHx3dYUm+dyjr2f3AyFRDMB3wjYfOi/jf0EXyCwqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H4I8qU5z; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-ea0297e9cd4so1547378276.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 15:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757715081; x=1758319881; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKCZT/K4e4byUQqhyOs9c8fQ3Jbf6/69LbbDKjwZwLE=;
        b=H4I8qU5zYYIajG0cFBKg9XLkC+arvjtzsJSFXvheCL6rEFjkBDjc3hegecUkfboRZJ
         o+YKR91VOx5F4mC0NBXl1rGgTBplAfhta0YJG18OPylwKqPOunK7HTNz2EPsOewmiZ7b
         Bqxs/BsbSOTDAngNZiMnuhnORI7pSDWuf/FyvtAF5G0cFF+NNpjd7VBXJNIYdLsxy3tO
         8unUO2ooWffSDOCwop9ER6npWKnjKYm/uQ+3wcxMTLVNmoQ/tJ6Z3aQsDPRp6pM/gWsV
         f8qbeVEPO+hCJ7RRpn+rf90Ejl0TJuM2dxqhA2pdPJCfpeoHGBh8ew8oti7p0xQn2yYz
         HH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757715081; x=1758319881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKCZT/K4e4byUQqhyOs9c8fQ3Jbf6/69LbbDKjwZwLE=;
        b=sMQVsFPUZ1jrlMFAuCV8feVkS3VmSDM33EipBSluVJvQJrbXlAZyPo5kiaG9YWePqZ
         uZnlLJkZXZWWpWbCC4j/+twLrktQnqC+r2iTcs2E03+R8R/kRFbmfsarVw9vijTxzRm6
         k/4Qf9kTcDOqLE0nModgp6rVB4yuiX1/9ArMMAeH8/66VBdmTYMn6MNQbCBM6x3mqF3o
         gCGJor0w3pGy0UDCj0JY/ubO5UYK36farg3r6SserTTD7en6vWp6/m4QQl/Yv5zcJpBY
         k45l2MUTik71VHy6LtFMr3STKUKpqWV5OFTC4QzrOCXxFhy5Z1iC8f8nYkDK7QzQ6xOQ
         VRgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVnY3QDSafxTB3g46TfQp7v0JXQaMQUqRhs+Pc1YgO9FcgeSaHQWkQuvkn1bfYOQtsDREVMSU1s2r7@vger.kernel.org
X-Gm-Message-State: AOJu0YxO954C+ded4gxtzfyD3cK62ivnkCP1kxELkGLem6fyA8Hf/5Ut
	3nt2cRLhKtYCmqWNOl2k/6LUnBigXAsD72iMKZ3AhvQMk2ExuC+HSPe0iUjqKwirwsJUyyphC+f
	dO3fPf4NqeSkq0zNfggZc+VU4uGl4kEM=
X-Gm-Gg: ASbGncsOVf4aCRGizJo2ArpXWfU2OWurnNhhosHRunDWPn4FhdNQGVd3x0BL2lWqx36
	y6VkX2THqaTs+Wgym12161Us4UOI0YVWpW6mn53oVovYYBWQ9tVqch417JBGIRhe4IcN79CblBr
	mvEHjriIcMU6Q13Yd+JRNbCJioc4VkbFtfSuCPWxfedErm6oyMvIG5xY2Fv/Yna2/e3ZYxCPuE2
	hm2vQ8562HeAq+hhE02ZfMYuXWJG6kYCJDuF+k+ATiNv0TJ3n37HoYozC8XwKByQqm2t6pN
X-Google-Smtp-Source: AGHT+IHvIYQO4e+EnIIRJTQWJn4b+DyuGOUZd4hIxE3/1w0g4hnoPddMFEkakoXj6yfAPLr17VsI/RA83QQAwziujdk=
X-Received: by 2002:a05:690c:4c09:b0:723:bd6c:4f2a with SMTP id
 00721157ae682-730625cd9f7mr37664467b3.7.1757715080775; Fri, 12 Sep 2025
 15:11:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912-mt8196-gpufreq-v2-0-779a8a3729d9@collabora.com> <20250912-mt8196-gpufreq-v2-5-779a8a3729d9@collabora.com>
In-Reply-To: <20250912-mt8196-gpufreq-v2-5-779a8a3729d9@collabora.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Fri, 12 Sep 2025 15:11:10 -0700
X-Gm-Features: Ac12FXxS_5OX767ts7gHLmsyJJeyNECHrzeeo_cAOYq8vugrFis3NtJYNr5wYEs
Message-ID: <CAPaKu7Q+KAzEtKBWy8KO2Kp+H4y-Mqo34uo=jgH1_iooaDq3hA@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] mailbox: add MediaTek GPUEB IPI mailbox
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 12, 2025 at 11:38=E2=80=AFAM Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
<snipped>
> +static irqreturn_t mtk_gpueb_mbox_thread(int irq, void *data)
> +{
> +       struct mtk_gpueb_mbox_chan *ch =3D data;
> +       int status;
> +
> +       status =3D atomic_cmpxchg(&ch->rx_status,
> +                               MBOX_FULL | MBOX_CLOGGED, MBOX_FULL);
> +       if (status =3D=3D (MBOX_FULL | MBOX_CLOGGED)) {
> +               mtk_gpueb_mbox_read_rx(ch);
> +               writel(BIT(ch->num), ch->ebm->mbox_ctl + MBOX_CTL_IRQ_CLR=
);
> +               mbox_chan_received_data(&ch->ebm->mbox.chans[ch->num],
> +                                       ch->rx_buf);
Given what other drivers do, and how mtk_mfg consumes the data, we should

  char buf[MAX_OF_RX_LEN]; //  MAX_OF_RX_LEN is 32; we can also
allocate it during probe
  mtk_gpueb_mbox_read_rx(ch);
  mbox_chan_received_data(..., buf);

mtx_mfg makes a copy eventually anyway. We don't need to maintain any
extra copy.

Then we might not need rx_status.

> +               atomic_set(&ch->rx_status, 0);
> +               return IRQ_HANDLED;
> +       }
> +
> +       return IRQ_NONE;
> +}
> +
> +static int mtk_gpueb_mbox_send_data(struct mbox_chan *chan, void *data)
> +{
> +       struct mtk_gpueb_mbox_chan *ch =3D chan->con_priv;
> +       int i;
> +       u32 *values =3D data;
> +
> +       if (atomic_read(&ch->rx_status))
> +               return -EBUSY;
> +
> +       /*
> +        * We don't want any fancy nonsense, just write the 32-bit values=
 in
> +        * order. memcpy_toio/__iowrite32_copy don't work here, because f=
ancy.
> +        */
> +       for (i =3D 0; i < ch->c->tx_len; i +=3D 4)
> +               writel(values[i / 4], ch->ebm->mbox_mmio + ch->c->tx_offs=
et + i);
> +
> +       writel(BIT(ch->num), ch->ebm->mbox_ctl + MBOX_CTL_IRQ_SET);
> +
> +       return 0;
> +}
> +
> +static int mtk_gpueb_mbox_startup(struct mbox_chan *chan)
> +{
> +       struct mtk_gpueb_mbox_chan *ch =3D chan->con_priv;
> +       int ret;
> +
> +       atomic_set(&ch->rx_status, 0);
> +
> +       ret =3D clk_enable(ch->ebm->clk);
> +       if (ret) {
> +               dev_err(ch->ebm->dev, "Failed to enable EB clock: %pe\n",
> +                       ERR_PTR(ret));
> +               goto err_clog;
> +       }
> +
> +       writel(BIT(ch->num), ch->ebm->mbox_ctl + MBOX_CTL_IRQ_CLR);
> +
> +       ret =3D devm_request_threaded_irq(ch->ebm->dev, ch->ebm->irq, mtk=
_gpueb_mbox_isr,
> +                                       mtk_gpueb_mbox_thread, IRQF_SHARE=
D | IRQF_ONESHOT,
> +                                       ch->full_name, ch);
I don't think this warrants a per-channel irq thread.

mbox_chan_received_data is atomic. I think wecan start simple with
just a devm_request_irq for all channels. mtk_gpueb_mbox_isr can

  read bits from MBOX_CTL_RX_STS
  for each bit set:
    read data from rx
    mbox_chan_received_data
  write bits to MBOX_CTL_IRQ_CLR

