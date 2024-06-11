Return-Path: <devicetree+bounces-74607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BC9903C7B
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 14:54:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5F7C1C2254F
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 12:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE2E17C7B8;
	Tue, 11 Jun 2024 12:54:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A0017C216
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 12:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718110461; cv=none; b=YIo8kklVPaeR9QDn5ejoMZVMjkNBl2cS30V+7Ba1au5toQ2pwldjhfBQJUUSWCIVF/0626LTWqNwhw0s5qA1lEUU/J/QFSN/l2+SeZKrWxg7IoryGDZ2OxPz01mEP/i8uqp9jc13xp6Un5NGPVX+kfV0o/E8f14nQajH4XwScZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718110461; c=relaxed/simple;
	bh=avlxvlw2pNpeefqzMQnPH+rLabI7g/khnc3XYNrtc4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DCkIrVEC2Wc1/Jr/sXJJ6qng90ww9PvCilqzFXbSy5mXlhPovg4+c0MJO9nFYiXDugBZTMxd2Z2qLa5WLg+vtGNrzvb07IJOgJgFGHWCofrurwB6++LisgrP9DCjGBdCRSj+TxX8Ok/ycNajAFJqPamc+9k/E+3vFQGcbMkOcvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875be5.versanet.de ([83.135.91.229] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sH10g-00071m-Sm; Tue, 11 Jun 2024 14:53:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 kever.yang@rock-chips.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH] Revert "arm64: dts: rockchip: remove redundant cd-gpios from
 rk3588 sdmmc nodes"
Date: Tue, 11 Jun 2024 14:53:57 +0200
Message-ID: <2131536.VsPgYW4pTa@diego>
In-Reply-To: <20240611120645.457-1-naoki@radxa.com>
References: <20240611120645.457-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Dienstag, 11. Juni 2024, 14:06:44 CEST schrieb FUKAUMI Naoki:
> This reverts commit d859ad305ed19d9a77d8c8ecd22459b73da36ba6.
> 
> inserting and removing microSD card is not detected since this commit.
> tested on rock-5a and rock-5b.
> 
> Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes")
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

This is probably the same thing as 5 years ago on rk3399
https://lore.kernel.org/all/0608599d485117a9d99f5fb274fbb1b55f6ba9f7.1547466003.git.robin.murphy@arm.com/

So we'll go back to cd-gpios for now.



