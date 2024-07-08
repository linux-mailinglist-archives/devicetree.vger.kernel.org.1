Return-Path: <devicetree+bounces-83906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDFB92A4A3
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 16:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 817E51C20FCF
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 14:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA34313AA5D;
	Mon,  8 Jul 2024 14:28:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC644C9B;
	Mon,  8 Jul 2024 14:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720448911; cv=none; b=n1xaMi4nP+N9+bzfg9+z6KIRTb9gbpCz1D1ply29fPlyzFuDV1VSQYzmXojH4l3no3W+ALtvAahzptT0rLPkoGT9QH6MnFb+4Lu9ClAMvTG3VdnewFDu4cdagZWCCdY9vnIFHCPLYynryuwjIZOghvhAVMH/CKTjNPLCdCkVP4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720448911; c=relaxed/simple;
	bh=JQ8QvICxfpxcjA7clG8TY8LZKR0J1rQxscMReha0MXs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=esLulmPbgvoC6yY1Be88z2XFJLwQxULEsS2DQdfgc8ftIxloUshhFGj5nRFGEQ8dvq1iAucZJ6iy84qsiZIaDO7NKiEi6TRzAufCIOrJAAXwapREzgtmTMDP0CjExSTHmNKp8yKwckCWfmOCnW4wskR2Eqx74LrXi/dCR+2NYAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sQpLb-0001Jx-6W; Mon, 08 Jul 2024 16:28:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	dsimic@manjaro.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] ROCK 5 ITX devicetree
Date: Mon,  8 Jul 2024 16:28:04 +0200
Message-Id: <172044883547.1350787.1426755647757179113.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240704153815.837392-1-heiko@sntech.de>
References: <20240704153815.837392-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 4 Jul 2024 17:38:13 +0200, Heiko Stuebner wrote:
> Add a basic support for the Rock 5 ITX board.
> 
> After struggling a bit with the pcie3 ports, thankfully they seem to run
> pretty nice now thanks to me finding the property for the shared-rx-clk
> for the pcie3 phy.
> 
> changes in v3:
> - better sorting (Diederik)
> - fix usb supply (vcc5v0_usb is not a supply of the usb3 hub) (Alex)
> - drop type-c sink elements, type-c cannot power the board (sigmaris)
> - add links to schematics (Dragan)
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add ROCK 5 ITX board
      commit: 8687469a51af609ad4180c3ac2624b836fd55ff8
[2/2] arm64: dts: rockchip: add ROCK 5 ITX board
      commit: 31390eb8ffbf2b6be7d789708ec08b635d7a3eb8

Dropped the disable-wp from the sdio node as suggested by Johan.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

