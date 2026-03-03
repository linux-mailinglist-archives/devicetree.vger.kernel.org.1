Return-Path: <devicetree+bounces-270740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADANO848p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:55:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 876401F675C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A3F2130A50A0
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E99385510;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3vb5X4I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C252FF164;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772567550; cv=none; b=rkWmFw104jv5iEz5ks1CYCVAHvVFad3xG9f4rbZEOHbHsJGkDJtwl7b4Dt59wcDhYujsuo2I9WEiMU7iBd7fNVEO+r0WS08hacaiAllllD2dTz85SZnMR2FCKBimy5/CidQryduKcukZRwL+YTmcbgbBVBA0gWwtjjeF7c4vg/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772567550; c=relaxed/simple;
	bh=9J9gL7YouFeYvBXgJJkDaXgAt8k2hc/h0yRIxOleEKE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pS0/cMc1nCrj2j2Ub00DLJ0i2W9NIvyy/JChUJ+WpVhI6u9Lt/zncnV/KP2cYg2llad4+sxsQ5S5oDUKmRycrkjr0YKmp7NldNFMhfs9744NRNvsEMloxWNQq/sqnPYW0dNl3AeESVsCO8aq210gWqxUfMLrie/WuDEZR8okFFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3vb5X4I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84565C19425;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772567550;
	bh=9J9gL7YouFeYvBXgJJkDaXgAt8k2hc/h0yRIxOleEKE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=k3vb5X4IPLlZHy2cw03KQFkGkkeLb5SpSFcD+3Y4pUg/s3sqIKCARXuucZh0EKBQa
	 B4zY/DpEM3zQc1ieH/V6StultxLk6neUaPJ0EOrKzpVsm1HymjPOkCXpvsS6TSN3+p
	 ii6wpUy1BfQGUSsEOSaEyspLR4tLKxhpr8RFfeMKgQiAQUMEEN0pMiMap/Gidhnk3i
	 58MWPio4eFiqZoOwnqZglztwnFnStxE/Ivpl9XUQJdJ3Xmi1gj/RunMeFM7ElXb3R5
	 sCOnoCVx2dYZxzN49MsizyJIQPV27eOskU7p1WiSdt6Hf6xKFdCIAvx5sxcASuYTYn
	 OVTFSerDb3Smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77487EDEBEB;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Tue, 03 Mar 2026 20:52:28 +0100
Subject: [PATCH v3 2/4] arm64: dts: rockchip: Introduce the reference PCIe
 clk generator for BPI-R2-Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-2-af5a5207b0a1@ixit.cz>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1075; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=DLgTWxKRH1XYO2l0p6yOj+4it8sVM+ozZghYVlPNXHU=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppzv8N65m4KM+BMvXiPpSJgaTZWNY2Muclcn91
 khL9eN7veqJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaac7/AAKCRBgAj/E00kg
 cu8QD/9k6zAchv5KkQTmT60ebjQDKVdinv5JqUf5iK+2cu9Sl4SXliBMpJHVw1FR0laqnEK7Ggd
 RAWnqQu1vRyNIkQZMuAmdJIrmaV99O4YnywJW8XagrpTxdJ/7zHtSW+4+INMzuPpQvbyNA4LsKo
 yBdc42Ges8gQh5FR58W4WtcIWED0tyIeKfwZuBV0KtrstxqxMjN+WEaUNvDT7m0CNNEkLF0b3OU
 p8OYyB4rubv65JubFPVZUNFUjEL5/GNDDyL844IXQINmEWmridmqY6VGO00tSlg6Y/GK13LmiN6
 ANrs1QokScTAjnYiXvtjd0e4S0cCPj5PIJtKNk8ULDR7YfHq8WBr9Ob+4bF03Tab+MovJqponLI
 P+DXHgEWUgOThX9JZBpMK+TdICT7qCaH2PlLQ8uztVC887rRVQjNhA6qFFFaHOFiUvQ4AoHCP44
 tmtx26nURA74eXnV4vik3HfQJOd05eDfTP8TOfw16UngipG6NnNqEExTAJe3xre9pNQ/lrCLPwJ
 OE4kRKk8KRBNWO4xR3bvo61IYDcDwnCihLH5eCdX5ysg3sd07XFQxm8FG9AohWWE2yqbRhCdRXO
 L0Rf68zAk0Vx2rZ52q4Hfxw3RTLoWPMnIKoq3FZcdq5J/ydT61l5JKdm6Rp3Q/MNu9cCUhYo+ku
 EboV8kd1A+poCwQ==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: 876401F675C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270740-lists,devicetree=lfdr.de,david.ixit.cz];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,public-files.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ixit.cz:replyto,ixit.cz:email,ixit.cz:mid,sysctl.cz:email,sntech.de:email]
X-Rspamd-Action: no action

From: David Heidelberg <david@ixit.cz>

This clocks provides for both PCIe lanes. In following commit will be
utilized by PCIe clock.

Most likely PI6CG33602C or some variant of it.

Suggested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Martin Filla <freebsd@sysctl.cz>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 4d3ebe50b90ba..d02b82c5f979a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -114,6 +114,12 @@ pcie30_avdd1v8: regulator-pcie30-avdd1v8 {
 	};
 
 	/* pi6c pcie clock generator feeds both ports */
+	pcie_refclk_gen: pcie-refclk-gen-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
 	vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie";

-- 
2.53.0



