Return-Path: <devicetree+bounces-173527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0B9AA8A4B
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 02:17:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 055BF3B1389
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 00:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62EC71AD3F6;
	Mon,  5 May 2025 00:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nAiW8nE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C3413777E
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 00:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746404121; cv=none; b=HiqtjW2RxlvlpG6L/R31YeSacA9XcqzoDiiwrL0jlTjsFlQgEz6U359dwVNKmlAAx3c/Hi2g6QzLGkhSV4VQskNx9KfP13xsI0TEpo9v5x6Seo1WhpHxOq7cUzKVTEZKhxeIuk7Zy+7Cdy2dQF15dCenoIi23bwuNDfRnLPjPuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746404121; c=relaxed/simple;
	bh=yxhAip+pU59d1DqmlgSeZ4LDkSEHXaDc7qVKspiiNHs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rAKe3iIKS9a7XIqSua3U0DkJY+ehvjCPsNI/Fyl1yaDFj+nJlhDEtHfPD3NtHmYdl2E+Xz+V6tFSKnItLK+ynlRMq2LTrqRXwKqK5eEkbVk+uHuwQA0tnkxagzucWKN3gcdSslZuSnSFu+os8zS0Ojioxw5YqHjwjDPBcnXLEDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nAiW8nE/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544MKows001685
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 00:15:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v2F7Z22Vqvpmj5OI5DLRf+E6nF4Jvc5Wh4oto467bgM=; b=nAiW8nE/itp0xVjY
	YUPQ9BUa9ZyG0iW0m9aLQGvyqzAIpH/uRS0kbvofPJHcAEEeeGwErdmbMjuzO+z0
	e4XtcpvUWGBmS1w5BTgnrep4Wlde9EufgKYLUx3RKytC1W6jOoC+vbMc6EyLwssW
	hMycCqHm6KmsjpJi6vxmBT9hX8GMo5IrFj3kCntI2HEnff583obp8i5f9qJf4v8p
	2l/CXNexgEM0vsgtYOhVNkINSWDjDKR6D0RZtzswS67SEx6T13gwm0gjosMDAiu2
	nft9fbUZAj2FGU1IWbU9SaNUPs31i/KnFfkl88PnIpQYY08ue2zgV3EVZidtyy1F
	E2SSXg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46da3rtpny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 00:15:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5f876bfe0so676610185a.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 17:15:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746404116; x=1747008916;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v2F7Z22Vqvpmj5OI5DLRf+E6nF4Jvc5Wh4oto467bgM=;
        b=DPXPVyP2saFsZyT6C7lLYOweTBEXiXbE5dpuW847EWo71+yWPujTyCzDBIxjC1rfgN
         i5UIQ1LzeDQeYKV3BKJUuFEvgrj8SLwZ9/ecxAT/6eUrkrjEqE6DaSWByLUnCLT0Dh7v
         YzJj449qPpyuywzQefx3gsa/DujzIDdd2hUUJyTmjMq5X6OQyBiOnm8VVshRKXEYcKMm
         sDBSpDSa/XOXPoScLd+AnxE8r0WpT1ZLXnBYH6wqBdrjJMHHnm+O9yV/peVz/aCmAE1O
         OEU0cBcyvkIyOcJrLpE6pZaiCT6xoP3v8bmG1Ht71yAYIa3TU5y3Zqu1z4AL2pRWwtXS
         1+vg==
X-Forwarded-Encrypted: i=1; AJvYcCUOAj8wNjWjjtGy5M+C1BtRh6R6sN9SgJUkq4Xkr5koLgXqObzQPGqNjHnJ/m9h3wDvMjFaj44MUr8w@vger.kernel.org
X-Gm-Message-State: AOJu0YzNWRXzRF6wHRtjQp/LdMKOtRkz1aTKkN2abtF1X+3NszoJgkX5
	/EJtqPyXU6YWqzKnpTtOLCf3Knoto1R/OCXsuU60IeoQcvV4IZphAKjql9lbier6JtRqGFPvzJm
	J2Py4yVumTVseI4boKFTsfilGmzp1v2SX0D5KvXP7MWKd4Wyo4ru4HSkSO9QQ
X-Gm-Gg: ASbGnctLbpZBWH0vkt613ClIIhplMLhiFJ47A37LFN+mGX6rmMBSuInp+btjAqSq6Kn
	lHR0OSH7S7XmG9SOFVmas+ylaas4L8+mv+Ac9tHx3Jy4L7KvR1uYaf9eFM0500PT6UNobqSObtH
	EIy6TeJlWNQgCL1mKYel0cW2Y5zFFM5MwXTOPRhebn+5foCaRDBM84bHYfFj6HeUqNUvEMluIWj
	w3CN62maE3YDxvdJMPWuJor4J97hLAbDCffO6dZG9yeHwDi2NuUv4Vlv5G47Uq2ooW4myGN090F
	VHrilc5Ye7nQQ9a+Of6+BMT2tXIR6M4IO5/+TI7N4WPFsO0eSks2le/KxNWXrVJrkuOPgrgEzu9
	FGP1pfBFVArmDwmMFK9eZ1Gso
X-Received: by 2002:a05:620a:2685:b0:7c7:a537:7ce2 with SMTP id af79cd13be357-7cadfe17315mr802247685a.32.1746404116395;
        Sun, 04 May 2025 17:15:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExYazgDRjTexqikZJLs+e8cHSkJCMMfDgM9LGiX5mnr/yYzp0a87xL7ICzXIpxbm+W8Aa1RQ==
X-Received: by 2002:a05:620a:2685:b0:7c7:a537:7ce2 with SMTP id af79cd13be357-7cadfe17315mr802244685a.32.1746404115996;
        Sun, 04 May 2025 17:15:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ce656sm1454066e87.105.2025.05.04.17.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 17:15:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 05 May 2025 03:14:52 +0300
Subject: [PATCH v5 08/13] drm/msm/hdmi: add runtime PM calls to DDC
 transfer function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250505-fd-hdmi-hpd-v5-8-48541f76318c@oss.qualcomm.com>
References: <20250505-fd-hdmi-hpd-v5-0-48541f76318c@oss.qualcomm.com>
In-Reply-To: <20250505-fd-hdmi-hpd-v5-0-48541f76318c@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1630;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=iRrggYdOsfyNRF7mD9CF5dLKTnVLk9gbl2tlKLOnDn8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoGAL81jAwp87jlj7ePL8czNId/7xi5vSBolYDO
 u7aLLeOGLqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaBgC/AAKCRCLPIo+Aiko
 1ZIrB/9urrL2y3ZvkQ2p9CqGK09lcSPj2IysMUziduCLEJKZVJY1Unqn29EtfW09+necJx1FnMu
 Oh1wVjrwn93y14OfZUCkCZj/VuGWmZrHQ2IiCbxAViknRVwNZwHh+SwCKKFz5PmFVRLpqF7UrIx
 lbfr084Ct04AbBoBdVZD2RpfCWmOmm4vfSowLzvpL2RYSix3bg30smbVtDZ0MKDy19qbyEbfmnY
 8BuWNgbVPoGwVrWOWeoynq6TJE3KY5c19DId31Pr0TzKQMEaKnSONTJGKFr50R8fC9Fry/1BX8q
 PX2DyLakLBKEigIRXub1o69z0JHanZVTsxpo2CVxkT2d5eOo
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: SBmWUEJ6vfHoH59-7GGJY1W_HwDEt0Za
X-Authority-Analysis: v=2.4 cv=cpWbk04i c=1 sm=1 tr=0 ts=68180315 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=bgq6psdzRVsaJitvC04A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: SBmWUEJ6vfHoH59-7GGJY1W_HwDEt0Za
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDAwMCBTYWx0ZWRfX33s7OG3POcuZ
 lACZgzEa8ZKaw5isWOHyIXTQknkIcB/CggCLa5ZFYIN4MKnJXqASLIlTBl6R7yJRrgUbUwzREOL
 9ngFJ+w5LhVJk8Fq+B1o4mjW4QcHW6bd+15Bu/qx5u6gszxzWbbvTSFX9ySzEBlO8s/OIrV8vkd
 oGRJHtHHjNzZ8v/4YnkqvEY7XbAUm0enNGvTMcyIFoV4Z6qSJgIXsAOiwC0i51TUrIzQAnfQXuU
 xd9TD3z8AtuuXNZsFgYICRZ2oCNm+iqSbl4Nj4gPN1M4k1VxWbdzrd1/mHYE0JqNBxtBrD+0ZGH
 b3jjp/emQo5jGzMX7IPDZCVgL8xI57Fg0TmJ5HG6PnhD6PsdtnN3JH1GFdHs7TUgPu4D0BjJqsj
 hQgbJsjFRIe3H5417zsUxLwXKBl6JhqCSJXHvu2lMByc79oTuuV5rY0UBYLbsFtSxUuWct0e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_09,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050000

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

We must be sure that the HDMI controller is powered on, while performing
the DDC transfer. Add corresponding runtime PM calls to
msm_hdmi_i2c_xfer().

Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_i2c.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_i2c.c b/drivers/gpu/drm/msm/hdmi/hdmi_i2c.c
index 7aa500d24240ff3ed6694c469eafc4388c982346..ebefea4fb40855745001ed97367d571bde28f413 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_i2c.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_i2c.c
@@ -107,11 +107,15 @@ static int msm_hdmi_i2c_xfer(struct i2c_adapter *i2c,
 	if (num == 0)
 		return num;
 
+	ret = pm_runtime_resume_and_get(&hdmi->pdev->dev);
+	if (ret)
+		return ret;
+
 	init_ddc(hdmi_i2c);
 
 	ret = ddc_clear_irq(hdmi_i2c);
 	if (ret)
-		return ret;
+		goto fail;
 
 	for (i = 0; i < num; i++) {
 		struct i2c_msg *p = &msgs[i];
@@ -169,7 +173,7 @@ static int msm_hdmi_i2c_xfer(struct i2c_adapter *i2c,
 				hdmi_read(hdmi, REG_HDMI_DDC_SW_STATUS),
 				hdmi_read(hdmi, REG_HDMI_DDC_HW_STATUS),
 				hdmi_read(hdmi, REG_HDMI_DDC_INT_CTRL));
-		return ret;
+		goto fail;
 	}
 
 	ddc_status = hdmi_read(hdmi, REG_HDMI_DDC_SW_STATUS);
@@ -202,7 +206,13 @@ static int msm_hdmi_i2c_xfer(struct i2c_adapter *i2c,
 		}
 	}
 
+	pm_runtime_put(&hdmi->pdev->dev);
+
 	return i;
+
+fail:
+	pm_runtime_put(&hdmi->pdev->dev);
+	return ret;
 }
 
 static u32 msm_hdmi_i2c_func(struct i2c_adapter *adapter)

-- 
2.39.5


