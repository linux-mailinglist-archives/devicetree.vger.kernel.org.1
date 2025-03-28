Return-Path: <devicetree+bounces-161451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ECFA74303
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 05:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D594C1893F03
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 04:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D9CA1CAA6F;
	Fri, 28 Mar 2025 04:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nt2fThxx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62637190485
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 04:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743136781; cv=none; b=QQqyJejNLvK+glsWEzhnvDzTmraGMcvnFUUtqnvsABTJ3YKnlhgeODbZnoT4bAeA2+ZVKoj79LMPz4N2e8vZpM+Jij+NOpDXW48bIXesU7lS1G4tKN9yH1K0DA/MiQQasJsuii8Sj3yMnHS80bJ6TiheBne6aJiwxC67vHOOWGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743136781; c=relaxed/simple;
	bh=T/AepfTQTjBimqhEAJ3b6sra64TUIKDeYooT8f5Ed44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cMWumtoqc0Pc5tUAu1lQcjMZqqsSYiz9nV72SZXknphbnEcacppkCv9mOZBuQoPDUBw1Ry3GNmQFD5Bf6GWREzsi8y93xJPjM7Kf/MeTPC4S6KKHxd3IgyKZcu+pDuMzXGJPPCkbMB2YIrq8H1XLXYAxh18rihKbZA0X9syd25s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nt2fThxx; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-22423adf751so33966935ad.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 21:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743136778; x=1743741578; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E614to0l/Fhr4eYjOojRNPeEthPbYgBwtIJNCVNwKro=;
        b=nt2fThxxVKpS1PubslVyhK1ozKizYsPFe2G+8fDSXf21/3oKczsgIdkpBdVRTYcP8Y
         +dyAcIC+hzaJKgf2BkyJqYnmMmWKZk0tkLWQ4ACqskhA6RR/PBh/ks3xPmOFAdjqFAGI
         zH9XyNI0vt4EIn+oSCfDBgNuGfoWujRg2M4ZMM7OaQ2zHZkbtt9rFW0nobOl4hfSoxwN
         ymvchMQb58Cw4vv67Y2LBTTabAA2JuwxBVUhhBPMsvXpBqN54N/dnJ0WRCHq1/Eskm/h
         wUa81bcjJzRNloy2fiI5SMZheYw33M/GP5s5ALLHn5w8Q5kZK8wVFD8NWIPeXpthCn/L
         QPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743136778; x=1743741578;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E614to0l/Fhr4eYjOojRNPeEthPbYgBwtIJNCVNwKro=;
        b=gaxLKbs6MTmk0LJXyR3n8kbQPtaMXPsSOrSjkqvCy3YJFrsVeL8/0duy2yG3GMePGa
         wkIwEqDHE8r6jMsBuoptujjGpU9d12XMyIljiNn6OUqwizOIckeYSBK4EVnZHVmdnmFA
         CflZi9XdNJOYKp+lppr3migB74ErqXAdBBfBO76ffbUTLQvzAO5X7stsCubWlzqPuh89
         7He4TvwkQBPSUm2UZ9cYeEMyp+gsIFYsuRQE8Gpe9TxGrZA5eur1sLUu8z8/QgIwvKl3
         Zi9N6DW4q9tFkQq70xozKin4eSebxPRPMyXKTewHrbtXigOOnyE+Ah8epIEGQ7VnKoYh
         ifGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwx7K3/GBIhjT3KBwJNLVp6YeKmRqC3I3ZHuZmAf/xjdB53rAnJkbGIgiaYWNhUBlcfumhsPNNw+tz@vger.kernel.org
X-Gm-Message-State: AOJu0YwBCDV00fCI+CuDfhidaxtYn+SuvT9T3vtY47eupormCAtX5y3b
	kBUW7Ksa1jobPhYhgMftMFB9dNt00W/0OOwC3bwFCPLHVU3jOqZ9fi5WMjShpg==
X-Gm-Gg: ASbGncs4s1dbdCFdOklv3hw83vyERLRZIwINSCF5NItVRRaR/m8e6NWOFSKA3xnyF6N
	5eGQonNZdaky4RuubVTnBHwqoPlVc/IeLKHcUwyW2bf+B+pw4w86TyFuXcgcmmKu1MvSrzahv6P
	RGy0UlliJuY+nXIwmn1Zlr7J2gGJPTxc1S7CZY+zep905DJxGB1NqNIMIVOAY4D2PgjrDMZKpFr
	2M3bfmdehA7zkr61Sk0v7DBvQs8elt2PBPt7SXL64/9QS2IwglVDqlJ94GfeUzgcMhjh843aq8M
	dWIy5cb2xtpISMn22QlFJ6NiIPUzTrK3aSGSUwUbDlcnSUO1qq2dErE=
X-Google-Smtp-Source: AGHT+IFY9i79fMPaQ6JLQr0OH6rfsXENWBpN0c8Wp2VWG10YAwY5cvI8oop04MjE9pxkW0Zly0/7/g==
X-Received: by 2002:a05:6a00:92aa:b0:736:9e40:13b1 with SMTP id d2e1a72fcca58-739610dcb50mr7891584b3a.23.1743136778392;
        Thu, 27 Mar 2025 21:39:38 -0700 (PDT)
Received: from thinkpad ([120.60.68.219])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970e22433sm775851b3a.52.2025.03.27.21.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 21:39:38 -0700 (PDT)
Date: Fri, 28 Mar 2025 10:09:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v8 2/4] PCI: of: Add of_pci_get_equalization_presets() API
Message-ID: <gl2klkvpkb2vrxrzdqbqjomfis66tldy6witvbqdd2ig3st3rw@jstguoejcofa>
References: <20250316-preset_v6-v8-0-0703a78cb355@oss.qualcomm.com>
 <20250316-preset_v6-v8-2-0703a78cb355@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250316-preset_v6-v8-2-0703a78cb355@oss.qualcomm.com>

On Sun, Mar 16, 2025 at 09:39:02AM +0530, Krishna Chaitanya Chundru wrote:
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
> ---
>  drivers/pci/of.c  | 44 ++++++++++++++++++++++++++++++++++++++++++++
>  drivers/pci/pci.h | 32 +++++++++++++++++++++++++++++++-
>  2 files changed, 75 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 7a806f5c0d20..18691483e108 100644
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
> +		dev_err(dev, "Error reading eq-presets-8gts :%d\n", ret);

'Error reading eq-presets-8gts: %d'

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
> +			dev_err(dev, "Error reading %s :%d\n", name, ret);

'Error reading %s: %d'

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

Why did you limit to 16?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

