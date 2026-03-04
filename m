Return-Path: <devicetree+bounces-270978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /dhPMAISqGm/ngAAu9opvQ
	(envelope-from <devicetree+bounces-270978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:05:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F3B1FEA69
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:05:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9BF023010727
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21583A2546;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTuiBPxK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD53B39D6FB;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622332; cv=none; b=Dfa9WyIfGRiFMxzQfLWqH0fxclY4vcQJIRRbMBcDr3IneS9TR+CW8+XtN7r8JuK0CDvzmeCswa977qe6kFyo15SzQb63Q92fKFZpVv7TgegvGvX2c6y71HDh0nupQWy/ZoLeSE8klCoHtS9dnkLozFsTcVS+6HIYM9RF84kQTVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622332; c=relaxed/simple;
	bh=NuR9llP7GHy9Y9058elFyhLur654m0mtWCISGmMQp1Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rPTPdg1dqfqJoxwk5iXOEV6amJJpzbvDEgLXxcS79HgIDeaUSZx2uPBYtG0eXGvqGVZGzRWDqfae2tTAq88qmmAB+OpasZwh8z08ByNB/+nEF5I8pjtLsoIWld6WpmosizwUZDhAvgHm2rvYdAR6zWSru0ebGVCndmyLY2C+Eto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTuiBPxK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BA47C2BCB5;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772622332;
	bh=NuR9llP7GHy9Y9058elFyhLur654m0mtWCISGmMQp1Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tTuiBPxKxfiQ065BH62mJXQfyDpulfq+psRu1ANMMuVSbTzx3cUSTddJ/DFhLTDM4
	 nrMhrhBRbiKnYqY6D2S/OXjHF2V7xImz5PR5ETtAzaJaSI4xo7w7V2mYYnMzQXuTP+
	 h8gd0Y83N6pBPQXtiZoNzxReX3JGDKw777fO5tb7OE6LNV7u4hQnRfdninXvDUcqBu
	 fjcZvVvhTf4FFLAaNd0cVMriaCXBv0GeIwzKzF2Gr1/OAEJp2gW97SJSLPfItUaoeW
	 Xa0CVp0EVqwBmJTsDXmW3vcTWNn/PDwOoGbEyG1Z2sY5nYNFLPDJKGt5mviwRn0+Tn
	 CuxqpS0A0BsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 841BCEB7EB8;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Wed, 04 Mar 2026 12:05:30 +0100
Subject: [PATCH v4 4/4] arm64: dts: rockchip: Define PCIe clock pinctrl for
 BPI-R2-Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-4-37abd7ba29d0@ixit.cz>
References: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
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
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBpqBH5PO9/6ue5v3vMfwoqhAKzbGkWb5HOukqEv
 PUg0fESJGqJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaagR+QAKCRBgAj/E00kg
 crOAD/9ASb2JoxmVej5rj1mI/ep6xH9GgV09wCCinkiCPRPN01eYn5FqLFzwKkg0f26RrlnLZtv
 K7u9wfqXcUimhp36PY+v4WY8QY79h5zCTNT6teP6U1M6QVSnGs+bRjR92WT8nOuSEAY6XGzB8Rm
 1h4PkXpYjI2YlUJcpHfeQOZrFN5FjkGsPXVJzXjTQ3b3FEJiQCdpYvFzrWIifTFzCfirfOCFWtz
 ajx0i1Ch5CmrpLEqnXPDnH0LgGiMDC7u7So2bn6IZBSeZL1M+u7c+0kSE1WRllq0CivYTXVfqWP
 0p9CJ+LO3uBdISZtHkIn92QjFgQ7do8NHfrW5xxxVIqIbCioDYMcusDEznazLL5AkfF8OnKyQTD
 ItPvpLGbiOggufGmQ008s5GG6AQN2DhuvPteF5taxQu2bae9JHd4Cyb81fItzMNUujL6eWW6Xrc
 HrktZuGYACmEXX5k1R3aEFjEZHyvzfVlSe2vFQ4sITivvwrMRIltEvpBPDgPKndoL7g5oZyBH0s
 +NGGzDCEK+lZoFJV8HXEhVtfn+RaMi2U1sZncUZ7UFuDuQyZKviBRBLNpiRuMqi5RfXBLREvj+F
 6c+slrev30iiFaBH0UhZTKCBK/ES44VJ4tH1z5TzZNJtvefqttrOnkxhw3KzZ2j0dV2ww7OWkcp
 xTn5goOXjzRjlOw==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: B8F3B1FEA69
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270978-lists,devicetree=lfdr.de,david.ixit.cz];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sysctl.cz:email]
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



