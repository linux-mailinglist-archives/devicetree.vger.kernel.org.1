Return-Path: <devicetree+bounces-267984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLOoBejSnWk0SQQAu9opvQ
	(envelope-from <devicetree+bounces-267984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:33:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2F8189D55
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCBC0304806F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D7083A7F68;
	Tue, 24 Feb 2026 16:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YLQN89SA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05073A7840
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 16:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771950817; cv=none; b=EUwvyv4kahfDzTu7Cj0meno7mltkvkbmsiD09vaUvQFGTyAoNb4YUKSUs6Nge2JALxlR9EC43ITLjXf6coz379svEsyT/kOQiOXuQqoupMb0uicm9QAeervd0ZVmWze0PflCXIWcAh4zAuMYVAnPiAW0w4WWWuDwb4bEq/nQldg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771950817; c=relaxed/simple;
	bh=YigxfMcUM7F7wDTso5bAXadDsaOG75M8ya7KhfWn3JY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vtkv7JXtz6qrBUKZa0vz25CXMS1xrB7pegjY1t1Z8BPweXhOuHqi+Zl/xuAuye7Piv18JzspvPVXN8/Bi3W9GnwbMTLdPcF9ZJ0qybXJqQQtYE38UrylOh7Y3OPa2gMQskMQLYiTJBvLqhvqIKCe00as8h7Xb9PJtIAGF54FZGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YLQN89SA; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7d4c307db9aso3140673a34.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 08:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771950815; x=1772555615; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QZMGPSayDx6CXME04ten6dFk9tjtVuD/jHId3mdxWg=;
        b=YLQN89SAHacD0pms5YQcewzUGRfmvpyV1ixLd8JJVN1A/2kMDU4a29b4b3huFxKyAF
         MFEN3Z8cN7Uf7QTyPtjX3IIthtuzG9n+c0p5P5ME2hVnl36LLDNsZgl8kuLE8HJpXMbn
         MdYniRM22iEBM9hitfS69hX6aXEbZUKdG0Z8yam0BLf0U6Dy/JUohmrv3GJ2yitjRZmU
         OEArKf5AT7aiUqYD87etLAXOVszlso+w/mlWU2vmKGqp2kGPPYdCcQ+Mgf4RTaeeWYIu
         sa5mq2HcBfGjjAb9INvsVFp8em0MJ3vnoYIgloZ7IunVMQGVKmvjIE+4jAEIK+cdipzL
         DfTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771950815; x=1772555615;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5QZMGPSayDx6CXME04ten6dFk9tjtVuD/jHId3mdxWg=;
        b=gSpSbBdiPfOtogMIFKTIChC5rq3JBhzd9RLOlGzEmBhDTcjysdnDkGSPV2+THGjVoX
         x6+meE0hdOx3B9Nh4aWcxlSxOc8wO7Zj8noAJHtrmTuoBjuAXnZ97FvFzoZ6pBhcJjDv
         aWMBOrM3frgrZvKqZ90FNnbKC2fnaGX//449u87tSX8f2lA3it1JyQIMtVJBSMaIAepc
         ZKs7YwAL09n0Ee0TNc4EB6a5e2H3Qw3BiGy2YFaLYLLtoaW/4MYWhV4OTUY3vcTsUhbe
         it2c2vR8puIJUSMF3v8k/6Mu0qtskpW5vLwPlKT7FQVtTh1L79qnr/NjNgnJhYHizCMh
         8skg==
X-Forwarded-Encrypted: i=1; AJvYcCWpkoaau4K/YEdRzhuyciR6gaIT1CqD3KQsUdTS0I6dJ2Mtl05+LyKU/aTyKKLmbf+Ae+9v8T7aSBLJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzIPJzXrzX+flrA4Um2E4HnOwVSi0ShCFjQtsdqVVzt3LnlT8Z+
	GvLZnwt3nakbDgJ+5263UsDrrPEk9n+Ag2EaAssU19T7bonb7eccllWL
X-Gm-Gg: AZuq6aIsXzbyl7mZ5IhpmYSEHIBwS4yE3wJaFWUY1rTbyXmfn81V6jDUMfsm/PXNPGI
	1bnVdirR84Ow77gGd9JHFJZycf8C4/4C4a+YYCuhOslROJnUZ6Z32tK/jynXy9QQBJGlfvMYXuQ
	cJpb3RUj2ZKW41ygN5YOcBPJeVRQY5RhzyXMf0G+clGf+zckKD11yeyIfG+ffqI2CXewOJQQYLh
	Og4MRToxV/tz6mKUNxaX3JUAzmKQNgJymtDtUGee5Va2V0Qr9rdgDokxVvjOqsEUrB/imMZayp5
	iIstALa7BQDn9fCfMwFwgFD7TpeSk13DnNJcgw2GfNNFsWdIu3h+S/X8hKiOIeMK8Z1Egp3fEYu
	9XbTNgT0iI+78gpeE5XRYl2Qtftd3YZZkdy3xm/Vjlvcw4KxC3npKOsMNCzrzTfrVTaNbd8EGJn
	Pbs1DPIbTTgPMaxl5+09Ta
X-Received: by 2002:a05:6830:6603:b0:7d1:91c9:9e5a with SMTP id 46e09a7af769-7d52beab9camr7144263a34.8.1771950814470;
        Tue, 24 Feb 2026 08:33:34 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d0725c4sm11060130a34.25.2026.02.24.08.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 08:33:33 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Tue, 24 Feb 2026 10:31:05 -0600
Message-ID: <20260224163109.370930-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260224163109.370930-1-macroalpha82@gmail.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-267984-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.68:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,5b:email]
X-Rspamd-Queue-Id: 7A2F8189D55
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..dca270abc475 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,18 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		interrupt-names = "INT1";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD6 IRQ_TYPE_EDGE_FALLING>;
+		mount-matrix = "-1", "0", "0",
+				"0", "1", "0",
+				"0", "0", "-1";
+		pinctrl-0 = <&accel_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c3 {
@@ -932,6 +943,13 @@ &i2s1_8ch {
 };
 
 &pinctrl {
+	accel {
+		accel_irq: accel-irq {
+			rockchip,pins =
+				<0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	gpio-keys {
 		vol_keys_l: vol-keys_l {
 			rockchip,pins =
-- 
2.43.0


