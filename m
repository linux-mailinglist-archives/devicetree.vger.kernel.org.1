Return-Path: <devicetree+bounces-240628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63954C738E3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 18C272B14D
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B2A2FDC4C;
	Thu, 20 Nov 2025 10:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="HfoVFISp";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Kqap7Fwc"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2DA277CA4;
	Thu, 20 Nov 2025 10:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763635824; cv=none; b=T00/fJOTw52ltU0nbh1B+Mn1H2sPB0UFDC0ppmEm0BbrKLh9sc36P0Y9FSHUnZ+4n7yKDJexehjV6AGHZSZUokV1WKRY64WChr1HvXJnC6p7W99LgAp9oWlzv+TCf5vP4QoyG8vYu42dtaPYfc6HYJP/Ia0P8YZQ03Fyxa5we8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763635824; c=relaxed/simple;
	bh=0XRPtBHzAUEJTh8X+AzdprZbbl7EFSBX1gIM90EjxKY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=UkDFJ/IM6FFOnKonIdt9oT7ilDIdMGFsG3nUlHdcphsYhckpqrZs3KkdU7su07ijOorP2CFCW4vPdBBp/u9j+eGPA3kAb4lR74t7P0lpcAmbS3gYcBlB/0vpcbIQ18UVChGSx5FCHa1Vkc8mt2+P1+0Wvs0KA62n79AmrMFblZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=HfoVFISp; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=Kqap7Fwc; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1763635821;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DW9Tu141hYAgi7uXkPAdOBwpEa0ZYRizhqLUUtu9aUU=;
	b=HfoVFISpAFsVjd2CCyf/9VJzquqA/McJr2754cxjvaViQDQPZ4uWw67F10UXY7wePE1lmm
	kMHJHTvefzIPAZLE95maISfE0wnVcPYp9fnWHkyD7x7iX60taqIVQA2JZSiDCkGo8z9YWD
	SfO2X4K3muadBUUL4mubNu+isOZNvVugOzoSlsQGV/TPh5CEVFpgDoipypitq+JUTCV757
	uns9El+hygAD6b0SdK9M0ByLcrNwG9+38kGKyF4wu1otKZnbjcUCcRRKBlGJEjRimRFOoV
	H5xSezRvsDKDo43nCJm8QRtlLkSJ5BY7eAVB72GC6pJJINgJDG4hoi0u+3ozJg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1763635821;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DW9Tu141hYAgi7uXkPAdOBwpEa0ZYRizhqLUUtu9aUU=;
	b=Kqap7FwcH4qCtJ5Ocmu+ArgFF0diHbiF4lrIGO3Z/hgFZpoIqeDqJctcrjJxD93OOaB0Uk
	33ZqcJoHDjzleXDA==
To: Neil Armstrong <neil.armstrong@linaro.org>, xianwei.zhao@amlogic.com,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Heiner Kallweit
 <hkallweit1@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 0/5] Add GPIO interrupt support for Amlogic S6 S7 and S7D
In-Reply-To: <d2b2807a-285a-40bb-8aa8-eacba97b1f14@linaro.org>
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
 <d2b2807a-285a-40bb-8aa8-eacba97b1f14@linaro.org>
Date: Thu, 20 Nov 2025 11:50:20 +0100
Message-ID: <877bvlkmfn.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Thu, Nov 20 2025 at 08:54, Neil Armstrong wrote:

> Hi Thomas,
>
> On 11/5/25 10:45, Xianwei Zhao via B4 Relay wrote:
>> This patch adds GPIO interrupt support for Amlogic S6 S7 and S7D SoCs.
>> 
>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>> ---
>> Xianwei Zhao (5):
>>        dt-bindings: interrupt-controller: Add support for Amlogic S6 S7 and S7D SoCs
>>        irqchip: Add support for Amlogic S6 S7 and S7D SoCs
>>        arm64: dts: Add gpio_intc node for Amlogic S6 SoCs
>>        arm64: dts: Add gpio_intc node for Amlogic S7 SoCs
>>        arm64: dts: Add gpio_intc node for Amlogic S7D SoCs
>
> Coud you drop the DT changes from the tip irq/drivers tree ?

Done.

