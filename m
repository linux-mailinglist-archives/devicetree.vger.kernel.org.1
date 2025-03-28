Return-Path: <devicetree+bounces-161453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CB7A74315
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 05:54:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC7CE3AFE81
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 04:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2591720DD74;
	Fri, 28 Mar 2025 04:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YUJ15tca"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDE415278E
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 04:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743137644; cv=none; b=gsaVPx2pv9c50jbKQd5zanTBI7NVzEGwpQfLSNrwkPAh8Wpe+aIaMwtdUp+dlkbvP2K3LxrUnVaKfvW3V47TC0/8x8oN/8rpEnbvGEr56iPCS+ByAsPOoRAybIcifzfTFZLFph941NoVNdRzVuk+/Zzm3QcLWdc7qMIcRRWdZQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743137644; c=relaxed/simple;
	bh=wlCOnsjiZBmy8hxKdTaPTWNa+BTqbyKajifqCGeReuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AS/Q6mYxlNFsvTeg9ZDS9m9jxGVoulM1P7zxJrceAAHY86CJn2iUxriM6L0b81Oj5TND2iHcrUVPvPAUsZovHZlIDXDlEXHT4Kv4jH353DkfWZIgKvKMBI8oZdWw3hA/rBtFU9BtQem1ESEesTXDVwn8jli5YhPteS+2eh98raM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YUJ15tca; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-224019ad9edso47278795ad.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 21:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743137641; x=1743742441; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kuwg9J1mLwXX4otg3M7+S40hVbpDz6/sZtDcqTbG7BE=;
        b=YUJ15tcaGLLkEOm9rcbzqgOo6jECpL+STNfgUeXB/G94lE0KH8X1wFKxf521aKZNiz
         I0Q4ehYj9Hue7mA41xw/iPRxLcI+I0NMXrUCSQZ+n80b4IuVb6bRQ8srbicp+cEjldlB
         DI+gCkdTepFaHzZHwO9vziL+//QoKhFBx9EA/+q33VyGKt/jM/6SHXK50ANxPb8cVLqZ
         81lN63vKJx+OP3e8ytdMboHk2h35sQptQqN8IFV+3oy/+ezEHTWDYadU/f1C+FgqxM5w
         3cCxYUv9xsIx3qT28TlzHtCQ3dWwOVaB5+suPa6L6p13pAUSmg4MInRC7bNMmhkWxvtt
         IKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743137641; x=1743742441;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kuwg9J1mLwXX4otg3M7+S40hVbpDz6/sZtDcqTbG7BE=;
        b=eDfS0+SIQ6AdPIcQHFyteDlTTM1/P8hsshQiOgk43W5jRk2RdG+O3+m4GEOEhe17cs
         fIlyj9UqePyPiLrtrKcAHorzBMQzzLwLSqVGj89iBgGHScB4Yn6x26B6CXpBejPkm+GJ
         /eWpaZQM9jREZnT26g7fQthbTyl7w1VD6F70zCIEYH7CExyUPyh95vY18NYmwRpDv67Y
         2e+kfD51pqaeOux2XpcpMsqgDX9ntJeE0dozcbe0hfN+7UDMQznzBNLlBsv4wyqCLkf4
         g35s6czNu6do+CDrZQjg5eEKKB42ii4PIuT3z59fWOq0NlL/PlJPDkXspddDXSsaHaEi
         b5BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZ8kP2G+MCVJE3dYOpU8pMy7BMQ7i89WZs3vl5sAvzp6vFXntSFw2iYckLZtC2lVI2SWUvZBqCsmHB@vger.kernel.org
X-Gm-Message-State: AOJu0YxASz6vipuJ3Ql8a6E389f6eRAGkvKR4bu2SKfFgQp5powJVFyd
	XBCZ1wr30DX7Ishkk2W10JnmzY95roNLZi9cez0QSNrZR5HpUB50jwYY+eZRUQ==
X-Gm-Gg: ASbGncueW7fdMLwa0z9EbnKJyp8Q44TY7097p5lYDvR1tsJMhcgFbewDHPqt3PlqWuP
	OMzSPacmRIaD75ebLe7J8rWIVPN36uy2e3aVIkZKfkCqczdLwJb8WcyfQrNTo3bYmazfAEipaDt
	v8p33bU8uZ5HVdh8wgkhvuKkceNYMOHrafR9zUEk/k6xeoJw9sy+Yl+YW5kU2zfpGxX7lNQtovh
	kg+0/ODC4Q7ZNQcxoHe9gCfCbhP+2wOIjbazmGRDymFJY1eQ+rPs5UXem4cboy7dC5fbysr059e
	X+nSOmygy/BNjNZ6z5YURPwi9rpAWiWGcasymAFvKga51xYOotpkIMx8FGXS4zlMEw==
X-Google-Smtp-Source: AGHT+IEPFx2YvGLJ7FKIh8Gd3Y8GYR7AmiZtAy2aMPBo7YLDtuaEAWd1L+B7N/DCUhXjq3JhGPD8XA==
X-Received: by 2002:a05:6a00:1793:b0:736:6202:3530 with SMTP id d2e1a72fcca58-739610cb699mr6602382b3a.22.1743137640377;
        Thu, 27 Mar 2025 21:54:00 -0700 (PDT)
Received: from thinkpad ([120.60.68.219])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970def203sm778261b3a.6.2025.03.27.21.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 21:54:00 -0700 (PDT)
Date: Fri, 28 Mar 2025 10:23:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v8 4/4] PCI: dwc: Add support for configuring lane
 equalization presets
Message-ID: <3sbflmznjfqpcja52v6bso74vhouv7ncuikrba5zlb74tqqb5u@ovndmib3kgqf>
References: <20250316-preset_v6-v8-0-0703a78cb355@oss.qualcomm.com>
 <20250316-preset_v6-v8-4-0703a78cb355@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250316-preset_v6-v8-4-0703a78cb355@oss.qualcomm.com>

On Sun, Mar 16, 2025 at 09:39:04AM +0530, Krishna Chaitanya Chundru wrote:
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
>  drivers/pci/controller/dwc/pcie-designware-host.c | 60 +++++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h      |  3 ++
>  include/uapi/linux/pci_regs.h                     |  3 ++
>  3 files changed, 66 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index dd56cc02f4ef..7c6e6a74383b 100644
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
> @@ -808,6 +812,61 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>  	return 0;
>  }
>  
> +static void dw_pcie_program_presets(struct dw_pcie_rp *pp, enum pci_bus_speed speed)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	u8 lane_eq_offset, lane_reg_size, cap_id;
> +	u8 *presets;
> +	u32 cap;
> +	int i;
> +
> +	if (speed == PCIE_SPEED_8_0GT) {
> +		presets = (u8 *)pp->presets.eq_presets_8gts;
> +		lane_eq_offset =  PCI_SECPCI_LE_CTRL;
> +		cap_id = PCI_EXT_CAP_ID_SECPCI;
> +		/* For data rate of 8 GT/S each lane equalization control is 16bits wide*/
> +		lane_reg_size = 0x2;
> +	} else if (speed == PCIE_SPEED_16_0GT) {
> +		presets = pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS - 1];
> +		lane_eq_offset = PCI_PL_16GT_LE_CTRL;
> +		cap_id = PCI_EXT_CAP_ID_PL_16GT;
> +		lane_reg_size = 0x1;
> +	} else {

Can you add conditions for other data rates also? Like 32, 64 GT/s. If
controller supports them and if the presets property is defined in DT, then you
should apply the preset values.

If the presets property is not present in DT, then below 'PCI_EQ_RESV' will
safely return.

> +		return;
> +	}
> +
> +	if (presets[0] == PCI_EQ_RESV)
> +		return;
> +
> +	cap = dw_pcie_find_ext_capability(pci, cap_id);
> +	if (!cap)
> +		return;
> +
> +	/*
> +	 * Write preset values to the registers byte-by-byte for the given
> +	 * number of lanes and register size.
> +	 */
> +	for (i = 0; i < pci->num_lanes * lane_reg_size; i++)
> +		dw_pcie_writeb_dbi(pci, cap + lane_eq_offset + i, presets[i]);
> +}
> +
> +static void dw_pcie_config_presets(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	enum pci_bus_speed speed = pcie_link_speed[pci->max_link_speed];
> +
> +	/*
> +	 * Lane equalization needs to be perfomed for all data rates
> +	 * the controller supports and for all supported lanes.
> +	 */
> +
> +	if (speed >= PCIE_SPEED_8_0GT)
> +		dw_pcie_program_presets(pp, PCIE_SPEED_8_0GT);
> +
> +	if (speed >= PCIE_SPEED_16_0GT)
> +		dw_pcie_program_presets(pp, PCIE_SPEED_16_0GT);

Add other data rates also.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

