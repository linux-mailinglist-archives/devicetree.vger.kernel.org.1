Return-Path: <devicetree+bounces-136910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 780B7A06D17
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 05:36:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC1B216720D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6723521422B;
	Thu,  9 Jan 2025 04:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R4tDzsiX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749922080E5
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 04:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736397359; cv=none; b=QcmNwfLwaB51rvvkdrggoY+Vrky5sXOoLUKKcP761KAJGwajWm76xPgS1XBj54xz8y3HzG9MIwPr/SvBZMmZZroIQ0gwxr0X0P59F8FAFOb4dX4T3adOaqy9Vi0YDMe/PiAmo1Bk8GrDllUbhzEEclxfQdK/LRfehth3RtPbPYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736397359; c=relaxed/simple;
	bh=2bskNibEbXqxfl2Ilmpmi+d9e6SD72hHz1dhkLTsXqw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UFo2YRZ7sCGG09gDKoPWWKDSf8V830Uv0PxFLw5ajmK6akSnQzujNbxq6xh1Of1sXHuhgR0/NA6br0q0khDMITuuWLLC06lziIT+zRNI//eHuMJmaG1vHd8OXQ7UaLSIDxcjQlc7S3gOyY/IXFnGmHAb6tIZTjPBYsI7JtaK8JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R4tDzsiX; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5401c52000fso483873e87.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 20:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736397355; x=1737002155; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3aosplTLYhtpWTLaU5zR4iQWyyRW0YdWxTgdnKv+OWI=;
        b=R4tDzsiXiVcjWQKxwcpcuwZrpeVI0iiJvTQvP0gNdHs8m8TYq4b9CLao+x33dOEn1f
         u5kiV3grxKUVzRUQ+mj5zwoQAXd7hDeRJg5Y6MTVv4Lbz9JA95P0WdWEVtesj7B8b5cI
         H/cMZQ0OKv+Oz2HpjJ9n0SFhXs+NBw3jL3oT3BKcigg5Wgo1Mgkys9dPkiuU3WyPhmhn
         IuQHNUPXNgvJS5EdGmNLGT9u5rn2JupIBfBlDgO3wqh7pMURG1B9+d5edFlOIocDQXh8
         2D0Xiq8RsYP8rDf8SEDZo62tho16CnW69KM2p2E8ouyE4AqUBy8eEYYbM9dhPxPXtYZO
         PJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736397355; x=1737002155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3aosplTLYhtpWTLaU5zR4iQWyyRW0YdWxTgdnKv+OWI=;
        b=P+7gy61mSi9vASMRmrWsaYt6brVffjPTkkafl4XGbVmHTQghGpE9AfzraQhkZaI22O
         EVvXh+H7NHXx0qOy0gHB2H6mFIsg6XU5gB9C27Cs6L3ZhuHFgkoc2ZyDsiHXkYkspvJr
         BIpuSgzpPbawIKZ7oPz5oTDOhqGCdOgBYb9hrFoYRa1IOUpZoW+MI7eNZsBi0ItpDp1Y
         LPO0FYs61FGz+gZR3/nVTiDQtd3EwlXwocnb+cudBR542H1vMEPnAc7Wqy6qSUpvhfNx
         P7PDYaZCuLJ5D1f/W9Zk5/4IlXSTjs6Je59XgCoi7Wp9DbSZbCvCbxsioynH9wOJ17XI
         /3QA==
X-Forwarded-Encrypted: i=1; AJvYcCUX7vwuD95UveQkWvr64AgmrNvgnie5j73tsqfPu4NJxHpsAmnJ5nKekL55sNgXs+4bb/SlY05ZxvWc@vger.kernel.org
X-Gm-Message-State: AOJu0YzUZSlZDn1TZobQsaggk7NcIf/HW07v/eubSQCHv8UCjip7QX7r
	p5FIFKgENnce3nlNyWLD8AVVFGLPa9iQ93vg0ujAS2dK/FZlAsiz/MTTwuiDp8mJKwW7y9M670s
	4
X-Gm-Gg: ASbGncuvl+efh7n1jklihvSHbm9pVv4Z2u9xsqDebpCwUrJY0LzPRStF/ReqV9jwZBC
	dxUj2/D/jWvMeqcoWex+PC9qPDUuCUa42Fm9GZwRdK2eGRGkgHB8D9ShYhFuln3PhIUa1DrVTlg
	fgByWqmp07w1k/zHBcpdRoZO/MJ8mVZdWDkt00pnVDvgxLZWGSIi/MyxI7kTw3EahuGJaxY+Ppm
	rSfvvuJlwovrg0YJjNuo48ADgIVrO0aGiT80i7U5kU9CIKxFhfYfeLJROii1b2T5RBJsPNJZX4k
	JcXdhoYFsRNT2y4rp5ye/UCj
X-Google-Smtp-Source: AGHT+IFurU+4fRGqLM1kG2UuFsjtR9sjwM9mtjisWHOKw7E/cc5bFihShsVmoDxew3v7KstsiFz9KA==
X-Received: by 2002:a05:6512:e83:b0:541:1c49:26a with SMTP id 2adb3069b0e04-54284815d5amr1743053e87.43.1736397355392;
        Wed, 08 Jan 2025 20:35:55 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bec06e1sm73866e87.191.2025.01.08.20.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 20:35:54 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 09 Jan 2025 06:35:46 +0200
Subject: [PATCH v4 2/5] nvmem: core: verify cell's raw_len
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-sar2130p-nvmem-v4-2-633739fe5f11@linaro.org>
References: <20250109-sar2130p-nvmem-v4-0-633739fe5f11@linaro.org>
In-Reply-To: <20250109-sar2130p-nvmem-v4-0-633739fe5f11@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=930;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=2bskNibEbXqxfl2Ilmpmi+d9e6SD72hHz1dhkLTsXqw=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnf1Ij5AW+SyAZq3O9yagXEl8p5JuqiY9aKUHLG
 RhBU+zo8rKJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ39SIwAKCRAU23LtvoBl
 uNSdEACYA0FlOl7h1SRtSGwI1DheVcZK27ynUAsZws+LY5hBTSfVsSnavmFZpuWQxmXmnYwnqWF
 wIL45e9gI3wZJUt4+PAJAuQIpJe2Gpc5V7boWVMEZiAryCZsZ+miWj3w1EfhvSXu2gbSSK0OURo
 rFBZAz6bRY/2V9OiZmmLOr2fUlLNxuIIIXXW1yF8HddBS54LUKQxPoz3UIvDUAI5lGXez/X2JWL
 AmJjyp84ID6JLdNWOfrxRzjRL9/PCua/5dnzWQe+Yr6SMW97qZ+QMvfTK/xnVcA/yazIGF9h29j
 jFDz/cYQqtt9I0Qk+bdMfdHv1zX7euOEQNdJFDCRrGJdkzgClGYovR0SeIaCOdv+vBQSe7NhZiq
 rJfjfVJHr8RH4EuQaY7dMPZ3PqfTMnSbL4WJWFWra6WQchwUpd/MxWF8UI6UQjfWAwPuChEwdVQ
 z4R7UHXcLbqWTb6FoekugjEbAwLTZrHeqsXmLi9meHUq7WTbaTjCj7Nhea/doW0WTQvZLVABbWD
 QZ8kAVuJwEZXYNUgSS/TzFOovX1B8Y0S2pPJ5zJJldJfBgDsktM40QpdUTAcN0rEEwJwsPZZMW2
 s0XCU9fL+tcK7bPER+AOb8OPDJO+mD20yOuVvxr5G1NEnSSv3+ae4Ak5YSnBhzUmhrvFxxWtuez
 2Tuv0hX+VSiecGw==
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
index 7fa85b0804db360035d7471002dbf79658d5830b..59885d8b6a19d01f50759f09d453b092d1ec44bb 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -602,6 +602,14 @@ static int nvmem_cell_info_to_nvmem_cell_entry_nodup(struct nvmem_device *nvmem,
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


