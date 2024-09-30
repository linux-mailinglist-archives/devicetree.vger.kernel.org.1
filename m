Return-Path: <devicetree+bounces-106586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 595DB98AEC9
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 23:01:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B678283BA6
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 890D61A2541;
	Mon, 30 Sep 2024 21:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="w9Lsls3h"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41ED43156
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 21:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730084; cv=none; b=lULUJ1D09sMnCvgGN/R8gFpTSoovi9uliU+vOJ5GH7HVlmOJrvdOR1WKcGO4DeUqNNM0Ymbv9e2ceWDcFSJI7InMZBH6AgnLjDGpBMjMFRTRQHy+y9SvZR/VvEOrE3C78vTO8SEdDKhk0y6rRVrwBZKNzW60ZSVQYaSfJS4bNWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730084; c=relaxed/simple;
	bh=UdRnOt3lEj8X6kXolpOwvNJjRcYv8NLaKXxfmiuYQSA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VyieqWigQH+7J86FBFAWmqfTu+v6JfKSfv85HrCb9dFZRk6tLjjxmzsevGMXJFMWtNr6rn2UNSziY1snv/GmkhivDiRDcwi3cIL2NzKyJOFD1W6axBek0BEbLCx7aSGRWBkXVFqHJ1LbUFZ9m4XGpmsPi6wneDtrsVj0TUP71+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=w9Lsls3h; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UWYPb9aYNvYbL5G5aJZMsIXhcXu36US452m2eFrHSwg=; b=w9Lsls3h02AFnLSlqM/BMTPvme
	BEvTCxNVSsKmaqIEcSoTBZpg4azMrtf5hGHFVVZfAhTWs8NdDA/kUVFOxIF2tP6rKvCcnmhGfPlXM
	HBM7JrwVetOIBwyCDHGcpw22zztzYUUD9R0DA3AtxhSyaHE+QYjU4Yf8oKeDDUOckzCk6CpGVjlzU
	lvgJKxaliCsVooW+jHYqoydGMHF26Lbihbw3z48pO2fVwcrzfRw3ZamQqecLlEjTEXoHhdGT0/03V
	egyEESvlSdxHv4IbIb/A0z7u0U983Jzbz1Qtzo91qkC2bXnb+2AvAsENxQLx9XVN/XMDWzmaV7UGe
	5ZcByXSQ==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWC-00087h-5W; Mon, 30 Sep 2024 23:01:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/8] arm64: dts: rockchip: fix i2c2 pinctrl-names property on anbernic-rg353v
Date: Mon, 30 Sep 2024 23:01:06 +0200
Message-ID: <20240930210112.1993625-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We want to control pins, not beer mugs, so rename pintctrl-names to the
expected inctrl-names.

This was not affecting functionality, because the i2c2 controller
already had a set of pinctrl properties.

Fixes: 1e141cf12726 ("arm64: dts: rockchip: add Anbernic RG353V and RG353VS")
Cc: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index e9954a33e8cd..a79a5614bcc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -79,7 +79,7 @@ button-r2 {
 };
 
 &i2c2 {
-	pintctrl-names = "default";
+	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
 
-- 
2.43.0


