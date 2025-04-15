Return-Path: <devicetree+bounces-167138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA83A89852
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D63E3B543A
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02FFD2918C3;
	Tue, 15 Apr 2025 09:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dNigE9nw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023AC291157
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744709995; cv=none; b=s5coANNF8O/KimeF7cIN5mkKhyBC7W1Yt0WDHMAcjPegvj07pCIW9mwjLT0djE8Iida0hskOa30jUI2fR5balBbUjvq1WoIp2eqaD0g+KT6WmtW8jo6u6c/kSdyeAajOHxZ9I/vxR+VPWPPK0FOjlOhDUWKVWJ8/FwMsYHvKj2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744709995; c=relaxed/simple;
	bh=QKe0w7hPSSum9QIzowcfFL2ZOQ2kKQJeinyQFxWQ3qU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t5KuZ5YVzuihYypVPurFMe1jM/BgDrU+jNlGopVx9J6xYzoUFifFXECHJ9MrvCpM+8MqSP1yiz6zRz6UB5faIViOPn1hEGEjeJkWJ7BjR5eHnqJVzzr3rtSDDXv9GoRBhPBAzwy60nhzyBU3tArfzZ2eERr1LGPA5Lbq7I3b3XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dNigE9nw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tIZU031779
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XZFldRXNlH8KDu+WC2sgkeRrWTmxXWr9px7jq0yAmCk=; b=dNigE9nwGZFwViS2
	a5PF8fqzQQ01yz2+aaC5LlQQpKSOlliG7r7MX3ioTC6X8Utc0SslzkhCGGU9PuX1
	r6T635CkS/R8FTSdmLTDQYi3tGQDOH6KRj7U7oxX6GbR49pj6qVL7XQYvhppJWTQ
	TBy8KDDHG/Q3VZPeBHHjpyfxoZFrCiY+eufX2BW4ZMALcmsoqOMquMJzgF4tlfW7
	wY48ipUZ3dQyIfRd4NCCZ+e0tRefArFxtanEIoQLXhHoN+xs7wUDl3jSVbz7VWUt
	IyyC3QHFBh9zTmHxTuv/rE6YizrE8zsmyZZsbCpqupkuLexE1Aeks/oCcy2qKVJk
	9R9tOA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs17j1d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c548e16909so478510885a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:39:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744709992; x=1745314792;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZFldRXNlH8KDu+WC2sgkeRrWTmxXWr9px7jq0yAmCk=;
        b=MSaAwjJC7tOQik5J3FEF0om8CUf8lbc2iSbuOeoxusJW1T4H73aM/AE8tXNk3HjTyB
         oHPBksXeMDCxltVrLEjLUONKt8UzaUWY/MdJfuRJN/2coTHhRG7D2TJC7/9pb8nFLr5l
         xA45W0I4EheB4XrJFAhMgoNxXtLYr9TjtoAnbGssXQ0Ka1Vvf6mbqkAzJpje6NYvuZm9
         f77HaV4p5EmC4dkMFbZCseELvwSATm1eJzXC33GUWO3VGTj+N7phDPZRyzL7bDnIZDZm
         a6P37MabCTBKY4P+yMHeiDVI17UyKWaOpeI/h5kcP6M5wie50TbRNE1Lf0WPA7G7J7A4
         BqKw==
X-Forwarded-Encrypted: i=1; AJvYcCWqyX68xnBHCIrmjtNYJasOlvAfA5fU1+bEoSBc7SO0YFTxgrnBYaldGrurGzVBiv9bCE2v7DrQqU7p@vger.kernel.org
X-Gm-Message-State: AOJu0YwLtqfaqdnVAjZGFQ6AwlDyAIJXPXUs3nzp3FNGlmPcIPrge4Rt
	ta0SVsL2NZ1FQ8WRnfZolFUyHXXXrzSEEDuMrw66zoF2MAVAmz0Ysi4kfCRvkxntoR0ozssHNgj
	qyY4fxwP5g1Rzx2Ho6Re5jhGcY2sX4nuEVUHFe5uiBhI79Eg4YV5DCeaVnmr9
X-Gm-Gg: ASbGncsPZgKZBkvUchSZXd7lD2yoyFpNs4EkTekq47GkbZ15fGWu2nSiFy/yijmYZIU
	H66kivnKmyFYfAJf8G2gh1c3AW3EXOvP71Wdi+phGgVSqR6uS2d8BWj+e2lAvjeAnhatQf5HIhG
	fUYpWZMjTFnAwIaDUAYbK9/d1AmA/bHDMvY5UKWGzMFGzg29cK8Ad/KAIbKQR8ylSmRSyiZGLjN
	+mXujvvk2dKY0nArj5YKQ4MLF1tFoFDzyz0wIm553cuAg1htWbb7nw+kVP27pzejA/uO2pKjvCI
	L6GqFL+99Z+bpkqE0RZcvl/jBdm9FcPSCT5VylNegqCtXSQ0XdidM7RU/Rcwiy7trvpxFLoxXPM
	g1XRJDR0tTnrRIWd7Dv+Z+poK
X-Received: by 2002:a05:620a:462a:b0:7c5:5670:bd77 with SMTP id af79cd13be357-7c7af1238b2mr2775897285a.55.1744709992245;
        Tue, 15 Apr 2025 02:39:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH60ouhfu37ZbUCCdaM4Wu6LIXI6BjqbTNDAqrORBs8MMR78mEaAc58RFd2noqZlts0YKJvpQ==
X-Received: by 2002:a05:620a:462a:b0:7c5:5670:bd77 with SMTP id af79cd13be357-7c7af1238b2mr2775894585a.55.1744709991825;
        Tue, 15 Apr 2025 02:39:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f464cbc60sm20141901fa.24.2025.04.15.02.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 02:39:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:39:37 +0300
Subject: [PATCH v3 09/10] iommu/arm-smmu-qcom: Add SAR2130P MDSS compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-sar2130p-display-v3-9-62314b1c9023@oss.qualcomm.com>
References: <20250415-sar2130p-display-v3-0-62314b1c9023@oss.qualcomm.com>
In-Reply-To: <20250415-sar2130p-display-v3-0-62314b1c9023@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=944;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=j/LGXpgnuRffqJSRqVOkk/ZdY8s1uzD2F9Jjdwztl/s=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/ilXhJKvBRqpk7CsNPZqkpAehg4pITVdiFpes
 BoRKdFHXJ+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/4pVwAKCRCLPIo+Aiko
 1YP/B/48+nZbO6Et4YDrFWvGyDoqZpKmhOtKcHu0rNlck5OXzpwD7f7PaaYn0iNa4VhranUrM05
 BA9wH1/Bhcadows98Uc/YJBciKXZzDXfGPzPX1NlE4svSULFT6UXGKCnKbJ3k7tzysLk4VokMuD
 pyUm5fuw71OpydRmXg63Rr0cj91Kf5zroL6qfw1mxGCTv+r6R0V/YT6Z1NhK3wT0XKYnBpKEGOO
 IIlTK9qGbb/8lgNiHyyKt39Jk8f7iuhRdI9s/6awWqwdJx45NMB5RoIZX2omEfj6b/kW4MYjAs4
 5Lsn7TNDh9esapdQGOlGifx4ljoLqB/ocUsddivk1Pger+N5
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fe2968 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=VUTEsYOwyNIbN2ghz4EA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: iGmH0nC5wJC7elBLuR2Z1TtqnJuY6Kvp
X-Proofpoint-ORIG-GUID: iGmH0nC5wJC7elBLuR2Z1TtqnJuY6Kvp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=994 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150067

From: Dmitry Baryshkov <lumag@kernel.org>

Add the SAR2130P compatible to clients compatible list, the device
require identity domain.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index 59d02687280e8d37b5e944619fcfe4ebd1bd6926..ecc4a1bc9477b766f317a58ef8b5dbcfe448afa9 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -356,6 +356,7 @@ static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
 	{ .compatible = "qcom,mdp4" },
 	{ .compatible = "qcom,mdss" },
 	{ .compatible = "qcom,qcm2290-mdss" },
+	{ .compatible = "qcom,sar2130p-mdss" },
 	{ .compatible = "qcom,sc7180-mdss" },
 	{ .compatible = "qcom,sc7180-mss-pil" },
 	{ .compatible = "qcom,sc7280-mdss" },

-- 
2.39.5


