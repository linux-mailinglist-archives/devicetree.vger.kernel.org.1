Return-Path: <devicetree+bounces-73228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA188FE483
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 12:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C41C82853B8
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EE78195395;
	Thu,  6 Jun 2024 10:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LUHKA9oI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E99F194C61
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 10:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717670532; cv=none; b=tRoIQkuxVO+AD7ociMNEtGeRh0TiNNT11ZzWOAu5UHvoPK6GmMfy38mHL9BDF2U7k5jfseItmSMIY67F4m7Tso4UCQYJCAzKMFHm1nWVUIXUgrsiEmFxX9vNqK6MQbJD41XmwR63+G9Aib8XmInX6fuyUfJq2DhLKBFq9MN5Q6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717670532; c=relaxed/simple;
	bh=An0xem+v30MD+yvMR7Xg9gPbSXxhWMS6dug6ZfUDI84=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mdcWKSJFrUWEhCqoomBp1fo8ygBEAcmbyxS7I+AFBhMO8jjb2Ig7R6PF1E78KN+CDjw7pEFPqGV+5TSIikKBKt1AeMqx3DjV3tHQGjY2iqpruiNwe0VWrP+fg+qQpXe7lPeSMZvpCTQCHPJof02fZoCNQE1hKozvo0MvOuHcMWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LUHKA9oI; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-57a31d63b6bso1013099a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 03:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717670528; x=1718275328; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zpeFn017Q1U5L13CH6jXgmUXbUUD3PoX+619nEqpGTA=;
        b=LUHKA9oIaicM7K0hiWOGC1CugzH6mCTGAdPPXV3tYYuMJNoju4PEoVJD9twFhzXs13
         n1kXU6kqA6HgUvEOCMGF66woEzWfIYtjUeRZIa64A1vGy3qxFTR2CHM1F1jV30zPqF7Q
         7M0mZMrPiuxVg0nsUGpvO+vToLWQ7GBKsqB3Q0E4HwfJ1PaYJEcOAmC41yc7+HgoIVg6
         VGYOKH4hHyeZht8opL0pZDl6T7W7Q5GHw0mwJtKrG/rL4Jpo1ErSeycsAfYZgkMu1Jpj
         U1PfdOBl2cD6DKxyk9SSLkMFQUMJUBJw7nVsFOHuzqO1cu5WeVzppskawLF0LJGSc5NI
         xxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717670528; x=1718275328;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zpeFn017Q1U5L13CH6jXgmUXbUUD3PoX+619nEqpGTA=;
        b=Kgnwi0D01s49UX1zKY2sU4MHCKz4R4Q2O0yTRMY18NDN8V/2N7nhO/Je1aSlFdQCPg
         uLlzZTDprN6TPIYo6zf796yflzwzGg83zwuvICswt8TBE3GG2xj962iQwGfAYZ942NhN
         aBudiW5krAXKoWCkYXxvCmGZYKrRqYUsWGCp4EgvLB9yWrDfd7gDsy1Np/zqxKKQY+KA
         XvSGtUNJX/G9YyPeCDgMZT169pg6MoCgJO5eCeGQp2WknzIVirOFtMt7DVXLV2en3mUr
         SznoDeHGJn0q723HaphiFa5BCBFaCzid47abHgJzGNEMu/kfHO0dyFaJkWC9dLj2eqfO
         1GjA==
X-Forwarded-Encrypted: i=1; AJvYcCUzO0ZXZVCQpL28Tv9nkNja1G3Tr3ifxA4OTTGfwHuL2Tq4yYTQzZ9TcrJIEk0JLBFVVdXvA4ux9p+0uLlmmssRDrgHAoMMUjA+Jw==
X-Gm-Message-State: AOJu0Yw28BeKEGxVaVp3SMgahtOLYwcnwiScdVja+G3DTofElH9yEVgd
	BJZQQhE17XXT9mY1fBq5EdiYGBSguRNan5aJEs9+KvKBVGCOLeTQsKA3nCCtL48=
X-Google-Smtp-Source: AGHT+IESr0UJZW1T4o91KuIYjr/YU+ee5zsNo/9ERPhUt96slwRCDf/E7Eh9toC1vZ8SzclAV76fzA==
X-Received: by 2002:a50:c2d1:0:b0:57a:2abb:9e82 with SMTP id 4fb4d7f45d1cf-57a8bcb743fmr2570169a12.41.1717670527721;
        Thu, 06 Jun 2024 03:42:07 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae0cc36bsm871477a12.26.2024.06.06.03.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 03:42:06 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 06 Jun 2024 13:41:52 +0300
Subject: [PATCH v2 1/3] arm64: dts: qcom: x1e80100: Add remote endpoints
 between PHYs and DPs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240606-x1e80100-dts-pmic-glink-v2-1-972c902e3e6b@linaro.org>
References: <20240606-x1e80100-dts-pmic-glink-v2-0-972c902e3e6b@linaro.org>
In-Reply-To: <20240606-x1e80100-dts-pmic-glink-v2-0-972c902e3e6b@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1541; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=An0xem+v30MD+yvMR7Xg9gPbSXxhWMS6dug6ZfUDI84=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmYZJ5gMK61+359XUpvb5WAC4wQf4rQ8N7/b3P+
 pDqmHeepLuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZmGSeQAKCRAbX0TJAJUV
 Vk6/D/9/eiFaSp26mKepaWqP3uUxe5Zl/lyYYuEtR/tZvF7ZFd3l1699gsxh8P4RRmBi/bsihze
 +cD2bhs+GSJMVREvXN8cb5Tm4wUh2rJBDSAiDnyfhOE5IR8zQbxblHXVkXOzHHeTH+3AP+d9VBm
 9eA74BXBCc0nJJCWRU7A37foJl89n+WuCrdsEmkbqoO4DPoc9Hwa4k7y42nfkHhgH8qKKzoznpV
 KLOsUtLJtaNbf6ieWPp7sGWr0zCUv/0mVDD5I4PFvBI3flROcu9PiesAtzwBTMotxqQGis5o7OV
 i7xVZLhqPPo/EUWEasaZWEWKbQa/Ty+QXhY4uoCROe6QEtWoS0pMXBi4PTbrZ64M0WmKNMywD8Y
 YRJ5VKAWlPsD45Fh4H5pAsro2/nTJRX6yqEsqm0XYI+mHpqRL2pWYlWFauiZsYiIUEFgJEW+b2w
 ZywO7bjZJH4bLqgWCFzZd33AchYTYkPriGmYvPT2jUc59aw3ysNBDKsYqPl71rFTyYvTLpC1S3G
 gowMl/TuQFLgcebD4eFhwEsht1bZFMhfOaM4OahvPh4MQ9b062r8YimebUbmvFdHlaoUb7cZEYe
 UEWvp6Hb4lr4H8j5LnFFWrCyBUgVcPxDSJX+m+j1stkdTDyo/qULEp8YcwosdGIMTu065Lr1R+1
 5bDgY04xhTpzFQw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Describe the port/endpoints graph between the USB/DP combo PHYs and their
corresponding DP controllers.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index cf8d8d5b1870..e275a2a04add 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2567,6 +2567,7 @@ port@2 {
 					reg = <2>;
 
 					usb_1_ss0_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp0_out>;
 					};
 				};
 			};
@@ -2634,6 +2635,7 @@ port@2 {
 					reg = <2>;
 
 					usb_1_ss1_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp1_out>;
 					};
 				};
 			};
@@ -2701,6 +2703,7 @@ port@2 {
 					reg = <2>;
 
 					usb_1_ss2_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp2_out>;
 					};
 				};
 			};
@@ -3993,6 +3996,7 @@ port@1 {
 						reg = <1>;
 
 						mdss_dp0_out: endpoint {
+							remote-endpoint = <&usb_1_ss0_qmpphy_dp_in>;
 						};
 					};
 				};
@@ -4075,6 +4079,7 @@ port@1 {
 						reg = <1>;
 
 						mdss_dp1_out: endpoint {
+							remote-endpoint = <&usb_1_ss1_qmpphy_dp_in>;
 						};
 					};
 				};
@@ -4154,6 +4159,10 @@ mdss_dp2_in: endpoint {
 
 					port@1 {
 						reg = <1>;
+
+						mdss_dp2_out: endpoint {
+							remote-endpoint = <&usb_1_ss2_qmpphy_dp_in>;
+						};
 					};
 				};
 

-- 
2.34.1


