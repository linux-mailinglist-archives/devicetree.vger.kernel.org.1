Return-Path: <devicetree+bounces-270744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFELHdE8p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:56:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7999A1F6765
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:56:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F23543007B3F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015AD3890E1;
	Tue,  3 Mar 2026 19:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp9MUidd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D217238643D;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772567550; cv=none; b=K6ZfDRYQ7wR6UMVyLAGLoDJoio4A1HOr1a2+eF3T84IJ2Xw8E4A8vc99z+vdZT1xZhZd6mt4WF86jSfQFzrGFTVmC/PTH9dOmPfSoxq+qWoXE+eyIvk22JysBJOyVnQ1QEwdkHRUNaAQg7cpJ9CyYfKnvFps4rjWAL4u8rvXtZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772567550; c=relaxed/simple;
	bh=NuR9llP7GHy9Y9058elFyhLur654m0mtWCISGmMQp1Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hj3Oqr/sXek8393kKoAjji4M7XUs8tQFb5ptQPmE0goss4mtXevruDTBiGNmgCHg+mPzL+COe3rO8ctLl+t7UDZcGuIySSgsOTKP3qKEr739vlUdAbe6nMSNZ2TFfmOoyVDq3G6gOMC4po2OnFkpELb4gOXC8cMypmoZVrn6/ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp9MUidd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A5FC2BCAF;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772567550;
	bh=NuR9llP7GHy9Y9058elFyhLur654m0mtWCISGmMQp1Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Vp9MUiddG4WBWMVkJ7hX9X1IFx9xj7Se/BABMjnnad1MZoeGZH2SxD2/uZiUtZ4V7
	 aNs1O41EdxE4dMbn1UWavUqfkkvUv0ZEZU3Hiobz+9/k+E4l5QZzoKuU99H7gwWd/T
	 4Wf6LXv7RiZQojDeWMDChFtEb9twSnFuL6UV1Nl0l2hmlTdlloMzll7fLdEnjg0DNg
	 SWn8RYh+WGV17ZPcQjGZuLO+6GEqvhmIhhwYtygtSqcwiTxNBvBq32qADZX0hNKksz
	 HJl80AH150Aj7fsQb1y6qADN4cu4BrMq/eYO8IBqLBT5r5C1kE9wJjpShLA2Oa/u/j
	 /n44Uim7sescA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6782EDEBE5;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Tue, 03 Mar 2026 20:52:30 +0100
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Define PCIe clock pinctrl for
 BPI-R2-Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-4-af5a5207b0a1@ixit.cz>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1430; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=phK8+ZRwh/J/YxkbsoLpGT+s0IxKqlf1J/b5vaUdLh0=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppzv89u4mY2XaGjePhEcixdqoOdxzszV8SB3R0
 FfjESfkvsKJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaac7/AAKCRBgAj/E00kg
 coMXEACr5SqodWnv0uSX0UNjzeDCfbfs618RVV3qPpmjTPFdWVY04Hf7dpBI8Ppe5G+OBshoplz
 lkG9U96qRUaz+oBdp3K6fD6+qIXteppjcOriPweKextma05UdkQt0HDLrQ2xgStuAXrpAh03Akf
 C1ATF6a9StzQU9WvoDnypBPnRD1Vziv17ZbEasNMzld4n7Sn5WDmcgTYtvSEJK3GKdO2uXdkbnG
 mqeVfhP9g36uJu//KJUWvBo1VhKiB7T69pV/2m9/lfpEfpSp6iPfmHU8gAcMRoIZOMryNKwZII3
 Lag4iSA0TFe5yNIIOU3bCMppDGSwTYSpmYrSVZVsh+XIw/E8o6R/KvTlq0xbC/ujNotYdpWmslM
 0oXxDOkkbJcw6NbyANWpJ+Rj76QnpXhVTYDrLdKg1CXh4x/Zx+bQKw7u4hw6OfoLAHWgayY1AN4
 Bw1Ef3LrdKwSziAr1rNfgJcLIg8TcMcqOaCHyn8/9Omhk1yu3WuCCgbw8HT7UrrP2LNvhq7H2OW
 K1vDpVO7Tm54yNXpB0kN8Jfb500Bv3pyixxK4r6cBKTgiR2x1CRYrP1g1RjJDyVu4nVpMPhkaP6
 1Fd1AAqpyusWuhbrCrsbtxYQn3jyQ5cB7nX9uiP1v4tHwKUYOxOV4+q0+ux1HRsWqHn3TIxXpAl
 iTMqCSASa/ixdYw==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: 7999A1F6765
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270744-lists,devicetree=lfdr.de,david.ixit.cz];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sysctl.cz:email,ixit.cz:replyto,ixit.cz:email,ixit.cz:mid]
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
index 3cdea9456a28c..95cf4a6236048 100644
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
@@ -652,6 +654,10 @@ ir_receiver_pin: ir-receiver-pin {
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



