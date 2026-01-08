Return-Path: <devicetree+bounces-252555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFEBD00FDF
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 05:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E1EC3013EA3
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 04:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D1E299927;
	Thu,  8 Jan 2026 04:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="TyIxG2bg"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D708F5B;
	Thu,  8 Jan 2026 04:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767847585; cv=none; b=KZ/sBTEYh0K1MXxxcp/DufJs9cnaL2dbTPO8SEDdH/MlDn/FGQxmf1aqiW1pFI8YYh3zJviQgwUvPRjMLQWjScPCI0z9kHFENlxZ7f0Bfc0t9Jhc9ega0bnLIRloExPUjIKtB89x7vowjpqShJOiwZVfyHhei0djXTiBx6Ausf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767847585; c=relaxed/simple;
	bh=mza9GtPsCZLKy+XJqnLyYl8qsw+mGBG9tczLaxgUCDc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BRyAXvnqh2QmGozoAVOzJwB3KU32d6iqGqLAaVZB8YzThFirP09ZmPSG4peNrVVb3FlW37JVQ0Vtl85ZcCvFj/31z6wALmWfb1Zo+aKZs033P8PlBNI6OW1WVW406J+bb3ZzaCv1vbr3TSfq8fKXBG0DnYwkeoejyShI1L9D+JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=TyIxG2bg; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767847581;
	bh=mza9GtPsCZLKy+XJqnLyYl8qsw+mGBG9tczLaxgUCDc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=TyIxG2bgkBhsdIYW38rKXW++/Ld6xXFCIe4TS/ssxX4Z6i6DG6yxFkEWV/4xZa6Bk
	 mwWrp9aTaGvSzNWsNFyBjrWTCPLjaVLOLuZI4VlauW1WmCDhu2f7KRA/LhY2CpS7/J
	 Ugx2ztmNRyhg00QcRAYpfMOKhkDoHo5I3YFs9J6zxQRV3QBJcIynPzTFk8cSmrnNSw
	 Q7cPtiCGy9sDjTsJlGOTG2CZlZkJ0Wo4om8iFHcPQjwE9vKwYQpL/p0FK7v27V9S/r
	 BiQOfFgZ7IMc/7g6DO4VSokhSlvn+e4luIkP2M9CtsXrjAo+m1YakSCZ/Fo/uBXEzL
	 RjZIhUEG8+QiA==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 8DDF879F8C;
	Thu,  8 Jan 2026 12:46:20 +0800 (AWST)
Message-ID: <a0d802a1e450860a9859ce3d456fcce81dde8ba3.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: yosemite5: add x4 E1.S expansion
 board I2C mux
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, Jackson
 Liu	 <Jackson.Liu@quantatw.com>
Date: Thu, 08 Jan 2026 15:16:19 +1030
In-Reply-To: <20251222-yv5_add_dvt_e1s_ioexp-v1-1-25ad202d2681@gmail.com>
References: <20251222-yv5_add_dvt_e1s_ioexp-v1-1-25ad202d2681@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-12-22 at 19:25 +0800, Kevin Tung wrote:
> The new hardware design adds two additional E1.S devices behind an
> I2C mux at address 0x73 on bus 10. Add support for this mux in the
> DTS device tree.

Out of curiosity, you're monitoring them with the NVMe-MI basic
management command and not NVMe-MI over MCTP, or is there something
else going on which motivates describing empty mux legs?

Andrew

