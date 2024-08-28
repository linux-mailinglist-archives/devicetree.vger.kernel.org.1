Return-Path: <devicetree+bounces-97594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F7E962BD3
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 17:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69E0F1C234B8
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 15:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A82681A7059;
	Wed, 28 Aug 2024 15:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="xaxhRQih"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5201A7052
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 15:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724858062; cv=none; b=ikJJS+VIBsfER7POTgzWpN+KMlHd5Yf2zO6BJ31X2Ocs58dXscNG+Sbk6LBOhw62rh4E7/h/KIwS8yyGt4ppNqP11TIB+18kOgkcsLAa00qtPvgfKKkS9D6eX1zNwUtjAlJYUZeaILfK55KCnvkLUfGq6E3TfLx+FIkHanVyCMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724858062; c=relaxed/simple;
	bh=OEKUB1PdLXi8mz/xlbGhwYsW8H49JRMemiGWSsSYAQs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=S3hYNdNz5mfTHCkBHMbMwfWYTc5MHdNz4qoj5g8+nTLrk1VRV2QiezlPFWb9e254mEU3u2Yu88wJdSagO0YEtuWKuiSsJEfOV3crMQInnAnjMnwyH1+ceFCcAWbXhAXOSunKuSbIwfLP6t/8eE6Nvt8K/rXSIPpZL8Syhc0oE2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=xaxhRQih; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Q6MDe5ik/q62fr2nqCRdkQ9EMnGU7nKBsp+fj8YUl0c=; b=xaxhRQihsPhY2sdb0DKbD5ZB3R
	vWJ/QVqb7040AEXp19LqQZAUOzbFvhYw9NJuaRbuUaBXExWFmuT38HdvbjNA1tncl2UzHmDb41u8k
	c2Z/AOCJGckBIokFMrPJT2lIC37bKY8nkrk6ct3dwuBeTuFJk5LFl14hKz/NU4U+1HMv0MVQZwNyy
	pNf+DjdiraBkV27qh00PjUAqJgRWly1dpbBLArbdup7VITfj/rOpKSLjIrBNVPHTAN9vwX4ZS1RAW
	cjL3Ri5zeEJsu+1sG3Gzlb2lDFQYbmxpCRuwvB5MSIGVFR7yBNBTXY+Lf41py/9RxtkEiOvGkt3Ma
	60hiYatA==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjKNH-00065f-8j; Wed, 28 Aug 2024 17:14:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable PCIe on M.2 E key for Radxa ROCK 5A
Date: Wed, 28 Aug 2024 17:14:13 +0200
Message-ID: <172485421377.1511809.17622417470399861504.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826080456.525-1-naoki@radxa.com>
References: <20240826080456.525-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 26 Aug 2024 17:04:56 +0900, FUKAUMI Naoki wrote:
> Enable pcie2x1l2 and related combphy/regulator routed to M.2 E key
> connector on Radxa ROCK 5A.
> 
> Tested with Radxa Wireless Module A8:
> 
> $ lspci
> 0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
> 0004:41:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8852BE PCIe 802.11ax Wireless Network Controller
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: enable PCIe on M.2 E key for Radxa ROCK 5A
      commit: b728d4c51f0ce9207daf502f3a85073785c46319

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

