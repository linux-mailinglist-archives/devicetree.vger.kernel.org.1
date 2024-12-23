Return-Path: <devicetree+bounces-133670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 499BD9FB403
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 19:31:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79A961885173
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 18:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 241BD1B6556;
	Mon, 23 Dec 2024 18:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WboZ+BmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD6218A924
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 18:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734978661; cv=none; b=ddcLYsNf45kqRiSpdEalPD6IfmltJ3cNjbdLH8FK8u9NmvN/1LN46V2rqS4gNZ4VoHunA3fG9trdo19moQpNO8gQI3j8bh8XjisqVgbIMcu/jSUha7jd6xIL+CMeiKw7577r9kd0E5+LPorJzHMTGg2d3VaL6SIklb1Ird5dQS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734978661; c=relaxed/simple;
	bh=pbOx+LkwL74tgz3xkBgnjoUyd+PUXUbhc2tvIadZcpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cLqLupgkqTiz4R7RwalPfNhq/H28qgnBW0j4jEFfIgFFUfv8CrkBNc/fKR7dVRq9CgYowFH/TozPVTT/hyfl56ItVBpVa6EEOfpjqPcEPFuAVOjGeM7PWbS0/tjGCr01R2DC7ZvOA+m0Zf5F7uRiadl4tBVTApsI3CdcBBw+xM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WboZ+BmR; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so5822862e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734978657; x=1735583457; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ib6wBjX5a1DsQ7xeFSqZ26+LR0UmLO29CWJ794aiBqc=;
        b=WboZ+BmRp/mMDD0KQ/NxVWjm8RY6Jln7n3pQNTLK5E03fbIjTeKFZyduiwBnSazhsw
         nL1QpZcHe76Dzh//vA7sRVE2fiEC4VzsXXg0NWcdmx/XhKnq5M+FUS+uA+Fe9dFfGsXB
         oRd83PDKC7xOOZIsl27soO4XvzwfcUQvhlRujchKCUsnq06yoTNStJM6hQiXnfVg7r3t
         CuS+L2v+swBCk+Kjz32mCA2J2SmNw2+Upf7mI8MHkOg/kDJfZtZsed8TZ98BQO924oZy
         Xzl8/8L7WQfn8+LGsu4DU+zyXxSo4S5f+EplfxYOVTazwKG30frc2UnOT6rg0WARaPlJ
         I3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734978657; x=1735583457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ib6wBjX5a1DsQ7xeFSqZ26+LR0UmLO29CWJ794aiBqc=;
        b=tyTkFSA1o/wcer3SWX40xLnuDSOSuLZ0HgZYIXeW0wKT2sHhVNBZ5y9NRF1A73pbey
         hGl3rfzhyHov1eMHLfoaC051EyLhii2kN2tiqZalhhyLAuCMFANaNNzZYei9++tfb5KE
         sFiloSeg2bxxLSDMSVOrU9g8dQKsw8EJpez46531L3MlhnH5LGW1j8AMQPyf6v0VwmjC
         dIOGkXdZEABTwnB2y4XbHriu1pPYwens4yjYmTtfn2uucZcPxhstjEZiD2ixpC2rV8Ig
         4yUzKJbhr+iwLSoq3hquyTjYJPKRxncumnpubYP5N+Li/W7a9TWt8TwOEy4u3V9/RVvL
         YT+w==
X-Forwarded-Encrypted: i=1; AJvYcCVtBPF2WUIxS+fVRNm62ITFZONkrK4C+LbP7M81Uz6kKREukHt9MfWManWQH4siNaP1uZSNvPu46lro@vger.kernel.org
X-Gm-Message-State: AOJu0YxNhDIw5aASF7aGYQPLWWqwq1LMirAv2NKGlTZTtPRCssZebCEn
	P+LPDRWb1oso6zHx+/7DelcE/0uTX0v9xxGm+AJP2yGt6MwxsSiQpshwTUPxRwg=
X-Gm-Gg: ASbGnctWnjWx+YlivV6cXJoF4uUki8wIR8iMyRUbQOQ8YpmOXu8XP5ZW5LrsZW+/Kef
	M8gXXS2i/8n7fKFNBUNrAs2DH/GF58aimRotnrficQVBiVAIhiJdiAVZmpNj+LxurBP747OBnON
	eNvEwPkDJDisSVpvYecnMjepoo9optTN3YkYpc0ILJamN40f5TJtldgNNoVKV3SQ2yyWWfCRmV9
	7WT90BOU1gifGOImJTgqeYJ3h+lfg32/1uHjBwBGSNW1APcXvUn8y08TPBLhRN52CksK14u3IPG
	rzMpn1ex48IF0O0mXEfplW0lx2YBsfx8Z/6x
X-Google-Smtp-Source: AGHT+IH98AgsW3aEpXG1+1pa2cP2E4c381Hid3mVv/P1h9wa3FRZwHzgJACk9iyoPOwC3UpzdSI9mg==
X-Received: by 2002:a05:6512:b19:b0:541:1c5f:bf86 with SMTP id 2adb3069b0e04-5422946ee2fmr4284193e87.18.1734978657141;
        Mon, 23 Dec 2024 10:30:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f5d88sm1373627e87.15.2024.12.23.10.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 10:30:55 -0800 (PST)
Date: Mon, 23 Dec 2024 20:30:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com, 
	quic_mrana@quicinc.com, quic_vbadigan@quicinc.com, 
	Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v3 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
Message-ID: <ntag3wc3yqax2afsbzesev32hpj3ssiknhjq6dtncuuj4ljrxh@23ed4qdwfrxi>
References: <20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com>
 <20241223-preset_v2-v3-2-a339f475caf5@oss.qualcomm.com>
 <piccoomv7rx4dvvfdoesmxbzrdqz4ld6ii6neudsdf4hjj2yzm@2bcuacwa4feb>
 <d317c51a-3913-6c49-f8db-e75589f9289a@quicinc.com>
 <wjk32haduzgiea676mamqdr6mhbmm3rrb6eyhzghqpczjuiazx@ipik3jhjzmhz>
 <7bc9f3f2-851c-3703-39b4-fea93d10bd7f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7bc9f3f2-851c-3703-39b4-fea93d10bd7f@quicinc.com>

On Mon, Dec 23, 2024 at 10:13:29PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 12/23/2024 8:56 PM, Dmitry Baryshkov wrote:
> > On Mon, Dec 23, 2024 at 08:02:23PM +0530, Krishna Chaitanya Chundru wrote:
> > > 
> > > 
> > > On 12/23/2024 5:17 PM, Dmitry Baryshkov wrote:
> > > > On Mon, Dec 23, 2024 at 12:21:15PM +0530, Krishna Chaitanya Chundru wrote:
> > > > > PCIe equalization presets are predefined settings used to optimize
> > > > > signal integrity by compensating for signal loss and distortion in
> > > > > high-speed data transmission.
> > > > > 
> > > > > As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
> > > > > of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
> > > > > configure lane equalization presets for each lane to enhance the PCIe
> > > > > link reliability. Each preset value represents a different combination
> > > > > of pre-shoot and de-emphasis values. For each data rate, different
> > > > > registers are defined: for 8.0 GT/s, registers are defined in section
> > > > > 7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
> > > > > an extra receiver preset hint, requiring 16 bits per lane, while the
> > > > > remaining data rates use 8 bits per lane.
> > > > > 
> > > > > Based on the number of lanes and the supported data rate, this function
> > > > > reads the device tree property and stores in the presets structure.
> > > > > 
> > > > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > > > ---
> > > > >    drivers/pci/of.c  | 45 +++++++++++++++++++++++++++++++++++++++++++++
> > > > >    drivers/pci/pci.h | 17 +++++++++++++++--
> > > > >    2 files changed, 60 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> > > > > index dacea3fc5128..99e0e7ae12e9 100644
> > > > > --- a/drivers/pci/of.c
> > > > > +++ b/drivers/pci/of.c
> > > > > @@ -826,3 +826,48 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
> > > > >    	return slot_power_limit_mw;
> > > > >    }
> > > > >    EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
> > > > > +
> > > > 
> > > > kerneldoc? Define who should free the memory and how.
> > > > 
> > > I will update this in next series.
> > > as we are allocating using devm_kzalloc it should be freed on driver
> > > detach, as no special freeing is required.
> > > > > +int of_pci_get_equalization_presets(struct device *dev,
> > > > > +				    struct pci_eq_presets *presets,
> > > > > +				    int num_lanes)
> > > > > +{
> > > > > +	char name[20];
> > > > > +	void **preset;
> > > > > +	void *temp;
> > > > > +	int ret;
> > > > > +
> > > > > +	if (of_property_present(dev->of_node, "eq-presets-8gts")) {
> > > > > +		presets->eq_presets_8gts = devm_kzalloc(dev, sizeof(u16) * num_lanes, GFP_KERNEL);
> > > > > +		if (!presets->eq_presets_8gts)
> > > > > +			return -ENOMEM;
> > > > > +
> > > > > +		ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
> > > > > +						 presets->eq_presets_8gts, num_lanes);
> > > > > +		if (ret) {
> > > > > +			dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);
> > > > > +			return ret;
> > > > > +		}
> > > > > +	}
> > > > > +
> > > > > +	for (int i = 1; i < sizeof(struct pci_eq_presets) / sizeof(void *); i++) {
> > > > > +		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << i);
> > > > > +		if (of_property_present(dev->of_node, name)) {
> > > > > +			temp = devm_kzalloc(dev, sizeof(u8) * num_lanes, GFP_KERNEL);
> > > > > +			if (!temp)
> > > > > +				return -ENOMEM;
> > > > > +
> > > > > +			ret = of_property_read_u8_array(dev->of_node, name,
> > > > > +							temp, num_lanes);
> > > > > +			if (ret) {
> > > > > +				dev_err(dev, "Error %s %d\n", name, ret);
> > > > > +				return ret;
> > > > > +			}
> > > > > +
> > > > > +			preset = (void **)((u8 *)presets + i * sizeof(void *));
> > > > 
> > > > Ugh.
> > > > 
> > > I was trying iterate over each element on the structure as presets holds the
> > > starting address of the structure and to that we are adding size of the void
> > > * point to go to each element. I did this way to reduce the
> > > redundant code to read all the gts which has same way of storing the data
> > > from the device tree. I will add comments here in the next series.
> > 
> > Please rewrite this in a cleaner way. The code shouldn't raise
> > questions.
> > 
> > > > > +			*preset = temp;
> > > > > +		}
> > > > > +	}
> > > > > +
> > > > > +	return 0;
> > > > > +}
> > > > > +EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
> > > > > diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> > > > > index 14d00ce45bfa..82362d58bedc 100644
> > > > > --- a/drivers/pci/pci.h
> > > > > +++ b/drivers/pci/pci.h
> > > > > @@ -731,7 +731,12 @@ static inline u64 pci_rebar_size_to_bytes(int size)
> > > > >    }
> > > > >    struct device_node;
> > > > > -
> > > > > +struct pci_eq_presets {
> > > > > +	void *eq_presets_8gts;
> > > > > +	void *eq_presets_16gts;
> > > > > +	void *eq_presets_32gts;
> > > > > +	void *eq_presets_64gts;
> > > > 
> > > > Why are all of those void*? 8gts is u16*, all other are u8*.
> > > > 
> > > To have common parsing logic I moved them to void*, as these are pointers
> > > actual memory is allocated by of_pci_get_equalization_presets()
> > > based upon the gts these should not give any issues.
> > 
> > Please, don't. They have types. void pointers are for the opaque data.
> > 
> ok.
> 
> I think then better to use v1 patch
> https://lore.kernel.org/all/20241116-presets-v1-2-878a837a4fee@quicinc.com/
> 
> konrad, any objection on using v1 as that will be cleaner way even if we
> have some repetitive code.

Konrad had a nice suggestion about using the array of values. Please use
such an array for 16gts and above. This removes most of repetitive code.


-- 
With best wishes
Dmitry

