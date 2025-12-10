Return-Path: <devicetree+bounces-245504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1B1CB1934
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E7CE311996C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD2921C17D;
	Wed, 10 Dec 2025 01:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="mkB2lDx5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABB32147F9
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765328752; cv=none; b=q/2hGhvlDo+pqLdNTWhh7PLrbU/sw8hex53So+YkGbL/SSRhazD6MdSoCxwI13zsfSysw3HBW55boad953TvTFWjZ5DePMlCuj/ljtN0hT/s84pvEnAZyPPeExZLUagS6NCDPVXrW1E/buN6lqNE0rA53Pv/Ab9+DhDX+ZnNMO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765328752; c=relaxed/simple;
	bh=cs2ROINLZYbi8BGcsQ5ZsjpjD8nNHjdVuG3v+tZmqdI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ahPG/5rWptzzk+bgj3br5eXg6l6j69ezILT7sG3RaHqzaKdNst21AwOqlsfjiCyM4Gfq1BvMV4SKAmvwqpEbi62cm+zpKBQJw69Xr+m0+ty5q2I7VYjq/39ffXhuz9oXLHo4zfeeBYB+/O6q7AnfqiwqVQB7fqgLf41P9sVa/oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=mkB2lDx5; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477563e28a3so2982785e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1765328749; x=1765933549; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G61t03ohH/z/XV0khgzgfcMzXSsyCROO+wthBFVYyxk=;
        b=mkB2lDx5e5rwwi1Ziq2SO6Kzm84NU3rTkwxc9nsC8pI3S0pelsJHA/1W1yvWh6GfDI
         BsOgpqYBURshf+K1BMomG3ar+M2QESPLLJe8rHhzt8jANM0QghLSPl06ASdfgG44dy7P
         dJ0kutx1zQc3w1x8ZnBu9sL3v5J+4UVpvOrbqVCqdKNsXx+KLKeZa95Jvz5o1wWAZ/fe
         rmrgbHTdJkk9eOo8fES0Pa86aevb7pCpBWc9H2M0hTmJh158uu1gu1Ugzc506X5m/LXf
         TjEdArMXImDlvCH8xhuZYpKJhCCWKvWViH0rsfhWhHVCePr+NDy1sv8QfS0vUP4lNuqk
         EYoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765328749; x=1765933549;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G61t03ohH/z/XV0khgzgfcMzXSsyCROO+wthBFVYyxk=;
        b=FPM/bMeJdVkEH0PYHf49KARoOOuGs2wL0vtvnilqkzu5SSPAAt25VuzlCSMblHmuYf
         c7YFkjZs1IaLKG3e5CcnjzUz7Ws6sUGLnAJPzA4My+cwzS7q8syEXzWndm8mHoabFlaB
         YqlEzbWg3knXdEK1V76GKU2qTk+1ckFb2EdgFOTWGoYZzHb6pRKjoRRBb6oiL4BGJVDa
         fMUJ3sLuIEUBIyd45YDRqdKfOy/yZU+S5GW2YXtpoq1E/o1I/aEcP78CpLy8RJzIkaEd
         t22Q1xJmYYIplBkj6YY7eeZlENxJj3I3GDy5NfBeuFffqRDO5WzlVKqAtKfGipq8mTw4
         LC5g==
X-Forwarded-Encrypted: i=1; AJvYcCXEM1b/5hG4P6+2UIgdpbw/yjFQ8YMY0N8z8kSCBN3UcBnWD4AnBTzO2P+/xfujVvWXuYHbXeItHCA2@vger.kernel.org
X-Gm-Message-State: AOJu0YzVQLln16h5eHAAaJ+U/0HZ7PdVkY0yeFa7gMQi3cfnOfxO6Yly
	wRYKcskccwL0lwoceJmZ+UFInXLUB0OfeFU6F04Cu31pgeZcdKzMAmNmvvmRIgiRR/k=
X-Gm-Gg: ASbGncuRHI0RmdwWPB9Q3tXKvO0TjaRVm4hXvcCl+IipmTSZzPjfMHN0rrwXOX3Su10
	pTxFOc0Kw/yrNzuafF+XoiDW5jJ594pRvvst0IukXuBSUO1xPQmiPtOf3ePZrInLyvNOmrCITXR
	WYLqlolZnJUxd3wY8GZu7kbd8pntqCxaOiaJYtNegYBlYbB8R7Mrac8r1wFGir1ihm9dqo9uLDx
	bRQ6CjdEctjtOpiAJolIx8V1ZLeZcqK6N14MY4uYWudohlQ4rZ45DWBbwTUpgoFU+FFfkFWrCO2
	LYdqPMQuA9kkpQ5Y+M3WJwKYCscQqJ9KTkZWO7o1Fl34O5dxssybq/sk3ZSIgboVSDnCtMQgyHn
	c30RIKnzpgbbV5bXSRfZi1Ha6W1sFK4e/IgdBcDKxwR+j+7jx+C1GRRiK0omVHOMPdrDs2P5UhC
	iQAQc42/IqE21xWX+qNZRmh4DYm6kZbGUNHiUuINSXS2Dp0httY9J9iz+ToOd+
X-Google-Smtp-Source: AGHT+IFEGfjPiVQGshkO/20ig42r1aY3hbFJDhHP5lh9K8nvPlehfynniudzGdwdIlbKiqWq71Akxw==
X-Received: by 2002:a05:600c:888e:b0:479:3a8e:c85c with SMTP id 5b1f17b1804b1-47a7f969677mr27860525e9.18.1765328748862;
        Tue, 09 Dec 2025 17:05:48 -0800 (PST)
Received: from [10.200.8.8] (p99249-ipoefx.ipoe.ocn.ne.jp. [153.246.134.248])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf9acsm163206575ad.28.2025.12.09.17.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:05:48 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Dec 2025 10:05:29 +0900
Subject: [PATCH 3/4] arm64: dts: qcom: sm7225-fairphone-fp4: Add camera
 fixed regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-fp4-cam-prep-v1-3-0eacbff271ec@fairphone.com>
References: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
In-Reply-To: <20251210-fp4-cam-prep-v1-0-0eacbff271ec@fairphone.com>
To: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765328733; l=1911;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=cs2ROINLZYbi8BGcsQ5ZsjpjD8nNHjdVuG3v+tZmqdI=;
 b=LXFLCMuznT9I2R4i9n1Lfv8o05COPLbPk0j1FGBCLabG1z515SK+gadOEWSqZVdy5/5+brTjg
 OzlfbWjz2CWAiVOg0ylUP/stmYcR+5gZDSnIQew/hA/iutOQa+F1DAn
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add multiple fixed regulators that are found on the phone, which provide
power to the cameras.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 40 +++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index c2f856a56b2b..0cfb24e3941d 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -246,6 +246,46 @@ active-config0 {
 			};
 		};
 	};
+
+	vreg_32m_cam_dvdd_1p05: regulator-32m-cam-dvdd-1p05 {
+		compatible = "regulator-fixed";
+		regulator-name = "32M_CAM_DVDD_1P05";
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		gpio = <&pm6150l_gpios 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vreg_s8e>;
+	};
+
+	vreg_48m_ois_avdd0_1p8: regulator-48m-ois-avdd0-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "48M_OIS_AVDD0_1P8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&pm6150l_gpios 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vreg_bob>;
+	};
+
+	vreg_48m_uw_avdd0_1p8: regulator-48m-uw-avdd0-1p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "48M_UW_AVDD0_1P8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&pm6150l_gpios 3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vreg_bob>;
+	};
+
+	vreg_ois_2p8: regulator-ois-2p8 {
+		compatible = "regulator-fixed";
+		regulator-name = "OIS_2P8";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		gpio = <&tlmm 72 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vreg_bob>;
+	};
 };
 
 &adsp {

-- 
2.52.0


