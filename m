Return-Path: <devicetree+bounces-91122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C421A947F45
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 18:24:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DEF2281D75
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 16:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0FC115CD60;
	Mon,  5 Aug 2024 16:23:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4488C15F3F2
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722875035; cv=none; b=UxkNsmR4opMH8BOXs0FPgoNDGHBAv9fmAEM37CzVeOzZP14iosWhrKY/pmBTS4oxgVy+7QGOVp/E6YI1J2ugyNK+uFAWWUZv5YzJMXoy5eJz2AelS3Mwl0yiMLptGBiLUXznIIMnWb9DdTR3nKcDhTt2ApTuKay5ucviIqkqRNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722875035; c=relaxed/simple;
	bh=MpZ54PT2wK7R/QXLpJFcz5gp3tB8M/o0sPat1kSK5nI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R8tP9R9imHqoirhwSL2DKfxBhfa+xDWUfXRp4ddFJMSPoPWNFSlxWSOGIZADzv9NKOCIto5+rPOkhyCgH+VyGgOEFSLmCNL49jpzqHulvybo9doVbs6yQLgxE0yLqDbLXXbd3mcXKBgIp6rnhVUWlQDIlsxpO70uFhfW+tz6hP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sb0Un-0003eC-14; Mon, 05 Aug 2024 18:23:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon,  5 Aug 2024 18:23:37 +0200
Message-Id: <172287498972.3346132.12448980671248585098.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304084612.711678-2-ukleinek@debian.org>
References: <20240304084612.711678-2-ukleinek@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 4 Mar 2024 09:46:11 +0100, Uwe Kleine-König wrote:
> While it requires to have the right phy driver loaded (i.e. motorcomm)
> to make the phy asserting the right delays, this is generally the
> preferred way to define the MAC <-> PHY connection.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
      commit: e8d45544f806f3b55c30345de84262cbb9504902

Works nicely on my TS433 :-)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

