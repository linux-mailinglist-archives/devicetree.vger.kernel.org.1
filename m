Return-Path: <devicetree+bounces-238814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 130E8C5E43E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7DDA54E58B9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2225F32D7FC;
	Fri, 14 Nov 2025 16:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="oVgbwioB";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="BtP+hfQ7"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D1C032D7D7;
	Fri, 14 Nov 2025 16:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763136682; cv=none; b=INM8HypJ8rywWTciPBRxAVqIO5XKYXBKw8P7vh36+WELwk/vT7rTVYkP6dpwfwJrnNz0RcjsJ0grnF9wmu2vGQBmaudJ9BszcINdCopxqjY/JBMr6C2/9cHXuGjcxGN4GrWc58PyRtP+Bde6qWWlkomGKWU+/Cznol5wsPiVFEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763136682; c=relaxed/simple;
	bh=cwBi9YY74QA8MO6zpFCxovU9lumqdx4z5QlatayZXl0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=el7kBH4oYwhTESKBkp/8OsX+1UxmTjc1g5W3ALkUu+sWQ8UJc2ozbybovFvkJ4/tgGeWSGq4Ul0v+VXiwXHDS3Gg0+UHGLdZfhy6z2MwXYPcHTXz+fwxe0OGqN1Mv72xpnxwARQNlvwaf2mRUIlQ7ymmr32ukDkSwmedKhW/OVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=oVgbwioB; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=BtP+hfQ7; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1763136678;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8spWPzzW+RpkKEZEymL4RDCa/iyttnxIy8IqNQCgQ7A=;
	b=oVgbwioBD/6TNTKY8meNQAeUQVUHEPhW52odZ12L7J43od1/WiyI3F5/WEWKrbcTp4vrly
	o1KCg/dBAs88qjZvaBNJpTcl6UYV7dZGzAiAsMg7ZnybYwYfqHgBIrQV+xenXFL1NY/RCj
	Cb3fvucG1RFLRt/cwaMc3yIZcyOVdYg5zSgdeVKiFju2+xYy4qLAtS+z0HqNpHVOO66mjw
	cX6cQzJs8aJ9undnJKUmey+phf8ejGdDDogdWF/PFSDZv6bjs69F8if5nna1oMwIfyg8wF
	RUHtJoQXitzaZ+xUZ2M2ZvJlUnQ0RtNdP09zwDKaXD27Jbk2g3ssQDpWGjLO9Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1763136678;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8spWPzzW+RpkKEZEymL4RDCa/iyttnxIy8IqNQCgQ7A=;
	b=BtP+hfQ7bH5zpsE6Ty5ce+Wlrw5LK+C1+844V/ZHYhQge3fb/2SzGwHOwp6Bbijhk7VKKr
	k3V0HP+8QXpQRKDA==
To: "Rob Herring (Arm)" <robh@kernel.org>, Xianwei Zhao
 <xianwei.zhao@amlogic.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 linux-kernel@vger.kernel.org, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, linux-amlogic@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Kevin Hilman
 <khilman@baylibre.com>, devicetree@vger.kernel.org, Heiner Kallweit
 <hkallweit1@gmail.com>, linux-arm-kernel@lists.infradead.org, Jerome
 Brunet <jbrunet@baylibre.com>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 5/5] arm64: dts: Add gpio_intc node for Amlogic S7D SoCs
In-Reply-To: <176313578804.3261993.9727195642647352249.robh@kernel.org>
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
 <20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com>
 <176313578804.3261993.9727195642647352249.robh@kernel.org>
Date: Fri, 14 Nov 2025 17:11:17 +0100
Message-ID: <87qzu0bnmi.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri, Nov 14 2025 at 09:58, Rob Herring wrote:
> On Wed, 05 Nov 2025 17:45:36 +0800, Xianwei Zhao wrote:

> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/amlogic/' for 20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com:
>
> arch/arm64/boot/dts/amlogic/amlogic-s7d-s905x5m-bm202.dtb: interrupt-controller@4080 (amlogic,s7d-gpio-intc): compatible: 'oneOf' conditional failed, one must be fixed:
> 	['amlogic,s7d-gpio-intc', 'amlogic,meson-gpio-intc'] is too long
> 	'amlogic,meson-gpio-intc' was expected
> 	'amlogic,s7d-gpio-intc' is not one of ['amlogic,meson8-gpio-intc', 'amlogic,meson8b-gpio-intc', 'amlogic,meson-gxbb-gpio-intc', 'amlogic,meson-gxl-gpio-intc', 'amlogic,meson-axg-gpio-intc', 'amlogic,meson-g12a-gpio-intc', 'amlogic,meson-sm1-gpio-intc', 'amlogic,meson-a1-gpio-intc', 'amlogic,meson-s4-gpio-intc', 'amlogic,a4-gpio-intc', 'amlogic,a4-gpio-ao-intc', 'amlogic,a5-gpio-intc', 'amlogic,c3-gpio-intc', 'amlogic,t7-gpio-intc']
> 	from schema $id: http://devicetree.org/schemas/interrupt-controller/amlogic,meson-gpio-intc.yaml
> arch/arm64/boot/dts/amlogic/amlogic-s7d-s905x5m-bm202.dtb: /soc/bus@fe000000/interrupt-controller@4080: failed to match any schema with compatible: ['amlogic,s7d-gpio-intc', 'amlogic,meson-gpio-intc']

The first patch in this series clearly adds the "missing"
bindings.

Confused....

