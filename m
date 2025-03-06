Return-Path: <devicetree+bounces-154642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4FCA54131
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 04:23:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C9FC3AC083
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 03:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB41197A7A;
	Thu,  6 Mar 2025 03:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u4FCKJ1a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB5A19342E
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 03:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741231379; cv=none; b=q8m0Yr8XJcNDnzIPdWNo5gE3kiAN/h9VWj6yQvexSJPaHKm1pC+E1w827OJW8r/dNwSkluNXXxW9i8pgx2tnCzg5i8UgrllFALRrT1KCrDkbIl84pKNIJ6NBOILY35bodspFLu2970Qqgkw9zHI1kUmJBsotoU7lTXLk9vlGy/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741231379; c=relaxed/simple;
	bh=Ru/CpGpxmay/9MsSLlCOfSZnuKnc/nvpzizPFZJ2vUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Le3gsEon1sbd1TP9+pyzGQCSM+3QDROCZ4aWWsusODKFjvPrIYjMQhutrmXQ2kcBsAy0GD9CysTlDAI50Jvwaq8c95piiGe97vFTSGhDEX3TE0RADhnD3ygfINscWYbmUFQuOo5tKIsVLkNibqXgY28nYvAqW8nwznAJAo59sTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u4FCKJ1a; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2235908a30aso3336165ad.3
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 19:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741231377; x=1741836177; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kVRUb8q7uQnpUvlMyzRGCkdnBEaB/99BqJE+CFAT52A=;
        b=u4FCKJ1a/5FlPi3yxllrioCGopfyEFkRgtOeU7QN7xKS0zFrAgKgX4a6bnOkwgGzp2
         oX15Otuxr0DnoPNRWe+xLn1+rD9j2xB001WSY4nW0LmaBYuCpKHi9iQFfq/keJLzMqIp
         ecNqDUR5367BXvap1vc/EDmEEdJsejYCl5O6iMVlV5XeirIw6oD+eE+9OwV3m0axBL6d
         QQNhcoABnWRddfQnMCNeIXv0oEFUdDPEwlNJFKbas1uOj7vDMIGHxy5LuSevhuHMx68Y
         aoHpQRdwr7A8rvIz+q5z6Mj01hIApEmopaDk9IPtQuGN2+YN3dROUlo2zqTpYhf2OxsM
         s19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741231377; x=1741836177;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kVRUb8q7uQnpUvlMyzRGCkdnBEaB/99BqJE+CFAT52A=;
        b=jl9XBr/TZ2vNE0zHAfHBjYNMh7A6x18wTP5betWSbRKq1xVM81nVjsjav/wwuof7b0
         2fU/s9JESiNddB1QzvrjpRsI9kpUPCn0CkR1HN0a5i7+BPOoABnvJqmnHx64MDW2SOXe
         +wnkHQmE8v0cj2GO9kZBzvh0GduMQvGAvnxBKePS7YWj76mHr1GuJfjJUB/p/9WJck1K
         n8+074vueww8scLWfhBOcpfKdrBReAaLJqbcl/bwtWPHIkWJzWjjS9r8yCLU34OFfcer
         Wt5YQbU9+fHvM/nWZzheHHJuzhtEuSX3gTuzsyX3M3EBiNp3LAd9lK29KeKMSOmk63w+
         foEg==
X-Forwarded-Encrypted: i=1; AJvYcCV36GIlxs0QI+z+Y307ex4i1EHOx0m5bgBq51Uh5DPP3qObhACKqW2BAJGwycmzaHhGufhZmt0b6fGp@vger.kernel.org
X-Gm-Message-State: AOJu0YwVXWYYrGWValff41Sf5OwG6HlbntiYuOkUauSVsASQyJ7DD6Sq
	yqWCVu/h57S2lJHI5YMsBu/J2tA4Wz1SY98ClXZhmmlZaydAUCZgKNkelFc23A==
X-Gm-Gg: ASbGncsdOaXfIX3KRr2v02raYcFZd+7EKnR6PhTK3cZIbtI4j/pMkJ3VNquI4KSVU+e
	YZy/SDlhCkuU06ZPLV1ToGi1+bSj7ECfEfLv6C5FnktWp/RVwQrQeEILGDclV4YTsSYKkAawu5j
	/77pT5J26BBnmZr6ez4KA27M5MM6Rwsimy3IXJgisTBKUsM5p+Ubm9az3Q9vU0ShiGIefFJ+CNe
	WP3uJGc2IWHH0ipkBjBn9iv+03ytpe5AHpKB/gBy6ByHmrwL4j7/jlIXfzLHGYn6fNgl7qtg0K2
	ndrTxmVc74rhJ8PNrXtztwTFtm1swz22MrJYTBxZlyzoTaPSKUnDn3w=
X-Google-Smtp-Source: AGHT+IFKgh0FiksUVgR3j46APqXiDJlCf1FcFsiDNFfW2pnSFNjsBifU8IM2NHTcJLX+Pjppt76cJA==
X-Received: by 2002:a17:902:d4c8:b0:220:e5be:29c8 with SMTP id d9443c01a7336-223f1cf56camr94178765ad.32.1741231377300;
        Wed, 05 Mar 2025 19:22:57 -0800 (PST)
Received: from thinkpad ([120.56.193.59])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22410a9193fsm1689105ad.164.2025.03.05.19.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 19:22:56 -0800 (PST)
Date: Thu, 6 Mar 2025 08:52:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v7 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
Message-ID: <20250306032250.vzfhznmionz3qkx7@thinkpad>
References: <20250225-preset_v6-v7-0-a593f3ef3951@oss.qualcomm.com>
 <20250225-preset_v6-v7-2-a593f3ef3951@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250225-preset_v6-v7-2-a593f3ef3951@oss.qualcomm.com>

On Tue, Feb 25, 2025 at 05:15:05PM +0530, Krishna Chaitanya Chundru wrote:
> PCIe equalization presets are predefined settings used to optimize
> signal integrity by compensating for signal loss and distortion in
> high-speed data transmission.
> 
> As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
> of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
> configure lane equalization presets for each lane to enhance the PCIe
> link reliability. Each preset value represents a different combination
> of pre-shoot and de-emphasis values. For each data rate, different
> registers are defined: for 8.0 GT/s, registers are defined in section
> 7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
> an extra receiver preset hint, requiring 16 bits per lane, while the
> remaining data rates use 8 bits per lane.
> 
> Based on the number of lanes and the supported data rate, this function
> reads the device tree property and stores in the presets structure.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/of.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/pci/pci.h | 27 ++++++++++++++++++++++++++-
>  2 files changed, 69 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 7a806f5c0d20..9ebe7d0e4e0c 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -851,3 +851,46 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
>  	return slot_power_limit_mw;
>  }
>  EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
> +
> +/**
> + * of_pci_get_equalization_presets - Parses the "eq-presets-Ngts" property.
> + *
> + * @dev: Device containing the properties.
> + * @presets: Pointer to store the parsed data.
> + * @num_lanes: Maximum number of lanes supported.
> + *
> + * If the property is present read and store the data in the preset structure
> + * else assign default value 0xff to indicate property is not present.

'If the property is present, read and store the data in the @presets structure.
Else, assign a default value of PCI_EQ_RESV.'

> + *
> + * Return: 0 if the property is not available or successfully parsed; errno otherwise.
> + */
> +int of_pci_get_equalization_presets(struct device *dev,
> +				    struct pci_eq_presets *presets,
> +				    int num_lanes)
> +{
> +	char name[20];
> +	int ret;
> +
> +	presets->eq_presets_8gts[0] = PCI_EQ_RESV;
> +	ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
> +					 presets->eq_presets_8gts, num_lanes);
> +	if (ret && ret != -EINVAL) {
> +		dev_err(dev, "Error reading eq-presets-8gts :%d\n", ret);
> +		return ret;
> +	}
> +
> +	for (int i = 0; i < EQ_PRESET_TYPE_MAX; i++) {
> +		presets->eq_presets_Ngts[i][0] = PCI_EQ_RESV;
> +		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << (i + 1));
> +		ret = of_property_read_u8_array(dev->of_node, name,
> +						presets->eq_presets_Ngts[i],
> +						num_lanes);
> +		if (ret && ret != -EINVAL) {
> +			dev_err(dev, "Error reading %s :%d\n", name, ret);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index 01e51db8d285..c8d44b21ef03 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -9,6 +9,8 @@ struct pcie_tlp_log;
>  /* Number of possible devfns: 0.0 to 1f.7 inclusive */
>  #define MAX_NR_DEVFNS 256
>  
> +#define MAX_NR_LANES 16
> +
>  #define PCI_FIND_CAP_TTL	48
>  
>  #define PCI_VSEC_ID_INTEL_TBT	0x1234	/* Thunderbolt */
> @@ -808,6 +810,20 @@ static inline u64 pci_rebar_size_to_bytes(int size)
>  
>  struct device_node;
>  
> +#define PCI_EQ_RESV	0xff
> +
> +enum equalization_preset_type {

For the sake of completeness, you should add EQ_PRESET_TYPE_8GTS also. You could
skip it while reading the of_property_read_u8_array().

> +	EQ_PRESET_TYPE_16GTS,
> +	EQ_PRESET_TYPE_32GTS,
> +	EQ_PRESET_TYPE_64GTS,
> +	EQ_PRESET_TYPE_MAX
> +};
> +
> +struct pci_eq_presets {
> +	u16 eq_presets_8gts[MAX_NR_LANES];
> +	u8 eq_presets_Ngts[EQ_PRESET_TYPE_MAX][MAX_NR_LANES];
> +};
> +
>  #ifdef CONFIG_OF
>  int of_get_pci_domain_nr(struct device_node *node);
>  int of_pci_get_max_link_speed(struct device_node *node);
> @@ -822,7 +838,9 @@ void pci_release_bus_of_node(struct pci_bus *bus);
>  
>  int devm_of_pci_bridge_init(struct device *dev, struct pci_host_bridge *bridge);
>  bool of_pci_supply_present(struct device_node *np);
> -
> +int of_pci_get_equalization_presets(struct device *dev,
> +				    struct pci_eq_presets *presets,
> +				    int num_lanes);
>  #else
>  static inline int
>  of_get_pci_domain_nr(struct device_node *node)
> @@ -867,6 +885,13 @@ static inline bool of_pci_supply_present(struct device_node *np)
>  {
>  	return false;
>  }
> +
> +static inline int of_pci_get_equalization_presets(struct device *dev,
> +						  struct pci_eq_presets *presets,
> +						  int num_lanes)
> +{

Don't you need to initialize presets to PCI_EQ_RESV?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

