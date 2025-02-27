Return-Path: <devicetree+bounces-151829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E974A473D6
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:57:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B5883AD2D2
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 03:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 462601D90DB;
	Thu, 27 Feb 2025 03:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JjGTnHjH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E8F190497
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 03:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740628669; cv=none; b=mw3jxWZupWRUxiaG5GPlmHLhP7wyeSZSSzHLVxKlZRWGYifD6W2NzAJkDPdKZ1m/tCZWd5R1AuObbwqcPXvnK72lA0dIBPEWfeS5XbHVJmfR+T84GormQfZGsAKMdLWJotmr5ptI60KXmYppwSyZo0ph7WhqBml1m98iy5fkyAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740628669; c=relaxed/simple;
	bh=fxvwW0BgDnU0Z8eptn1J8Yat1c522qae0otlRUcc2DU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UiO/TLZjrFcEZIqlrs7hhI5/SkL4wUiDmJjinK+PTqXnWpbZtx3h0hSOml5EURw+kshEnT/K5bPfvvyvEgP/XzxCwv9u8f6bItBWFPNcwNKaN99rqM+H687rVLm8dg5DVVMU+Qfq5HwHP1bia53Z9ea6kIsxq1elmLyNU8KmiS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JjGTnHjH; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-220c8f38febso7678675ad.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 19:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740628667; x=1741233467; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3SORYFzlf5yk72wXc/hRXcaup5tJCWbmDlOEbyNefL0=;
        b=JjGTnHjH0sQC4/E6Qc+Eu/2cKENM4OUiUSfYXLeGjGa0/fpieQxfmFBqvIW8u0i4vX
         8z6WjA+pPQzbMm+Vidn9p/dVI1zzqvH4tvSO+OaRXXUV7H0+WiiMhrC22TSGSBn4j76Z
         WpDoYZG1kUluwoXmggUyLiwa7GF9xVnibB3NReT9riRA03Od7sp9S7428OnOdoHKhkHb
         Q6Ecm/RCjPTW4SlUvuBMEjDu/nA8H3fnWhhT8I+hmfLxf30mo26sBwScVTCkUOJBHzOs
         fQm384EDtOVbIFLfJWSY6mteq5zqrrII4bvDoJVYCbaw1x3LFE+AXbWuwVZDoQ2oW83Z
         yX7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740628667; x=1741233467;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3SORYFzlf5yk72wXc/hRXcaup5tJCWbmDlOEbyNefL0=;
        b=qeBfeg0hen5w4wJK7YYd6FvW9VrBkfKTbhvsE4ULpRIrfXedtzELmxozanv5sxlIFR
         jdZ+VQHmeDtThg0CofXtJELgcPpRIYyGitQB0JDV1vBStZ0f2trYBiOLWCK9qzkc7CW4
         6IqXQHvvsiZKmjGjpOkGzUSxPLL14ZwWbMWqtGbOGilkwk5bufHPcFtXIbR5Deh1/IJY
         nJMm+KqjT2ODSNYI494uCSLXR8ro8MPdCVLxtbB/wo7c3J0engWRjNxHQGFYlWtV2nQc
         4PEaLy2KkKXkAkpkv/gMSRhpsPjp5dWmwAZv0ffK1GFUrShh52qiZ+hO0JEb+58e+Mb+
         BV5A==
X-Forwarded-Encrypted: i=1; AJvYcCUxJsteqbN5bw+2VZsEiSFyPuk+Ix+R16UpH5gSihg21LAES8OHWjLIchY2fZnsJcczj4nZIk5evKYp@vger.kernel.org
X-Gm-Message-State: AOJu0YwK9E/tNAC6r/PWrgl8WdPCI/qEuFL/+JqRHzoYu8VrjuF0zbGZ
	CSwAVHd2kx+6tK5MvPAQ0eRPQaCsBVa21XAqkNXTLTqZNBOl/E3u6zdiHZyMuw==
X-Gm-Gg: ASbGncvXzzNb9bBHBa/Tt4wz+O7wSZCdS4xfJt1WZG94CHqNIbrfIc1RVPL3wyd6BIB
	8vSly49wSDrDi2dRXfRj8ilRHDCLJuw7uhLPGdjHdnjFzDVHP+VhL4Ts7hXbugJonsrbr2W+05z
	uRiQbc6Vjme7s+MKD2DW23OfCxT59vKQSQ48MK91wQ3oSgkdinL6Zi7PEJYy6wf9V4xg+zV0Ky4
	VVQfY1f4tqmxAMLsqn0xNT3GkFqPPMofc8dPFW7HOUxQpYL9GL8Fozy5OnDzZYS8U2Nx9Frc0rN
	6oqfpn8k/5FDUn1Hj7FUuvF+pfa8zK5WS/Lz
X-Google-Smtp-Source: AGHT+IFGj3WIOcX/QntWrbzx8bfoD4Nny+Kub8u7EqzoQCTumC6GVso2Yd/TuSLqdMuXJvGu8YLpUg==
X-Received: by 2002:a05:6a00:13a2:b0:730:927c:d451 with SMTP id d2e1a72fcca58-73426d989a0mr37909350b3a.20.1740628666891;
        Wed, 26 Feb 2025 19:57:46 -0800 (PST)
Received: from thinkpad ([120.60.51.181])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-734a003fa5csm437097b3a.145.2025.02.26.19.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 19:57:45 -0800 (PST)
Date: Thu, 27 Feb 2025 09:27:37 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	chaitanya chundru <quic_krichai@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
	amitk@kernel.org, dmitry.baryshkov@linaro.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	jorge.ramirez@oss.qualcomm.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v4 00/10] PCI: Enable Power and configure the TC956x PCIe
 switch
Message-ID: <20250227035737.q7qlexdcieubbphx@thinkpad>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>

On Tue, Feb 25, 2025 at 03:03:57PM +0530, Krishna Chaitanya Chundru wrote:
> TC956x is the PCIe switch which has one upstream and three downstream
> ports. To one of the downstream ports ethernet MAC is connected as endpoint
> device. Other two downstream ports are supposed to connect to external
> device. One Host can connect to TC956x by upstream port.
> 
> TC956x switch power is controlled by the GPIO's. After powering on
> the switch will immediately participate in the link training. if the
> host is also ready by that time PCIe link will established. 
> 
> The TC956x needs to configured certain parameters like de-emphasis,
> disable unused port etc before link is established.
> 
> As the controller starts link training before the probe of pwrctl driver,
> the PCIe link may come up as soon as we power on the switch. Due to this
> configuring the switch itself through i2c will not have any effect as
> this configuration needs to done before link training. To avoid this
> introduce two functions in pci_ops to start_link() & stop_link() which
> will disable the link training if the PCIe link is not up yet.
> 
> Enable global IRQ for PCIe controller so that recan can happen when
> link was up through global IRQ.
>  

Move these patches to a separate series.

> This series depends on the https://lore.kernel.org/all/20250124101038.3871768-3-krishna.chundru@oss.qualcomm.com/
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
> changes in v3:
> - The QPS615 PCIe switch is rebranded version of Toshiba switch TC956x.
>   There is no difference between both the switches, both
>   has two open downstream ports and one embedded downstream port
>   to which Ethernet MAC is connected.
>   As QPS615 is the rebranded version of Toshiba switch rename qps615
>   with tc956x so that this driver can be leveraged by all who are using Toshiba switch.

This should be moved to the description as a NOTE.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

