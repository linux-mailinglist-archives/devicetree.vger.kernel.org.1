Return-Path: <devicetree+bounces-270613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCJhHZQCp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:47:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0471F2E5C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:47:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2ACE7304EE82
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D084921BE;
	Tue,  3 Mar 2026 15:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQSQVj7H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CED44921A2;
	Tue,  3 Mar 2026 15:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772552836; cv=none; b=m9YIYBm1MSqCW/Xzy19aMTvqwEOuDFUVIb1X3WG6mnWrtzcWKA7ESe33f0fqwmhye8ZqTTvbFy8L/Z3f+OOdUTk9KhgaVtMAsnlNsKlynJU9patKXpPFs7yuvufSJBcv5z1aaqVSIoBPVrNQwRiY7W+mDc4kWGnbzUJpIgcaz98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772552836; c=relaxed/simple;
	bh=LLKQElExZghMy4kQ8esawKMBzcTfhLrpiQB2Ve3kd+s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=shnvQrxWKncUnejiGsvEJq2cN4RSNjReqAfouDgm82Rfidl5MaNpSarcAmfWkqSpc/Gbe1x1T3qBuOsJzkKzPpy8ib+7MdNEeKNOdmnj19J/Xi2V78iTVfsDUXLUGR84U9Mzp+X98K123iSv6r/1WbM7IeKDBkXVp55TfvbjwE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQSQVj7H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B9CC2BCAF;
	Tue,  3 Mar 2026 15:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772552835;
	bh=LLKQElExZghMy4kQ8esawKMBzcTfhLrpiQB2Ve3kd+s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=rQSQVj7HT/6abpwLlcS7u+hzgwwsKQQ3Oa56ei58g2IC8MPXpcDeSssGkIIufUJ/H
	 7vYOA3/AoqIm200UR++fkWRuutBjqYfTiJsETnQsYXUSn7sC16omKbZ6ws4OhnT3D8
	 kPgLFWUmOCh249MNvBkO78Q92Xehb6EFU0b4O07BggEKTANbh7tfau9kncoTiWTkdu
	 EeSjRitClF83K6Mj1sCMrYdVphljt/GzKNIuo1R16x5KbhTaxJW4n6PK/XlR2bHigo
	 IeXsgS6U1VQNVWRXDilA4sjPKU0pJWjUjNK/r63xUB+QjzRFZao/ODi8FRKRX5rriI
	 n4JUpAQLhrpww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8646EDA690;
	Tue,  3 Mar 2026 15:47:15 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Tue, 03 Mar 2026 16:47:16 +0100
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Define PCIe clock pinctrl for
 BPI-R2-Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-3-04665e55d5a8@ixit.cz>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz>
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Martin Filla <freebsd@sysctl.cz>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1430; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=YlHCb0F1jScc81vTO0QX1ebEtLSzHBVXADDaJRK3w/o=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppwKCO+kcSHyvVYUFDqdVlS/FKdg2A2uzn7r7i
 14m2Hb9WmOJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaacCggAKCRBgAj/E00kg
 chSTD/0aqo0VrgY7y3pu2xg/5Hs9RLsyUQ9RMPw9nhqZxI+GaxgPgHw4Q4qmQCCxDun/wkv2zj9
 t6lZor6QRNaLMQ5UHuajfEsz1MH1Jg0wV1jXWdKuYn8KCd0542qPxl0cDDf9AzfafT9FsfafkCn
 VkL8Oz61MvzWpTbGcOLOJzFmEB3aCdxesPiKCMhAV0ueuckNtqWn/nA7rKnLPrqMpBpYspqbjSJ
 YeG5QIIj19+KIaOzhOjGgTh+tTXVpSesYCshI+c2ZaC8BRTmCQXwiZUodXIkd5dApKHPMeRLyIo
 fDTr+E7EUkXyMURwc+QaxIQYHJBhwATi3wRB58uok4wdnn77e+ZGfN63yv7BkSiQqdqnxcr8k/b
 Op1+1evuQWP+HK5AXtiAx98FQOp9OAeepOhHqS5u3g9UuT/gzuNmEzBCobDxybJMq/pOpj0DpzF
 errUiIHL8zg4bS+BEfkZvVMcjkYFZgmsNZl/y9646A1CjQ75sr4um8tSdWSaPHkkbq1Jao4JE2q
 Asi0jh/mJYzPaU2F77cy5Ahy1bWkuHKQVSMQu4O3ol5oCuy6H4KQ62OwKFDE+kCbnVWHxTuroEX
 fxwFpjhJ6YCDV1GF7wc72VBToyedtEFBweezk2XZ+RG88BUGJOQ60aEpWMdyO3q8MzXIzcdeOp5
 SjoHILyGCxzcoTw==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: 0F0471F2E5C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270613-lists,devicetree=lfdr.de,david.ixit.cz];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sysctl.cz:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ixit.cz:replyto,ixit.cz:email,ixit.cz:mid]
X-Rspamd-Action: no action

From: David Heidelberg <david@ixit.cz>

Without configuring the PCIe clock enable pin as an output, it
remains floating in input state. Some operating systems that rely
on correct pin settings may fail to boot as a result.

Fixes: 86973ae0355b ("arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro")
Reported-by: Martin Filla <freebsd@sysctl.cz> # reported by private message
Tested-by: Martin Filla <freebsd@sysctl.cz>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index a071cb67579c4..0616d9a065605 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -125,6 +125,8 @@ pcie_refclk: pcie-refclk-clock {
 		clocks = <&pcie_refclk_gen>;
 		#clock-cells = <0>;
 		enable-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&pcie_clkreq_h>;
+		pinctrl-names = "default";
 	};
 
 	vcc3v3_minipcie: regulator-vcc3v3-minipcie {
@@ -650,6 +652,10 @@ ir_receiver_pin: ir-receiver-pin {
 	};
 
 	pcie {
+		pcie_clkreq_h: pcie-clkreq-h {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+
 		minipcie_enable_h: minipcie-enable-h {
 			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
 		};

-- 
2.53.0



