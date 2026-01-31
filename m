Return-Path: <devicetree+bounces-261436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YICwMlIgfmnZVwIAu9opvQ
	(envelope-from <devicetree+bounces-261436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:31:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F33FC2B30
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CC1833001319
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA8172FD1A1;
	Sat, 31 Jan 2026 15:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lZQaOFLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C61578C9C
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769873488; cv=none; b=Pky/KYodWd6kRuk+IqwWw4Eq3gY++t8xdOJc4HlDvRy8yFvSyVwiZLCvjrz9sExuqmadd4dgla4uZj5IoriITylC0YJ1WSU9UsCNe1AH/7SkZleuLqbx0a17eOImWmt3o/Z6hxA9gVGYoq7pmaosg5CWbuXOrJ8f/6rpcPa95+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769873488; c=relaxed/simple;
	bh=go165EmDxqX6e6ASx7gEzGBwoFDRKTPCHAEbCnoGt1M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oiazqUnFQg1VUB+jtY6RyhjbOvr790jA6i5DKlcqpP+0AIM5RG3b05OsB1RuXVu8KKNmepXdvbgTTlhKeNODyamVFT5vGnnbhny8/gHkdcio04S0VbOlGDmcBe3fttV7AvKDwxaMz3tNbVR3vKEkSINpCdGeMDEbdrxSjTsAibI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lZQaOFLL; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-81f4e36512aso2940392b3a.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769873487; x=1770478287; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87iMqAHh40Qple/XwU47TttqQDjC/RR+nzYkh3Aaq+Q=;
        b=lZQaOFLL298AR9FZ+qcur9CH6HiniLMFk18BaoQ24YAF3p30uavSaoqF8hxeiy5aZC
         4PhPaxN+iBkjuWxf/ElPacCybHf/Kt5yDfDD33W3sV0SLnCuR0y3EYuBE2nJcFsMBKaH
         hZQ1bW3K8zlYZIE9gtKl9DuPxq4CLBzm4QoS2mM5Rox4hF6wK4zTzAmhel/78laE5fHL
         cJPRNpnNugfnAyAo32KDFTwmd+2kXI9btAt3KNnJ3Li+8zXy6F/ZTgKN+q+/oUMlU9wF
         4paqDTGzgvzhTJrtii7yHArKA5cCvNfNc0kfNVi4c8kdiS21Qd35E7Jms8nkekLp9qSK
         70zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769873487; x=1770478287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=87iMqAHh40Qple/XwU47TttqQDjC/RR+nzYkh3Aaq+Q=;
        b=KdK8c8prRFHf+xsggyLBnU3KbVBEIGm0kqcA3dYFqhyzIAofyV6P0+l6QWW7MxpAPY
         To5h0x3c75GR64nn61vQY0fJkZXMgXllwLN3HVUN7RT3UfyUo57O92DJc7eeFQhKsu0m
         ADLgWJpxa2Hd++9ftEyUhL6nw4bKoy5JxrIZ8Azy9M+/uIIaFcDY8A7pbypIZkX08RIS
         uX9ZnOKnWfL7xg2R7HY/+0hH8+Igce6OtXcso8YUDCg8zduyrcs+4gP4+XYnve5CcNXN
         uGJRxNIh640PHInukDtlSpkSrgtxG0WuXAOK1yEx3+N8+2kDNvA0Mp15Vp+/BsCRSX3y
         dR4g==
X-Gm-Message-State: AOJu0Yy8ITkkO7viAy8d0m0cyqVpqnNqbwFPAGTZhFN8l5YGGuf65h8A
	x7iq3lZsqi663zylUKtxhEhd1ewWgQGpjH/+Te+x+WONanHHXhi6JBGnNwPOnx3o
X-Gm-Gg: AZuq6aIw/B6jBmu/dxinbAEWrQNeBevYPn9ifU4+cW9aIthILsXBRT8FNweJE9qDsLb
	5pe0YNrm0/maVI9IA5ygvb5XsbC+BTjTzF78NSDTEd5Wwg8BkN8hOhma9hblAiUY+rB7HjNqCNo
	xNSAZa/Vz3g8x2lKhuedpcw/2ww/BMrtjfguj9DDpwyx/9yMiM8cIi23gb7djisAu7ioqB+7JpI
	LePPF6PaZPRG+97c2xGyy1uQv1Vw8ddueYohv2nLwSU57etP31z1E+qXpxgjS7djMdIf2DqaLEF
	Yvagdq1AgVA6tQVfBKBvwUr2B2caGUn7vLajTkN34ZrgjFyQt1+wlBy1HFqn8Nfrd/Mk9O4RNrW
	OjGgnTZ5D9TSAuy1PW9Sk9Cf9Out34NVA8jY7QL5wh2QLmTjIaiA0JxDJBdRj8Nuaz6zrX3/JZX
	jMLAWqB896V8OmM/UnPhjtOwXAGQ8rwC3m0KMpxesi0ryNMd00
X-Received: by 2002:a05:6a21:e94:b0:35d:8881:e6c9 with SMTP id adf61e73a8af0-392e004eb87mr6088322637.23.1769873486686;
        Sat, 31 Jan 2026 07:31:26 -0800 (PST)
Received: from arch.localdomain (awork135098.netvigator.com. [219.76.135.98])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642487f1f5sm10701122a12.0.2026.01.31.07.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 07:31:26 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Sat, 31 Jan 2026 23:31:02 +0800
Message-ID: <20260131153106.31723-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260131153106.31723-1-jerrysteve1101@gmail.com>
References: <20260131153106.31723-1-jerrysteve1101@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261436-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6F33FC2B30
X-Rspamd-Action: no action

Add devicetree binding for the OneThing OEC and OEC-turbo

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.
Among the lineup, the standard OEC model comes with 2GB of RAM, while
the OEC-turbo features 4GB of RAM; The rest of the specifications are
identical.

The OneThing Edge Cube series (shipping with the vendor firmware) is
originally designed as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..eeafe40e0f23 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,12 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Edge Cube series
+        items:
+          - const: onething,oec
+          - const: onething,oec-turbo
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.52.0


