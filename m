Return-Path: <devicetree+bounces-243846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7DFC9DB68
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 74278349C7F
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1A4826FDA8;
	Wed,  3 Dec 2025 04:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o6lVjOum"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F89E26F28F
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734758; cv=none; b=ZSxb8prYBHj6yBfe+aNC2QA2uZtkLrK8INcqJflbAiScPHsba/NNo2nMfdp4LeQk7CxAq7zfiijR9bMf76dmIdwUYYBz9oAa4U3fULR1MFUSbrarNoDaAb15yjhmQaZP05sOvvSlP6QCJgywzQefEd47ScSiGKzYJJBEHfrweo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734758; c=relaxed/simple;
	bh=TuvhFE5ATdAZurM2myjz+RfVrTn2z8emYBDA91l1p3Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N7Yc+ksTn5jidmuyiLojVhW3NGGG36G1KcPbPgeBwre8I7Gb1pgZ45tjO30Tlx5v7pTQtG19WgjZD4UTxheXXbBD0IG7TL3WQmEFzx+k0Y8w7HXYDhxXpfGlx7XaKIfJvce/j794JrwgAaSK3Ex/ErjzRnZGIxlp99L3dvBfcqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o6lVjOum; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-597d319e0acso78631e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764734755; x=1765339555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Hi7DKR7tneAJV0IwymGHWCIgw3/Wo73fCxuvQoOY2I=;
        b=o6lVjOummWq+rCyEe2LXEqFHt2ybbNGgPMdQZ2pJ/oH7Kof+OE+qeIY+Nlksj4n+KG
         plwsd2qb9G0rMyok+euHM/oxG52XxVsyMRIdjqRLji2BwCUwRQGHU2kh6DIq63KdQ6KU
         cK/Yy5tgXxk0j2C/Ng4A83dbM+8CdIcyMxlV5WQqouOU3CjzndZUd9XOz3HM9jGpIK7w
         3wP+2rM7x46MFXox1inUodA/9f2v2qyQesZRUwlLHcKaIg6v3oQutBu6TJzdPSF0ezFH
         fVJSkHCQ14dakh0SYIeWNkP1CRna3fYN/rWCU7N3j3f0DvtQuYH+RKnZn6bXX3/VPRPa
         6Rqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764734755; x=1765339555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+Hi7DKR7tneAJV0IwymGHWCIgw3/Wo73fCxuvQoOY2I=;
        b=B9uDHlGxMAu7PpilC/zy488dQo3jgdXd8MnCNLNU106GPGqnNMihoqScWB5p/sGF8K
         9Oz/YViOcG32Da0KESnQe1ju7MiuD/vMJTcUSD+bvInTsWlmVFFpzyVP9uT7HE8Wazm6
         mcpXdqu/WbuG3I29OmCub2yXr/nJGXZ87j2OHQrZtdzopr9qdwZjAuaHwDW2rsYlwSnM
         a1Kj9LFdDnqHlB+Lpei5uItkhmJn+CY3V5dRaKigw6tvK5NMEFnn6MceqAGpvmUpP7jP
         WqqVeUo76Mm0xwrukG75PUPMTKHsFcZXwuJpMnU74c0OgkT/Jh/rtyFf7KBZezsTRcun
         R9Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUhzIg83WvD4ioAg1wYpx9GDOGRMmtf7ByGdU/QQoDa2LWF8/ArN5JmiUvG87arKWTfGqiqC04cO9Fh@vger.kernel.org
X-Gm-Message-State: AOJu0YxxOCiZkyRUw/XyHjL0iCyIVGF4kZcix3r25AYBbAwyWeLamBUV
	hcTbwuFcjhOgaA5uOa2P/ohecP8GGt1LTvOrDvznSR/gGaMiNBDhujfZ0OCo/mBd7EY=
X-Gm-Gg: ASbGncvo4IW9wvsDYd50diJC9uuO4rIWUnAolbp8/YIDgbN4di2WDRGOUGPcjscJlN6
	E85jcLpTw5DuPCcNoog4PusbTVrr0HgcLcXBn22Yxdd91WAAK+EnEBs4o8JY39JFvAWb6Q2cFNd
	nT0wz6MGUuUBvlctcAvKGuDZSENr/hiBz+Z8cT0+xoGEDfA2qHoX221jYr48tXeIxShNAJRpg8b
	MSxrXNwQJb/vN4IrFkdqsElgMOlZwdeOxdU/dhLg92rDlyiKNBPaW64LMbH3O6EuOKVLlStmC7N
	xQIf9eA1YLQh+H9V3v7LIdeGsJu+ykt7M0Ij3gUPhs89s0hhnlIw3q4ckeX8nsz12y+rWnfikgy
	Foimdu2vmXsh3wlTgbH7uvht0c66aAzYsqMqpTqg91uAinzRKu9ZzEPHBC5HR3LbQYIRI0alRIG
	ORySV/Mtf3XS8b5Ujw1gvysmH84cY+MYJH4Q3ZKhmVe12GW16dfJFGQQ==
X-Google-Smtp-Source: AGHT+IGWGBFDPwG/nuisCeyPrhtSebzs+KF1Yh9t/hQx3CWDS0f5W7+fAmxu2ZP86faO2Zq+/d4aOQ==
X-Received: by 2002:a05:651c:210b:b0:37a:43ad:859c with SMTP id 38308e7fff4ca-37e66a5d675mr354451fa.0.1764734755287;
        Tue, 02 Dec 2025 20:05:55 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d240981cbsm39505631fa.24.2025.12.02.20.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:05:54 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/6] arm64: dts: qcom: sm8550-hdk-rear-camera-card: remove optional property
Date: Wed,  3 Dec 2025 06:05:37 +0200
Message-ID: <20251203040538.71119-6-vladimir.zapolskiy@linaro.org>
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


