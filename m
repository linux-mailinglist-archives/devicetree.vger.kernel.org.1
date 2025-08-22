Return-Path: <devicetree+bounces-207981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8EEB313B2
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 836934E6042
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 716062F6164;
	Fri, 22 Aug 2025 09:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fpjgYNga"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7256D2EDD70
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855578; cv=none; b=RTFpS6Xu9c4xzj1r/ztHP6d+AQ1NIqSFxN7RozY/U8pUhpDjBqUFbbPzrWb5FKzISgNwehTjzEmEvwqpItyxAU8+pObenkiI5mxPz43AblyiNvIP9w5vxkol/fQ+uKHuYlQbKqJWepvW0F/+bQGKdZj0ToyrTZhxNNr2y2W6Skc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855578; c=relaxed/simple;
	bh=LBXaPRYmChgNlaxLd1aqKcJ//ltc453vN2DqhuB6DAw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N3O2k+pBp4mdv+g7WJSMJHKBk8Vxa0d8BW7XuO5QE3CtuTsj0z7pxc8Q9ggl7UbWNwI3Tmwl7X3rUKfx9+GCuV6Pk8SPi8pUck0mzYE/7ku1yBchAH0jY2lq+NlOvWFH4oq/jADoVygCHgtaJNGRO92FBGdAvbPKlrYf3gaQPL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fpjgYNga; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45b55ed86b9so792115e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855571; x=1756460371; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5l1/E3apL0wGXJRh3OODxJwb4Or93GWoBw71KuYToUQ=;
        b=fpjgYNgahZ3dPhJTiqBIpZr02XnPvqsKK5OLUa8GUpr508jZZFM+51MJq54gGdaAjl
         CfZEMySNQly9hMkx/quUlncCpIFKpZJN6tnniBQiteOFQT3QbEeYmCABavB4dI48T16/
         j/9tv6LDGkQnZFQNb4AATzBU3v5t/476LqzyIvZKLVRD/8/nDRhGkCD2TUjRoa3owEO3
         kOatTcFYWWiqPjcumRgweoU9s0d//1sIzoSLRwXnY/M6v/WhKO/A4rUnwu516V52qnST
         3fWRZmBroC44IgEfV/jV0SR1cWzD/knkd1dYGicIsx+IkujKoOqwUxsNQuE26lN38/N+
         n01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855571; x=1756460371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5l1/E3apL0wGXJRh3OODxJwb4Or93GWoBw71KuYToUQ=;
        b=o3f1LIpB+II3/9DSCvWNefzeGIFAkrYgrOOZ1z70Uo6OiVx6srScUZMNrgxGCIY4tv
         Y8dhCG95QdZ1QlSMn1FlQC7qTVG/Ob63TocDI6PHN80Ypj2dlVRcj/4dwItJeOGoedow
         q/gnT6U+iVr05XFCYBc+GfCqChY8EDoHcIZkv+avmJunBWThLQGMrcPrnQW3tYkFGzeA
         vDEpUVPvjIVcKAMWvLCzHzbLVsqEORAo7SSbkyA0Cqseh/zcO/0IEWqZgkyNiKxmCr1W
         IitutjUiPe/XDXv22rGSxHuJ+pABXx5UGy0MHMraXxqvrZLvFor1U8Xu/YGo59FWeqYc
         YB3w==
X-Forwarded-Encrypted: i=1; AJvYcCU4Yx371K8hP5K7SVGR2TwNfZLgtuSjsyVAn/vgeqsv8RWHxnqkLrtpbNaPJTcXf+d5tFnXgtd7xgQI@vger.kernel.org
X-Gm-Message-State: AOJu0YwUpkauCG4K4pJ08jC3dzFEGsrnQjK0v8WI2w2/8yg2Rr95Udxn
	XpcLeX6L619oswNV8yqylnHVH1gwDZi6O9O0ANd0r7oagjCQbhQNkqI3BaROKo+IleWndnRmaz5
	tOjvBbHw=
X-Gm-Gg: ASbGnctBzzg9oHhnNTcu6wM3rpziHhsp/C35ZKlTIKPd2rkskqCsBfc1k0VMlC9iWUW
	AgZNCHNdnDCWhtHYV3N6PmffqxSFo4KqsN4RbphVBkD3a3s+xPwyb/rYmSURFxMxlcq+fSxfweB
	GuGK+ZaOthy/FdXfQ7pBRF8hm1DNCkKxe3DcjXEOvgX0C2YHM6AJaR8xbJTcbT/K+upwYpeQmQb
	UviglknBloUvYu+x/iZs/RmjJpBNtx6OImfjm/iY1YOA+JcKjXjpAOSvIezmgVC1Rp/bfOnTmTg
	k5IwFCt7oIaSVIlYmuT+Q3o9sYnz7DpMjKR6dUQm2f3T/6BY4S1Tqow0qWTxCXCBb/epZXYlzwz
	5L+13VY+nAwvJdwmzhihAneCyixmYwGacoov0taz2Nmo=
X-Google-Smtp-Source: AGHT+IEMS1TtSWGZlaaAKlkn25Sn2eINiSBk5eS48rfOcx/OpiefMoBeBPtLHjsBLgoTF3FWBGM0Gg==
X-Received: by 2002:a05:600c:34d2:b0:45b:47e1:ef6c with SMTP id 5b1f17b1804b1-45b517e011amr15445715e9.35.1755855570312;
        Fri, 22 Aug 2025 02:39:30 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:30 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:25 +0200
Subject: [PATCH v2 13/16] arm64: dts: qcom: x1e80100-microsoft-romulus: Set
 up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-13-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1085;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=LBXaPRYmChgNlaxLd1aqKcJ//ltc453vN2DqhuB6DAw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrHnUwZVKO3MUFLBAWjYd5MSZIR8zZlvnxdh5Qf
 XMFSjdWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6xwAKCRB33NvayMhJ0d+RD/
 9QE62hn4n7bLaW+l2Cxs7ku3uF4CJ9Eb7LLG2m9bCXq4nwgXXjT08lzpCFDR3k2GhwFWZh0hxTjJsl
 8unNMTxeGISwmeWV0X38VEtT78M2QsRu3dkzoX+2tEJ9zSv+vQzNeYImuT6ov5boNtfpEKXaYhbGUF
 OaUDeqiudWwqQAcsQiNTywZFktYf1AknztNLk+5H4etQCzcw+LsOXU1wCHWqwwwUr5V045+g747Sna
 E1ptyHMJUfme4ZU2Gpfemk/PanbDzA21T64vCU/tbaGh1JIIW/07sh4bCXFeI6m2iuQzU8BqFq0uUV
 5hPdxGVxCZIlgWJoChN3nfv5+FSHdJElTFpwEcysO7pXjxxWntzy67jJlojeWsYSeW9ib9kIpJDGWQ
 YdXHr43ateAyaL5DKNZ6s1KMO9bwmgC/CCgZIs/JLBxpOygGT9llTZnt9hHlZpHMc+8k4ghnJX+eX9
 cCsvxOVD2Cr8xE6d60KcMOmC1F3kwgY6tCfTQPxUZtswsNrTFaMuuvavz1s8r/l5wtaKT8mexFTjCC
 9qBwd01J+J+OYZhLVNN0zDJnmOl8wH94jNPiQOyEUoDFnH37UzDNmrv8RoJC8Y1Vr2rH3dAtpra/aK
 EMVUS8LSRWfSBuHxXkpCQRGL8lf2ChENyy3HV4c1pijoUy/oHoGr+cV6eC0g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
index 27dd5e4e9939124360544ee9c59900ebb01f3f49..559ebd9547ec4c3324576d58976c0bf2a8fc2217 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
@@ -949,7 +949,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -958,7 +958,7 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 

-- 
2.34.1


