Return-Path: <devicetree+bounces-158320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5356A65B52
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 18:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80F413AF217
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 17:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F75B1EE01B;
	Mon, 17 Mar 2025 17:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JWWirmMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0953B1EB1AE
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742233509; cv=none; b=ucabHJ8ohDD3WbGIw4AejX9m/K0HA7IgIOmYLTQ1nYjYZnb894wVrxZg/TI6wwP6+8CmB1k5bQeybVMni65Vs/2j88EamFHseDueWZnAQ7ahK7g0a1dYw/ETlUn1ua4DpeCOAEH4vSAiLBdJmw0vc7VWV6K1R7Eu/XplfAIZDJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742233509; c=relaxed/simple;
	bh=Lp9Zy3ZOg/Qu4LlOPJJAadQkAgPZsy1IGz1a5M9STgs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RY2M7cThI6CR3afMvhjgFIyUv56PnmhvHQ30Q69o0njLRzOOTX3aA0imyNjAwRKCkiWva5QtOZl/lIpAZ75SfU7UJuKKXiLz2yesG7Lr302wolhZTjF8AW85f+RiyjA0Dv52kmOnNBsVqW4dK3JRG9XuptcQG8gVBCQe/4fCjdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JWWirmMQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52H9LBwj018078
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a6JYyDCnGQI1t7l13SJSEphsLkUJhxRy8R4wnW+KmNo=; b=JWWirmMQI6Ri1QBh
	jLcs+d3S6OS9nWB1BoK8rqbgK0ZRW+LPNG4SDqcOS4aOFcNTAk1kv09BDaH7EclX
	24SnAkGMwqXhuWLnZd6mdQzfiCj02wnOrM/nksbr2cDm4ZpkyJpOqmd5UNx8Fi41
	yq3yFOeKettgJJrb/DVbHyVEfB/lakwYr6ATXBePYfsJM7NV1SaRMVeQGc27ctgu
	wb410LODnQjuNKMxLOlF6yVKZVClY866982Qi2+9/gB97tc9HqljMkqf2uR8hMDW
	TFotjCBHo5mkrOI1wVDkiRZilx1g2tuIfVXCoqViNQTarWl4Tz+QGYgphnK6qQtW
	Bx5JqQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1rdnka0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 17:45:07 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e91f6bb296so89039736d6.1
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 10:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742233506; x=1742838306;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a6JYyDCnGQI1t7l13SJSEphsLkUJhxRy8R4wnW+KmNo=;
        b=YXKKFTnB50/Ufa1H5CSEXyoCbg3L32KwwkQGl8Y8myocW+TVFo2bhgr4xdwiNm5FES
         L/zLYYmBBJ19ONB9VAQKKtwLYUvfYGKsVUF7tHFMP46QGTtuKNDKPbTWvBESkUs7veIz
         TetIdNSh7UUvDAvwg0PtFH+vg7xxmgNbPFK0x5uLOxsoJeLTe2fvR/RsYCJKhOReeWop
         tkzgxhbtm6NtWD0Vrpxef44Ct3/UE6m8W5DKHzZqwkHgH8XBZDlWBjLD/X6/nPR1ThSR
         CiVZOYg0ayAfJvhBGOxIs2DLqQvPDLcuimI6Sz6Gu3u6JEQ7HxWc1sxo6oXn6I7H5UkS
         2oHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZG3pYLwcoQp9JMCWJrLTy5mlHAfMU9r/uUnTz6P+TWCmy1EatCc/ET+KPpyzwpyu6wfQJb+gEx9UX@vger.kernel.org
X-Gm-Message-State: AOJu0YxYm+lf2kfBci8SZLqzIAQ4iNW1XtURkmGMZ9ywcFvoR6bl5EIe
	wBKlNkWgT8Y79L7FyeRfNicN/OGTU1tPhwUGnGmV55sZayPaqbI0ebbv/SorsEB4zP76K3RzKmt
	oBqxPCQILfd1eYk9ORf3DqpS5GZbTwtfaQOW/9qDr6/vJJVmKJN7Ctz/SVm3F
X-Gm-Gg: ASbGncvTb0JMn7aQiUJTrpT+d2y4T6YBX7h4kVgxl7DdptTY88t2UVUqLa4sr2ZyC48
	KWveCi517PDeUH8FLDo2NHX9jAoxFPbYfwrGb4s6BbGgXb9BFCggbnyrQ+6TnUcSKiuxRYfspgf
	5HUQ8UcqgdAhJsKzmOnG1g1MoovVcm6uQlVIAWNhEZLk1YUdweN+ooWwHP8xJrf9EtcVVv/Robg
	BTaUDEW4yw4vlu/UOaEOWTIG4byXAHBCpfxVR5HPB4SIjwPoOL/w8Tt++88nK0PJgGEfz+Nc97I
	Da3FEipeUuBDeRiZP7Tg1ZM7lfVgc10NK3QIoZO+IcBUNHWmsraqONBL5yeqt9jLc7rbXY+tSGJ
	V8n+Z7ycPnrw+CxwEHRbS7i29gvbv
X-Received: by 2002:a05:6214:2489:b0:6e8:c713:31fa with SMTP id 6a1803df08f44-6eaea9f428bmr220911366d6.9.1742233505942;
        Mon, 17 Mar 2025 10:45:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXtmxTfI8erWiUZ8NMB+CxvpTl746d9810IAZ+A7Bi9XLrZgZVZ5iDDqjYNP9tLWfpymWykw==
X-Received: by 2002:a05:6214:2489:b0:6e8:c713:31fa with SMTP id 6a1803df08f44-6eaea9f428bmr220910546d6.9.1742233505496;
        Mon, 17 Mar 2025 10:45:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0e9985sm16687121fa.29.2025.03.17.10.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 10:45:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 19:44:42 +0200
Subject: [PATCH 7/9] ARM: dts: qcom: apq8064: use new compatible for SFPB
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-fix-nexus-4-v1-7-655c52e2ad97@oss.qualcomm.com>
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=782;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Lp9Zy3ZOg/Qu4LlOPJJAadQkAgPZsy1IGz1a5M9STgs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn2F+HzPjnBcIKNO6yuZWjC9nNYOeDW+D9sPOJc
 W/omJSU92+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9hfhwAKCRCLPIo+Aiko
 1b8KB/42seJcItiEdCaOgz7ToqlTAJ0yDZVlyQWcUNVxK1oD8+KLpW7DaNjz6PTa//2xgfFZbO+
 QSAucKCCdIFPl8+EfArI6rOzlDcM+kt6vgSI6sKWwKtzN4pbIR7bnzrkSEvz25Cvz2XgLQQu1D8
 QhDYcg40wCEzLl+ke19LLMisix38WG35QyJX3/7A2z31WEtg2YXwiTNrtMlfKjz85rt5REHHC8g
 q8Dis9CnRF/xs6v+YI5HAvQdz3ATRRDxNBnzLNTDF8+r/chNwhaKMvCMP4PVaXhCueIoKY80kiW
 91GuXoNHVIlLpd+SsBoH9ykmKI9c9Qta5/NbYKBLRyUFpf5g
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=Fe83xI+6 c=1 sm=1 tr=0 ts=67d85fa3 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=vGl9qbW8TQSvOBFUlmcA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 9jWoNM2v0iNyECn247pqprr2EsSFKIGq
X-Proofpoint-GUID: 9jWoNM2v0iNyECn247pqprr2EsSFKIGq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 mlxlogscore=657 spamscore=0
 clxscore=1015 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170128

Use new SoC-specific compatible for the SFPB device node in addition to
the "syscon" compatible.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 3728875a5506397b36a4c0d6a5ad12c067bbdd8c..522387700fc8ce854c0995636998d2d4237e33df 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -1086,7 +1086,7 @@ opp-27000000 {
 		};
 
 		mmss_sfpb: syscon@5700000 {
-			compatible = "syscon";
+			compatible = "qcom,apq8064-mmss-sfpb", "syscon";
 			reg = <0x5700000 0x70>;
 		};
 

-- 
2.39.5


