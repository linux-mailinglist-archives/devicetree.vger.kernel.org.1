Return-Path: <devicetree+bounces-5936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 103487B8C52
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 21:13:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 506711F22F15
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 19:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6760219FE;
	Wed,  4 Oct 2023 19:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZbESkDCa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF82219F7
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 19:13:10 +0000 (UTC)
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE11210FD
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:13:05 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-694f3444f94so108660b3a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 12:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696446784; x=1697051584; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E2uXFFx3fj47JIw2jgwj+xsWZUpJymvlG8kks1rNkjI=;
        b=ZbESkDCakdk5R5s7Sxmw2UDuzUXTatjJky0phUBBoYoNJ+TrGzL0E8Xtu6hIIHNJxD
         mcN2khdLdJqnJsqclZotU0+dYH4pUMXsjVykCBIhhjLElo3p4D9Lh+uc8Tg3bttfpWWl
         q/zJq3/w1iurQcTpnB4Fnmyv6nkhKhI+ed4tIL6OMeZ/l0MFAx7YojEeMqxd4vPDqrI6
         BE3AaedH3ScYa1kyLbx5+B2R7ItRnydmQoZp2NKN5Yj9nOCVFifqvrAopeE+/kpLe87U
         atHttvVnSiNjClzOoIXpbDYCDTIPhrqM0vGoubCjqtWDN5LhhWefcayBT2Si5r22pdE6
         +y5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696446784; x=1697051584;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E2uXFFx3fj47JIw2jgwj+xsWZUpJymvlG8kks1rNkjI=;
        b=pqvbYkzpP+iUom2+NuIESejK0oonzS+R0GvmBI8miiOvNu5k/cIxDQfFHUX0d43DzP
         KfrDxrXvaC3GSXh3eMgNgmiqHUZY3HIGZoAhenyscncxBgcyP6kLhxvDtNyhg1mh8q2M
         041JPxm4VqR8IRLNNV5KHxeMART2QZbn+rRZ4AuEeqvKMplwlrIElpqFArJilXP4vJtc
         aBNGZdKvclC1dnNM580t6zR3Vp/WC/IQnHju4ETNleDPtwJL1KIlEFpkYmjT7CAPDLcP
         ZrrZ7WczQKtP+7+mfgWn4GmtwXV4ZRAr5pzLHEEKJicSw4zrtkEZcIj5+Os96Y2p/CIf
         oiTA==
X-Gm-Message-State: AOJu0Yz/ZOj+m+2svnEFWg1SJSDfr78H5XpMKJ+j7u4Z7tGCqqLRGUfs
	6Ws4U3jfmkIdBHQ2M/fmA7/fOw==
X-Google-Smtp-Source: AGHT+IFfcVarDogpzQPdK6Wk2MFzCxRmWbl9a12a+89g/Dg2+ty6uCzr7EAmA4LKikK3XVXPBNR3YA==
X-Received: by 2002:a05:6a20:974d:b0:161:afbc:c02f with SMTP id hs13-20020a056a20974d00b00161afbcc02fmr3062583pzc.54.1696446784366;
        Wed, 04 Oct 2023 12:13:04 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:95a1:7b5c:a766:5db1])
        by smtp.gmail.com with ESMTPSA id n26-20020a62e51a000000b0069501bf29basm3593443pff.77.2023.10.04.12.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 12:13:03 -0700 (PDT)
Date: Wed, 4 Oct 2023 12:12:59 -0700
From: Drew Fustini <dfustini@baylibre.com>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Xi Ruoyao <xry111@xry111.site>, Han Gao <gaohan@iscas.ac.cn>,
	Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 3/6] mmc: sdhci-of-dwcmshc: Add support for T-Head TH1520
Message-ID: <ZR25O+hErvYbvr1t@x1>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
 <20230921-th1520-mmc-v1-3-49f76c274fb3@baylibre.com>
 <ZR2Qd7g+WE9DN5Ph@xhacker>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZR2Qd7g+WE9DN5Ph@xhacker>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 05, 2023 at 12:19:03AM +0800, Jisheng Zhang wrote:
> On Thu, Sep 21, 2023 at 06:49:50PM -0700, Drew Fustini wrote:
> > Add support for the mmc controller in the T-Head TH1520 with the new
> > compatible "thead,th1520-dwcmshc". Implement custom sdhci_ops for
> > set_uhs_signaling, reset, voltage_switch, and platform_execute_tuning.
> > 
> > Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> 
> Hi Drew,
> Thanks for doing this and sorry for being late for this code review. Some
> comments below.
> 
> > ---
> >  drivers/mmc/host/sdhci-of-dwcmshc.c | 456 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 456 insertions(+)
> > 
> > diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> > index 3a3bae6948a8..7294bf1afb7d 100644
> > --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> > +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> > @@ -35,6 +35,26 @@
> >  #define DWCMSHC_CARD_IS_EMMC		BIT(0)
> >  #define DWCMSHC_ENHANCED_STROBE		BIT(8)
> >  #define DWCMSHC_EMMC_ATCTRL		0x40
> > +/* Tuning and auto-tuning fields in AT_CTRL_R control register */
> > +#define AT_CTRL_AT_EN			0x1 /* autotuning is enabled */
> > +#define AT_CTRL_CI_SEL_SHIFT		0x1 /* bit 1 */
> > +#define AT_CTRL_CI_SEL			0x1 /* interval to drive center phase select */
> > +#define AT_CTRL_SWIN_TH_EN_SHIFT	0x2 /* bit 2 */
> > +#define AT_CTRL_SWIN_TH_EN		0x1 /* sampling window threshold enable */
> > +#define AT_CTRL_RPT_TUNE_ERR_SHIFT	0x3 /* bit 3 */
> > +#define AT_CTRL_RPT_TUNE_ERR		0x1 /* enable reporting framing errors */
> > +#define AT_CTRL_SW_TUNE_EN_SHIFT	0x4 /* bit 4 */
> > +#define AT_CTRL_SW_TUNE_EN		0x1 /* enable software managed tuning */
> > +#define AT_CTRL_WIN_EDGE_SEL_SHIFT	0x8 /* bits [11:8] */
> > +#define AT_CTRL_WIN_EDGE_SEL		0xf /* sampling window edge select */
> > +#define AT_CTRL_TUNE_CLK_STOP_EN_SHIFT	0x10 /* bit 16 */
> > +#define AT_CTRL_TUNE_CLK_STOP_EN	0x1  /* clocks stopped during phase code change */
> > +#define AT_CTRL_PRE_CHANGE_DLY_SHIFT	0x11 /* bits [18:17] */
> > +#define AT_CTRL_PRE_CHANGE_DLY		0x1  /* 2-cycle latency */
> > +#define AT_CTRL_POST_CHANGE_DLY_SHIFT	0x13 /* bits [20:19] */
> > +#define AT_CTRL_POST_CHANGE_DLY		0x3  /* 4-cycle latency */
> > +#define AT_CTRL_SWIN_TH_VAL_SHIFT	0x18 /* bits [31:24] */
> > +#define AT_CTRL_SWIN_TH_VAL		0x9  /* sampling window threshold */
> >  
> >  /* Rockchip specific Registers */
> >  #define DWCMSHC_EMMC_DLL_CTRL		0x800
> > @@ -72,6 +92,84 @@
> >  	(((x) & DWCMSHC_EMMC_DLL_TIMEOUT) == 0))
> >  #define RK35xx_MAX_CLKS 3
> >  
> > +/* PHY register area pointer */
> > +#define DWC_MSHC_PTR_PHY_R	0x300
> > +
> > +/* PHY general configuration */
> > +#define PHY_CNFG_R		(DWC_MSHC_PTR_PHY_R + 0x00)
> > +#define PHY_CNFG_RSTN_DEASSERT	0x1  /* Deassert PHY reset */
> > +#define PHY_CNFG_PAD_SP_SHIFT	0x10 /* bits [16:9] */
> > +#define PHY_CNFG_PAD_SP_VALUE	0x0c /* PMOS TX drive strength */
> > +#define PHY_CNFG_PAD_SN_SHIFT	0x14 /* bits [23:20] */
> > +#define PHY_CNFG_PAD_SN_VALUE	0x0c /* NMOS TX drive strength */
> > +
> > +/* PHY command/response pad settings */
> > +#define PHY_CMDPAD_CNFG_R	(DWC_MSHC_PTR_PHY_R + 0x04)
> > +
> > +/* PHY data pad settings */
> > +#define PHY_DATAPAD_CNFG_R	(DWC_MSHC_PTR_PHY_R + 0x06)
> > +
> > +/* PHY clock pad settings */
> > +#define PHY_CLKPAD_CNFG_R	(DWC_MSHC_PTR_PHY_R + 0x08)
> > +
> > +/* PHY strobe pad settings */
> > +#define PHY_STBPAD_CNFG_R	(DWC_MSHC_PTR_PHY_R + 0x0a)
> > +
> > +/* PHY reset pad settings */
> > +#define PHY_RSTNPAD_CNFG_R	(DWC_MSHC_PTR_PHY_R + 0x0c)
> > +
> > +/* Bitfields are common for all pad settings */
> > +#define PHY_PAD_RXSEL_1V8		0x1 /* Receiver type select for 1.8V */
> > +#define PHY_PAD_RXSEL_3V3		0x2 /* Receiver type select for 3.3V */
> > +
> > +#define PHY_PAD_WEAKPULL_SHIFT		0x3 /* bits [4:3] */
> > +#define PHY_PAD_WEAKPULL_PULLUP		0x1 /* Weak pull down enabled */
> > +#define PHY_PAD_WEAKPULL_PULLDOWN	0x2 /* Weak pull down enabled */
> > +
> > +#define PHY_PAD_TXSLEW_CTRL_P_SHIFT	0x5 /* bits [8:5] */
> > +#define PHY_PAD_TXSLEW_CTRL_P_VALUE	0x3 /* Slew control for P-Type pad TX */
> > +#define PHY_PAD_TXSLEW_CTRL_N_SHIFT	0x9 /* bits [12:9] */
> > +#define PHY_PAD_TXSLEW_CTRL_N_VALUE	0x3 /* Slew control for N-Type pad TX */
> > +
> > +/* PHY CLK delay line settings */
> > +#define PHY_SDCLKDL_CNFG_R		(DWC_MSHC_PTR_PHY_R + 0x1d)
> > +#define PHY_SDCLKDL_CNFG_UPDATE_SHIFT	0x4 /* bit 4 */
> > +#define PHY_SDCLKDL_CNFG_UPDATE_DC	0x1 /* set before writing to SDCLKDL_DC */
> > +
> > +/* PHY CLK delay line delay code */
> > +#define PHY_SDCLKDL_DC_R		(DWC_MSHC_PTR_PHY_R + 0x1e)
> > +#define PHY_SDCLKDL_DC_INITIAL		0x40 /* initial delay code */
> > +#define PHY_SDCLKDL_DC_DEFAULT		0x32 /* default delay code */
> > +#define PHY_SDCLKDL_DC_HS400		0x18 /* delay code for HS400 mode */
> > +
> > +/* PHY drift_cclk_rx delay line configuration setting */
> > +#define PHY_ATDL_CNFG_R			(DWC_MSHC_PTR_PHY_R + 0x21)
> > +#define PHY_ATDL_CNFG_INPSEL_SHIFT	0x2 /* bits [3:2] */
> > +#define PHY_ATDL_CNFG_INPSEL_VALUE	0x3 /* delay line input source */
> > +
> > +/* PHY DLL control settings */
> > +#define PHY_DLL_CTRL_R			(DWC_MSHC_PTR_PHY_R + 0x24)
> > +#define PHY_DLL_CTRL_DISABLE		0x0 /* PHY DLL is enabled */
> > +#define PHY_DLL_CTRL_ENABLE		0x1 /* PHY DLL is disabled */
> > +
> > +/* PHY DLL  configuration register 1 */
> > +#define PHY_DLL_CNFG1_R			(DWC_MSHC_PTR_PHY_R + 0x25)
> > +#define PHY_DLL_CNFG1_SLVDLY_SHIFT	0x4 /* bits [5:4] */
> > +#define PHY_DLL_CNFG1_SLVDLY_VALUE	0x2 /* DLL slave update delay input */
> > +#define PHY_DLL_CNFG1_WAITCYCLE		0x5 /* DLL wait cycle input */
> > +
> > +/* PHY DLL configuration register 2 */
> > +#define PHY_DLL_CNFG2_R			(DWC_MSHC_PTR_PHY_R + 0x26)
> > +#define PHY_DLL_CNFG2_JUMPSTEP		0xa /* DLL jump step input */
> > +
> > +/* PHY DLL master and slave delay line configuration settings */
> > +#define PHY_DLLDL_CNFG_R		(DWC_MSHC_PTR_PHY_R + 0x28)
> > +#define PHY_DLLDL_CNFG_SLV_INPSEL_SHIFT	0x5 /* bits [6:5] */
> > +#define PHY_DLLDL_CNFG_SLV_INPSEL_VALUE	0x3 /* clock source select for slave DL */
> > +
> > +#define FLAG_PULL_UP_EN		BIT(0)
> > +#define FLAG_IO_FIXED_1V8	BIT(1)
> > +
> >  #define BOUNDARY_OK(addr, len) \
> >  	((addr | (SZ_128M - 1)) == ((addr + len - 1) | (SZ_128M - 1)))
> >  
> > @@ -92,6 +190,8 @@ struct dwcmshc_priv {
> >  	struct clk	*bus_clk;
> >  	int vendor_specific_area1; /* P_VENDOR_SPECIFIC_AREA reg */
> >  	void *priv; /* pointer to SoC private stuff */
> > +	u16 delay_line;
> > +	u16 flags;
> >  };
> >  
> >  /*
> > @@ -157,6 +257,206 @@ static void dwcmshc_request(struct mmc_host *mmc, struct mmc_request *mrq)
> >  	sdhci_request(mmc, mrq);
> >  }
> >  
> > +static void th1520_phy_1_8v_init_no_pull(struct sdhci_host *host)
> > +{
> > +	u32 val;
> > +
> > +	/* deassert phy reset */
> > +	sdhci_writel(host, PHY_CNFG_RSTN_DEASSERT, PHY_CNFG_R);
> > +
> > +	/* disable delay line */
> > +	sdhci_writeb(host, PHY_SDCLKDL_CNFG_UPDATE_DC << PHY_SDCLKDL_CNFG_UPDATE_SHIFT,
> > +		     PHY_SDCLKDL_CNFG_R);
> > +
> > +	/* set delay line */
> > +	sdhci_writeb(host, PHY_SDCLKDL_DC_INITIAL, PHY_SDCLKDL_DC_R);
> > +
> > +	/* enable delay lane */
> > +	val = sdhci_readb(host, PHY_SDCLKDL_CNFG_R);
> > +	val &= ~(PHY_SDCLKDL_CNFG_UPDATE_DC << PHY_SDCLKDL_CNFG_UPDATE_SHIFT);
> > +	sdhci_writeb(host, val, PHY_SDCLKDL_CNFG_R);
> > +
> > +	/* configure phy pads */
> > +	val = sdhci_readw(host, PHY_CMDPAD_CNFG_R);
> > +	sdhci_writew(host, val | PHY_PAD_RXSEL_1V8, PHY_CMDPAD_CNFG_R);
> > +
> > +	val = sdhci_readw(host, PHY_DATAPAD_CNFG_R);
> > +	sdhci_writew(host, val | PHY_PAD_RXSEL_1V8, PHY_DATAPAD_CNFG_R);
> > +
> > +	val = sdhci_readw(host, PHY_RSTNPAD_CNFG_R);
> > +	sdhci_writew(host, val | PHY_PAD_RXSEL_1V8, PHY_RSTNPAD_CNFG_R);
> > +
> > +	val = sdhci_readw(host, PHY_STBPAD_CNFG_R);
> > +	sdhci_writew(host, val | PHY_PAD_RXSEL_1V8, PHY_STBPAD_CNFG_R);
> > +
> > +	/* enable phy dll */
> > +	val = sdhci_readb(host, PHY_DLL_CTRL_R);
> > +	sdhci_writeb(host, val | PHY_DLL_CTRL_ENABLE, PHY_DLL_CTRL_R);
> > +}
> > +
> > +static void th1520_phy_3_3v_init_no_pull(struct sdhci_host *host)
> > +{
> > +	u32 val;
> > +
> > +	/* deassert phy reset */
> > +	sdhci_writel(host, PHY_CNFG_RSTN_DEASSERT, PHY_CNFG_R);
> > +
> > +	/* disable delay line */
> > +	sdhci_writeb(host, PHY_SDCLKDL_CNFG_UPDATE_DC << PHY_SDCLKDL_CNFG_UPDATE_SHIFT,
> > +		     PHY_SDCLKDL_CNFG_R);
> > +
> > +	/* set delay line */
> > +	sdhci_writeb(host, PHY_SDCLKDL_DC_INITIAL, PHY_SDCLKDL_DC_R);
> > +
> > +	/* enable delay lane */
> > +	val = sdhci_readb(host, PHY_SDCLKDL_CNFG_R);
> > +	val &= ~(PHY_SDCLKDL_CNFG_UPDATE_DC << PHY_SDCLKDL_CNFG_UPDATE_SHIFT);
> > +	sdhci_writeb(host, val, PHY_SDCLKDL_CNFG_R);
> > +
> > +	/* configure phy pads */
> > +	val = sdhci_readw(host, PHY_CMDPAD_CNFG_R);
> > +	sdhci_writew(host, val | PHY_PAD_RXSEL_3V3, PHY_CMDPAD_CNFG_R);
> > +
> > +	val = sdhci_readw(host, PHY_DATAPAD_CNFG_R);
> > +	sdhci_writew(host, val | PHY_PAD_RXSEL_3V3, PHY_DATAPAD_CNFG_R);
> > +
> > +	val = sdhci_readw(host, PHY_RSTNPAD_CNFG_R);
> > +	sdhci_writew(host, val | PHY_PAD_RXSEL_3V3, PHY_RSTNPAD_CNFG_R);
> > +
> > +	val = sdhci_readw(host, PHY_STBPAD_CNFG_R);
> > +	sdhci_writew(host, val | PHY_PAD_RXSEL_3V3, PHY_STBPAD_CNFG_R);
> > +
> > +	/* enable phy dll */
> > +	val = sdhci_readb(host, PHY_DLL_CTRL_R);
> > +	sdhci_writeb(host, val | PHY_DLL_CTRL_ENABLE, PHY_DLL_CTRL_R);
> > +}
> > +
> > +static void th1520_phy_1_8v_init(struct sdhci_host *host)
> > +{
> > +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> > +	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
> > +	u32 val;
> > +
> > +	if (!priv)
> > +		return;
> > +
> > +	if (!(priv->flags & FLAG_PULL_UP_EN)) {
> > +		th1520_phy_1_8v_init_no_pull(host);
> > +		return;
> > +	}
> > +
> > +	/* deassert phy reset & set tx drive strength */
> > +	sdhci_writel(host, PHY_CNFG_RSTN_DEASSERT |
> > +		    (PHY_CNFG_PAD_SP_VALUE << PHY_CNFG_PAD_SP_SHIFT) |
> > +		    (PHY_CNFG_PAD_SN_VALUE << PHY_CNFG_PAD_SN_SHIFT),
> > +		    PHY_CNFG_R);
> > +
> > +	/* disable delay line */
> > +	sdhci_writeb(host, PHY_SDCLKDL_CNFG_UPDATE_DC << PHY_SDCLKDL_CNFG_UPDATE_SHIFT,
> > +		     PHY_SDCLKDL_CNFG_R);
> > +
> > +	/* set delay line */
> > +	sdhci_writeb(host, priv->delay_line, PHY_SDCLKDL_DC_R);
> > +	sdhci_writeb(host, PHY_DLL_CNFG2_JUMPSTEP, PHY_DLL_CNFG2_R);
> > +
> > +	/* enable delay lane */
> > +	val = sdhci_readb(host, PHY_SDCLKDL_CNFG_R);
> > +	val &= ~(PHY_SDCLKDL_CNFG_UPDATE_DC << PHY_SDCLKDL_CNFG_UPDATE_SHIFT);
> > +	sdhci_writeb(host, val, PHY_SDCLKDL_CNFG_R);
> > +
> > +	/* configure phy pads */
> > +	val = PHY_PAD_RXSEL_1V8 | (PHY_PAD_WEAKPULL_PULLUP << PHY_PAD_WEAKPULL_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_P_VALUE << PHY_PAD_TXSLEW_CTRL_P_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_N_VALUE << PHY_PAD_TXSLEW_CTRL_N_SHIFT);
> > +	sdhci_writew(host, val, PHY_CMDPAD_CNFG_R);
> > +	sdhci_writew(host, val, PHY_DATAPAD_CNFG_R);
> > +	sdhci_writew(host, val, PHY_RSTNPAD_CNFG_R);
> > +
> > +	val = (PHY_PAD_TXSLEW_CTRL_P_VALUE << PHY_PAD_TXSLEW_CTRL_P_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_N_VALUE << PHY_PAD_TXSLEW_CTRL_N_SHIFT);
> > +	sdhci_writew(host, val, PHY_CLKPAD_CNFG_R);
> > +
> > +	val = PHY_PAD_RXSEL_1V8 | (PHY_PAD_WEAKPULL_PULLDOWN << PHY_PAD_WEAKPULL_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_P_VALUE << PHY_PAD_TXSLEW_CTRL_P_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_N_VALUE << PHY_PAD_TXSLEW_CTRL_N_SHIFT);
> > +	sdhci_writew(host, val, PHY_STBPAD_CNFG_R);
> > +
> > +	/* enable data strobe mode */
> > +	sdhci_writeb(host, PHY_DLLDL_CNFG_SLV_INPSEL_VALUE << PHY_DLLDL_CNFG_SLV_INPSEL_SHIFT,
> > +		     PHY_DLLDL_CNFG_R);
> > +
> > +	/* enable phy dll */
> > +	sdhci_writeb(host, PHY_DLL_CTRL_ENABLE,  PHY_DLL_CTRL_R);
> > +}
> > +
> > +static void th1520_phy_3_3v_init(struct sdhci_host *host)
> > +{
> > +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> > +	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
> > +	u32 val;
> > +
> > +	if (!(priv->flags & FLAG_PULL_UP_EN)) {
> > +		th1520_phy_3_3v_init_no_pull(host);
> > +		return;
> > +	}
> > +
> > +	/* deassert phy reset & set tx drive strength */
> > +	sdhci_writel(host, PHY_CNFG_RSTN_DEASSERT |
> > +		    (PHY_CNFG_PAD_SP_VALUE << PHY_CNFG_PAD_SP_SHIFT) |
> > +		    (PHY_CNFG_PAD_SN_VALUE << PHY_CNFG_PAD_SN_SHIFT),
> > +		    PHY_CNFG_R);
> > +
> > +	/* disable delay line */
> > +	sdhci_writeb(host, PHY_SDCLKDL_CNFG_UPDATE_DC << PHY_SDCLKDL_CNFG_UPDATE_SHIFT,
> > +		     PHY_SDCLKDL_CNFG_R);
> > +
> > +	/* set delay line */
> > +	sdhci_writeb(host, priv->delay_line, PHY_SDCLKDL_DC_R);
> > +	sdhci_writeb(host, PHY_DLL_CNFG2_JUMPSTEP, PHY_DLL_CNFG2_R);
> > +
> > +	/* enable delay lane */
> > +	val = sdhci_readb(host, PHY_SDCLKDL_CNFG_R);
> > +	val &= ~(PHY_SDCLKDL_CNFG_UPDATE_DC << PHY_SDCLKDL_CNFG_UPDATE_SHIFT);
> > +	sdhci_writeb(host, val, PHY_SDCLKDL_CNFG_R);
> > +
> > +	/* configure phy pads */
> > +	val = PHY_PAD_RXSEL_3V3 | (PHY_PAD_WEAKPULL_PULLUP << PHY_PAD_WEAKPULL_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_P_VALUE << PHY_PAD_TXSLEW_CTRL_P_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_N_VALUE << PHY_PAD_TXSLEW_CTRL_N_SHIFT);
> > +	sdhci_writew(host, val, PHY_CMDPAD_CNFG_R);
> > +	sdhci_writew(host, val, PHY_DATAPAD_CNFG_R);
> > +	sdhci_writew(host, val, PHY_RSTNPAD_CNFG_R);
> > +
> > +	val = (PHY_PAD_TXSLEW_CTRL_P_VALUE << PHY_PAD_TXSLEW_CTRL_P_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_N_VALUE << PHY_PAD_TXSLEW_CTRL_N_SHIFT);
> > +	sdhci_writew(host, val, PHY_CLKPAD_CNFG_R);
> > +
> > +	val = PHY_PAD_RXSEL_3V3 | (PHY_PAD_WEAKPULL_PULLDOWN << PHY_PAD_WEAKPULL_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_P_VALUE << PHY_PAD_TXSLEW_CTRL_P_SHIFT) |
> > +	      (PHY_PAD_TXSLEW_CTRL_N_VALUE << PHY_PAD_TXSLEW_CTRL_N_SHIFT);
> > +	sdhci_writew(host, val, PHY_STBPAD_CNFG_R);
> > +}
> > +
> > +static void th1520_sdhci_set_phy(struct sdhci_host *host)
> > +{
> > +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> > +	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
> > +	u16 emmc_ctrl;
> > +
> > +	/* Before power on, set PHY configs */
> > +	if (host->mmc->caps & MMC_CAP_NONREMOVABLE) {
> 
> check flag & FLAG_IO_FIXED_1V8 instead? Because I didn't see why
> 3.3v can't be non-removeable. I know you only brought up emmc
> now, but we can also prepare for sdio/sd support at the same time.

Okay, that does seem to make more sense to check for the 1.8V flag when
deciding whether to call th1520_phy_1_8v_init().

> 
> > +		th1520_phy_1_8v_init(host);
> > +		emmc_ctrl = sdhci_readw(host, priv->vendor_specific_area1 + DWCMSHC_EMMC_CONTROL);
> > +		emmc_ctrl |= DWCMSHC_CARD_IS_EMMC;
> 
> can we check host->mmc->caps2 to know whether this is eMMC or not, then
> set this bit for eMMC after that.
> 
> And setting DWCMSHC_CARD_IS_EMMC should be orthogonalized with 3.3v/1.8v
> etc.

Okay, I'll move the write to emmc_ctrl outside of this if() block. I'll
put it in a new if() block directly after. There is MMC_CAP_NONREMOVABLE
but that is mmc_host->caps and not mmc_host->caps2. Is that what you
meant?

> 
> > +		sdhci_writew(host, emmc_ctrl, priv->vendor_specific_area1 + DWCMSHC_EMMC_CONTROL);
> > +	} else {
> > +		th1520_phy_3_3v_init(host);
> 
> > +	}
> > +
> > +	sdhci_writeb(host, (PHY_DLL_CNFG1_SLVDLY_VALUE << PHY_DLL_CNFG1_SLVDLY_SHIFT) |
> 
> I'm not sure whether we need to get the delay value from DT.
> Do emmc, sd and sdio share the same delay value?

The PHY_DLL_CNFG1_SLVDLY_VALUE ("DLL slave update delay input") field
appeared to be the same for all instances in the T-Head SDK.

Whereas, the PHY_SDCLKDL_DC register ("CLK delay line delay code") does
have different value depending on whether HS400 mode is used.

> 
> > +		     PHY_DLL_CNFG1_WAITCYCLE, PHY_DLL_CNFG1_R);
> > +}
> > +
> >  static void dwcmshc_set_uhs_signaling(struct sdhci_host *host,
> >  				      unsigned int timing)
> >  {
> > @@ -189,9 +489,30 @@ static void dwcmshc_set_uhs_signaling(struct sdhci_host *host,
> >  		ctrl_2 |= DWCMSHC_CTRL_HS400;
> >  	}
> >  
> > +	if (priv->flags & FLAG_IO_FIXED_1V8)
> > +		ctrl_2 |= SDHCI_CTRL_VDD_180;
> >  	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
> >  }
> >  
> > +static void th1520_set_uhs_signaling(struct sdhci_host *host,
> > +				     unsigned int timing)
> > +{
> > +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> > +	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
> > +	u32 reg;
> > +
> > +	dwcmshc_set_uhs_signaling(host, timing);
> > +	if (timing == MMC_TIMING_MMC_HS400) {
> > +		reg = sdhci_readl(host, priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
> > +		reg &= ~AT_CTRL_AT_EN;
> > +		sdhci_writel(host, reg, priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
> 
> can we move the auto tuning bit setting to tuning routine?

It is unclear to me why the T-Head's version manipulated AT_CTRL_AT_EN
in the th1520_set_uhs_signaling(). I can try removing it and seeing if
there is any effect.

> 
> > +		priv->delay_line = PHY_SDCLKDL_DC_HS400;
> 
> this delay line may need to be gotten from DT?

There were only 3 different values used in the T-Head SDK so I am not
sure a DT property is needed. The three values for the CLK delayline
delay code (PHY_SDCLKDL_DC) are:
  
  PHY_SDCLKDL_DC_INITIAL          0x40
  PHY_SDCLKDL_DC_DEFAULT          0x32
  PHY_SDCLKDL_DC_HS400            0x18

PHY_SDCLKDL_DC_INITIAL is only used in th1520_phy_1_8v_init_no_pull()
and th1520_phy_3_3v_init_no_pull(). Based on earlier discussion in this
thread, I will be removing those functions in the next revision as they
are unused.

th1520_phy_1_8v_init() and th1520_phy_3_3v_init() both use
dwcmshc_priv.delay_line to program the PHY_SDCLKDL_DC register.

dwcmshc_probe() sets delay_line to PHY_SDCLKDL_DC_DEFAULT. If HS400 is
used, then th1520_set_uhs_signaling() will change delay_line to
PHY_SDCLKDL_DC_HS400.

Based on the above, I don't think DT needs direct control of the
delay_line value, but I can add a delay line DT prop if you prefer.

> 
> > +		th1520_sdhci_set_phy(host);
> > +	} else {
> > +		sdhci_writeb(host, 0, PHY_DLLDL_CNFG_R);
> > +	}
> > +}
> > +
> >  static void dwcmshc_hs400_enhanced_strobe(struct mmc_host *mmc,
> >  					  struct mmc_ios *ios)
> >  {
> > @@ -338,6 +659,91 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
> >  	sdhci_reset(host, mask);
> >  }
> >  
> > +static int th1520_execute_tuning(struct sdhci_host *host, u32 opcode)
> > +{
> > +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> > +	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
> > +	u32 val = 0;
> > +
> > +	if (host->flags & SDHCI_HS400_TUNING)
> > +		return 0;
> > +
> > +	sdhci_writeb(host, PHY_ATDL_CNFG_INPSEL_VALUE << PHY_ATDL_CNFG_INPSEL_SHIFT,
> > +		     PHY_ATDL_CNFG_R);
> > +	val = sdhci_readl(host, priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
> > +
> > +	/*
> > +	 * configure tuning settings:
> > +	 *  - center phase select code driven in block gap interval
> > +	 *  - disable reporting of framing errors
> > +	 *  - disable software managed tuning
> > +	 *  - disable user selection of sampling window edges,
> > +	 *    instead tuning calculated edges are used
> > +	 */
> > +	val &= ~((AT_CTRL_CI_SEL << AT_CTRL_CI_SEL_SHIFT) |
> > +		(AT_CTRL_RPT_TUNE_ERR << AT_CTRL_RPT_TUNE_ERR_SHIFT) |
> > +		(AT_CTRL_SW_TUNE_EN << AT_CTRL_SW_TUNE_EN_SHIFT) |
> > +		(AT_CTRL_WIN_EDGE_SEL << AT_CTRL_WIN_EDGE_SEL_SHIFT));
> > +
> > +	/*
> > +	 * configure tuning settings:
> > +	 *  - enable auto-tuning
> > +	 *  - enable sampling window threshold
> > +	 *  - stop clocks during phase code change
> > +	 *  - set max latency in cycles between tx and rx clocks
> > +	 *  - set max latency in cycles to switch output phase
> > +	 *  - set max sampling window threshold value
> > +	 */
> > +	val |= AT_CTRL_AT_EN | (AT_CTRL_SWIN_TH_EN << AT_CTRL_SWIN_TH_EN_SHIFT) |
> > +		(AT_CTRL_TUNE_CLK_STOP_EN << AT_CTRL_TUNE_CLK_STOP_EN_SHIFT) |
> > +		(AT_CTRL_PRE_CHANGE_DLY << AT_CTRL_PRE_CHANGE_DLY_SHIFT) |
> > +		(AT_CTRL_POST_CHANGE_DLY << AT_CTRL_POST_CHANGE_DLY_SHIFT) |
> > +		(AT_CTRL_SWIN_TH_VAL << AT_CTRL_SWIN_TH_VAL_SHIFT);
> > +
> > +	sdhci_writel(host, val, priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
> > +	val = sdhci_readl(host, priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
> > +
> > +	/* check if is possible to enable auto-tuning */
> > +	if (!(val & AT_CTRL_AT_EN)) {
> > +		dev_err(mmc_dev(host->mmc), "failed to enable auto tuning\n");
> > +		return -EIO;
> > +	}
> > +
> > +	/* disable auto tuning */
> > +	val &= ~AT_CTRL_AT_EN;
> > +	sdhci_writel(host, val, priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
> 
> AFAIK, the HW support auto tuning, can we enable it?

I am not sure why the version of the driver in the T-Head SDK disables
auto tuning.

The AT_EN field in the AT_CTRL register is supposed to be enabled by
default if the controller was designed to support Mode3 retuning. I am
not sure if this is the case for this SoC.

AT_EN is meant to be cleared when software wishes to disable Mode3
retuning which I believe is also known as Mode1.

I suppose the best thing for me to do is experiement with AT_EN and see
if I can in fact turn on auto-tuning.

> 
> > +
> > +	/* perform tuning */
> > +	sdhci_start_tuning(host);
> > +	host->tuning_err = __sdhci_execute_tuning(host, opcode);
> > +	if (host->tuning_err) {
> > +		val &= ~AT_CTRL_AT_EN;
> 
> It looks like auto tunning is never enabled, so why do clear it here?

I was confused by this also. I copied it from the T-Head SDK but I agree
it doesn't seem to do anything useful.

> 
> > +		sdhci_writel(host, val, priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
> > +		dev_err(mmc_dev(host->mmc), "tuning failed: %d\n", host->tuning_err);
> > +		return -EIO;
> > +	}
> > +	sdhci_end_tuning(host);
> > +
> > +	return 0;
> > +}
> > +
> > +static void th1520_sdhci_reset(struct sdhci_host *host, u8 mask)
> > +{
> > +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> > +	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
> > +	u16 ctrl_2;
> > +
> > +	sdhci_reset(host, mask);
> > +
> > +	if (priv->flags & FLAG_IO_FIXED_1V8) {
> > +		ctrl_2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
> > +		if (!(ctrl_2 & SDHCI_CTRL_VDD_180)) {
> > +			ctrl_2 |= SDHCI_CTRL_VDD_180;
> > +			sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
> > +		}
> > +	}
> > +}
> > +
> >  static const struct sdhci_ops sdhci_dwcmshc_ops = {
> >  	.set_clock		= sdhci_set_clock,
> >  	.set_bus_width		= sdhci_set_bus_width,
> > @@ -356,6 +762,17 @@ static const struct sdhci_ops sdhci_dwcmshc_rk35xx_ops = {
> >  	.adma_write_desc	= dwcmshc_adma_write_desc,
> >  };
> >  
> > +static const struct sdhci_ops sdhci_dwcmshc_th1520_ops = {
> > +	.set_clock		= sdhci_set_clock,
> > +	.set_bus_width		= sdhci_set_bus_width,
> > +	.set_uhs_signaling	= th1520_set_uhs_signaling,
> > +	.get_max_clock		= dwcmshc_get_max_clock,
> > +	.reset			= th1520_sdhci_reset,
> > +	.adma_write_desc	= dwcmshc_adma_write_desc,
> > +	.voltage_switch		= th1520_phy_1_8v_init,
> > +	.platform_execute_tuning = &th1520_execute_tuning,
> > +};
> > +
> >  static const struct sdhci_pltfm_data sdhci_dwcmshc_pdata = {
> >  	.ops = &sdhci_dwcmshc_ops,
> >  	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
> > @@ -379,6 +796,12 @@ static const struct sdhci_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
> >  		   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> >  };
> >  
> > +static const struct sdhci_pltfm_data sdhci_dwcmshc_th1520_pdata = {
> > +	.ops = &sdhci_dwcmshc_th1520_ops,
> > +	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
> > +	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
> > +};
> > +
> >  static int dwcmshc_rk35xx_init(struct sdhci_host *host, struct dwcmshc_priv *dwc_priv)
> >  {
> >  	int err;
> > @@ -447,6 +870,10 @@ static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
> >  		.compatible = "snps,dwcmshc-sdhci",
> >  		.data = &sdhci_dwcmshc_pdata,
> >  	},
> > +	{
> > +		.compatible = "thead,th1520-dwcmshc",
> > +		.data = &sdhci_dwcmshc_th1520_pdata,
> > +	},
> >  	{},
> >  };
> >  MODULE_DEVICE_TABLE(of, sdhci_dwcmshc_dt_ids);
> > @@ -542,6 +969,35 @@ static int dwcmshc_probe(struct platform_device *pdev)
> >  			goto err_clk;
> >  	}
> >  
> > +	if (pltfm_data == &sdhci_dwcmshc_th1520_pdata) {
> > +		priv->delay_line = PHY_SDCLKDL_DC_DEFAULT;
> 
> Ditto. 

There seems to only be two values used for the CLK delayline delay code,
one for default and one for HS400. However, I could make it a dt
property if you prefer.

> 
> > +
> > +		if (device_property_present(&pdev->dev, "thead,phy-pull-up"))
> > +			priv->flags |= FLAG_PULL_UP_EN;
> > +		else
> > +			priv->flags &= ~FLAG_PULL_UP_EN;
> > +
> > +		if ((device_property_read_bool(dev, "mmc-ddr-1_8v")) |
> > +		    (device_property_read_bool(dev, "mmc-hs200-1_8v")) |
> > +		    (device_property_read_bool(dev, "mmc-hs400-1_8v")))
> > +			priv->flags |= FLAG_IO_FIXED_1V8;
> > +		else
> > +			priv->flags &= ~FLAG_IO_FIXED_1V8;
> > +
> > +		/*
> > +		 * start_signal_voltage_switch() will try 3.3V first
> > +		 * then 1.8V. Use SDHCI_SIGNALING_180 ranther than
> > +		 * SDHCI_SIGNALING_330 to avoid setting voltage to 3.3V
> > +		 * in sdhci_start_signal_voltage_switch().
> > +		 */
> > +		if (priv->flags & FLAG_IO_FIXED_1V8) {
> > +			host->flags &= ~SDHCI_SIGNALING_330;
> > +			host->flags |=  SDHCI_SIGNALING_180;
> > +		}
> > +
> > +		sdhci_enable_v4_mode(host);
> > +	}
> > +
> >  #ifdef CONFIG_ACPI
> >  	if (pltfm_data == &sdhci_dwcmshc_bf3_pdata)
> >  		sdhci_enable_v4_mode(host);
> > 
> > -- 
> > 2.34.1
> > 

Thank you for the review,
Drew

