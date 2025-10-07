Return-Path: <devicetree+bounces-224216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 403D8BC1A98
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 16:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 79D2D4EDA84
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 14:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32F702E1EE7;
	Tue,  7 Oct 2025 14:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="LW827Mo2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f100.google.com (mail-io1-f100.google.com [209.85.166.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7B21EB5FD
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 14:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759846310; cv=none; b=T+7XOGWGrDa8PZABxJureO314t6vZ0nzk0CNBpc5GnGu/h+gHiKx/Fn4lunuMwT0vREXKsO54hVJEQBbXNaPEnfsHqmQUcD6eB+BFTbTtWiP61NCvgr56laQ23d1klUAm5V+IQyiNhp9E1VBTTP7dT++i5M4dHhhDH4YJZAvBHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759846310; c=relaxed/simple;
	bh=dBBQOItg0Q5aO7WiOWjrQ0GTtFo/0jm4Uuk+25vOo58=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BklkLqfJv6SyBHFLsQRqmQOqhmOdcQFSOLdaDwIVafYve8kghm1dlc8B0N0dntT5SDKzVjxfoCFQvaJsU5BhQlixPKboxWImGfJwNJYt6bwxtbKhrbPVxmur7/UEYbFigLjsvnWeJI8hJIw7Ljy3FgmQ+/Mons9i/5ns14PJmyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=LW827Mo2; arc=none smtp.client-ip=209.85.166.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-io1-f100.google.com with SMTP id ca18e2360f4ac-92790f12293so300697339f.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:11:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759846306; x=1760451106;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QHD6Ty61Uhj2A+CXwx7AjgoG+J5ItuAvtd2jNhN3OGc=;
        b=YPW18/AEHk2+LvYk2O5lUEeP4RRKh1ZmYRhKc12RDusAX/a9P5NK/bOT84n8VcAY80
         rvo98EY6vDtmkegUtssdHpRp4V5n625fyy8fptLVL/1xHtX7ozqFu5+LBc3VX8IBKrKo
         AS1c812NdPYQtZ0BslnKI7wKwHyRJtiDg/c6WUIgm9IZ9bA9dyZi3Seo/4SzrVb1z5fa
         Z9tCrPIIpFImJ3VAfja5j+bANsB0mqq2AD8/CeYtDVQWYhjCD03xNOKl8s6F00V9VDof
         w9b3XxGCB/CunvsUxjr9WAhGccrXqBVwp59VeUFz+7BPAS5zDQS21yMgCsb4cB/R7Bfl
         wZpw==
X-Forwarded-Encrypted: i=1; AJvYcCX1r2yJQKKVLSNbaAmGFgu7EAUX2nqiXG3zxqd3MjV5/U5pRWASfG/xhhzFILe1NaN6NQFR5a9evzHz@vger.kernel.org
X-Gm-Message-State: AOJu0YwHL+8nl7SQYMA9+DccOHlyogQ+j2OtSugtm8F6f7sNRSqexj0a
	Ijqbi/FRn86nk03Nna64tF8Udc4ePk6fNRpqgk0DOY6JuL40KkOimwWkT4qzj5J5u3rVm+CwOg7
	i4DPZ5fsrd9L6x5rOrUUHHoYMDV7qI+MnZRFfqrzy7bI7F4rK32uKwcMXi24N+QtNZCKAe9nLZg
	VDsLBOthfyymIrcg3cS/WS3TjDp7EITaM/HsPQ84IeQik6y2apA51An2xF9due4L8OZq3VS9y5A
	aafJJjsU98ksQ==
X-Gm-Gg: ASbGncvFsPylOYhXq7wmd1WExkQ31ODYgUp5uYw+nuhJutUp+glfPAISgFjn+eN5GvN
	cnaBi7BCONmz2ZG9ppNtABYWYTJxp5I0AUErnC/veiHwiHqthZImRpfUMa4dIk4hXkAoMdEeZV6
	MmBwvEcF44fdECOii12vQH9zOeQqn52MTDD042FXBVwOA4w+ogBre2ys2Qg03jwqAv4gUQ1oSqM
	cMLQFer7mgnIJGtx6qT6vEgLYiPPyichO0AGHZe7HRQ1NgT8zEZSRA14PnFRxQv/QDnU55yWFFO
	dXB36fp/LVJsTEpxczWNKZIKKWHoAxMMWPytmdjQj5OVVsmc2vMrywac7lEjWePQWsNRKWBsjIg
	vBAiQPVU9nsoPgm58VTvoVN3DIsDJJ2fIxWagmybYj47WhcMe05rM94I+yv2azEwmFqVGggW036
	7Bpyk5
X-Google-Smtp-Source: AGHT+IF3hScsBbS9bpePO/HcZ+wMDa05hJKYmfT6cURZAVOUv4bBVh0CIJ3FBeyaHAN9wffgFPnOkCtYqiUE
X-Received: by 2002:a05:6602:6422:b0:901:98a7:59b7 with SMTP id ca18e2360f4ac-93b9698d1ccmr2302785739f.8.1759846306285;
        Tue, 07 Oct 2025 07:11:46 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-126.dlp.protect.broadcom.com. [144.49.247.126])
        by smtp-relay.gmail.com with ESMTPS id ca18e2360f4ac-93a7dfce75dsm77412139f.5.2025.10.07.07.11.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 07:11:46 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6097ca315bso10333810a12.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 07:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759846304; x=1760451104; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QHD6Ty61Uhj2A+CXwx7AjgoG+J5ItuAvtd2jNhN3OGc=;
        b=LW827Mo2i41fj8G8WXBqrYlas33OAHO+MsrJTpgqiKBLs+pJ1vEPgwGk7E5RTQinLy
         9HQDXYBEXgJkIJ60+Fe6SBWhSN0SuXBqWhyZ1D2ct3G4EYfHw7q6rcg4h67+1gPlMDEl
         QcyO3oV8artZ7KwGuT8MMkzV4Ht+wcFIV4svU=
X-Forwarded-Encrypted: i=1; AJvYcCVEONhmH0KgezrLnlYn+teuJiwo2nVRjBvDZ+LGsnVQoyp10Ebv/yZii8x98xBaP49NDcx0AnAdlr6H@vger.kernel.org
X-Received: by 2002:a17:903:1a86:b0:268:b8a:5a26 with SMTP id d9443c01a7336-28e9a6b19e2mr225581645ad.54.1759846304413;
        Tue, 07 Oct 2025 07:11:44 -0700 (PDT)
X-Received: by 2002:a17:903:1a86:b0:268:b8a:5a26 with SMTP id
 d9443c01a7336-28e9a6b19e2mr225581105ad.54.1759846303957; Tue, 07 Oct 2025
 07:11:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007140434.606051-1-kamal.dasu@broadcom.com> <20251007140434.606051-6-kamal.dasu@broadcom.com>
In-Reply-To: <20251007140434.606051-6-kamal.dasu@broadcom.com>
From: Kamal Dasu <kamal.dasu@broadcom.com>
Date: Tue, 7 Oct 2025 10:11:05 -0400
X-Gm-Features: AS18NWConQapvZJ_PydLLviSfQNaCoXaUO_aGG293UJ15Jynhj_5vrn-0JZrbgw
Message-ID: <CAKekbetNPxBt-6j=36gGPaCg2-fyP4VDaD1vRs77rPs6zyEHpg@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] mmc: brcmstb: save and restore registers during PM
To: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, florian.fainelli@broadcom.com, ulf.hansson@linaro.org, 
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000db87220640922503"

--000000000000db87220640922503
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 7, 2025 at 10:05=E2=80=AFAM Kamal Dasu <kamal.dasu@broadcom.com=
> wrote:
>

Ignore this patch  as I changed the subject and sent a different v 5/5
with the right subject:
" [PATCH v2 5/5] mmc: sdhci-brcmstb: save and restore registers during PM"



> Added support to save and restore registers that are critical
> during PM.
>
> Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
> ---
>  drivers/mmc/host/sdhci-brcmstb.c | 112 +++++++++++++++++++++++++++++--
>  1 file changed, 107 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-br=
cmstb.c
> index 42709ca8111d..7de395c86f2f 100644
> --- a/drivers/mmc/host/sdhci-brcmstb.c
> +++ b/drivers/mmc/host/sdhci-brcmstb.c
> @@ -38,28 +38,109 @@
>  #define SDIO_CFG_OP_DLY_DEFAULT                        0x80000003
>  #define SDIO_CFG_CQ_CAPABILITY                 0x4c
>  #define SDIO_CFG_CQ_CAPABILITY_FMUL            GENMASK(13, 12)
> +#define SDIO_CFG_SD_PIN_SEL                    0x44
> +#define SDIO_CFG_V1_SD_PIN_SEL                 0x54
> +#define SDIO_CFG_PHY_SW_MODE_0_RX_CTRL         0x7C
>  #define SDIO_CFG_MAX_50MHZ_MODE                        0x1ac
>  #define SDIO_CFG_MAX_50MHZ_MODE_STRAP_OVERRIDE BIT(31)
>  #define SDIO_CFG_MAX_50MHZ_MODE_ENABLE         BIT(0)
>
> +#define SDIO_BOOT_MAIN_CTL                     0x0
> +
>  #define MMC_CAP_HSE_MASK       (MMC_CAP2_HSX00_1_2V | MMC_CAP2_HSX00_1_8=
V)
>  /* Select all SD UHS type I SDR speed above 50MB/s */
>  #define MMC_CAP_UHS_I_SDR_MASK (MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR104)
>
> -struct sdhci_brcmstb_priv {
> -       void __iomem *cfg_regs;
> -       unsigned int flags;
> -       struct clk *base_clk;
> -       u32 base_freq_hz;
> +enum cfg_core_ver {
> +       SDIO_CFG_CORE_V1 =3D 1,
> +       SDIO_CFG_CORE_V2,
> +};
> +
> +struct sdhci_brcmstb_saved_regs {
> +       u32 sd_pin_sel;
> +       u32 phy_sw_mode0_rxctrl;
> +       u32 max_50mhz_mode;
> +       u32 boot_main_ctl;
>  };
>
>  struct brcmstb_match_priv {
>         void (*cfginit)(struct sdhci_host *host);
>         void (*hs400es)(struct mmc_host *mmc, struct mmc_ios *ios);
> +       void (*save_restore_regs)(struct mmc_host *mmc, int save);
>         struct sdhci_ops *ops;
>         const unsigned int flags;
>  };
>
> +struct sdhci_brcmstb_priv {
> +       void __iomem *cfg_regs;
> +       void __iomem *boot_regs;
> +       struct sdhci_brcmstb_saved_regs saved_regs;
> +       unsigned int flags;
> +       struct clk *base_clk;
> +       u32 base_freq_hz;
> +       const struct brcmstb_match_priv *match_priv;
> +};
> +
> +static void sdhci_brcmstb_save_regs(struct mmc_host *mmc, enum cfg_core_=
ver ver)
> +{
> +       struct sdhci_host *host =3D mmc_priv(mmc);
> +       struct sdhci_pltfm_host *pltfm_host =3D sdhci_priv(host);
> +       struct sdhci_brcmstb_priv *priv =3D sdhci_pltfm_priv(pltfm_host);
> +       struct sdhci_brcmstb_saved_regs *sr =3D &priv->saved_regs;
> +       void __iomem *cr =3D priv->cfg_regs;
> +       bool is_emmc =3D mmc->caps & MMC_CAP_NONREMOVABLE;
> +
> +       if (is_emmc && priv->boot_regs)
> +               sr->boot_main_ctl =3D readl(priv->boot_regs + SDIO_BOOT_M=
AIN_CTL);
> +
> +       if (ver =3D=3D SDIO_CFG_CORE_V1) {
> +               sr->sd_pin_sel =3D readl(cr + SDIO_CFG_V1_SD_PIN_SEL);
> +               return;
> +       }
> +
> +       sr->sd_pin_sel =3D readl(cr + SDIO_CFG_SD_PIN_SEL);
> +       sr->phy_sw_mode0_rxctrl =3D readl(cr + SDIO_CFG_PHY_SW_MODE_0_RX_=
CTRL);
> +       sr->max_50mhz_mode =3D readl(cr + SDIO_CFG_MAX_50MHZ_MODE);
> +}
> +
> +static void sdhci_brcmstb_restore_regs(struct mmc_host *mmc, enum cfg_co=
re_ver ver)
> +{
> +       struct sdhci_host *host =3D mmc_priv(mmc);
> +       struct sdhci_pltfm_host *pltfm_host =3D sdhci_priv(host);
> +       struct sdhci_brcmstb_priv *priv =3D sdhci_pltfm_priv(pltfm_host);
> +       struct sdhci_brcmstb_saved_regs *sr =3D &priv->saved_regs;
> +       void __iomem *cr =3D priv->cfg_regs;
> +       bool is_emmc =3D mmc->caps & MMC_CAP_NONREMOVABLE;
> +
> +       if (is_emmc && priv->boot_regs)
> +               writel(sr->boot_main_ctl, priv->boot_regs + SDIO_BOOT_MAI=
N_CTL);
> +
> +       if (ver =3D=3D SDIO_CFG_CORE_V1) {
> +               writel(sr->sd_pin_sel, cr + SDIO_CFG_SD_PIN_SEL);
> +               return;
> +       }
> +
> +       writel(sr->sd_pin_sel, cr + SDIO_CFG_SD_PIN_SEL);
> +       writel(sr->phy_sw_mode0_rxctrl, cr + SDIO_CFG_PHY_SW_MODE_0_RX_CT=
RL);
> +       writel(sr->max_50mhz_mode, cr + SDIO_CFG_MAX_50MHZ_MODE);
> +}
> +
> +static void sdhci_brcmstb_save_restore_regs_v1(struct mmc_host *mmc, int=
 save)
> +{
> +       if (save)
> +               sdhci_brcmstb_save_regs(mmc, SDIO_CFG_CORE_V1);
> +       else
> +               sdhci_brcmstb_restore_regs(mmc, SDIO_CFG_CORE_V1);
> +}
> +
> +static void sdhci_brcmstb_save_restore_regs_v2(struct mmc_host *mmc, int=
 save)
> +{
> +       if (save)
> +               sdhci_brcmstb_save_regs(mmc, SDIO_CFG_CORE_V2);
> +       else
> +               sdhci_brcmstb_restore_regs(mmc, SDIO_CFG_CORE_V2);
> +}
> +
>  static inline void enable_clock_gating(struct sdhci_host *host)
>  {
>         struct sdhci_pltfm_host *pltfm_host =3D sdhci_priv(host);
> @@ -306,22 +387,26 @@ static struct brcmstb_match_priv match_priv_74371 =
=3D {
>
>  static struct brcmstb_match_priv match_priv_7445 =3D {
>         .flags =3D BRCMSTB_MATCH_FLAGS_BROKEN_TIMEOUT,
> +       .save_restore_regs =3D sdhci_brcmstb_save_restore_regs_v1,
>         .ops =3D &sdhci_brcmstb_ops,
>  };
>
>  static struct brcmstb_match_priv match_priv_72116 =3D {
>         .flags =3D BRCMSTB_MATCH_FLAGS_BROKEN_TIMEOUT,
> +       .save_restore_regs =3D sdhci_brcmstb_save_restore_regs_v1,
>         .ops =3D &sdhci_brcmstb_ops_72116,
>  };
>
>  static const struct brcmstb_match_priv match_priv_7216 =3D {
>         .flags =3D BRCMSTB_MATCH_FLAGS_HAS_CLOCK_GATE,
> +       .save_restore_regs =3D sdhci_brcmstb_save_restore_regs_v2,
>         .hs400es =3D sdhci_brcmstb_hs400es,
>         .ops =3D &sdhci_brcmstb_ops_7216,
>  };
>
>  static struct brcmstb_match_priv match_priv_74165b0 =3D {
>         .flags =3D BRCMSTB_MATCH_FLAGS_HAS_CLOCK_GATE,
> +       .save_restore_regs =3D sdhci_brcmstb_save_restore_regs_v2,
>         .hs400es =3D sdhci_brcmstb_hs400es,
>         .ops =3D &sdhci_brcmstb_ops_74165b0,
>  };
> @@ -429,6 +514,7 @@ static int sdhci_brcmstb_probe(struct platform_device=
 *pdev)
>
>         pltfm_host =3D sdhci_priv(host);
>         priv =3D sdhci_pltfm_priv(pltfm_host);
> +       priv->match_priv =3D match->data;
>         if (device_property_read_bool(&pdev->dev, "supports-cqe")) {
>                 priv->flags |=3D BRCMSTB_PRIV_FLAGS_HAS_CQE;
>                 match_priv->ops->irq =3D sdhci_brcmstb_cqhci_irq;
> @@ -446,6 +532,13 @@ static int sdhci_brcmstb_probe(struct platform_devic=
e *pdev)
>         if (res)
>                 goto err;
>
> +       /* map non-standard BOOT registers if present */
> +       if (host->mmc->caps & MMC_CAP_NONREMOVABLE) {
> +               priv->boot_regs =3D devm_platform_get_and_ioremap_resourc=
e(pdev, 2, NULL);
> +               if (IS_ERR(priv->boot_regs))
> +                       priv->boot_regs =3D NULL;
> +       }
> +
>         /*
>          * Automatic clock gating does not work for SD cards that may
>          * voltage switch so only enable it for non-removable devices.
> @@ -536,8 +629,13 @@ static int sdhci_brcmstb_suspend(struct device *dev)
>         struct sdhci_host *host =3D dev_get_drvdata(dev);
>         struct sdhci_pltfm_host *pltfm_host =3D sdhci_priv(host);
>         struct sdhci_brcmstb_priv *priv =3D sdhci_pltfm_priv(pltfm_host);
> +       const struct brcmstb_match_priv *match_priv =3D priv->match_priv;
> +
>         int ret;
>
> +       if (match_priv->save_restore_regs)
> +               match_priv->save_restore_regs(host->mmc, 1);
> +
>         clk_disable_unprepare(priv->base_clk);
>         if (host->mmc->caps2 & MMC_CAP2_CQE) {
>                 ret =3D cqhci_suspend(host->mmc);
> @@ -553,6 +651,7 @@ static int sdhci_brcmstb_resume(struct device *dev)
>         struct sdhci_host *host =3D dev_get_drvdata(dev);
>         struct sdhci_pltfm_host *pltfm_host =3D sdhci_priv(host);
>         struct sdhci_brcmstb_priv *priv =3D sdhci_pltfm_priv(pltfm_host);
> +       const struct brcmstb_match_priv *match_priv =3D priv->match_priv;
>         int ret;
>
>         ret =3D sdhci_pltfm_resume(dev);
> @@ -569,6 +668,9 @@ static int sdhci_brcmstb_resume(struct device *dev)
>                         ret =3D clk_set_rate(priv->base_clk, priv->base_f=
req_hz);
>         }
>
> +       if (match_priv->save_restore_regs)
> +               match_priv->save_restore_regs(host->mmc, 0);
> +
>         if (host->mmc->caps2 & MMC_CAP2_CQE)
>                 ret =3D cqhci_resume(host->mmc);
>
> --
> 2.34.1
>

--000000000000db87220640922503
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
H0K0rs+X8O45xZIUJlxzf5UZex3BLi1f/H+08rSQULWEtO/ECwkFod2DIzSX7fZdz5RQ1PpziEOp
goo/JZPYIeCmgt3rIyvMuupj8Ymb0J/velhpXfQuYUM52viw2nmqVcxCwBqyM3Iq7eI4xtEOFRmR
wxSizd3MSQMf6GCHA4/B/6ttnxhGAr3utaOU+x/RnzG0gPLTW1XRAQ0+GVc/tGFdI864OG1cyrRl
GvBnHJQSAFOIKwYrUk2oFpgMbafQ6osCAwEAAaOCAdswggHXMA4GA1UdDwEB/wQEAwIFoDAMBgNV
HRMBAf8EAjAAMIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDovL3NlY3VyZS5n
bG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5BggrBgEFBQcwAYYt
aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUGA1UdIAReMFww
CQYHZ4EMAQUDAzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUFBwIBFiZodHRw
czovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDagNKAyhjBodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwIgYDVR0RBBswGYEX
a2FtYWwuZGFzdUBicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQwHwYDVR0jBBgwFoAU
ACk2nlx6ug+vLVAt26AjhRiwoJIwHQYDVR0OBBYEFOV9h+N/T9ZsJ40qRxh7NYYD+N6MMA0GCSqG
SIb3DQEBCwUAA4ICAQAKtKh30wv1/30230mCimgUjMWQE/LImRmyfDgrp2IhBVS6mDun+wH8thEB
WhBHQMz3gsGixU4ZBJG72eWi39IzQ7CGnisJwA0+hsGaGg03AVtFtqo1rXYRZ81MEDOb6BPYLigJ
RsHbNmrUGR+LsGeUwOWUeRXqBrYaYFrkgHKvVK1NEewv+vUY08n4tsezO3jq0HKhVDY46bMbf8vL
oQqqhtcQvu2+5FK2jpUayeubpzPwobjEG61RIhBvM0KivY4CB2s9A7qgjL1XBycAybIvG03BbFoT
t282FqXwk9JU6YihLlt+hpzO9UF7E8GZYlQlVIZOLOvytqilhua+2h77Yy8Jz/FJyIXKuaLPtvb2
SC2shL7jF28kQbP3QUKwAig+cxwbpngnUkd9D9cXSHVq9PPwYm0A4eAO0YQ/80Uq20+gXF++g0sy
NKrrV3i0T1dbCd86miGDKvarGzjh7pdsdwNY15liGP6Orib1tnWkJcbtP1rJty4r/mbbxcK8ILO4
IvTGFG6BfjJ+La0aRt69i1fQmjUWHLwzkLNpw9cJH8/MONZcEJeDkq9WELSyy29bagStk5KHu7NO
TH65sZg+i/4qmj3DEeEGTr/Shzp4YWSNn4W7NEelr0VgDlwa7xqlwZjXxG4MIJqy0SsQlAwEXtqd
nH2FpJfzgAetkuyU6DGCAlcwggJTAgEBMGIwUjELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2Jh
bFNpZ24gbnYtc2ExKDAmBgNVBAMTH0dsb2JhbFNpZ24gR0NDIFI2IFNNSU1FIENBIDIwMjMCDEca
ZUGCu6d0oT1M+zANBglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQgap2lvt1SbFow/yoz
rlH9cd9ctb3VGFcpH02N1sLfSWEwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
CQUxDxcNMjUxMDA3MTQxMTQ0WjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFlAwQBKjALBglghkgB
ZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzALBglghkgBZQMEAgEw
DQYJKoZIhvcNAQEBBQAEggEAgiOIBQG4uE/CNlP9PtoimtwBXuCW2aE+MLHPkHoOWC3I+tHmXYeS
1Z6R2+ltmAQbJ/SkYBGEBNw/u+Uyxa10uCrMeeBd3giOR2mKe/JTyhLa85OMwHz2e03KvwqzNiej
CjoFkRl2TgVKqSDrIc0jOWlxUOD3ZX271Jpras91nYCsr4PDaF5n+vp+28oBbWUpjp4PAUwaB5/0
lvK9FP8FP1EpD3vKAO/ffYtw8DWdFBYhU6D34w/m45KzlCXMK0U8WlmiYoPLqg9X8trPq1GzWkAv
3F59Uv7FT3UTEEKMAgVzxBzLdDakJdX8s3qpYNNbKcq6FD9w+U7RaGqxyRR4Tg==
--000000000000db87220640922503--

