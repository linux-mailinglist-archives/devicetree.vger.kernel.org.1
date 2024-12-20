Return-Path: <devicetree+bounces-133126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 058A39F94CE
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E1491893688
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F198218EB8;
	Fri, 20 Dec 2024 14:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qKNsET95"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96144218AAC
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705962; cv=none; b=daiiSOgYRhPbLK0b8DAQUdHNV9sFC+YGGaYFfnEU7uOuQUIeKkxWhlwqbVDN8w7hO6shRCqORKHxd5h/e9Den1ecEk5Wtr7DUUW+pC0HHcXlp+/D7BleMW2s8rctfWCH9dnnSGIra1V6mB7MoCx03jRRh01YAVi6fFLQlCZk9KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705962; c=relaxed/simple;
	bh=CBzsQBj3NhXJFNW+TyilZZe0w8YWT523Ro1ZD7fmAyU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NUTbhGS1vDVrFpR7aRLs8tdo6ji94Ny7PPxDcHZWEtS2gq+F12MGOHeY0d9pWpfrndVQEt6XN1F6854/fiQ9k392KHdZMeK/EBfDdUaZFPiuRrn6PaprXGnDzgb/wTMXWt1bZZB4dFjUAuofhoz0VEtTv/0M9Yequ8oOkq4jV4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qKNsET95; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso1195570f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734705959; x=1735310759; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LKQ/KdPjRXHrR2fzFO1pIdVwIMyG+67hfBNPWoSG81I=;
        b=qKNsET95Fbqxp4GYFeqjxKXAYFNDTd956LdVYgusC34vzMN/dPa/3nhzx0S1T60mOB
         K0sIHcmrOftpSdzXJNhSWCkqDAZGTD80f1l2HYenxWhMtNuqSnjygdWUMXxTRlTxvQP3
         usSqfw4aA3B2OthFuNVZ2yHJshQ6nAAZmTenKIk7nrvMpLCSz0mHz6N4RyJFVKA4dFkt
         q0ZHWVrENPoIoW8krS2twX2FauoEk3IOulYAVnrdpAxBuXX2XB5u1MBeNfesbsUl6kXh
         9Tsda+LFTmTwfn6YMAtLvK/JpsEVIsLL+mkpAmJ2HxBucF1sV1CFbz1sdghKqYmYpYqe
         f4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734705959; x=1735310759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LKQ/KdPjRXHrR2fzFO1pIdVwIMyG+67hfBNPWoSG81I=;
        b=xBfOs7nlgsfuxp7seL/D5Ra0GcljUNB6hcJv0VLA2qm6DcXE2mFhNbYhktuuJr8aK0
         YYbddLby2bd2rQsjxVid8iRXUJ8n2ZUOWHZUvHpvMtkIJ+HcOVYvaa8HjTIWpM2MmKGS
         XnnlkULuMMQ1y7/41R7aErNfQK5zjrigCVhwQ0RJuAWKOAw2TomYIDHoKA0cKyf+ehn2
         YpzeNcvbh3ZRdnH90X1nH8vzk4Ct0vrRBJiOZl38cqyJskGz+3qmxUks2V7sxylyvt7u
         UDKRXn7g73ZUJmky/7aG+3ziipgwTO/TafmgkweyWm7ogHktlIpV32NkOVETbDdQDsF7
         RSmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkeRGPUENSfNZMFG+SO3v6r2jp1b+6Uun7uv/32//1Aqe7XBi5T4D4Pn72uCcxzwxpNkhCuxHezZE7@vger.kernel.org
X-Gm-Message-State: AOJu0YwqOvE4iZBQJAloK+G8jSt4E1QMRJCfzirgmRnzPKf4j1NTmiRq
	JK3FzXP8bRk2LmE3/3OfxKkt0ah45SZSkgA6/B57enBLlX3uBQ6GNn9zutRZra4=
X-Gm-Gg: ASbGncuXbltZCQg2XoeVx1gTKRRBtGR7Oda8ZLZV4+Y1FeI22Mnfx2XoXkRksFHOcII
	I/Zobapznp8agLdWffrHGmILBFx5hSPlJBdajb1U3wUtyhxoDaGVlu3IQ7Ty8AQAlbP78ciYQnI
	8iCaG+2MyPwgW7D96eprlN3JeNDaElJ8VVvW+7Q5lDUBXAxQC8TkO8Gpr3nMy/BelvPIjHbeFV8
	6pBKjLFmrJCuqYeHikOoSPNrHLZeA8tnZPfKl6JjP96oPVkWplgGVxSmVAet3xGc1N6g1tiJj5a
	3SZhqDCT7zRkcE1upKAETWH11UIAkFsuSYAH
X-Google-Smtp-Source: AGHT+IFWQfXAdgrp2CpXQA4+qHBefpesptVUa8m2vkPR99QjdXggEQUhIJHg0NNIDARz74yBnc6WSg==
X-Received: by 2002:a5d:6d07:0:b0:385:edb7:69ba with SMTP id ffacd0b85a97d-38a221f2dd7mr3456323f8f.1.1734705958949;
        Fri, 20 Dec 2024 06:45:58 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c84705esm4227874f8f.44.2024.12.20.06.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 06:45:58 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 14:45:46 +0000
Subject: [PATCH v3 3/4] arm64: dts: exynos: gs101: add ACPM protocol node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-gs101-acpm-dt-v3-3-642d64daa5d1@linaro.org>
References: <20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org>
In-Reply-To: <20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734705955; l=954;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=CBzsQBj3NhXJFNW+TyilZZe0w8YWT523Ro1ZD7fmAyU=;
 b=5jgeHxCZtkNehocgTdpWWxI1BFfmy+Ek5KEUu9MkENxqbn/4qWH8mQfu4WsTLzhrUCirUGicq
 NoWEoR6ntyqBhnr9L7E1KZzxGh7p4AloJBMqd66nIZ3q/kWZAkmHK6G
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the ACPM protocol node. ACPM protocol provides interface for all
the client drivers making use of the features offered by the
Active Power Management (APM) module.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 6947dd081a0e..681ea775ba54 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -277,6 +277,14 @@ apm_sram: sram@2039000 {
 		ranges = <0x0 0x0 0x2039000 0x40000>;
 	};
 
+	firmware {
+		acpm_ipc: power-management {
+			compatible = "google,gs101-acpm-ipc";
+			mboxes = <&ap2apm_mailbox>;
+			shmem = <&apm_sram>;
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;

-- 
2.47.1.613.gc27f4b7a9f-goog


