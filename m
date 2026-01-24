Return-Path: <devicetree+bounces-259178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hekTOg3RdGmk+AAAu9opvQ
	(envelope-from <devicetree+bounces-259178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 15:02:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DB57DC0C
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 15:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B7F3D3003808
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 14:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18CBC2D63FC;
	Sat, 24 Jan 2026 14:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=puri.sm header.i=@puri.sm header.b="dJu4UK7L"
X-Original-To: devicetree@vger.kernel.org
Received: from ms.puri.sm (ms.puri.sm [135.181.196.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0BA191F84;
	Sat, 24 Jan 2026 14:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=135.181.196.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769263365; cv=none; b=BEO0KTk82CGdLNW69YTZugNNNOKcx/SaQ2AxQT45NSRBwICy17ZzF1F0vwMej8Tviz+gw+JZagHoNyORtOIwkLgChPZi0MvLkB7JBQVXbNAM3ecPovnxDEJoER3P/poOD1KT3R2ix2rr8HMIlo/TkOnoc2zq57UhnrMVCDfrRAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769263365; c=relaxed/simple;
	bh=WaEx9JbT1ocsMl2cCjYOFkLVa63KbyoeWsW4DzXeu8U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=YHlUes0vsOXGMULXhcF4hhQRv/yScdP+trdICKlv9uwtHFPlvgYD7H64eirbYffeSSTN9vDlrqk1XLWR8jeDDqeNrPnQZH4dXJ2bP02SVGWtDd4L/p7LI02YWS6eN5j3rd5R9jyUZ7JFGkMpx7FYF1CdsRKMIaHKQxcT55xVMwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=puri.sm; spf=pass smtp.mailfrom=puri.sm; dkim=pass (2048-bit key) header.d=puri.sm header.i=@puri.sm header.b=dJu4UK7L; arc=none smtp.client-ip=135.181.196.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=puri.sm
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=puri.sm
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=puri.sm; s=smtp2;
	t=1769262990; bh=WaEx9JbT1ocsMl2cCjYOFkLVa63KbyoeWsW4DzXeu8U=;
	h=From:Date:Subject:To:Cc;
	b=dJu4UK7LBLqigMU+MyvMDtZQWVZXVuxpmTkQXpBDCE2ZgWZIfUmk3Yx9E8z7u3X2v
	 mueA4zRtqzocWrHZ0GDaU0Q6Lt4ftaijCWUnRXOS6lJ/A5zjaYdSHvJmZhta5X/OSf
	 w617NY14nUw3u8JgOXV/TVHWEwLqphBKMmyZ+jqmGfy4WJtco3+NXxjU+oZ7LCWeJE
	 RDLMu/IvUvpZs7I0RMjEfQD4yyNI8mjZUTfWYQX6Kjspvbx6gCzPkMEVKe3tH7Yv6z
	 AhR7/NX8G6po7wqTVIEIAPrAm7l4xa1dcEpgh2DNE8OOFDc14/yzUrK0jCeKaWLDyK
	 XvfLuIw/5KUfw==
Received: from pliszka.localdomain (79.184.64.12.ipv4.supernova.orange.pl [79.184.64.12])
	by ms.puri.sm (Postfix) with ESMTPSA id A41371FC84;
	Sat, 24 Jan 2026 05:56:28 -0800 (PST)
From: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
Date: Sat, 24 Jan 2026 14:55:48 +0100
Subject: [PATCH] arm64: dts: imx8mq: Set the correct gpu_ahb clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-imx8mq-gpu-ahb-clock-v1-1-11c2e7c857b7@puri.sm>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQ6CMBBA0auQWTuxxUisVzEupuNIJ9ICrRgSw
 t2tLt/i/w2KZJUC12aDLB8tOqYKe2iAA6VeUB/V0Jq2M9acUeN6iTP204IUPPIw8gvtyXlyTI4
 6hppOWZ66/re3e7WnIugzJQ6/2aBpKcdI5S0Z9v0LyMbr14UAAAA=
X-Change-ID: 20260105-imx8mq-gpu-ahb-clock-139ba9ca9a6c
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@puri.sm, Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1077;
 i=sebastian.krzyszkowiak@puri.sm; h=from:subject:message-id;
 bh=WaEx9JbT1ocsMl2cCjYOFkLVa63KbyoeWsW4DzXeu8U=;
 b=owEBbQKS/ZANAwAKAejyNc8728P/AcsmYgBpdM+M8iuwOiLFNHvgo9y9nj5lKxXmAwh3Lo0Jy
 wJVIBg/szWJAjMEAAEKAB0WIQQi3Z+uAGoRQ1g2YXzo8jXPO9vD/wUCaXTPjAAKCRDo8jXPO9vD
 /77ND/wK3Mxk91/EOQVO3K7G05rArzUGrAXagRlfdG/EB65PE5NMRYeIIJGRLscO/NafHaiUjC+
 o/yzpZ4Tfs35e7ve9RQdoJfM7biGv/Q3B8KRBZ46jW4ViR3pHNqg+QzhL7GGlXcVESeoX2a6iZV
 EmfYzN3lSVnmL1uPyBVh/RD5dLpg9n3FhHuvwT3ov1RyQo1kM9preBUObk4BjDubqayB3EU2W49
 b9PKuV6x3aBq2r3Tup4oAolH8SJx4Q+LVHXUuHezO/ONqSMjFZUmX2PZlLJVh8TTFCFA1A5zflD
 y5GfSDKBDoCIpdIrGgliQNqPC/r4dsLLpykBf934A7cQ62ewPHUFNf4W0oeFE1n1/SGHw4igKM3
 jI0ykdRMjSOYZPOI9hklC3lW5oG0MiDnQXnU62JAuxjEOvPsUJJZA/YNm98rXOVkvXbV1zyTDae
 b4egigx9nvSEIG8Dl5nnS0UkRG+WVKcqWMSvOiEbJbvM9sSXlY0eiQAM6TVAq11nxgp10p3EQSl
 VZCk/19Ty+cUYjirg1pXRHlwEcYNRlI8J/SNNakWUbJRTCATOqF3xAWR7rLwxuCe/OD3/OCTOTo
 B9stx774sZuQ0b/mpXsgzUXwJTtl9s+KKZF/OUdgXkr0cBKDphBaxkUSrAatPisUEzeHH4Ijoux
 dTRRKayp4dxW41w==
X-Developer-Key: i=sebastian.krzyszkowiak@puri.sm; a=openpgp;
 fpr=22DD9FAE006A11435836617CE8F235CF3BDBC3FF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[puri.sm,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[puri.sm:s=smtp2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259178-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[2.67.213.128:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.krzyszkowiak@puri.sm,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[puri.sm:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[puri.sm:email,puri.sm:dkim,puri.sm:mid]
X-Rspamd-Queue-Id: 91DB57DC0C
X-Rspamd-Action: no action

According to i.MX 8M Quad Reference Manual, GPU_AHB_CLK_ROOT's maximum
frequency is 400MHz.

Signed-off-by: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 607962f807be..6a25e219832c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1632,7 +1632,7 @@ gpu: gpu@38000000 {
 			                         <&clk IMX8MQ_GPU_PLL_OUT>,
 			                         <&clk IMX8MQ_GPU_PLL>;
 			assigned-clock-rates = <800000000>, <800000000>,
-			                       <800000000>, <800000000>, <0>;
+			                       <800000000>, <400000000>, <0>;
 			power-domains = <&pgc_gpu>;
 		};
 

---
base-commit: 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
change-id: 20260105-imx8mq-gpu-ahb-clock-139ba9ca9a6c

Best regards,
-- 
Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>


