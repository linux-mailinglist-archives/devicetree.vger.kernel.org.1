Return-Path: <devicetree+bounces-136827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0549AA067B3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 23:01:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABB581886BEF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 22:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74EEA1A2396;
	Wed,  8 Jan 2025 22:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="M03c8Rdo"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0F119EED0
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 22:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736373665; cv=none; b=VFK/tLKSJvsr43yYQxASuFXujTNWRgNPGH/Jyfl306ACmAoYDMhhenExsb/fycARajD4H/aw0ePI8gr8kkwV2sQZFZe/lmvUnFojnTs+7IQn5DJPvRa9OWfAAbX3/M2xkqMosp7gU8hLeJOu/EKtz8OhR/KHW5OmPAlYJcrFzAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736373665; c=relaxed/simple;
	bh=TlnFWb3RE7FN5EMuPVjtYZjgCl+eCrIIS/gfTuxqPh0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aXRjpn/x0/hFXdI/dV7uRKxDLw4iVOw2MBQs5fTNGYzklLmmN1XSfUknfMPJ97KroiYVkLOOAo8uFB+RF/cPF1tNHwwtEdfs3Za46MdcdUiDPrZLT+EJ0UqE2LckE+DNHP+9Tp91GHbZEpe4zYbdFVOTDbtIRS1iGS7HIQfTzFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=M03c8Rdo; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oyLRZMtr/tn1TO1iJcvNHZxC52/nmyO7VYgGHrOfQoU=; b=M03c8RdoER1QAdssr/pLl+Yiat
	9s64n3CvH5aUO7YK7dBANJwaecT1ngqv+zqDH7cCcmbDieUUYfgdCKyUucwktNo8RsiTKU9A/C+VR
	rQmoP/C1aB/UvG/Oy0iyF32Is6eSuQFbRlOO2XsipzygzgmbxB+eAMA4KzRSYzi7Bk6zeCAkWT+Wb
	/wHr7lqvdBIuYGe8Dnvw7y8h3qKRq1Xhy9VnlNYFQi7vnJFymBE4f74JtVHn1oAG0s9zt+xTl7dxV
	ku+u7HAOOCO/X+Qj+todeshX9m34j0JsIMhpuqGm1GuDpI29DHmBw5lr3pvsbH+X7jfJxOT4yS22K
	ABh2o4YQ==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVe6j-000415-Me; Wed, 08 Jan 2025 23:00:57 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jimmy Hon <honyuenkwun@gmail.com>
Subject:
 Re: [PATCH v7 1/4] arm64: dts: rockchip: refactor common
 rk3588-orangepi-5.dtsi
Date: Wed, 08 Jan 2025 23:00:56 +0100
Message-ID: <2727495.q0ZmV6gNhb@diego>
In-Reply-To: <20250105222614.2359-2-honyuenkwun@gmail.com>
References:
 <20250105222614.2359-1-honyuenkwun@gmail.com>
 <20250105222614.2359-2-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jimmy,

Am Sonntag, 5. Januar 2025, 23:26:10 CET schrieb Jimmy Hon:
> Orange Pi now has multiple SBCs using the RK3588.
> 
> Refactor the common parts of the Orange Pi 5 Plus DTS so it can be
> shared with the 5 Max and the 5 Ultra.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>

I'm sorry for having to ask you that, but I did apply Chen-Yu's
patch enabling usb3 on the orange-pi-5-plus [0] which in turn
causes your series to not apply anymore.

So could you rebase once more?

Thanks a lot
Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v6.14-armsoc/dts64&id=a15d12f36eb78692d5c3ebd8a5db7fddf3ea160c



