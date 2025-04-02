Return-Path: <devicetree+bounces-162490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0472FA7893B
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 09:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7E1016F7A3
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 07:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6B4123373C;
	Wed,  2 Apr 2025 07:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o6abVXLj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BD220E6E3
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 07:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743580588; cv=none; b=ivE7MnKQWFErqvc6HtbWKwEC+hs6GSF2V3pAXWFYH0orPQh3B5Dp/UGecm1JINqjiCUzD+1xmZ9QHpaO3EsN9vl/teCdgQ9mqxR/O59VQEneP2PMrcZRSEBHUX7lmYBjQw7kXhqUXTE7PadSI3IqzYpQBcBH4XjqakiIla2qq7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743580588; c=relaxed/simple;
	bh=vevaXCAfgf0RV0Jd5pTi5+8Q553KBeeummBfYxnRXZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JTYvmVIuGsQ1mnS6OauXyXIjz0h3TXtZnWGMmUxvj56uWEq4bBc573ty0trJr0sdGaOcbEflXf9TQWtpCRWtBcSBXH/Cfq1hgs2KNgRWIAXSuWwFP70sP8CUojpNf4BqBdutHUUOJPW+bbrOXgYVT+WMHMovh2TvcMBmKxAys/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o6abVXLj; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2279915e06eso131141095ad.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 00:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743580585; x=1744185385; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=noKgvUVQ2siSihaytXd2FVN73v58WuzUMmihxuAvJf8=;
        b=o6abVXLjJokfHOta7A2h1RRUQpbyzYWJM0m5ZhO5euBkyzheuuRPJ+psbo7S6H3FmC
         IInOPPmvM7jXstoqqoiShvi+Tx/cnVp5w3Fa6v5F5yZLNVNo/f0vHKFSScUag+NMi2z4
         W7I3c0X48TKQQlOud0TagXafeTmDBVHVSzOIasDRl5/IP7s5xwUGPlxvsxn1JHis6PZh
         5KVMXSHBCP8M5GDgoeyoL6Bw6Im1rReJ8l+rIJw0qMqGNOyNLIAJfc/6eP3UphO+xuPz
         C2/Vw/2u1/sShBf22k/6/Uv1ket9KqVGWPs7U9sOjhFPkbBHpm0b1+5SAvSMl5+DuzDc
         wuLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743580585; x=1744185385;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=noKgvUVQ2siSihaytXd2FVN73v58WuzUMmihxuAvJf8=;
        b=S7PFiRoGAIX8VBqHhzSZH+WrIuL3f+ROBtQMfioHJKBNqknKz8XhiuZUkWA0uUiFY0
         LP2C7NuQJg5eYKFbqOSgBbYlJS0Rpqg5f5YIF6KgOKOeOWtwPWfaJXeV2dWbWj/6fv6Y
         el5rE56OAR9JRffMeC2FvfNETQmRxlkw5Wh2Gb7r9tMIefO6cAFkre8UuYEGhF25Bgtg
         9jH1Shh+6VptEHS6QJWJnWCkwgmVjxxWYpYhuigi54sVdIr9WjlYqhGs5nmY+YP9yLK3
         pVWxgJ1Z2W8uZewD88ecUdcGhl/Hi5viXLv4jSunBkvQXrKFQUAEKtUT5kec2wU58bmV
         6/Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUuOqb6qJ1bkM+bsz3oxX6b8KZc8CewzKQslSXwlPSkScIHmXDpTR3SaWL6mc7rzu+xceUf8MQzk9MM@vger.kernel.org
X-Gm-Message-State: AOJu0YwWGCjkWt/sIRFHM4vXbC+gYkePdct2pE/Zgu21uR+LGa2qQxOp
	ohVPBVqrMQX0yReM6BSWIOkvO63U/i8iDilJ3hHoWpTYSjSQdCW61E0OlElc/Q==
X-Gm-Gg: ASbGnct0nnUaVishZM+6o6YJ+D3dA6kf0f+8JNDArY/uHk876WG6U0fFAz17O6mUCjJ
	I1NO7imhfJjTVd+pLgRvMI6cYlAX2lRVZ89FEOcm7GcRMczUroEDKR5U+zsaLSrLIEa9iCb4J2n
	5H2y8rq3M1+U4V6oPkdyYsVJzMVz43WlAVyZ2gssqulJvTjnIwicGmcLWX0RLuT8NZY2erh3Rb9
	cTviRsbLMOFGAYeyi/C4gnv9YkCE/QaaBdaUyWBw2Mqhd0+0sB3mhDMWJMjQP2YYsS26CcDacga
	xmiLpDzlzmmI5DZyOgS+Hv8aZtG+Gzs2coSR3VQsvD/3UAoIPpNQnOtBZGdRTEbRGj0=
X-Google-Smtp-Source: AGHT+IHOWRFG5W0KdxH0Zy0nVK1thir5cIAFzptpdFo0UkbUHPulKD1q5EFd4chj00OdziYyxmxbmQ==
X-Received: by 2002:a05:6a20:d48b:b0:1f3:2e85:c052 with SMTP id adf61e73a8af0-2009f79b1f6mr27105411637.35.1743580585073;
        Wed, 02 Apr 2025 00:56:25 -0700 (PDT)
Received: from thinkpad ([120.56.205.103])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739710dd3d4sm10601497b3a.177.2025.04.02.00.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 00:56:24 -0700 (PDT)
Date: Wed, 2 Apr 2025 13:26:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v9 2/5] PCI: of: Add of_pci_get_equalization_presets() API
Message-ID: <uipngb7dwzy22cbkp775jaasvas5eu2v7jlc2oyqr4oe6yr4gc@4nj6ehb7wcin>
References: <20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com>
 <20250328-preset_v6-v9-2-22cfa0490518@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250328-preset_v6-v9-2-22cfa0490518@oss.qualcomm.com>

On Fri, Mar 28, 2025 at 03:58:30PM +0530, Krishna Chaitanya Chundru wrote:
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
> Based on the number of lanes and the supported data rate,
> of_pci_get_equalization_presets() reads the device tree property and
> stores in the presets structure.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/of.c  | 44 ++++++++++++++++++++++++++++++++++++++++++++
>  drivers/pci/pci.h | 32 +++++++++++++++++++++++++++++++-
>  2 files changed, 75 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 7a806f5c0d20..d594a0e2fdfd 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -851,3 +851,47 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
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
> + * If the property is present, read and store the data in the @presets structure.
> + * Else, assign a default value of PCI_EQ_RESV.
> + *
> + * Return: 0 if the property is not available or successfully parsed else
> + * errno otherwise.
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
> +		dev_err(dev, "Error reading eq-presets-8gts: %d\n", ret);
> +		return ret;
> +	}
> +
> +	for (int i = 0; i < EQ_PRESET_TYPE_MAX - 1; i++) {
> +		presets->eq_presets_Ngts[i][0] = PCI_EQ_RESV;
> +		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << (i + 1));
> +		ret = of_property_read_u8_array(dev->of_node, name,
> +						presets->eq_presets_Ngts[i],
> +						num_lanes);
> +		if (ret && ret != -EINVAL) {
> +			dev_err(dev, "Error reading %s: %d\n", name, ret);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index 01e51db8d285..78c9cc0ad8fa 100644
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
> @@ -808,6 +810,21 @@ static inline u64 pci_rebar_size_to_bytes(int size)
>  
>  struct device_node;
>  
> +#define PCI_EQ_RESV	0xff
> +
> +enum equalization_preset_type {
> +	EQ_PRESET_TYPE_8GTS,
> +	EQ_PRESET_TYPE_16GTS,
> +	EQ_PRESET_TYPE_32GTS,
> +	EQ_PRESET_TYPE_64GTS,
> +	EQ_PRESET_TYPE_MAX
> +};
> +
> +struct pci_eq_presets {
> +	u16 eq_presets_8gts[MAX_NR_LANES];
> +	u8 eq_presets_Ngts[EQ_PRESET_TYPE_MAX - 1][MAX_NR_LANES];
> +};
> +
>  #ifdef CONFIG_OF
>  int of_get_pci_domain_nr(struct device_node *node);
>  int of_pci_get_max_link_speed(struct device_node *node);
> @@ -822,7 +839,9 @@ void pci_release_bus_of_node(struct pci_bus *bus);
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
> @@ -867,6 +886,17 @@ static inline bool of_pci_supply_present(struct device_node *np)
>  {
>  	return false;
>  }
> +
> +static inline int of_pci_get_equalization_presets(struct device *dev,
> +						  struct pci_eq_presets *presets,
> +						  int num_lanes)
> +{
> +	presets->eq_presets_8gts[0] = PCI_EQ_RESV;
> +	for (int i = 0; i < EQ_PRESET_TYPE_MAX - 1; i++)
> +		presets->eq_presets_Ngts[i][0] = PCI_EQ_RESV;
> +
> +	return 0;
> +}
>  #endif /* CONFIG_OF */
>  
>  struct of_changeset;
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

