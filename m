Return-Path: <devicetree+bounces-175225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE0EAB02C1
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 20:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BCC5502B94
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1DE27A441;
	Thu,  8 May 2025 18:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="kAv8EzUu"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C72D8C1E
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 18:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746729063; cv=none; b=UQ64G7fZYP4oszlJAQ/+cwqlBTnmcXYEKp4FbXEmIDe1d8PclxrQSmoZJOVb7KsmSFSZzOlLIqfDxC/Yacja1dARqq+2zwu11C/7cpw7VZDkiLX2TjbVN5poYoCox7vF24hWkODIA0HckYOUzcf/Y/L0yBV+FUYh4gx9VkGNpW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746729063; c=relaxed/simple;
	bh=50mozhMuDRCBrXw6JvRg0VTPvJiC0DEY82WdfChi4Pw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sTCVlYD8YYme/O31ZSWme68rX0PKntsjd1WAyp3LjHhHj2WNCuc4fzhSTl1FOQGURoDX1mlS+rZs9UUkYChAw2C+LRmWnvijO94Z21KzFMZ2ygAC8QWNpsMBMkqkLcwaSRkUmltXxFX2Mq2QOti2YijKKJ/sGnUftzniBSJQKEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=kAv8EzUu; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=u475e6wk3oinD7Hx34bMlNEsryoVRoZB/USEIm+YT04=; b=kAv8EzUuouyROeSR7oSMpiHnrL
	zGUml4n/ONRxzhQQWIAYIIFRndZICsnVzI/G0pq/JekWOKMbJMHUH/9ucpoNJUqKYgOPYEPlqtGeI
	u2P2LUZCwhNAwTUkzGEb764DN+zOpeP1GjUNf8p+VTlRo9ORHQZUkixtZE79rMnEgO8rzCcbvyl6f
	KGHOYoAMg/CI/ToSeDN/Q515JqAztCnXyFEATSale840sI4vNhwgWiLeHF01YqrwMYqbaMwqpimdo
	F18c15+e6ck2zvsQwPtLER+DoUm+KYsd3Oq6Z3ZVdaYYL/cCvpkCCBdZ8MwvfCHBpzTUYZsiXuW1g
	Y2HjiK4g==;
Received: from [61.8.144.177] (helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uD61L-0000vi-6F; Thu, 08 May 2025 20:30:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Update eMMC for NanoPi R5 series
Date: Thu,  8 May 2025 20:30:46 +0200
Message-ID: <174672902818.1927548.18144300752160466937.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250506222531.625157-1-pbrobinson@gmail.com>
References: <20250506222531.625157-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 May 2025 23:25:28 +0100, Peter Robinson wrote:
> Add the 3.3v and 1.8v regulators that are connected to
> the eMMC on the R5 series devices, as well as adding the
> eMMC data strobe, and enable eMMC HS200 mode as the
> Foresee FEMDNN0xxG-A3A55 modules support it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Update eMMC for NanoPi R5 series
      commit: 8eca9e979a1efbcc3d090f6eb3f4da621e7c87e0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

