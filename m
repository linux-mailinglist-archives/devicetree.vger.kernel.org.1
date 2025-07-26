Return-Path: <devicetree+bounces-199879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEF9B12AA8
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 15:11:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 830C73A633C
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 13:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1005725291C;
	Sat, 26 Jul 2025 13:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="FQG1gclc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D22A2505A5
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535425; cv=none; b=aRYKpweZbxQ5aEOO7SLwYzREAILWmqWWMtLVTP5A1QucNMIcbeWWp5Ljx4MPnCyLDDVIbb2lrorZxkwdGF6np5UldjdMUqcGxTNp5/r2Mfk0VxqoUrDePO7RqiFx5SMw7Kqcu2b7Gbh0WgutLMdba7KZp7e77RXYTB4es1r+uR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535425; c=relaxed/simple;
	bh=4MkO0yPVEXokF7BKWo63wkxjH8l6ox9Iw2xywkWl/sg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qb8ogudDwtkKKYEVjaEIWl95Sn3GVMjUidRjz4ItrCrvhQJWk93RUOJmAmcmUtP4qh4XpPsD/eNISbi5I9m49xSvLusysz7DA0NjKN8tiQBfGu0VIx/zpNfYjgxnS3QJt/wEpn2x98Cn0N4kNK2sPcsGp0kG3eySzxaZnQbHx4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=FQG1gclc; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-87c070b2dfbso114514639f.3
        for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 06:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753535422; x=1754140222; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TzbsCOAJDq8e6tJqb71PLkWE7SOSqQYLq4powgsnVhU=;
        b=FQG1gclcMfJrpj4/g/oaNZtD5RlK4KFDPTm2TXy9p+Vi0tHwXqst19q4CcGlSm7Lcc
         Ty7YrnNLlznsBhlq1FV972i7ylEr/5TGjSRxuZT+MksNmAvhADipy5cwPLE/uVehq6zs
         UsDL2lLT2DevxM1U4fdgwNY5yREVEtCNJRGWo8n6pNjR1IQt+YtzKVjIfPpFojA9im5J
         LuaDNjbRa35Qr3/AFTWx3l8X22qcaFQjRzyEDNH3oIa9UEp6KYxNQwOva6AscUxVtaM2
         ckPywOskiH7anEmgTt/Q5isK/kLuuecEtfemBWB+yNM10b1QOtdi9slj2NJb42pXdyd3
         dKFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753535422; x=1754140222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TzbsCOAJDq8e6tJqb71PLkWE7SOSqQYLq4powgsnVhU=;
        b=Bnu44/TlTQ8skcakIzUVhNY5x/9YnZkcTAsE6r+E3J7oI2KtksiF1cAFh9z4KkIuEo
         UfeEXEgqoxWtWigrLPokvpkyIHXaNcHLK5YblOjeiTYGV9/vXRkcCRGo46WjoHGkMCj1
         mj7uWdF8siNtnzF4w1FLHTtDLJRXAUaW31bkcIhbvKEPllUHmW7SkePmYH9tU701ISJW
         g5pAgkWipiKGayD382dG013zBCBzIOWwXQIR7wmiwAV06v7U2yZ/w3NbOrdun4vvpkXZ
         l9MYQB+pQNo8KJ0ffSFj9OQZ7uR6ZTJy8H0z3y4ue3ym9wGpwwlJy4rsFIkVbzgaLYFy
         7r8g==
X-Forwarded-Encrypted: i=1; AJvYcCWjIoJxKWgL4cPaPHK3EQ6I3y9cSf4/tLi/qVsSQlyugdzRQKewFRsuEp8osOjF2mjutS24MoYPwD82@vger.kernel.org
X-Gm-Message-State: AOJu0YzEVYcbjnFV7UOfbTxo3GrDxKSoURjO9iNi2XyRidbrLrirAUhd
	Uw1o5FsGCC1GYwRGa9I1qZ21mztkzgF4mzsQqSJa4y2Kruo2z0jqWXivMEIgmkcNRJE=
X-Gm-Gg: ASbGncvaAjchG6r93atsoDSBpHZQetlFb/TxvKq1ALpEZFPVYYSJX+UYDA3puAtKvJ8
	0a2sARuRondaOMOKwqFkCzo3bwxIihhciRrUppo6wiACkpB6VPcqluKzXgHmHpoLl+soa3Y62OF
	pscOYKZCAAal3lSkxmG5o4MrWmIej+JhtNIKaA/kKpbPcapcW1+Sx/PgE89iAyYFuoNVQsVynyd
	WLWH+kUHcg5GHsb8bduNRZg2yli7OjT39ps2CaGL2BmjxBsoLJmNdX0PQUBYZfrmK6FHsyo9Hwc
	GYh/6QNlgGo8t92sc7C+HSZWXbRYa++QUJcYnbOq72pzYcLuoboNSuNHfqi9TILv2xPcH4xW6P3
	rqM4k7qXDSWtaAafbHCUuVZWp0dMyNWhQM27XV7D9lsiHW6VoFh2ymkeHAJA6EECDwQ==
X-Google-Smtp-Source: AGHT+IEpZQvcDQ2Fiuw6rkA+hiigtzBH5kJa9koi+D0lRnfSJ/J4FDcv2OYkyFVUHNTZGcQVha87bQ==
X-Received: by 2002:a05:6602:29d2:b0:85b:476e:ede2 with SMTP id ca18e2360f4ac-8802293bd79mr913033239f.13.1753535422246;
        Sat, 26 Jul 2025 06:10:22 -0700 (PDT)
Received: from zippy.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-880f7a4ee9fsm49551439f.33.2025.07.26.06.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 06:10:21 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v10 7/8] riscv: dts: spacemit: define fixed regulators
Date: Sat, 26 Jul 2025 08:10:01 -0500
Message-ID: <20250726131003.3137282-8-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250726131003.3137282-1-elder@riscstar.com>
References: <20250726131003.3137282-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the DC power input and the 4v power as fixed supplies in the
Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index ae9409fe398b2..a11a60b9f369b 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -28,6 +28,25 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
 };
 
 &emmc {
-- 
2.48.1


