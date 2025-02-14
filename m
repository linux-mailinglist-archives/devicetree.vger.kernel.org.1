Return-Path: <devicetree+bounces-146625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 387D1A35966
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 09:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A10516E671
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 08:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86AC9227BBF;
	Fri, 14 Feb 2025 08:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ol7xMxVC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70385221D9B
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 08:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739523206; cv=none; b=bfKVPKSdz5jnC6hLRDY4cBXsdPnEBRPxo5jqSCEnyyBlSvJA6BJbg4QyMnyN1+RhzKun+38YcoxPqKqfwyTRUDYERhwrqQNSfDu0JOUfaOaIaK/1MlDNhJhH2tuNutAuaJH04nStDlblV8qG3/8HlBjFvYb3FtmqMsPk/kCtSl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739523206; c=relaxed/simple;
	bh=oxSLdh0CAtNN9mbiAlU8ndwTUsmha2ZOppGLISI9ek4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hI8M+ZnaSGtK2QVwGa4St4BxIsQX4bc26KVrDLWEqEfHceM4m0kobnJVT/U1AAdvnoiKrHCzNlaT+ozUyRFWGFYkdT+CHQop8fe7CU0ItTFNc7neI/6IXtDsOq8GjRtBm4CEr5sIIToKPNZLZVPFnh/ajQbVPh8NYjh5pREXqZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ol7xMxVC; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21f62cc4088so32693955ad.3
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 00:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739523203; x=1740128003; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AYHkDvFZNVkfObVYojFKLXtrACdRdRJzIR6CHM3ZvzU=;
        b=Ol7xMxVCh88aEhgfoiDYhjqNxsucquL3TipwzXjr8YnHTtmOuk5w7EBupCESHf8Hzi
         tbYU162MVc8bdvUcWTzuEh3mcI/Uv/lOlFah1YWNsS8azW7ZbNXAF/7Dfc1A0iTXcjog
         Xt/zalKHfZ2a8TKXLjIpQDVf/ju1nxmOspeKzv2HXX6RMnbHkbtAg3L6gTC4EYFz7dU6
         LcTFxg1+dBGWvV7Dph6WHpCxLiMJSVRLZZZVvdeisQALxUf+92RECEKMTxxNmirmPbWf
         sXwFm73oXlZ/YAa3l2mSbQJboGRYks0TmRlR64w2lXq4courpQH160llJSu+khlsp752
         qdoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739523203; x=1740128003;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AYHkDvFZNVkfObVYojFKLXtrACdRdRJzIR6CHM3ZvzU=;
        b=dTwRQo4SPbJ/Ufg2r5+51oABExFn8/Uo2whMyqwke1kkoTYx3LvFbonMK01161Q3u4
         BgfT84OD7J5zF/xJuM7/eUluXSXM7fOiugZSjB5eWhij5Qm/Pqehb28eX4jQ65TXV2+u
         2k9OigePJKNd8/+wsZy1a/z/9qMNo1l2qjYRy2CfrPQfujuf580nhP76vjU9BBozTopY
         1T+vjhQWf6mHM3ILEt2OoV1hfq2kluNN1J5z2SB7f88HHjRjC2x4J4nuLlk3FTZ7r1Mr
         ZBNnAXXl6wM8XUHhW59cBsqSR6He78jElAjLOi+jwNSXxlMVZdataNaqKuExX4LaB/9E
         TyJw==
X-Forwarded-Encrypted: i=1; AJvYcCWj10hvZR3JIVf1VWUu8GI/GxyhsGx18rmTmmZVHXFKv7V031HqZZ1kidXbnBo4C3HlyAq4GAy+App5@vger.kernel.org
X-Gm-Message-State: AOJu0YzkQQ3016iC8Z4g7Z8w5lSnzFG9x7nhHdxsUNh+FbngpIB2SSjf
	ZPCRnI2Z+wbrxTqqaS8ji16Xg2f4m181SxA2Pe2Cb6V71ZeidlWeE1Ds3IlLqA==
X-Gm-Gg: ASbGncvCrRimvKpP+IFI7LkMiJrs4jXZ/lN3piwiTpPLN/w3HmHiDoTgy1k1KQktt5Y
	iTiN+Rvo1WKrPQSovyW6maZzQBE6mYqlLZ1gn4RyogfOqLsGS5qYU7wd0uNiIiZp8PCh1ZuX39D
	FoD7GWDtrt13IzCcCIBtc6gb5FgzzWicnrfRLELGUp42W3hnQARwV0/aeSo1kTQH+2hqjURRuhR
	4CIg4escD6spXxtl//6EsRAxHx3Lp6QgomEj6ZxoA0MPy0eVtOJlJKVC4nxmuvB6H+FrSOKPWXc
	PQNKtkls5U9VW1CdVPLCO/ARXat0Q8Y=
X-Google-Smtp-Source: AGHT+IEp9nHrk4n//TzcHWHZFgsOhlQQ2Xlq67D0I3zF/1xWdNgg2JYRrRN4bc6mqpBquWG6UVXYBw==
X-Received: by 2002:a17:902:d485:b0:215:522d:72d6 with SMTP id d9443c01a7336-220d213ee2emr115416505ad.38.1739523202739;
        Fri, 14 Feb 2025 00:53:22 -0800 (PST)
Received: from thinkpad ([2409:40f4:304f:ad8a:a164:8397:3a17:bb49])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d5348e68sm24798765ad.28.2025.02.14.00.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 00:53:22 -0800 (PST)
Date: Fri, 14 Feb 2025 14:23:15 +0530
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
Subject: Re: [PATCH v6 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
Message-ID: <20250214085315.bp6hpcsxu2ndegb2@thinkpad>
References: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
 <20250210-preset_v6-v6-2-cbd837d0028d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250210-preset_v6-v6-2-cbd837d0028d@oss.qualcomm.com>

On Mon, Feb 10, 2025 at 01:00:01PM +0530, Krishna Chaitanya Chundru wrote:
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
> index 7a806f5c0d20..705d5529fa95 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -851,3 +851,46 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
>  	return slot_power_limit_mw;
>  }
>  EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
> +
> +/**
> + * of_pci_get_equalization_presets - Parses the "eq-presets-ngts" property.

nit: eq-presets-Ngts

> + *
> + * @dev: Device containing the properties.
> + * @presets: Pointer to store the parsed data.
> + * @num_lanes: Maximum number of lanes supported.
> + *
> + * If the property is present read and store the data in the preset structure
> + * assign default value 0xff to indicate property is not present.

'else assign...'

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
> +		dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);

nit: add ': ' before '%d' to make it clear that the printed value is an errno.

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
> +			dev_err(dev, "Error reading %s %d\n", name, ret);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index 01e51db8d285..e87c2ffd1e85 100644
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
> +#define	PCI_EQ_RESV	0xff

Just a single space is enough after 'define'

- Mani

-- 
மணிவண்ணன் சதாசிவம்

