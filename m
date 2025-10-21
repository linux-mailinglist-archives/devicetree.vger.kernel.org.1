Return-Path: <devicetree+bounces-229323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D259BF5F6D
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6975E3B5076
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 11:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECE1B2F363A;
	Tue, 21 Oct 2025 11:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rjsV+D+/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69BB2F3607
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 11:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761045064; cv=none; b=Z7lrMG+k72REJS76w8xtNGXCqmQh9lyobzGdsJglJIAJHo6LUWKh8AczdAyPlJFgXm892eolr4cagCK/gzzZds2mdRvisxWfKtOgZnNbmi1yLU8W86KRnGIBzo6HbzmBsVxV0u9Q+ohUXeycOBq/T7bIhgITK1M19hLov5i2tYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761045064; c=relaxed/simple;
	bh=ksFlsenVG5BLSjQ9Fd4ZX90f73sEys91+3sYDn06OyM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q9SFiJqcWsLqTRk3zxcc57HPc16dt9JWQlx5t+7ULsMn4eEw+4rNqMcb0woc6JTRloPo4QSEwAxM1I7Ytz0Mtj6i5d1/j7bW/rFfjCLxzdGEfJZmZRZ15ut6xY4jrY+fF8LUwnX+D56/qqwiWZWC5lM9lV0+5gMSfSa1ed0O6Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rjsV+D+/; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-427054641f0so805247f8f.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 04:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761045061; x=1761649861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5EyTqZZ7MGdSDa8l4x23g921Hy97xpn6zc3palSUX4=;
        b=rjsV+D+/SrANC3r+qem8Fq2BHxg0FUbYXjRpNb76S2VvsAL8pHlj8VMBORNK5+o1bh
         rJM3gV175XLtZQpOSx++IDYnOsOzV8T1dq1lhcuie8ssN5HyqJ/xiGtJua88lHuBsxfm
         mz/+n4ffcFOJNubyaknd71RcToPNMpwgd4A9vnPIY6xgjSCHfeLcopy5XAFwM8YSF22x
         KNVHauV5vMfR0zLWBxYZkrtFvBD9XIkOQo4z1ywbrkF+zJiA7SnKShesfQQ8OMckGK1T
         khee3EYjSwzGciY8BpOjms4gBWfJz02NoD5v5vgrbDYvNaeo+LHRcNG64QdNiaYGImKf
         g3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761045061; x=1761649861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q5EyTqZZ7MGdSDa8l4x23g921Hy97xpn6zc3palSUX4=;
        b=Y1LzKbU0x+ZNjeJatVzis2uLyvIrao6jny3HemnebqpTZXnAwaQUFG/zuM2oeW+KEm
         yaFYt+kCCcU0lXX3PankEBCms45NnjY4CJj60Azj2AqQo0ukciS5XBDHYZ86teB1OCcd
         VwTveYjXdjrLJN+QzU9IdZ6x+w84ZTQTQoPqmRBwrpoCQXeX3akeOSknm6zyb0sWB5dK
         LOccSh+ij9tkvJ8gvIB6KpWntq1lc7TMzokuBFfQrjEfWVetXEihP3ihbgeOq7xJ+SWi
         vuRm1x+57VdABkm512nSspqM3M4Ft1KofIcUgWiM8LN2JrCtc0JltTkFtesjuJ4gRTQy
         X34A==
X-Forwarded-Encrypted: i=1; AJvYcCWLWsoZaHvyNBe6aZuE6WHJBOQDZrqCh4ntt2RADXaxVeayE6q5Ycep1HfAVNKLxJWxMOxwFazyrRa6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxarri2Z1AU0jZ6UaHmeWMsWr0DReOXppNh0zHWuOxzmFtA2ZD2
	0PPVv8ix5nFNc9e0ZnPKFlaglSa5y1mFt+M47Gp8ubQbtXWY6w/cbA2h3LcFugLBpbk=
X-Gm-Gg: ASbGncvnAluvH4vYhiVnJTnKzX28R6HizGVJOs7tf4ddriB2rGdwfKxxE3ZW/JRMoKA
	WaKOusP6+CZWmetcO/HOKdk4OE9EiqIMrXeriz/ayBS7yG+Akw9mM7YOIiVHBXyHN9vQDYz54Ik
	mSeYmdPom8NIi6hisbAUvsiRH4AY6uSnj8EzIL/NzejuIVeblbAiBbOxPQwzIg6yggp2ap4pTX0
	lWKaxUPzMAh2VhhjHhK9v8jXwZyqcK9oFLY1QyDY5E3Ao6+28sRiknhSW07GKvgIoBMV4EI5OVG
	N1KkHij9uegolqnFmd1noG2VWE0P6m175k1yB8Ifuk9H0HbQUhX95bz701ktybkZfKTIPMhcLNt
	Idf5IvFrxFNNEEtpWbBl/ogUxnrP6Z4TUC8iO502Pvnz3Gd7S6V4qPs3gt+NBKVb1OwM2BQ9Rue
	axJYSWxSYwoxo=
X-Google-Smtp-Source: AGHT+IE6kW17wi16G56epg97Q5LRZhtLyC50m5D+iXMza5wlR5ua98abI/s6v0YwjekhlOLH+56S6w==
X-Received: by 2002:a05:600c:19c7:b0:471:152a:e57d with SMTP id 5b1f17b1804b1-474942d9c6fmr12082165e9.3.1761045061205;
        Tue, 21 Oct 2025 04:11:01 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00ce06bsm19510485f8f.45.2025.10.21.04.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 04:11:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: x1e78100-t14s: Add audio playback over DisplayPort
Date: Tue, 21 Oct 2025 13:10:52 +0200
Message-ID: <20251021111050.28554-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251021111050.28554-3-krzysztof.kozlowski@linaro.org>
References: <20251021111050.28554-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add necessary DAI links and DAI name prefixes to enable audio playback
over USB/DisplayPort and HDMI.  The HDMI port is not yet enabled, but it
should carry respective DAI name prefix regardless.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

ALSA UCM and audioreach topology will follow up as well.
---
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 654cbce9d6ec..103c4ca97adb 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -351,6 +351,54 @@ sound {
 				"VA DMIC1", "VA MIC BIAS1",
 				"TX SWR_INPUT1", "ADC2_OUTPUT";
 
+		displayport-0-dai-link {
+			link-name = "DisplayPort0 Playback";
+
+			codec {
+				sound-dai = <&mdss_dp0>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai DISPLAY_PORT_RX_0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		displayport-1-dai-link {
+			link-name = "DisplayPort1 Playback";
+
+			codec {
+				sound-dai = <&mdss_dp1>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai DISPLAY_PORT_RX_1>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		displayport-2-dai-link {
+			link-name = "DisplayPort2 Playback";
+
+			codec {
+				sound-dai = <&mdss_dp2>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai DISPLAY_PORT_RX_2>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
 		wcd-playback-dai-link {
 			link-name = "WCD Playback";
 
@@ -1013,6 +1061,8 @@ &mdss {
 };
 
 &mdss_dp0 {
+	sound-name-prefix = "DisplayPort0";
+
 	status = "okay";
 };
 
@@ -1021,6 +1071,8 @@ &mdss_dp0_out {
 };
 
 &mdss_dp1 {
+	sound-name-prefix = "DisplayPort1";
+
 	status = "okay";
 };
 
@@ -1028,6 +1080,10 @@ &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
+&mdss_dp2 {
+	sound-name-prefix = "DisplayPort2";
+};
+
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
-- 
2.48.1


