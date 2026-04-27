Return-Path: <devicetree+bounces-290768-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7z3lB4Dc72l/HAEAu9opvQ
	(envelope-from <devicetree+bounces-290768-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 00:00:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D80047B091
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 00:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6730530DBB62
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 21:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40923A75A9;
	Mon, 27 Apr 2026 21:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KQLXIHWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393FE39184B;
	Mon, 27 Apr 2026 21:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777327075; cv=none; b=hezrcy3mJQ5LdBaaYY20cr44HJPyoEmpZFuZ0KPqYZz2yIFaJvsHbv0JHZDsXbRJilgWSUFjAmdmDgYvTQMQ0PXyu/6iN8z+tXRyzJItx6fRLTSX2V/kBpBhN8lipPlQEnDLLlYnT/0qALt5jqObeoq9ysCVMHhxGsn3ZWzkUGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777327075; c=relaxed/simple;
	bh=pqRtbplYE8IdJKdBWhM5OHW77gHMGDEF1m/tI0sVmVg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OSgKQb4uNCHrD6ZR8D4Uf5c19CfH1OaigafBk4AuImEPgCSyIiBEG3T3jakRVoLkb89xnLKdf8moF/Om+rQy639xOwALD2mBjpynicbG+S8IPL7rqMIu9UNS3Iy4/ve3AH8vfCeMG3s908otAf8mGE1r8+lb921QOUknOgMZ9Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KQLXIHWJ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777327071;
	bh=pqRtbplYE8IdJKdBWhM5OHW77gHMGDEF1m/tI0sVmVg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KQLXIHWJdZT0TECVDrV5VZQulabse1tqARayoCENAjGajdd5B5KWN683h6Y3vIu3U
	 5CVfEqlvA3dilYUNKiO+TrtyWoyUJnTtsJIduQICpxwoesLS2fABYxCowaeIwW3jYD
	 zsfok6b79zkMnZzdofnsKK0lRaCTrOmE77rQLOc2LWcs4zZcMK0ocsLOisn+MQu63P
	 pYS02iAetB/LAyB1aMrkpAqY+UlTBq7t6RNCuxQn5TvMCUg7hp3Bg0l5n/c6gFnPR/
	 Z+PAkRZILC9fLTjqMDKyTsK+H3/EVTL7qGCDdhuFrL++UeYsbFn3UevNYGhP9FEv/J
	 n4LzWoTtnCv9w==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D5A7E17E141F;
	Mon, 27 Apr 2026 23:57:50 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 28 Apr 2026 00:57:28 +0300
Subject: [PATCH v2 10/13] arm64: dts: rockchip: Drop unnecessary
 #{address,size}-cells from rk3588-jaguar
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260428-dts-rk-frl-enable-gpios-v2-10-924df9db884a@collabora.com>
References: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
In-Reply-To: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-Rspamd-Queue-Id: 8D80047B091
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290768-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,collabora.com:dkim,collabora.com:mid,fc000000:email]

Remove the unnecessary #address-cells and #size-cells properties from
the usb_host0_xhci and usb_host1_xhci port nodes, as they each contain
a single endpoint child with no reg property.

This fixes the following dtc warnings:

rk3588-jaguar.dts: Warning (avoid_unnecessary_addr_size):
 /usb@fc000000/port: unnecessary #address-cells/#size-cells [...]
 /usb@fc400000/port: unnecessary #address-cells/#size-cells [...]

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 05b524f682cf..033db78aff67 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -1142,9 +1142,6 @@ &usb_host0_xhci {
 	status = "okay";
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		usb_host0_xhci_drd_sw: endpoint {
 			remote-endpoint = <&usbc0_hs>;
 		};
@@ -1157,9 +1154,6 @@ &usb_host1_xhci {
 	status = "okay";
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		usb_host1_xhci_drd_sw: endpoint {
 			remote-endpoint = <&usbc1_hs>;
 		};

-- 
2.53.0


