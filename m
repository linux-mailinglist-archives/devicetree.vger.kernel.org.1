Return-Path: <devicetree+bounces-265358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFMMGLEkj2lNKAEAu9opvQ
	(envelope-from <devicetree+bounces-265358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:18:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 159E613647A
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 14:18:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7776F307D104
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 13:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 476BC3612D9;
	Fri, 13 Feb 2026 13:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ByILpjFy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717D435E553
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 13:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770988683; cv=none; b=rxEQfjP/lq7vBucq34uaJJbtpLafqH83967/mXPGminA/4qHzXLSGaj3sumkj2q4esHRxc7WwQOSqIUtkBS7LcOYzcdLU5uEx/00LQbEqIFp/20s1HCTfTmkn1r9iTp2mIOhqAvdfY0Mzul8VQG7DTL4KGcr+QOIEFHIj+tNO9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770988683; c=relaxed/simple;
	bh=zUaEi9qf1U/CWgI+hG7dHrznatDAa0OB9UZjdffR4yU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aCyzsvncQjCK8qKpatymP2Kc40b+k0to030kIvHZJ+MRFBXVvIyVI7tpF6ELW++AKI6J3J8XCE2BYq+jRRS7kMfM7oGIbethXA+dt47xyu3ZshnFdHhyzkWPTvJ4fih9tPu63q1PNoJC/crvwD+pBX/ZMrmzMWPrGZf+g9CYJ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ByILpjFy; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4837634de51so2042365e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 05:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770988679; x=1771593479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QrPmuJfgQMK1Q50aFaUvu6q8a4C0V7DOxqJ8gmVb+ks=;
        b=ByILpjFyzSaCLwciYHeRee185kmtzyzgd6o62OYctRi3LK49MWAZcKUCf7RzWN12sF
         nwSS27ERFWXrg/MkPHgGW3Tpe9TkDCzdqsOtEEWeSTuD67dMGAQi5S1Qp5YRjgMlwRJX
         wXsMB5WFzssCs18xCTF7w/PEhmB9h6nAzXE4gVGGNaJbHtEHGEIQOSDhVccvykQx/dDh
         ezxUZXAgpvs5Hlb2hC9j/nHPpKR1JvmlhS4ckOtgcZGHH6HbjlQiDg2Z3xIRua+EpS4N
         lqClQ1kJbnSDY4nSXXbWbhOfp20eoPrNU1AbTdOwnugggRpVOP/kJJQQpvM+sve2GuIT
         rh1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770988679; x=1771593479;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QrPmuJfgQMK1Q50aFaUvu6q8a4C0V7DOxqJ8gmVb+ks=;
        b=FC1NXlqDND2APV+Q5ly0XmWIwLNPTDMi390XFD1cB22Jje2ifYeXGr02GaWh0F6vSd
         8eA7SbTJJITAEgELDoe2xM1XRrkiQ6F6zKYTGiYKAged9ImfDlUA7sKNKnkQZlhN/0uu
         S8QgwpW578KYdEfboyHCzHAE/c7Ed0WG2UqRFzVQvf79IrKqfGl0ungectXWxQsoZ2wr
         lB2sez1gNnGa9oTfkQjp2c98CdejiuO/MAXflHbtkcfo78UsrAVWyWpcBLFwpOtA3uGv
         xZTJY5o+A80qgbHXE7qyfQccF9M1XHqNWVczhatB/yUnGRC54SqANQr4lCZUNYyf/79H
         Bspw==
X-Gm-Message-State: AOJu0YxVsGJUDPOtmTBjoylRxfHpzDdF73kz21VMl0dz1xIzZE7DiBel
	yfC3gYEVPGxHgWKtonD1hKw9l4fz+mJswbdmsuFA5MwQjtKfoM0fy8i4mYS2KA==
X-Gm-Gg: AZuq6aI0j4ZhTs67s/UoZWebdwouSjHapi8PlaWadl7cI4zaDcZLRPVICNEAQout43S
	SYD400SLakBv7ofe/OFr87soDCq9MeV0pwCYrj3e98yZZy8R0j03OayzktG74ozPQlO7cXAAiZ2
	zdvXMcbkYxU+6OZcFqLFBRtD0cEi8FgIDFXHmdT20honVRjS12IBi22Rcy2E+J2coumOuqg4Jn/
	C4T5KBYtB0gTR0FSkFDqmn0qvfhwfXtTO44n5Po9hA1vUfd+AKPKoqoGlWr7zx/hQ2zIudAV/U9
	13t0ls37LPzAfa3kqJ8Xcss0TsUoSKBrfkEvTZPITefoilTpbsdmy48XAFdxAgNxZOrS3yKcwgm
	APY/qBlHfP25JvWi0AHPUeUIPgiCWP/SUp8Rtydl5FIR9KuXcWB1RtoMo0YaKzE2aYfkL+Y/Z4A
	J6AIL2MUTQ8ikB2UJJjfILVCqodkCJJlGqg6HXI4ETmTcZFrVrmWkLSjmMy6LExPefEhZVqb45K
	Hu7Pn7yWbAvdbwBA9if+cFTn+ePF2AnF02WEg==
X-Received: by 2002:a05:600c:1991:b0:480:2521:4d92 with SMTP id 5b1f17b1804b1-483710858bcmr47724815e9.24.1770988678905;
        Fri, 13 Feb 2026 05:17:58 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:ed1d:fb0d:baf6:e4d9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4836ff00332sm60942925e9.2.2026.02.13.05.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 05:17:58 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/2] arm64: dts: renesas: r9a09g087: Fix CPG register region sizes
Date: Fri, 13 Feb 2026 13:17:42 +0000
Message-ID: <20260213131742.3606334-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260213131742.3606334-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260213131742.3606334-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265358-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_PROHIBIT(0.00)[4.200.249.192:email];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,renesas.com:email,801c1000:email]
X-Rspamd-Queue-Id: 159E613647A
X-Rspamd-Action: no action

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The CPG register regions were incorrectly sized. Update them to match
the actual hardware specification:
- First region (0x80280000): 0x1000 -> 0x10000 (64KB)
- Second region (0x81280000): 0x9000 -> 0x10000 (64KB)

Fixes: 4b3d31f0b81fe ("arm64: dts: renesas: Add initial SoC DTSI for the RZ/N2H SoC")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
index 7d1719812360..b5be0c4d34d6 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
@@ -1092,8 +1092,8 @@ xspi1: spi@801c1000 {
 
 		cpg: clock-controller@80280000 {
 			compatible = "renesas,r9a09g087-cpg-mssr";
-			reg = <0 0x80280000 0 0x1000>,
-			      <0 0x81280000 0 0x9000>;
+			reg = <0 0x80280000 0 0x10000>,
+			      <0 0x81280000 0 0x10000>;
 			clocks = <&extal_clk>;
 			clock-names = "extal";
 			#clock-cells = <2>;
-- 
2.53.0


