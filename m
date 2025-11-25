Return-Path: <devicetree+bounces-241994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6283DC84E8F
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A2FF3B07B4
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A63F324709;
	Tue, 25 Nov 2025 12:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RGLz//ba"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AC73242A7
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 12:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072399; cv=none; b=HpcfEIqzv6d5bfesvHEVBoZ6la3X0bsNUxAlQPXY73nv92Ye0KqACX0xncieXqUkz994a5uRvuFNFSZh8/2dd7hQCC8X1gBOkTQFVIAwdwRVRE+i8a60CK2AcrV1QtYiKvzU6CrG3j/Dy59cmZctHsapkuwLIUNpCa7z2zr16ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072399; c=relaxed/simple;
	bh=YadarWm8iXVMTc3kvOXTZJwKC0IolLXgB3hQl9V7qZ4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RTnwhcZsgAXqckszkeVx7RLxN6cTBpioiyf7dCuWjfRPKwtxnulLidDHH0MgQOduLwsMDZQzPSXsVluh8u6aH/RvRV9CpP3c5QlNtiL6o1fs6F5iKsg7Ex5xb+pH4NejTzCeQpsQcGtW8csVWU5KbfWdpsjGJUsaSp5sHtTYD7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RGLz//ba; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5958187fa55so4166422e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 04:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764072394; x=1764677194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yQWD0QKdZ0TkCEqYFYnGsqgX6XSV5QR52vBKePlFe20=;
        b=RGLz//baihWAjD5nCVgsMTRIlPsz7FlyFz1LidxQXKjMnKJ4XLI7nZblQO4b+W83xl
         B7VVFQy5IMHRgrPkf7qAoP0/Rk/piTDtoOmA07h9Dtk5rQ+ReS6ipC0aWTMY/42jVn3p
         JF8T1Qdi3ED9C5ofQ2ktByJFLjWnStELGOtwZ+8B/6sXVYRy7Opc7XBhyzTmg5iVsz9m
         CD4kQQ2qqhvk1AI1iX759I8SeGp9dSh1S0WYR0WJCVVBIdAsVmLRFVVCfelVubtsz+Ij
         3zDXDNrVa9rDvJGvM/ROWPm9MSkUESuU/w4wO+z13R9MO5EFpDDy8IqZ2hShiiQDct6R
         1sqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764072394; x=1764677194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yQWD0QKdZ0TkCEqYFYnGsqgX6XSV5QR52vBKePlFe20=;
        b=IAEZjO5BslOOL8R08wFyLQ/mWg/qpM6UHflYKuqBgvN00eoj9QhPeCv4zIB7UgZUJO
         kLARjNwtmHOkNU7O68ZHEaRuiY81QKs5C1KWwf9KrvsivwhTS35OC0Vo/eTeORQDCcjq
         cH4TXSJeD2RdIliOrjtoQsNzXO2vu60ht/HQdCI5LuYy7mB3npuvxHHwdE6gQ+oAGLhQ
         kxSYAiAY4bBHvfnH+UKtk1+4kYF7T6CHbo8xJpuvdfZujMgwN2nu11t4WyqWE7BOl1Ft
         FA7Hd71XD10LQ5Rgklqiww7hwwedXiqaKWRX2HiHKAu7EUsM+vPgpB4RyLEpU6Fi2gd+
         NEhA==
X-Forwarded-Encrypted: i=1; AJvYcCUpq4B47UHuGRqjYJwEYh9jM7rUDoYjf63SYQYxVCjvYsDQf4oJ4ENTmskxBh9bAvIjQA0ngkUC9hfM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn9MlNsByZiv7I1lAZdgAzUXBNoaSoQdkPTN6oVI0NcdwINQQH
	EFfR36g4SFmnfLbbeVr6791wf3xcbT3c3UnkbOsCx6vqO+fbtRPzwVBV
X-Gm-Gg: ASbGncte43uz2zkEdi0TzS+9SBYxYIywKMA9MSXbFgH2RaW/T5oIi532k3xVn2q8/AT
	7cnrt+CkOTe7B7zwtvY/jQbWI51gTlt/r6H+s/kzNYkSZA0hEF44lPMCrs/mWnEa2G/jAay79D5
	3Xd4lZcfxV3nKi0GJnta2J2qbf1joxmG4/0hx+HmOFlWVIcWf88Zte8fcTo64TEVBkPV/xykJca
	nT9rGUOEyeM6jaMl07JNCDqWdz7bCkPgAcflP+IyuNMdOwNQjfrp/5s+ZhLGfHBiqrIBhT9SFrO
	2L0nzwK1+qwHxCqt9V5vox83FgA2kvXkn+vnFfqcZ1U8hC0Q5vbTy6kZsY9OnLss2sl5IStzRLB
	WSJxMZtDzl/znxJj4MQMZkqtCbeZkcfbYt0IdFCjsncuraV6Hq/Ut7q1xBSoUdoBgT3ReZmlQky
	g=
X-Google-Smtp-Source: AGHT+IFhS9KE1wuZQzl8w9HsDmWL1weqKWL9f1LhqVtawTbvw8WoVOvtMYz13PNxZKJZHBsKo2LqMw==
X-Received: by 2002:a05:6512:118a:b0:595:82ed:ff28 with SMTP id 2adb3069b0e04-596b5062a6cmr1017970e87.32.1764072394159;
        Tue, 25 Nov 2025 04:06:34 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbbecb9sm5150993e87.58.2025.11.25.04.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 04:06:33 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 12/12] ARM: tegra: add DC interconnections for Tegra114
Date: Tue, 25 Nov 2025 14:05:59 +0200
Message-ID: <20251125120559.158860-13-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251125120559.158860-1-clamor95@gmail.com>
References: <20251125120559.158860-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DC interconnections to Tegra114 device tree to reflect connections
between MC, EMC and DC.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra114.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra114.dtsi b/arch/arm/boot/dts/nvidia/tegra114.dtsi
index 6221423b81d1..732f8b5b4eed 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -125,6 +125,17 @@ dc@54200000 {
 
 			nvidia,head = <0>;
 
+			interconnects = <&mc TEGRA114_MC_DISPLAY0A &emc>,
+					<&mc TEGRA114_MC_DISPLAY0B &emc>,
+					<&mc TEGRA114_MC_DISPLAY1B &emc>,
+					<&mc TEGRA114_MC_DISPLAY0C &emc>,
+					<&mc TEGRA114_MC_DISPLAYHC &emc>;
+			interconnect-names = "wina",
+					     "winb",
+					     "winb-vfilter",
+					     "winc",
+					     "cursor";
+
 			rgb {
 				status = "disabled";
 			};
@@ -144,6 +155,17 @@ dc@54240000 {
 
 			nvidia,head = <1>;
 
+			interconnects = <&mc TEGRA114_MC_DISPLAY0AB &emc>,
+					<&mc TEGRA114_MC_DISPLAY0BB &emc>,
+					<&mc TEGRA114_MC_DISPLAY1BB &emc>,
+					<&mc TEGRA114_MC_DISPLAY0CB &emc>,
+					<&mc TEGRA114_MC_DISPLAYHCB &emc>;
+			interconnect-names = "wina",
+					     "winb",
+					     "winb-vfilter",
+					     "winc",
+					     "cursor";
+
 			rgb {
 				status = "disabled";
 			};
-- 
2.51.0


