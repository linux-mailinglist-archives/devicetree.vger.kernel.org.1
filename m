Return-Path: <devicetree+bounces-260359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJumGGH1eWnT1AEAu9opvQ
	(envelope-from <devicetree+bounces-260359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:39:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0DFA09F0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8510530929CC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49BA134FF7A;
	Wed, 28 Jan 2026 11:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XFT0kK+4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EF834FF4F
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599847; cv=none; b=I/hlnzoyp6toBa9iSWEMCTSR8bl4DQMgT6Qty/IEGhB74Zh3IN+uxbprd1qvwlJHiqGJRJIMOBIswnlv6RBhauSZ+AihmoOhyWOcb+AiztWX8ORZ2Tc9/sQORabd4+zZaZShTHaQHBvDW/ESjOqfk052kM+t5p+RBpo5GKQWEz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599847; c=relaxed/simple;
	bh=Wv8iBQh9BhPWMxxUkybXy7B9Wi0QfwnJCF9mYOUGzq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RuQzDeA0UyNyZZ2prHKkLUpi+sXFzEXan8CqRsRMn13QyQ6sPCl6GCo9bC5/01w95jaonG8J3tac8zTfgWhfqhGxTrGU3Ux37HM+WoaG3Fls31JjP7ZRlAGiHRMrOjWX5btAYMk5k3On0czccve5Gshdww+2D+AjS69R8UAHjCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XFT0kK+4; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-b885e8c679bso822241966b.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769599843; x=1770204643; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TYnWxJV7wO+oC9V9UGDmvqoLF/l/Si8kYGh6iersI0Y=;
        b=XFT0kK+4AhBCLYnPyhUAHLL7wg1JkJenkkoA8uAsAMkNAxla8ez/xx0hxT5GJEf8df
         ZODlMrYpmfZYyFlvdMRf6TTucQcGmutZNje7yJfXa7ipCxhfh+1o79I4VcQNsnEba1vF
         kSRRgrIHkaURSAB8fBqZjQIzV+JM6sUcGGKHr4s/fCL5FhiSTtIq/J+WtYbpJVgeoGaJ
         efjV4G/U5Q7T9IrxZa/RjlQCJoBPI+LLno6A0NhPCHK4p2zvp4GiH4jO6jLlr55bSgRR
         2dLD587oNdOCKWPU+VhpVP7DVIdVHMXDQnd3UumgB81ngnFOJUczIx8Ugx4X+hVLpWXL
         Ixkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599843; x=1770204643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TYnWxJV7wO+oC9V9UGDmvqoLF/l/Si8kYGh6iersI0Y=;
        b=BKhLRF7VhBz3u9fiEachoFMx6iEUlSZJ6Fc80H8gNMv/pQAoT4LtGTsyn95nF/Tswp
         BUQN2x4fjUwaqM3/cZs5Bi91Edct3V5iCpH41azfiGHrAzE945JPfoFAIDIgd+0vB20s
         l03Lr/HORwCqnk8zADMVlXPkIOyaHmfB/DFcvy4M+H2cPFSQjdYCbqCxRKdBkhlQnLEN
         DoTcYElmT6ZAn0UafYYO2JZQHiiRn5ldf05ISP57Y3knfZYrUTAX4uw5qwiG8nd6IJhT
         og1M9egtTn+CCeLg+rqNFVKKyXmSzKSnstMWJMK7TZ5vQbmWetL2c2699v2VDSA4pil+
         wbpA==
X-Forwarded-Encrypted: i=1; AJvYcCUb/dFcKqRatxA1+YX4GL2fLPbmKTtSpYSkC9VxJGyAwC3Jryo3kSALMEhVYpv+YxRwI3OzovI242KT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo2ImtaM5BZyY2PL8tnz7jAf4Ly9k4SY9QcfayrAIPM35ZKha2
	IcEk5S+rJy7XNThJIQAnspIj1F+tZqhBJq+hy89E65WBXsF7LuinHE29
X-Gm-Gg: AZuq6aJZjjYx/+SRCAityrvHzmprk+SRL9TitzLAZKt9H4QtW7U+QAeW0I8q0kilJ2m
	3UBvnwKABP0e/bwjm4MiP8N98ZMp76u20T/hQCAEt/MaAJqgb9PK2EhNDLr9h2LL14PQ2upq6pg
	/cpQ2Iqv8n25VJ+nZDPKBbnAqxBeynOkk99+dWR2Czsu6I42hOqhk1wqPGQVzmr0Q0nB+bOwO2a
	cogDV13VLMs5kwCmqw6O7p1tgFeWGLm9rGmOnKcD6giiVRb+mimn1VmOVIgb3TWWFvl+lpZi+iO
	rBicj4ya1CGkqa9iC5YvVpyc2Me6PSgH8F+CywEaYcxEUMzUnQ06oY2JcCmsljOo0WOPL+fgWzT
	Q8Mz13lYMjI2WI4Zvw8xjwvQHXxCwzTot5vNT5VeqI+hTGyTVxkbmulkMo75hhyfT37ao8nBpER
	mf7PxI/ugSTc4DRdhM7bN9sx8FRy2zcIOc04A=
X-Received: by 2002:a17:906:9f85:b0:b86:f495:5e4c with SMTP id a640c23a62f3a-b8dab3cf38dmr352676266b.55.1769599842557;
        Wed, 28 Jan 2026 03:30:42 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:e29d:6e0e:72c1:d15d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm114400366b.46.2026.01.28.03.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 03:30:42 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 09/10] arm64: dts: renesas: renesas-smarc2: Move usb3 nodes to board DTS
Date: Wed, 28 Jan 2026 11:30:28 +0000
Message-ID: <20260128113032.337231-10-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
References: <20260128113032.337231-1-biju.das.jz@bp.renesas.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260359-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 0D0DFA09F0
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

SMARC2 board dtsi is common for multiple SoCs. So move usb3 nodes
to board DTS as some SOCs (eg: RZ/G3{S,L}) does not support USB3.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * No change
---
 arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts | 6 ++++++
 arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi    | 8 --------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 696903dc7a63..cc75f6fdf7f5 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -248,7 +248,13 @@ &sdhi1 {
 	vqmmc-supply = <&vqmmc_sd1_pvdd>;
 };
 
+&usb3_phy {
+	status = "okay";
+};
+
 &xhci {
 	pinctrl-0 = <&usb3_pins>;
 	pinctrl-names = "default";
+
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
index b607b5d6c259..69c0101ff7f5 100644
--- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
+++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
@@ -107,11 +107,3 @@ &sdhi1 {
 
 	status = "okay";
 };
-
-&usb3_phy {
-	status = "okay";
-};
-
-&xhci {
-	status = "okay";
-};
-- 
2.43.0


