Return-Path: <devicetree+bounces-92520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2B894D789
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 21:44:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7550CB20E13
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 19:44:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DCF16B3B4;
	Fri,  9 Aug 2024 19:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="s8amMh3+"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BB61684A0
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 19:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723232627; cv=none; b=ThIkcaklt5zQXFtXVPD+oadfJe2Y4Jw5xQlWHtMDUn0VFL6V0kbC/dIOQ9509E4IkjQOOu7zfBJium/wR+WUIOfSuhwjtK4w8nYW0apW0DiVNRrfNDIBeGwHVYRgx3XKgwmd0daHc7LRH4CvGzqLA8bwlR943dU2JO+nWYtv8Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723232627; c=relaxed/simple;
	bh=YWUJ5+KmS7MO2lqoO0ToddxqbdH+/4e9tT8NR14hH9U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ertijm5ZhhBLfCUMTanyKaO7e4i8mnS4vNgxRfw0MG+MDjvV9QHWADUosjf8cm+OGpMqnc0WYLVnpswbTdwm6ZyaqmiWu9HqV7AD8ih3qlmDEtDdeCJvbBf+amYt68VehiWEEklxO25D5heNBdkfvxx9PnmxujyJZfo3cqNBOdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=s8amMh3+; arc=none smtp.client-ip=91.218.175.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <c3025d87-8013-45df-8dc0-3d89340a4948@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1723232623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vIM9UADw0JGrzs/DB5b/93iGbYdt6kXtx9MaQsVGu34=;
	b=s8amMh3+7+42kidgRsX3AMwCetR/qUJgOydaLuUV6soZYh4jhjzM4QjOEAGTxC19RiH1Ic
	t9N+tg9bTV9j0KHkU93q8J/1tK2AWmXL6IzEL2JEg82QAM4CbSgSEs9vQ/F5KVTkyOw0HF
	OQ/WUchWHv7V/Ecc/WSUFRX1gFTg9Ik=
Date: Fri, 9 Aug 2024 15:43:35 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 0/7] PCI: xilinx-nwl: Add phy support
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org
Cc: Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
 linux-arm-kernel@lists.infradead.org,
 Dan Carpenter <dan.carpenter@linaro.org>, linux-kernel@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Michal Simek <michal.simek@amd.com>,
 Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>,
 Bharat Kumar Gogada <bharatku@xilinx.com>, Bjorn Helgaas
 <helgaas@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, devicetree@vger.kernel.org
References: <20240531161337.864994-1-sean.anderson@linux.dev>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <20240531161337.864994-1-sean.anderson@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 5/31/24 12:13, Sean Anderson wrote:
> Add phy subsystem support for the xilinx-nwl PCIe controller. This
> series also includes several small fixes and improvements.
> 
> Changes in v4:
> - Clarify dt-bindings commit subject/message
> - Explain likely effects of the off-by-one error
> - Trim down UBSAN backtrace
> - Move if to after pci_host_probe
> - Remove if in err_phy
> - Fix error path in phy_enable skipping the first phy
> - Disable phys in reverse order
> - Use dev_err instead of WARN for errors
> 
> Changes in v3:
> - Document phys property
> - Expand off-by-one commit message
> 
> Changes in v2:
> - Remove phy-names
> - Add an example
> - Get phys by index and not by name
> 
> Sean Anderson (7):
>   dt-bindings: pci: xilinx-nwl: Add phys property
>   PCI: xilinx-nwl: Fix off-by-one in IRQ handler
>   PCI: xilinx-nwl: Fix register misspelling
>   PCI: xilinx-nwl: Rate-limit misc interrupt messages
>   PCI: xilinx-nwl: Clean up clock on probe failure/removal
>   PCI: xilinx-nwl: Add phy support
>   arm64: zynqmp: Add PCIe phys
> 
>  .../bindings/pci/xlnx,nwl-pcie.yaml           |   7 +
>  .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    |   1 +
>  drivers/pci/controller/pcie-xilinx-nwl.c      | 139 +++++++++++++++---
>  3 files changed, 124 insertions(+), 23 deletions(-)
> 

ping.

--Sean

