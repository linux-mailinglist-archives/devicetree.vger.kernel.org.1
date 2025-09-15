Return-Path: <devicetree+bounces-217263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF68B5726F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:04:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60E8F3BF08B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBFB82EC546;
	Mon, 15 Sep 2025 08:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GRhIkQZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987332ED848
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 08:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757923360; cv=none; b=ePq3jS1BGF8I/Z49HPL9hiNXKdzY3Cxsd73ciYsMjAR8ORuOgHFWH9nWctEaeLWBs9WOT4uPg2/kQELUHAvHbhZ0Oh0/eSmKBzLXRu5Y0cmBw3MriW6NUXGTx0RuPNZLAKJGxW7/muVmr8sOs5/iDEmSJB5xtRx/kDQqEutnnOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757923360; c=relaxed/simple;
	bh=B4GtJKJBH9yFTatMG63gRF6gGdMXdBZOsjLfxiQMoh0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=THTtBhRgnD6NCAOEBWhxXuhca2lDKlxTpVr/YSb+YjEHT7r8zZ2q0jEgqGdBQjZPpoQq00n82WWvBHOvpA8TbiQ26mYJmcJUJFb0H63jBV4M/McVidgWUTLJh9G2Ki0QjddXT6Y4vO3CDa9/n6jitZPKRstQkWLWwG8KsEwFa2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GRhIkQZ8; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5725e554ec1so1028947e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757923357; x=1758528157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fiS/YOa0S583TqGV9YqRvORe5l4bhLwLn8JjJheNcUo=;
        b=GRhIkQZ8uuVK9O3QHTpsQCbgJr0cQmcJkaoTAft5RTSRRoKNEfBidg8f9uMzxJsDAV
         HsHCUiwLa4NX8J6ngY5SVrBwQdpvHWbq5kGE5J2F2bdp2zJjlSdA7i98RTYlrUI4NMe2
         SzEE3RpMRmZ0f4pailEh/eJmtYZ8ZITnGXzmJGe6He5f7GVL+4WkSCyiDJfKvkLZpQqo
         zYmt65dKs3ApNrpEM1sliXjuv4rsbDdoA9k2QiPaqktCRpovS7pRf5MeTIUvuKS6ULjd
         CZqKDDJ38yyI1okayYBC90Hnp8VeRgvI9kh+YsNzXqQFlSljLUSFpwYW5xmR9nR0At6h
         zkXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757923357; x=1758528157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fiS/YOa0S583TqGV9YqRvORe5l4bhLwLn8JjJheNcUo=;
        b=toSfQR7VW1i0EiWrnM2hBqyjS0vv7Y9OlcwjQ+WQoAlIGULTAOVwcvHPilSr9bhjQt
         WtSoyA8mr8Lwr3pAnEK8X15qI9AF4GUqU12FAkOf0JaJNBfTIygl0TCUJpc0jfecshKx
         mX1QIDIu0czzkDs3/m8WI9jhX9TZ7pD9pklJEZic62UhsnYaDEx/Nb0w9Sk4K3vWbD6z
         Kd5nbr6n+57qELTUGq6HVZDNqFx3asQkeDUkLpGWibpVQkx8C+RKf5zL35maOBLVc0xt
         GKnlCVcESa+1wVzgvJfv1TvxEMrhED7aODpEqjpjyNY+Um3D13EZo9c91CMksopTvQo5
         M5mw==
X-Forwarded-Encrypted: i=1; AJvYcCWjWXy70NqyLmXtLEUkkQVp/orkkZ+1qvi5EV5D5pFwi+Oe7bENVgd7+qhq7bzHb35O3kGzT8rNanHW@vger.kernel.org
X-Gm-Message-State: AOJu0YypCkxeagDoUZw6BS4ZZxujR6rGPyw0GQv8/7trOocvdGX48npr
	Q7qMe6M4mE/olwNFQyJaLAosD20rVDNoQXXZ2q8UYqXnl8Ns1HF/btA1
X-Gm-Gg: ASbGnctZtpyVOOwnNLRCBqy3/nOZmW4dTUTbvsWjU18rTq6p1o9gJKIBUOCaLp+4KJs
	8tb7RdtvwrdLLtYmsL+34VR5PPjNdS8N6AFbaP6Mxe14gSzHFwJ2f1ASyLyZVxMxzxgEBbtdSKc
	J85YWB0GZZFGz/VRQV5ymf/yDaCy5BlolcRBQU/HUu2TusPDYfYsTB6/NuJHii1kLiGjdjtPBox
	SFk7lv7DoHJQbxE8VEPbOv60hL3lonm+iEHgt9Pe9hR7KsJINjH23zY9kk4Qz0cb/AemYmevzBj
	SgWb+NZDAo2QyPaB4PNPYYSpm4qxuxvOl+5phB1sWoZ2wBGLOVdMYt1rdrAT//sHwRcLX9Qv7lP
	sb4NsRIac5S+bsw==
X-Google-Smtp-Source: AGHT+IE+5sSGPH4rlFHoNVcXJtfPfdaGh32XS3N4z2KPM735+7UyzmLj5bDMEXfZtAVl5BWR4mXUTQ==
X-Received: by 2002:a05:6512:2311:b0:562:d04d:fa06 with SMTP id 2adb3069b0e04-5704f99c572mr3714704e87.32.1757923356547;
        Mon, 15 Sep 2025 01:02:36 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460dec4sm3392381e87.103.2025.09.15.01.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:02:36 -0700 (PDT)
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
Subject: [PATCH v3 11/11] ARM: tegra: add DC interconnections for Tegra114
Date: Mon, 15 Sep 2025 11:01:57 +0300
Message-ID: <20250915080157.28195-12-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915080157.28195-1-clamor95@gmail.com>
References: <20250915080157.28195-1-clamor95@gmail.com>
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
index e2bc8c2cc73c..63214109ec00 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -86,6 +86,17 @@ dc@54200000 {
 
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
@@ -105,6 +116,17 @@ dc@54240000 {
 
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
2.48.1


