Return-Path: <devicetree+bounces-80787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAB191A670
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 14:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D97821F268C0
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7DE155C97;
	Thu, 27 Jun 2024 12:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ULwP3mfF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC78155743
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 12:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719490822; cv=none; b=Sde+F0xOudqXyYO/HwVZcoHyGblg26vgX0gBRen5UW5ypUnI8m4KAglUTYqAl33aYgMFZCjUQNQahAaDYgoryXmhT7P7Oj0XkUVNP9ZQA8fqyBHZJhDYz1NKJBpLjOqY2LlXYPZT201p6CTH4Bge9dmIuNnd9xw9LBJ9MLD0a9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719490822; c=relaxed/simple;
	bh=u2/HAV/gDAWYYrxO+MtmBPhj4wnBMG1L0geWz37aGhk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oj/xOSzWF9E3Gyc3gjfvzG6xdmeXTwz71SY0bFU5sZ5YCVgq8tbSG2B2iPLxXUxGrkVBvUBhdAoF2lh+0K3brBlZLWzvElDNEwivFcthVzmnSchhBn7Rgyn02dfsDbthJln9ZmkoDHmnO4fvx2pzORvjCPG84n3orQ4XFQRGITQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ULwP3mfF; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52cdf579dd2so5508235e87.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 05:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719490819; x=1720095619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yhSivaXZKihoS605ifan7I9eYS7gJmggBMZ70sBGD/k=;
        b=ULwP3mfFL7h9CrIK80pdfoYGF4PUeghXYcNIRv6UZaLqhjpZSfnpm57so3f9YUpoUq
         VYU6XvNNosBWYurYNi67lcwwHSZwvoSKmex2fH3RdOi+YmhdBYLAQ+rvUi4KAjxzdW9K
         gyBWG7itJTgBD/iwqqjQ3UVaOeAgnnRejjPWN3kgq7zHi6GoFby30MdVTjBmDsgYIuzc
         oO6tSnEeKQNC3/wxU3sYo4HlPlDiWQnHD5/8qt6o/8TksGUP/ThOPGzN1IJa/dzbfk+s
         /65vZmg0IdYIW/xSPaN2mfFGP3jAlROnLJ7DcwFzitt+nR6tKgSa87r9+O4ULqTY9dd7
         Phzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719490819; x=1720095619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yhSivaXZKihoS605ifan7I9eYS7gJmggBMZ70sBGD/k=;
        b=T2wsPXBxsVhs8db+/K8dzvP8WPGf3WmmhqETWR74tcIq21WVrmgWL9+v+TZUavjFxL
         t/RqS+1JvNi0ZLBB0+l+HmF/4JWv4bO+O3ACznn4AOUjyaNwoUxYgvj5s0E5z/5ClBqd
         /HoTMszJVbOOQVcfGxVNvJ7cWGOCkhTjBUoRAcCaO5O9sJwsKfIqMDynTvJbkePuIZBy
         KotkUdKoutzp2yXaqHcCazM3FkCb67qefijoj3gNcjopr3YRutSBYgfNlziNL9Bp2RJG
         pzvS30TP+AwwcjnCGDMy/f4T3uOG8+KHtYkEDiJe9q4H+zovUctk58o24tFZ//XRgpXc
         GNAw==
X-Forwarded-Encrypted: i=1; AJvYcCXYeIf/S1myaj2RFLbPkEqua2E6rZ2D97XAuiEcvaD7/T+aDhOSlTODmfL34lA+h7fBI3O7ieHQqTSrrVdYarFbIIlaDYuyJarY4g==
X-Gm-Message-State: AOJu0Yy28/HtXsfM1DD1ypfnBYkAVifqGMJ9KO5eSHS1jQDTRP3oWWvC
	IN15m2YDsB0+3GM56ALqvLUDNQLDZkEWakLo1XaZe6dTJ++FKPZtYdNiW5x4djM=
X-Google-Smtp-Source: AGHT+IH4NLpzb67D/rvvNbEMdptd0qnGPx5LLkjSIOnw+1o5piYWPYgVjm09hta6ZrYoMHWqng745A==
X-Received: by 2002:a05:6512:60b:b0:52c:c5c4:43d2 with SMTP id 2adb3069b0e04-52cdf8209b9mr9697972e87.47.1719490818637;
        Thu, 27 Jun 2024 05:20:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c8424b43sm62692885e9.32.2024.06.27.05.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 05:20:18 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] arm64: dts: qcom: sm8550-hdk: add port mapping to speakers
Date: Thu, 27 Jun 2024 14:20:13 +0200
Message-ID: <20240627122015.30945-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add appropriate mappings of Soundwire ports of WSA8845 speaker.  This
solves second (south) speaker sound distortions when playing audio.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Bindings:
https://lore.kernel.org/all/20240626-port-map-v1-3-bd8987d2b332@linaro.org/

Can be applied independently, if bindings are fine.
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index e0dc03a97771..2e12219006c9 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -1106,6 +1106,7 @@ north_spkr: speaker@0,0 {
 
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "SpkrLeft";
+		qcom,port-mapping = <1 2 3 7 10 13>;
 	};
 
 	/* WSA8845, Speaker South */
@@ -1123,6 +1124,7 @@ south_spkr: speaker@0,1 {
 
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "SpkrRight";
+		qcom,port-mapping = <4 5 6 7 11 13>;
 	};
 };
 
-- 
2.43.0


