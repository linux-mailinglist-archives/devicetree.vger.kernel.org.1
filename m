Return-Path: <devicetree+bounces-248631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12275CD491E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 03:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD80F3006F61
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 02:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1056F2D23B9;
	Mon, 22 Dec 2025 02:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zC4gcPQP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380B73242B8
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766371127; cv=none; b=uPJC+vg4pviUJ18UseJQ6e6F9LlOl8mhuEhPxtpPi4F3BK6xJodFaS8deTsxMR5hFfX9qMdm0mpnfWmPg2x7+k0tR2mKORuQVCSuWigynp4tM/oiI0pwpRw7BOWjfP8INoK6C7sK7xp2DYDUaS2X+yGOBNfM9/gjMD4iPeiJ6Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766371127; c=relaxed/simple;
	bh=uMPNZsJHadv3lutJcGIimg27to5aUsI5T84SSkOevKQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cJtP37hJDg4IJGYS4E9l2wikJfABjyWWORxRR5JAxoXvCLhjg0hujlBzZCoVnJ5RFsyRVq+Rxb4WzmOEOJo9RMYWxrGcK76rP9BPK4UP1Q1n+bm0yeNP4dHip9a/4R/+f+dO+b4Vg2YfVNGHdkT02lvtC2N1FsKtI8kG6q7L5yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zC4gcPQP; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-37f8cc9a9feso3315751fa.0
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 18:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766371123; x=1766975923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fXyuaQm8FsIVH0LsNXOv1C7IWypi3pqijz/keaukyvE=;
        b=zC4gcPQPvnaj4JQ0cxMnYtCgB2PRtryV8Ce9sjZ3UvfG8iXMM8GgeXtojQdImHVT5L
         Ofep8DNtcxo9Uy52SeT2vqf7ae5dKJy//Cju10m6HNXA3r0NUOwj+BrF38F4KRHyNwa6
         lCMiNRXsWEzdO4TRkNbHI6fXBYh6vRmDJrgR7z7XOgGIh6X6Klb1ncvjK9yfHfTnHU4y
         ZMEVx41onHBjd1kaOhid0TixihQFB3KYPbdh6SlqGDkABzNF/4vNyppujyOySD2Mgdyo
         cID4YmMILFyvlOnB/ayvo+rdHi0bCT8PJJB8RFXQ0MURRobHH7PhulevTSWVrVKymGVH
         g1MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766371123; x=1766975923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fXyuaQm8FsIVH0LsNXOv1C7IWypi3pqijz/keaukyvE=;
        b=pvUQKXexYW+QqSzuJBSYWUy4xKLRsdBClpyh2POOCUFUusuuJSf9s1RVEu2hjjtR9c
         y4yKC2GsT4et2qTEs7IWE7RC+GoFwcZYOJweevG78yRWHfugOWLz8xE9Qe2pxguaTpYf
         0W41G6RcHmg1+w2eDV3VjihrWL0Dve/Ny67vkFj2QFYst0eBPJ6DxPqYuLtfJqlSNUIH
         GjcZKjimjVTvmGLjQj0NJq+3A8TqfWOYlc9h9KBOMVSJz0WHGdAmIHho7cEpM48+PbAJ
         F1fLapR1Vw/NWzGYqHEFvP09RVRTk6Ka2D2jWh5PyqT3Xob2v9SkSSdYjqsf99ijdN2L
         bsJg==
X-Forwarded-Encrypted: i=1; AJvYcCUqrwL/0rZYd2uEie5IaGHyUTEGBos4eNZOTtONGaZH6fExNptdkEEK6vNNWDvSrLeeK+VYJFWP1GE5@vger.kernel.org
X-Gm-Message-State: AOJu0YzSpmJr6VXVh3mtfBe2GfN0SaJQDSG0RYgKb9Uu0cYWFcpStzpi
	fM9YlBlFYTW0zfSYtfZURauMzxFOU9oCiGifg+4kGWYX+fQAHGXA5MCjIb8gpU07CHs=
X-Gm-Gg: AY/fxX7IWK/mz2tQJaUfOyoLNCSvb6ZVEW/OoxfuHNX9H7aC6mKy5gPEhhkqz9lmqhq
	74Vhfmaayb5v8OBJ6WCnsQVYSd1G63vE+xaX4hvMOw3sGdnsKgP5TdzR7Ye0zVmxHCieTzsRJED
	b6m103V2kDR4BgmgNRtIK8UJE6uLWWIv+IrBIbXUAFTfxzwF7Bfz8AqxozC0I5IUXaXDDzRK+KC
	ygxtaXwsBJ3fEh8Hs4Ixb5k7ovYD7gLTpjuwd/+HwlOjc1Eeb42BNmfYIUEhoj0ILU/ZwojRE9J
	D7uAWEh4qGmJnbnAqxv/ZU7nrms9T2QYurgXRCq0mxcMt5nPBMUuQGA5DWORKSinT/nU5P4ZVtU
	s1vaTYm00/6stBoo21rJ+Gm72Kh35qNubdrjXu6xjtzJNAWUYqtqyZifZrITSqSwxePdyb6Mp25
	3fugAEw1+WKUbKgQvo3y4NeLPdTObeqe133VdaRdYU0rs5h52QJz0qWA==
X-Google-Smtp-Source: AGHT+IFa3pKGAqwuUt48PQHZuwfkE7INbS89WNMt9QJudXTDT+OykMfFYKaPj59PV01xqJ+0LiIY4w==
X-Received: by 2002:a05:6512:3192:b0:595:7cf5:f7e0 with SMTP id 2adb3069b0e04-59a17d9e1e0mr1884219e87.8.1766371123232;
        Sun, 21 Dec 2025 18:38:43 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a186282e0sm2778259e87.95.2025.12.21.18.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 18:38:41 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 1/4] arm64: dts: qcom: sm8550-qrd: rename image sensor supply properties
Date: Mon, 22 Dec 2025 04:38:31 +0200
Message-ID: <20251222023834.3284370-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251222023834.3284370-1-vladimir.zapolskiy@linaro.org>
References: <20251222023834.3284370-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

At first voltage supply properties of Samsung S5K3M5 image sensor got
names following a pad name convention for Omnivision image sensors. Now
the property names were corrected in the sensor dt bindings documentation,
and it should be updated in the SM8550-QRD board dts file.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 05c98fe2c25b..7abd862f3f4d 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -748,9 +748,9 @@ sensor@10 {
 		pinctrl-0 = <&cam3_default>;
 		pinctrl-names = "default";
 		afvdd-supply = <&vreg_l7n_2p96>;
-		avdd-supply = <&vreg_l4m_2p8>;
-		dovdd-supply = <&vreg_l5n_1p8>;
-		dvdd-supply = <&vreg_l2m_1p056>;
+		vdda-supply = <&vreg_l4m_2p8>;
+		vddd-supply = <&vreg_l2m_1p056>;
+		vddio-supply = <&vreg_l5n_1p8>;
 
 		port {
 			cam_tele: endpoint {
-- 
2.49.0


