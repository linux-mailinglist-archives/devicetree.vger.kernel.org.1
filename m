Return-Path: <devicetree+bounces-230194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A88F9C00454
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:35:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B16819A0CFF
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DFD8308F38;
	Thu, 23 Oct 2025 09:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LAGjg/LN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79309308F2C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761212105; cv=none; b=mQzeu59nBU845zasg2dEPraHq9tao+gWFtvClZyi04ISxrDck5C7LAkrK+XRkRrVXndncra3CzbK7qb6+qBNhJE3hg9dikQxawCd7W+l7OcSWv0WC5SYkU1iqFWU9f5owZgv7atksQ9vI0vd/HpOvvpI6wKzOFmLE0On5U+3phk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761212105; c=relaxed/simple;
	bh=gr0dkUJNASEf8ceLwJeoMt7S2QkV0+GSeA/fQen8xEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TzmtzsLth6pFtkt49JHp53Oiqfd9XJuRXUGudOBkX5LxfHbvXSF9ALHx8KCOqPCY0iMPClmy7iYFEZPDXXa83VT12A1flUC/QUOScwua0RFxABatnan46pXXJ4x+Lgnoef/wQShpWBOQ+3I8ZJ6W88Lnhd8ias1X6vAUIAmonHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LAGjg/LN; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-63e18829aa7so825637a12.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761212102; x=1761816902; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qmowm21Hpqw+4/AYI01vQqCJ4eLpZHCFp6rzVE34vCo=;
        b=LAGjg/LNsoWublYuwHxkxpNFpknkztEzAr0LhtkVk32FiWJV9qFe9T4hwgdeDzKtYi
         jyJTMSakaeDWslKxd1155GbWPJz+SvC5eOiUj9oGArG2xZtz7IY5fugwY/e9fSy/0fqY
         6ZgKlU0NI5iXmek23gEk/997gf72XHcMRloSnaCiO+UaKe/GUrk0JFzD2nFAssIqWrC8
         UodTRZbcUnUF6UQDzyTWV4mz+GXS/bL5PQIcS1EIb8zsdryjVcdlvn9sy5j2bl4Ayjty
         peWYlZ2YO/rJ/8f+/GrEhMITQp3xxAYoVQKph4j/wVAzOGisIoXBA7EtevR/VFGK8Kon
         1gEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761212102; x=1761816902;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qmowm21Hpqw+4/AYI01vQqCJ4eLpZHCFp6rzVE34vCo=;
        b=YnjK3rE8rJgwqZtX1n9m+2l068UzWPxBtOyB52W/4z8Vw7rz5BdNEGC2xsObAf5IIj
         2g7f/BtfQg+Byk9ccrRu6m4VPcPw7O65iQV0WCT04rai7HkBmGROy6B/Ul7fEo85As26
         mlXBHpcGBQZ5P2Zp63D33ssOB1dukW4cxt/QvuBe1cTEEFLlM3icA9OQ2jJSURBOISDI
         w9s1CUO52m7UKHcE2a33CJRR+vzZ8mRmBGzKuTB39+Jr7djv/xIO2+z752SGgd9vvQAg
         lEFy70Xrif7rdfN3pEkKAwOC3QHuCC7mhqAq70Vm2+bU7J03Z1FpOrUQ4DPJ0c2N8tQc
         4q2w==
X-Forwarded-Encrypted: i=1; AJvYcCVGWFMEwoVJoMgdh5ZUwMuuRaMgAkt2TNkryI9acckwhR0qvAwSyi0usnGGjR3dHa8X4ThPbch8/BKb@vger.kernel.org
X-Gm-Message-State: AOJu0YzP10DIYYNuH2F1pGSQK8gLPYoNCjPY8VHARBd+gX3Oazs1hB+L
	1cJU2wNgLLEDfiMAQ/ZBy+sb7tgU1xSDzUmW15CHxn/8YBP79+MHmO2Q5RjPtNTBWqU=
X-Gm-Gg: ASbGncs1qq+tJUp0xdHyUhDSAY2y/ACCgRjQoYv4CsEtoWIm2P/1WL2tFvusVl5CVkB
	AJCCyXpR8YP/JfDekKDsn2jN7VHbLkwrBePEc77EyMjoRHQDgzVW4jdnfDP/v6iOciCVf4Fe6pQ
	kWVUUTdSU3N6No1EHYCHR3kVCQcYPEMwTRX6X+QbnsQPq1ojauICcTWNvqr+7+JBAwA3R+57lNS
	Lj/eVT+40UcECdv7LQ1RuiS8spG/dNVTvOnoNgv5wt06HCB5jHdNbJWJrV78V9ONs5cDRZIxiNQ
	zEPMtjVwae1Awz6eV1PlYikJ5Ja3PWsD3TXD0YYYxB1iaM/Ek7G8bGwGBOw59mHs4BBx/ppFwk2
	35oMohq+yAYem1CbH7Qu9FUmkFdBYsbYGHxjvgC6ZjZiLlnUrd/wjj0yacMiOnma/H5cbo/hUS1
	wT/aMb+RJR/xxB/f0nV+rN2ApnaHKCWQ==
X-Google-Smtp-Source: AGHT+IFGTq4/7TP6ZCRMZYcsJ7erefXsS1HrT5neWmXnbi7qAKyTavrz98f5qajkgOWdme7WJ3OhAA==
X-Received: by 2002:a05:6402:510b:b0:639:dd3f:f25d with SMTP id 4fb4d7f45d1cf-63c1f631b53mr22474619a12.7.1761212101707;
        Thu, 23 Oct 2025 02:35:01 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3f32366csm1257905a12.30.2025.10.23.02.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 02:35:01 -0700 (PDT)
Message-ID: <6c69d2a2-5dfe-450f-8a39-2ef6e7a6dbea@tuxon.dev>
Date: Thu, 23 Oct 2025 12:34:59 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] PCI: rzg3s-host: Add Renesas RZ/G3S SoC host
 driver
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 p.zabel@pengutronix.de, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
 <20251007133657.390523-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXF14x68Wk5YdOBS2D2N6LtnQjfGzrsMdSJegX-gc3faQ@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdXF14x68Wk5YdOBS2D2N6LtnQjfGzrsMdSJegX-gc3faQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Geert,

On 10/23/25 11:00, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, 7 Oct 2025 at 15:37, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
>> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
>> only as a root complex, with a single-lane (x1) configuration. The
>> controller includes Type 1 configuration registers, as well as IP
>> specific registers (called AXI registers) required for various adjustments.
>>
>> Hardware manual can be downloaded from the address in the "Link" section.
>> The following steps should be followed to access the manual:
>> 1/ Click the "User Manual" button
>> 2/ Click "Confirm"; this will start downloading an archive
>> 3/ Open the downloaded archive
>> 4/ Navigate to r01uh1014ej*-rzg3s-users-manual-hardware -> Deliverables
>> 5/ Open the file r01uh1014ej*-rzg3s.pdf
>>
>> Link: https://www.renesas.com/en/products/rz-g3s?queryID=695cc067c2d89e3f271d43656ede4d12
>> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- /dev/null
>> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> 
>> +static void rzg3s_pcie_irq_compose_msi_msg(struct irq_data *data,
>> +                                          struct msi_msg *msg)
>> +{
>> +       struct rzg3s_pcie_msi *msi = irq_data_get_irq_chip_data(data);
>> +       struct rzg3s_pcie_host *host = rzg3s_msi_to_host(msi);
>> +       u32 drop_mask = RZG3S_PCI_MSIRCVWADRL_ENA |
>> +                       RZG3S_PCI_MSIRCVWADRL_MSG_DATA_ENA;
> 
> This should include bit 2 (which is hardwired to zero (for now)),
> so I think you better add
> 
>     #define RZG3S_PCI_MSIRCVWADRL_ADDR  GENMASK(31, 3)
> 
>> +       u32 lo, hi;
>> +
>> +       /*
>> +        * Enable and msg data enable bits are part of the address lo. Drop
>> +        * them.
>> +        */
>> +       lo = readl_relaxed(host->axi + RZG3S_PCI_MSIRCVWADRL) & ~drop_mask;
> 
> ... and use FIELD_GET() with the new definition here.

Bits 31..3 of RZG3S_PCI_MSIRCVWADRL contains only bits 31..3 of the MSI
receive window address low, AFAIU. Using FIELD_GET() for bits 31..3 on the
value read from RZG3S_PCI_MSIRCVWADRL and passing this value to
msg->address_lo will lead to an NVMe device not working.

The documentation of RZG3S_PCI_MSIRCVWADRL on bits 31..3 specifies: "Set
the MSI receiving window's Start Address [31:3]. However, they must be aligned
 to the size set by the MSI Receive Window Mask"

The RZG3S_PCI_MSIRCVWMSKL have the last 2 bits set to 0x3, always, as of
the current documentation.

The value written to RZG3S_PCI_MSIRCVWADRL in rzg3s_pcie_msi_hw_setup() is
aligned to 128 (RZG3S_PCI_MSI_INT_NR * sizeof(u32)) and thus bits 2..0 will
be zero, and so, these bits are used by HW to allow us, e.g., to enable the
MSI window.

RZ/G3E have 64 MSI interrupts and this will be aligned to 256, thus, the
last 3 LSB bits of the address written to RZG3S_PCI_MSIRCVWADRL will always
be zero (at least with the current known setups) and we can use the
register RZG3S_PCI_MSIRCVWADRL as proposed in this patch.

Due to these I haven't added more alignment constraints on the value set in
RZG3S_PCI_MSIRCVWADRL.

Thank you for your review,
Claudiu

