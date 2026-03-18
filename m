Return-Path: <devicetree+bounces-277331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLgrHz/Lumm6bwIAu9opvQ
	(envelope-from <devicetree+bounces-277331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:56:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 934292BEC7A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EC07231EBD24
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC2FC3ECBDC;
	Wed, 18 Mar 2026 15:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="z6p5VMCS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A604F3EBF1A
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846868; cv=none; b=NsCKeiNi2kUpECtkfw6Np2hZBmM6e/Op4Z5IBiPzVNJySCAVVVoa1TpgP7WbR3fTRYh3T2o4OpZK4upKdbWykcm4dtwK3hxb4lG0G3fVhBxnXWaLZfy7jwNa/4BVCbduNCLr9cKHxYE3FhFVQMoY5t8ldu8msPBhsmCXQ2EJnkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846868; c=relaxed/simple;
	bh=edVr0rbhOgkFhSfFFpjtgCVxX4FcaJ3T2Pi370Z0o0o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mh2oYQezVdU1tjkPHO4C2O4wL3OpPusxjBu+VZGNQAkldMf138YmxAJ2gbNlwFEEUizR1Z4yaTeDqGD1iWGj30C/YJF7HMK62/pKDi0BTIcP1OYLQQCi9GmTTolqqyONnn0jQ54fw29Bi2+QxCukv1uGg+jvzmZnmKqlJnuY0HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=z6p5VMCS; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4852e09e23dso60096805e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773846861; x=1774451661; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fnIikZ33fceOx0YIGtLUvBXoWdyjzbgo3+1Q5/tnQ60=;
        b=z6p5VMCSlxDI3Px+glaifyI+uenlBFkP8uhQCN42PLj2GVboanZKD1xFJkCPYULLfq
         2ASHBrpO2nZZhO5NbemUR3jaP5NwWPSSM4OZTPn32KpGQcAjneXaBLspasQT9hq7S/k7
         6emowG6eG8gBLl4ROteGqqIteqXNm+rQorWUOuHv+YT4yjmeWSGfPaSI83NJVdWWZ96L
         DdSXgRrWHtVliW11Z0R7gXqv7a7VC8e84VrISLW7cxiRmYA52f3XPYO/NDm8/oTyBVIC
         gET1XJAs6qSQbqNUAXD1JBi181L3V+3OvEv/x28OssQA+b0kBMFtLsalcuRbNrKTcOxG
         UwDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846861; x=1774451661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fnIikZ33fceOx0YIGtLUvBXoWdyjzbgo3+1Q5/tnQ60=;
        b=mhxVFocSO79iiNiv/lpTHcRXuk0zQw7VdSQAHHT95BTVpY/32Y9M/f2yaeQ7TVONWY
         6LD891dU2Yl1iFLBRreG8SsOLVzQNLDMQJc4jfGSw9mtqIBslvYPO4FVyr1BMBsRAwoD
         52dBsPSLy1bmxACmvNXYkLKp/icLQ7nXgBA/8CcerdVChIQ0rrMUkL0MZYCq8kOH9zVs
         r0l1DHsw1CDFTa8o4ZPJKT57686LN8EkHjCiTCy9rqAM3ky4+SZ7IVXRD4JN9leDq/r4
         VbqjMxZ0d6JIbQuysX7hUxH0O/ioX2ThP/TrRMpwCrmD94nl6Y65A4sosZ/BFCPPDDeY
         bDrA==
X-Forwarded-Encrypted: i=1; AJvYcCUbnHakk6PrZ1hrLrfeFBRxs4XCPV4iJiGN2+9z0zM3cKZPzRuPkeZ1CiohQzif35kozn9jf8OQyBtX@vger.kernel.org
X-Gm-Message-State: AOJu0YzKbnU6nEr5R410jvMUFoeiUkagSKcnPoLUN1eirqJeu8gtf7uN
	J2XSwsro+MHQqifDI094hqbRAOZweSBi/cMurtZT46pjfZJtbiZUhvoVMOV7gHNwjc8=
X-Gm-Gg: ATEYQzwBEV2RYkrt/kudKnNXAzBZaDjzC6qFU+LeUY2S91ptz9NEZgdFIuRsyyZmDZw
	YVoaCx9U0TYeaxLsVmoQMvvJOEX6uaU0mKXdmOx2pitGGX6kubXxlJGrQEac/0mmOyBwD/xLhfl
	5QdFqR+1ZIEyswT3dyvvplW4bhtqx95EELa12v53iO05GUaukpB6MAD+PLayUDHpjBFuUpi2212
	89R+jS89opQft9d4APHV8pPGQttcu6E7GcpphiDEGiTKCs2bW4Sh9Y0bZ8CT9RJ6PZxHhd0Skqj
	xo3Fzg1Uol6Iw4A8Ib3EP5E/yD4d+qfcJpG0knicTccux6wZo2tY1EGV7tuWf4GLv6wLtsd6mvt
	HNXQHkUy00B8DXFX5MTQtHvOk4HN8C8dIrdvkhkgWeECGy56N79Jfu344LHsgtAUYqilurP2CG8
	ugC062SYdl+oBR5kVEQ78c
X-Received: by 2002:a05:600c:1d0a:b0:485:9a50:3370 with SMTP id 5b1f17b1804b1-486f4429b1bmr67241605e9.8.1773846860878;
        Wed, 18 Mar 2026 08:14:20 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f5e162cbsm26759545e9.9.2026.03.18.08.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:14:20 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Wed, 18 Mar 2026 16:13:12 +0100
Subject: [PATCH v3 6/7] arm64: dts: ti: k3-am62a7-sk: Add r5f nodes to
 pre-ram bootphase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-topic-am62a-ioddr-dt-v6-19-v3-6-c41473cb23c3@baylibre.com>
References: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
In-Reply-To: <20260318-topic-am62a-ioddr-dt-v6-19-v3-0-c41473cb23c3@baylibre.com>
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
 h=from:subject:message-id; bh=edVr0rbhOgkFhSfFFpjtgCVxX4FcaJ3T2Pi370Z0o0o=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxdB02OVr3o/S3NEN5WfPnCzrP8d5b+mCt7bfeuhDXbI
 spXC2zp7ChlYRDjYpAVU2TpTAxN+y+/81jyomWbYeawMoEMYeDiFICJsMQzMqxfsqPjz+3Z7lW/
 DfevSH2yiqklwTYpoUeP9fCJxTVtxVcZGSZEce3/ftKfa/YMmepXm/lP2wW/v+ZxzkbHa5Z7/tQ
 zjuwA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277331-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[9ca08000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,9ca09000:email,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:email,baylibre.com:mid]
X-Rspamd-Queue-Id: 934292BEC7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
2.53.0


