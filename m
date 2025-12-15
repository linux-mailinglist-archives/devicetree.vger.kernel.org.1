Return-Path: <devicetree+bounces-246613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D07CBE249
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48A813014ACD
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F8C29D27A;
	Mon, 15 Dec 2025 13:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="QME2266O"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7C62BD58C;
	Mon, 15 Dec 2025 13:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765806675; cv=none; b=Z+jtZe+zCdToQYvnsmPIMohckpFVg39X8cK2kgeUzJVsxdmah94kE1CNW55cdP9lQ6wgNTSLsSVJlKCbm2kErZlURsrYTxfYCs4cjp5WhY5fy61JBsldFWVDAV63TOmxYVbl3Mp9HPYI+Fyw7pis8kGJcvbo48bb6FR2HJtGsWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765806675; c=relaxed/simple;
	bh=0OVcmAPFkt9F3WFPqEQXtuTFB1yaBQoz1EPcNPzJslw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IZo2eNDO3EcDmtOHH1ZcLTAJ/omU90JZUihVB/g8psr2nlFvywV+PKTQXizjITA6t6nlUJGXZvOIChiawILLUeozXkUAUuf3hS9Bpwm+2bQeJaHpUlcIL3Jr95tYexJgCbxkEccHHCUvHz1Tdu/oRfYLPmXvnyzBvZ1Xs1ZHzpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=QME2266O; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=7XorD3nH/q0HpxkWe78PdYMmjm7wEoACkmCPuGt4gac=; b=QME2266OSmEsEGF//oyeFLpVIf
	fO2WXs1H2GaSFIyygPuXbzwleO8Z+VthmWfmeqTd7hqZFz2l2mlQU/s7qbPSMCTGYSer7YsLtgKXS
	923jMrmEg4P8WGjyt2e0V6X9xh4u+FN9cngL4kSul96Il97tg9adG1CuPGrguLW/KwFxcmf6Wi4e+
	l1IhdvdLKzPNl46nB6rOPE+X16XI1S37cDC8tMkg6iQlEqyibmaLLDtH42mapyQiR5sRqqP8uDoZk
	trbOiQbdugbdFt3XsT1DrezFtKhDKUHYwUmNqM9NlM96AKAbqfisEoRZzB3GXniJcPXDEmbiGdkDr
	vUnMnLLg==;
Received: from [192.76.154.229] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV8yf-0001VT-3m; Mon, 15 Dec 2025 14:51:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Martin=20Holovsk=C3=BD=20=28Probably=20Nothing=20s=2Er=2Eo=2E=20=29?= <mh@probably.group>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
Date: Mon, 15 Dec 2025 14:51:03 +0100
Message-ID: <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 12 Dec 2025 17:23:35 +0100, "Martin Holovský (Probably Nothing s.r.o. )" wrote:
> The Radxa Rock 5T board features two RTL8125B 2.5GbE Ethernet controllers
> connected via PCIe lanes pcie2x1l0 (fe170000) and pcie2x1l2 (fe190000).
> Currently only one interface is functional because the PCIe controller
> nodes lack the necessary reset GPIO configuration.
> 
> Without the reset-gpios property, the RTL8125B PHYs remain in reset state
> and are not enumerated by the PCIe bus. This results in only one Ethernet
> interface being detected, or none at all depending on U-Boot initialization.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
      commit: 96029ffeccf677b1e4baa98f30909a83a485b6d7

I've resorted both the pcie phandles as well as the pinctrl entries
pcie2-0 comes before pcie2-1 etc :-) .

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

