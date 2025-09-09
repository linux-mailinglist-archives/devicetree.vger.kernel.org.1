Return-Path: <devicetree+bounces-214939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF36CB4FBA8
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B05414E7B26
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D900433CEB2;
	Tue,  9 Sep 2025 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NokdZ6BY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6A233CEA4
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757422096; cv=none; b=iYw8Bqn1nulJMma5Xv0K1YIStmjfKxK+B/Y70sSPv1kmSYUgDYtoKBYO6f0ZANu5GomtG3m1TAxWmrRCORwVvWsUoAR9yhhN95rlO7CfQGbkX9S5iuzphUGJ4GY+ba5/pJwgHGrWliu5fag/BdZj7bzU/dGKOhvvGVBudXdIoO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757422096; c=relaxed/simple;
	bh=VftbE1hsLmXFChLA3aJJHbvI9G8AlMyg5ojBtwjpRKo=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=mTxm3mU7EPCDjUzeT23PAjvL2FUsZ7DwxbR/N1rvhrq+0OjMbhkJGtK2rrki+lIQtpa5+h40Fhc6A6+kd3BMZMoiMvnFEKvtgBNC3yow/+AFRGNh/II9jFl4MUBgwHeO4sENILcnqt/iBulMUB5fAdQHY9w6zCz3l9C7Sxy0XrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NokdZ6BY; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45dde353b47so14267145e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757422093; x=1758026893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/9O8tHwn09nsjeClSuqgfyQVy6t2GJ6AHHgo9UAkBbk=;
        b=NokdZ6BYazX/JhBEcEC2OTZ6eRkjs7y0uEp0LXUYy9BiyZSIZk7sPHMmq+JbNkzcoA
         t3ztbk9gkrCMzrWLyzDIgYyjE4Q1NXlPvGum3GwfsZQkUZNO1fEnqUF5cJctheqUQL96
         3l+LGCsbEMHvPg2j6Nqxms3PEgpv1CUUc1xqfEYA8hBeZOcVsMhoDaKEVDlz3+b46KTp
         SVoPwYvczWzPsuhBRBdKzM5jctbjYhCFdQ0M+khI9b+JlU1oq/Ic/dtE/NeoQJVc/7tU
         waIefJtJ3EQgRmKhMyHIn9gBpGYVqJNJ7v/heJnpaOyZvSGGJLX1CyimDGzaB2NxHncR
         yRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757422093; x=1758026893;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/9O8tHwn09nsjeClSuqgfyQVy6t2GJ6AHHgo9UAkBbk=;
        b=EbBUjvC62tEQNuqNSEfsKmq3RqXogOdgfdVVBNuIoBJUqZk72W/j/w+U3B2n29XrKc
         6ZX/tgU9R6q9WS6DAqsom27Bg7FqJv2GfNsRqJJVojHkj0oSrbukeRxZxbKSTSbeABpN
         XJjfNWcz+zYkbCwyKCQ+yPp1D+ljWsoHbOiy5B1hsUnx2X1Gc2blj8zut7vKeG3TvR4o
         pZ80yIFViJvE218MLjr8/r0M76gnSOe8msjE6CEgmtaaZL/SaPzjRZBd6lF0F0XQ8R+n
         kp4bgL1b5CA2KFV1Co82i7aP2DJIweYVaku5kctiq4REmuCF5GPoB6UGIgxN7SkjQxXm
         cYWg==
X-Forwarded-Encrypted: i=1; AJvYcCW+4N7aBuQSJk+GRb4bzOVoS6O9KHXFzsN9PhvXpM166S+pTSmXy/TPmdqYjBjdzU5G3rBL8mwm+krG@vger.kernel.org
X-Gm-Message-State: AOJu0YzcPIY3OMjcPhHOBaRoy6DCzEYsC5fOIMiNmch0O/6k1vpEv/9m
	o8vnc6t2L4aAQefXHdMbCr+srVu2/eY8Nvlt+Xjm74xPaSCPijWVVfF7/ih0mRLLgtM=
X-Gm-Gg: ASbGncsP9i9a4TTE9tka4SAc0Z8lz8o32FJuE/GXPdesLk+RBlVTcjiOL02xrJ9XtnH
	rzJcjCA2q8DQ3//rPvJom2tM9FmpeqprHLeJ4WDpH9t3dPLzYGYNJS9auEvCD62f4eKslfRkQyH
	ZKxmbNnIF9Rt5ecePNb4PLGAfDgFS8QWG/IafmTHxSyGxUTwq5N+8BtChBjzStlHvJWAnWYWNyh
	A6uIwJ58rK504hupMA0R9lY5fvYaOaf5j9aD+3dbdjv5TfTmi7TN8gYAj7vZwEK3FW5pZDoJNJy
	J4JKeAKrnkSaBUaEMoHgd3Tp2PYUANgmZsagtZros7N3U4H6nsjbqfwB3jAIjKCjkvUTIdoNWao
	CPdVxzT9dVW1Z6Oiykr4ttSNlbYSBpo1kVA0aiBYo+A==
X-Google-Smtp-Source: AGHT+IGNhrTxIPsosCdGJWZIZAbT0RGPUxRM8nlUnIFpaFAXk/yICLpZY71X3iYYFxkLTIc/wDUO1A==
X-Received: by 2002:a05:600c:46d0:b0:45d:d96e:6176 with SMTP id 5b1f17b1804b1-45ddded62d8mr99306545e9.25.1757422092531;
        Tue, 09 Sep 2025 05:48:12 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2503507f8f.60.2025.09.09.05.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 05:48:12 -0700 (PDT)
Message-ID: <ba50f82f-3344-42dd-b58d-0a1d7438e1ac@tuxon.dev>
Date: Tue, 9 Sep 2025 15:48:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/9] PCI: rzg3s-host: Add Initial PCIe Host Driver for
 Renesas RZ/G3S SoC
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, lizhi.hou@amd.com, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea
 <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
 <20250704161410.3931884-6-claudiu.beznea.uj@bp.renesas.com>
 <ddxayjj5wcuuish4kvyluzrujkes5seo7zlusmomyjfjcgzcyj@xe3zzzmy2zaj>
 <8ef466aa-b470-4dcb-9024-0a9c36eb9a6a@tuxon.dev>
Content-Language: en-US
In-Reply-To: <8ef466aa-b470-4dcb-9024-0a9c36eb9a6a@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Manivannan,

On 8/30/25 14:22, Claudiu Beznea wrote:
> 
> On 30.08.2025 09:59, Manivannan Sadhasivam wrote:
>> On Fri, Jul 04, 2025 at 07:14:05PM GMT, Claudiu wrote:
>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
>>> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
>>> only as a root complex, with a single-lane (x1) configuration. The
>>> controller includes Type 1 configuration registers, as well as IP
>>> specific registers (called AXI registers) required for various adjustments.
>>>
>>> Hardware manual can be downloaded from the address in the "Link" section.
>>> The following steps should be followed to access the manual:
>>> 1/ Click the "User Manual" button
>>> 2/ Click "Confirm"; this will start downloading an archive
>>> 3/ Open the downloaded archive
>>> 4/ Navigate to r01uh1014ej*-rzg3s-users-manual-hardware -> Deliverables
>>> 5/ Open the file r01uh1014ej*-rzg3s.pdf
>>>
>>> Link: https://www.renesas.com/en/products/rz-g3s?
>>> queryID=695cc067c2d89e3f271d43656ede4d12
>>> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>> ---
>>>
>> [...]
>>
>>> +static bool rzg3s_pcie_child_issue_request(struct rzg3s_pcie_host *host)
>>> +{
>>> +	u32 val;
>>> +	int ret;
>>> +
>>> +	rzg3s_pcie_update_bits(host->axi, RZG3S_PCI_REQISS,
>>> +			       RZG3S_PCI_REQISS_REQ_ISSUE,
>>> +			       RZG3S_PCI_REQISS_REQ_ISSUE);
>>> +	ret = readl_poll_timeout_atomic(host->axi + RZG3S_PCI_REQISS, val,
>>> +					!(val & RZG3S_PCI_REQISS_REQ_ISSUE),
>>> +					5, RZG3S_REQ_ISSUE_TIMEOUT_US);
>>> +
>>> +	return !!ret || (val & RZG3S_PCI_REQISS_MOR_STATUS);
>> You don't need to do !!ret as the C11 standard guarantees that any scalar type
>> stored as bool will have the value of 0 or 1.
> OK, will drop it anyway as suggested in another thread.
> 
>>> +}
>>> +
>> [...]
>>
>>> +static void __iomem *rzg3s_pcie_root_map_bus(struct pci_bus *bus,
>>> +					     unsigned int devfn,
>>> +					     int where)
>>> +{
>>> +	struct rzg3s_pcie_host *host = bus->sysdata;
>>> +
>>> +	if (devfn)
>>> +		return NULL;
>> Is it really possible to have devfn as non-zero for a root bus?
> I will drop it.

Actually, when calling:

pci_host_probe() ->
  pci_scan_root_bus_bridge() ->
    pci_scan_child_bus() ->
      pci_scan_child_bus_extend() ->
        // ...
        for (devnr = 0; devnr < PCI_MAX_NR_DEVS; devnr++)
            pci_scan_slot(bus, PCI_DEVFN(devnr, 0));

The pci_scan_slot() calls only_one_child() at the beginning but that don't
return 1 on the root bus as it is called just after pci_host_probe() and
the bus->self is not set (as of my investigation it is set later in
pci_scan_child_bus_extend()) leading to rzg3s_pcie_root_map_bus() being
called with devfn != 0.

Similar drivers having ops and child_ops assigned use the same approach.
E.g. dw_pcie_own_conf_map_bus():

void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus, unsigned int
devfn, int where)
{
	struct dw_pcie_rp *pp = bus->sysdata;
	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);

	if (PCI_SLOT(devfn) > 0)
		return NULL;

	return pci->dbi_base + where;
}

Thank you,
Claudiu

