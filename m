Return-Path: <devicetree+bounces-223308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3A8BB35C9
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 10:54:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F51D16A87A
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 08:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79B02FE04F;
	Thu,  2 Oct 2025 08:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bDIQ9QHY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2085C2FC88A
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 08:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759395188; cv=none; b=XnA825tvDQrS9O9+Hce4aMaMx2e/Wddc/pZjdZILMAvg3TfhylMXLvWPjaRAqbO3+4lgG7aLYqS8VCgWBKSLdYiu4NtXQEjRpFaxOWKRbjiZ8Mxb/IhK2ZvT8rPHiViaBlvDrctFOZ6bK1u1GsZt73nnTqyfOXgNKbtLF/Tat3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759395188; c=relaxed/simple;
	bh=yEWKVEONPMuo/1ZLJQobHQKN74Mos671QJLh8xq2IEI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BSVTlpsFy6iurJDDmTLO9KSOJzpyRNDM7Z4vCQxpLOlg9sR2KocyyIFWIWmKq7kt2mpU6d5ny5e9SooPjBarF8UDS2VDFAm8Mv6UIrSNOVZhvILiupCfw2sH2IzataSVkt8HMySdPiMQiKmfZN85N6MJlAMcfZb5EFgexBVFM+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bDIQ9QHY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5925kaPu008063
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 08:53:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DDVKEu0l6U8/m1DkbF4V1wuFoj1Y7XDb8Q8vVrzOiNI=; b=bDIQ9QHY77iWHYUn
	ROjZnAipZqv2MDIVn4zBi509kJ8ZzZS69omgEOBUolx29qdmLcTIjhYITOojM3jF
	ZpJFC3shbwzeZE3zd42iyk/DAzOA9/9zR2omgdDB4mkVjS2psV9fBEm7eBvCEfNo
	dbVXuHzOcmMs5VwbnfI6Lcj+n+ZasS93MLYvDDcNodCH7zzA81ZVxBEiWdC6bPxY
	uA4AAU3O8YzbJKp7R3lM1jiemXy7xMwwVS/MGItB4OCXYA3C9KBKXHJCU5PUx4pI
	km7hLSxxDDEOVqQXeG1AMGZ9ifvwvNfZG0whT+6zx+7hnlvdgFeMKeOov872Z4xi
	AB64zA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49hkhh0e3p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 08:53:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d77ae03937so21281751cf.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 01:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759395184; x=1759999984;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DDVKEu0l6U8/m1DkbF4V1wuFoj1Y7XDb8Q8vVrzOiNI=;
        b=X3Rob6cscdiHXffmW8YxSlwcG8Njo7RKX35o4bnh01e/aF5jqjRXWKY8r112b/K69T
         J9GldbON2GWB6lKZGdFeW2GNZtnTEF6WDbW2z4kflPdSY7hEqqE7bP3eVY2eTh5JXS5p
         G6Pi6qy8fubiaovq0X3cGaAgJFDLuo5lBPApDtZT9FgPKeYnoL51tmZui9fHkeBasPLr
         QiTA6tg1nFYv3ZdxPc52+FvwBZjukpjMhyPz6jXD8/8OSVj8gflb/oi+r5RDxf58ReeN
         F35MzB/YHMFUERozHwWKN1Dvwqf4vV2XPhIGm7K34mxvjPYWklg5NjyzmmyJl8O1eGIF
         6vBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYJD0yoSmb2iWCAYJBDEAtAIbvDSkXIzRu5H8//nc8QcR43tLa8eXGieaZZI8y4vBxNShigSkZPVwm@vger.kernel.org
X-Gm-Message-State: AOJu0YwKRggm73mWhAjBKtq5JqH19ui8KhlK9u6cesWab0f2uhmtN5/9
	cBk/900yr9GNfmCeu4AwGdaDR0tsh3Hh4i+dfXdTd2fJ9IozAr5Cpp6jUfyGC5bpJOH1OQH/Rl1
	144GhtYee37/D3fNFeqQ/RedWL3+wd4YjTxDkfpYCQKf0tFs8fQ2Cfh5jlef6q86/
X-Gm-Gg: ASbGncvM2woaBzhNFtCyj1b29D7/oMwPrDk1X04Mt8JLBowt8W480dYXk4YFLw9nqkv
	NOZ/lZZyqgtFCNeIajFmEyFqyTWDsaZrezskzJoRzkiaZiTTYX1NTeXnHo3XAqoBtuR8LcGtmkL
	rRj01vrIFmcQ5K7L8pzhfSbbf0NMnlnk4hvVGgC6fACOt2PY80OylrNf6GWmqmkljLRqz3gut6S
	0zfeesNL0J2JOQk+4Qa6aQDASz5ZzQ5l5oC6coCljl3/B1RrHETJ5HVrln+3AMb7H4vcjcq3XNs
	EmGoa8zu4dlE5fK3kLczDNFldk1+11jyC+YAqU6LG3XbF07OMdKtmjnuGYEgC0ruPyvG86w5lhA
	14QNR78lhZY/qFnl8zEDovQ7lE/OwgDUVSlnG/pbYGgyi2YLko3ChHe/nRw==
X-Received: by 2002:a05:622a:4d0e:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4e4192f7886mr86280781cf.0.1759395184138;
        Thu, 02 Oct 2025 01:53:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzoeXCsCYajxT61dCdKaUdyvl96BO5g78vsxvJhmN//YTWTsStifnvfSF0Kf3B7QHZtn7D9Q==
X-Received: by 2002:a05:622a:4d0e:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4e4192f7886mr86280511cf.0.1759395183470;
        Thu, 02 Oct 2025 01:53:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba3124bbsm5207351fa.27.2025.10.02.01.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 01:53:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 02 Oct 2025 11:53:00 +0300
Subject: [PATCH 1/2] interconnect: qcom: msm8996: add missing link to
 SLAVE_USB_HS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251002-fix-msm8996-icc-v1-1-a36a05d1f869@oss.qualcomm.com>
References: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
In-Reply-To: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=989;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=yEWKVEONPMuo/1ZLJQobHQKN74Mos671QJLh8xq2IEI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo3j1s5EDM9dHkNBqE1ej+iY8LhlPeUyUebTYbE
 +8rfOXz9FiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaN49bAAKCRCLPIo+Aiko
 1VbaB/9I8MxIptyQz+jehF3TFFzZP1BOna+zENlbWyss4aU13MaIdAtq6etDhYdtsSHMQyDvMhe
 4iS84XB3WDiDXwHACSYW4P6DS05vNv9ovjCk4SAQXclLGZztZtQo+Fn8vxe9uO51ajsCRfwgpER
 SEhIYuUpuYqjFk7ksnlKJ95jhAKYppDUkqnyxgO5v3AqlE14z4pLw1zsZP1ChUmRpkU1Dcc8qRV
 DXbrrYAir2Fx8sqQc42uBLbd0WHmZmgKDg7PBYhoCBMDICxKnF5MLhumqdzIhl0ZeHevh8mnze+
 v4lozF7Avfx1pwtupEfhRaHlPOfhrHRafSUau64XAo6RgmQN
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: fPHqOebAUmDCe8CfcjhZeb4tZ6smHiTq
X-Authority-Analysis: v=2.4 cv=cILtc1eN c=1 sm=1 tr=0 ts=68de3d72 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=PsYRQ7GA2nqPEF2217oA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAyMDA0NyBTYWx0ZWRfX1gwJXWs+XGv3
 G90ooS65Xdej6hn/3QBGwlrc2miXRnEiimLjhR9851mF/HQMfXIEB4H8/EBNpfzLvaFrMu4DhZZ
 S97hj5Ru4kvMbJf2wvcmcgXuyh3Nae+jHaWZenGqAwy/ozI8QU4/LZrGQrPlXQYXTYKTWyhbThX
 zXIsw9OVE0pp25Aem6136RLWAXpEQI02RtThi4BWOxZXDew5ovtIxoEpDJpZSCS8VOlBOZ3Ng1Y
 5EDj0hNu3SwxA6rnETSpUJ3Hn77JP6IbDqO4BCAPU5Daf1KFrSFCNLJcdtnS7ZJd/GOUPlWwX/h
 bBd1yxAV3M93/CvfMseB6BOZtZgpppCUb+DY1WoIPYc+lspBDmXzFDmCi0olCTAUV+sbwFT0rOG
 aYDECx+gaTWFRm4oKGxdD/1FXzzS4g==
X-Proofpoint-ORIG-GUID: fPHqOebAUmDCe8CfcjhZeb4tZ6smHiTq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510020047

From the initial submission the interconnect driver missed the link from
SNOC_PNOC to the USB 2 configuration space. Add missing link in order to
let the platform configure and utilize this path.

Fixes: 7add937f5222 ("interconnect: qcom: Add MSM8996 interconnect provider driver")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/interconnect/qcom/msm8996.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/interconnect/qcom/msm8996.c b/drivers/interconnect/qcom/msm8996.c
index b73566c9b21f9dd275878419e030ab07163ef8dd..84cfafb22aa17dba0d5fc4074613546c3dd95625 100644
--- a/drivers/interconnect/qcom/msm8996.c
+++ b/drivers/interconnect/qcom/msm8996.c
@@ -552,6 +552,7 @@ static struct qcom_icc_node mas_venus_vmem = {
 static const u16 mas_snoc_pnoc_links[] = {
 	MSM8996_SLAVE_BLSP_1,
 	MSM8996_SLAVE_BLSP_2,
+	MSM8996_SLAVE_USB_HS,
 	MSM8996_SLAVE_SDCC_1,
 	MSM8996_SLAVE_SDCC_2,
 	MSM8996_SLAVE_SDCC_4,

-- 
2.47.3


