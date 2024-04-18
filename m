Return-Path: <devicetree+bounces-60492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7348A9741
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 854991F23644
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 10:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF1215B980;
	Thu, 18 Apr 2024 10:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ExejG7bE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A3215CD62
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 10:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713435761; cv=none; b=KFBbqapjF45ne7Dd7PxKdTw1l8TxMprBL8EYT7/8VXuRQvZ8nP/C3a+RBNUyYKf0fzoO5MT5ln+dUoWDy1GPK0Gy8u/5bff8S0BO2d1rZ4JylVF2lXNJmkoXfnQMQTIHWApdageHVWdcq5jsNKYvLl/QhShXg35QrM0vDkWiK9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713435761; c=relaxed/simple;
	bh=dgXaFVCZUNOSaiEzpM+oe+2Km03Satk8qLpTLDPPQeg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nXO31OXNuALlGbVUz/+BfJ3Qm6lGT4V3AZ83n2RD22fJzrBciye8CqvcxAHCvVwaR09k/0gYbc2370I3keiodcA4RTeSgcqWUTL1JkMmmmIrCwDRUDiowoniP3B2WlbPI2RSo+oUDwRB71GxRMXkEdUAkh16OJj+U48iD2fdbWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ExejG7bE; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-344047ac7e4so1143009f8f.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 03:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713435758; x=1714040558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUCOuzFoK3H2WNAxEZb/hSYPJ6SKruO0EdmYB+3KyoA=;
        b=ExejG7bEf9QGu+mkFwd48ytUKVdWV+aYZsgZV3lap5sDyY0T95+4mcc9doE7poOgFZ
         y4QR6q4sry+8tOil0yUFTBgr4+0QGTkJmJEmnhD8N2skRDWlbDMEFe4aPPnWNI782CwY
         EmQWLIGGOI859cso28H3MabCvFXRs1859FSQ22+d3RXC08zwl4JdprpGOuJHid2oVGYV
         RqaFHKQnst6U1CpE/NWUNn3JLlyPN6lFlnvoZQw7rh+KtWLD2ljWszFxBBSeoPZWpj/h
         kJ5I1dVoGXQBWDN9Ozvw3fhJCr1J6jYi5U3qDKo+u7QGQI+lAa7uMmGojsnBygtHbAX6
         2BnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713435758; x=1714040558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yUCOuzFoK3H2WNAxEZb/hSYPJ6SKruO0EdmYB+3KyoA=;
        b=Zk+VVWxSdMkasnJA77cgmEn3MOKPNcLIoBfE9U3ZBXGV1l/xhuZKKUljRZSveS81Fp
         DJIaGJFLv6DjAsBrcYQK3yM2nlGlmCnPY1C0K6IcYT1xpUrqKs7XaLRsO9qEmYi6U5ab
         S9s3/RSKi2vGRKcFzVU1D+FbW6tnct01b9mj/OerHutOgcMVXhjweu12rzJ09AXVw8R9
         XVMzosNAVfPSV3WoG7uJKbMEjsqN2BO7CuRBw04jpOWkOFGeyyWhCA7V4mSqSai/mvZj
         QEWwnojX4nU+/0LiX8GG7TJLO7iMzZwrCiEHKK7CEduur1SG03s9CcDsmytnKm9EC8nz
         QciQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaipXKzW0Oudky50ism7Cq0deZRWJc5l8QJQpXJnH4yFibcp49zrRICXVtmJpcOIQzl1+WlLlg5nv+Yp/nXcbRMjHahmXF1MW0BQ==
X-Gm-Message-State: AOJu0YyJdHivMiOSYKzraaB/JJy1wUb1l+WFyb5+O6B4536EZx7N0adk
	NC/tuxdDLm+H5D717x2XIChbVt43DkanUQB2ccHQGEgbl4XWPkiFIWWWKqmTKLg=
X-Google-Smtp-Source: AGHT+IEHfbtsiLVXgG7oA6/S2au304f6pvUMm7mRl9Fdccj4F5xVo/dSK740RhWmop5onDHyNr6F7w==
X-Received: by 2002:a5d:4ec4:0:b0:348:cd2c:d2fe with SMTP id s4-20020a5d4ec4000000b00348cd2cd2femr1449572wrv.13.1713435757997;
        Thu, 18 Apr 2024 03:22:37 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.100.236])
        by smtp.gmail.com with ESMTPSA id e32-20020a5d5960000000b0033ec9ddc638sm1472731wri.31.2024.04.18.03.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 03:22:37 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 18 Apr 2024 13:22:19 +0300
Subject: [PATCH 2/3] arm64: dts: qcom: x1e80100-crd: Add data-lanes and
 link-frequencies to DP3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240418-x1e80100-dts-fix-mdss-dp3-v1-2-9f8420e395d4@linaro.org>
References: <20240418-x1e80100-dts-fix-mdss-dp3-v1-0-9f8420e395d4@linaro.org>
In-Reply-To: <20240418-x1e80100-dts-fix-mdss-dp3-v1-0-9f8420e395d4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1126; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=dgXaFVCZUNOSaiEzpM+oe+2Km03Satk8qLpTLDPPQeg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmIPRoggOwnpLqjXc6+Q/PjG7evbu0CzpfO1ygK
 G05bChs2qiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZiD0aAAKCRAbX0TJAJUV
 VuwKD/9qd/b02DSfltRC3P23i6ttWWMv0s5+FINY+eukMg4LOEql2xON1XDyv5tDZdPhe+njzqM
 o/7JH91ZfiaOU45qVrRckX7lxwZ92Q+Z4WzoF7Pi8VRgDjRdmboaIDp0VJBSw3FXAInAriMwFR1
 eAKsNrNqwawybge/1/ensDmp2+tG/GAe225UUxqGh1ExGd2OqWDD03QAsosw3Fgg97ri/sjgUgb
 LbnxCIqFVXqjq+wFE6XvaHQIq4GxLNC1WecD9NnWk1gobCuye0/k7N637jmEtkQI/RE/Y4ucyAp
 fHtz62gYA5eLXwkitqH9ciModWLZ1ZjALDb9G7qobahdRoUYfid4dztpzQP+VfY8LKF/ISE25dh
 C/AuzVr2kvUG2O7+40Eqldmm6TCheW1zol2Y3oZeBKzvioM7iEGlwYqUK0A5xYX+HTTobtyEwfO
 67+9Vtof9fqcljxBk7ThR8nbVUW+UfiwqGj+FA7zCgPIHW3SCUyJnTng0QkwsxWxj4e+LdTUL01
 asqEdwzNrvfa7/3wuOc6yh1tcLZbkIYFt+1arQezyZU7IpYUMUiwTJbf4zN7Vqdy7x3xWK5QmGk
 BsnalYLWlYJIaCVP8tSOXSuAusFBBOIs6n55aifEzbwaM2+S8iXhfV4mPgXedZ50cjYekYn4d6B
 bqcDDQ5427xU7pQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The data-lanes are a property of the out remote endpoint, so move them
from mdss_dp3 to the mdss_dp3_out. Also add the link-frequencies to
mdss_dp3_out and make sure to include all frequencies.

Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index d4198fa204fd..c5c2895b37c7 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -599,8 +599,6 @@ &mdss_dp3 {
 	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
-	data-lanes = <0 1 2 3>;
-
 	status = "okay";
 
 	aux-bus {
@@ -620,6 +618,9 @@ ports {
 		port@1 {
 			reg = <1>;
 			mdss_dp3_out: endpoint {
+				data-lanes = <0 1 2 3>;
+				link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+
 				remote-endpoint = <&edp_panel_in>;
 			};
 		};

-- 
2.34.1


