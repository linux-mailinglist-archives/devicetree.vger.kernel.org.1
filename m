Return-Path: <devicetree+bounces-210032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F27B39F00
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:32:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B1CC5E46D2
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E61313E04;
	Thu, 28 Aug 2025 13:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="J8LKpzDb"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6473128DC
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756387835; cv=none; b=XOsTTdzfVsGhahubi976Jaw9UwDIw0ycgL4cDLqvFktOo6R2WWqpO3lP1a1VvYY4o5w0jED7dzKTwl4xPQhT4w0WqhAW5JN6J7Pmk6BuJDFPCPBq5bCrw8SCWjRFSZRsF2PqO9q+PsGcEtruTJ8yXeb9xrSp75wHE0eUSt6c6GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756387835; c=relaxed/simple;
	bh=0K1NNPtpVcskt9FacpjgMoVdHW76BpDIRq/6L2ZskJE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aK/ZEyXKdoTKxAldtjX8ZvfPsXEFBG+y6yni96Imu+vNe+sXF/mamQjUWRdlGqlUbA8bpjNLw7qQkfr7O6Df93AshO3/M5Y7bhUugfAU+rraDydV1mfoQHvhp2n6MO3NtVCJJEf1jBkT//L+aX+NxG0eRo0awCYUVzoDiXvN8x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=J8LKpzDb; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MCl/Zqf3cy1GqacBdD6E5ji+678H9QHvDvFzVAbpmkA=; b=J8LKpzDbGrKXGcpmawPb1/KmCv
	8Qt9lx2aETiDd03fvKU09I7gmFhUToP/HvbiPEybXDx79pwaNVNk9nAL6VePDI371vhx0MM5z/gDy
	0AAgBX3a0gTu8bRgRZh2+EqYpkWCuncxZR2N8/Gfcci8WY3qs1qXdosdYIshdKlBwxsaSUNdwX4ok
	wn7lmsp2701YRJ8X+ucKCMYYMt7aBPFFpG14hdRWYEllZvtvhYmxKZqQlqYNsgaOLgEaNLruaa0gY
	LJadONHKm9o9DZHpVvZTDUjmX1j3R90GGDvioXQWKH0oAGKbwuIqMOzdTnVNXv04Ybj7IiBIsftUD
	fY89WXfw==;
Received: from [185.205.242.134] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urchz-0004qj-Ds; Thu, 28 Aug 2025 15:30:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>,
	dsimic@manjaro.org,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Further describe the WiFi for the Pinebook Pro
Date: Thu, 28 Aug 2025 15:30:28 +0200
Message-ID: <175638782390.3533599.13934230022202341141.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250827143040.1644867-1-pbrobinson@gmail.com>
References: <20250827143040.1644867-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 27 Aug 2025 15:30:37 +0100, Peter Robinson wrote:
> Update the wake-up pin and associated interupt details for the
> Pinebook Pro WiFi module.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Further describe the WiFi for the Pinebook Pro
      commit: 6d54d935062e2d4a7d3f779ceb9eeff108d0535d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

