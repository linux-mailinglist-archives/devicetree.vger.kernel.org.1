Return-Path: <devicetree+bounces-252374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E31CCFE1A2
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F06E030B4CAB
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74796322B7B;
	Wed,  7 Jan 2026 13:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JQTCSVDg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC44731A7F2
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767793554; cv=none; b=Pe5EVOatKQ7a4rNLHYAt9e0M6uvUM42wVJjqwsBz7BU9SqqKIreyFapYZ3IvEv4vCGUAOBFE7F3VlWSdcCiqaSrY9/QqDDpTNlXhfY7HvdCbeBEgpVDTSrBaGTUb+MEONdOa23zszAui9rfq+C/MDbia3tkUu444nXoNY+meoIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767793554; c=relaxed/simple;
	bh=Mo5zQFUvZgfbiFA5jz8xgr54ypO2nOCMgs6MX83smjw=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=DRxLjHQjh9uMbGxy8+FRgqXBK5BeibOZcCQ3ypKCtvllcaPnHJdhRp2/611bim+3+FGznUrBFmW6IrKEhz+0IT3iFui5S5AUQgSUb87Q4AaQz3/qJQcs0o+ga6YAv2L8xylh94iD+ySZ8++eA6mCS7mXc6FglAx4Pofzg+9epGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JQTCSVDg; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59b6c89d306so1293996e87.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767793546; x=1768398346; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=zbg60yhotFqS4lYQ4SPbRRNfljX1PZuvfnI5dpwkZJ8=;
        b=JQTCSVDgtatkBFRNvr4BBUEVN/fPmYFca9a7gH1f4cdl98ymQ/RvuUbbXlIFbGpKvO
         qed+KYFdgPvLtqSevr61usZx4cUgrlZLbQQEw6dSkQznr1oJZW6yyY/9swM4ukDNbRI/
         x7VrNAWqwUqGgqWZcxbDm6LrmJlgMyH+3Mi8I4PasJKfDbp0a+cA3L4ltS/q/6bBq44l
         ha+od8yY814+GO3yyZd+MoIzApfeSZS9ktHX5F+q1rRRGD/Bx7+gJyhGn4cakrlj1UlQ
         ZkEzZaDTadm68WfK6wOOIJ7rgYX6PZgDVPKvL8UsEC2srAXjXW89lKlBHQg2xVNPKF4E
         AZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767793546; x=1768398346;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zbg60yhotFqS4lYQ4SPbRRNfljX1PZuvfnI5dpwkZJ8=;
        b=laxsIOM3nD6HDArzMGGYlA/VET7/x2N9HdDTUHqJPX6NnX9gFuTSZUMrxA1Mv5gvN3
         0C2PEmP1tXGJQ2b40106g95pJgp9FNE3uR1VIN46urQ3Txo3hKO5+ECRs6jAKc00Ek6i
         A2T5XpICSes+mi/5Lefe31yJ6ijl7+3rXvhkfzrhYma9nOZ6YQjhsdpLyMT20w4tfCCe
         cHO5P0AwFxGsF2tJMjroZOMgSMlbAvIhpmyYweGiVj4SvWSaI/rRHh7LdUNhkJU+wFuD
         bHFqe9gK2S8VxRpHSru+cOaixt+ajfe7j7L8mIhbpY1JewyIL31a8nQjxPm3OID/+1In
         lK+A==
X-Forwarded-Encrypted: i=1; AJvYcCVmBTIjDtC1ZqxFTvpWTl3gUS4wUQrHqZRfcNUP8Jfp/rl3r1Y6nAfCdIZnPYIpJkYm7gRiKU7Ue6CH@vger.kernel.org
X-Gm-Message-State: AOJu0YzZMB1gz3rsoj2V5RqZNZXXo+++j/Fcy449QtQ7DvJV6h62eT93
	t4ymLwcLqjFJAL+606eNcWGnTT265nyrjdlZANDq9TtpMkSdmGoYuc5n
X-Gm-Gg: AY/fxX7rsVvdt8bcpcjIU2L6h+06zU8ndIXctahXnm4oMsh+gqdoxiaIBvnNKcG6fa6
	iewJlsaMeLxDVpakY7OpegXncn8m5k6gMJjsR9LjtdRYciTsEOi2AnSzNRJC63ExLGQll+QNjb7
	oNsrCHLXPSV0GEgLMI1I2h56pA/mc6m1IEsrpP/k1MV1BfVH4Ae7xMISXSbNwnxMnRxXsgiU0l0
	j82ARVPqXJqW4cNXRqOk6owNelpKYD4JBPxBBFfBFTkR89Qm0Um59yZHtMsOptzwME/hFv1V3Ej
	n+CXg3IdvqYSaULhJ+FMM5ph3hyT8OluVqaZgdSRGY+NB4MQAD/7YV2PKpXs7tNLXiQ4YtJ1tu/
	FwPpSDSyxMEhswRMOSVc0odWgoMfiPCu0IsOKE7kXHLMeb3v5ZzVTPaYLvth8fADuqgCcK/PD
X-Google-Smtp-Source: AGHT+IFBvFdbxlKvEOgpHQQ8YktwaenfQmmG9RkrtS+47ehkEyiqafqKukfyFwzDbyon83pp4CA81A==
X-Received: by 2002:a05:6512:2399:b0:59b:730d:4a57 with SMTP id 2adb3069b0e04-59b730d4b44mr510415e87.39.1767793545398;
        Wed, 07 Jan 2026 05:45:45 -0800 (PST)
Received: from razdolb ([77.220.204.220])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b669418b6sm1224545e87.20.2026.01.07.05.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 05:45:45 -0800 (PST)
References: <20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com>
 <875x9fuj7i.fsf@gmail.com>
 <SEYPR06MB513404EB419B7850159F3CC29D84A@SEYPR06MB5134.apcprd06.prod.outlook.com>
User-agent: mu4e 1.10.9; emacs 30.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Andrew  Jeffery <andrew@codeconstruct.com.au>, Bjorn
 Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan
  Sadhasivam
 <mani@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Neil Armstrong <neil.armstrong@linaro.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v7 0/7] Add ASPEED PCIe Root Complex support
Date: Wed, 07 Jan 2026 16:40:09 +0300
In-reply-to: <SEYPR06MB513404EB419B7850159F3CC29D84A@SEYPR06MB5134.apcprd06.prod.outlook.com>
Message-ID: <875x9dcz9c.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


Hi Jacky,

On 2026-01-07 at 02:28 GMT, Jacky Chou <jacky_chou@aspeedtech.com> wrote:

> Hi Mikhail Rudenko,
>
>> First of all, thank you for your efforts in getting this driver upstreamed! I am
>> trying to understand whether this driver supports PCIe devices that have an I/O
>> port BAR, where CPU access to I/O ports is required for proper device
>> operation.
>>
>> If I understand correctly, this line in the Aspeed 2600 dtsi file declares the I/O
>> port range:
>>
>>     ranges = <0x01000000 0x0 0x00018000 0x00018000 0x0 0x00008000
>>
>> During system initialization, the pci_remap_iospace() function in
>> arch/arm/mm/ioremap.c maps the physical address range
>> 0x00018000-0x00020000 to the virtual address PCI_IO_VIRT_BASE
>> (0xfee00000). After this mapping, inb() and outb() calls work by converting I/O
>> port addresses to virtual addresses starting at PCI_IO_VIRT_BASE, then
>> performing reads and writes to those virtual addresses.
>>
>> What I don't understand is this: according to the Aspeed 2600 datasheet, the
>> address range 0x00000000-0x0fffffff (which contains
>> 0x00018000-0x00020000) is mapped to Firmware SPI Memory. This would
>> mean that outb() operations get routed to memory-mapped SPI flash instead of
>> PCIe.
>>
>> It seems like there's a missing piece to this puzzle. Could you help clarify how
>> this is supposed to work?
>>
>
> Thank you for pointing this out, and sorry for the confusion.
>
> You are correct that, as things stand, this does not make sense from a real hardware perspective.
>
> In fact, the I/O addressing support you noticed was something we experimented with internally
> only. There is no actual hardware design on AST2600 that supports PCIe I/O port addressing in
> this way. To enable those experiments, we modified our internal kernel accordingly, but this was
> never intended to represent real, supported hardware behavior.
>
> This is our mistake for leaving this description in the DTS, as it can indeed be misleading. We
> will remove this part to avoid further confusion.
>
> Thank you again for your careful review and for bringing this to our attention.

Thank you for prompt reply and for getting this clarified!

> Thanks,
> Jacky


--
Kind regards,
Mikhail

