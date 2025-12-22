Return-Path: <devicetree+bounces-248632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFACCD4912
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 03:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2245C3004CEC
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 02:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9EB12D23B9;
	Mon, 22 Dec 2025 02:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dwnbRTmt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F346322DAF
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766371128; cv=none; b=eVkQ/l4pEBcUmYqLGtmA/bydHTsYMi1Jl4vSOIlsv38S9zXu4S+rewkEr9VKdVMplq3C+6B5g9xJ/rtV+FGnsWhPWRjYFj9mnnydq10iVurFOyp1z54K80SHsDTb+L/fef6q8tYoix+Ot533HmU50BKYo9b3+KIuVi9RShOwXmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766371128; c=relaxed/simple;
	bh=GId/AdwiUy5ziFDLpyBjIMew0fNjz6+iHsSsagkidVs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RmUv8tUwhr7ZUD0YdwHLeIzWLZyMnos9qmxtkVhcsk3qQzxpcSuGwULVeiH4fKd0VDGhqb7Uvl0/fMTlT4upiPIq5DPhksz/ul+XQ3IkbphX0/eHyx65vNwotGhgRnliznr1BwSMgQ4lok1IOPtuCxO5FIiCmw9jefMmPdLjrnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dwnbRTmt; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5990ee705e6so362027e87.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 18:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766371125; x=1766975925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HPNp/1UQfWdyXtCubQaDb4TAUJAXbC7MdvdZ/X+vU/s=;
        b=dwnbRTmtiPZm6Ocp1E44uQ+iTVr6HvjVjBxcfVr16Xu4nTHrFZ/DF0i8BZBhJJpKjY
         fcu9sQXfKJkGoD7c57f2no12gBFCUhelzV4qwPSjE2+G9Ch8Z9t44wV3VXKp9aA+XiD6
         dgDElnGGedp7uusStRNQsFbUfOSi1E/Db3PWc0G+K5ncrRcHe6nrkYG0t4jG90f4UcsT
         cHlmC4dVDBQY5lJMbtyQEzUtQ0JTnn1CLpA6fHEN81rEF0Mzfoncc+k6YS+QuCQp8eTE
         jxsZQIGZsno0Qxni7wbxJ8JolrZyzoBcymQq1HnyOOeIv58oBStOZifNObQtNqzXLDDi
         AUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766371125; x=1766975925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HPNp/1UQfWdyXtCubQaDb4TAUJAXbC7MdvdZ/X+vU/s=;
        b=sl8jvS4vCByXj3x3SvZ2DuWcGIsJUJnZn1oqz4PIh4gJy5Knj5BIVJpI6wtT1y779a
         UuypDjFsxLwwtVsaq7GqjK/lgY/X7BzBDVCeAEKA2uRRGRhTqgyceHGe80JY9SJZk7Rn
         CowTkHwY67Y/v6HKVR88Vyb7zimG3YYgSgHsRF03sxpUomA05k5JDuUIAXFr6V092/5y
         r4jxFVtKBYwndCnduC4hwEH5H8qOphXRQbutE03/xbsORwLf/cnk12xX4W308dmyOJ09
         lWzmSkL2opYkZ77j14EW8YRTB0fr2NrQ4DQh06yMrU1pNf/r27JmIgvjQbMjhJIyL21Z
         /mqg==
X-Forwarded-Encrypted: i=1; AJvYcCXadofyXjeAB2LWgQFhjPzJ5+IC4EC5NW9eFBxKzCba6C+mGzXRgsv1az5frlOoTNCSVqfZKqmzgChg@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ0hKBeIqv47icssQiu6Nrm3kYEoKDcpf2cT373x/rxq+GfzvZ
	/JhjG0Z6oaH6aW/yAQEch/CINI2QOD4HciwpP7LtL1H/0cwZUe7i3lqZ/gchubYyzGE=
X-Gm-Gg: AY/fxX4nTrUJq3sRMmHWUUeRc6N3jH9uW+OU1YP8POQ7FfCYN3TUpF0e39pseRowAPr
	R2aITLhl6YieXPXBjg1OpC9whRHiM01+RBo0UieTVT66wfcsLwoRd2EtotxiHfsDtHYvVIGLSEn
	xCYWqSTC61s1uhLfXQxRDCVydewgprbPgGEVpJwf7E6+WNu/NVIXgDkkJurZ4312n3OFJbKH25v
	XaZkpNZW1ror4uLfUZp+brqguQpBLpZ9DmQnzVXIUbix9Ijnm0kHG6dLlH83IboAUQDFy0oIeUP
	TMH+XRZSZ6zguedOaA5mHiNCnpC2+cF8C4HzfOoXEaUO42s/wE2dOdwgwA7gDfuMIFJsVexYFMM
	V+tg1j1Nm58GXO+QW8ncYgWL7Ism38TW6g9Wb76tM1yMSkjqYHxasAhnGOVtkPuBPoAlrVnFzae
	Cj2St5sLkH2Dsx/mxmUlBhQyayUutauXqx8BGE/loe24tu0kY1enn2PQ==
X-Google-Smtp-Source: AGHT+IENxyB3qBjg2JJPH4Un6NNnM+U0URiNhzNns7Fa2ucAtPClj5vIdO8+N2gJLWzr9E0ElDrKRw==
X-Received: by 2002:a05:6512:3ca4:b0:595:9d47:b464 with SMTP id 2adb3069b0e04-59a17d74e3cmr1792719e87.1.1766371125314;
        Sun, 21 Dec 2025 18:38:45 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a186282e0sm2778259e87.95.2025.12.21.18.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 18:38:44 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] arm64: dts: qcom: sm8550-qrd: remove data-lanes property of image sensor
Date: Mon, 22 Dec 2025 04:38:32 +0200
Message-ID: <20251222023834.3284370-3-vladimir.zapolskiy@linaro.org>
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

Samsung S5K3M5 image sensor supports only 4-lane MIPI CSI-2 interface,
which makes the sensor data-lanes property redundant, and it can be
safely removed from the board dts file. Noteworthy that the property
value is incorrect, because conventionally lanes enumeration of image
sensors starts from index 1.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 7abd862f3f4d..3d35a9c6fdb0 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -755,7 +755,6 @@ sensor@10 {
 		port {
 			cam_tele: endpoint {
 				link-frequencies = /bits/ 64 <602500000>;
-				data-lanes = <0 1 2 3>;
 				remote-endpoint = <&csiphy3_ep>;
 			};
 		};
-- 
2.49.0


