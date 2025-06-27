Return-Path: <devicetree+bounces-190391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA58AEB9C3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:24:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECDC7175895
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B58CE2E54A3;
	Fri, 27 Jun 2025 14:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="vyOnL0Sc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB77F2E425E
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751034206; cv=none; b=ewd+wu/cy5ET8/+npAVp6GAeVZreNOupJX3GV1dzJpeBZPeUOZXQ4I9iKV4ZOpBbQSSh6Cs/po353wgV50yvAHoSNzzx2JHWLGvlQhIpVnDYQAWMCVDrmbxk8LPnerjk6XNB70quETTW6z+dPuP+azupv2ydkXtcGMLPTOtRaV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751034206; c=relaxed/simple;
	bh=E/I9W6fX+DhSmsmtI3yC9YfnKc4TowcG2XvObw3IonQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nlNPWKNkUKsxLWbH5kQDG/ieje7dQ3rgx992XmmDe2H5MPoEPsSslNkeKzlo0Ri1pSmpqQSpLK4JsdxOGZ2VDyzbFbddw7WRreEsNHSzQgejJgJeZrwPheZNxN6hsFOSYPK38KALuqW6EiaW4ge4C+W/RthVQ3MjZ1vkbNe9nYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=vyOnL0Sc; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7d094ef02e5so365141985a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751034203; x=1751639003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=vyOnL0ScpdHDCvKl57jCczsekDM9IM1QoaW+iyOJlWxRzrOUhBr16IPASxwBTGflyK
         ted2mCV9+ImgzVD0BxXBqjybykmqTYUytYVaDqUjhoUBVi72v9x0ts7BS/Fydg69C75X
         MT2btvkVIY/0Esfgz83iESJo/GJNNvTNdDMz3sdSLAbc0P9tdUG6Kp5sSJ2RNaF770Ct
         TBSeNMnsMELfSFM36W72FIY1L+glqtZbB5lpeYN0aARIWETa/nLY9Rvhi5ISTOSgV0Xw
         WZYlgzRgHQIFLQIK4mOfWQbWQ/cWvKayh8jxVAImPWeJ8o6D9fFH9q0XfVGNyK4cG1e7
         YKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751034203; x=1751639003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=ohLPgQJ6dCAb4DORKiu3LujfgU9KBzaw0b/JOu+7jQueAxw8t06P5z+a17uQOxyg24
         8zBaDUnbRpBm/ykzRApWrPrMT6wokJIqmB2TiWVyhtz1JnHC3qaCnHOAKKWboVR4+rLI
         ewt1zIyaEL5ybSWnzKi7IzjVhwH41Yxwbx/z8IjJm8ESZyGViAmMa6vQ/udGIn6dHKEX
         fmbCHMQHs1EBzQs6AccCjPdXBGprI6Y2JwJVY+WfINvQUMAkJhrEP5RDROOdTadD6tVW
         5F6JrsAd2SwTsga+s6ez16UpeYDjDYmm+8m546wCA2SEzwTn8HZsqA8WjAhJ0r8ZImUI
         zshg==
X-Forwarded-Encrypted: i=1; AJvYcCXjWbVdNpgLETPVrxAaVOqVNNloyLFiXuwB9vsMe5rOr0VzqPJ2dD5+tHJQbtBUiUDNAwXs22NbkZrJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwI0RYz6u3NAWhl8L0cJSg35vEJasUKLlaSkuwVuIuMLGKF11kY
	X5nV4L7k2Ouy2asgH5La04al0E1I8H9qZS6DKicjCtFA6epH0PLw2PnS7PZqOPO892o=
X-Gm-Gg: ASbGncvZdu3nvrbFdRuhErm05nZohAND1vIshq2nwHtltQizkboXwDBbfdYW6MQK1In
	jKGqLnGh53CSmUAMBIxE4RIBTmGQJQsVSh25o3svQLMDwzM12o8khShMhZ9WezCbXcGtNWmhZzZ
	UZLPs8Hw9hRi3dUzz//1EDVJFDTqd3od+pNLvbR7N4yGkqBxQPcfV8HhZeWdQMbmLjoZytVKklB
	484yeQQfph32dw2Xe5jaWAu4tk17q6b7LXLemq4BaZvbbz7GcmiPCR5fXpXPyZ6HfWtwDIm6Hmw
	p7HVawidFU4fw9FWORNwJfp+MpSwmK3Wj1omreWZFdgAq+3WlqRGcPdXAjI57HUVEY8UCuHeyE1
	YW9RbRkufZADcl2imJE0Q9hp0do4/P42Mokg=
X-Google-Smtp-Source: AGHT+IE88bXOLiCjUu2+zVcecKfJf8g4CQ5BFAJMyhK2OHk7mseb/EKQgLzh833iCYXdtJd2+G7LJg==
X-Received: by 2002:a05:620a:2729:b0:7d3:a7d9:1120 with SMTP id af79cd13be357-7d43bc15837mr1028658485a.24.1751034202759;
        Fri, 27 Jun 2025 07:23:22 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d44323b4c4sm135708785a.106.2025.06.27.07.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 07:23:22 -0700 (PDT)
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
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 7/8] riscv: dts: spacemit: define fixed regulators
Date: Fri, 27 Jun 2025 09:23:06 -0500
Message-ID: <20250627142309.1444135-8-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250627142309.1444135-1-elder@riscstar.com>
References: <20250627142309.1444135-1-elder@riscstar.com>
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
index 7c9f91c88e01a..a1c184b814262 100644
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
2.45.2


