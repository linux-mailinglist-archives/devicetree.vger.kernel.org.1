Return-Path: <devicetree+bounces-240212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B55D6C6E9AE
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:54:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3BD234FE996
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847AA3596EB;
	Wed, 19 Nov 2025 12:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ByQ49Ug9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489E0358D3F
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 12:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763555835; cv=none; b=X5wP3KgkWAmH458WVNFoIzQ/LAmWjKbuurBui/E92HSuTpTnIstWGtvPtWu6MaR0rk8i4Cs6hrnLr+x1rll38TXxxfOHTxg6gM+1YCJ/t2yx0q8dC4cCGPKaSM4lZNrsUhqqcu9S9XSUsZP/N/WVIviVR7+5ViYtM43awDZDuCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763555835; c=relaxed/simple;
	bh=7mcK1ohMWSnVS3aGt8xXqpYJWiiQ0HtA7t/k3b3t2qM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iGQ89wG8qSCwp5i1WWlSNGf/XdUt3pZ4JVnd0kL8cO92aj9CZ7O+ZS97qZfDWOdMkHPITeWwFq2KXx8RcDOnXUWcy/K3kv6g48cqMtCihRDoQIm6YX8iJcChX8S6vNO80q6y+GFx4GioSzMOH2lZrJHF+NP1ZVycrlAmH5aMNUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ByQ49Ug9; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42b3c965cc4so459393f8f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 04:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763555831; x=1764160631; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t/wl42pES18vi+TWKSwvoZgKjCTDSQ0moe0G5S5wwP0=;
        b=ByQ49Ug9JyghRQWjjhl4codhMP56qX4QOicBO3dVuitaV+VTvCRuXxZnElIOAla12Z
         cy3i2VyzhBG+UNS0DRev0ugY73n5FaQ7i6SEaFfSAkvnRluOmHIbuTWpANgXXQ6M4en5
         iKgB26/BMzfRj0bhjcUwOgrORabLEj8aS0WlMsucnY45+6lXI3/wZJr+ZeKWFaAu68xx
         OyTH7XXLagXHNoxHadA7R766G7m8wb8rPx1FdU2HboGiGEx7dgEfdpE9nP22Rb/4sHTR
         dbDpB9pPNd5AcwIm3LiCslC+S5jOBAWTiyNInGnE6ui733LSTiwxiVNRvFlCJqGhrRrN
         ARkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763555831; x=1764160631;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t/wl42pES18vi+TWKSwvoZgKjCTDSQ0moe0G5S5wwP0=;
        b=moqBK1GBM+ww3n0VT3ilplzmRH+aWVJ08Vbc9aGJu+NiKNxuRZXChx2pvcSzTE7qyK
         1jyjtwdvqvEQM5Y1ls2ZAHDg04+wHD/YZPVlIMcwlLhhffIRkjN6wFvip33mzYKqOlZd
         NFvjsQmndvBOXTPtUod7582rGibdcqc4f9UBWYrgKbix1V2P2ueLOLO7O1RyCREjFRe/
         gwTKUAbR5UHnGoautUO9bGtcDWZQKjt5wgTE1tCDDSSgxIIMM0R2540nCUIxrOoC3rhm
         f23zxf67FRzbbdfPyiemTvXrNLfXp5JTkQaCT4oIBvBYzMKeoJBzSx5bPpDTqZffnoqs
         NFCw==
X-Forwarded-Encrypted: i=1; AJvYcCXUbrx0b36TJ1RiBszsqZILxKlk4sOHkVPzg8AhUPK+3Q/q+cubicYA9zO/yPU9iTx/0RPJ/0r30TEw@vger.kernel.org
X-Gm-Message-State: AOJu0YyUFMYtpBcLuhfVVHYkutKG2sgfeJAqNZHjihOKXHFqtauSuDXB
	9E6Nkh0upbIva2u60V9qyBALg4eY0NLGPe6SOcP7apQ+r2h0qPLwCbRKsfJjkAsOYYs=
X-Gm-Gg: ASbGncv0CjXbs5CQdmPvjaG1Y9X/QNWx+SkyEjCsHOgd2dK1joysPBl12rjhy7EF4yl
	tm1Ab7lBSQAQvQOToMc8TWNfNqACwFST4ZjZS5CFouFNUlj5wPlCqYWAHiUUg8dhtHwKoTu0Xk+
	xOSmRTxnhvOYePo+5uxW0Oxes/sgPHfuyGhFwLNe+j8o5Omt9DLhdFqqK4dRaZs43BfZvUSXOHq
	vcx6TXe2rTN3rUXkmLq8Ny2b9vG+qFVFLsj4fp7cPO3sS+aE2TExibyD1FRQ90bE8a9+Eb4iIIG
	HSBlQC4dh9yztB92ZQOG6/Ds+I3cX+K/ZnSCU7x1NU0Q9K4wR2kEa5s+B5GQmEp8M4QAcm49mwd
	evqV4UNqTBuaM1ohY5Na4fvzpdbznS2FPb0SO95qKnAtPq62vtzVzZ/8XXCRXAw+iP89GQS/47A
	8mBS+DFAzUPuL8L5PLt5U=
X-Google-Smtp-Source: AGHT+IGnRLIab0NUOFUDavvOiLBBWE+nlfc8LKHZvJFNPJHySFzr4PFRjXHBJqq65SUqVwQ5sSesJA==
X-Received: by 2002:a05:6000:228a:b0:42b:3ed2:c086 with SMTP id ffacd0b85a97d-42cb21daf0emr2431577f8f.4.1763555831526;
        Wed, 19 Nov 2025 04:37:11 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42c97745f79sm23703122f8f.23.2025.11.19.04.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 04:37:11 -0800 (PST)
Message-ID: <9e459cff-7e6c-409e-ac34-9978fb501e51@tuxon.dev>
Date: Wed, 19 Nov 2025 14:37:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [External] : [PATCH v7 2/6] PCI: rzg3s-host: Add Renesas RZ/G3S
 SoC host driver
To: ALOK TIWARI <alok.a.tiwari@oracle.com>, bhelgaas@google.com,
 lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, p.zabel@pengutronix.de
Cc: linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20251117090859.3840888-1-claudiu.beznea.uj@bp.renesas.com>
 <20251117090859.3840888-3-claudiu.beznea.uj@bp.renesas.com>
 <32bec7e0-6631-4850-835b-c0c377722dca@oracle.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <32bec7e0-6631-4850-835b-c0c377722dca@oracle.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Alok,

On 11/17/25 16:04, ALOK TIWARI wrote:
>> +
>> +/* Serialization is provided by 'pci_lock' in drivers/pci/access.c */
>> +static int rzg3s_pcie_root_write(struct pci_bus *bus, unsigned int devfn,
>> +                 int where, int size, u32 val)
>> +{
>> +    struct rzg3s_pcie_host *host = bus->sysdata;
>> +
>> +    /* Enable access control to the CFGU */
>> +    writel_relaxed(RZG3S_PCI_PERM_CFG_HWINIT_EN,
>> +               host->axi + RZG3S_PCI_PERM);
>> +
>> +    pci_generic_config_write(bus, devfn, where, size, val);
> 
> why ignore pci_generic_config_write ret ?

Missed it.

> 
>> +
>> +    /* Disable access control to the CFGU */
>> +    writel_relaxed(0, host->axi + RZG3S_PCI_PERM);
>> +
>> +    return PCIBIOS_SUCCESSFUL;
>> +}

[...]

>> +static int rzg3s_pcie_init_msi(struct rzg3s_pcie_host *host)
>> +{
>> +    struct platform_device *pdev = to_platform_device(host->dev);
>> +    struct rzg3s_pcie_msi *msi = &host->msi;
>> +    struct device *dev = host->dev;
>> +    const char *devname;
>> +    int irq, ret;
>> +
>> +    ret = devm_mutex_init(dev, &msi->map_lock);
>> +    if (ret)
>> +        return ret;
>> +
>> +    msi->irq = platform_get_irq_byname(pdev, "msi");
>> +    if (msi->irq < 0)
>> +        return dev_err_probe(dev, irq ? irq : -EINVAL,
>> +                     "Failed to get MSI IRQ!\n");
> 
> irq is uninitialized. do you mean msi->irq?

Good catch, I'll update it.

> 
>> +
>> +    devname = devm_kasprintf(dev, GFP_KERNEL, "%s-msi", dev_name(dev));
>> +    if (!devname)
>> +        return -ENOMEM;
>> +
>> +    ret = rzg3s_pcie_msi_allocate_domains(msi);
>> +    if (ret)
>> +        return ret;
>> +
>> +    /*
>> +     * Don't use devm_request_irq() as the driver uses non-devm helpers
>> +     * to control clocks. Mixing them may lead to subtle bugs.
>> +     */
>> +    ret = request_irq(msi->irq, rzg3s_pcie_msi_irq, 0, devname, host);
>> +    if (ret) {
>> +        dev_err_probe(dev, ret, "Failed to request IRQ: %d\n", ret);
>> +        goto free_domains;
>> +    }
>> +
>> +    ret = rzg3s_pcie_msi_setup(host);
>> +    if (ret) {
>> +        dev_err_probe(dev, ret, "Failed to setup MSI!\n");
>> +        goto free_irq;
>> +    }
>> +
>> +    return 0;
>> +
>> +free_irq:
>> +    free_irq(msi->irq, host);
>> +free_domains:
>> +    irq_domain_remove(msi->domain);
>> +    return ret;
>> +}
>> +
>> +static void rzg3s_pcie_intx_irq_ack(struct irq_data *d)
>> +{
>> +    struct rzg3s_pcie_host *host = irq_data_get_irq_chip_data(d);
>> +
>> +    guard(raw_spinlock_irqsave)(&host->hw_lock);
>> +
>> +    rzg3s_pcie_update_bits(host->axi, RZG3S_PCI_PINTRCVIS,
>> +                   RZG3S_PCI_PINTRCVIS_INTX(d->hwirq),
>> +                   RZG3S_PCI_PINTRCVIS_INTX(d->hwirq));
>> +}
>> +
>> +static int
>> +rzg3s_pcie_host_setup(struct rzg3s_pcie_host *host,
>> +              int (*init_irqdomain)(struct rzg3s_pcie_host *host),
>> +              void (*teardown_irqdomain)(struct rzg3s_pcie_host *host))
>> +{
>> +    struct device *dev = host->dev;
>> +    int ret;
>> +
>> +    /* Set inbound windows */
>> +    ret = rzg3s_pcie_parse_map_dma_ranges(host);
>> +    if (ret)
>> +        return dev_err_probe(dev, ret,
>> +                     "Failed to set inbound windows!\n");
>> +
>> +    /* Set outbound windows */
>> +    ret = rzg3s_pcie_parse_map_ranges(host);
>> +    if (ret)
>> +        return dev_err_probe(dev, ret,
>> +                     "Failed to set outbound windows!\n");
>> +
>> +    ret = init_irqdomain(host);
>> +    if (ret)
>> +        return dev_err_probe(dev, ret, "Failed to init IRQ doamin\n");
> 
> typo doamin -> domain

Same here.

Thank you for your review,
Claudiu

