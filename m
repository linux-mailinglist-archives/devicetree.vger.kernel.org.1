Return-Path: <devicetree+bounces-13339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6EF7DDBC3
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 05:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17A641C20C08
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 04:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7633D1116;
	Wed,  1 Nov 2023 04:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="aERpNybS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E13137F
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 04:03:17 +0000 (UTC)
X-Greylist: delayed 200 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 31 Oct 2023 21:03:12 PDT
Received: from out203-205-221-205.mail.qq.com (out203-205-221-205.mail.qq.com [203.205.221.205])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF8C1C1
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 21:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1698811390; bh=fvFtGqtlVKoma+oFCcrZOdxA5LfSSVqtBtye7oUXe9M=;
	h=From:To:Cc:Subject:Date;
	b=aERpNybSGkQU5dH8sWtULW5DUELiUwe7OzgzvhH0akZfHbZmu0gUMdIVk8K48Ky+B
	 A3oZGxr2gQqt/uydGcGHut9PKDI4QE5qsnEEuCfsfbuE0IHUUSBYY6LrK+jM0Up2/s
	 zfg8/MFXJjZWdDcD7nZqh2w92d1PXVxOClue8HQg=
Received: from localhost.localdomain ([120.235.169.202])
	by newxmesmtplogicsvrszc5-0.qq.com (NewEsmtp) with SMTP
	id EEF8760D; Wed, 01 Nov 2023 11:59:47 +0800
X-QQ-mid: xmsmtpt1698811187tu2cwpr8f
Message-ID: <tencent_9F33F82589FF024D0F722F2C95E965BCF608@qq.com>
X-QQ-XMAILINFO: NGsJ5Fy+2UsS9OQITe3Jn+7UtAAsyNTy4mcs/X9vQHrXF4TZa5yANRH2f7bxuq
	 xmE5V5pVlUzTNsaQBSs5v0q8TKu4HIKRSw1KfCOyek5qQ0awMUxHnHZcJTKsXESXCG8naTWT+M8n
	 IFwzUFftEpUmPWdgwBwOoBomNkdxdULNEXmhAL8/yQmtCUUG6R/6QACmlWwGHkkBs7Wu3HOLYXUW
	 fD87vGNKP3iwqKBuLRgFAJq3yyZWbZot6KZVMkaHXIYKjKgQcxZluAJkYv68Qdje/+clbChzP5cq
	 Ma+j0/3YfgTa+81tnk/fzC1BscQ3ZXU5lbjezfIE+IWTERG0ptxwnq7Vf7spaOYw3qxuHQpQx/SP
	 Wc1a7p4jmihCQgPrqduohVileV5g/ys6SiEAYLmJLBbyQx5Wd2ewfiGItmhJCCTMM5cXb4b+6pro
	 SP8XOTrtBZH2NVp9XgkO38x77t3CgcpVpKLdSEV00A9j/X9pZrqnX4RB1DZF/v66kgF3WdsoowcS
	 SlMIQdT9E4ZZsoO2BiDx2eduQm8gKYdgszGG1sQgqG76W0PkRUkmI41vUiEu4XFOItWHIlPvJQ3+
	 uIEkIs7f1PXIh3g7y4kPRA6TaIZz9+ErDgr8UzMUEnUr3uHca5oA93TyIGB8s50UIkgSniNe9oGQ
	 wkIwQ4SMLEQwszJsFcYsk2Aqk9c0FEBFITH2neaK8N1rzE/JKf64wEfHd4AcYr2acLccfoOmSNxA
	 KqJT+/VW3+PmnIFngJLYyvCPxJ0/xHoDRZNRvd7cyqTqPZUKxWWMiQwlr+F6cVmCMfTC9i8BcziE
	 UzZfTMY+P0WGSuJ9ubyXX8XTVyJP+eLpxtvb4CyijU2FtjsAwcg4MKInxlNrBwzC2L/Cr5omCc78
	 xzYlW4CIQ/I+XvELKyy4f0pTiaXjHJNiOXLqgbg66ywb/lKhzLYkFZOl/HHXqhK705RYmpixZngU
	 BmuMQ5VLAUznPTF8y3GvEMP7GQnXzZeDeXPJU+1gw=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
From: Steven Feng <steven@joint-cloud.com>
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	naoki@radxa.com,
	Steven Feng <steven@joint-cloud.com>
Subject: [PATCH] The default fan policy causes rock5b to restart  when streaming media and sometimes the policy does not always work
Date: Wed,  1 Nov 2023 11:59:21 +0800
X-OQ-MSGID: <20231101035921.24822-1-steven@joint-cloud.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Level: *

Signed-off-by: Steven Feng <steven@joint-cloud.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 8ab60968f275..974d09a8cb26 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -38,10 +38,20 @@ analog-sound {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
-		cooling-levels = <0 95 145 195 255>;
+		cooling-levels = <72 94 117 139 162 184 207 229 255>;
 		fan-supply = <&vcc5v0_sys>;
 		pwms = <&pwm1 0 50000 0>;
 		#cooling-cells = <2>;
+		rockchip,temp-trips = <
+					40000	1
+					45000	2
+					50000	3
+					55000	4
+					60000	5
+					65000	6
+					70000	7
+					75000	8
+				>;
 	};
 
 	vcc5v0_host: vcc5v0-host-regulator {
-- 
2.34.1


