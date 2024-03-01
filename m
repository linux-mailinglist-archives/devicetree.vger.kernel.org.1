Return-Path: <devicetree+bounces-47740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B1F86E5A7
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 17:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91E1C1C22CD4
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 16:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C969016FF40;
	Fri,  1 Mar 2024 16:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="puWJZPus"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289202900
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 16:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709310739; cv=none; b=ghY62d1zjeKAC2j9OqUifu77fINswP90EaBFeh5qAIHhHVjs0hi+WQS29pxb6pDrA2abaqzrdj46Vk0ckqZa0mIFhjpPWXReVcX4RiS849fnzRbqKbFrv/9tZLYU01nqr65axKA6qqIKyJV3OmmbvDw6P5fUo3hjnX6uxG8yCUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709310739; c=relaxed/simple;
	bh=6i/jZ//UENRlwxbqZUjFMpGUn2NJuwCsGH85idJrrXg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=kyXQZX5alFN9JG1wOOUBFEqWzLDJlsgin88/GRl2TtkFOXu1OMSwmYs/6E6RS0JRwlbjmKulNDDCupCkrxDaNvMIi79wNkls78hCElr1xcIjp7MC+FcS7MIHNurlPJhP3cHEhLKzlpiFqw0GZbv/QhYCP0QXmJlJ4kUJv7Y7yGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=puWJZPus; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=0VSNDonOM2KA+3/pPa1nmJhKzyO10fQ0OUH34koWvwY=; b=pu
	WJZPus3zCmgp/0RfXVFBecfYAN+HV9WvVnBv5mRl4f3YtOmbdHXpgB8lj75f52KRa2M7f/tmdYZh4
	n7eOu4Cgdtglue+EFcH4M5wKxMv0ubgqcotFdTo/xL2p7LLBKOGieVuKGIUkPn1110FYWgSXjc2Ck
	iUFNVD6UYpUe6wBZnPFsOCFXY16ji3RUeA7UXGRR4Mohp1XTph5MsSYzRhVoReJo4hCCQaOIbVns9
	CV98D3+QbB9WobcqSsZxD8tBKiiC45ezBcBIMwYjUcOo8wy9mHo96Fomg/wyIN/xiFWzM8zdMHt9Z
	y7pA2Z+LAZuF6mrllDTsFXyGXKxHo2CA==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rg5nx-00AoVA-G5; Fri, 01 Mar 2024 16:32:13 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] arm64: dts: rockchip: qnap-ts433: Fix name for UART pin header
Date: Fri,  1 Mar 2024 17:32:00 +0100
Message-ID: <20240301163201.559787-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=996; i=ukleinek@debian.org; h=from:subject; bh=6i/jZ//UENRlwxbqZUjFMpGUn2NJuwCsGH85idJrrXg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl4gMBcVpTnFPEJZl3aCySjuDPnKf5rTS3TN577 ffdtPApU+WJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZeIDAQAKCRCPgPtYfRL+ TqvwB/9B+vluTg6dDpps3x+yyCEmCcYKyImvpfj2JHj6T+qKQ/YjFLT52A2s03dq70UVuF/YLVA YHVWec0GjHi47U575mPpztJJQLu+Nc8t+sfYCXOHnvTvvDMRIzZ/pw6Gth5BdbRblxA1bkzO/p3 F3VHUZzI0eUFyNMiVB5/zcgrap0UXakK9JKa7HohEYn1+85WTvYLQf0bSK2U6DYNXsU0cYUEEn7 zqkgPDcOnqw/4wj2XcYKHisz3dSwrtoemv+jPAEd11mqa34SFR974rqYvqwcL51a5309bDzfKEP 3v8LezTPjO+X9NqG5TdMNovMJHJv+FRkmihKNW6o5goYaQ3c
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

I typoed the pin header name when copying it from my notes on paper.

Fixes: 9da1c0327d58 ("arm64: dts: rockchip: Add basic support for QNAP TS-433")
Signed-off-by: Uwe Kleine-König <ukleinek@debian.org>
---
Hello,

only change is that I fixed the Sob line to match the sender.

Best regards
Uwe

 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 2908486bc924..6a998166003c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -76,7 +76,7 @@ &sdhci {
 };
 
 /*
- * Pins available on CN2 connector at TTL voltage level (3V3).
+ * Pins available on CN3 connector at TTL voltage level (3V3).
  * ,_  _.
  * |1234|  1=TX 2=VCC
  * `----'  3=RX 4=GND

base-commit: 1870cdc0e8dee32e3c221704a2977898ba4c10e8
-- 
2.43.0


