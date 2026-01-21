Return-Path: <devicetree+bounces-257965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDT3GF/XcGkOaAAAu9opvQ
	(envelope-from <devicetree+bounces-257965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:40:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 096A857A56
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:40:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5A0886AA4F0
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00EAB49551A;
	Wed, 21 Jan 2026 13:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WC59cq54"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6B549550D
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769002009; cv=none; b=Jr1iBSMgbp7W/Um4LXZGacMobaBlJXBqg1h/7FpwCUCi1yynUjB4rSAEzwnk2zJGPEfR+PnEd/YK7iKvfP/LSUYma4GaTY1K/NoufGI0ZH2iwQFE61rkVbiwq4UhXNlwS2SLe3WItL/2m0JXNe9RYh6gJqnno3tlZ5T7Y9e/vbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769002009; c=relaxed/simple;
	bh=RZ6L5kG6KnttCqZHYH2jeIzUhBdGGcKDyqVGSs/BMTw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sps1+SdVXRyvA9QyXuUKnr1yXArxgc874kbu9nU1yC3/RHgONrJmUAXp+WNTum8sWR/0QWm8VpcI131i+DMUVV7fiMpnFGKA1XKPMPezp2zlbD4ecov7p6BfNTyer0J/KMQ4NiMz741OJg6OLv36b1O+RZg3EtmQsMbkeRkhzjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WC59cq54; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a1388cdac3so45509165ad.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769002008; x=1769606808; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RpR/stwl1z8brk4SsorW5KRgaoHVnvVVxmk1S9SRSNY=;
        b=WC59cq54wcnmyqyUiRehjHQiraMhZkPI/UE3zRz24yPozhrJB1wgQRVufedXMG5uYZ
         U/M6VS1ZEA4JWP0e4wQDizNrKBmp61VXMiJvUCFL6P/NyRVXfjkhUEIVtcAAeR3OqbeM
         QjJwn5k17G0rT2RIG4gtEfEyx/U3cEcAEiEd07JUtmoE3FGCy+UrlCUinEaHTi1LEdNn
         51vKzeMdgQKMCy2k9DB0tWN3zU3EvACiHaslPt6GGd4lSjUvSp6o0e4LdiyONmoJ3lgh
         GoJBtGZs3ANCKYNjWuvv/0QzCA0+yjxrCbfggE5Tio6gBjD/BJMIwm4U0vCRpQsBAEL4
         NWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769002008; x=1769606808;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RpR/stwl1z8brk4SsorW5KRgaoHVnvVVxmk1S9SRSNY=;
        b=RgyRW9jBm0d98GEZT33kYhTqezGLBUa5FhfgZgq0r1qc3AlbKPOGt+200gF+vZRL+h
         RGQKi8AY8ZDDfuJnkLOfwrUUpbA23MvZGodHXtY9Skk8p0ZDGKEbTHZwfTIkK9tJJt4b
         GsxTCsshNTgsuNJRCA50LX8BuegLhXCrHwhyWGtXQzqaqZl/j4vglBvx9ggoGnlkD218
         ve2Zsd1F9SPbcWhNB2ZTv6l0OeGBn06KAeB6/ZcHIvCYLRQfjZVXqoNKZQj/uVWiAsSL
         1LNsnpJvZfuUK360+PKf/m4iJ5nVk5CiLaHIDrcMjWkV/yTKH41QS9U0wg4WrsCG0Fzu
         OamA==
X-Forwarded-Encrypted: i=1; AJvYcCX5Olf1tHkONsGTMI56n6HaDyRQdERSLPB2oTSL4GxCmU+MCWjD5v2/eO8ottFHd6h9mOpkVaudZq94@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0THMHWQMSzTtrokQ+gOYqonBhoGLBEjxKfHh8aIGLrgl70Ebl
	IC4ewZLSM+cMVKO66erBDZ21TfwXrDXU4dnK79Kx2EK0RqAqly8YekSr
X-Gm-Gg: AZuq6aLd0p0C5PvS0y3dioqVFw/WeKOsfV8ozGb2vsIcP2U56So4PphFfKffG6Tfcb7
	gqlmeuok5Hc5yIuRSD/4c00mfPOpe3HGukGAghh/DR5AhDvjBdTwTCtS51jWwNY15HBbpobfJQu
	xoV1EdkU3bieWDQs4L5CKhf/jvJDY0i4mxv8zYOpYGs+8G3NZBJfRHToJuurnUvDNHp11/kA3RM
	td2P3+n/US8Z6jXaQ5AOqlbLlNA7Y3Q1GaieN8nshRyTgVQgTtkEGPuCvkX8uqfxqxQsIc9nQdk
	cqgCaQu9HYvE3Tjvyo1jiduvKQNBjT71XdjpNvY1MkSow/Q2Vxj8RKraR/19t7ahLDXa1nclTUG
	Pi/rniL12hStUFEtMyHxRM9g1x6nNzpVWdI1A6hOdev9qfI47pDSMLPzoyamALWHRook4gYnwzA
	v2iogvUzUz9SKLts9XiuYyzg4Kj5k=
X-Received: by 2002:a17:903:124f:b0:29d:7b9b:515b with SMTP id d9443c01a7336-2a717518f89mr159861135ad.20.1769002007797;
        Wed, 21 Jan 2026 05:26:47 -0800 (PST)
Received: from [192.168.0.101] ([45.113.101.30])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7194164dfsm151487235ad.88.2026.01.21.05.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 05:26:47 -0800 (PST)
From: Biswapriyo Nath <nathbappai@gmail.com>
Date: Wed, 21 Jan 2026 13:26:21 +0000
Subject: [PATCH v2 5/5] arm64: dts: qcom: pm6125: Enable RTC by default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-xiaomi-ginkgo-features-v2-5-fb3ee94922d0@gmail.com>
References: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
In-Reply-To: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Biswapriyo Nath <nathbappai@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769001984; l=641;
 i=nathbappai@gmail.com; s=20260118; h=from:subject:message-id;
 bh=RZ6L5kG6KnttCqZHYH2jeIzUhBdGGcKDyqVGSs/BMTw=;
 b=wFm7x5dv3jz+UuxY5G5CpNmEH9BbjfI4Zjwnm6k3n8KphNLpwjvIIzZ7Lk0ztv6aj/S9qSat/
 4+X96ondt8GBu7bJ4cTswfiMFbtpW3LTkeF0VUrpJ4NjgB+zjkgj/u/
X-Developer-Key: i=nathbappai@gmail.com; a=ed25519;
 pk=slmb/9yXbet+KTiT3EYLCp0p0MEOYa3EdjUXP+HXfjg=
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-257965-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nathbappai@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.23.112:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,c000:email]
X-Rspamd-Queue-Id: 096A857A56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

sm6125 soc uses this for real time clock.

Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
---
 arch/arm64/boot/dts/qcom/pm6125.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm6125.dtsi b/arch/arm64/boot/dts/qcom/pm6125.dtsi
index d0db28336..cb067adb7 100644
--- a/arch/arm64/boot/dts/qcom/pm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm6125.dtsi
@@ -138,7 +138,6 @@ pm6125_rtc: rtc@6000 {
 			reg = <0x6000>, <0x6100>;
 			reg-names = "rtc", "alarm";
 			interrupts = <0x0 0x61 0x1 IRQ_TYPE_EDGE_RISING>;
-			status = "disabled";
 		};
 
 		pm6125_gpios: gpio@c000 {

-- 
2.52.0


