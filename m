Return-Path: <devicetree+bounces-171092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCB4A9D303
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F7D23B689A
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BACA221F02;
	Fri, 25 Apr 2025 20:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=libre.computer header.i=@libre.computer header.b="W6U48iou"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06664218AAB
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745613083; cv=none; b=iK/kpNZTELCRtvYzDkL2Q+Ek6775btSrtIHlMRGG1hp0Mwe2q6G035qs1Q01bpYyQacvKiGA6GO2gWraA3MVlV8Vle+m4KI44l3Mu4rYibQ5isVKHqThkjbGOoe7B9kyn00Thjw4XLIRDIadqkhMZ2lwM0MTc+ANagUQ8XirC6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745613083; c=relaxed/simple;
	bh=IjHSoesetz3uxvPn7iLP5qeEI8S+hsTSVRSyfU7OeSQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LE//VnJpQge0vi1Xew1/nPUnZfS6GIJgOi4+oYUiUrsCa7MiD5QlGryxfE/wEteuEkmnrGYUWN23ufP3SjcoXwxTkhMGgkQT9DxSB9GWpqAWSjU4KRTG60VH7KdcUfitx8Hk+UYnj1jEPnkgpYS9Tk6A1dtWgYtg+Lmbx1NTLcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libre.computer; spf=none smtp.mailfrom=libretech.co; dkim=pass (2048-bit key) header.d=libre.computer header.i=@libre.computer header.b=W6U48iou; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=libre.computer
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=libretech.co
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7c5e39d1e0eso294108485a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 13:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=libre.computer; s=google; t=1745613080; x=1746217880; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GF1xjuBmQCLqhbqJW9dfNwD3/0r4qJdVkbILuVmlmn8=;
        b=W6U48iousV0gmkFDZblo4xtEbG1FhIwxfmbmczbMDw7HgqLNzzzgd7OfeQ4dOgUPdV
         NYiCIawgG7y47h/NxckyW864zJE9be9UJBWIc8C8JPNqWLP+RtlERzv2JW49EqZnfzbg
         7xXFIaC87gPVgCtpalKhznaILcR7kTvAXdK3pGstn+/vvCq83qUILFgnIbc5OcwvSHzo
         P2NzWKpLUzIxvzqR9jr1/RIRsUvPw4EnMH/17Z6M2JUI0KhaLjPFbfc1czgXNDf8n6wU
         LrRp1R1wCmx93dU6G3oO7UVdlSGdyuK7EBCevxjle/wVMWSdmueSxW1b59z/znkgYgfS
         +6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745613080; x=1746217880;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GF1xjuBmQCLqhbqJW9dfNwD3/0r4qJdVkbILuVmlmn8=;
        b=AznfiKd/IWScOxP1VgL2Xft4Wcadqu9ovdP2U7yxLfxlZHGDzCyNORQLwA4sIjUffY
         MrwlQuCUuMkbLtmHZiXSGTnYRMllF1nyZLI4nmF49yzgy/vS1mgitFIvCzIKHpbujNm1
         ASnauvsBHBv1qJ8lhvKjAfBnKqBH1kVJJPg3oTypS71yXEnFGLX3bkWOUb+esI8jPJHB
         9EX8SA361EEEYNODnnM6I5Cx2tqnt6jSRMbyCb51j122PWmaGFTwZN8jQSkUtr4bK/O0
         JCXbV3pwGfhgpbs0Al33vejsZz5b4lBX+e7FWsegzkLgEdqsmgsE/XUeVLvkEOrk/i9p
         BIcQ==
X-Gm-Message-State: AOJu0YwORLlYrYXBnWiOUYhgMa9vhcq5MltA53jWYI2lSsVzovpXa7+4
	ztPbF+uO5m5Xz4f1tPEOy9ymaM++6fu4LIsNtVNf7nK96jSoOditKAy4MXgx1Q==
X-Gm-Gg: ASbGncv5slnKSkpJKzaSHaLqSsIrX0eEKHlHIk4473DKIzIvyUP/w35sw/9OIl1Bmbm
	mh9I4WR8P7bXC97udPtw5x6cWQ8CxDOZwEiHJSGyryN4biPQUVn03KRFglS11iWzOy9RlXh8DsX
	IP5Lx0uEXEVC9pbcUe6sVHW7ab7GSqmkMlQJ3f8q+avD6t9hDgP+itZLwz2Fbl9r+kW2EpFWEEm
	2U/g1LL1JmOoISO8E1tPSdWeD0NJAvXeZHmHr5k/0YSfwQrOLfgqkpuabW9Yk3QdkhcUuWgIKhS
	5v6EmULk80pZJkK1n9IIAmJ9AJI8J1lyE+iZ
X-Google-Smtp-Source: AGHT+IExy7byNjnzr61Qn1ql3vlbeCJFkmt8dfGkcDuwiloO0OM0ew357yO9XtgDpkXGc3h67FnjWA==
X-Received: by 2002:a05:620a:27d6:b0:7c5:56c0:a8 with SMTP id af79cd13be357-7c9668634b0mr182306685a.1.1745613079619;
        Fri, 25 Apr 2025 13:31:19 -0700 (PDT)
Received: from localhost ([2607:fb91:bdd9:47ad:b39:2164:cbe2:1695])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c958ce4e97sm263041685a.65.2025.04.25.13.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 13:31:19 -0700 (PDT)
From: Da Xue <da@libre.computer>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Da Xue <da@libre.computer>
Subject: [PATCH] arm64: dts: amlogic: gxl: set i2c bias to pull-up
Date: Fri, 25 Apr 2025 16:31:18 -0400
Message-Id: <20250425203118.1444481-1-da@libre.computer>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

GXL I2C pins need internal pull-up enabled to operate if there
is no external resistor. The pull-up is 60kohms per the datasheet.

We should set the bias when i2c pinmux is enabled.

Signed-off-by: Da Xue <da@libre.computer>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 2dc2fdaecf9f..aed8dbfbb64d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -214,7 +214,7 @@ mux {
 				groups = "i2c_sck_ao",
 				       "i2c_sda_ao";
 				function = "i2c_ao";
-				bias-disable;
+				bias-pull-up;
 			};
 		};
 
@@ -576,7 +576,7 @@ mux {
 				groups = "i2c_sck_a",
 				     "i2c_sda_a";
 				function = "i2c_a";
-				bias-disable;
+				bias-pull-up;
 			};
 		};
 
@@ -585,7 +585,7 @@ mux {
 				groups = "i2c_sck_b",
 				      "i2c_sda_b";
 				function = "i2c_b";
-				bias-disable;
+				bias-pull-up;
 			};
 		};
 
@@ -594,7 +594,7 @@ mux {
 				groups = "i2c_sck_c",
 				      "i2c_sda_c";
 				function = "i2c_c";
-				bias-disable;
+				bias-pull-up;
 			};
 		};
 
@@ -603,7 +603,7 @@ mux {
 				groups = "i2c_sck_c_dv19",
 				      "i2c_sda_c_dv18";
 				function = "i2c_c";
-				bias-disable;
+				bias-pull-up;
 			};
 		};
 
-- 
2.39.5


