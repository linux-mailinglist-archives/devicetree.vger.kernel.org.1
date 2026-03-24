Return-Path: <devicetree+bounces-279974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNjIFFfBwmmjlQQAu9opvQ
	(envelope-from <devicetree+bounces-279974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:52:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA563196C0
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:52:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D7D243088D5E
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 16:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D9A4070E9;
	Tue, 24 Mar 2026 16:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQaehjJr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128BD406291;
	Tue, 24 Mar 2026 16:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774370645; cv=none; b=ictswYhMlfEL7Jg+h94CLc+v7GGeqXNSICtOsYuoJD9/X1nHIkzgRo7qmA/yzWlkRBwRRc79/3aTHt3m23d3n9cjPebqBHJ345t2+m1XcIwy4vNuyeDhxGRRNxVKVL3G5fUvtZAqdSvp5Dp0gztJ+KVTzgYA7EtC40aqi+aICZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774370645; c=relaxed/simple;
	bh=d2usvZzl3iy+LSd+yBZb4LfU83ScHAI81Xk1hz8xX44=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ceCykdOSYXmvmXB73HSkyQ3DWbBNYXaUPpFPzfZkPuuyS3zi18nXK4eF96CzSrptryfi4LyqRSdWe/S0mojosm9IvEy+FHzRuyMAkyX4TEUMfe3TDuvDFqTNzGW9fpuc7tXT9KSfML96I0owcsFrmtQLrWVVP4tWctN0RsM1mpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQaehjJr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CACDBC2BC87;
	Tue, 24 Mar 2026 16:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774370645;
	bh=d2usvZzl3iy+LSd+yBZb4LfU83ScHAI81Xk1hz8xX44=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KQaehjJr8t4bUSbUTEGVQT2xDGVv40IiShtPC8uoYCf0awgsoDTrwcYKHDbfREA+K
	 34UqJSiTmESYONEWMDK7dV6YNZUMqCzYTvVO02zVtp1I9TTiC5/gNa2p+ul7huAWxf
	 WFjl0c8qXVGFqh/hFdH9J5AsByPb2qW7MCAq0RpUIxLRzLPcfVPuCQ6xQcS0vn4rOX
	 VW31rGBGIcuhmbnw6J8YomWxFmFQGDjjBpW1ehkX32EnXiF7XNZyUlF+Q+hLEVOt+l
	 iignnGxW2yVpB5JEtsOjG6YcWqlEB50QJkOubK6CmFEWIhEiy8jCVf+nWaVYLGNxvD
	 L86M3xvBbXXAw==
Received: by wens.tw (Postfix, from userid 1000)
	id F22F75FFE0; Wed, 25 Mar 2026 00:44:00 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: allwinner: sun50i-h616: Add SRAM nodes
Date: Wed, 25 Mar 2026 00:43:55 +0800
Message-ID: <20260324164357.1607247-8-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260324164357.1607247-1-wens@kernel.org>
References: <20260324164357.1607247-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-279974-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.45.198.192:email];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,1a00000:email,0.0.109.96:email]
X-Rspamd-Queue-Id: AEA563196C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jernej Skrabec <jernej.skrabec@gmail.com>

The H616 SoC has a video engine, and two SRAM regions needed by it.

Add the SRAM regions to the dtsi file. The video engine will be added
in a separate change.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
[wens@kernel.org: Add VE SRAM region, commit message, and split into two]
Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 28 ++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 8d1110c14bad..0c50a73def65 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -182,12 +182,38 @@ syscon: syscon@3000000 {
 			#size-cells = <1>;
 			ranges;
 
-			sram_c: sram@28000 {
+			/* SRAM C */
+			sram@28000 {
 				compatible = "mmio-sram";
 				reg = <0x00028000 0x30000>;
 				#address-cells = <1>;
 				#size-cells = <1>;
 				ranges = <0 0x00028000 0x30000>;
+
+				/*
+				 * 0x0 ~ 0x20000 is partial alias of VE SRAM below.
+				 * 0x20000 ~ 0x2ffff is (partial?) alias of DE SRAM.
+				 * However the whole region is toggled together.
+				 */
+				sram_c: sram-section@0 {
+					compatible = "allwinner,sun50i-h616-sram-c",
+						     "allwinner,sun50i-a64-sram-c";
+					reg = <0x00000 0x30000>;
+				};
+			};
+
+			/* VE SRAM */
+			sram@1a00000 {
+				compatible = "mmio-sram";
+				reg = <0x01a00000 0x200000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x01a00000 0x200000>;
+
+				ve_sram: sram-section@0 {
+					compatible = "allwinner,sun50i-h616-ve-sram";
+					reg = <0x000000 0x200000>;
+				};
 			};
 		};
 
-- 
2.47.3


