Return-Path: <devicetree+bounces-222803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDE1BAD1E9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 15:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C23301C7DE5
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD1603054EA;
	Tue, 30 Sep 2025 13:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="B+nxDsb2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6075303A16
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 13:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759240643; cv=none; b=RWaA8b9f7MDxW8NAy5DHcMzaMGVy4R4qhUPhi2MyXDDH4j0AuG76zTrDIkhtmivAKDelFmip/o9HWDF8PvVgDTOGcQOuXn4YJuqmVRhJRNpP9GTtwlqHayRZYKKKeAUBFfHUaLzut0f+rn+l46rkQv4yKitOXj7smrmx5HwweaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759240643; c=relaxed/simple;
	bh=9MhBfHLtfKllOPgLD5n4VkYHmbM5vctQ+vVeX9gfLdU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qGY9/A6KOZ5FbJwsFRYlMxAQPA6JbAhrh5MuPQvqDVvuGKoChpTWOsF8V80PhDmKayyxkxBgCUBrQ0wuYQVwSIRUjLPFAGJtzvM3/Z//oVYz6HvUqjtkKti3JiCz5AwnU4EPF9HXS5gs9TqAlsZs1/jGnaLWxzLHMgdSrywnuVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=B+nxDsb2; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-afcb7322da8so1167632166b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 06:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759240639; x=1759845439; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FJqD04tCih34r7vGvIKjxsGrK+J1JCBmttdD15ym8gk=;
        b=B+nxDsb25EJD+b85y6OX3PZjBHiYUxnodFIUlZH9Umsw4hOxmAU/8UGi7M4Nb1R2X1
         adVuLd50oNm2tyaIUEYFKBUWiqej7dh6ppJe3odCLQNQ7GqdVh0wCqPX6m2r2Hr2d3zj
         cyP17v1xMpav+tpNe3eTwJTGqPBXGTCqx8kv9ZhAfjlZJ6yh9RloIwqRGJzHAJmL+xgg
         a8xmxz3fphK0HlcasTVycYP5kzxSe66PCucJJMmXVLvG3Jp6g8NvWZIN37TPLBXuYPnN
         fcIesLPVX6oxzHbiSZsh/kZH/eriQaJ1xyKU3whIjU+QChuaTN8oRNcZkkkN+pYlwxHK
         v1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759240639; x=1759845439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FJqD04tCih34r7vGvIKjxsGrK+J1JCBmttdD15ym8gk=;
        b=qQVMX3YrK6jXwbIhNLEgsTgBDigbkh3Dt8iGZArrh/peCpETysh1QA6HsTPncV5CIA
         9B0jHlL/aiVJUeCdjz7GphjE5YyRaHcFrh1P2DJCB8WVZm0MKjUnTHU0urAFNAE18+8E
         1943qVmbmJz82QDqJTRYTiaK+9wylSrZTj+b3oLPGWJUpyQFbCaC6INrAkzVmV49923o
         i5qWT1NZzfMNcW3qG2pU8xcvsHOjKB6Mdxp3cdo0FzApOfRjI0lXwNmtMCsx3NE8Z490
         h6gGHrxH5IadHjUOgHR6xe+91JQdp18D2sal0dpF7jIP0EzScjlP25jXQrN5DienEeav
         5BGg==
X-Forwarded-Encrypted: i=1; AJvYcCXt+QEbHZgpxPcZuWRWVhdXmp82I+7Vq1sKQZrtfrwXJCZoR7PnHxQWR+1RgqnQ+bbXx0kMkPDGj02x@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3P3yB1zbRoHxFDRkXhp6LhJDbosWWcogGucKGLg/WXUNkyTt3
	U6zLV+/vlFQc5bpqJG4wr5UcPvLoI6VGXJ4XacX8igJfoAZSGf3XWGES8Mbdoy1yztGuyxNde2U
	Pt6Y0dd8=
X-Gm-Gg: ASbGncswLQQ1OqFunBb6pfLrGTbzhG8o3WVaDX4PzS28Y40Yi7woMEFH2vJX3D3XaYq
	kYBMME+cFDE4UfEn3SJA0p4/4MZ9nh0B4hnCesbn/Nh72qSppf5mE8QT0HK9dJ15+T4AVJsHlQt
	V/BOPYAqupoKdw8mlDCBlisq/rlIvx9lX1dmO4ikJ+dodVp7OtwZL2E4szJnMWG0K5NxYmJcPyp
	omRu9RywEbO0Anuv9dPuuHENHvnEU3lpaTWrzkDCVdh9Sj9cbC1ZUYEZwTRf4v0gpzsz8NEiHKS
	Xg+w7/Wkw69GNviDjs4+p0My2AWY+U/76lbdFbD5htJjZs0oqj1JpNxM0xbG4Rv3G13lB00RGtx
	9+vZFbBolzavdg7LOHdf6ZCQZzytyzcog4ot7NjJlPVqU21rHAT6pD1CZJ0jfeuS0EPTDsQWe8l
	LRChXnDFjoA6Sgo2qksyVgnPMQ6LPG
X-Google-Smtp-Source: AGHT+IGZ33shaFUW5jyb062Uoeoxlt0WtvK77vrIa8wlglgVkKZrev+KcyCBMMVsBEftxPy7dxLLbQ==
X-Received: by 2002:a17:907:94c5:b0:b46:31be:e8fd with SMTP id a640c23a62f3a-b4631ce4902mr113558266b.26.1759240638658;
        Tue, 30 Sep 2025 06:57:18 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3fb818fb90sm370234866b.63.2025.09.30.06.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:57:18 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 15:57:03 +0200
Subject: [PATCH 3/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Use correct
 compatible for audiocc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-sc7280-dts-misc-v1-3-5a45923ef705@fairphone.com>
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
In-Reply-To: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759240635; l=845;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=9MhBfHLtfKllOPgLD5n4VkYHmbM5vctQ+vVeX9gfLdU=;
 b=/Z2PW2Qk4YNfWk37c9jUtWn7t8/TMDeCCdp+pdPILEDGok8S0HaBRFxItaEvxxqJeom7gDjcf
 4Swql1aXtFcATWqFM4g31FmZ0ANAjH/jVGWwHR5Wkw5SFMTnBpiF7QK
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Use the correct compatible for this phone with standard Qualcomm
firmware and remove references to power-domains from a 'reserved' node.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 0a64e5721e092d1f3e4bb7329335704eee567761..aff2959c0131de90c42783b7c45f6e8e2ae18afe 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -854,6 +854,11 @@ &ipa {
 	status = "okay";
 };
 
+&lpass_audiocc {
+	compatible = "qcom,qcm6490-lpassaudiocc";
+	/delete-property/ power-domains;
+};
+
 &mdss {
 	status = "okay";
 };

-- 
2.51.0


