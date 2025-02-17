Return-Path: <devicetree+bounces-147551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B810A38938
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:34:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6D8F16993B
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF884226166;
	Mon, 17 Feb 2025 16:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S7h8Rr4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B1F225A42
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739810014; cv=none; b=JNtZKMQSm6JS6YCFujrc5KJ+NLE/w/t3kzyatnADOpV3NdP9Qnz8/5pSe+WMPbQNKHXUNlPmX5Pb9JiUv4zVSfaoawoTifrr2Dk1Yn3GB5JY6A6yBbfpJTGtBHsSNrXmzexKxj8QreS8W94vYSQ8OSZUUWRSGod+o1g6cxKaz7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739810014; c=relaxed/simple;
	bh=0XD7+/ryaoEOL2/PLVXesBusDcDdPYKow+QRoKKCGik=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MxqfIc71RaOn6hCMOyC1/CdytmG4GaFB4+qZENiNa3DncWDwZr1KoyavmkfCXO6XtEmVGWiJBzOHs5sfn5TQsbrZtu44D/cKSQykte31YbQJUUaIFyQi+xtrMpL5DfscBLbjejMLs45emFPNLb+2FsQ6zc1vjObrTm545nMKXO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S7h8Rr4K; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30a36eecb9dso7614111fa.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739810010; x=1740414810; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pAy9TG0v6l4FLNJwlf0af/AH1u4t70IBVqQ4T8QxeEI=;
        b=S7h8Rr4KCShoDJYlJDhR3F1nXRzNINa5QLHEs0d7wbYbCif+iML9ORFigBc2n3TNNK
         6JPZAyzenv5G0EVW8Z30yrMwcPFAdaazNU/UqDOkJ9O5dEeQ+m9gq10FyLNEXEIvDkx3
         4NgtFECyIDUrAXdo6Aa8aw4wwms8VjZ9pl040N6TZum5fnZ8Q8cdE0O11BU9dGZjH1PD
         gIbhtRkjJTvxHqHtP0AGrIRRaABMeTSf+XnrWumhfeM4BFZ94gHpI5nFdkppn6yLPAw4
         H23RIMJhmmnwVFXlwqt2XrF6HSGKmdjNaarsVqPDT+CtUZoF+UEC0wQrYxH/KugtDCYj
         HJTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739810010; x=1740414810;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pAy9TG0v6l4FLNJwlf0af/AH1u4t70IBVqQ4T8QxeEI=;
        b=bBmmY1GPomkO7cNm+gvjwlNk2VJ8I6XvdQf/B4CQ57K/EPTLs/AtfIHEiBGpA/p5oF
         WIQtAGxB9gq9t6JPRzy+fEWcTePsLrGariw6DtNhfeQQw3avPiLdHU+VV36NZHBIYqKi
         FqMWq9XScYWs2LCihayUulhefc4e2fmH339nFXR58cgGIIXVB4TCyN91Yl/Jc0K66gVX
         AII/UM61tvl8nHNRn7sTitNATxj6P8p1s62Xx8pit5i5gmvOBibh8kQ9lfN9jiPskoES
         GjDcUJrwNSLle57YIW3dM8x3h0gmlkaF6QikBpTNjl6Np6Huo7/hWxhd7Evl/Up5yiAE
         odMg==
X-Forwarded-Encrypted: i=1; AJvYcCW5ak4WQd9Sm1bjnf0ON44HoFBuPxyRE+4+pBe59R+J+7lAwZ3ZC5sNKeKNIXcsBgnxheR/MifY1q6M@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx19taAaf095ukIjglRVdWW1pXqdTvELEJPRjBgi6uo5TnC24p
	xYhQeC07vf7/wj0q6y62BtO+MGT8mQbN1El5y6e4ih12xAkc10ieb7VlqSEol/w=
X-Gm-Gg: ASbGncumxlEFhdEpV6wzT695OCdIDLu/UY9gQPgpQj2W9+ViLdaDpRrl7N4fSyHzzk9
	QwAwxO2D0KjcBJX/QN4d0rTr6YftGBYhwfyid0QaIWIdNzx64gLedyFv65961tM7s7MzQzu1S0m
	2ns7P5lQQfjkE+PvOkJWuykoGVCLYQGU4aH44okSnMHogPBVItns4Bu6/zuyvoOCxrlxAXQJhWS
	s1v1mwArgu3sjbyJPFDl+a6YR05kfridkVz4wYoS1NzAvA25LD2OX7QvMBoEoOxxbulqgnE3SgG
	RPKaxmMK5ZeQhEYSQc9hadtl5ZLD5ncbwk2zE/zjFCornLV7mWS5Zr/Wav4=
X-Google-Smtp-Source: AGHT+IHiq9PuuJ+NOS7eZn9UJDLiKjkTzwyRcaP3eSMUdPRvN1Clv7YRbUIctRiOnPscrcaGuXmWww==
X-Received: by 2002:a2e:b60e:0:b0:308:efa4:d27f with SMTP id 38308e7fff4ca-30927a3a080mr25850881fa.2.1739810010064;
        Mon, 17 Feb 2025 08:33:30 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a2cef18d1sm5695991fa.76.2025.02.17.08.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 08:33:28 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 17 Feb 2025 18:33:20 +0200
Subject: [PATCH v5 3/5] nvmem: core: verify cell's raw_len
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-sar2130p-nvmem-v5-3-2f01049d1eea@linaro.org>
References: <20250217-sar2130p-nvmem-v5-0-2f01049d1eea@linaro.org>
In-Reply-To: <20250217-sar2130p-nvmem-v5-0-2f01049d1eea@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=930;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=0XD7+/ryaoEOL2/PLVXesBusDcDdPYKow+QRoKKCGik=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBns2TROqWI2Cy8bx4H2e4ziVOKG+oW/OdquTDiZ
 PW4OdMlSKuJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7Nk0QAKCRAU23LtvoBl
 uDpeEAC2iiHzZ7+R1fTC8f7h/AOTDlSKIYeW4mWCYZePBY2i7nJreBcYXKXgxs3EKwNd1lVsVvS
 wx70lZJEwfNPHunMDgNMBIls1y8CAuPWr1KIvMK3xO7BGl0G054va9THDA+G3FoomIuOL3PRclE
 fltAE/MMV4+JRQ9JK/NAcaPlb/ccuFVaogdzyGImA7qTKeNnaxdmj0rEr2Q6J1kz+ffxoL489m3
 K+4Xj4e8pFBkFsC1C7WXFygIvRn8Hkr3EatMOMVRZjdUDDwjvshw8dGJRJQUR5ypMROK76hTV6T
 66jMV6caQKTpt9maegcnarhMAHxtyZnT8HrspjL0k8JVHV6E50csxeNH9WFEdz5iXsOE8WiRYZP
 4dOWl7hOrgdhwgjCo/Lfs439nCBSol1TAO4BWB34K+Z+9Y0BntEAoDcbzdWIwd7nvvqFVKX9kmM
 lhFZ9WjmyuheiMHXyACqw6WURDUCMh+ETUGEUO7swuq4eW5HFqMaCE/Uxeqygzm4p///fTN03oL
 2wCNFPGYBP/keIHyvrZHsH83fUaPQrQSiiQ2QPNv4jdQT3EJz46Ld+xm3addQPl94+UGbrDlX63
 eE6GjbSb0gfBA/S9LEBFCEeNTZJjle3raCd+YavOTf1Rmkg3+y6QvuuMBGS/QQbkEVgUb59YMxM
 CfuJDc8N1FHGqMw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Check that the NVMEM cell's raw_len is a aligned to word_size. Otherwise
Otherwise drivers might face incomplete read while accessing the last
part of the NVMEM cell.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/nvmem/core.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 7872903c08a112f11618a5aa6a42ba505106ef6d..ad9b716e8123537fb5fcef724a684e6db3c1de8e 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -605,6 +605,14 @@ static int nvmem_cell_info_to_nvmem_cell_entry_nodup(struct nvmem_device *nvmem,
 		return -EINVAL;
 	}
 
+	if (!IS_ALIGNED(cell->raw_len, nvmem->word_size)) {
+		dev_err(&nvmem->dev,
+			"cell %s raw len %zd unaligned to nvmem word size %d\n",
+			cell->name ?: "<unknown>", cell->raw_len,
+			nvmem->word_size);
+		return -EINVAL;
+	}
+
 	return 0;
 }
 

-- 
2.39.5


