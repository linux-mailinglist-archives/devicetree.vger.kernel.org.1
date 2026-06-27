Return-Path: <devicetree+bounces-316267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qzHrEaycP2oEVAkAu9opvQ
	(envelope-from <devicetree+bounces-316267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 11:49:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA156D1AC6
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 11:49:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=EO2Ux5Ll;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316267-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316267-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C0153028461
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 09:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC2439903B;
	Sat, 27 Jun 2026 09:49:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 907AF399031
	for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 09:49:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782553756; cv=none; b=e3S/YVJBgy7RDIpaxmv4sbQx8qlgTkJOAuMMf9LbYDVlUu1xuY2OM+yNsJeUbj5+x7r4jcYbzRDRK0hBJWoBD/DrUF9omWz74PyACCyjmiEhbWcGZ3MMbXD/y2rUlg2JWJzIaY23Y4UgoGufvBa9/wuDA7RPHyicYSW7vj8rTnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782553756; c=relaxed/simple;
	bh=PjeAyVzdrmEPvru5WSS2hywp+olcq5EiYjAbVoPzIDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p1sPfXbD3+M3jueZpoxpYWADlka1jvu+NDkQ5s6Xn0NJaXcqF55NPyHn0NEzpOQbCPsi04UI8IPmpAjI2Tl/oileCcZfkqgZKUXlHXI19/kcEwUTFw3ileE7GCnWtr5V1IPbSfs77wr0SDpDrnAV2Zz3f2ELN/g/9xYkyXEuNvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EO2Ux5Ll; arc=none smtp.client-ip=74.125.82.174
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-30bf8b2bd20so3855544eec.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 02:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782553755; x=1783158555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=EO2Ux5LlMGwhAS0RJyCvDK9Rt/Phimebzsx/R5+pFRoAFqapSwZDzYF+Gnxu5tj7j5
         U2gSpXsiwjXs7u8YEtaNUVTeSSaSO0x4se6ggQ6K9SqphFYQOOvUqkPME+WqP/FU2ZdW
         YCbnE8NSaMnVY3CePJw1oZjKiQuvUXT4D00G5O5lkbXmwFk7WpzzzXBr6A8r8tHLS2rj
         YC+73m2SMi73ZHWxPzB55+EMjyu5bcYMGGe3I4OgB5JMV85JJleP7kEct6PeykarNcJL
         2jJAvqa2exyTXYqDY8IP2r5VWwlzThNn2fYnDkMXrwbBXMAE/5gz5E4GyHZItoaFtd3g
         b6PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782553755; x=1783158555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=PqweD9ancyrUTKg4lX3jVVDLq3DFO4vFHtnB3es4vcDI2SFtslC8pwrVAZmT+BPfX3
         jOrZbdLoMscmiL7eXNenooer0pALeueAlsYTVDapuqRDDWchE+ldirJuYJFV3p+QWz3e
         PJMdLLXHJNErU7uoAVMQYvy3AwKqSlGIqc8p8JmhassPez/g0vnfULVcQ5pE/5IbDX4s
         pEUNem9WNdw6ckMl2o8mVEM2+KZGHq2vKNeM6XhEyVx8tVaM3S6G1k4AkwLiLNNi9H9k
         SOItGE4/cAPt7VQRCN99Lds/YrZ948NPoHMyUNjXaqmj11IO2pFLelWs6JwbRu/oqE3K
         kW1Q==
X-Forwarded-Encrypted: i=1; AHgh+RqMpJiIS/gP/MrE/MSCkPcNWvy1Cn3n3G0+J8k8HjVq73Cd3F0Tg/aZRab/tkdAe8ul0AZRu8iTb42u@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb4bdQ8dRPJbLJKNKTdaMMhCx+Xv+shAAdUShm08Hu52UeSkbA
	ZuAy2eHei0RXZ6wAeh0FE+LBZ/MKh7Gx/8hCQzur/DajRt7K0OFOhDWS
X-Gm-Gg: AfdE7cmJ8k8gGKxyH6uDsNjkwzD/3VPvxAfuJP1c7nzbpUjOrzj7ywfwu0gvVVcBVlE
	rtLWLg0sDBXym9Mxj65s/YNHQcSVD5SiLfrnux34pTTY9mD7vZZZ7uOkMcnMQIUa21U55kT3Muq
	gB13PKxKaDhicl0Jdl/IbSU5o5P4zRyd19CxLUdTyakUZwIGj5GW4sM3qs/wCrRd57HZmel31qY
	V+hjjMSNVXccy/RgU8wA/+/XnwuPxKo2zmHz99ebFXh8OHhLQ+U5YQMSQfwmSvJIQBI+ERxF+/s
	REP36Y1q0ij0Jcjc2i1YaqLUYo4ObY9JuAgiO3Pa4bIJMp4YyueR6L2AvpDWPNlhCU9rUw7+yWn
	6utvH5IEkkRIwRwP2vfC+m0EhEfj47kyx6o5/P4aLTbJEZ1fjcLB9w363UJUVbdT5cFiyLNY3Yy
	Xz477TJ3Nd0D0WEDSyD9I=
X-Received: by 2002:a05:7300:818a:b0:30c:7ccb:189e with SMTP id 5a478bee46e88-30caae2d7d4mr3651598eec.6.1782553754624;
        Sat, 27 Jun 2026 02:49:14 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c7ca8b918sm28854789eec.28.2026.06.27.02.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 02:49:14 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Sat, 27 Jun 2026 15:18:53 +0530
Message-ID: <20260627094854.81564-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627094854.81564-1-hrushirajg23@gmail.com>
References: <20260627094854.81564-1-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316267-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hrushirajg23@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADA156D1AC6

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


