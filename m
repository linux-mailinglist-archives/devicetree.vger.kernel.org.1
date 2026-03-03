Return-Path: <devicetree+bounces-270586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFbCBFr8pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:20:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBD71F26E8
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:20:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2D11318CE8F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D884748A2D0;
	Tue,  3 Mar 2026 15:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="j3GMPGX+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA5C481FC8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550840; cv=none; b=sAXoYW0/ZnlWmTpf0eOmbg7TC6D3MFqGEZdLn4MuK4FL/VJD5gSfpPdhNkqvmOgLK7quqY65W1WHJW/dAOk1L8H97HhQyVPylyU38uidKxqcLat/hiOsEfuikDMPAD+BQ+d7nvq3m6s+nMMdYkAAN5oDamE2ywj/h+wOinNL+jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550840; c=relaxed/simple;
	bh=60YTLpePbAhheGlRr0IQd8JJuIK7LJIkkR+TFA7gb4Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UpVbL44bkFxPvK2qu9Lc/0lPkX0+2gAQFMWRzNhrR/+DBDj5HoCILMgS1blnWmeONNp314Z5B71r4FwuP5XGLn8B/0kZOW/1Pix+SywkebbxOwXCVmwRZmVGFj64e0SEynGbWQhuMCaiVeoa1UsYzEZKTVke7c6IggT7LjwOyGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=j3GMPGX+; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4833115090dso59866695e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772550837; x=1773155637; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TcJA/8Mwq453n41Liu4Q1RPW1Mr6IjyitTMqDg3JnXs=;
        b=j3GMPGX+08S1cQgRTP6gf5+I3AdwhZrQfc2wDJXdswwFLY6diN6Q8zSoBSBAP1OJcC
         qw6T8DL5ZrH7Xthd/OtFibVaicG1aWTNxfOzh1U40gfWympY5/J16wh6VEHIpOlbi3zN
         3CfexXbhk/XsDSdUNqvikEKtVDZMcJdjVXIFLEtCqmTcDUxlbRCK/+dcTwohN3Ns2CS/
         tgZD7ZV5Xqsf2PlbqGMECL2EinpISncHYxPET+xLTh+eTnXsdWukO0lMirh16yMDTAmC
         4HO7kLjJHYpFK9XAQbdpLw5rk+FBTZQ3iSeIhnXOesNNkp5ZGrwmcgO78A2UFcSYzQm/
         tnbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772550837; x=1773155637;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TcJA/8Mwq453n41Liu4Q1RPW1Mr6IjyitTMqDg3JnXs=;
        b=SAmSouhh6APhP1en40z0/chxjBL000r5AdiyIZYpK/eO5tWB7p8IriQZ4KSYXoOEm0
         omFHho9FsyhtImiXBVZrIC+AUSg8eAZsgm4YX3Bp68+2l9NRefWGZbb9P4tCkn2BnL6u
         HweLaJLnBA/YIFuGEHiw2Fvvy6gO3/6nMeRsO+65o5FbKkXbNp/tVewsEZRR8nLyhrHw
         HTwtdYJg+XJm03tTgg8+cX6Ja+T6/kev0+kP0u42Q0/xWZxZtJHona2Yw3fzAYEJRcVo
         Txo3S9k1U5T1u78lVfaLMLeRDQOVv53FAmdo4u9G/ngK1KMoC6gw6YbepkNxNRzoPJE9
         ibqA==
X-Forwarded-Encrypted: i=1; AJvYcCXwIabJ+jiQmYbW14TnQVFufPIZdjDLyCAjiMe8yOxbWUmN2VEHRlctzVzMOBaYjnsnekGESlmKw310@vger.kernel.org
X-Gm-Message-State: AOJu0YwH/ntjQ7/XWE6MnoMNzCYG7O+l7Wqoiqm46y8hBWGiJseK/vgD
	DJ/Z/f7fv4ZtqWDyLgRTlIJiyJQDnXBdrV8RZminvdjPiehMT51V0c2QvJjyB0nbGM0=
X-Gm-Gg: ATEYQzxcZTpdCEFAgUCD33xvNKmQr4ahcWvmOJW/GiTw7D3A6KuKqKrqcxYFFI+K/CA
	N5jxZmsOAK1gxCz6eqLSQ+wq4WKoI8Bt95H+t8Vzjvky7Co5Fsc6D6qqJIBjahyyEyBUEjRFEog
	DzMl4dtToWj9RgoK/hcoTj6bkOfPma8JfnRIII5l6VChaJj09u6aH4qa/RlXWTGum/I+3y+BC6V
	ye0CEuQstFJOYQCzKzDZU0xKWN/6nuCMdiuZsahw8yx8W9pLxcKcL+PB2TsSx6+7WbJv43kpyb4
	HipIB1nVafHV+Vb38nL1VVift8O8tWPtaiz5jSGcMsiANhlQ/JIJP6hl/qYq/QOGzJYBLDJbl+c
	pUMABoX+xnR16xPWq1FeXnoCIy4lAB1GCYZXZA7acXYhYsyVFGFTS88rszcLAi0qOPBa8/wdByZ
	u3iLG/aD/v7iDrF+JqFXO1
X-Received: by 2002:a05:600c:138d:b0:483:361b:deff with SMTP id 5b1f17b1804b1-483c9bb2c10mr288804005e9.14.1772550837470;
        Tue, 03 Mar 2026 07:13:57 -0800 (PST)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485133a928bsm16836685e9.18.2026.03.03.07.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:13:57 -0800 (PST)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Tue, 03 Mar 2026 16:13:03 +0100
Subject: [PATCH 5/6] arm64: dts: ti: k3-am62a7-sk: Add r5f nodes to pre-ram
 bootphase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-topic-am62a-ioddr-dt-v6-19-v1-5-12fe72bb40d2@baylibre.com>
References: <20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com>
In-Reply-To: <20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1183; i=msp@baylibre.com;
 h=from:subject:message-id; bh=60YTLpePbAhheGlRr0IQd8JJuIK7LJIkkR+TFA7gb4Q=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxlvxapbb+ukrBkiiWL/dGWrBdzmU5+2qJZLJB4bcXeJ
 juRqrbUjlIWBjEuBlkxRZbOxNC0//I7jyUvWrYZZg4rE8gQBi5OAZhI92NGhqMTJx+Jf+3y64SS
 fGqP+JfK+zmPogS2zPB+eWDNrfYb/lMZ/lf8ujlRX8Opj73dWtMvUm/m8dOJPHveTLy4d36ebLf
 ANiYA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Rspamd-Queue-Id: 7EBD71F26E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270586-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,9ca08000:email,9ca09000:email,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Action: no action

For IO+DDR the wkup_r5fss0_core0 and the
wkup_r5fss0_core0_lpm_metadata_region need to be accessed before RAM
setup is done. These are used to read the lpm metadata region in which
data is stored to resume. This needs to be done before RAM is in use to
avoid overwriting data.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index c381cc33064ec427751a9ac5bcdff745a9559a89..46483d4085c20fc297d28a49ca7ef5d4bfc4ae9a 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -75,6 +75,7 @@ wkup_r5fss0_core0_lpm_metadata_region: memory@9ca08000 {
 			compatible = "shared-dma-pool";
 			reg = <0x00 0x9ca08000 0x00 0x1000>;
 			no-map;
+			bootph-pre-ram;
 		};
 
 		wkup_r5fss0_core0_lpm_rest_region: memory@9ca09000 {
@@ -957,4 +958,5 @@ &wkup_r5fss0_core0 {
 	memory-region-names = "dma", "ipc", "lpm-stub",
 			      "lpm-metadata", "lpm-context",
 			      "dm-firmware";
+	bootph-pre-ram;
 };

-- 
2.51.0


