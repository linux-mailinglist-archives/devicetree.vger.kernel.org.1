Return-Path: <devicetree+bounces-210757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A58F0B3CAF4
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 14:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DC25582E77
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 12:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DC7A27FB03;
	Sat, 30 Aug 2025 12:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="EZSBwGHB"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96FB627AC2E
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756558698; cv=none; b=QRpWRVoI41SoilnZeY/ZcWcAgyLJ4rRwWffZXYJXiOorKNuwNlE52okcd7QOrF3f3MbIvp/stm1S8rWzeaFZAFEZQMiOvPoOd+UieCCE4wYtdGou4cC4ACin1cqz02atQIVAwniAYHjo+g2BJ22vjDbdDOkpTJf8dM4FWhf/FlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756558698; c=relaxed/simple;
	bh=Gt7UlgmXG3hI8tiUC1gqepGNpcTjQkethNbBcKI09O4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aP3Dg8LXObZ8vfkFaICqg5xCPmSawlNLXfI/CJw5XLNrCsZh8S5ONkanc+sjHLWymr6tKZdvU7sWx9N+q2sRBCg3msoFmzASrIFYxn3vvHlS/JAja/Gtg2WBXb2iJqFhHomyAKWGYEwc/q0tFw01QBRERL84UIlwqlJTY5dDSho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=EZSBwGHB; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wJ4nZJ68M39a8/HhfpBGX4Jpsn4uN3DHxw2dRDUnOYg=; b=EZSBwGHB7Y+kLwJ1iK8fsJ1v+S
	GOItqKfBG2qDD9Dn2POpIn+YGnSOsWCEKl1271GlQwfrHdgOBPr6AqMyRVsavCKbDaxDLAt8JdVDj
	umMghWSaisFF0Zr3hE434JztzeyHfs7dW9qpdatXQk5VjQzg8MkiHMN6PZBjsccRJjftfuL3b/xAT
	9Gh3alAqCcY5mcrNk8vv0mlaG+jVIb6QXN0cgJnAN992JeQoVGJMHsuNnRjqGSP8tdar28yaUcNvR
	HU+e5E0JaDh80y6ZtH/0SolYyr61ibS8XXXFjgEz7mrajFVxxHuJ64PJkbXr7TZDgXp/G5mHuQRQg
	fldsSEKg==;
Received: from [77.241.232.9] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usL9g-0007bC-DD; Sat, 30 Aug 2025 14:58:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>,
	Diederik de Haas <didi.debian@cknow.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro
Date: Sat, 30 Aug 2025 14:57:58 +0200
Message-ID: <175655867257.3578496.10210949893238884482.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250829113826.2029755-1-pbrobinson@gmail.com>
References: <20250829113826.2029755-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 29 Aug 2025 12:38:24 +0100, Peter Robinson wrote:
> Update the wake-up pin and associated interupt details for the
> Pinephone Pro WiFi module. Details obtained from the published
> PinephonePro-Schematic-V1.0-20211127.pdf page 19.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro
      commit: 096bd8c679185f898cae9933c6a68650fa26ea4f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

