Return-Path: <devicetree+bounces-276878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HqzGuvRuWnMOAIAu9opvQ
	(envelope-from <devicetree+bounces-276878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 23:12:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 159792B2FF7
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 23:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F594309DC50
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 22:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E571364EB1;
	Tue, 17 Mar 2026 22:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr/w6Ket"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347C233B95A;
	Tue, 17 Mar 2026 22:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773785555; cv=none; b=t3wg1evjES07gOqg7SBT0lMQL/lNfll6QrbnKsnadfvyYgrB9mtcG979I2OXIuVfoYvba9l+CzFUUYSUrpqjkNEYmvSktYlL36jD3kMz2Z4vKqgwrMoUhL4HOCwIoPxn+Ev3dkhlDnwDjOyueUebu3dWvSxjAUiCS80MwGmiX3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773785555; c=relaxed/simple;
	bh=r/yElUZS/gc9f5qHyxpx5JoP/OOqScMFAh1nAa0d74E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RC9iwrXPU+cyDLQ/6c+WIJtGwaetm06d8v0mcpnARrhE38mrUBzV6EJSBvWD4MkQieS88jZsUz9NsVoto5yXiAok26L9bcpCFErm1PZk167oNJFDGbEbx4t7cX9teyRYVIygBYEiJyLH5CDD6o4rwy1Hvp1jNkekuwTzkHYJP6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr/w6Ket; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 057A1C2BCB2;
	Tue, 17 Mar 2026 22:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773785555;
	bh=r/yElUZS/gc9f5qHyxpx5JoP/OOqScMFAh1nAa0d74E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=nr/w6KetPA5m1MqKr+iNzv65Ip4qbE7miX2uy6eRZrsli/eVXmADipiO8R+N99fin
	 O1WrjUJfQ6ey3Y/dFXGoRUMflnjcvcVxH0Qzd6oaQ8tXIStL9rQNXC2Y914CHmkIak
	 zl4vlwYwjV8UGz+Gf2WuNnVz5pxtEmNBLBk8Sf/SRmEJHz8HpyrVY3RqT+cq6jrk3y
	 0RPxjIOMfFMiW3aC3bfmFtiIqhN+/3XM/XAOtOQdfiUrZZY2RvF9Lj/mbeHEj8cRyN
	 b3yG4r3T9FNgX05WTnyluup300j5tRtoiW3PjZyj6fXepm68bIB1LLfv/DIkzCoIzo
	 kDaImSaX5tiyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECD76FF6E8E;
	Tue, 17 Mar 2026 22:12:34 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Tue, 17 Mar 2026 23:12:33 +0100
Subject: [PATCH v2 3/5] arm64: dts: qcom: sdm845-shift-axolotl: Convert fb
 to use memory-region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-beryllium-fb-v2-3-36b69dfb760c@ixit.cz>
References: <20260317-beryllium-fb-v2-0-36b69dfb760c@ixit.cz>
In-Reply-To: <20260317-beryllium-fb-v2-0-36b69dfb760c@ixit.cz>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>, 
 Sam Day <me@samcday.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 Petr Hodina <petr.hodina@protonmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1114; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=+J1GiE3/gu+Ex4529cyTBsEBCOk3gC0OobsfViZGQVA=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBpudHR+/5GlKmBFroZ+rrEc7ox3nBpoo4sRrRck
 mtBmnTSuPiJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCabnR0QAKCRBgAj/E00kg
 chhnEACDhIYCHFrtbVidzFiokgVEvko7c1vNLICH17a+Ctjjf1CZsVQilUcOxcUDmABnOyNxm8/
 01zQthhInphazePhHYzMTiYwy/9iyUwRddnMShd4pf4qsjA59TNOxxnIgPDCe92QPzFnoi0VK8G
 utgm1Oj/uc1biV4JMFP/UEqKjb8NMZkHEtrtNwW3bLHLm2vfGX6zZ0noeKd4Uc4Dhx56I4kTtGJ
 BEQPqLIXyevNkJx/tvaIcovzm6a8ZQCVLPiJOBZymwt+tUM+l0sSeDgHZd9Z3YiDwgQSa/J7ZtC
 CyMmVMSH2USPmAeJxPwOJLF4I6PNMfG15D38wmawpzNss6YXQnIicgxAktkSP+Nuf6H0KHsa/8N
 wGiqrVdj0kfTAqSlEIqNlvCdxcJr6LWgsSY3JMaA1RL7CZjL5rn/Y5XlS3B/rKKGOCogZj7VNs1
 +/S4DyoQR5UrpuXO2NuDK/r/bI8NhtrIrssfcuo6pK3urqblE8hSPXA9CP1SB3r7S414ZTah6zq
 ufxa6Y7AUwuwkEP8R1EcUYt1XKMPwz3L2AK4LCWa4V300m0s/hdF+II+w17VMxMHuial0RF485r
 s0/QF/XwcdAOFL1tmRFlwsoFNesv+sZCFzhUYknemVdQ2RJyzZL7IZbcQ6ZzZzkwZF+9bFgM3Fa
 0T6j/5SvZHUa4gQ==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276878-lists,devicetree=lfdr.de,david.ixit.cz];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,protonmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ixit.cz:email,ixit.cz:replyto,ixit.cz:mid]
X-Rspamd-Queue-Id: 159792B2FF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: David Heidelberg <david@ixit.cz>

Instead of manually specifying reg, reuse the memory region.

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
index 51b041f91d3e2..27a0facd174c8 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
@@ -36,9 +36,9 @@ chosen {
 		stdout-path = "serial0";
 
 		/* Use framebuffer setup by the bootloader. */
-		framebuffer0: framebuffer@9d400000 {
+		framebuffer0: framebuffer-0 {
 			compatible = "simple-framebuffer";
-			reg = <0x0 0x9d400000 0x0 (1080 * 2160 * 4)>;
+			memory-region = <&framebuffer_mem>;
 			width = <1080>;
 			height = <2160>;
 			stride = <(1080 * 4)>;
@@ -62,7 +62,7 @@ key-vol-up {
 	};
 
 	reserved-memory {
-		framebuffer@9d400000 {
+		framebuffer_mem: framebuffer@9d400000 {
 			reg = <0x0 0x9d400000 0x0 (1080 * 2160 * 4)>;
 			no-map;
 		};

-- 
2.53.0



