Return-Path: <devicetree+bounces-268480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLCwNdsqn2kkZQQAu9opvQ
	(envelope-from <devicetree+bounces-268480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:01:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3934B19B209
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:01:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4E2530210CD
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D47D13D9029;
	Wed, 25 Feb 2026 17:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQXAnmwU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7332222A9;
	Wed, 25 Feb 2026 17:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772038851; cv=none; b=C1ak0hh3q7JBtCM7xlFnd5qf2GlYbJiCn+SP2Zo2tvQ/aIxXr7nNIp7Tb7m0ImJR9cjkDKaRmzkuY1stmunCjnCvdGyDD54yr2UdzPM4nKoE0kz8mZ28xhYuIq8IsJTl0oDn7izvTE3BpbY954xe/w0ilL+OsNBCnQp2kHaWA4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772038851; c=relaxed/simple;
	bh=PNi0/q4UjW5yMslxBn+SOhC+y5Dq6F9aivP5HpDL04s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N2SYGt83pJ0Z/XiO1oS+A0BQSJdU8Xn+YCIfanCxSQjBZGMrMFduYC+FnFRD7UwOokcVBk1qeWxOOMnShplPjF1zfnLt4c0q6Z2Wd+kPOBQa6FyQOCs1EjORiGdjKg0O1I+37wZSqmVWVoH/+Nctw1Pge/AVuWxhK2o/5BAIgz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQXAnmwU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DDE4C116D0;
	Wed, 25 Feb 2026 17:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772038851;
	bh=PNi0/q4UjW5yMslxBn+SOhC+y5Dq6F9aivP5HpDL04s=;
	h=From:To:Cc:Subject:Date:From;
	b=bQXAnmwUUO4LEEFrLZyamQRoP73t0nSZoDD1T4nV/7Es3kXCzK0p9z9TPjuQYJchH
	 alKkgA5Sms82jlH2bGPfmd0A0WKIr6AAxnJKd03ev7/265PxpVpBQTrYIzmWHKmm3g
	 w+MRUPwbgzoj6nTovchwWBOxM2NuYP64xPgTlixg0EvmccIJIdykNwNKccYdncB2gd
	 MthZN+KjLruyCPN+tDh367gC8EXz2AdPtA8R8EsulxlDx3STY6gMe86YHg7MhBq4fs
	 DsZXlRmy+vEqpcmBK/kXdJrYy3DM21MrSceEGhESZrr6ao/Da9eoG6QplhxY9NpWfh
	 Q8mSv+jOOdx1Q==
Received: by wens.tw (Postfix, from userid 1000)
	id A68325FD2A; Thu, 26 Feb 2026 01:00:48 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: allwinner: pine-h64: Enable USB 3.0 host
Date: Thu, 26 Feb 2026 01:00:44 +0800
Message-ID: <20260225170045.1707778-1-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268480-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3934B19B209
X-Rspamd-Action: no action

On both Pine H64 models, there is one USB 3.0 host port directly
connected to the SoC. The VBUS is shared with the other USB 2.0 ports.
Unfortunately the DWC controller binding does not have a VBUS supply.

Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index fa7a765ee828..f2c453ed344a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -89,6 +89,10 @@ &de {
 	status = "okay";
 };
 
+&dwc3 {
+	status = "okay";
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -333,3 +337,7 @@ &usb2phy {
 	usb3_vbus-supply = <&reg_usb_vbus>;
 	status = "okay";
 };
+
+&usb3phy {
+	status = "okay";
+};
-- 
2.47.3


