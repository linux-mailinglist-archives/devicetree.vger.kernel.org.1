Return-Path: <devicetree+bounces-248634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D953CD492A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 03:39:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 352A03008FAC
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 02:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF673242C8;
	Mon, 22 Dec 2025 02:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dug3LP+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643493242AA
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766371134; cv=none; b=XAwgkvocSKixgTylSIeL9jSjWwMpl4O0hhF2CTNWN/8cfNLdAZ0eQij77aQFq1mFmr7ivS1LBLERZaigIV2Mls77N6BmvdUvBUfppUfiaXBwN6jwIY35wwbOho4JWyvU7peLesq+DzdoCj9EoKMHZskb9VuYDMjODnFzuipdSxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766371134; c=relaxed/simple;
	bh=JjnxCxsMlGvhzuJZBlYUZ3Y30NRDz3uE8XHKZPGAm2k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NOdtSNa2YiGld71bNR0vX6hE4ZLbDjX2bhtNtD/9eJuP76i4RXWbE3hJcdoe4Rn/MT9MRh8o0sRL3FO5ovV1VBcvX2MGmQ8YSyyWqccAHOQ/JMYTRPwC89NKvR+9mDRGuhaCBI8MkoejYGAPOdpsJyTlxLEcE8ZiZme/IRIrufU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dug3LP+F; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-37fda2853c0so3292261fa.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 18:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766371130; x=1766975930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Drz0c3YLcWQdmEUarGRWE3Xnq9clhvvZnWhSsHB2VQI=;
        b=dug3LP+F11fkbOSAP5PXDetqj0PU9/7IXGgzlW1tCSdi7jbE4/DcYO67IwrxfelQVs
         IhJs0ZTrJI69UjFa+Lgr/1eFXaPQxtAe7AkTWu8sHKKMq9eomX4uWPUyzKcChOwHfICl
         QGgqES+SSm43kLP9HARgUIeYjILCYOsbeNbL5Fu+e0zpwCPK2jFDUwwK3+DRrE5yqIpm
         kGdZNbEfKxH+cL4dLP72dRZtkXOQRQZa4/5oPDzTjfb1gnayDKKfdMsiL38jn6qZccC8
         4oVHQ+XhnV1f2blOUjMMM6CkS3KFkPLoNUJDSuk1QlS+C0BzENtf9yIFmhl36VFtMDQK
         CBlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766371130; x=1766975930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Drz0c3YLcWQdmEUarGRWE3Xnq9clhvvZnWhSsHB2VQI=;
        b=B+wVNDDT3bb3i+AijIHDURHLlNhzRZEefDH4pqQmQ9HiuKkCDYQvPu1BXINross4gj
         JQLotpJHsPxtQ173zOxoQSxmelUtG44CQJDNRz589V+y+3Yod9MBnQCCQtlAz63gUjQW
         e6esUv4KCSAAAVRafTZbUCe11Mma8dk2C0lQV6BPVDxyVRgR2Bmsdq7a954FyDqBJn5O
         s2k/p5hSoR5KxzVNof0dyXQ1ZXmUEiVX9rM04QIsRwrhcqPAxNXljKU+va+Tubv9lrh6
         uWHIb9HTUd73FM7KHYdUI8QkAGlj2IkDFy3u0j/PDQ203oTI4bOw8WH3c4hVfoVAq+D8
         fb1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWXDaTBNrgMk8AxIaF7xo4tKHHWkjEkid6cX0JDugazZ6y7hfRay7/6SiP9oKmm/o7+R3uoF672mv+M@vger.kernel.org
X-Gm-Message-State: AOJu0YzWdhPHHFZoAXFt5UDmNUYl+AApRPm8vL2NqR0nUBV+IdXgXD+m
	wMockpj8jpFF+miMVqTHrhPv0lWO1UUxRBS1k/lBCEwgtoC82IXEWWQdo4xr6c+wRq0=
X-Gm-Gg: AY/fxX6Kg+v26c9XpAykDEgqB7ft49mcxAhuDghQAXya+5JBB3PxJw3jFCQFB5U+6wU
	XEpGhQo95puCe/OIsXYHkjeRjG3gY40LzB+GuwTmWxpqOA0oTZnlQeGsOrnXCrsE18lyObxhm+s
	Ff5SOltm18JXisdNY2lom0kMO3TD1aRhzzg6epy1mrcsoa+Z8aF8H9AXxDfij43DyNFd1e6nK1W
	msHGZIUaDMsmD+VWxjnCdMlJO3bLFXqYBb/xpxXj/KYoAY6p8Up/h8C0Rd/5E+EFhzjrJTnSG96
	dU2ZljtsV/fbYrnsudjay7lq6YhzSndmNmbXoR3L9pU94KX2NNVEfc6XZgAwGXgqysYjcz8tQGS
	s8RfXUU+5Y349xxS4teHIXUGdWVlIF+K/6md4DMYBw2tRN2t7OA4Wx6cyXfyyIEnOvOMnjBO5fh
	scTritdrOLea0PbQOEfgq9z677ldI5zG01valbwTOwx7gGMRLnpkEiOg==
X-Google-Smtp-Source: AGHT+IGi0JOwFLSJtYWbhShHdoPfUXnR0QY2YLBIpmiigUeKivn/lD6FUgvV/M8/IAwihxM9UZP0VA==
X-Received: by 2002:a05:6512:1599:b0:594:2a33:ac17 with SMTP id 2adb3069b0e04-59a17d073a3mr1950211e87.2.1766371130518;
        Sun, 21 Dec 2025 18:38:50 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a186282e0sm2778259e87.95.2025.12.21.18.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 18:38:49 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm8550-hdk-rear-camera-card: remove optional property
Date: Mon, 22 Dec 2025 04:38:34 +0200
Message-ID: <20251222023834.3284370-5-vladimir.zapolskiy@linaro.org>
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
 arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso b/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
index e80de190eef9..21bfba6a1182 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
@@ -59,7 +59,6 @@ sensor@10 {
 		port {
 			cam_tele: endpoint {
 				link-frequencies = /bits/ 64 <602500000>;
-				data-lanes = <0 1 2 3>;
 				remote-endpoint = <&csiphy3_ep>;
 			};
 		};
-- 
2.49.0


