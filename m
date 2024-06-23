Return-Path: <devicetree+bounces-78975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5AC913CE9
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 18:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE835280E0A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 16:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C996183077;
	Sun, 23 Jun 2024 16:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gq/XMGdi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E038C1822F0
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 16:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719161613; cv=none; b=ge2QsEAyDM4yCIcSBxH56RUEgEtGVFgZ06xilv/+MOhXbCBPdGzwTqVDcZ9kJY0PPn5nJk0czPP44fg5tM1VO8VwWxZyszkhDfcvXNStjaOpallgmiP7RQmMdp4N8sxBoVm3Zj8x3ymi2io7TpXa2RUGbmSGHeV3bV1T6BhJklU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719161613; c=relaxed/simple;
	bh=XgTrH04WH4sEIRv4Osb56U8xdVI6cE9+g8h6m+2SGSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TJII0LY8jdWUGZ5B5S8nbAJCd0EMIG8J2DnWq0MiuAUDvgTsM5dzXY5GUnLd/hkT0shYVK8/tX7aTQX6of9sDTWoQxrOO6P6Ymwlw/QUmq5OX+8xLniewJ8klkSbxldF8/udUebZKaTLAakw281dwEy2j4yw/uO6jvxyiU8Q8aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gq/XMGdi; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-421eab59723so26254745e9.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 09:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719161610; x=1719766410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0dyZkCyrKd/4PD4Jvfjt6KqBEYL4dXW/zmdctqRuUTo=;
        b=Gq/XMGdiyXGZZ83J18QDgq7rd48jVW9rtW8icaUL/YQ9/BdokElUH9o4ObrwgiX8o7
         kqGTYxe/W686xWTUYOvp7V2pD98ESeewuESAvthmZsPlI7QzpjFrfDA2Mr3/bQY6oPD2
         KK195KRUM0vkCpFbG2PeE+t0u6Kb4u4KVzcXFC/KuOeO/SJUh7EUeWbDKQaXqPIMwCCP
         KkCEfzU/hjR0E1RvANKezyoYw/TFG+YB7huAATi0iY+lHKo373nTbeymg3U6DZzFwcuA
         N+Wd+m6JCQmT1M/uVdi4g5anEJ4ptLZn277Er9UVFhlvgFhBpk5CDnG0Cj7lIVSIj2W5
         4deQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719161610; x=1719766410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dyZkCyrKd/4PD4Jvfjt6KqBEYL4dXW/zmdctqRuUTo=;
        b=NnCczN0tbiDWtxW+VV6vh7jIFtU0bnh7hR1uiMLru9HqiMZ0qg2lT89OoRtX4ahnls
         Pg9kieSp1xMspVhJS5MUcc5Jev/7JG1GFOWxuLWvH9xwE8e+ncRAGlOmVusdgdPrjS1w
         nZVdU7w8Jo7M0qHIy7bxbf25WpRBKXTZFzpoYYZj70bAPSos/zHZr8N1wUz8oXxq9OYc
         ANQf+bd2zoznJnf640p8wuwqABOlEVifEdXRauXr52GcQ8m3pk5XbR8HF1JRzteEMgO4
         dFzRVnTuPyx8pvsD1wdB+FYfCvHF6ObrnLrhbz1leQLjJCIp7Fm/77t1Hxk5bpONTt8O
         LqBA==
X-Forwarded-Encrypted: i=1; AJvYcCVPGLe5KMm/O0FNRVkSoG68xWDuE8nZV7gtZGZx9daZ7VALFQYwWRaj7y4HbO68vBytXtFRfU0daflqIg1sb+Um2ev430OMjnt6mg==
X-Gm-Message-State: AOJu0YxL5DnVONueGYgjNppAfrxuE+rJ46pxBz1Y4joWNnQRB84AKAz+
	ObYC9PbFW04nEiLzyQOFD2CXSLD4TWHixEpxMsSAOIYGQMn1Yx1vQNgu+Q==
X-Google-Smtp-Source: AGHT+IFgHhHsrKsxAy7dmmoxUFNVOL7xlboI1346xmn1iLjG/0qF876onfSoisezAZAB/qDCi0tDeA==
X-Received: by 2002:a05:600c:4fc9:b0:424:8e5b:e71d with SMTP id 5b1f17b1804b1-4248e5be7d2mr11488085e9.28.1719161609998;
        Sun, 23 Jun 2024 09:53:29 -0700 (PDT)
Received: from morpheus.home.roving-it.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247d0bea05sm144835555e9.18.2024.06.23.09.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 09:53:29 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable PinePhone Pro IMU sensor
Date: Sun, 23 Jun 2024 17:53:21 +0100
Message-ID: <20240623165326.1273944-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623165326.1273944-1-pbrobinson@gmail.com>
References: <20240623165326.1273944-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the IMU sensor on the PinePhone Pro including
the i2c4 bus that it's attached to.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts    | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 5e46f682f0f0b..fbaf0202df632 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -436,6 +436,21 @@ touchscreen@14 {
 	};
 };
 
+&i2c4 {
+	i2c-scl-rising-time-ns = <600>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+
+	/* Accelerometer/gyroscope */
+	mpu6500@68 {
+		compatible = "invensense,mpu6500";
+		reg = <0x68>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PC6 IRQ_TYPE_LEVEL_LOW>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
 &cluster0_opp {
 	opp04 {
 		status = "disabled";
-- 
2.45.2


