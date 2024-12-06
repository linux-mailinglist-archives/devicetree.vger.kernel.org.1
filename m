Return-Path: <devicetree+bounces-127930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EC89E6B6D
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAF6028179D
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C591FA246;
	Fri,  6 Dec 2024 10:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QjaEY5s9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E532E1F6691
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 10:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733479983; cv=none; b=n6aJjdiNYFQo7u+4ROgMcJ1nUJn/vpytUOCFuttfy/lX4ZIGY8WLSlG0P6usfelHcM0iHH9ib1p7XeJoKM318B1P5sUYp/QNfEtfsCxqD6APrik5W+GX4V5xcDhYH1ms0zBRwX30HdpVcztYqSRTjCO2BMUQwno+HFkpfBQQYD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733479983; c=relaxed/simple;
	bh=jGLTAugEoSXwKu8aklCQX92hP9mnmqNNM/X8hnjjVXU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hkTRL9RZyXt0jWGRbOvxg241dWPpYc3tnkdlCpR031Y1702rnAd0kdcvlBCtIDChDtFr1RWZeKbMYs6GtzmMcRvfeEPK8Lvd5WRYvfby55FS3dNjC79YHImzx2kgfQ6GhN5HCDQWuezd/ghe5Y1EGbBFjc0TB8354mqfUngH4T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QjaEY5s9; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4349fb56260so12555225e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 02:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733479980; x=1734084780; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ka9OJ0lCnfA6ALixeFrsKSZhUTbEuLvcviSCATqki7U=;
        b=QjaEY5s9Bkw9iglzUNx/pCLiIbXdSAQ75q485ScP7QEO0+d4HHv2nv+a9/O9EncbOD
         K84mHQqc9IRO7bHUdemf5roRJGq7LEHgzVGM4+TxjcQyB06tGF4DoEwbybUqjz6WdPOD
         AuGoSvpxup5UeVczjOED4K+B3Gl7GYqnVRRRJ8Cpv/xpK5Z3SmwUermV9IjlXOfBqDVy
         XoTvgpzpvEJracG2ieo2SJwcj26Sex5NtyYTpG0jDsW6Nn+kz7NO372Mp3Qtr9zin8LK
         Ho0SXHfBU94Gsazxracf6KC/c9ET4q8cDwxYd1//Ic2S0PaIH9QNK2hditLLWkYaQhEA
         BDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733479980; x=1734084780;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ka9OJ0lCnfA6ALixeFrsKSZhUTbEuLvcviSCATqki7U=;
        b=QdFYKHCrzq7yOUsFL1WMbMfuG/VyZLxmrmL6DKPO01VLslOpAo7TdAK3MOLHJ3OPOy
         uThecKHHjJmZ08/VDn+dSd4M/4CmycgM8eUuH0YrlPWRkgbGQdzs5bftePwxTTYi0bhj
         Mzb1ML9U+WmjY0bRxAlsd6FpAsNVMtbKU46f8bZOmLezNUS8WOXd+G6Bik//upF6B4wb
         5iNOPgywTE9YTKjS8puv893N/tNiCmZoWzZhTdP1g3WCSv2K4ZbxBtYwtaIN04t20ilN
         eS7YKbhWzFkCtt0B60CASoKAO7bkovifzcaog6HFZYKJppxzIwRB+7irLoZp4aQXNqne
         13EQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjJzN02jGtJhXR3Uou94eCbyARCcVgK4QZ5IR7xCL8mT/i+8VDAO7WEBKNJkxzfmvixuFRUU3/SpCz@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ90n7sIG5i5G1SYfkX1yXVTvhWb1VWnMT94ono0b7DxyFl0/n
	ATsMj0+1mxHghEFH/Pj5sv81qgivNBkSVeu9J9/zegSJVKqlyp9ElsZUj9bDFM8=
X-Gm-Gg: ASbGncvVJ3QD3J3mk4lTxivepdwoKHKl1SNlPz815lEHEet1nNwpFesV1QTHveKap3p
	YCAeoAuAY7l+8Czi0qv3C4gtSclVBpeAGziZmZIw0bu3YEPuis3oCw+9/3/+Z4Kr3FhqLEg/fcK
	MgMT4hzpTGgoZulg95gS1uVZoeUVVyrMbg6DdOw+fh8mqLO6Rx64d7lSfTH1Bl2IzWk79V6k04t
	PLf+UUm6iXQKQpqTfsuBjHJLERPScMiRvcgjSjk1HqNBGoCn0YUvvpfwWisdeZnGz3rBd4=
X-Google-Smtp-Source: AGHT+IEeQfEe2B86iG5APrb8Axow0idtpWPuHuAY+/emQ2lIVQTdPPkt7qDLpwnlvSZmav3JBPl37w==
X-Received: by 2002:a05:600c:5107:b0:434:a902:97cd with SMTP id 5b1f17b1804b1-434ddeacb51mr20602005e9.12.1733479980255;
        Fri, 06 Dec 2024 02:13:00 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52c0bfasm91092035e9.32.2024.12.06.02.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 02:12:59 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 06 Dec 2024 11:12:53 +0100
Subject: [PATCH v2 1/6] arm64: dts: qcom: qcm6490-shift-otter: remove
 invalid orientation-switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-topic-misc-dt-fixes-v2-1-fb6b9cadc47f@linaro.org>
References: <20241206-topic-misc-dt-fixes-v2-0-fb6b9cadc47f@linaro.org>
In-Reply-To: <20241206-topic-misc-dt-fixes-v2-0-fb6b9cadc47f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=988;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=jGLTAugEoSXwKu8aklCQX92hP9mnmqNNM/X8hnjjVXU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnUs4n2TZG5TNIYGdBdesmyibrNSY7Rztstz5n+cvi
 nwjNlKqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1LOJwAKCRB33NvayMhJ0T7EEA
 CEeKdbGLP2Tgg+QwufHRHa0gwmnrQ6RsQBAP2y5/O+SPFaP0j4FzC8BK+MfvplEc7yrZmukmiGtSPW
 upHVEhYgUabvSJcawzZnEtLuRta5ZbE1nktgKl/JTICRzWDSc+Ro05YxU1gi5K0et0lOQdouSwcutX
 S/Rd72PxQiidxSRiEZ6CYAp0SRBozYj+LWuqcPr2PrL4746RiLSNOQfmbjwtdXDJBLhx0NNlstFJNr
 cyQrO0e+phT6rwEZ8rFxbflptpPy24hdzAHwT2EpP442Tvz8/PVlo05I7PzhajA5nRClEB5qSE+sAD
 Tqwj+Y4rlaaISgjZxbqjSGCsRO4Wv5jVtwLYTyVixY1Zvo0sEoy+ZzP0vlKCqvyTHpxexXJgsvpfzP
 zVtOfteEjB/0qgRQxaqTPBJaszFDCGD0ckFMH340Ntv9XFuKL01CFRZCqSk3rhnU8iZCbZDnNvZz2f
 Yx2ffrrB8PucxxTkY1Kg8bYal8OswcYRPtXv+J3wk2RlZxBVXBNiAQR0rFB4PKsftg2xueKNA2Afhj
 nSY39Fvik2FC678rnov1bGqmrj+DBsHKN4h9GFOncvvCq6tfBSmPZtuj6MYE2kGJuQL6118apR+zvJ
 aGcDdKDR4uJeyhvgs5MkDVfc642RaO2TN8cuT2MVK8lojJ1Vn4KGak9fHB/A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The orientation-switch property is not documented in the PHY bindings,
remove it.

This fixes:
qcm6490-shift-otter.dts: phy@88e3000: 'orientation-switch' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/qcom,usb-snps-femto-v2.yaml#

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index 4667e47a74bc5b0f01a53beb49993d238b13c4ea..75930f95769663f6ac3e2dd0c5f7d224085dda40 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -942,8 +942,6 @@ &usb_1_hsphy {
 
 	qcom,squelch-detector-bp = <(-2090)>;
 
-	orientation-switch;
-
 	status = "okay";
 };
 

-- 
2.34.1


