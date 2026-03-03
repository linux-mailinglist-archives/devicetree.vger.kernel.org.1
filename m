Return-Path: <devicetree+bounces-270610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OE1bEIcCp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:47:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3011F2E45
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:47:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 64D43304AD2B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2001D48C8BB;
	Tue,  3 Mar 2026 15:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSAvNHKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBAE37B039;
	Tue,  3 Mar 2026 15:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772552836; cv=none; b=lJvj3ZcmpAaEbproOuK9vZJ1cW75eM2Ky29pDLwo9VFguVy9MsX0YZfshqNh1igwWL/CRFcKbS8GPoaH7gyqYnv/L33EJOBVdUzqf6Tc/+WvRJpN27pggwzBQVn7mLB+Pl9U5JJfvs49z+GsfbLiV+0TyWprIadPvZQdfTJnoZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772552836; c=relaxed/simple;
	bh=9J9gL7YouFeYvBXgJJkDaXgAt8k2hc/h0yRIxOleEKE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hLxsxLEoMUuDp1ZtGa6nId6HAHN5T88V++VHiK2GfAX4e8dwitspeWD1IYSM/Nrom4pULpeVALt0PzsxBkWEY/PnDSNLS/NL+8mQ6YmzuKjrUrZH/qiasSSSB+IShJDwIeKBQpEo2YOjKqnJNPjRZie2QJbLuRYQuHaHJMGVIN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSAvNHKJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5346C2BC9E;
	Tue,  3 Mar 2026 15:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772552835;
	bh=9J9gL7YouFeYvBXgJJkDaXgAt8k2hc/h0yRIxOleEKE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=uSAvNHKJycYCMH7/qlvPH/kSnbv5c1B4lYUo84R1elQSZXla3dA0dlIrA3P4AI4ua
	 o5NzGco8QUAhtcts5aN69B4bELBhuH50KjAyodlh1jrxW7K78GcI6oACG+H7cZN1Sc
	 aM5FJUvuIx06i5ucaG0yCl1QHXLNr/nrHb9u1bv8klvnutd3VpEAUOScm+VozA+mRC
	 arYw5AeymcATbTrR/k/Es1KlbTugY66s23RIbapj6wRvOa63Dnd7APcAxLKJ6M6zch
	 ysZkB/Mm+p9L069nxFOOkNfjUYoK1yZgAHtJI7dv3kKWESV4QV24sEAl0rI+8oynvc
	 W1SRIcC2YfLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCAAEDA687;
	Tue,  3 Mar 2026 15:47:15 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Tue, 03 Mar 2026 16:47:14 +0100
Subject: [PATCH v2 1/3] arm64: dts: rockchip: Introduce the reference PCIe
 clk generator for BPI-R2-Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-1-04665e55d5a8@ixit.cz>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz>
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Martin Filla <freebsd@sysctl.cz>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1075; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=DLgTWxKRH1XYO2l0p6yOj+4it8sVM+ozZghYVlPNXHU=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppwKCZCIoFv2sXDzcrPjnXi+tB+ytkrI1/HfhK
 nFqTHD/yYmJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaacCggAKCRBgAj/E00kg
 cuZNEACTBZY0Psx6qqiEmOVSoJQGHaeY5kC8cjEpDIJ36SkjWF0Nfkk9uBJYUtgzgvSDKTn/rAq
 9DdfTHNpmLcxvMH7L2CniuVPYtJVomLoqieqOZpP8X4utINyAhpkzQIjzBp3XP/1jwrXCjCsyJL
 Jxi5Ow0z6FsuatqkjfeQgafRY7XgY4lta3fOh6YwniX3ggojxOB14Q4Vidj9kJQEkTXp0PHj17M
 NLcQFNDSWijkrua0hDvpjVueqt5Ut4GyN8ECD0+/XCsGDFd/fiYQxaTFKqM2jetXWzb6LnexXse
 lC7aZZOvYooa6E+ytTM2DIfMF9pVmMmcmN1I6NkxpEX+r1aWKG4nNjH8euT0NmP6OL5Yg94+olp
 IZbQv/NEHPsc9AhcJ8/p9DdoL36MHNqlEFkA9J0vd/I8M85bLj+REC3pkwx/YuAaecGAJB+Fyww
 vZQGgJS4Vd0HkIwQKJcGIDAZvDKXzlBmz53i25FExgw7A3ZLWanUEwBtslNicZaZK8/wc0HJ2pb
 lRi3nJSSoi92TYeXV5575Ou77a5fjQW71YRHkg+12yWFm4D4kbCtmvYwq//VRdxWyh4/muewLm/
 fFrDJDGnMrQ3Y/L+FSUfutRmB6AVSyCWbxMCG6597+bgMhwrm3eLjHeUT/EggKPcAn0e7X6qr2o
 JRl7yOPwhBw1cxg==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: AE3011F2E45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270610-lists,devicetree=lfdr.de,david.ixit.cz];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ixit.cz:replyto,ixit.cz:email,ixit.cz:mid,sysctl.cz:email]
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



