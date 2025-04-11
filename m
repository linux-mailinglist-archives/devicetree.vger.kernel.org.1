Return-Path: <devicetree+bounces-165941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CE3A85EB3
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:22:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70E533B1EC1
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84046188591;
	Fri, 11 Apr 2025 13:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Wo3e4IE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C269317E473
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377388; cv=none; b=QpKzS7gHJqdNpNSBr+nmh1GHL2qeqIamiKXhd/Dma/nbWWdWFKR/jf8IHcn54j1OcwoaPYEw78AGc+RtmlLaezDCeZVEdqBqduSb2r86TTLHwkWDWtP4ZLdpmHMsazhpAkwB+8kH2MfBpwDvjy9xcWP23zxJCqKlfDdggStRspw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377388; c=relaxed/simple;
	bh=Vzarm2+GocjZ5yQi5tz+9vTbULzRbJHRPSoTmN+iFLo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QykyCVgENE9b5qEUqvLzSmesCQU9NGZ4uj44JZB/cH/7LgBr95orFUsPVPdh87gmTaEvGZ69ElMQpL5kXFEU5DKmBAEWfoqQxq/tC6CluBH9VZwbn32ljmz0xqzuWawSPu01FVx3cSAHVQGDqGPvfulSovQYOCAgpQFbLltuHTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Wo3e4IE/; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-22548a28d0cso28329195ad.3
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 06:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744377386; x=1744982186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sz09ttaY9JsJuScjIjTX5PLx95DbvCz1+uszRy+OQ8A=;
        b=Wo3e4IE/86YoQE0VoquTJdoWUdZFUEN5HUQJfHSAf25KmrWf3aPDTRurSgDVV70Gqd
         dDvo13Jzo/VLMNldp+leetcwTDZACiV7wIUsKR4xBRzPfb4AFZUprdPpCTlWu9WVkFHB
         EdDA5JoHNCis/49VRNOoGebinUhCuyD8jbF43YuAgWPRV0Di1hgKQLBVx43go96k1/G3
         6ns4EXncCYHJrqN/Z+r47/sBQROchsVlhlej+30H2fWyppEd0JCdcPjC9X7uPcXHiQZ9
         rJDH97licciLjcUbpAmTot7DOy6NEmLdhfxCdriEiGcDtl7xt+bOmsw80FfM1ZjWuz00
         IpxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744377386; x=1744982186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sz09ttaY9JsJuScjIjTX5PLx95DbvCz1+uszRy+OQ8A=;
        b=nDaoq80OiW9s3QdhZFfDt0ja0cqDBE2hK7Bt7zgFpl7mAmst0uDNCVwOw2B1CtRbeG
         ln1aOsn/tIR6xxPd2SPfVea6PCEWL1+m8pboEyigD/Sv92EslTLiuYVb+35Bo2WSQfNG
         2yJimz58uUsBqZTG0GD3BhvxfQz37CByTDrJExGal4I3BpN79A4P13FIkwggCWegieWf
         tXKZaLCr5L+GhCidPMjJzV4VMGRZkYv+nrHl1C7RobEQOxLKT2EiWnybtCBKRo9DEUy6
         ofsrAgIhhjZcvdfoW3r7lXBR27GiOMjWbKbq9sswV7syGHbU6kEZQ8aQ5a7bZubqGJev
         MCWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUU3SmgxecLmgJCh3ODB1l7T/sJc7Gf10TaP4kkWiSV/Yuu9VW8hKolSrVygG90h83fdGleV6y4VjbD@vger.kernel.org
X-Gm-Message-State: AOJu0YyhPhvtLZBMmioD4fknXwiZ6wf4Ot7v6Z6OR8+tlih28Og/b8DA
	t2U68diPQQlURbUjfV+hXWmUB5iebAeYvOnZ0zNFBeehPwAX2q2xzLfebWYjbGI=
X-Gm-Gg: ASbGncvQ/Ja06uG0owgfR0xixrvGLdr7sRgijgZzd1+QWLAIQr0f63GLLWylzPEakwK
	31582goKMo+Zv2kfRt8REbSLKVbRdjeQ5iSjrCWxB6/id6kXSQ6FqOh+JrWRmvzfK7Z9TNUcpYJ
	KOHXMmBzPL4L66E+AeGFUpeLVWjDZVZnCz3Ax13jfBHbLTwZUxxKOmuPgkk3bz2LuhYxZxiIlZY
	EhDR/KabO+bdfWkDUyRX78iVtd2EHgAwJzgvMLWTcjmIG5x40mVJPfBh9nUv6c8uaHS+w2ZnnSR
	BX0fO90zvIhSXnrrzxMGw6y/3X165ZM=
X-Google-Smtp-Source: AGHT+IEMvfP6Fh97oRNaj3GVNlhjSqFygi8X/wqAMQAzRVrntdPfe+jNArlUN0+OLtqmSujGxJFQ0A==
X-Received: by 2002:a17:902:ea05:b0:223:f7ec:f834 with SMTP id d9443c01a7336-22bea4bd7damr40806085ad.31.1744377385993;
        Fri, 11 Apr 2025 06:16:25 -0700 (PDT)
Received: from localhost.localdomain ([2a12:a305:4::308a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cc6sm48245005ad.122.2025.04.11.06.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:16:25 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 7/9] riscv: dts: spacemit: Add PWM14 backlight support for BPI-F3
Date: Fri, 11 Apr 2025 21:14:21 +0800
Message-ID: <20250411131423.3802611-8-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250411131423.3802611-1-guodong@riscstar.com>
References: <20250411131423.3802611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a PWM-based backlight node for the Banana Pi BPI-F3 board,
using PWM14. The backlight is defined as a 'pwm-backlight' device with
brightness levels and a default brightness setting. PWM14 is assigned
a period length of 2000 nanoseconds.

This configuration was used to verify PWM driver changes, with PWM14
tested and its waveform confirmed as correct.

The node status is set to "disabled", and should be enabled when the
display driver is ready.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 816ef1bc358e..d04b57ddeb46 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -28,6 +28,32 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	pwm_bl: lcd_backlight {
+		compatible = "pwm-backlight";
+
+		pwms = <&pwm14 2000>;
+		brightness-levels = <
+			0   40  40  40  40  40  40  40  40  40  40  40  40  40  40  40
+			40  40  40  40  40  40  40  40  40  40  40  40  40  40  40  40
+			40  40  40  40  40  40  40  40  40  41  42  43  44  45  46  47
+			48  49  50  51  52  53  54  55  56  57  58  59  60  61  62  63
+			64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79
+			80  81  82  83  84  85  86  87  88  89  90  91  92  93  94  95
+			96  97  98  99  100 101 102 103 104 105 106 107 108 109 110 111
+			112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127
+			128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143
+			144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159
+			160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175
+			176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191
+			192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207
+			208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223
+			224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239
+			240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255
+		>;
+		default-brightness-level = <100>;
+		status = "disabled";
+	};
 };
 
 &uart0 {
@@ -35,3 +61,9 @@ &uart0 {
 	pinctrl-0 = <&uart0_2_cfg>;
 	status = "okay";
 };
+
+&pwm14 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm14_1_cfg>;
+	status = "disabled";
+};
-- 
2.43.0


