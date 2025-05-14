Return-Path: <devicetree+bounces-177160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21082AB68C8
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 12:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC1CC1B41BE3
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7EC222F16E;
	Wed, 14 May 2025 10:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NjgICSIA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A255D25E461
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 10:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747218563; cv=none; b=upUgVC6VhcbQtHF5zYqyeoAHEO1o3VLecvxdKXkhejHAtjgiDnl1T+iesT3zug7He09eJeyCTsiLPYsz+MZvDrNtg2DFNsoTypiQidAJ3rhf5Frw0vghV2llih9MfuPSHyhBbOS3pj11paHOmldG39GNkfmO6erPr/l51v+48xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747218563; c=relaxed/simple;
	bh=xV5TGWtAjUBbAlGh1TG217UQBJWDrrfWO3odDFRTQMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C13nBvsJ5jCBFxgr4MIGUrPq07vd4hVMrMOFdMEO/OMNhLwVY9Lcpo9/oPUeHjFypOQdZldQRoGVouY719dqrZmO4q5ehOVqLtoqq3R0YCtAG+wOoFw/qOTn1vF4WqxEMzYqjzUxkDsPVcpTvDKIbuhLmPsHpdlTM9BZPEOaZR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NjgICSIA; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a0b646eff7so5724645f8f.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 03:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747218560; x=1747823360; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fU4PVewcc9MxNH8+f8DwyzdamtEdKDmr83HGRbxUgQA=;
        b=NjgICSIAzJ3DZL16X7USYlyLMHxqOLroHevQkmeuCpl+Ri0TdDcsqqISaAdt1riMMI
         tXYarZgGlKGQ/gRyh4tz4pJAuqe4SCnkPY4sYgu3hqGpqC97V2FQiAJh2thHjp81rcuu
         YXVPNL/XSLemYI7XE51XVwIZawukvPw8kYKQBliwoKSTeMO5io2tTNC3NEMqIsQgg01U
         u2rHNkOKmBkY5fvyr8QOkLja9EXaMzxr3GPGGL527BI2IT2lP34CR6gGCcfhlS6M8AUF
         em3ObpaBU79igYBcesgDsbpXp3YSkOyyLoJRJVXK1a5WIw7f0LttpNoYxuEyodAM7nLZ
         SicQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747218560; x=1747823360;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fU4PVewcc9MxNH8+f8DwyzdamtEdKDmr83HGRbxUgQA=;
        b=BiPutm8UD6+oMbrA2ywYnIPkRy/dNi8o19TCImNZMzQa6lZT6ShfhBxKYu2BB2i1/F
         76gJ56R2QoJOzULGdSWNXLFB72bg9npZ5Urn2QXGK+32dor2nhbMRoQ1Kx2CPVjvcME6
         HA7wty7dNPCFA4h8LEFOe33/DRUv3pxWdBHwo71nJi3Vy5ylamprweFNNX/kJJSHMTta
         MZxDg79PJVjkrQhF936Jm2Q3zG9ry0JSD6z+a0YppH8oVNtReTNyOUJgEMgFehAVpcVJ
         yvTAI6k4EaueBsmUiIsdlDA0tjGnoZxtwvkcRmwedICBLyH53ikJfwRQNj3SF6ys9XVv
         NHdA==
X-Forwarded-Encrypted: i=1; AJvYcCU9nrRO0AW4Ll4BJWEOqskQy0V6Mto/XhrBaO86MUhPltq2dII+cHbK4IuQ41nQVWbQ6b0OME4m1Dz6@vger.kernel.org
X-Gm-Message-State: AOJu0YwKFAGAoDEjw9+VCW57dMYn++cu8R//VFTnzjgZWkepDfA5JGA7
	yeuNDpTV/MY96XSy9zaQiUkxKeMMGlxM2UHDt3HaxzLinJ6LBXPkvajqVNObx4o=
X-Gm-Gg: ASbGncsai0+wAR8/X+aAI81ZR39YSp2UCvbfRkWeQ/6kKIbQyNAlv/oNTyuskl0Fy2r
	EMwP0isJ7vfGwvONHCoHYAYh/sbIiANaNGymFOaCkbfFrNZS3hpSdiqItlhUb1KVzowWxgEOeeT
	AVtUB6+GA14n4SSBi0BLdRgDq5yt3hZafQpDmTx6PbQrZBAZTjV5yN5xr4kQ3uqX0vS5lAq3p3f
	3zzYPKelUw9LBOpXWWi5Bj/SWJ5OsJGY4Ygt0BWvAkyvzGthL7ZcLJschnvHTnGwRe7njLre7tx
	1B4ty5UzQRexYMxPc44MBjr1Yh21r4jwZrfScGSWrMkGssrur+1shkKk2Mk=
X-Google-Smtp-Source: AGHT+IGyw3NxozgVzbMrkAVh72sdE2V/yiO6fwgF41eG84LxNtgGijn9Y7vFEYBwAZhyZjVRwxqXEQ==
X-Received: by 2002:a05:6000:400c:b0:3a0:aeba:23b1 with SMTP id ffacd0b85a97d-3a349946a98mr1835187f8f.49.1747218559944;
        Wed, 14 May 2025 03:29:19 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a22ea7a53asm7334492f8f.23.2025.05.14.03.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 03:29:19 -0700 (PDT)
Message-ID: <e470715b-6f76-4b65-b1af-7a24e0432a30@tuxon.dev>
Date: Wed, 14 May 2025 13:29:17 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] PCI: rzg3s-host: Add Initial PCIe Host Driver for
 Renesas RZ/G3S SoC
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, saravanak@google.com,
 p.zabel@pengutronix.de, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250512203851.GA1127434@bhelgaas>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250512203851.GA1127434@bhelgaas>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Bjorn,

On 12.05.2025 23:38, Bjorn Helgaas wrote:
> On Fri, May 09, 2025 at 01:29:40PM +0300, Claudiu Beznea wrote:
>> On 05.05.2025 14:26, Claudiu Beznea wrote:
>>> On 01.05.2025 23:12, Bjorn Helgaas wrote:
>>>> On Wed, Apr 30, 2025 at 01:32:33PM +0300, Claudiu wrote:
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
>>>>> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
>>>>> only as a root complex, with a single-lane (x1) configuration. The
>>>>> controller includes Type 1 configuration registers, as well as IP
>>>>> specific registers (called AXI registers) required for various adjustments.
>>>>>
>>>>> Other Renesas RZ SoCs (e.g., RZ/G3E, RZ/V2H) share the same AXI registers
>>>>> but have both Root Complex and Endpoint capabilities. As a result, the PCIe
>>>>> host driver can be reused for these variants with minimal adjustments.
>> ...
> 
>>>>> +static void rzg3s_pcie_update_bits(void __iomem *base, u32 offset, u32 mask, u32 val)
>>>>> +{
>>>>> +	u32 tmp;
>>>>> +
>>>>> +	tmp = readl(base + offset);
>>>>> +	tmp &= ~mask;
>>>>> +	tmp |= val & mask;
>>>>> +	writel(tmp, base + offset);
>>>>> +}
>>>>
>>>> Nothing rzg3s-specific here.
>>>>
>>>> I think u32p_replace_bits() (include/linux/bitfield.h) is basically this.
>>>
>>> I wasn't aware of it. I'll use it in the next version. Thank for pointing it.
>>
>> I look into changing to u32p_replace_bits() but this one needs a mask that
>> can be verified at build time. It cannot be used directly in this function.
>> Would you prefer me to replace all the calls to rzg3s_pcie_update_bits() with:
>>
>> tmp = readl();
>> u32p_replace_bits(&tmp, ...)
>> writel(tmp);
> 
> It seems like this is the prevailing way it's used.
> 
> You have ~20 calls, so it seems like it might be excessive to replace
> each with readl/u32p_replace_bits/writel.
> 
> But maybe you could use u32p_replace_bits() inside
> rzg3s_pcie_update_bits().

I tried it like:

#define rzg3s_pcie_update_bits(base, offset, mask, val)	\
	do {						\
		u32 tmp = readl((base) + (offset));	\
		u32p_replace_bits(&tmp, (val), (mask));	\
		writel(tmp, (base) + (offset));		\
	} while (0)

But the mask may still depend on runtime variable. E.g. there is this call
in the driver (and other similar):

static void rzg3s_pcie_msi_irq_mask(struct irq_data *d)
{
        struct rzg3s_pcie_msi *msi = irq_data_get_irq_chip_data(d);
        struct rzg3s_pcie_host *host = rzg3s_msi_to_host(msi);
        u8 reg_bit = d->hwirq % RZG3S_PCI_MSI_INT_PER_REG;
        u8 reg_id = d->hwirq / RZG3S_PCI_MSI_INT_PER_REG;

        guard(raw_spinlock_irqsave)(&host->hw_lock);

        rzg3s_pcie_update_bits(host->axi, RZG3S_PCI_MSIRM(reg_id),
                               BIT(reg_bit), BIT(reg_bit));

}

reg_id is a runtime variable and cannot be checked at compile time thus the
compilation of u32p_replace_bits() fails with:

../include/linux/bitfield.h:166:3: error: call to ‘__bad_mask’ declared
with attribute error: bad bitfield mask
  166 |   __bad_mask();
      |   ^~~~~~~~~~~~

Please let me know if you have other suggestions.

Thank you,
Claudiu

