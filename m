Return-Path: <devicetree+bounces-196342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C226AB050E3
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:26:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2CD63A609C
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 05:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 035712D3752;
	Tue, 15 Jul 2025 05:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UtP3Cg2J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265341A254E
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752557204; cv=none; b=W4funV8c9HicfdZyiPfY2av10rfgp8wXzu4XtFoxvJKwoYTSKkzqu2sCG0MN2rcY1Q4HO0yH7DwgwZG7jAAkDaDRlo5JqLt2rQY7KHFI9KrEEH28fauJVzRiDapy1rNI+1jgmQMIeROz/9kdeiGt2nvv0//E8QmXAKCV7JR+bQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752557204; c=relaxed/simple;
	bh=Vok3sAiLujP5+hTf7U9u6KkZUMEHc7gwTOuzgIEBsWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jo55et50PXtjhSO31UeNBs+QfwQ6zMhuxsnsKcopHvloyss8So/lwrotK22pgZmfqbr03liMuOTOTUShVjx8a1jqillXYVRjYN9UkfTPb3iHB11RtTSaUkuS3rhLVrp2obs2BpDcVcIrxAxsMsdtOiA4VSt2qgbqnNrpfIuUON8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UtP3Cg2J; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54b10594812so4941631e87.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752557201; x=1753162001; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EriOcw6Ti5BC4myF5JQ02kFXKB9Pwigas67q+yAyzZY=;
        b=UtP3Cg2JB1Gh2e3V/wnmeHpFpvPqHf03QPPoGYlyiv4DE3nTeYn9cIdoM+J4oB0vsi
         PLGdDg7yOAsnFwC6rLkIUTEldxTQyypC94wClnaRR+5ihly/0CW1wU6iWf/OupOtHKRp
         hBArkONR4cuiWfaXs/peRUT7zJ4sIuutOL3jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752557201; x=1753162001;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EriOcw6Ti5BC4myF5JQ02kFXKB9Pwigas67q+yAyzZY=;
        b=KGK4wkK9i5Jka2k1qRzdSpo+EzPJWkElHd1fvRukoZtG0ZQNsH2qDNMYXziZxm1Acd
         WGhIcEHEAClJ6nKaeTno6Ht23K5e5RNGNkSuSoy4Qb3agfg5ZGUw5hSxGyIr9w2x916+
         ikCXvPYUBBZC1vz+o2RKwxREAtg2bu4GAVpK45bzNJJYUj3Xda6RFZ8Z01S5mOCgWRB8
         af3adpuJ10PlAZu5zXTWi76vQw2a78nJ7/CFOKugAiEDCUV6UqYt4NahoN6SBqYQidK4
         cvgjmL/95QC6EePbslI0OmpV9gYEjxjU3uBr6/tytphscRk35ZCrZWlBEz1/tqtCWwxa
         rugQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLjCBNss+as64wpTjP5GCYc3VSqdRSA/lqhPJyT9J5NfYcJH1wGt0s68MYfDHDJwkLd8yPHAgeqScz@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ7ZzsKrMkVdm1YQzAoEMmMaRBE3r29v7ptFomOuWvZYTEnuC8
	+t/o3A89ZZmWYrYC53Url5zcKOF9QSuKYZT55GpgnfGKCB5L/uImnT7CBqQOeb5xeOo54yaGtco
	Zb6lcZlBOZlUS4JmP+AWyV+HwZBDtCmOfQo1wXQpS
X-Gm-Gg: ASbGncuRzkE45AaqGIS38q77R2deI30xH5KeHkLuyygZY+Tlj/mKgNZ177SqRfVIct2
	7BKLOGfrIN++coC0uomflHRbxpVHr3mTwD3rdVZ2kSGrzFrufWtcC2rGCamy5kgzNehFvAhWoHQ
	NGMtIiv2nx7iI3Be6c/HYtvqBB9IX02YuGiN+wVt0Frgao5OKPft67PHXrMDFbqGWG89IV+DF0h
	ryA6QvgbeIKgdzXD9CBOgNtCYjFdLKg5Bo=
X-Google-Smtp-Source: AGHT+IEQf0W1yeQYNRbpUyAxFlgjb3kYw5Q0BNqfDsziWw7aP+1TqaYvLMXYRwQa9tomb76nSKuU56uoGnkXehDyLpc=
X-Received: by 2002:a05:6512:3b9c:b0:556:341b:fb0a with SMTP id
 2adb3069b0e04-55a044ca226mr6271614e87.15.1752557201192; Mon, 14 Jul 2025
 22:26:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250624143220.244549-1-laura.nao@collabora.com> <20250624143220.244549-13-laura.nao@collabora.com>
In-Reply-To: <20250624143220.244549-13-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 15 Jul 2025 13:26:30 +0800
X-Gm-Features: Ac12FXx0XfJFXA_DIIE4IblGQiwtiWyeXBGiD295gCS64kpCUO8jzl3QeCZ10ZM
Message-ID: <CAGXv+5EWEsLBS86G828ezpnD3x-MaC3F-AtyGFyzKxPvZ0GcAw@mail.gmail.com>
Subject: Re: [PATCH v2 12/29] clk: mediatek: Add MT8196 topckgen clock support
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Another thing,

On Tue, Jun 24, 2025 at 10:33=E2=80=AFPM Laura Nao <laura.nao@collabora.com=
> wrote:
>
> Add support for the MT8196 topckgen clock controller, which provides
> muxes and dividers for clock selection in other IP blocks.
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>  drivers/clk/mediatek/Makefile              |    2 +-
>  drivers/clk/mediatek/clk-mt8196-topckgen.c | 1257 ++++++++++++++++++++
>  2 files changed, 1258 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/mediatek/clk-mt8196-topckgen.c
>
> diff --git a/drivers/clk/mediatek/Makefile b/drivers/clk/mediatek/Makefil=
e
> index b1773d2bcb3d..bc0e86e20074 100644
> --- a/drivers/clk/mediatek/Makefile
> +++ b/drivers/clk/mediatek/Makefile
> @@ -160,7 +160,7 @@ obj-$(CONFIG_COMMON_CLK_MT8195_VDOSYS) +=3D clk-mt819=
5-vdo0.o clk-mt8195-vdo1.o
>  obj-$(CONFIG_COMMON_CLK_MT8195_VENCSYS) +=3D clk-mt8195-venc.o
>  obj-$(CONFIG_COMMON_CLK_MT8195_VPPSYS) +=3D clk-mt8195-vpp0.o clk-mt8195=
-vpp1.o
>  obj-$(CONFIG_COMMON_CLK_MT8195_WPESYS) +=3D clk-mt8195-wpe.o
> -obj-$(CONFIG_COMMON_CLK_MT8196) +=3D clk-mt8196-apmixedsys.o
> +obj-$(CONFIG_COMMON_CLK_MT8196) +=3D clk-mt8196-apmixedsys.o clk-mt8196-=
topckgen.o
>  obj-$(CONFIG_COMMON_CLK_MT8365) +=3D clk-mt8365-apmixedsys.o clk-mt8365.=
o
>  obj-$(CONFIG_COMMON_CLK_MT8365_APU) +=3D clk-mt8365-apu.o
>  obj-$(CONFIG_COMMON_CLK_MT8365_CAM) +=3D clk-mt8365-cam.o
> diff --git a/drivers/clk/mediatek/clk-mt8196-topckgen.c b/drivers/clk/med=
iatek/clk-mt8196-topckgen.c
> new file mode 100644
> index 000000000000..fc0c1227dd8d
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8196-topckgen.c

[...]

> +       FACTOR(CLK_TOP_APLL1_D4, "apll1_d4", "vlp_apll1", 1, 4),
> +       FACTOR(CLK_TOP_APLL1_D8, "apll1_d8", "vlp_apll1", 1, 8),
> +       FACTOR(CLK_TOP_APLL2_D4, "apll2_d4", "vlp_apll2", 1, 4),
> +       FACTOR(CLK_TOP_APLL2_D8, "apll2_d8", "vlp_apll2", 1, 8),

These aren't used anywhere in this driver, but they are referenced
directly in the vlpckgen driver. Maybe these should be moved over
to that driver instead? Otherwise we end up with some weird circular
link between the two clock controllers which doesn't seem correct
to me.

[...]

