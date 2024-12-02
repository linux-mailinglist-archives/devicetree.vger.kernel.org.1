Return-Path: <devicetree+bounces-126306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 276429E0F52
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 00:29:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E65C9282911
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 23:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8209B1DFE34;
	Mon,  2 Dec 2024 23:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="XkormIfK"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D0E1DFE2A
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 23:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733182184; cv=none; b=VwvmwF6HhcBqWdYnww3oWHlc6bIGXG3n2c13pmyq5Z5VwnJuHa1e/MV31MyrfItYm6FAn1/VjAudpUVIjxVwRmoQDYlhIxsCM01GdNAhYwS+LfVwOEFo1agcCCznORBCfonp3lbyGmSXcYB/U8980f6E6427cTYpl2ZdAnPf1Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733182184; c=relaxed/simple;
	bh=Kbb+ZpAkWtDhPIIEmlWdl5PSOqDB55lz6StWm0cOpA8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VzALk9iPcR/Fxgw/HRIt6FYmq97h6FhrDAqDOx7r4BlzLlg+7NA/n37Mxe0I4B69mffyLBwBtGyz3NMoh+Mgoz2dpvHRAfgHq+81QQtahaz4dIE49mz64dsrnB45ByvufiJdgVQnwIYURMSq01b++exJGHiUYTGIhUk6P3cjvec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=XkormIfK; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LXjlLr10nL652nOirJQGwQvnZ/wVzDxyYQeBTmt9Ex8=; b=XkormIfKy0bQwW9lEejYRetW0r
	R233wHdQwvqZ2nfj73Wkt7VeS27IAGG6VHETUq3MpLKyiJWSO0OA/fijtKCvne/OyoY5OLKgn3JCL
	ayZvnqF4Zed1JhvLfxN6QHKusFjilhGXldsorlCQUMi1a9uWQEOs2XgoNJkyprLI6CM4ZI8J2cyEF
	/JEW7r5Rm/3xIKufsDB6VtNTLgJ0/e5zwsFt9EfusZ+uAOSRHJKBWFxgwRAckmX/7fY9BiLcci9o4
	S+MIMdue6RewhnfXgt1OsbG9CC/OBsiayJ7y0cyTd6zSfl3zlpvZqnNqOo880VGe+CZrUMr3id4wm
	ENE79gGg==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIFr6-0000OB-IN; Tue, 03 Dec 2024 00:29:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Tue,  3 Dec 2024 00:29:14 +0100
Message-ID: <173318214612.1403925.12222889205247999008.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241122073006.99309-1-amadeus@jmu.edu.cn>
References: <20241122073006.99309-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 22 Nov 2024 15:30:05 +0800, Chukun Pan wrote:
> The reset-names of combphy are missing, add it.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
      commit: 8b9c12757f919157752646faf3821abf2b7d2a64

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

