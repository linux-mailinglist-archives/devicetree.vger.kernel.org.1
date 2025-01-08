Return-Path: <devicetree+bounces-136638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 796F9A05B89
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DC8218838A1
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5B81FBEAF;
	Wed,  8 Jan 2025 12:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="p4/WUyox"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79CF1F9ED1;
	Wed,  8 Jan 2025 12:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736339132; cv=none; b=nIZQAYpfQX6x5Mh6Fe4PQZg9fjBN54mHpAopoB6d7e5UwaarGO5e8fFFOXpCVZvntrBRiWN+QCWewRbdq38MFvcIiFYhE8XWEghrnAVDus8AC7VPVJaNeyvi2WfVUdpVqEf4Ckm+DaJ5WROaywtkLXjVr/BZ0gtsSV9QISWcYig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736339132; c=relaxed/simple;
	bh=3rgBoqQ5G60K6Y/uOOt+t8XJWYlyZ+DmR0NTL1kDhfc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NM5DH0OZClXpWU9fRYpPpiuJccKosLm3OUbFopIdGegs1hU69ROswRkO+fhh7bpMHHnh9nUB5uLDF6M6vFlYR/PLiwR1Lh3Ov9+Zu3omGPmG/KjdlFCQotdl7QsV1Q6otnTx/JVxIjb4754eOxGsjMCMwrtaAcEzUy80W/vcGzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=p4/WUyox; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4/3TQc+wKiZgug/lkUhEpMI/kfdtxils1hrpDtT87kY=; b=p4/WUyoxjvgSKmCxuSXqISiqes
	F267ElDVsro8WL5a73pwD3A6BNosCUPedJmV/lNNrxHzAaGkmTBDJHbM4Q+Kkkm/lMaPzfXIOrO2w
	LsDlWxIy+HOfLdI3JbGbNGcxdF1PiUqcvZajculjaRa+EOHeHRsp7usFi90/HcPb0CEcpqQzr6ik/
	7/FGRBgslIEy7xFf+ld6Kj9ZAkVVc+s0YIfwsxtHE0tUoq6JmwfPHnohDZDDclNx//qRkn8AOMAVm
	hcHR6ScQztAUf5Wrua6Ya/9berBQ51P5V480c1BD0eKm3wNiN5HBh+YG/RyyKpjLWBc9P/JnKfVSo
	VmGfKJOQ==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7n-0005gn-No; Wed, 08 Jan 2025 13:25:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: anton.kirilov@arm.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	nd@arm.com
Subject: Re: [PATCH] arm64: dts: rockchip: Enable the USB 3.0 port on NanoPi R6C/R6S
Date: Wed,  8 Jan 2025 13:25:13 +0100
Message-ID: <173633908212.2779821.7132962301358694819.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219112532.482891-1-anton.kirilov@arm.com>
References: <20241219112532.482891-1-anton.kirilov@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 19 Dec 2024 11:25:32 +0000, anton.kirilov@arm.com wrote:
> Enable the USB 3.0 port on FriendlyElec NanoPi R6C/R6S boards.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable the USB 3.0 port on NanoPi R6C/R6S
      commit: 0cc356ce96d92155d98570f08e1229c509d2263c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

