Return-Path: <devicetree+bounces-142631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0224A25F9B
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:16:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61131164CC4
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A42420ADC1;
	Mon,  3 Feb 2025 16:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cgYa8XGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1376920A5C7
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 16:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738599365; cv=none; b=ruJdElFsW2fEFx+uWab9PzCCMIxivZsLCVnbnw0JeIyNoucwBPDRd+X93E9BMKkBTKsBQxUNxIYhkpvmmUmdcBQXLK3I5r4RFnUbvvtKvKIj64+Ug3Xp+8JOtstLjpTiK3/tlF5V8FW0rgLfOpgoS4eZIZPCML0z9v4hX7sHqzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738599365; c=relaxed/simple;
	bh=XgCgeJP7Yg9WIvgjjD69EuKfsXclzUie2BBefx1gxrU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lYTrngQcae7xeBIXHwwLvHdFtJmCyyCQBLqga9fRrmMQJWIoMQYMuPWJdzXmGRTZrDyfF4ZNYGRtC8NmRz3rOLab5+FuMAuRvPi2G/L/5SiFTiS7SUrMHCPyc+qvaBcGoT8Ix05IIIapsWikir8q6GfWI2n5q7L0DRS3s1K/rRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cgYa8XGK; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21619108a6bso76738075ad.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 08:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738599362; x=1739204162; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BUMXXvBYM9FA0XZxREanSlgpwy5RHuhf/5nOkGpm4AA=;
        b=cgYa8XGK/EDNjZKZjxmiVlaLtumjuoMLdNqNWiuKFC6OOh9w1V+QVxLUEnrfqhymGz
         UiiK3Kv0QXKipTm9MhHVB2uL0rOo9hRuVSyT/FPCZHp2mI42ectyG94xKnZE1k5AYXip
         G2N5DITkefGGGxGf1Puiyc9acXazERZkPPXJjKoTQaQSThf24pPhpJc6KraO5F9TGdZr
         RlIYniwK8jbV/PtQDhk1FxoMdDER80pOFbrB7QQWfugXJ7rUOxWc8KdYlLHSt6wkXOOu
         1sYnMgLGoa//oBWWnOtggzQV7SS68UhrA28YcqhF0l4gHXfhvuMGRw22GFGMMw3l2afv
         bZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738599362; x=1739204162;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BUMXXvBYM9FA0XZxREanSlgpwy5RHuhf/5nOkGpm4AA=;
        b=PdW+amOqaNoEcPbquiNQ1I4CSVnYBDBQ88iC0bH4YWBwpAkRx8L7d7szuzaQT/+FDQ
         hTpbrdhQ/iAo3lnPB/EDAzopOj+byu8M+Uw4azbYWomprWgx8huEUKnPZzkbbiAWIoSS
         oAsdD3w8Fv3e1LeSaqKZcFsPguvkp+Rmk+HxMIzNYSn5kAmIie3gRtaPhjQ90/tjx6ut
         pr6poJ8Ep6yyuhJLUZNauoIq3RuB7G19VEj10SjcV+efFkaBK7Z326Eu6WKTS784VC2n
         3Jr/AAbHAQ+64XD3E1NLDY54quGk1VLe7gI7Y0M7o6ltixxv4uR4aar9UuonFlO2dW7a
         i4Rw==
X-Forwarded-Encrypted: i=1; AJvYcCXIn4exXF9FULJi3h9Ncj9wKTWh7cLxCltvBzXHEaPkCrytpYjcAY5yoOdbFN4vSe9C8SA4qGQfYKUH@vger.kernel.org
X-Gm-Message-State: AOJu0YyOvPPQSeb7x7SCgI553TBzI6lEnuq3FXtShpjYZE5ebGz9Le30
	vp62R6CBOG1HZLSd0Ox/pMPoaRZqF6eiW8bwDIZp45X+6saSxTrAcIq4YZ2EHw==
X-Gm-Gg: ASbGncsmbWzqksCksdZlocxDcZU0iSZIJA7TzbVQCecyLWZgpfakJWYddt/9PXknWJ6
	pwxLRLZg0HM/wDy+SdUKeKicALSIZ2ACBruRcUOF1EPnO8mQLyT/76yapZ1qIoJxhUwt62asbTq
	nDRIqMSezEeuzx+FHPNgcbor/oVqotXqkn7cTx3bDIYfDohFIiM7Vufvk8++McY6FnOUGE+dn/P
	wWlxXyrlE/zOZ5Zn+x9bw1O6MGzhOcYr1cDQUbV9iPoLNv0I9itaFuA6pAq5EmpLNgf406vwX0k
	1fh6XC84vvL6Xrpv7QOeug5ppA==
X-Google-Smtp-Source: AGHT+IFjb2et5efUw+zyoN0z9jRuYcDjtd3ic3btnHPpSguicV2FG29nk9FX8bZh7WGuu0uFADinPQ==
X-Received: by 2002:a17:903:2447:b0:216:6901:d588 with SMTP id d9443c01a7336-21dd7c66599mr364839785ad.15.1738599362181;
        Mon, 03 Feb 2025 08:16:02 -0800 (PST)
Received: from thinkpad ([120.60.129.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21de31f832esm77789605ad.83.2025.02.03.08.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 08:16:01 -0800 (PST)
Date: Mon, 3 Feb 2025 21:45:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
	quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 4/4] PCI: dwc: Add support for configuring lane
 equalization presets
Message-ID: <20250203161555.a32gpzv4j6cjajs5@thinkpad>
References: <20250124-preset_v2-v4-0-0b512cad08e1@oss.qualcomm.com>
 <20250124-preset_v2-v4-4-0b512cad08e1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124-preset_v2-v4-4-0b512cad08e1@oss.qualcomm.com>

On Fri, Jan 24, 2025 at 04:52:50PM +0530, Krishna Chaitanya Chundru wrote:
> PCIe equalization presets are predefined settings used to optimize
> signal integrity by compensating for signal loss and distortion in
> high-speed data transmission.
> 
> Based upon the number of lanes and the data rate supported, write
> the preset data read from the device tree in to the lane equalization
> control registers.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 41 +++++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h      |  3 ++
>  include/uapi/linux/pci_regs.h                     |  3 ++
>  3 files changed, 47 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 2cd0acbf9e18..eced862fb8dd 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -507,6 +507,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  	if (pci->num_lanes < 1)
>  		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
>  
> +	ret = of_pci_get_equalization_presets(dev, &pp->presets, pci->num_lanes);
> +	if (ret)
> +		goto err_free_msi;
> +
>  	/*
>  	 * Allocate the resource for MSG TLP before programming the iATU
>  	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
> @@ -802,6 +806,42 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>  	return 0;
>  }
>  
> +static void dw_pcie_program_presets(struct dw_pcie *pci, u8 cap_id, u8 lane_eq_offset,
> +				    u8 lane_reg_size, u8 *presets, u8 num_lanes)
> +{
> +	u32 cap;
> +	int i;
> +
> +	cap = dw_pcie_find_ext_capability(pci, cap_id);
> +	if (!cap)
> +		return;
> +
> +	/*
> +	 * Write preset values to the registers byte-by-byte for the given
> +	 * number of lanes and register size.
> +	 */
> +	for (i = 0; i < num_lanes * lane_reg_size; i++)
> +		dw_pcie_writeb_dbi(pci, cap + lane_eq_offset + i, presets[i]);

So this essentially means that the presets value derived from DT should be equal
to 'num_lanes', otherwise this function will write 0 for the undefined lanes.
But this should be taken care by binding as I mentioned in my review and code
should not worry about it.

> +}
> +
> +static void dw_pcie_config_presets(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	enum pci_bus_speed speed = pcie_link_speed[pci->max_link_speed];
> +
> +	/* For data rate of 8 GT/S each lane equalization control is 16bits wide */
> +	if (speed >= PCIE_SPEED_8_0GT && pp->presets.eq_presets_8gts[0] != 0xff)
> +		dw_pcie_program_presets(pci, PCI_EXT_CAP_ID_SECPCI, PCI_SECPCI_LE_CTRL,
> +					0x2, (u8 *)pp->presets.eq_presets_8gts, pci->num_lanes);

You should just pass PCIE_SPEED_8_0GT to the dw_pcie_program_presets() helper
and it should figure out the register bits, size and lane count inside. Like,

	dw_pcie_program_presets(pci, PCIE_SPEED_8_0GT);

> +
> +	/* For data rate of 16 GT/S each lane equalization control is 8bits wide */
> +	if (speed >= PCIE_SPEED_16_0GT &&
> +	    pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS][0] != 0xff)
> +		dw_pcie_program_presets(pci, PCI_EXT_CAP_ID_PL_16GT, PCI_PL_16GT_LE_CTRL,
> +					0x1, pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS],
> +					pci->num_lanes);

Same here.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

