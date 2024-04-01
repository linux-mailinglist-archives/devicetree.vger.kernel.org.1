Return-Path: <devicetree+bounces-55094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCF1893C5A
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 16:52:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11B91281BA1
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 14:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2DA84436C;
	Mon,  1 Apr 2024 14:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="5LTPRuyT"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094D91E524;
	Mon,  1 Apr 2024 14:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711983144; cv=none; b=gFuvmeYUCYjtm4PVbHc/7esrUZi4XPRlXg5leh7xJNHOwCRTbbAm2DtJ/TcN3FN/L01b0Uqo0F/GpFl5PLxPD4K2C2SqyzcxR9qX7zp/oX2rRXZy4lRcDL2H7+bfHaZTlddKhZwQugITtvrCGZfNv2yoRv5WPsdNswjdxrr+Zsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711983144; c=relaxed/simple;
	bh=438B1qFDGK4E7qNtrBv71zUhFqP1FhEaXtT+LCkE+Vc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ECryV8DyHWMNuQbXxpLQaH8/IYyOCdH/Md548CHzKVbtYeiVGakPQxzvwK275HxV9g+jhHBa7qWH2JEeXo3/oymjO2dQOLsELr9CahFzSYn0aRkRP/U7QXE0SPJ+5XrdrD4+2YEtNnh2TpQVfH76eHcQZTNh2SZM08X9RCFZLbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=5LTPRuyT; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=l6cdcCffiyqQ85g8QytdmumKmJEO9REkErCkGkgH4E0=; b=5LTPRuyT/MJo0B1JMM38g43kiu
	NunZagr+vK3P6DgBDgh2h7nY30UhosMnGBPIl73npzg5kTlqWGmkIQBFkaDofyfh1ze8IzlUWyiLf
	HkKJeWyPlyd9JsqkTME4IytK10uLimA4LMoAwbl4SbNHg1J9aXCPvaVbhedR5g+0hvWg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rrJ1D-00Bray-BT; Mon, 01 Apr 2024 16:52:15 +0200
Date: Mon, 1 Apr 2024 16:52:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/6] arm64: dts: marvell: cn9130-db: drop wrong
 unit-addresses
Message-ID: <c3f15b59-7cc6-4721-a428-e032c2bba5c5@lunn.ch>
References: <20240401141051.98233-1-krzk@kernel.org>
 <20240401141051.98233-4-krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240401141051.98233-4-krzk@kernel.org>

On Mon, Apr 01, 2024 at 04:10:49PM +0200, Krzysztof Kozlowski wrote:
> Top-level nodes, not being on MMIO bus, do not have "reg" properties and
> should not have unit addresses.  Correct their name as well to match
> "Generic node names" recommendation from Devicetree specification.
> This also fixes dtc W=1 warnings:
> 
>   cn9130-db.dtsi:28.11-31.4: Warning (unique_unit_address_if_enabled): /memory@0: duplicate unit-address (also used in node /ap0_sd_vccq@0)
>   cn9130-db.dtsi:28.11-31.4: Warning (unique_unit_address_if_enabled): /memory@0: duplicate unit-address (also used in node /cp0_usb3_vbus@0)
>   cn9130-db.dtsi:33.33-40.4: Warning (unique_unit_address_if_enabled): /ap0_sd_vccq@0: duplicate unit-address (also used in node /cp0_usb3_vbus@0)
>   cn9130-db.dtsi:28.11-31.4: Warning (unique_unit_address_if_enabled): /memory@0: duplicate unit-address (also used in node /cp0_usb3_phy@0)
>   cn9130-db.dtsi:33.33-40.4: Warning (unit_address_vs_reg): /ap0_sd_vccq@0: node has a unit name, but no reg or ranges property
>   cn9130-db.dtsi:42.38-49.4: Warning (unit_address_vs_reg): /cp0_usb3_vbus@0: node has a unit name, but no reg or ranges property
>   cn9130-db.dtsi:51.34-54.4: Warning (unit_address_vs_reg): /cp0_usb3_phy@0: node has a unit name, but no reg or ranges property
>   cn9130-db.dtsi:56.38-63.4: Warning (unit_address_vs_reg): /cp0_usb3_vbus@1: node has a unit name, but no reg or ranges property
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

