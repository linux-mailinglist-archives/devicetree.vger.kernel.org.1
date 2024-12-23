Return-Path: <devicetree+bounces-133619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 015659FB0B0
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 16:26:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27D6318827E8
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B8313BAE3;
	Mon, 23 Dec 2024 15:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FvFkr8HR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642EB7E782
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 15:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734967569; cv=none; b=LyLjLo/7tHcLrY6puomz+qlx0Bq9O5uJBWyJ+kqSaoGShqc6/Z137f1boPE5S5oY+6qp+vvDqN8Y6u4ZtiW2/E5JQbqLjxz3MiJrIRPQy/wymA6+wSjLh4P5Apllr9l85LFqHJ3+M+WwkpJwn9G6oR304HME65o91TElRWzVNX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734967569; c=relaxed/simple;
	bh=8KxeIyHLII2N4zOym0EJjR22b9J8GOGmryISAcvRUL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ufwFDRvtQfT4ZKBtkOv4WS4ay7NZwP8ayzUQ6PDm+IVrRtkqKU2PYvDXSkoCdBdo/dnkzH1H/5ewKsyGtka35DLdbjo/u04lMh36Nw8AMf1wrBZWsbWrV2sZuTNZHqOIaXGLPYj1mmbPGK2Xu0tuHaXHLEjkjEQRJ3BgWMd03gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FvFkr8HR; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ffd6b7d77aso54658471fa.0
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 07:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734967565; x=1735572365; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yRNn5SEviZmZ++7jvBvB2eWIk3Q1+FuekrxDUUhMtLM=;
        b=FvFkr8HRTN4SY86SNnywaOuKdFQJ/0y7z+q5gHNktJaFuJ4MqOGb+ZWuYvaMgydHf2
         PyOk2p4k+6kX0xMxZt3T/iAmxB5WhklODXP356AW/1yfDQuCW49K9MfTlxM1FJfAXLkN
         FMd3I/JtBxKsqDp53Ys2eJKtyxgVZOvhgsrNTkNgH/HBXLXSCyA7ey/JV/f67HcD8Z7a
         VUzCa3h8lEi3Fbwji+n9ZoSS3m1j7rsPSodvILloFdpnJQd2Yoa5g7vgJwjjvOwQ4N7B
         ftMZgN9jNi4lzUWwXsJ3jv8a2igbZKP3HnxXT5VuvlotkNkPnF8DFKuJtkxq9QFZsQWF
         o5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734967565; x=1735572365;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yRNn5SEviZmZ++7jvBvB2eWIk3Q1+FuekrxDUUhMtLM=;
        b=V6DFMXhpaunOGtXG6Akn0uoQhp7MYrYHFOjSV0OSlCjYqZ96NpD2kRj+8iJwX3ZYSK
         8qANZI4xtylBUXvZLB3sW2zeesTx17OUdEUuPxQQmL97WRBDmSllAKnjm+/zUlSbOTn6
         7SHIsAncqUgfRUScSJjzBc/A8t1xNOwn88d/cgnVg4Q+hviQiKVYfPl8gv+fdahw+4HD
         E5m0DDkLUYtAwHfrs/J8yMdmkm4vRo37YOCmvVAkW3Onn4z+BfLUOdz8M8jjX4jMpNSX
         ozqCAPfwi/9B54JmxSVNfyiasV/Ma92Jq2iDLw7wd4gR1M1myo4aQ1KFSPCDY6DArIX0
         TSew==
X-Forwarded-Encrypted: i=1; AJvYcCW7FUKcsk7YxoLoI/MrjCzD1KYFC/MwyMLKnpzXcTER1rjsO1ueeL7qXJYskWaOdoCXiOOUBzk8iOof@vger.kernel.org
X-Gm-Message-State: AOJu0YwimssyJBI8HThL+1O+ouDW45/4YYEzMIegMIhu7QmF2nstqziG
	x3bp/EbJY2aOYuauynHHXrGhAUHLrol2OboYoXWSLLH8CDRNu9RYQod6DpsUA/0=
X-Gm-Gg: ASbGnct6zBWsyVQwqbfL8nKvv7uLihLTA4nhzKG1cvd9gIVquM7UeNr0kY7r4L7Fo7S
	Qq0jY7lRBvMqm/oHB2pb5ud3clet9YAA4pwE8BrY9PMkl97qtunpNemwcY+CrZLBUy00BD3sII0
	Ja6rOMf+FKBotkGO6uiCNk4pw1yZ77loublmKGzq30ujyFfheKSGlP+kDWx/iaQjqZJEnFQy0Vc
	3+5QeQSFNCCRNVqn1btHEiuAJ+ujbStNT1yDtdLZHoIgJvTkRpRdKMV4v4F1rhe3Bb3tMZmSLBP
	SRR9i7ZXPH+Mk07X73NrWSDQdqNsQR50xMlh
X-Google-Smtp-Source: AGHT+IG+kCxBxVnOETwXcR6CNiK04pSn0N/4ewqqpIaaBk/+kzh3htMWI6X8QTGNkH+somP+K3HIdA==
X-Received: by 2002:a05:651c:2129:b0:2fb:4b0d:9092 with SMTP id 38308e7fff4ca-30468519761mr39670991fa.1.1734967565411;
        Mon, 23 Dec 2024 07:26:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cae6sm13678521fa.23.2024.12.23.07.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 07:26:04 -0800 (PST)
Date: Mon, 23 Dec 2024 17:26:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com, 
	quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v3 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
Message-ID: <wjk32haduzgiea676mamqdr6mhbmm3rrb6eyhzghqpczjuiazx@ipik3jhjzmhz>
References: <20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com>
 <20241223-preset_v2-v3-2-a339f475caf5@oss.qualcomm.com>
 <piccoomv7rx4dvvfdoesmxbzrdqz4ld6ii6neudsdf4hjj2yzm@2bcuacwa4feb>
 <d317c51a-3913-6c49-f8db-e75589f9289a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d317c51a-3913-6c49-f8db-e75589f9289a@quicinc.com>

On Mon, Dec 23, 2024 at 08:02:23PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 12/23/2024 5:17 PM, Dmitry Baryshkov wrote:
> > On Mon, Dec 23, 2024 at 12:21:15PM +0530, Krishna Chaitanya Chundru wrote:
> > > PCIe equalization presets are predefined settings used to optimize
> > > signal integrity by compensating for signal loss and distortion in
> > > high-speed data transmission.
> > > 
> > > As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
> > > of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
> > > configure lane equalization presets for each lane to enhance the PCIe
> > > link reliability. Each preset value represents a different combination
> > > of pre-shoot and de-emphasis values. For each data rate, different
> > > registers are defined: for 8.0 GT/s, registers are defined in section
> > > 7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
> > > an extra receiver preset hint, requiring 16 bits per lane, while the
> > > remaining data rates use 8 bits per lane.
> > > 
> > > Based on the number of lanes and the supported data rate, this function
> > > reads the device tree property and stores in the presets structure.
> > > 
> > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > ---
> > >   drivers/pci/of.c  | 45 +++++++++++++++++++++++++++++++++++++++++++++
> > >   drivers/pci/pci.h | 17 +++++++++++++++--
> > >   2 files changed, 60 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> > > index dacea3fc5128..99e0e7ae12e9 100644
> > > --- a/drivers/pci/of.c
> > > +++ b/drivers/pci/of.c
> > > @@ -826,3 +826,48 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
> > >   	return slot_power_limit_mw;
> > >   }
> > >   EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
> > > +
> > 
> > kerneldoc? Define who should free the memory and how.
> > 
> I will update this in next series.
> as we are allocating using devm_kzalloc it should be freed on driver
> detach, as no special freeing is required.
> > > +int of_pci_get_equalization_presets(struct device *dev,
> > > +				    struct pci_eq_presets *presets,
> > > +				    int num_lanes)
> > > +{
> > > +	char name[20];
> > > +	void **preset;
> > > +	void *temp;
> > > +	int ret;
> > > +
> > > +	if (of_property_present(dev->of_node, "eq-presets-8gts")) {
> > > +		presets->eq_presets_8gts = devm_kzalloc(dev, sizeof(u16) * num_lanes, GFP_KERNEL);
> > > +		if (!presets->eq_presets_8gts)
> > > +			return -ENOMEM;
> > > +
> > > +		ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
> > > +						 presets->eq_presets_8gts, num_lanes);
> > > +		if (ret) {
> > > +			dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);
> > > +			return ret;
> > > +		}
> > > +	}
> > > +
> > > +	for (int i = 1; i < sizeof(struct pci_eq_presets) / sizeof(void *); i++) {
> > > +		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << i);
> > > +		if (of_property_present(dev->of_node, name)) {
> > > +			temp = devm_kzalloc(dev, sizeof(u8) * num_lanes, GFP_KERNEL);
> > > +			if (!temp)
> > > +				return -ENOMEM;
> > > +
> > > +			ret = of_property_read_u8_array(dev->of_node, name,
> > > +							temp, num_lanes);
> > > +			if (ret) {
> > > +				dev_err(dev, "Error %s %d\n", name, ret);
> > > +				return ret;
> > > +			}
> > > +
> > > +			preset = (void **)((u8 *)presets + i * sizeof(void *));
> > 
> > Ugh.
> > 
> I was trying iterate over each element on the structure as presets holds the
> starting address of the structure and to that we are adding size of the void
> * point to go to each element. I did this way to reduce the
> redundant code to read all the gts which has same way of storing the data
> from the device tree. I will add comments here in the next series.

Please rewrite this in a cleaner way. The code shouldn't raise
questions.

> > > +			*preset = temp;
> > > +		}
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
> > > diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> > > index 14d00ce45bfa..82362d58bedc 100644
> > > --- a/drivers/pci/pci.h
> > > +++ b/drivers/pci/pci.h
> > > @@ -731,7 +731,12 @@ static inline u64 pci_rebar_size_to_bytes(int size)
> > >   }
> > >   struct device_node;
> > > -
> > > +struct pci_eq_presets {
> > > +	void *eq_presets_8gts;
> > > +	void *eq_presets_16gts;
> > > +	void *eq_presets_32gts;
> > > +	void *eq_presets_64gts;
> > 
> > Why are all of those void*? 8gts is u16*, all other are u8*.
> > 
> To have common parsing logic I moved them to void*, as these are pointers
> actual memory is allocated by of_pci_get_equalization_presets()
> based upon the gts these should not give any issues.

Please, don't. They have types. void pointers are for the opaque data.

> > > +};
> > 
> > Empty lines before and after the struct definition.
> > 
> ack.
> 
> - Krishna Chaitanya.
> > >   #ifdef CONFIG_OF
> > >   int of_pci_parse_bus_range(struct device_node *node, struct resource *res);
> > >   int of_get_pci_domain_nr(struct device_node *node);
> > > @@ -746,7 +751,9 @@ void pci_set_bus_of_node(struct pci_bus *bus);
> > >   void pci_release_bus_of_node(struct pci_bus *bus);
> > >   int devm_of_pci_bridge_init(struct device *dev, struct pci_host_bridge *bridge);
> > > -
> > > +int of_pci_get_equalization_presets(struct device *dev,
> > > +				    struct pci_eq_presets *presets,
> > > +				    int num_lanes);
> > 
> > Keep the empty line.
> > 
> > >   #else
> > >   static inline int
> > >   of_pci_parse_bus_range(struct device_node *node, struct resource *res)
> > > @@ -793,6 +800,12 @@ static inline int devm_of_pci_bridge_init(struct device *dev, struct pci_host_br
> > >   	return 0;
> > >   }
> > > +static inline int of_pci_get_equalization_presets(struct device *dev,
> > > +						  struct pci_eq_presets *presets,
> > > +						  int num_lanes)
> > > +{
> > > +	return 0;
> > > +}
> > >   #endif /* CONFIG_OF */
> > >   struct of_changeset;
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 

-- 
With best wishes
Dmitry

