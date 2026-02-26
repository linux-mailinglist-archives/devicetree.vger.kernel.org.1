Return-Path: <devicetree+bounces-268935-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KJQGRBvoGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268935-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:04:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 134F41A9852
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:04:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0DFCF306DD41
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3DFE426D09;
	Thu, 26 Feb 2026 15:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mRdW7TFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE00425CEB
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120845; cv=none; b=qki6SWYcgFXi54d0HQ2ipF9k09wuLTx4D2T3xddtMSCOKDKAyKY66KrobBtamC3TAt6ty5N61DO/5WqZMJW94mlcjveRHHvGFkZcUXoLqVTy2djKZNgmSsDIh028wn2ftW8BwRACD1jJenrm4VOntlIkcYGHJeHR+ySLhviX0Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120845; c=relaxed/simple;
	bh=kgl4foMndEPG7F6jXhp4j7AMJhwvQjtbJ0xHBrZVLj4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b6e0yQL2+I0JmoZNm+4LmAReRrzw0z6QC11kCKte+GtwtsLr+jGTDt/wHgBq9pbMlo4mv4YtSoOMH2fqyrc1D42brgxpR8M8EfNVmku0YKQlGLEoUiW8BN+S4QQxtR1lr1Cg5UJiXPDmsrl2ROxltT1ZUhdkNiCufMTgnCVf4Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mRdW7TFZ; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4834826e5a0so11352805e9.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120838; x=1772725638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k8v9KGUdN9vhC+5Sfj+8HpfyMGxxSUWxCRI9OZUNdGo=;
        b=mRdW7TFZivwe/aX8EUexWG/CkBSW9dxxuLUod4ojJp9JHW3m3d7JdnVUjcUL6sOj13
         RQOHgTueFF3Ye7eibTlHE3UyjFDZ+a2ipY2ck3yCI1OrTpUsTjkAnXfuW6s8yPN8l8Vv
         YJpy+mncTqf9LMkRWqCUlGM7YhuJIjA2pvGiLVFNR0Kh7ArCIfz4Ttt2zvSJ5qh8awlm
         2Sy9/KcKyeTR3811YqTYcrXNafch7hW4pg/nKXrhBjBTCASqF+seJAef+DQdSo57Z1UB
         XQ9aWz7a3SUCMeGdN4DIv8RMx/bshtdhD8xdeeRTTqiJUJBhar+qY+ga7EE9svcKmjCG
         t+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120838; x=1772725638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k8v9KGUdN9vhC+5Sfj+8HpfyMGxxSUWxCRI9OZUNdGo=;
        b=KdTuuZWh70GiGdEQV+gcWcg5cNU7gUv/36wus+GMApskOKiDI1awoLNbgaRV3OJLmE
         1HzajIzQRbJ+4X/HrDhrxaMiRT180dSyQC2unhZ84g/xI6Fr0TMJvd7lU57ZxO4YxVpQ
         Lga4/SMRLpIba93qLVlwj90H0Sn10Ha6JFWibim6VZgD44m5gXCMUtdLImvVuL7M+nB1
         tU4mK+wbtXPRQbPEOTo37ShivG5QRTHkvFXln0y2Odn4BhEPv9/5lUUjhbbTOzGYKpbs
         feMoaRkP9cq36f0DMwI5g/5HLUBLmK+m8dF4irQVRPcUmEQdKiQ0bKeYjYecb5ROfOex
         M7xw==
X-Forwarded-Encrypted: i=1; AJvYcCVVlHzIAyI/DP5GNkhruxfCwyGT0tz9KS8ODfRim0FDzfNOfs9lSHNYpNVdcgpUvT1sW/Z2wlbI3SNt@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp46JdoINJhPW7tU9DYW++OVmliS8yfePlkIYx+2D0O35BHrJV
	Dwnx0nyR4nCvkynJnK/pI14smlMotL6ytPfe5imSId5+mPUs53AiH/LKWs5UdVd85M8=
X-Gm-Gg: ATEYQzzTJZsgFQbnIyyii1sr1MBuxP8LdzaDX1Q/tN1TN6RPAVQELWddraOClG2ruwC
	SOtq1uDTVmHIUauPll2Bv84YnGfgr8NT1n4FxW0Wc4J9tEG+Wl+CasfrF+Z3YTavNz0cuhdQZnQ
	KBemrtQh94J5f1K0LzD5vOGxLyqszZBSceFE9bLzeFlPysRhGSQtUiqd5fnll9TgUltRPE0VHWr
	iDFUUHrYsQuTl6M9bo5fKtvNO2B/hT09U285aSklaQi86o3zv3kVdEtQXmNmbdkKDTrnmgwOFQz
	VJUviyzx4x2SmRueIy5rh0S/bofjEtlUT4ldc83YRNUbQapeHZU6znD7pRgcwOOVbHvz0mqX1hk
	WC00XDEw8+pWZknM1u9LAJSSm5Ie/nFczNvPEL/KHsZob+pjEQNG720oIAhLY630n6sMW4FaSjE
	bBYMtA0RZyCIcqWWhA0awu86WmtqAXsFiMwB1EF6VJA5L6W6Pr4G0Cm6Q0XPNqVpOhh+N7+zjjg
	2kk6Y+qL4PijGQ=
X-Received: by 2002:a05:600c:a009:b0:483:b505:9db4 with SMTP id 5b1f17b1804b1-483c3df45e6mr52290595e9.31.1772120838328;
        Thu, 26 Feb 2026 07:47:18 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:17 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 26 Feb 2026 15:47:14 +0000
Subject: [PATCH RFC 8/8] arm64: dts: exynos850: add PMU interrupt
 generation node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-exynos850-cpuhotplug-v1-8-71d7c4063382@linaro.org>
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
In-Reply-To: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>, 
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268935-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[12a01000:query timed out,0.180.248.32:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.181.31.48:email,linaro.org:mid,linaro.org:dkim,linaro.org:email,0.180.248.32:email]
X-Rspamd-Queue-Id: 134F41A9852
X-Rspamd-Action: no action

Add pmu_intr_gen node for Exynos850. This hw block is required
for different power management routines like CPU hotplug and
different sleep and idle states.
Also reference this node from main PMU node.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos850.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index cb55015c8dce..e3f4fe6ee118 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -211,9 +211,15 @@ gic: interrupt-controller@12a01000 {
 						 IRQ_TYPE_LEVEL_HIGH)>;
 		};
 
+		pmu_intr_gen: syscon@11870000 {
+			compatible = "samsung,exynos850-pmu-intr-gen", "syscon";
+			reg = <0x11870000 0x10000>;
+		};
+
 		pmu_system_controller: system-controller@11860000 {
 			compatible = "samsung,exynos850-pmu", "syscon";
 			reg = <0x11860000 0x10000>;
+			samsung,pmu-intr-gen-syscon = <&pmu_intr_gen>;
 
 			reboot: syscon-reboot {
 				compatible = "syscon-reboot";

-- 
2.51.0


