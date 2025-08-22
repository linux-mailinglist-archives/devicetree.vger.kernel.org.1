Return-Path: <devicetree+bounces-207979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9472B31411
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:50:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A7463B0EA5
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B7722F548E;
	Fri, 22 Aug 2025 09:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n6QUCdeZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007622EE5FC
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855577; cv=none; b=ZFjVFuJAtaCAJzsMl6ULKSXUSksXKYg8U04bxjoFHrsqSMpy59JeSD3tgT/0ZKkT+rPQaODQQCE1Hojg3MOtGnAG/hDRQrLYl76aa/IAzu9L7A44V1duhTQiqWO12CPsk3BzrDqeqgZkRVusWcuckCafAxOFTJPs7fpUVg2KL7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855577; c=relaxed/simple;
	bh=G/wzh1LKlqFj1XHpSW24RpGEuz40jGEwYVOccwOIdpo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fqc9zzj7RXAXmNVUTQIgj/r9YS/MUut8Uct2TWKXwzm11/pxhLLeFQ5cPBwMS6ne7ULmvBIaQ22H+e9WQoPUvfhFJ2lIdgInZybnaIJWb9/4svuTqYjZVUcu8iUIE2MufsEd4+5eUCqrAeo12ewWvh2EpqxWCp9tihB8fojmlg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n6QUCdeZ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45a1b066b5eso10078675e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855565; x=1756460365; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D9vU+AzX5hawYwkThmd0VTvOrafIrJwi5Pt/Uz+FZJs=;
        b=n6QUCdeZdiqWMlJLQdbH00TLOpUlrLW6GAakfZ0rWVY6rVI1yaF5raHoAuCYDK6pv9
         6D9MT1tMN2lEQzLDMYsA+4W/Dk50C8KCarWrw+63wPMxEyrYgMTNxw9xjfWYErSUZk5z
         ZgbVU847S12n1sgciXKvpCkh12lUnNm9G1SpnDw7xHUSfGv5Zi1gF5qKWtmJJ+WQI+hJ
         oO+gD3rL9u9WHNwiCSp18hafJrCa1wiVTUxGJLP9yVLjtWtzPypP8sOCNyekrEM0zSR8
         XtFGlewK3XFJK5irL+1/qqT9SjFERl+Q3lbcicpkf8VnC5a1QLB33CE+loCDh9zc/u6b
         Ipug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855565; x=1756460365;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D9vU+AzX5hawYwkThmd0VTvOrafIrJwi5Pt/Uz+FZJs=;
        b=YHYUdVNtrC3hBEkre08Vggx9s4FNirOCdGp2CFJnbwXZ9s6d16uukZEfySR3MNcMXR
         6xZ++rbgtV603WWJpOHX1kaPfDoUs/yw++Yt2lrecDt5dm3A/19566LlwvAMj+3Wc/yI
         /QeyU5xMiuIUkemxib7JOwSjUbDWZYpIprOxhWqmaGtxgdmbR/ryE8P5PyS0EDXra4ye
         yRC1VbXB6+cNoTnXqJFfcaJszJ4q7tHyDfI6yM6mF74b7/XiWc6lUJ2YU9MZ9AC2YaTJ
         M3rxrrFIx+Nz1Zp79QXU0fFAVARrq7OafpUbBZ/+LDjafsDh2bBsaMKvsh7ceceQtrEt
         Tz3A==
X-Forwarded-Encrypted: i=1; AJvYcCUVVwnF5+5Xjp6sukKmf53Yi7heZNlMQQ5jHQhWJpLlCJ3XeBRs7dJVnw9IyXjgO0UaOslVECfHCyQH@vger.kernel.org
X-Gm-Message-State: AOJu0YytWafPeUv+Aq+1ZbkzoFQKo+SQT9q88vMrraxIm3fbIlZSMrzy
	joYe4MYE5AroeDwl9H4/4O1kdeJKAt1RWWWZhhBDGbl8GY+AstEhJ4j8Rg4vnQuqlgI=
X-Gm-Gg: ASbGncuRS66Wb69/lpyD6MeWidBwPiAymI+5yhejmUiqHcE1oJlMqWgW1k51hcsPd8p
	JZsteQmm1eDjlUBV7k2KQT8+BS70wgAaiKrgf4ZUvnfO4NU0duqxiE1EtaTQYJFmfovDbcBT9yF
	/VSenK3THFCIcYeAUYq+uxZTn5QWUjkeYNJOpQb3SLZcxbEigCKQ+hlF5+Hl0S+V6gzThMZ05db
	s+JEnTKJmgFW9L/hCgVYZC7JQ2+KpQW9SE1cjDs2YV3ceEmcfq9Evo+7sPIPMPD0+iiOZ/95Ynt
	H8aS6desCcMaAFTlh1cbxtkTiAhXKkBxcsoZXr8ng14YMquxDbfpmppXg6xMWtMNAe62s7Ugd/r
	68EiliCEh4nbp7428whlaoGuBdXEnZSV1/4vLh9yM27wfWDU/vstpdg==
X-Google-Smtp-Source: AGHT+IGBWpvmCWtQxpbr2Q0sAV/Drw56IfHvctmF77NIYGiyESrl4m58R8Mw1FV0/xzDYN3ZpPU4bA==
X-Received: by 2002:a05:600c:524f:b0:459:d8c2:80a6 with SMTP id 5b1f17b1804b1-45b517cbeb0mr19614205e9.33.1755855564945;
        Fri, 22 Aug 2025 02:39:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:17 +0200
Subject: [PATCH v2 05/16] arm64: dts: qcom: sm8550-qrd: Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-5-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=732;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=G/wzh1LKlqFj1XHpSW24RpGEuz40jGEwYVOccwOIdpo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrD8l6vYtYPHmdI5hVYtqPRa82XLUzSdldEkMLl
 suO1xPWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6wwAKCRB33NvayMhJ0VgQD/
 9bfPy8gI3yq8EJFwCIHEPa/qUylYoCEAXwu4iODxadQCkm2js7bWpZMA0Nek8X/+Z+ad7no0pRNTdZ
 eM1aT5f6YOCxwgmX7VPV59A1t1AqMRlFMAhAHTtKgRueh+4VqTUR59KF5ypvctXaVStG3rx/8M4+Di
 +YRznbr26UPl/t6PnY2dpm3qyulu1WxNfWP/blHpuEZuJEzgbjx4GYTsepqTHqJygbsOB+dMzbhce9
 tMMnfhF5A/1NR8y5/cDp4va0ceXz3YTKeK0EEd4DJrD8pi++QC6CU46SfjyUmSwD95XIse/nQgZULr
 h5IfmYK8wnpVLNTZYomWNYFBM4kBdM8nsq1ktVaSOXbpvBQC+nx+cT/NU86hDiaSBtkbToYoba6nZr
 vsN0amOzrRl/p9VTagdfVOvSa1bkUCuH4W+rSVMym8lhmpe/Wzu1kZ69vZIHwuCoLHM9lWCrTXi+ed
 qH0mDNsX+XqY6pQmAu9gaPcLoYEUDNr/yEIcUrCwb6G3GQcjutNzcSVF0fDlZForwMQixWqSv0hW9f
 vmxKPsYFZylgoSYUakW2/hbmleIo2Aeg/5651beQf8aod1rWr8OjCYIXI04DxsR1b9YmHG+ES6849b
 Ps0o4dhsu9kqm8ISTL/qYs3+wQNfMr6TEha4Ldq5VLxboHD80eqb9vzRx0gw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 49438a7e77ceaab9506158855b6262206bca94ec..873835eb1ce98f2306abcf0153a284f148e69cef 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -858,7 +858,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pcie0 {

-- 
2.34.1


