Return-Path: <devicetree+bounces-249494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37095CDC163
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 12:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E6BC30675BA
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3226832694A;
	Wed, 24 Dec 2025 11:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RX7RBAJH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E5WxmFde"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648A6326948
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766574668; cv=none; b=Dw8qZ6SMb6n/h1dVRKdwfbTw4dIqHTDMQlQdzWq3MriZe+0L8JOTd4jyPpbsOKfhgmxZq9uoJWPg2xs2cLXYV2cjnygX/30x8ILMPa5Kaxd2+R+PzEG7wz73hx7nObLkEBL/Dm8vFt5zcgWF00q8x3Jbju0opjQKb+vv+U4iFeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766574668; c=relaxed/simple;
	bh=5O6EH5DVR59pp+DlTUQCdF0vmA2VG+e9rZqfOU5g5AY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AYiCm3WmwIHxR8Y/XTWULuMTD1Px0yPwQjWv1xDTkID2RUghtpP81VKqpZ520RSHJWmOymrsjP1BeIWLqwX55Rq8E/fZ8zEfyLORv17lD/kEa+QjIDdwad7AaedunYAu7jZGisJkaJImBZ5NuneuKcGACLKoMuc8CNmgNBXFY5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RX7RBAJH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E5WxmFde; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO84hWC1056223
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=; b=RX7RBAJHdaUyDBv8
	LmCDZdchHPnHFS7/INNPHT9hIcVMO3mSVOcCnyOE2hHB6ftPhCa0tBpPmMG5tTSW
	VZm9kyZHFmujj5hnBLLjy03AthJUZEDj4axPcpq+9TXPJFO4h+ib6AlrjT2riPVu
	afDS/YoK+RbOffMqjkSeYjWL7zvhfKofD0gFlMHFr3vjg/e3of31+lyeCSJCWmNl
	OEzWBZrzFKSnl1ylnDD3Nvy+KtE8ayCA4gyEBBMRaFENG9DLkBOU/2f5qJQJkl9E
	9js6BqE3z36TH5ZctlwJnNhrOuPzyh7EqQRW0YsRUOTz5ZJwIYH0d7aCUWpoRxtw
	rVsIBg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v28s4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0c1d1b36so148681711cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 03:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766574665; x=1767179465; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=;
        b=E5WxmFdex/9+24HbV3kN3OrPAtAKz6q56YzDYUwgiDmzAu9eDsNApzF44zrEOgqEEd
         8rSzz+/PDZLM9MWLrOP909wPP8vsio4ctr8kUB2utcoYGuWDGkyX5qcZxx6hZoTvnxrp
         oGztUnON0C6Y8Tp5QudyZt19d1JZCEhIcqXor5ylrEzS7UCYchkFjqiUQ2Iu8jz0I+JZ
         vZJ6sbiy9UwgtY/CxogVOQ0RiCAMeSqIPYOaNOPeG2l9+Ajcv9ncik0gFz0xBiW+LobG
         8KHjrJs4cUvJtUYoYQwJJI2oZGeUIrQaV39qRVKOWgP//uPwZg2rsDlvOh2vmNp64aRE
         0AXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766574665; x=1767179465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=;
        b=OZL1SsIWDtd1BEE63BAwsI+sAGdq6GRFVza2aSuhRKH8EEnkBUw+gJJpv9Xb9HMzEt
         3YkiFlFLAKjzGqTenRX17AUALXgOv585MwyZXFkR8HB+7oZYSYVn0ToTkPa8TFEQzOpY
         AWW8iAV6Bq0R3E2n8Z/Uf0kZ/pszH/zkl2alLAjCSXuSWiiv0wNlFmSkEhjfChi8i0cu
         kepJoYeETE9ZP93DI4z16FFiU27yf0BALBLB7Gh8x3hLf6SmtOaFFYIYH9ApjoXXH8uN
         1SHSsU/Ki3rsAe1opSe2qgWIeuMJRknAcQ71/QA3MBgnWUozXpuSuM4f18l7Lcw9QtHp
         sCuA==
X-Forwarded-Encrypted: i=1; AJvYcCUrox9aJ1o94O2lD5k9V5L9KcPBSeEErWng7ooQSxX5DC47UOKEAZDXjyQKhfifk+YE5gjdeS/4ou5J@vger.kernel.org
X-Gm-Message-State: AOJu0YzqQTIYGvBrrxrwDkvTxpq0GGNQIW2ca4US1LZjiYGVR24r/UlM
	eXZ3GWztOvA3bbjH+OI+s16WQJS+h4bbb8DpYqIl/xP6acQE33KU1WtZFMnh33bWqw4C6fsxV2K
	vGmqpVmwsut5NC6qv8mlt/iBOLz5ZqZp9mrp8uICe0u5zPiQWHo9GTAQlKXU1eZkU
X-Gm-Gg: AY/fxX4gohclsH1R7tqjSQgyXdpO/Xst+8PI8v+ojRgwqNijeHxmwnPTBaiF4wxpcgC
	JzFod+qrhnEFrLlEJ1y1gnNw6MnER7OK2NIurSPe4v9CqcsDiKMtDf0fFT+NM7CbF9O2UgTH/EA
	eL6FS48YJ2Lx/Sk7rki4cXhUe13HPtvcCAAF3X0B2TRkQCAsStzV7caKlZo1avuxeFmiOqBRZdw
	Ltqu6umcMFLGYBT3YrVYN+USnn4jTy4Zddu2vasQoOOJOlAm6fcfXba66tB9iOWdm54UrssVMvY
	0YPxDkZv/kTiBFrZIr4yhxXJefVulyQoqQyzyJOPTm52SPJdkd9bH6zOVDaSloOq6hn3fj34MH2
	6uZjyNkhPcYYsuyg=
X-Received: by 2002:a05:622a:199d:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f35f3a046emr279974511cf.8.1766574664539;
        Wed, 24 Dec 2025 03:11:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHY+QXEQr9fA75Iom8zAGPbK0MF2jM6Xeby2efJjGDdoAhvTFZCsfc602Uv4p1sHvP/+1qu0A==
X-Received: by 2002:a05:622a:199d:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f35f3a046emr279974131cf.8.1766574664041;
        Wed, 24 Dec 2025 03:11:04 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm16799036a12.31.2025.12.24.03.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:11:03 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 13:10:45 +0200
Subject: [PATCH RESEND v6 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG
 registers count
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-phy-qcom-edp-add-glymur-support-v6-2-4fcba75a6fa9@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1313;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=z/5gvRTWmoFviOJ7wu81OY1UNYIgxJ8SEI5ecSWoHm0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8o9sB9QxfHFF84ivRguy+9vK2z1CO1NN5dcn
 sYXr3eVgh6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvKPQAKCRAbX0TJAJUV
 Vte3D/9dUcwB9f08kDZGhordYfzLvIdLl1NxIhe7onk0rEorigyoPK6p+Q4/UwXFtHkWeF3hb4d
 /gdac2+Tish3pPaJi93LP7BQHg2gKGPFWwgy0PXbFwNhoGduuzgt+NMSFFxpO22LHCyYbr2QHZ5
 dgOgLZZjXMoU/rF0ZfJbMfupysdtLcSqiyN8DrewNjKB4nJ5yIH/pf8bwlQ1BoP92C2Ro7Pmdmj
 qcMLuwY8heMw0hVYSb9WNeDIe0ctTIZfzlsofbeZ6YGpWx0ykkXRwoBDKFkTW43yqbWtCN8wHIr
 DmGSElbAb5wMx3+VowGyfXKHyo1fuhfw4NaZNiAZGiTc+nriZEwHYoP49uPBxaKWqBdRGPNJDo6
 vvFZtvcxaj/AtE9ByfOrgGjiaJaeT7qB+7EE0iSXBo3mkwbWnQCDG7ceHYYtNCsxkFt6ElyleA0
 CILRDQBHdN8tdgZOboyvgjoCyq+1ziw4N3qcWdzmcCDn2iG01pri7VGq+XF4xNko051g9JPnsGt
 WlUeZuBKZxSX8+aqauHtKDvz3wmhX86V7fK6ak9GvGx2EIblgckvUOkjlbmwCUGfQZwxnz9YJu2
 ZsICLRJW4emO07vDiR9JrfByKcveod67ldI8OKf8R/vDLIkRcHqFlGsxVTk1Ri8nk5yayVDcfFh
 asuhXZPSKBK21nA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NyBTYWx0ZWRfX+zNyYVQX0dx9
 09Ix/gjiL2Ukm2XyQ4EapFLI49Iy+JYBqV8IymX1uqea5wmEBw+emGKwt+m7v14MCMfsQS9PhCt
 U27Z0r4hnzSnCm18zd01wy0I38BWAiQE6BaFfKP8sB835/f8QM6AR1pqnxezH8hSm/gEpPZKOFL
 1aeo1sl0cDVlIEUoF13KW0B6pQn8xiDwTXnocXE0UijlEdn4g5lIctIhdEXK5Hd8z/CxbjoC2hO
 sDn35Q65o3O3K8I7Tps1i83lfgKqoJStzd7V0cx48z88+vM2Ynqit9l5ccPk4wFgk9Rv1rmbi8c
 ZzQlvVMK4xinFd1C3AtSnSSrCnZJMLBoXe0MfpEWZITB5ZEhIx85kedfGH5+hyFQhBGL5PfVcB1
 Nq7XQfxX9EW3yhsvfLOAChaB5fpOqB5rGCYQVTDCEwpWhsceDTz0LNo4EM++XD5Ws7+zOnzKGES
 QveF1zobxhSOkSKOqRA==
X-Proofpoint-ORIG-GUID: z1Cf7873K4e_8DoLuiz5-Cbut1LcEo7p
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694bca49 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=EnfBGAjIh6IkBJmaZGcA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: z1Cf7873K4e_8DoLuiz5-Cbut1LcEo7p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240097

From: Abel Vesa <abel.vesa@linaro.org>

On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
registers. This hasn't been an issue so far on currently supported
platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.

However, on the new upcoming Glymur platform, these are updated along
with the rest of the init sequence.

So update the size of the array holding the config to 13.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 06a08c9ea0f7..f98fe83de42e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,7 +32,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058

-- 
2.48.1


