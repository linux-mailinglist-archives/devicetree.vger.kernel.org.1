Return-Path: <devicetree+bounces-99944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CED96BA1C
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 13:19:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 026B82833CC
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283B41D1746;
	Wed,  4 Sep 2024 11:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YeZQcuwr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B66E1CFEC2
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 11:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725448602; cv=none; b=R4ZIYvg8vFMAndSX0gbAVxhwF2Q7LsKD3FhlHfk/a4H4hxNBOH1qLXzNvQADI4wvr9lFRdXMTBsXeyeKIoPuJXV8bqTlLesGbA6kvG3L8JxKT3efEuzO521FyezRf2y3VsAGP1aMVseuWO7kLX+tDRxZBwTRCdSJ6ioZFpMwJHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725448602; c=relaxed/simple;
	bh=mzWAaTg1vbJM6BrkME05/UHf2UP8i7OlZSJJiQURPLw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fve2fBO8w/7eoVkcqiOav2pX/7X6e7sNLPJkq91zuSe7Ioh+z77H6PWIkY7dW8PkdzYrsEcKSuEc4IHNv8+MAa5yyAx1u371Q3h40GJph+Rrzm9EmEghfwZ64iz/o4VruIh71672cHr7TXNslVKYp3EiUJk3bpG2U+ADWCn2+g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YeZQcuwr; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a86984e035aso792945666b.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 04:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725448599; x=1726053399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tjGT+JlKCba1g954gJtXN33KdKuouaatEcokaL5FlZk=;
        b=YeZQcuwriMvLJQqJEd1nbUoy/AATRBh7SuN6FFBN6JATqrrZzUuTaAwTvXPjEUWjtA
         FBPLSIDUaiIiTU4N7XEWeZoksDbPoG4h5zw7jdWy8/8Ai6jV6UvoQkbmVAUKMwOUq3oE
         9YFgx6mm9EQF+cn6NKe4Yu0wUaMvVSSMtfXofCAP3GBEZLATnL5pTwMzXMAkTMK9h0oj
         zk1VCCuwiV5q5Ix+9qfQlRUG1BuwLfRnXtqXUb6wTmQeBwlgBy+SPL4t+4hYE+klt/CT
         FaZ4OH/OkjBoISYQCqhikYjMb2vUXQlQoVKgOBbc1Dawp86zH//rfkhUU6/bxCSzWN6K
         k8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725448599; x=1726053399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tjGT+JlKCba1g954gJtXN33KdKuouaatEcokaL5FlZk=;
        b=upsMEduRYzxjrb9Cs2VF2bCMT4aIiSmDP+9tWs35pj4ltD+SUIqk3G2oYtWbegBwDa
         hBmhK9fT1XZC5vahN2bEUYxls+/oe2cxXtadNna3GMeIpb0yN1MtgBwsbV1BiZSHNQ2z
         b4Hgz33CEUzvCiuxW8jluqyjG9GfwznX6KBNWKF3fc8BGEdSGYglQ0WW6wx9u25Zvx15
         6p9vZRaGBVJeR0PKBxB5buQhQ9wsm7h/mQRTOL+d0fHaf3WhPwAoeZQqVcnrcm6IOKIX
         aDEScFtxsEy4WIZl116AhTmlvczLjsh908lPKvBwryOO6DpM5CURTIxZVbqqVrTYdJUU
         IM8g==
X-Forwarded-Encrypted: i=1; AJvYcCVSbrv+WC18IkRbUl7zNip1FSzth3rc2QXnpXCk1SqPMEzRxpvgfmkDLOahC6O1Yt2BZXtlodL9j8Yx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2sAspbJDhIoL/Dx8/4kI+ZUahJ0onUhPKn+LShbtpBw/zcxkf
	phfa8chU5AeC2H/AHg8C3SaHkA1IoedQGlB8X/DCgC5tfg+FC0UKctrb2wvKpZI=
X-Google-Smtp-Source: AGHT+IGn+GQbP5fd7st3YxaACzT0RTH+AVxqaXHB+qabpc91J5Tjh9FmhddLqjOldCVgfMgOy82hHg==
X-Received: by 2002:a17:907:e88:b0:a8a:3ece:d073 with SMTP id a640c23a62f3a-a8a3eced351mr177200866b.10.1725448598522;
        Wed, 04 Sep 2024 04:16:38 -0700 (PDT)
Received: from lion.localdomain ([2a02:8109:aa0d:be00::a253])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988fefc12sm793401966b.9.2024.09.04.04.16.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 04:16:37 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Wed, 04 Sep 2024 13:16:25 +0200
Subject: [PATCH 2/3] arm64: dts: qcom: qcs6490-rb3gen2: make node names
 consistent
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240904-b4-rb3gen2-usb2-v1-2-b858e681195e@linaro.org>
References: <20240904-b4-rb3gen2-usb2-v1-0-b858e681195e@linaro.org>
In-Reply-To: <20240904-b4-rb3gen2-usb2-v1-0-b858e681195e@linaro.org>
To: cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1376;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=mzWAaTg1vbJM6BrkME05/UHf2UP8i7OlZSJJiQURPLw=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhrQbjpO/cs47+F1fJ+udeFWA+KYV+6VuvmO0PZExdSfvj
 vYp6zX3d5SyMAhyMMiKKbKIn1hm2bT2sr3G9gUXYOawMoEMYeDiFICJhMYz/Gbt6XaS/l8lk+r/
 ceYaIdEkv5JGvgW2c3T2cpRZ+jEFhzIy7D0TYbX016zPzeYXM+bf33fX+/NX2x3LLc4/Spvo5r4
 89CIA
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

We like to order node names alphabetically, to aid in this we should
prefer naming nodes with the node type (connector, regulator, etc) at
the start, so we can group similar types together.

Adjust this on rb3gen2 so we can group connectors and regulators
together.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 0d45662b8028..513d5265bb13 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -37,9 +37,9 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	dp-connector {
+	connector-dp {
 		compatible = "dp-connector";
 		label = "DP";
 		type = "mini";
 
@@ -51,9 +51,9 @@ dp_connector_in: endpoint {
 			};
 		};
 	};
 
-	hdmi-connector {
+	connector-hdmi {
 		compatible = "hdmi-connector";
 		type = "a";
 
 		port {
@@ -195,9 +195,9 @@ pmic_glink_sbu_in: endpoint {
 			};
 		};
 	};
 
-	vph_pwr: vph-pwr-regulator {
+	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
 		regulator-min-microvolt = <3700000>;
 		regulator-max-microvolt = <3700000>;

-- 
2.46.0


