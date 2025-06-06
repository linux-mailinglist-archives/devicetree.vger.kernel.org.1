Return-Path: <devicetree+bounces-183272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 399C8ACFEEC
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 11:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8F7516B59B
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 09:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2527286436;
	Fri,  6 Jun 2025 09:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TxvA3+vc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8E728642C
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 09:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749201147; cv=none; b=mM16oHQKSG0EbLdisuVocHW31J2irhLdoyZjn3tarT7LRbziMlod8q0D1UEvacrxrFZTUzQv82oMp3WP5+DrJBYBwHKhS7rRV//sakIdAHANzFMHI0XFRBSLWo25NOHCzGA8uU+DkIlF9XL+vGrw5cAdMNHkFsJuotCn9wdHxwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749201147; c=relaxed/simple;
	bh=HmRNUwvFUl/hdKoO4B1dgc6/Hw5mGyFSqMWv/NJQVWE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uH+gizAI5bNev/gHcJxu1gUHAM5ifFeebMcifX3Me0NHxZbAIVu9oFxcK1vEZppAtx0jkaYVvUhEQDMjnhdjS8wKE1CXxfYt2k+5f8XS5zebxD/Idz22t2fNO3AYsJxwCDjnRsHMpvHPFnSRyHuP2ELtX9WK1m4OLKkeZ0gtKrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TxvA3+vc; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad93ff9f714so315606766b.2
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 02:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749201144; x=1749805944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wc+ifX+7O38yry593NEDWvp79xQMU3g4ALAygrP5+5k=;
        b=TxvA3+vcesJZKqLdzgVo3evL9gOZzhwlcXroGLLBq+G8ahix5MAMLbKqLE35JLUHF2
         VAvfkrrzKMTNT1Er2AEEtR0GK5Jklbeh4SDj//wLvZ+MXHqpuLHP1y8+Ew37iDNJ/ELB
         zGhVek5Cu05m1W0oBuGylGglcngGZP80EfUkifMT7AU6RLF4+uduuyt1BPRz3coEAQtq
         SW9pJJVof/RhUpHQVgMQkGdxLiu/xtLDer20WNPoe3nsqhMdclVAfEwnrx7puRF3IKrA
         3xZthlRqDnC+BfNnrav3UnkwCkSEWUZ9QA8rf88C/gzcD6VYUSmeu6f9qbBQ1uH4nfQi
         3eoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749201144; x=1749805944;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wc+ifX+7O38yry593NEDWvp79xQMU3g4ALAygrP5+5k=;
        b=HOVHv4ZQX6pi347chKWLmMmK8wGQOIKupebZMgjOeOpqwMd2mL5Lr8w5RRju2dsZGq
         FRvFd3t2wnoXz8uoaFcM/kGvYKcvIhUD2pG/6tFnix9FdyQ+o1QZtRVzEfouceKuCUIx
         27J+LZxulB9LYa/L567cjhYm3Uls02aaSVmniJ1KY82F5NaTTWUUt5qKrdgVleRtJj4x
         khKYlDsQnWJeeU5rq1kDzyUvFa6ZKhjNavT71CDv4vJf84mlxnZ0agbFSt/T+fcFwgVJ
         oeQVVE/KvXdz0BwYbg8ZqISt+lnRTNRtGK5sp6TMda7vsW5FSR86yAoMG/Xagnblx6LR
         9zzw==
X-Forwarded-Encrypted: i=1; AJvYcCVlcy2IloUqKKPIun6fd3vc38v36yAbqmJ/lytLjguOAsS8qxoHNaNYYqARDvmqRiijnPonoDUftf+c@vger.kernel.org
X-Gm-Message-State: AOJu0YzzyNZR05Pax/R9D/M4qy3YlCcTiCX+yNrmFHrwmudZcScgs+6W
	siC53cJrrVE+eunDtEcSWiZ5HTr4Ogf4jFdMI1DBlSG6SDE9BhIsSEuVqiBEBUzHMqo=
X-Gm-Gg: ASbGncunAs0Lr5/GSoY7Rh1zTe3gGcA337ONS8HrA+JX6MRKdvwaV/kIrY3Ds5QLCKQ
	llbKjRW9cCvMoAbwy+3nN4v4haB88TUcQjtyPmrR2tcK+WEdFMmmXL19GgB7tKpMRV68yELkZlv
	o+SQOjQCqwxUhBMRKqLffpI1By8YhdQAe0lNgK73b0VLUfGqQpZid8+33PNEUeEonEPnrlZXn8f
	BEVg1+8GaAlHTY10fuYJ3sOzc9p4SpwdAzkclMrta1snmoruItYMrzbAobB1g6xrT3UA7wGjwwa
	NvyAAKJHe5mKkXNP6j/aqwzXi2jwrgfotS77b1UtENevgxRUEyzswDavQhbU
X-Google-Smtp-Source: AGHT+IEjDHiLE7sMo+a12s7VFlD8SjfCEiBfxxMF3QVGmJjKfSvQI7x7ZEGc6pDRlowYGNhvaszk6A==
X-Received: by 2002:a17:907:bb49:b0:adb:428f:f748 with SMTP id a640c23a62f3a-ade1aa06c95mr206620466b.21.1749201143788;
        Fri, 06 Jun 2025 02:12:23 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc7d300sm85900566b.179.2025.06.06.02.12.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jun 2025 02:12:23 -0700 (PDT)
Message-ID: <53921bd9-6ac9-49fb-8c9d-2c439ec8cd5b@tuxon.dev>
Date: Fri, 6 Jun 2025 12:12:21 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] PCI: rzg3s-host: Add Initial PCIe Host Driver for
 Renesas RZ/G3S SoC
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 john.madieu.xa@bp.renesas.com,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250605225730.GA625963@bhelgaas>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250605225730.GA625963@bhelgaas>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Bjorn,

On 06.06.2025 01:57, Bjorn Helgaas wrote:
> On Fri, May 30, 2025 at 02:19:13PM +0300, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
>> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
>> only as a root complex, with a single-lane (x1) configuration. The
>> controller includes Type 1 configuration registers, as well as IP
>> specific registers (called AXI registers) required for various adjustments.
> 
>> +/* Timeouts */
>> +#define RZG3S_REQ_ISSUE_TIMEOUT_US		2500
>> +#define RZG3S_LTSSM_STATE_TIMEOUT_US		1000
>> +#define RZG3S_LS_CHANGE_TIMEOUT_US		1000
>> +#define RZG3S_LINK_UP_TIMEOUT_US		500000
> 
> Are any of these timeouts related to values in the PCIe spec?  If so,
> use #defines from drivers/pci/pci.h, or add a new one if needed.
> 
> If they come from the RZ/G3S spec, can you include citations?

The values here were retrieved by experimenting. They are not present in
RZ/G3S specification. I'll look though the header you pointed and use any
defines if they match.

> 
>> +static int rzg3s_pcie_host_init(struct rzg3s_pcie_host *host, bool probe)
>> +{
>> +	u32 val;
>> +	int ret;
>> +
>> +	/* Initialize the PCIe related registers */
>> +	ret = rzg3s_pcie_config_init(host);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/* Initialize the interrupts */
>> +	rzg3s_pcie_irq_init(host);
>> +
>> +	ret = reset_control_bulk_deassert(host->data->num_cfg_resets,
>> +					  host->cfg_resets);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/* Wait for link up */
>> +	ret = readl_poll_timeout(host->axi + RZG3S_PCI_PCSTAT1, val,
>> +				 !(val & RZG3S_PCI_PCSTAT1_DL_DOWN_STS), 5000,
>> +				 RZG3S_LINK_UP_TIMEOUT_US);
> 
> Where do we wait for PCIE_T_RRS_READY_MS before pci_host_probe()
> starts issuing config requests to enumerate devices?

I missed adding it as RZ/G3S manual don't mention this delay.

> 
>> +	if (ret) {
>> +		reset_control_bulk_assert(host->data->num_cfg_resets,
>> +					  host->cfg_resets);
>> +		return ret;
>> +	}
>> +
>> +	val = readl(host->axi + RZG3S_PCI_PCSTAT2);
>> +	dev_info(host->dev, "PCIe link status [0x%x]\n", val);
>> +
>> +	val = FIELD_GET(RZG3S_PCI_PCSTAT2_STATE_RX_DETECT, val);
>> +	dev_info(host->dev, "PCIe x%d: link up\n", hweight32(val));
>> +
>> +	if (probe) {
>> +		ret = devm_add_action_or_reset(host->dev,
>> +					       rzg3s_pcie_cfg_resets_action,
>> +					       host);
>> +	}
>> +
>> +	return ret;
>> +}
> 
>> +		 * According to the RZ/G3S HW manual (Rev.1.10, section
>> +		 * 34.3.1.71 AXI Window Mask (Lower) Registers) HW expects first
>> +		 * 12 LSB bits to be 0xfff. Extract 1 from size for this.
> 
> s/Extract/Subtract/

OK.

Thank you for your review,
Claudiu

