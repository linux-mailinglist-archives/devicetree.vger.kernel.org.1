Return-Path: <devicetree+bounces-67273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1798C74B4
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 12:40:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3AF1286EB7
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 10:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AEF7143C55;
	Thu, 16 May 2024 10:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnjCH5HB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C741636AF2
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 10:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715856051; cv=none; b=kg7Yz9ifyPFuh+a4ywl+kgqKOWxPKLc5FzqXMSheAiZVFwHnaf6GyMRMYZE0TBAznMa4LqFidyxmh4Ak2TUKj+vKp6S8nEeDilVtoEVYQcKn5EoOdxxDOof3xuNVRGoSpainv/xzJELFri6OWwyBEtyRPI1j8ggaKsf74SEsk9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715856051; c=relaxed/simple;
	bh=AgBpwGpbZjYg4sD4O/OSL88ZoPQ3U3HWxGPl6wy0D7w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cke69HRSEj54jqzazMok34Y2fs0QyxxW179D/7MRzFGwSSDXW17ku/060RrDWmhl0XnrDJdEouFeaaNIGY8TRZXxWLGOsj8jBXeA2yzHFOIG7XbvfdGyWNP2xUQY0ep2A5Q59EZhpTEVpWZ9n/MfxggOi7WD329TsXXr0lEI97s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnjCH5HB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACC95C113CC;
	Thu, 16 May 2024 10:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715856051;
	bh=AgBpwGpbZjYg4sD4O/OSL88ZoPQ3U3HWxGPl6wy0D7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BnjCH5HBSx+geqspCr9TwNaEVCjGw8WsAQzlpe5CE+AkW0HB5FnZsgDrWiTPsCoBP
	 8vQoAwk9IkB9aJZPkTsz0X3CubKwQ3k7hhoXuBv3QiGY75iEJjAxUduckb3I5QkUct
	 cVB5RQkhPq7hP58+u1rBaTSDnEtComH9UUlre/xc36ApAh3jHc3SP0fyNX5vA95MVY
	 idk5IKF9n71URytl2fMrTRCoxVFjytbJ9/ES5DPay+IcY5CyMZukvjMfq8DIYLzaFG
	 lRj8bv02fsg0DogQAhKkpwjvQ654VthgxeTWJhsouG1HUcDmCT/443C6UCKRh8j89Q
	 Q/EphsfRQnJWw==
Date: Thu, 16 May 2024 12:40:47 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Amit Singh Tomar <amitsinght@marvell.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, angelogioacchino.delregno@collabora.com
Subject: Re: [PATCH v2 3/4] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
Message-ID: <ZkXir4mWQgwDDn-2@lore-desk>
References: <cover.1715769325.git.lorenzo@kernel.org>
 <a8b20adf816e2a8278bd00645bf899c54c0795fa.1715769325.git.lorenzo@kernel.org>
 <1bfcc5a9-92df-472c-b09c-6f9613294301@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NboPmqa2iCHHJR5W"
Content-Disposition: inline
In-Reply-To: <1bfcc5a9-92df-472c-b09c-6f9613294301@marvell.com>


--NboPmqa2iCHHJR5W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[...]
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> > +				 PCIE_FORCE_DA_PXP_CDR_PR_PWDB);
> > +
> > +	for (i =3D 0; i < 7; i++) {
> Sorry for overlooking this during the earlier review, but we should
> establish a macro for value 7 (for better readability).

ack, I will fix it.

> > +		airoha_phy_pma0_update_field(pcie_phy,
> > +				REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				PCIE_FORCE_DA_PXP_CDR_PR_IDAC, i << 8);
> > +		airoha_phy_pma0_clear_bits(pcie_phy,
> > +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					   PCIE_FREQLOCK_DET_EN);
> > +		airoha_phy_pma0_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					     PCIE_FREQLOCK_DET_EN, 0x3);
> > +
> > +		usleep_range(10000, 15000);
> > +
> > +		val =3D FIELD_GET(PCIE_RO_FL_OUT,
> > +				readl(pcie_phy->pma0 +
> > +				      REG_PCIE_PMA_RO_RX_FREQDET));
> > +		if (val > fl_out_target)
> > +			cdr_pr_idac_tmp =3D i << 8;
> > +	}
> > +
> > +	for (i =3D 7; i >=3D 0; i--) {
> > +		pr_idac =3D cdr_pr_idac_tmp | (0x1 << i);
> > +		airoha_phy_pma0_update_field(pcie_phy,
> > +				REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				PCIE_FORCE_DA_PXP_CDR_PR_IDAC, pr_idac);
> > +		airoha_phy_pma0_clear_bits(pcie_phy,
> > +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					   PCIE_FREQLOCK_DET_EN);
> > +		airoha_phy_pma0_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					     PCIE_FREQLOCK_DET_EN, 0x3);
> > +
> > +		usleep_range(10000, 15000);
> > +
> > +		val =3D FIELD_GET(PCIE_RO_FL_OUT,
> > +				readl(pcie_phy->pma0 +
> > +				      REG_PCIE_PMA_RO_RX_FREQDET));
> > +		if (val < fl_out_target)
> > +			pr_idac &=3D ~(0x1 << i);
> > +
> > +		cdr_pr_idac_tmp =3D pr_idac;
> > +	}
> > +
> > +	airoha_phy_pma0_update_field(pcie_phy,
> > +				     REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				     PCIE_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				     cdr_pr_idac_tmp);
> > +
> > +	for (i =3D 0; i < 10; i++) {
> Same as above, macro for value 10.

ack, I will fix it.

> > +		airoha_phy_pma0_clear_bits(pcie_phy,
> > +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					   PCIE_FREQLOCK_DET_EN);
> > +		airoha_phy_pma0_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					     PCIE_FREQLOCK_DET_EN, 0x3);
> > +
> > +		usleep_range(10000, 15000);
> > +	}
> > +
> > +	/* turn off force mode and update band values */
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR0_PR_INJ_MODE,
> > +				     CSR_2L_PXP_CDR0_INJ_FORCE_OFF);
> > +
> > +	airoha_phy_pma0_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> > +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_R_EN);
> > +	airoha_phy_pma0_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> > +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_C_EN);
> > +	airoha_phy_pma0_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> > +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_PWDB);
> > +	airoha_phy_pma0_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_IDAC);
> > +	if (gen =3D=3D 3) {
> Here as well.

ack, I will fix it.

Regards,
Lorenzo

> > +		airoha_phy_pma0_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_DIG_RESERVE_14,
> > +					     PCIE_FLL_IDAC_PCIEG3,
> > +					     cdr_pr_idac_tmp);
> > +	} else {
> > +		airoha_phy_pma0_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_DIG_RESERVE_13,
> > +					     PCIE_FLL_IDAC_PCIEG1,
> > +					     cdr_pr_idac_tmp);
> > +		airoha_phy_pma0_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_DIG_RESERVE_13,
> > +					     PCIE_FLL_IDAC_PCIEG2,
> > +					     cdr_pr_idac_tmp);
> > +	}
> > +}
> > +
> > +static void
> > +airoha_phy_init_lane1_rx_fw_pre_calib(struct airoha_pcie_phy *pcie_phy,
> > +				      int gen)
> > +{
> > +	u32 fl_out_target =3D gen =3D=3D 3 ? 41600 : 41941;
> > +	u32 lock_cyclecnt =3D gen =3D=3D 3 ? 26000 : 32767;
> > +	u32 pr_idac, val, cdr_pr_idac_tmp =3D 0;
> > +	int i;
> > +
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_SS_LCPLL_PWCTL_SETTING_1,
> > +				 PCIE_LCPLL_MAN_PWDB);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET2,
> > +				     PCIE_LOCK_TARGET_BEG,
> > +				     fl_out_target - 100);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET2,
> > +				     PCIE_LOCK_TARGET_END,
> > +				     fl_out_target + 100);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET1,
> > +				     PCIE_PLL_FT_LOCK_CYCLECNT, lock_cyclecnt);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +				     PCIE_LOCK_LOCKTH, 0x3);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET3,
> > +				     PCIE_UNLOCK_TARGET_BEG,
> > +				     fl_out_target - 100);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET3,
> > +				     PCIE_UNLOCK_TARGET_END,
> > +				     fl_out_target + 100);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET1,
> > +				     PCIE_PLL_FT_UNLOCK_CYCLECNT,
> > +				     lock_cyclecnt);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +				     PCIE_UNLOCK_LOCKTH, 0x3);
> > +
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR1_PR_INJ_MODE,
> > +				   CSR_2L_PXP_CDR1_INJ_FORCE_OFF);
> > +
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> > +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_R_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> > +				 PCIE_FORCE_DA_PXP_CDR_PR_LPF_R_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> > +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_C_EN);
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> > +				   PCIE_FORCE_DA_PXP_CDR_PR_LPF_C_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_IDAC);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> > +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_PWDB);
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> > +				   PCIE_FORCE_DA_PXP_CDR_PR_PWDB);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> > +				 PCIE_FORCE_DA_PXP_CDR_PR_PWDB);
> > +
> > +	for (i =3D 0; i < 7; i++) {
> > +		airoha_phy_pma1_update_field(pcie_phy,
> > +				REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				PCIE_FORCE_DA_PXP_CDR_PR_IDAC, i << 8);
> > +		airoha_phy_pma1_clear_bits(pcie_phy,
> > +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					   PCIE_FREQLOCK_DET_EN);
> > +		airoha_phy_pma1_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					     PCIE_FREQLOCK_DET_EN, 0x3);
> > +
> > +		usleep_range(10000, 15000);
> > +
> > +		val =3D FIELD_GET(PCIE_RO_FL_OUT,
> > +				readl(pcie_phy->pma1 +
> > +				      REG_PCIE_PMA_RO_RX_FREQDET));
> > +		if (val > fl_out_target)
> > +			cdr_pr_idac_tmp =3D i << 8;
> > +	}
> > +
> > +	for (i =3D 7; i >=3D 0; i--) {
> > +		pr_idac =3D cdr_pr_idac_tmp | (0x1 << i);
> > +		airoha_phy_pma1_update_field(pcie_phy,
> > +				REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				PCIE_FORCE_DA_PXP_CDR_PR_IDAC, pr_idac);
> > +		airoha_phy_pma1_clear_bits(pcie_phy,
> > +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					   PCIE_FREQLOCK_DET_EN);
> > +		airoha_phy_pma1_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					     PCIE_FREQLOCK_DET_EN, 0x3);
> > +
> > +		usleep_range(10000, 15000);
> > +
> > +		val =3D FIELD_GET(PCIE_RO_FL_OUT,
> > +				readl(pcie_phy->pma1 +
> > +				      REG_PCIE_PMA_RO_RX_FREQDET));
> > +		if (val < fl_out_target)
> > +			pr_idac &=3D ~(0x1 << i);
> > +
> > +		cdr_pr_idac_tmp =3D pr_idac;
> > +	}
> > +
> > +	airoha_phy_pma1_update_field(pcie_phy,
> > +				     REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				     PCIE_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				     cdr_pr_idac_tmp);
> > +
> > +	for (i =3D 0; i < 10; i++) {
> > +		airoha_phy_pma1_clear_bits(pcie_phy,
> > +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					   PCIE_FREQLOCK_DET_EN);
> > +		airoha_phy_pma1_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> > +					     PCIE_FREQLOCK_DET_EN, 0x3);
> > +
> > +		usleep_range(10000, 15000);
> > +	}
> > +
> > +	/* turn off force mode and update band values */
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR1_PR_INJ_MODE,
> > +				     CSR_2L_PXP_CDR1_INJ_FORCE_OFF);
> > +
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> > +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_R_EN);
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> > +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_C_EN);
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> > +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_PWDB);
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_IDAC);
> > +	if (gen =3D=3D 3) {
> > +		airoha_phy_pma1_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_DIG_RESERVE_14,
> > +					     PCIE_FLL_IDAC_PCIEG3,
> > +					     cdr_pr_idac_tmp);
> > +	} else {
> > +		airoha_phy_pma1_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_DIG_RESERVE_13,
> > +					     PCIE_FLL_IDAC_PCIEG1,
> > +					     cdr_pr_idac_tmp);
> > +		airoha_phy_pma1_update_field(pcie_phy,
> > +					     REG_PCIE_PMA_DIG_RESERVE_13,
> > +					     PCIE_FLL_IDAC_PCIEG2,
> > +					     cdr_pr_idac_tmp);
> > +	}
> > +}
> > +
> > +static void airoha_pcie_phy_init_default(struct airoha_pcie_phy *pcie_=
phy)
> > +{
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CMN,
> > +				       CSR_2L_PXP_CMN_TRIM_MASK, 0x10);
> > +	writel(0xcccbcccb, pcie_phy->pma0 + REG_PCIE_PMA_DIG_RESERVE_21);
> > +	writel(0xcccb, pcie_phy->pma0 + REG_PCIE_PMA_DIG_RESERVE_22);
> > +	writel(0xcccbcccb, pcie_phy->pma1 + REG_PCIE_PMA_DIG_RESERVE_21);
> > +	writel(0xcccb, pcie_phy->pma1 + REG_PCIE_PMA_DIG_RESERVE_22);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CMN,
> > +				   CSR_2L_PXP_CMN_LANE_EN);
> > +}
> > +
> > +static void airoha_pcie_phy_init_clk_out(struct airoha_pcie_phy *pcie_=
phy)
> > +{
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_TXPLL_POSTDIV_D256,
> > +				       CSR_2L_PXP_CLKTX0_AMP, 0x5);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_CLKTX0_FORCE_OUT1,
> > +				       CSR_2L_PXP_CLKTX1_AMP, 0x5);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_TXPLL_POSTDIV_D256,
> > +				       CSR_2L_PXP_CLKTX0_OFFSET, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CLKTX1_OFFSET,
> > +				       CSR_2L_PXP_CLKTX1_OFFSET, 0x2);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CLKTX0_FORCE_OUT1,
> > +				     CSR_2L_PXP_CLKTX0_HZ);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CLKTX1_OFFSET,
> > +				     CSR_2L_PXP_CLKTX1_HZ);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_CLKTX0_FORCE_OUT1,
> > +				       CSR_2L_PXP_CLKTX0_IMP_SEL, 0x12);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CLKTX1_IMP_SEL,
> > +				       CSR_2L_PXP_CLKTX1_IMP_SEL, 0x12);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_POSTDIV_D256,
> > +				     CSR_2L_PXP_CLKTX0_SR);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CLKTX1_OFFSET,
> > +				     CSR_2L_PXP_CLKTX1_SR);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_PLL_CMN_RESERVE0,
> > +				       CSR_2L_PXP_PLL_RESERVE_MASK, 0xdd);
> > +}
> > +
> > +static void airoha_pcie_phy_init_csr_2l(struct airoha_pcie_phy *pcie_p=
hy)
> > +{
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> > +				 PCIE_SW_XFI_RXPCS_RST | PCIE_SW_REF_RST |
> > +				 PCIE_SW_RX_RST);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> > +				 PCIE_SW_XFI_RXPCS_RST | PCIE_SW_REF_RST |
> > +				 PCIE_SW_RX_RST);
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_TX_RESET,
> > +				 PCIE_TX_TOP_RST | REG_PCIE_PMA_TX_RESET);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_TX_RESET,
> > +				 PCIE_TX_TOP_RST | REG_PCIE_PMA_TX_RESET);
> > +}
> > +
> > +static void airoha_pcie_phy_init_rx(struct airoha_pcie_phy *pcie_phy)
> > +{
> > +	writel(0x2a00090b, pcie_phy->pma0 + REG_PCIE_PMA_DIG_RESERVE_17);
> > +	writel(0x2a00090b, pcie_phy->pma1 + REG_PCIE_PMA_DIG_RESERVE_17);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR0_PR_MONPI,
> > +				   CSR_2L_PXP_CDR0_PR_XFICK_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR1_PR_MONPI,
> > +				   CSR_2L_PXP_CDR1_PR_XFICK_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy,
> > +				     REG_CSR_2L_CDR0_PD_PICAL_CKD8_INV,
> > +				     CSR_2L_PXP_CDR0_PD_EDGE_DISABLE);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy,
> > +				     REG_CSR_2L_CDR1_PD_PICAL_CKD8_INV,
> > +				     CSR_2L_PXP_CDR1_PD_EDGE_DISABLE);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_PHYCK_DIV,
> > +				       CSR_2L_PXP_RX0_PHYCK_SEL, 0x1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_PHYCK_DIV,
> > +				       CSR_2L_PXP_RX1_PHYCK_SEL, 0x1);
> > +}
> > +
> > +static void airoha_pcie_phy_init_jcpll(struct airoha_pcie_phy *pcie_ph=
y)
> > +{
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_EN);
> > +	airoha_phy_pma0_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				   PCIE_FORCE_DA_PXP_JCPLL_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_EN);
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				   PCIE_FORCE_DA_PXP_JCPLL_EN);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_TCL_VTP_EN,
> > +				       CSR_2L_PXP_JCPLL_SPARE_LOW, 0x20);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
> > +				   CSR_2L_PXP_JCPLL_RST);
> > +	writel(0x0, pcie_phy->csr_2l + REG_CSR_2L_JCPLL_SSC_DELTA1);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC_PERIOD,
> > +				     CSR_2L_PXP_JCPLL_SSC_PERIOD);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> > +				     CSR_2L_PXP_JCPLL_SSC_PHASE_INI);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> > +				     CSR_2L_PXP_JCPLL_SSC_TRI_EN);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BR,
> > +				       CSR_2L_PXP_JCPLL_LPF_BR, 0xa);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BR,
> > +				       CSR_2L_PXP_JCPLL_LPF_BP, 0xc);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BR,
> > +				       CSR_2L_PXP_JCPLL_LPF_BC, 0x1f);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BWC,
> > +				       CSR_2L_PXP_JCPLL_LPF_BWC, 0x1e);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BR,
> > +				       CSR_2L_PXP_JCPLL_LPF_BWR, 0xa);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_JCPLL_MMD_PREDIV_MODE,
> > +				       CSR_2L_PXP_JCPLL_MMD_PREDIV_MODE,
> > +				       0x1);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, CSR_2L_PXP_JCPLL_MONCK,
> > +				     CSR_2L_PXP_JCPLL_REFIN_DIV);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_VO=
S,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_SDM_PCW);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_VO=
S,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_SDM_PCW);
> > +	airoha_phy_pma0_update_field(pcie_phy,
> > +				     REG_PCIE_PMA_FORCE_DA_PXP_JCPLL_SDM_PCW,
> > +				     PCIE_FORCE_DA_PXP_JCPLL_SDM_PCW,
> > +				     0x50000000);
> > +	airoha_phy_pma1_update_field(pcie_phy,
> > +				     REG_PCIE_PMA_FORCE_DA_PXP_JCPLL_SDM_PCW,
> > +				     PCIE_FORCE_DA_PXP_JCPLL_SDM_PCW,
> > +				     0x50000000);
> > +
> > +	airoha_phy_csr_2l_set_bits(pcie_phy,
> > +				   REG_CSR_2L_JCPLL_MMD_PREDIV_MODE,
> > +				   CSR_2L_PXP_JCPLL_POSTDIV_D5);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy,
> > +				   REG_CSR_2L_JCPLL_MMD_PREDIV_MODE,
> > +				   CSR_2L_PXP_JCPLL_POSTDIV_D2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
> > +				       CSR_2L_PXP_JCPLL_RST_DLY, 0x4);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
> > +				     CSR_2L_PXP_JCPLL_SDM_DI_LS);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_TCL_KBAND_VRE=
F,
> > +				     CSR_2L_PXP_JCPLL_VCO_KBAND_MEAS_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_IB_EXT,
> > +				     CSR_2L_PXP_JCPLL_CHP_IOFST);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_IB_EXT,
> > +				       CSR_2L_PXP_JCPLL_CHP_IBIAS, 0xc);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_JCPLL_MMD_PREDIV_MODE,
> > +				       CSR_2L_PXP_JCPLL_MMD_PREDIV_MODE,
> > +				       0x1);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_VCODIV,
> > +				   CSR_2L_PXP_JCPLL_VCO_HALFLSB_EN);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_VCODIV,
> > +				       CSR_2L_PXP_JCPLL_VCO_CFIX, 0x1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_VCODIV,
> > +				       CSR_2L_PXP_JCPLL_VCO_SCAPWR, 0x4);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_IB_EXT,
> > +				     REG_CSR_2L_JCPLL_LPF_SHCK_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_KBAND_KFC,
> > +				   CSR_2L_PXP_JCPLL_POSTDIV_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_KBAND_KFC,
> > +				     CSR_2L_PXP_JCPLL_KBAND_KFC);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_KBAND_KFC,
> > +				       CSR_2L_PXP_JCPLL_KBAND_KF, 0x3);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_KBAND_KFC,
> > +				     CSR_2L_PXP_JCPLL_KBAND_KS);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BWC,
> > +				       CSR_2L_PXP_JCPLL_KBAND_DIV, 0x1);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_SCAN_MODE,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_KBAND_LOAD_EN);
> > +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_SCAN_MODE,
> > +				   PCIE_FORCE_DA_PXP_JCPLL_KBAND_LOAD_EN);
> > +
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BWC,
> > +				       CSR_2L_PXP_JCPLL_KBAND_CODE, 0xe4);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
> > +				   CSR_2L_PXP_JCPLL_TCL_AMP_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_TCL_CMP,
> > +				   CSR_2L_PXP_JCPLL_TCL_LPF_EN);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_JCPLL_TCL_KBAND_VREF,
> > +				       CSR_2L_PXP_JCPLL_TCL_KBAND_VREF, 0xf);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
> > +				       CSR_2L_PXP_JCPLL_TCL_AMP_GAIN, 0x1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
> > +				       CSR_2L_PXP_JCPLL_TCL_AMP_VREF, 0x5);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_TCL_CMP,
> > +				       CSR_2L_PXP_JCPLL_TCL_LPF_BW, 0x1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_VCO_TCLVAR,
> > +				       CSR_2L_PXP_JCPLL_VCO_TCLVAR, 0x3);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_CKOUT_EN);
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_DA_PXP_JCPLL_CKOUT_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_CKOUT_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_DA_PXP_JCPLL_CKOUT_EN);
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_EN);
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_DA_PXP_JCPLL_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> > +				 PCIE_FORCE_DA_PXP_JCPLL_EN);
> > +}
> > +
> > +static void airoha_pcie_phy_txpll(struct airoha_pcie_phy *pcie_phy)
> > +{
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_EN);
> > +	airoha_phy_pma0_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				   PCIE_FORCE_DA_PXP_TXPLL_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_EN);
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				   PCIE_FORCE_DA_PXP_TXPLL_EN);
> > +
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_REFIN_DIV,
> > +				   CSR_2L_PXP_TXPLL_PLL_RSTB);
> > +	writel(0x0, pcie_phy->csr_2l + REG_CSR_2L_TXPLL_SSC_DELTA1);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SSC_PERIOD,
> > +				     CSR_2L_PXP_txpll_SSC_PERIOD);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> > +				       CSR_2L_PXP_TXPLL_CHP_IOFST, 0x1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_750M_SYS_CK,
> > +				       CSR_2L_PXP_TXPLL_CHP_IBIAS, 0x2d);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_REFIN_DIV,
> > +				     CSR_2L_PXP_TXPLL_REFIN_DIV);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_TCL_LPF_BW,
> > +				       CSR_2L_PXP_TXPLL_VCO_CFIX, 0x3);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_I=
DAC,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_I=
DAC,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW);
> > +	airoha_phy_pma0_update_field(pcie_phy,
> > +				     REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_SDM_PCW,
> > +				     PCIE_FORCE_DA_PXP_TXPLL_SDM_PCW,
> > +				     0xc800000);
> > +	airoha_phy_pma1_update_field(pcie_phy,
> > +				     REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_SDM_PCW,
> > +				     PCIE_FORCE_DA_PXP_TXPLL_SDM_PCW,
> > +				     0xc800000);
> > +
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SDM_DI_LS,
> > +				     CSR_2L_PXP_TXPLL_SDM_IFM);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SSC,
> > +				     CSR_2L_PXP_TXPLL_SSC_PHASE_INI);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_REFIN_DIV,
> > +				       CSR_2L_PXP_TXPLL_RST_DLY, 0x4);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SDM_DI_LS,
> > +				     CSR_2L_PXP_TXPLL_SDM_DI_LS);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_SDM_DI_LS,
> > +				       CSR_2L_PXP_TXPLL_SDM_ORD, 0x3);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_TCL_KBAND_VRE=
F,
> > +				     CSR_2L_PXP_TXPLL_VCO_KBAND_MEAS_EN);
> > +	writel(0x0, pcie_phy->csr_2l + REG_CSR_2L_TXPLL_SSC_DELTA1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> > +				       CSR_2L_PXP_TXPLL_LPF_BP, 0x1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> > +				       CSR_2L_PXP_TXPLL_LPF_BC, 0x18);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> > +				       CSR_2L_PXP_TXPLL_LPF_BR, 0x5);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> > +				       CSR_2L_PXP_TXPLL_CHP_IOFST, 0x1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_750M_SYS_CK,
> > +				       CSR_2L_PXP_TXPLL_CHP_IBIAS, 0x2d);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_TCL_VTP,
> > +				       CSR_2L_PXP_TXPLL_SPARE_L, 0x1);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_LPF_BWR,
> > +				     CSR_2L_PXP_TXPLL_LPF_BWC);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_POSTDIV,
> > +				     CSR_2L_PXP_TXPLL_MMD_PREDIV_MODE);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_REFIN_DIV,
> > +				     CSR_2L_PXP_TXPLL_REFIN_DIV);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_TCL_LPF_BW,
> > +				   CSR_2L_PXP_TXPLL_VCO_HALFLSB_EN);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_VCO_SCAPWR,
> > +				       CSR_2L_PXP_TXPLL_VCO_SCAPWR, 0x7);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_TCL_LPF_BW,
> > +				       CSR_2L_PXP_TXPLL_VCO_CFIX, 0x3);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW);
> > +
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SSC,
> > +				     CSR_2L_PXP_TXPLL_SSC_PHASE_INI);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_LPF_BWR,
> > +				     CSR_2L_PXP_TXPLL_LPF_BWR);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_PHY_CK2,
> > +				   CSR_2L_PXP_TXPLL_REFIN_INTERNAL);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_TCL_KBAND_VRE=
F,
> > +				     CSR_2L_PXP_TXPLL_VCO_KBAND_MEAS_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_VTP,
> > +				     CSR_2L_PXP_TXPLL_VTP_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_POSTDIV,
> > +				     CSR_2L_PXP_TXPLL_PHY_CK1_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_PHY_CK2,
> > +				   CSR_2L_PXP_TXPLL_REFIN_INTERNAL);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SSC,
> > +				     CSR_2L_PXP_TXPLL_SSC_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_750M_SYS_CK,
> > +				     CSR_2L_PXP_TXPLL_LPF_SHCK_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_POSTDIV,
> > +				     CSR_2L_PXP_TXPLL_POSTDIV_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_KBAND_DIV,
> > +				     CSR_2L_PXP_TXPLL_KBAND_KFC);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_KBAND_DIV,
> > +				       CSR_2L_PXP_TXPLL_KBAND_KF, 0x3);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_KBAND_DIV,
> > +				       CSR_2L_PXP_txpll_KBAND_KS, 0x1);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_KBAND_DIV,
> > +				       CSR_2L_PXP_TXPLL_KBAND_DIV, 0x4);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_LPF_BWR,
> > +				       CSR_2L_PXP_TXPLL_KBAND_CODE, 0xe4);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_SDM_OUT,
> > +				   CSR_2L_PXP_TXPLL_TCL_AMP_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_TCL_AMP_VREF,
> > +				   CSR_2L_PXP_TXPLL_TCL_LPF_EN);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_TXPLL_TCL_KBAND_VREF,
> > +				       CSR_2L_PXP_TXPLL_TCL_KBAND_VREF, 0xf);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_SDM_OUT,
> > +				       CSR_2L_PXP_TXPLL_TCL_AMP_GAIN, 0x3);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_TXPLL_TCL_AMP_VREF,
> > +				       CSR_2L_PXP_TXPLL_TCL_AMP_VREF, 0xb);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_TCL_LPF_BW,
> > +				       CSR_2L_PXP_TXPLL_TCL_LPF_BW, 0x3);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_CKOUT_EN);
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_DA_PXP_TXPLL_CKOUT_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_CKOUT_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_DA_PXP_TXPLL_CKOUT_EN);
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_EN);
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_DA_PXP_TXPLL_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> > +				 PCIE_FORCE_DA_PXP_TXPLL_EN);
> > +}
> > +
> > +static void airoha_pcie_phy_init_ssc_jcpll(struct airoha_pcie_phy *pci=
e_phy)
> > +{
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SSC_DELTA1,
> > +				       CSR_2L_PXP_JCPLL_SSC_DELTA1, 0x106);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SSC_DELTA1,
> > +				       CSR_2L_PXP_JCPLL_SSC_DELTA, 0x106);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SSC_PERIOD,
> > +				       CSR_2L_PXP_JCPLL_SSC_PERIOD, 0x31b);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> > +				   CSR_2L_PXP_JCPLL_SSC_PHASE_INI);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> > +				   CSR_2L_PXP_JCPLL_SSC_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SDM_IFM,
> > +				   CSR_2L_PXP_JCPLL_SDM_IFM);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
> > +				   REG_CSR_2L_JCPLL_SDM_HREN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
> > +				     CSR_2L_PXP_JCPLL_SDM_DI_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> > +				   CSR_2L_PXP_JCPLL_SSC_TRI_EN);
> > +}
> > +
> > +static void
> > +airoha_pcie_phy_set_rxlan0_signal_detect(struct airoha_pcie_phy *pcie_=
phy)
> > +{
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR0_PR_COR_HBW,
> > +				   CSR_2L_PXP_CDR0_PR_LDO_FORCE_ON);
> > +
> > +	usleep_range(100, 200);
> > +
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_19,
> > +				     PCIE_PCP_RX_REV0_PCIE_GEN1, 0x18b0);
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_20,
> > +				     PCIE_PCP_RX_REV0_PCIE_GEN2, 0x18b0);
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_20,
> > +				     PCIE_PCP_RX_REV0_PCIE_GEN3, 0x1030);
> > +
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_SIGDET_DCTEST,
> > +				       CSR_2L_PXP_RX0_SIGDET_PEAK, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_SIGDET_VTH_SE=
L,
> > +				       CSR_2L_PXP_RX0_SIGDET_VTH_SEL, 0x5);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_REV0,
> > +				       CSR_2L_PXP_VOS_PNINV, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_SIGDET_DCTEST,
> > +				       CSR_2L_PXP_RX0_SIGDET_LPF_CTRL, 0x1);
> > +
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_CAL2,
> > +				     PCIE_CAL_OUT_OS, 0x0);
> > +
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_PXP_RX0_FE_VB_EQ2,
> > +				   CSR_2L_PXP_RX0_FE_VCM_GEN_PWDB);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL,
> > +				 PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB);
> > +	airoha_phy_pma0_update_field(pcie_phy,
> > +				     REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL,
> > +				     PCIE_FORCE_DA_PXP_RX_FE_GAIN_CTRL, 0x3);
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_RX_FORCE_MODE0,
> > +				     PCIE_FORCE_DA_XPON_RX_FE_GAIN_CTRL, 0x1);
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_SIGDET0,
> > +				     PCIE_SIGDET_WIN_NONVLD_TIMES, 0x3);
> > +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_SEQUENCE_DISB_CTRL1,
> > +				   PCIE_DISB_RX_SDCAL_EN);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1,
> > +				 PCIE_FORCE_RX_SDCAL_EN);
> > +	usleep_range(150, 200);
> > +	airoha_phy_pma0_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1,
> > +				   PCIE_FORCE_RX_SDCAL_EN);
> > +}
> > +
> > +static void
> > +airoha_pcie_phy_set_rxlan1_signal_detect(struct airoha_pcie_phy *pcie_=
phy)
> > +{
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR1_PR_COR_HBW,
> > +				   CSR_2L_PXP_CDR1_PR_LDO_FORCE_ON);
> > +
> > +	usleep_range(100, 200);
> > +
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_19,
> > +				     PCIE_PCP_RX_REV0_PCIE_GEN1, 0x18b0);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_20,
> > +				     PCIE_PCP_RX_REV0_PCIE_GEN2, 0x18b0);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_20,
> > +				     PCIE_PCP_RX_REV0_PCIE_GEN3, 0x1030);
> > +
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_SIGDET_NOVTH,
> > +				       CSR_2L_PXP_RX1_SIGDET_PEAK, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_SIGDET_NOVTH,
> > +				       CSR_2L_PXP_RX1_SIGDET_VTH_SEL, 0x5);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_REV0,
> > +				       CSR_2L_PXP_VOS_PNINV, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_DAC_RANGE_EYE,
> > +				       CSR_2L_PXP_RX1_SIGDET_LPF_CTRL, 0x1);
> > +
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_CAL2,
> > +				     PCIE_CAL_OUT_OS, 0x0);
> > +
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX1_FE_VB_EQ1,
> > +				   CSR_2L_PXP_RX1_FE_VCM_GEN_PWDB);
> > +
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL,
> > +				 PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB);
> > +	airoha_phy_pma1_update_field(pcie_phy,
> > +				     REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL,
> > +				     PCIE_FORCE_DA_PXP_RX_FE_GAIN_CTRL, 0x3);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_RX_FORCE_MODE0,
> > +				     PCIE_FORCE_DA_XPON_RX_FE_GAIN_CTRL, 0x1);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_SIGDET0,
> > +				     PCIE_SIGDET_WIN_NONVLD_TIMES, 0x3);
> > +	airoha_phy_pma1_clear_bits(pcie_phy, REG_PCIE_PMA_SEQUENCE_DISB_CTRL1,
> > +				   PCIE_DISB_RX_SDCAL_EN);
> > +
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1,
> > +				 PCIE_FORCE_RX_SDCAL_EN);
> > +	usleep_range(150, 200);
> > +	airoha_phy_pma1_clear_bits(pcie_phy,
> > +				   REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1,
> > +				   PCIE_FORCE_RX_SDCAL_EN);
> > +}
> > +
> > +static void airoha_pcie_phy_set_rxflow(struct airoha_pcie_phy *pcie_ph=
y)
> > +{
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_SCAN_RST,
> > +				 PCIE_FORCE_DA_PXP_RX_SIGDET_PWDB |
> > +				 PCIE_FORCE_SEL_DA_PXP_RX_SIGDET_PWDB);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_SCAN_RST,
> > +				 PCIE_FORCE_DA_PXP_RX_SIGDET_PWDB |
> > +				 PCIE_FORCE_SEL_DA_PXP_RX_SIGDET_PWDB);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PD_PWDB,
> > +				 PCIE_FORCE_DA_PXP_CDR_PD_PWDB |
> > +				 PCIE_FORCE_SEL_DA_PXP_CDR_PD_PWDB);
> > +	airoha_phy_pma0_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_PWDB,
> > +				 PCIE_FORCE_DA_PXP_RX_FE_PWDB |
> > +				 PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PD_PWDB,
> > +				 PCIE_FORCE_DA_PXP_CDR_PD_PWDB |
> > +				 PCIE_FORCE_SEL_DA_PXP_CDR_PD_PWDB);
> > +	airoha_phy_pma1_set_bits(pcie_phy,
> > +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_PWDB,
> > +				 PCIE_FORCE_DA_PXP_RX_FE_PWDB |
> > +				 PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB);
> > +
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX0_PHYCK_DIV,
> > +				   CSR_2L_PXP_RX0_PHYCK_RSTB |
> > +				   CSR_2L_PXP_RX0_TDC_CK_SEL);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX1_PHYCK_DIV,
> > +				   CSR_2L_PXP_RX1_PHYCK_RSTB |
> > +				   CSR_2L_PXP_RX1_TDC_CK_SEL);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> > +				 PCIE_SW_RX_FIFO_RST | PCIE_SW_TX_RST |
> > +				 PCIE_SW_PMA_RST | PCIE_SW_ALLPCS_RST |
> > +				 PCIE_SW_TX_FIFO_RST);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> > +				 PCIE_SW_RX_FIFO_RST | PCIE_SW_TX_RST |
> > +				 PCIE_SW_PMA_RST | PCIE_SW_ALLPCS_RST |
> > +				 PCIE_SW_TX_FIFO_RST);
> > +
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_PXP_RX0_FE_VB_EQ2,
> > +				   CSR_2L_PXP_RX0_FE_VB_EQ2_EN |
> > +				   CSR_2L_PXP_RX0_FE_VB_EQ3_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX0_SIGDET_VTH_SEL,
> > +				   CSR_2L_PXP_RX0_FE_VB_EQ1_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX1_FE_VB_EQ1,
> > +				   CSR_2L_PXP_RX1_FE_VB_EQ1_EN |
> > +				   CSR_2L_PXP_RX1_FE_VB_EQ2_EN |
> > +				   CSR_2L_PXP_RX1_FE_VB_EQ3_EN);
> > +
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_REV0,
> > +				       CSR_2L_PXP_FE_GAIN_NORMAL_MODE, 0x4);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_REV0,
> > +				       CSR_2L_PXP_FE_GAIN_TRAIN_MODE, 0x4);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_REV0,
> > +				       CSR_2L_PXP_FE_GAIN_NORMAL_MODE, 0x4);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_REV0,
> > +				       CSR_2L_PXP_FE_GAIN_TRAIN_MODE, 0x4);
> > +}
> > +
> > +static void airoha_pcie_phy_set_pr(struct airoha_pcie_phy *pcie_phy)
> > +{
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_VREG_IBAN=
D,
> > +				       CSR_2L_PXP_CDR0_PR_VREG_IBAND, 0x5);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_VREG_IBAN=
D,
> > +				       CSR_2L_PXP_CDR0_PR_VREG_CKBUF, 0x5);
> > +
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR0_PR_CKREF_DIV,
> > +				     CSR_2L_PXP_CDR0_PR_CKREF_DIV);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR0_PR_COR_HBW,
> > +				     CSR_2L_PXP_CDR0_PR_CKREF_DIV1);
> > +
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_CDR1_PR_VREG_IBAND_VAL,
> > +				       CSR_2L_PXP_CDR1_PR_VREG_IBAND, 0x5);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_CDR1_PR_VREG_IBAND_VAL,
> > +				       CSR_2L_PXP_CDR1_PR_VREG_CKBUF, 0x5);
> > +
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR1_PR_CKREF_DIV,
> > +				     CSR_2L_PXP_CDR1_PR_CKREF_DIV);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR1_PR_COR_HBW,
> > +				     CSR_2L_PXP_CDR1_PR_CKREF_DIV1);
> > +
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_LPF_RATIO,
> > +				       CSR_2L_PXP_CDR0_LPF_TOP_LIM, 0x20000);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR1_LPF_RATIO,
> > +				       CSR_2L_PXP_CDR1_LPF_TOP_LIM, 0x20000);
> > +
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_BETA_DAC,
> > +				       CSR_2L_PXP_CDR0_PR_BETA_SEL, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR1_PR_BETA_DAC,
> > +				       CSR_2L_PXP_CDR1_PR_BETA_SEL, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_BETA_DAC,
> > +				       CSR_2L_PXP_CDR0_PR_KBAND_DIV, 0x4);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR1_PR_BETA_DAC,
> > +				       CSR_2L_PXP_CDR1_PR_KBAND_DIV, 0x4);
> > +}
> > +
> > +static void airoha_pcie_phy_set_txflow(struct airoha_pcie_phy *pcie_ph=
y)
> > +{
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TX0_CKLDO,
> > +				   CSR_2L_PXP_TX0_CKLDO_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TX1_CKLDO,
> > +				   CSR_2L_PXP_TX1_CKLDO_EN);
> > +
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TX0_CKLDO,
> > +				   CSR_2L_PXP_TX0_DMEDGEGEN_EN);
> > +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TX1_CKLDO,
> > +				   CSR_2L_PXP_TX1_DMEDGEGEN_EN);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TX1_MULTLANE,
> > +				     CSR_2L_PXP_TX1_MULTLANE_EN);
> > +}
> > +
> > +static void airoha_pcie_phy_set_rx_mode(struct airoha_pcie_phy *pcie_p=
hy)
> > +{
> > +	writel(0x804000, pcie_phy->pma0 + REG_PCIE_PMA_DIG_RESERVE_27);
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> > +				     PCIE_PXP_RX_VTH_SEL_PCIE_G1, 0x5);
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> > +				     PCIE_PXP_RX_VTH_SEL_PCIE_G2, 0x5);
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> > +				     PCIE_PXP_RX_VTH_SEL_PCIE_G3, 0x5);
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_30,
> > +				 0x77700);
> > +
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR0_PR_MONCK,
> > +				     CSR_2L_PXP_CDR0_PR_MONCK_ENABLE);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_MONCK,
> > +				       CSR_2L_PXP_CDR0_PR_RESERVE0, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_PXP_RX0_OSCAL_CTLE1IOS,
> > +				       CSR_2L_PXP_RX0_PR_OSCAL_VGA1IOS, 0x19);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_PXP_RX0_OSCA_VGA1VOS,
> > +				       CSR_2L_PXP_RX0_PR_OSCAL_VGA1VOS, 0x19);
> > +	airoha_phy_csr_2l_update_field(pcie_phy,
> > +				       REG_CSR_2L_PXP_RX0_OSCA_VGA1VOS,
> > +				       CSR_2L_PXP_RX0_PR_OSCAL_VGA2IOS, 0x14);
> > +
> > +	writel(0x804000, pcie_phy->pma1 + REG_PCIE_PMA_DIG_RESERVE_27);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> > +				     PCIE_PXP_RX_VTH_SEL_PCIE_G1, 0x5);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> > +				     PCIE_PXP_RX_VTH_SEL_PCIE_G2, 0x5);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> > +				     PCIE_PXP_RX_VTH_SEL_PCIE_G3, 0x5);
> > +
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_30,
> > +				 0x77700);
> > +
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR1_PR_MONCK,
> > +				     CSR_2L_PXP_CDR1_PR_MONCK_ENABLE);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR1_PR_MONCK,
> > +				       CSR_2L_PXP_CDR1_PR_RESERVE0, 0x2);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_OSCAL_VGA1IOS,
> > +				       CSR_2L_PXP_RX1_PR_OSCAL_VGA1IOS, 0x19);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_OSCAL_VGA1IOS,
> > +				       CSR_2L_PXP_RX1_PR_OSCAL_VGA1VOS, 0x19);
> > +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_OSCAL_VGA1IOS,
> > +				       CSR_2L_PXP_RX1_PR_OSCAL_VGA2IOS, 0x14);
> > +}
> > +
> > +static void airoha_pcie_phy_load_kflow(struct airoha_pcie_phy *pcie_ph=
y)
> > +{
> > +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_12,
> > +				     PCIE_FORCE_PMA_RX_SPEED, 0xa);
> > +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_12,
> > +				     PCIE_FORCE_PMA_RX_SPEED, 0xa);
> > +	airoha_phy_init_lane0_rx_fw_pre_calib(pcie_phy, 3);
> > +	airoha_phy_init_lane1_rx_fw_pre_calib(pcie_phy, 3);
> > +
> > +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_12,
> > +				   PCIE_FORCE_PMA_RX_SPEED);
> > +	airoha_phy_pma1_clear_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_12,
> > +				   PCIE_FORCE_PMA_RX_SPEED);
> > +	usleep_range(100, 200);
> > +
> > +	airoha_phy_init_lane0_rx_fw_pre_calib(pcie_phy, 2);
> > +	airoha_phy_init_lane1_rx_fw_pre_calib(pcie_phy, 2);
> > +}
> > +
> > +/**
> > + * airoha_pcie_phy_init() - Initialize the phy
> > + * @phy: the phy to be initialized
> > + *
> > + * Initialize the phy registers.
> > + * The hardware settings will be reset during suspend, it should be
> > + * reinitialized when the consumer calls phy_init() again on resume.
> > + */
> > +static int airoha_pcie_phy_init(struct phy *phy)
> > +{
> > +	struct airoha_pcie_phy *pcie_phy =3D phy_get_drvdata(phy);
> > +
> > +	/* enable load FLL-K flow */
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_14,
> > +				 PCIE_FLL_LOAD_EN);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_14,
> > +				 PCIE_FLL_LOAD_EN);
> > +
> > +	airoha_pcie_phy_init_default(pcie_phy);
> > +	airoha_pcie_phy_init_clk_out(pcie_phy);
> > +	airoha_pcie_phy_init_csr_2l(pcie_phy);
> > +
> > +	usleep_range(100, 200);
> > +
> > +	airoha_pcie_phy_init_rx(pcie_phy);
> > +	/* phase 1, no ssc for K TXPLL */
> > +	airoha_pcie_phy_init_jcpll(pcie_phy);
> > +
> > +	usleep_range(500, 600);
> > +
> > +	/* TX PLL settings */
> > +	airoha_pcie_phy_txpll(pcie_phy);
> > +
> > +	usleep_range(200, 300);
> > +
> > +	/* SSC JCPLL setting */
> > +	airoha_pcie_phy_init_ssc_jcpll(pcie_phy);
> > +
> > +	usleep_range(100, 200);
> > +
> > +	/* Rx lan0 signal detect */
> > +	airoha_pcie_phy_set_rxlan0_signal_detect(pcie_phy);
> > +	/* Rx lan1 signal detect */
> > +	airoha_pcie_phy_set_rxlan1_signal_detect(pcie_phy);
> > +	/* RX FLOW */
> > +	airoha_pcie_phy_set_rxflow(pcie_phy);
> > +
> > +	usleep_range(100, 200);
> > +
> > +	airoha_pcie_phy_set_pr(pcie_phy);
> > +	/* TX FLOW */
> > +	airoha_pcie_phy_set_txflow(pcie_phy);
> > +
> > +	usleep_range(100, 200);
> > +	/* RX mode setting */
> > +	airoha_pcie_phy_set_rx_mode(pcie_phy);
> > +	/* Load K-Flow */
> > +	airoha_pcie_phy_load_kflow(pcie_phy);
> > +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> > +				   PCIE_DA_XPON_CDR_PR_PWDB);
> > +	airoha_phy_pma1_clear_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> > +				   PCIE_DA_XPON_CDR_PR_PWDB);
> > +
> > +	usleep_range(100, 200);
> > +
> > +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> > +				 PCIE_DA_XPON_CDR_PR_PWDB);
> > +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> > +				 PCIE_DA_XPON_CDR_PR_PWDB);
> > +
> > +	usleep_range(100, 200);
> > +
> > +	return 0;
> > +}
> > +
> > +static int airoha_pcie_phy_exit(struct phy *phy)
> > +{
> > +	struct airoha_pcie_phy *pcie_phy =3D phy_get_drvdata(phy);
> > +
> > +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> > +				   PCIE_PMA_SW_RST);
> > +	airoha_phy_pma1_clear_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> > +				   PCIE_PMA_SW_RST);
> > +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> > +				     CSR_2L_PXP_JCPLL_SSC_PHASE_INI |
> > +				     CSR_2L_PXP_JCPLL_SSC_TRI_EN |
> > +				     CSR_2L_PXP_JCPLL_SSC_EN);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct phy_ops airoha_pcie_phy_ops =3D {
> > +	.init =3D airoha_pcie_phy_init,
> > +	.exit =3D airoha_pcie_phy_exit,
> > +	.owner =3D THIS_MODULE,
> > +};
> > +
> > +static int airoha_pcie_phy_probe(struct platform_device *pdev)
> > +{
> > +	struct airoha_pcie_phy *pcie_phy;
> > +	struct device *dev =3D &pdev->dev;
> > +	struct phy_provider *provider;
> > +
> > +	pcie_phy =3D devm_kzalloc(dev, sizeof(*pcie_phy), GFP_KERNEL);
> > +	if (!pcie_phy)
> > +		return -ENOMEM;
> > +
> > +	pcie_phy->csr_2l =3D devm_platform_ioremap_resource_byname(pdev, "csr=
_2l");
> > +	if (IS_ERR(pcie_phy->csr_2l))
> > +		return dev_err_probe(dev, PTR_ERR(pcie_phy->csr_2l),
> > +				     "Failed to map phy-csr_2l base\n");
> > +
> > +	pcie_phy->pma0 =3D devm_platform_ioremap_resource_byname(pdev, "pma0"=
);
> > +	if (IS_ERR(pcie_phy->pma0))
> > +		return dev_err_probe(dev, PTR_ERR(pcie_phy->pma0),
> > +				     "Failed to map phy-pma0 base\n");
> > +
> > +	pcie_phy->pma1 =3D devm_platform_ioremap_resource_byname(pdev, "pma1"=
);
> > +	if (IS_ERR(pcie_phy->pma1))
> > +		return dev_err_probe(dev, PTR_ERR(pcie_phy->pma1),
> > +				     "Failed to map phy-pma1 base\n");
> > +
> > +	pcie_phy->phy =3D devm_phy_create(dev, dev->of_node, &airoha_pcie_phy=
_ops);
> > +	if (IS_ERR(pcie_phy->phy))
> > +		return dev_err_probe(dev, PTR_ERR(pcie_phy->phy),
> > +				     "Failed to create PCIe phy\n");
> > +
> > +	pcie_phy->dev =3D dev;
> > +	phy_set_drvdata(pcie_phy->phy, pcie_phy);
> > +
> > +	provider =3D devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> > +	if (IS_ERR(provider))
> > +		return dev_err_probe(dev, PTR_ERR(provider),
> > +				     "PCIe phy probe failed\n");
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct of_device_id airoha_pcie_phy_of_match[] =3D {
> > +	{ .compatible =3D "airoha,en7581-pcie-phy" },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, airoha_pcie_phy_of_match);
> > +
> > +static struct platform_driver airoha_pcie_phy_driver =3D {
> > +	.probe	=3D airoha_pcie_phy_probe,
> > +	.driver	=3D {
> > +		.name =3D "airoha-pcie-phy",
> > +		.of_match_table =3D airoha_pcie_phy_of_match,
> > +	},
> > +};
> > +module_platform_driver(airoha_pcie_phy_driver);
> > +
> > +MODULE_DESCRIPTION("Airoha PCIe PHY driver");
> > +MODULE_AUTHOR("Lorenzo Bianconi <lorenzo@kernel.org>");
> > +MODULE_LICENSE("GPL");
>=20

--NboPmqa2iCHHJR5W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkXirwAKCRA6cBh0uS2t
rMKmAQD+RXLcIeJiVUF0WLPEkYZRlLQbzYekhdKZ89hbC2fbJAD/Z701zNa2fznj
JbdgxmM2mmuLVPUTyTL13F7R93rExwU=
=ZA3a
-----END PGP SIGNATURE-----

--NboPmqa2iCHHJR5W--

