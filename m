Return-Path: <devicetree+bounces-227153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 370E4BDF1EB
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D81F2357611
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCDA02D6E63;
	Wed, 15 Oct 2025 14:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V1TX1zMV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F3A2D6623
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539183; cv=none; b=OpGBsF0UaMIKChT2VUBs8Jx9xA8EgbOZrJo/PMllt6IZ9EjJzDkxxjIGGf9PUNPPTo8GoHkB7BY8e38hCyZymu8aZGVaPa68vjAc5x2qoXIbweWlnNvfA6Itu2ppoNlag231jiD0b3HMaWqf1necrd8WQDPYotadbwbANKI9DRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539183; c=relaxed/simple;
	bh=wBR80YGIbnwVSsJBvtap2PtEvmJWWWy+AXepLXrMiQg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bu18pJwBQBhfFzFZL2lwlAne6V40VOquxT1ck0LPe2cW9FbgM7juoWqu1bXRe1X5Hytsev21BVkqrrlcu1nDRVA3ZwOYQEF9Y10hJ7Q038X+xXEIVPOfOHtjZtr+tepEcPpIB05XoOAnvmhH/IJdPQ5PIXo9iwNy4dRwmD9BJQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V1TX1zMV; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b4fb8d3a2dbso4618035a12.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760539181; x=1761143981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kzk/r6qDbrjCsGLz+9BLRYG0Pw9EztKEkl/jY+qfPQI=;
        b=V1TX1zMVnKcYxDQqX1ZgB/PCo2FP0hzuunIHue/yYPYfYW/6Ck3+kXKtbSQH1iPiyR
         s4A5PJ+NScrxWHdDEvsg+VOfXePdK0b2reUCu+lZmdOwbo8hjheQ0UPbFCJYyISBucTq
         Dg3ZONtEWfbQzmRvBOcXAr3tnP2tMPCczNsJJonrYAIXUduSu5ozNsiTXFuDMJXGNy6+
         iSdHvcmJQ3YvACXyiBnWW4JBSs+jCKuJVVcipffGFUqLJ3Bp7TtdybQ1zCncW58eLLCV
         VKQYaExfwBJTKJP/o5zzOF+57YC0jMYhx2xjTT0kaGcPCDw6H5WwbCfz2PuzmUnZlKWp
         GZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539181; x=1761143981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kzk/r6qDbrjCsGLz+9BLRYG0Pw9EztKEkl/jY+qfPQI=;
        b=jzDU5Qee9toqWkaasSYCiih/0AHhSysPyYcVvpxz7v3ibsCUGjtjko8YNkmyamWOo6
         HIZtsil/R/HQr8KQmJpi3TgTS+DQ5wN0+sMOLZpz+zanhOxsavw1wiPEy44PT65c+5Ld
         LmBRRuf+7sW64jyXMSYTDgiBq8kXuQ00U7cShQ2IsgbNv4cZk29y4T8xfo33WQBRqn0Q
         eLSyr78F9BvCBjow/ZS+rLlVwnpluyuqZKA4qyHDm0zSzZRyky7I30d6xq5FIciO/DEp
         pzOppoNU+/tEL72CDM7Tx4ByqXgEv2QFYZfQ+vRZV6o+Gk0FURFHGd0QvICK4yBq2KGy
         /Z/A==
X-Forwarded-Encrypted: i=1; AJvYcCXGOPGtC4Vu6SEd88vIniKT+eGnjulK7NLCENZGlwiarijBTkJBu/WUOMBEdnzChxLUwy6XXH/5nHS/@vger.kernel.org
X-Gm-Message-State: AOJu0YyrueeGMKhIt3dd8MTOxH7rRGHA68cA1KNp8XEvPUHu1QIoUku5
	9cNaOa6wzFcz30vTs3jdFAkPjb6u7nPGq1XCRV38pyE5ZQccGsEr8Plt
X-Gm-Gg: ASbGncsCtkABtmvmq8druxCegTnCLPAQ8By159zO+nZe4uTxM411DxCx9X3ctIPMgDE
	9o+4Pq02TmLUrjdcQT4fsqGtiefzW5ZgM0OYTbnmqAXikQWiw8U0O/reUGvqmHEExNnDmJD1sHE
	f4x64wgucQWq8iQzl+42I7fm8H1UMnTrDC0/r/P2kT9RWsOtQzg5nP8aA2mIDA0jFus3rPQvKxw
	t2nS7y78nRj6i8581fRk+mzwKJLXYaL+nqKVGStuWI+Ctosa2GZv0CHBJ1oSFu2uESnGa3xAPqi
	4UDiWBWecbjuS1Am8Bj5oU7JtFShCU80sVhBCLQXX2+0F0TKDNyMz5qVGibzxvZf+ZpHc3BkDlU
	rTfLFwzean0iCyPEw3kmZpOU9VjZGz5q0851Y4UF1dosFnl4sbqqddthVD4ago/tFUeTmQQm11b
	Y/Rwog0mXDiwZs4XI/eey3aW4J0mIvvCw6rOkNYtFc
X-Google-Smtp-Source: AGHT+IEgWdXuvMnKWxO634nbjJzRkHVq3PW7xVSf2LL3eQamnskf+/AR2cdTFIKYZHqt7ErlAtLOOA==
X-Received: by 2002:a17:902:ef11:b0:251:5900:9803 with SMTP id d9443c01a7336-2902723b876mr366239335ad.21.1760539181325;
        Wed, 15 Oct 2025 07:39:41 -0700 (PDT)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f36738sm199853455ad.87.2025.10.15.07.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:39:41 -0700 (PDT)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 6/7] ARM: dts: aspeed: santabarbara: Add AMD APML interface support
Date: Wed, 15 Oct 2025 22:39:02 +0800
Message-ID: <20251015143916.1850450-7-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
References: <20251015143916.1850450-1-fredchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable AMD APML related features
 - add amd sbrmi node for SoC power reading
 - add amd sbtsi node for SoC temperature reading
 - rename the P0_I3C_APML_ALERT_L GPIO to align with the naming
   convention expected by the AMD APML tool

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../aspeed/aspeed-bmc-facebook-santabarbara.dts  | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index 3f36c8e03f48..3ca5109af19b 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -329,6 +329,20 @@ gpio@26 {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+
+	sbrmi@3c {
+		compatible = "amd,sbrmi";
+		reg = <0x3c>;
+	};
+
+	sbtsi@4c {
+		compatible = "amd,sbtsi";
+		reg = <0x4c>;
+	};
+};
+
 &i2c4 {
 	status = "okay";
 
@@ -1755,7 +1769,7 @@ &sgpiom0 {
 	"P12V_SCM_ADC_ALERT","",
 	"CPU0_REGS_I2C_ALERT_N","",
 	"FM_RTC_ALERT_N","",
-	"APML_CPU0_ALERT_R_N","",
+	"P0_I3C_APML_ALERT_L","",
 	/*J0-J3 line 144-151*/
 	"SMB_RJ45_FIO_TMP_ALERT","",
 	"FM_SMB_ALERT_MCIO_0A_N","",
-- 
2.49.0


