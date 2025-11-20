Return-Path: <devicetree+bounces-240853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A12F4C7679E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:23:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 37C1530A84
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B6E362135;
	Thu, 20 Nov 2025 22:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="czdiC1AK"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA56A35C1B4;
	Thu, 20 Nov 2025 22:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763677403; cv=none; b=pTjmZLzL7+ZsiDMoJcypPNfM7IshaUwQlQlRw3V2rd1BZvzO2w3kYCfhO2Pki1ATThnKbE6dRArXE2r5uQGydv4dTcz245UXIt/QmrchTwgI87c/QzsAhHG3yJSyWwZp1ip/bPii8NLg1suHcS4/Za1ai3SxKbRj4mtZlWN82fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763677403; c=relaxed/simple;
	bh=j31qdwK0WpiarXNIM3NSLrdqm8Xz/NBoLaHkWqQhE6E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VU8KRXL/b+sug0kMvZRa9yNoF6+XV8tT2R4AbplZGdFLABotl4e77TpvUeB371NbKIZyE0NTR06oRgVaNZA4I5XlC1VSsawnx8521PRBM3gmbTnP8bu8min0qsHbyAh5UYOGjtcXlw+ch+PbSkpsTZ3IoU//NsLfgdWOU+kHPfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=czdiC1AK; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=DYW7+E3+ZRYpb0k1MxjDaTsNzXpLgps73MqJR9tSzS8=; b=czdiC1AKwdqmGufkwNpW4A0Sfu
	BNNNTAeV9zqozraTg/kbe/5RfJaR13BJVm+mB8qU0Au9LnDbHIkrVrk0geh2mFdP8Kry1+MgcSZvl
	dgjT/B/d+zwKTCwjGBV2WjiVaoFZ5ZWcIkHT5LJYUVMUgC2g1Oi5t4G1AkmIDlpH9m4toT+Z26cXi
	OQnklGIBVzIaRudPTYTXHxJMcJ/0e16Axs5YktuBT/eXRl2PXlOGrr0PNR4x98NTl9/SKMLfXrg0j
	e+dJwDXc1/U4qtCw9mu/E+t99Ii6IiiFlHlF7MPwA0aVcuyp9E9CUveruex2LyqXNwgQY10w1mRe+
	Z2SFLWIA==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3Z-0007Je-5r; Thu, 20 Nov 2025 23:23:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: add Tinker Board 3 and 3S device tree
Date: Thu, 20 Nov 2025 23:23:03 +0100
Message-ID: <176367711163.9778.16671960189532919719.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 18 Nov 2025 15:56:41 +0000, Michael Opdenacker wrote:
> Add initial device tree support for Asus Tinker Board 3 [1] and 3S [2],
> which are SBCs based on the Rockchip 3566 SoC.
> 
> The "3S" version ("S" for "storage") is just a regular Tinker Board 3
> fitted with a 16 GB eMMC and a "mask ROM" DIP switch
> (to mask the eMMC and enter "Mask ROM" mode for recovery).
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board 3/3S
      commit: f4e81d0b95f3257a2fcfdbfaa2d8ed41015c621b
[2/2] arm64: dts: rockchip: Add Asus Tinker Board 3 and 3S device tree
      commit: 9f80b3952318d7ef18573a5010f06118602f992e

Changed the property sorting of the RTC and also migrated all the
pinctrl names to match the schematics.

When creating pinctrl entries, please always _try_ to use the names
found in the device schematics. This makes it way easier in the future
to find one from the other :-)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

