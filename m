Return-Path: <devicetree+bounces-109857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEE29983E5
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 12:37:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE7071F269EE
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD931BE85C;
	Thu, 10 Oct 2024 10:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dRp6KLrY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DA712D21F
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 10:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728556623; cv=none; b=QFDZ4Gb9jsXjlbgXKW4/TaVz85fcMlSj+2GyH+1VWlC8Fj/P4yTSWoBdL81q5PE3SL7kJslcSX+CZHyEt4O6zRoWG6DB+E0Mekxx5Tr5U/KTP1L55P5+Kif5m7FvAg77clwPAr9v/Btpicypxmtr/Y5Rm1hZx8rbiuCEPzK8uqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728556623; c=relaxed/simple;
	bh=xrcCvr6cYjS1RxxuNWmLWKg9qlwjebDzFF2vbBSibn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aV0hexrs6ao22B7vr5hm7mcZkf6C2VwfMSKhrc1Gm9UHdK4PLDZrMaq2a0R9A8qq88aPpMUvWPWZKf3T3wf+yINmsKCyGglURWGFcjkRCLOl52taPAypE47T8oHwNGrtwzBwOjdnF9XU/DkjXqP8po4E5d8iFvMyF3SKQkpm0ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dRp6KLrY; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20b7eb9e81eso7593355ad.2
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 03:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728556621; x=1729161421; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qCYAf6ESDJaF8h/E6C6LcLUhPQEg3bLqnr89jUbXqs4=;
        b=dRp6KLrYxbQkjm0EVlAHewrWm8jIpespDQvNOHdj39RbD4g284tzjr0Pc5jhUzQt1I
         ZoXihGEDk7gMASvTKGk14NSW3S/1ddbe4KDRMbW0PWgySDNnMYgAXuatL6mASNjJd9fv
         1nEr5D6WbuHTFGo8NX/HaPkFk23yQoyQaPSZ+D/Kohc5p3NQCVkiwBPwdSpwCHTcgEAU
         hyOkIlKlB5LzmuxmFhiIqbLPtJRzqZcKsajk/ghkQN6BSDSB1Ad5wiZwbpzOPkrLs5C+
         aRCOxBdJlLo9rNwm5GDlOJha8WZnvrYEwuJy+dPh2nzx8JvtA0yNsOHM9/t1sJ4Fq/k7
         l8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728556621; x=1729161421;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qCYAf6ESDJaF8h/E6C6LcLUhPQEg3bLqnr89jUbXqs4=;
        b=RpiBCL271ISTes07tDrm/Ly3e8ucaQDdS93xn4UDNx8GS49/yQZTJ9C13mjbU9Jzni
         Qb67dgFYVQRrQ0ukx6C2mzbctMVDcI5gkkvClXEl5szseKJsNYOsSa2bT7+52eEXnS5P
         ZMuhRIUjOlhl8LHfOZgBaBP4Br417Oebtc/0NKhXahZhLfGWQLwhdIzVaNPM7jhHnPRs
         9nXwWkfSuq+72lL3SXMl9GXCZMVkdVYRcgwNHr4436iARNWyFJKaRejvwFYD4X03vcq2
         w/2R8SkLUYCnIA8PTt1vAQJpk5IYKujm2iJJYKLhwRl6XL5IGkqbYxAp2WngshwGZW9o
         9JOw==
X-Forwarded-Encrypted: i=1; AJvYcCVXuYmmWYbYK8Slo/I8sWo+MmUcEkLlzB80DJ842S1KCrI/hpzFLVX3l0zpRRwxVmI5Hv46Vf1NTU8m@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ7Rhd/vravfQVQ9ajx+y2xuGAOJjLDDxk+yuIZWSmT7YSsoc5
	MquBVJEH/5k5KErYAI0B7co67ukeYwfmyiqBBnVM9Yz3z2Kq1oj+jS9COf+tqQ==
X-Google-Smtp-Source: AGHT+IEwmkW/UOhppKl/eNVEZv+OwfFQ3W7u6qUF28b6WfCwiMcxAelS1R2T42W7e+n6yhRW56O8LA==
X-Received: by 2002:a17:902:d2d1:b0:20c:5698:75bc with SMTP id d9443c01a7336-20c637992bdmr64864145ad.60.1728556621085;
        Thu, 10 Oct 2024 03:37:01 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc1c39fsm7234845ad.92.2024.10.10.03.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 03:37:00 -0700 (PDT)
Date: Thu, 10 Oct 2024 16:06:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 01/12] PCI: rockchip-ep: Fix address translation unit
 programming
Message-ID: <20241010103654.3qmsdtymto55nfl4@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-2-dlemoal@kernel.org>
 <20241010070242.3i2f53kpdpr4fgl6@thinkpad>
 <016bb5a6-5f05-404c-acaf-e0a3ed6fcede@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <016bb5a6-5f05-404c-acaf-e0a3ed6fcede@kernel.org>

On Thu, Oct 10, 2024 at 05:41:56PM +0900, Damien Le Moal wrote:
> On 2024/10/10 16:02, Manivannan Sadhasivam wrote:
> > On Mon, Oct 07, 2024 at 01:12:07PM +0900, Damien Le Moal wrote:
> >> The rockchip PCIe endpoint controller handles PCIe transfers addresses
> >> by masking the lower bits of the programmed PCI address and using the
> >> same number of lower bits masked from the CPU address space used for the
> >> mapping. For a PCI mapping of <size> bytes starting from <pci_addr>,
> >> the number of bits masked is the number of address bits changing in the
> >> address range [pci_addr..pci_addr + size - 1].
> >>
> >> However, rockchip_pcie_prog_ep_ob_atu() calculates num_pass_bits only
> >> using the size of the mapping, resulting in an incorrect number of mask
> >> bits depending on the value of the PCI address to map.
> >>
> >> Fix this by introducing the helper function
> >> rockchip_pcie_ep_ob_atu_num_bits() to correctly calculate the number of
> >> mask bits to use to program the address translation unit. The number of
> >> mask bits iscalculated depending on both the PCI address and size of the
> >> mapping, and clamped between 8 and 20 using the macros
> >> ROCKCHIP_PCIE_AT_MIN_NUM_BITS and ROCKCHIP_PCIE_AT_MAX_NUM_BITS.
> >>
> > 
> > How did you end up with these clamping values? Are the values (at least MAX
> > applicable to all SoCs)?
> > 
> > Btw, it would be helpful if you referenced the TRM and the section that
> > describes the outbound mapping. I'm able to find the reference:
> > 
> > Rockchip RK3399 TRM V1.3 Part2, Section 17.5.5.1.1
> 
> OK. Will add that.
> 
> I really appreciate very much all the reviews you are sending, but given that
> this patch series depends on the series "[PATCH v4 0/7] Improve PCI memory
> mapping API", could we start with that one and get it queued ASAP ?
> 

Sure. Sorry for being late btw. Personal errands are eating up the review time.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

