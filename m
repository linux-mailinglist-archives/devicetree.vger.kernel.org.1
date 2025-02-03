Return-Path: <devicetree+bounces-142607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A71FA25E1A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:13:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9FBCD168FFA
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50EA4209663;
	Mon,  3 Feb 2025 15:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gq5AQg80"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C19620897C
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 15:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738595340; cv=none; b=jVVQWJKB6POPtUBmx1ARi0GcJPdP7EghMx0qEeqlsY9rwoe9SFpKiXi8ZhW55snHcXc5B7G95w5Clnw1zdxvO6bdLp0FhJG43eXaK4ugBqBwDS7oLYIl2aGFD3CqmRh3K4faAC2JWl9/TMEP18q910eh9Q8WQME1jUp+owEAiyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738595340; c=relaxed/simple;
	bh=H2VxtfLjRgDMEkL8lutZkw6RV1QTTIhNQ1OHrEPbnpc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qSjq5lK3ll5Ml5hdt7IWLZv+fqWUguvz01YJimSJVP07RSnbOw/7tqFgzvJwP/l6s8B4yzPQO5KUBQp8aZ8PaloIE6HUyVF/FHimJg3BP6K6kvXMCi30b2Q1FS/WWaieS6ykFpstl6RnfRUTjsYsIDNrHxQKa8jf9YAyNdWRjd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gq5AQg80; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-21644aca3a0so105380605ad.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 07:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738595338; x=1739200138; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tNJuttpR9ZTjDV/l1jMgUgWhO6WwINcyvVT+7TM8akc=;
        b=Gq5AQg80UTglR0tlxKx9+RRpKzyfY2K3rs/GW7MiT29gFAcD2M5bIP9MV0i6d4znpC
         H0GzE87Ct/aKkB9/cb+Eg6G8cRLGF02rB3TqMSzOocrRZbKVpxHWzk83rm0f03olLjT+
         tgxayqXwmCmEsDxCy1je6Sid7zkZZqsgpCJx7c0rrEfPBoXd7kQJ3uBQRT8BFuIZwO6y
         urK3NBQELpCvP+RCKraq1OqVhLGeD8vqHYVkUPw2wTGdf2Sd15jaqKa14u1jUOXaJmbj
         HECQV17xLZCKyjITIGxEuAMwHIz/lfpUDik0Az29K3FeXS6dAA/y9wmFFrwSGSs9UNmI
         JcQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738595338; x=1739200138;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tNJuttpR9ZTjDV/l1jMgUgWhO6WwINcyvVT+7TM8akc=;
        b=vPnjegTnWDGXXuddOSPhf8YJN1AsGX2102wU5imtghJl/HLdA/FPorzfmBqPujT5pU
         NcxVNJ+wnl65fVzyMX6fUR3YTI+hqEW8irFf/F1rqNSvlgsw3IpLuLvDGkcef0e3UmK8
         Zhn8XzxqK82Z+2T13ID2gJ0Mx/V3yEZ6HP6T5rGxeMSvCDRCGIIgrArx4UPMcOwt/ckp
         NkTyhTibas+a/j9GvbDIgjcWW9uxvcXCpbeOiefeIdd4bQyKTWPqzOfVept+IzsA4pGz
         P8Z0nX5DJ5A0fSdGs82bvp7I3fnXx2yCsjw+tJNtxxCfvKttKNm4s7K7+Z+5wRrmc6Ta
         SXLA==
X-Forwarded-Encrypted: i=1; AJvYcCV/OOuyRXZQigDq5RgJUknxByteQ1RtwwpLdNbuAp/mI5cA+0QmkgtQvdDoFMtk/HWIC91BeEkdTNsx@vger.kernel.org
X-Gm-Message-State: AOJu0YywznQZz+ZhPDTB7OpyfNkAU1QM9IGxMJB19VdAacntbY5XcBc2
	NjKZlw/9zenQGFXGKJkFj8saMvZXExrcLpl3nCFhwrsn1Zpwakq/gZFlrfnmtw==
X-Gm-Gg: ASbGnct6uLSa5GJQvyqx8tM69tBgdY7cXktbUEcqPW0ZersMmJw8jsawQEEjLDJ08Kv
	VtBh4vezBgU57+yhU2wzDwzChXsDjdxxBvk+Kf2/pfcOqBxrCJaPuZ4q3bXZlfJyUlo8E3OXOhU
	ln+RKa1fS8Oz6uu5YHQ9wMagEyRZdY+kFwp+NPxXmrHNX9Xr/6+Rco15Y787Cf4TFmVMl2FliBR
	mssYc0lXX+tzk4VRVZ0BCxmdWVZA/J14u5jwlelirc1mA4FwSrv/PMRPy9VQA3fm0/BnahL1bJm
	n5HuD0JOcoAjMAtBaBSjc6KEnw==
X-Google-Smtp-Source: AGHT+IEZb9kYuWencbwluM7c4b3QTHaf56X5Dqp18EvM3dc0h2OMqMVo+Pn2s8eDLXdA1N1UiIMUFg==
X-Received: by 2002:a05:6a20:9383:b0:1db:eead:c588 with SMTP id adf61e73a8af0-1ed7a6c8ac5mr38752070637.29.1738595336636;
        Mon, 03 Feb 2025 07:08:56 -0800 (PST)
Received: from thinkpad ([120.60.129.34])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-acebddbb1dfsm8203509a12.5.2025.02.03.07.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 07:08:56 -0800 (PST)
Date: Mon, 3 Feb 2025 20:38:49 +0530
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
Subject: Re: [PATCH v4 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
Message-ID: <20250203150849.nexmt3ywv7x4b7e3@thinkpad>
References: <20250124-preset_v2-v4-0-0b512cad08e1@oss.qualcomm.com>
 <20250124-preset_v2-v4-2-0b512cad08e1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124-preset_v2-v4-2-0b512cad08e1@oss.qualcomm.com>

On Fri, Jan 24, 2025 at 04:52:48PM +0530, Krishna Chaitanya Chundru wrote:
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
>  drivers/pci/of.c  | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/pci/pci.h | 24 +++++++++++++++++++++++-
>  2 files changed, 70 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index dacea3fc5128..7aa17c0042c5 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -826,3 +826,50 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
>  	return slot_power_limit_mw;
>  }
>  EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
> +
> +/**
> + * of_pci_get_equalization_presets - Parses the "eq-presets-ngts" property.
> + *
> + * @dev: Device containing the properties.
> + * @presets: Pointer to store the parsed data.
> + * @num_lanes: Maximum number of lanes supported.
> + *
> + * If the property is present read and store the data in the preset structure
> + * assign default value 0xff to indicate property is not present.
> + *
> + * If the property is not found or is invalid, returns 0.

Use "Return:" prefix to define the return value. Like,

	"Return: 0 if the property is not available or successfully parsed,
		 errno otherwise."

> + */
> +int of_pci_get_equalization_presets(struct device *dev,
> +				    struct pci_eq_presets *presets,
> +				    int num_lanes)
> +{
> +	char name[20];
> +	int ret;
> +
> +	presets->eq_presets_8gts[0] = 0xff;
> +	if (of_property_present(dev->of_node, "eq-presets-8gts")) {
> +		ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
> +						 presets->eq_presets_8gts, num_lanes);

As Konrad mentioned, you can use -EINVAL from these APIs to determine whether
the property exists or not.

> +		if (ret) {
> +			dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	for (int i = 0; i < EQ_PRESET_TYPE_MAX; i++) {
> +		presets->eq_presets_Ngts[i][0] = 0xff;
> +		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << (i + 1));
> +		if (of_property_present(dev->of_node, name)) {
> +			ret = of_property_read_u8_array(dev->of_node, name,
> +							presets->eq_presets_Ngts[i],
> +							num_lanes);
> +			if (ret) {
> +				dev_err(dev, "Error %s %d\n", name, ret);

"Error reading..."

- Mani

-- 
மணிவண்ணன் சதாசிவம்

