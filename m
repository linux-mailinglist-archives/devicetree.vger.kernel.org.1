Return-Path: <devicetree+bounces-292975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBFaOarI+WlhEAMAu9opvQ
	(envelope-from <devicetree+bounces-292975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 12:38:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC754CB943
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 12:38:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A2CA93025F54
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 10:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D928436376;
	Tue,  5 May 2026 10:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OSEvhIad"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4812439012
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 10:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777976098; cv=none; b=C7gnhky0oiRbatBFLVJHE66stAa59E+TyG3RPBQJ1cut/TDS3MfzIV6vCuY4SSlyhOS6gQgSasGEbgFusS/9DhCK9XyCnn9SJAG8LQPcZe3f0bW7/hFJY45xM7KOkd/0MjnEclwmQbAIM/Ss/FNzOcyTf88TE+1pWzrbxK1lW+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777976098; c=relaxed/simple;
	bh=0qeYbfkmxQ+9E5WCeTwSocR0q3uoBNNJ52M6Wnc1d7k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mt2qAAb2UiAnLQDLxRaFzKYML0A2fYtdKImorzYjSxf0UPro5L8DEFy1WM6eEK6sFjzzS78vkz/v3TNE2PSSosYbOTJXldNzN4TtJXlzZFG+OEuhM/RWm2VIqiI8PVEh1LUckA6fjuuis5JzKHjG8Lkexb5D/yz9vD7xpkahg7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OSEvhIad; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-8353dfdad62so1664231b3a.1
        for <devicetree@vger.kernel.org>; Tue, 05 May 2026 03:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777976096; x=1778580896; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l8Eah5020XPyWcD+00bfEGevAL0MUbbOqWk8LFNDCIU=;
        b=OSEvhIadOkq5ZJD/iwM4OFByZkMxkad3SCnV7dOgkQoYPga3wF7f72KFbD45rEfdfg
         GohFwUZIr/UNb0CzUV7mq6xB99rS7YsLBLgiPCt/Do/QMWIPpYkcfDhI7Zsm8oMK+aHR
         CEpM1cg+n0doqTow/2el+AKKTqTHkOEixSXoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777976096; x=1778580896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l8Eah5020XPyWcD+00bfEGevAL0MUbbOqWk8LFNDCIU=;
        b=NCoudpndC6K2dC3aWM7RmnTo9FGkcZ4iSR7ngjcpP5fb5XDvBzAUHMKHGLaoILmtia
         KC9i3Jd18EDw5XH9HEI5ktUGTO7h6XBwdNnGX6FDUHgM8tj+emwHJjJheJJmdNdPBXwi
         9yZbv0yFTEhKwSXuRHTHQ1UkaKLBTvE4Snos4p1RSIODVfufvk4kTnhF2WtmLb3qz12U
         9j7l4YYmrAeRSAwCEreXZbOm06bQml+9sfqpNwt77koL6Muc6jeRKG/ufjg4FtX2IfAg
         pE+BJHchqMtEVwpYVRb/KRGN6UTMRBS7CC3byzpEtOP7zvzjVMpyWveSWDVvKAvRBSYN
         JOMg==
X-Forwarded-Encrypted: i=1; AFNElJ84MP+KVEgdTqOQj9+dHWPTMyZBspfO5Ct4mkrR+7W+wmDOxYWMBDAiiLX0H05Ee++aL/5zpowYmueI@vger.kernel.org
X-Gm-Message-State: AOJu0YwjRTlWvXONu/cEQ2j5+JMr2f6L2VV5gHi7Abki/qS9AFQKF5Hi
	iUHMLU4TK3DtlqrOwjfnaM3JPXlVkvq6LWpi0f8O9knt2BKh+yGY5KvkBmiSuYz2pQ==
X-Gm-Gg: AeBDieuKxcG+Xj3hVqhTx3PbhIqdh8ncQsHgoDTMCtxS8PiV+ejb+kdu7nVQiSKVsi8
	RiUdU0nwvObeaUNl4ratLIFmbl8kW+TNbTrssP2VhfJUlfJFHsPZRDsGASF4jm2xPo3FKWYilSS
	Rd2Hemg8KAkhhuUy2L+EAqMFxXNYUZ10LmV2HkqXRO0cVctix+oJMtOaFDmQd87ItUTyMO55Gqo
	tqhrIK0FrrK30c2jUpk/ZoEckamslZXmtbN/29ugoGciVsxG0VNbWdy/awsaMEeOWEQVl4VIq2u
	lExZ4ipA2+kDDFS4FwfCObrDmdNwbauwSXo9933rbQfSbzckrIHGCTHwAh6KmQ/qo++/eGnp7Mg
	zbSkuUBK1L4bG4JF9J3imffAJJfZ/2LnDQAPjqhzfa8Q28mpPZiAESTOFflRTu48yaPtlcrgPro
	n5S/d3UbM6UtTvAJ1mM4GIiGqZgZHa/366nEfK8AGsWNeB17dgudmFs7jy/fD+mF8f4P99PyPFl
	ZCS6At0Fp4+IJd6ovM=
X-Received: by 2002:a05:6a00:2d9d:b0:82f:425b:4c27 with SMTP id d2e1a72fcca58-8352d16ed31mr14109597b3a.14.1777976096134;
        Tue, 05 May 2026 03:14:56 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:f1d4:2ef0:7d08:9dd8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-839679c8462sm1666121b3a.38.2026.05.05.03.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 03:14:55 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 13/16] arm64: dts: mediatek: mt8195-cherry: Add supply for SPI NOR flash
Date: Tue,  5 May 2026 18:14:03 +0800
Message-ID: <20260505101408.1796563-14-wenst@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
In-Reply-To: <20260505101408.1796563-1-wenst@chromium.org>
References: <20260505101408.1796563-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6EC754CB943
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292975-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[chromium.org:s=google];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[chromium.org,none];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_SPAM(0.00)[0.822];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_SPF_ALLOW(0.00)[+ip4:172.105.105.114:c];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.98.90.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,chromium.org:email,chromium.org:dkim,chromium.org:mid]
X-Spam: Yes

The SPI NOR flash is powered by a separate "always on" 1.8V LDO
regulated power rail. This rail is fed from the system 3.3V rail.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- New patch
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index dc1ba143ccf2..62e2d7616f20 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -47,6 +47,17 @@ memory@40000000 {
 		reg = <0 0x40000000 0 0x80000000>;
 	};
 
+	/* system critical LDO 1.8V power rail */
+	pp1800_ldo_z2: regulator-pp1800-ldo-z2 {
+		compatible = "regulator-fixed";
+		regulator-name = "pp1800_ldo_z2";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&pp3300_z2>;
+	};
+
 	pp3300_disp_x: regulator-pp3300-disp-x {
 		compatible = "regulator-fixed";
 		regulator-name = "pp3300_disp_x";
@@ -762,6 +773,7 @@ flash@0 {
 		spi-max-frequency = <52000000>;
 		spi-rx-bus-width = <2>;
 		spi-tx-bus-width = <2>;
+		vcc-supply = <&pp1800_ldo_z2>;
 	};
 };
 
-- 
2.54.0.545.g6539524ca2-goog


