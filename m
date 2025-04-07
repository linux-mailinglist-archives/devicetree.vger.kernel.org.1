Return-Path: <devicetree+bounces-163576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AB2A7D581
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF973176282
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 07:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D230422C325;
	Mon,  7 Apr 2025 07:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="hvmV7kbE"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F07522A4E9
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 07:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744010284; cv=none; b=tba8IL3hMs91ONsAim9WRTMNY2t/zyh4LfViLOLpr3GYPzsZusKQN+pTpayYWoge8b26m5c1Eh8s/IECv1FI52GP1Yydafgp5iePSCpSNx/PUvbC0GPZ40NfXYBubUvDRWxiG1PEeRXqEU3mB+hEBzrEkle/OMs2dGll27aonEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744010284; c=relaxed/simple;
	bh=R6sajFDXhVlIrEU2asGhg332aoBw2DOyOIlCaOs7Uz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QLOj6VEEJzlNfhnIDQxeKYdv1mQt/BNCJoHBvOEGNm4q4ZtJTR4wXiQWfDUxoATJWKLGnnXpfnuaNfrGh3tmjT+8XE7zVp4/uA6Zb0zRIJGI/aJLqSWrGTrSkBnTMv9LiUWr92tqIAjhsy3UvF4BN/3WlvzaOdcKzm2vuWas40I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=hvmV7kbE; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Z35n/I5ZQnUdwdTSCOwVuX+sPzMGiNSaTdRQEUGKfpI=; b=hvmV7kbE3LWi26OEOqi6sohWRp
	wqBbKble0X4bqSf+W5prcG+tOoIe8pXOYPeeCwCOYoZvTX5tbFGVTNHxHyDwVB+HjVclPBmhhz7n1
	dOlKyScPYnXcfGMs8KniXHbq9NbxkrDgEkYKFtyrf2ia4ZmY2Iwk9sE+TPJb3oePDTfSLb14OPIUn
	2yci4Jf7fk/1tHnerKCkQnBOZZOUiT023NvGy/wXIOAlY/bbzGzfPnpLSCHe2onXE6gNGazJO29Ii
	pDmSMH7wPyVag+TVECufHaEBzfUbD87ZfyQfxeSf/Y4xIN+zbWeyjEUvcil4OzB3ZV2BGCUXw5LnV
	l1FguUGA==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1gjy-0000tP-9S; Mon, 07 Apr 2025 09:17:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Improve gmac phy setup for QNAP-TS433
Date: Mon,  7 Apr 2025 09:17:46 +0200
Message-ID: <174401024397.372530.4895011120714473164.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1742331667.git.ukleinek@kernel.org>
References: <cover.1742331667.git.ukleinek@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 18 Mar 2025 22:08:44 +0100, Uwe Kleine-König wrote:
> as suggested by Heiko I split the patch to improve the phy setup of the
> gmac ethernet into two patches. The initial patch can be found at
> https://lore.kernel.org/linux-arm-kernel/20250318184550.47642-2-uwe@kleine-koenig.org/ .
> 
> Heiko also suggested to add Fixes tags. I'm unsure these are justified
> because while these patches are an improvement the old devicetree is
> working fine. I suggest Heiko to add the tags if he feels strongly
> enough about these.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Correct gmac phy address
      commit: 831263a4164e189c47e3a9ea189cb4b5bc078b1e
[2/2] arm64: dts: rockchip: Add gmac phy reset GPIO
      commit: d01e09a9f7cd4fb5a947e3dc718242b51b581615

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

