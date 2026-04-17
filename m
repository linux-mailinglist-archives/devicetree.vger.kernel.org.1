Return-Path: <devicetree+bounces-288072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B49CzDm4WmKzgAAu9opvQ
	(envelope-from <devicetree+bounces-288072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:50:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 805674182A6
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:50:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 441BD3067064
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 07:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1F3382F2D;
	Fri, 17 Apr 2026 07:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="QB5gqyfg"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C76C37E2E0;
	Fri, 17 Apr 2026 07:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776411822; cv=none; b=bqOoFFKO+CUBK3+NEdFhQGEodiBTW1AaclgY712sUGZ3AyeVcXyREYMZmoF+FIop3qGL+OkhESys3Y9QIimGUmXWSuPmCSoMWXoj504XZ1bY3peZiaPqs1fFUGu/jJgz3tNa4Kx+zTptPbZRS1B3XgvxIuxF/ujOcaMnDUdxO90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776411822; c=relaxed/simple;
	bh=LnqaLaMFtBI4CyOH5iE+2lyHbSAYV4gUdaU+3b37EjY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JLM6TnUWPar0HABIpa8R85CbWd1Fzo7TxdEy1FN/bS65JyvwcOGiE2HY4f6FfXjfGRAHIoKT8nRjjVD79ZS/CMmIVRk2z4kmpyFc3rJni+Qkb6l6dZgILYNZThuNZooDazudjR4hYXVtByDyKhLRAXpDYuIg31D8sfeusIFKrkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=QB5gqyfg; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 63H7h72B13460439, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1776411787; bh=9r2HFX/egjy9s/xWA+hiUJJinVNHnndYfN4FJrJMfxg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=QB5gqyfgFn+JVG1BuBzmdKk2LmXCsteFMaU2But9hSjKVpNnXUnB38EsyVzm3m+mm
	 ZeUJHrhqCLbRABsLGAfGRNxGimXyd0k4swqYdFzbB7KhTjhwAxeCCIS4hGnN8GfqTp
	 vSoLpxXT3eG++003oL61Q+S+rasAheCQ4RQ55JO47P3qPMRMtnuyl7HooWd6z8Tdj9
	 Revn5QY45LZeiOh7U4dMjCFMHdOF+oF2ydnb7Zmi3lvwlieMH2X3Sc7BICc+YY986c
	 VE/y3HGuYedNw84EcSxuyvYYhrkWHHf2Z+iIov7LuFCWPkZRJGfQkJ43/KAdhYrCt5
	 5j3GO8RWb+VEg==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.26/5.94) with ESMTPS id 63H7h72B13460439
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 17 Apr 2026 15:43:07 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Fri, 17 Apr 2026 15:43:07 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS06.realtek.com.tw (10.21.1.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Fri, 17 Apr 2026 15:43:07 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS06.realtek.com.tw
 (10.21.1.56) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 17 Apr 2026 15:43:07 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <bmasney@redhat.com>
CC: <afaerber@suse.com>, <conor+dt@kernel.org>, <cy.huang@realtek.com>,
        <cylee12@realtek.com>, <devicetree@vger.kernel.org>,
        <eleanor.lin@realtek.com>, <james.tai@realtek.com>,
        <jyanchou@realtek.com>, <krzk+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-clk@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-realtek-soc@lists.infradead.org>, <mturquette@baylibre.com>,
        <p.zabel@pengutronix.de>, <robh@kernel.org>, <sboyd@kernel.org>,
        <stanley_chang@realtek.com>
Subject: Re: [PATCH v6 07/10] clk: realtek: Add support for MMC-tuned PLL clocks
Date: Fri, 17 Apr 2026 15:43:06 +0800
Message-ID: <20260417074307.1408308-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <ac_YfHe0dscb3MPw@redhat.com>
References: <ac_YfHe0dscb3MPw@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[realtek.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[realtek.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288072-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[realtek.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	DBL_BLOCKED_OPENRESOLVER(0.00)[realtek.com:email,realtek.com:dkim,realtek.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 805674182A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Brian,

> Hi Yu-Chun,
>
> I should have finished going through Sashiko while manually reviewing
> your patches.
>
> On Thu, Apr 02, 2026 at 03:39:54PM +0800, Yu-Chun Lin wrote:
>> From: Cheng-Yu Lee <cylee12@realtek.com>
> > 
> > Add clk_pll_mmc_ops for enable/disable, prepare, rate control, and status
> > operations on MMC PLL clocks.
> > 
> > Also add clk_pll_mmc_phase_ops to support phase get/set operations.
> > 
> > Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
> > Co-developed-by: Jyan Chou <jyanchou@realtek.com>
> > Signed-off-by: Jyan Chou <jyanchou@realtek.com>
> > Co-developed-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> > Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> > ---
> > +static int clk_pll_mmc_set_rate(struct clk_hw *hw, unsigned long rate, unsigned long parent_rate)
> > +{
> > +	struct clk_pll_mmc *clkm = to_clk_pll_mmc(hw);
> > +	u32 val = PLL_MMC_SSC_DIV_N_VAL;
> > +	int ret;
> > +
> > +	ret = regmap_update_bits(clkm->clkr.regmap,
> > +				 clkm->ssc_dig_ofs + PLL_SSC_DIG_EMMC1_OFFSET,
> > +				 PLL_FLAG_INITAL_EMMC_MASK, 0x0 << PLL_FLAG_INITAL_EMMC_SHIFT);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = set_ssc_div_n(clkm, val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = set_ssc_div_ext_f(clkm, 1517);
> > +	if (ret)
> > +		return ret;
> > +
> > +	switch (val) {
> > +	case 31 ... 46:
> > +		ret |= set_pi_ibselh(clkm, 3);
> > +		ret |= set_sscpll_rs(clkm, 3);
> > +		ret |= set_sscpll_icp(clkm, 2);
> 
> Sashiko reports:
> https://sashiko.dev/#/patchset/20260402073957.2742459-1-eleanor.lin%40realtek.com
> 
>     Is it intended to use bitwise OR to accumulate these return values? Because
>     these hardware operations return standard negative error codes on failure,
>     performing a bitwise OR on multiple negative integers will merge their bit
>     patterns and create a corrupted error code.
> 

Will return immediately upon the first error.

> > +		break;
> > +
> > +	case 20 ... 30:
> > +		ret |= set_pi_ibselh(clkm, 2);
> > +		ret |= set_sscpll_rs(clkm, 3);
> > +		ret |= set_sscpll_icp(clkm, 1);
> > +		break;
> > +
> > +	case 10 ... 19:
> > +		ret |= set_pi_ibselh(clkm, 1);
> > +		ret |= set_sscpll_rs(clkm, 2);
> > +		ret |= set_sscpll_icp(clkm, 1);
> > +		break;
> > +
> > +	case 5 ... 9:
> > +		ret |= set_pi_ibselh(clkm, 0);
> > +		ret |= set_sscpll_rs(clkm, 2);
> > +		ret |= set_sscpll_icp(clkm, 0);
> > +		break;
> > +	}
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = regmap_update_bits(clkm->clkr.regmap,
> > +				 clkm->ssc_dig_ofs + PLL_SSC_DIG_EMMC3_OFFSET,
> > +				 PLL_NCODE_SSC_EMMC_MASK,
> > +				 27 << PLL_NCODE_SSC_EMMC_SHIFT);
> 
> Sashiko reports:
> https://sashiko.dev/#/patchset/20260402073957.2742459-1-eleanor.lin%40realtek.com
> 
>     Are the mask and shift values mismatched here? PLL_FLAG_INITAL_EMMC_MASK is
>     defined as BIT(1) (0x02), but PLL_FLAG_INITAL_EMMC_SHIFT is 8.
> 
>     When regmap_update_bits() applies the 0x02 mask to a value shifted by 8,
>     won't it evaluate to 0 and fail to set the intended initialization flag?
> 
> Brian

You're right, will fix it.

Yu-Chun.


