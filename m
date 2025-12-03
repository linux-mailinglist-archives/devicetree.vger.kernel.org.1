Return-Path: <devicetree+bounces-243843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 514DBC9DB59
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 100D93A1716
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD9626FDA8;
	Wed,  3 Dec 2025 04:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ep4sxuCR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C801227056D
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734751; cv=none; b=AHzaQcGuoWYQ7jEl+jgx2y27i8NioPcWcHA+oF6pUugs5saMGqF1DBVtV46uoSiurPwH54lYG80OSfsGNSoueDd8vvR3IfDEDz5jarnPrZWTivjGenzPQe/BxY1wH6cs+xsF1dRP4VLCYnOumUN8lDzFy2VtXD4IBIcRr6mN8cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734751; c=relaxed/simple;
	bh=gvtwHs4Q7fU/wiAJURNCh6CDq7gJNYic82R6eHIBi04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gheYIR7Wo7ZWamLk6PBXBcJ69KRqoi6JGdjeHUd70qT+KozrvE+g4pyKwzo7MeQeOednzrc4F5pW9jsLIWpGOdrgZPBN8g2Fdx92iU9sxlcX0SXk+PEQ9cpKXFfc/k9ClxjIfn1BAqBXOCsQ2p8OboiWQkxTMGEZl1HNtfY5u6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ep4sxuCR; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-37b960d8aeaso6699071fa.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764734747; x=1765339547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WKaSXUlOHEVXLh8PWLzYg6B4PKRW9ER6uIpZfDhfghc=;
        b=Ep4sxuCRFPixA0H5HQtPMofx5wvHrcQuA8ORQM0IeyP4X7zpSxN9iRijXspw5/Ohe4
         hWYQsBo1y8ufJZxrUNnpen3QnfPB+f6T1C7HoSm7xp8Zp6c5tIUd5JOfWJ3iY7CGCfTV
         O95XRuZirBX47ABoGhCqZ7d4QmFWmjFfWLt2aP/YRmJF6enKtt7yTHZfIqcrXW9JLuuL
         AkLGonCddf3rlfW67aJWW4B7PlptVIg0VxssmgGUNNfin5HkY0ShSFCKwZ5wnIHPRGM9
         fHFkbmAEdGRicNzFNbLbRqTxA7qA2/C9X2WvVZ714KcWtfAfCivLc40c1h2NaSCAbxdu
         Z+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764734747; x=1765339547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WKaSXUlOHEVXLh8PWLzYg6B4PKRW9ER6uIpZfDhfghc=;
        b=HvzXHB2UP9gwpRe5zLklbFYiPl1UkIYNSmp624TCPoEuNBxxmKebPF0UL3jVap8TVU
         5w1J2ySHvWba5OOdLMBOKKaj/f2cIPOFopVNvbdmsQ7jrjocDaGroJINiPcMnjtGyPao
         Vu1ZHvbM3r9RdMtoBdy4xuJzvKYBqxSGox0v71QMnpECIJ1831v19aMkO5IyiBA7sUGb
         BGbDaEv1ac/XwC9zgJ2FHh7wmKDZuhaR6f97wW2/UGRno1FQGpL7RQbHdHPvcjfUTSyY
         3dczbybksGB2d8Adpte58gktXN35oAyflJDA0CeJo9Eh+QLxdfvAw6T6CcBPAYE+DPF7
         cg0A==
X-Forwarded-Encrypted: i=1; AJvYcCWDzqx3To7pyTDCSiT7FjL3e0AqW6ERKYtXfmNFcQtrYq0pDB/Ja5k7maBOsPqAaKgto4bODUyKPivj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzqt320d44OUqvf2U1gxVj5MJ8XTIUQBHOR6M+yFJS/FJCwWr8P
	9PiYRc79I/8FAXo7RnVl96IlCceqvnD+3NTdWrvXcjPW4i5PyT0MM9+AkmON2E1op7g=
X-Gm-Gg: ASbGnctD9RUHFJ6DxojVtWrEjP1Zzx8Qk3JR36xQwW+0Gn9T1eicZUTM5ihaK2FfxcF
	AyaGuR8zhXZKUsQOsY/ln6Vi6eRpaJzASGYE6BigjWwaYcVAQho1wC2BuE7h0K1FMJnRBt2IX2h
	+Hk5h9+DO2B6N0ZZqZpMYTd2StXB/9NFogAxvUdiugTGW79hcEoSks1uFYtRCGGXj/pHgbGG9/6
	tdyvt8U/S1Ee2tFeSucDneOgdzDlLpedoxzq/MPE3VTSJ5u7uRIcLEud4IQNLqHFKzT3/8cg7/6
	oyI+m2x1INXvJEbK23bsocKTtNE2h2LOwABoMRZ9I2567Dg55GcM2C2iJ2+K+pW7106q2p6qiwb
	xaJSfsPYuUrwRM5SXnS3lKdCpZusWLrvITcJ92vs1Znhg0Is7iUyQvEJGzQLEgAOMy3UmtBKWPR
	1QCMweS5sZ/LcfM7j9t05gy7mtfIIMY6g11GneLcDcqRs/2J4kiUXSCQ==
X-Google-Smtp-Source: AGHT+IE4OvSpZ+Tva5pQFBj3pilLC4ouzHQzIR8T5QtVzszOagKJJMJX26C6mDLYxcAiw2WT2m3wWg==
X-Received: by 2002:a05:651c:325a:b0:37a:3c8c:ee14 with SMTP id 38308e7fff4ca-37e66bcae67mr315281fa.2.1764734746855;
        Tue, 02 Dec 2025 20:05:46 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d240981cbsm39505631fa.24.2025.12.02.20.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:05:45 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/6] arm64: dts: qcom: sm8550-qrd: remove data-lanes property of image sensor
Date: Wed,  3 Dec 2025 06:05:34 +0200
Message-ID: <20251203040538.71119-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
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

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 77a7e45660b6..48af6d114161 100644
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


