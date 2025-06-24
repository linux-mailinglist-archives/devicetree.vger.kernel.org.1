Return-Path: <devicetree+bounces-188838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6958FAE5C8B
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 08:07:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4AD14004C9
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 06:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59AC9257422;
	Tue, 24 Jun 2025 06:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AvNc3dEu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5712B256C61
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745133; cv=none; b=Q2xxEpnLU/bGmm0tgVwXHHKDXx12eu6nC8m7mrZPmv66QSLMI7W8zFobTaRUrC9BPWwAY2MrRo93qpr5WXLEQkZyY6PxhufQgQ13Wj/X7BoJawP2RuPo6/bi8mF65RlHlOaLIEoT20rK/NfTcyzUUxGJrdCq3OJaUCZnGyBoluw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745133; c=relaxed/simple;
	bh=f30cw/8H4EXiyHfPv/hWpyXvXZsxpbdm/rrj/jZvh1Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pzQ/MSKSvJxyr0C8HynMd3HW/gWqp1ZgeUJ2acycVw0qAkY4T3k3E7XkR3HOZe+K6xtpgusN7xnUw+sI/IHRVnm+e3yn3fFSmaY5ihNgAZGzIoWtPlLxLXXXMhFfQ872mv7+5A5xhXEpCk1hI//MKW8qwP9ZrBWvf4Seaq67Wqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AvNc3dEu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NIn2aE010397
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=k+EDEHFqKkj
	GqN2StGIjjiSlDJT77CrFI7R+bA+Neo0=; b=AvNc3dEu9OgdoCaoXkLzUHZ9gAj
	+LCOuG+Ek+3UbSK0O5HVWs3P7rPlKIuK06AzWOuJVuurAgScQlqx+6uwgqnbYwWk
	gMR4Xg0YvkJNPtddMgm3TeNbvjoXiH+14q2Uf6qbEqctSkKZmosPcQtH5SLj0drs
	O0LriF3PPIkkbALAq/zfaliTCFIhsVaP5e0rnXM1epymcQ0kSJY+c14kkr07XjdN
	DKHO1WLB9rjEng80kwup4oarH7sKQLacQRpFDuT6fNFiziY6DgeUIVyzU6dPqmiZ
	z0ykrvfoxoYX0De1qBYD9AqxSWXh+fFM+p5YoNHi1/57VuaGvimCWj0cppg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcmmmhy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:30 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b321087b1cdso2539290a12.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 23:05:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750745129; x=1751349929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k+EDEHFqKkjGqN2StGIjjiSlDJT77CrFI7R+bA+Neo0=;
        b=CInmaxzDdkeBCFqrgNdcq7iibTjdWvjT+pImd79zJn5CYNfEVdk1zmwsvRZ7DUtd+u
         amlSqybmX7kfSVd+tPq2ZSQfEZfT7JKTte5WIlXyC89POtvhtNoqXaBJUVkUdtE+JGG9
         s5v4qG/QZwA50h2ToI1uewZ3Gxec9VDYgoBACd0iaK//1yChlHLzLV+K+ynMQ2T9T1Q8
         uTYVAdAaTm1ccOPmehTRFQ/uLrMAlCiMja/L+iZ2JVGG6PqBZCxucBpT5wEBu8ezxqnY
         FMzJxsMWgH51vRqfgs+WFsXc9804evGg6VjxGn/O76ydauic7lf6coCT1/sGeb4nUDPs
         fY+A==
X-Forwarded-Encrypted: i=1; AJvYcCUjiZzviZrpBGrPFDdOBIszTyav5zwi/u8VcSGeQZTv6Hq1d6+Tl+HTSXRFQ+XjgN4MwkXhuWqN1Xui@vger.kernel.org
X-Gm-Message-State: AOJu0YzZgYviHYfGRo0SrWTKGUzFxYecMNusz5bfquyueK1hoIE/x6bW
	mykCkHOyMPJLHK+zwid108UeyJixqi7M4fFQZd67/Yd5SwCAl3eJAd8b7RTXk/1O5pa2AxNCvvJ
	kfQZVnOOQREs6wPivlNvIDQkNGj+NO76KRUr1qxTBVHOxNRD+EAhKfxruMkDrTIhQ
X-Gm-Gg: ASbGncuCzKGonCIOhjmRbagPL7SYa3GUBhBg0/iWHh3wvzfylrjmvjTSRa4od2DC6MX
	W9eHOhuQd1c3rxBxLJuIhBpGI/b0n7uq0ndbdGWrUwnd509q6e1VOGve/auPgurYcPESsU1GJtN
	linvJ3ljyFe75fsiUBArlzzp8v4yD9HFyxshDUJzKL4DPY6huK3mHeLtXprCXZ53Lp7vbPa6UsH
	YRH2IqUI92y57s5GVu4pcB1+2UzId1h1zHpZK/mKh7vmSeL6/ezSZ4LIdoZXmzbCIS6jlrbw6zC
	YprawbodRtC543qBTQ3N4/QYCGPXTaUJLXlIVdaU88Pc0+kX7E6Am75867rioHJWC71k2TZEljW
	eCA==
X-Received: by 2002:a17:903:18e:b0:237:7802:da30 with SMTP id d9443c01a7336-237d9a74d4amr249676995ad.31.1750745129472;
        Mon, 23 Jun 2025 23:05:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+8VGvDMCZ73CeV5AtTxJ9YBH3JlGYKE++/duwsSfivQtp9438F3OMf8ih+tv26WkZtIRFKw==
X-Received: by 2002:a17:903:18e:b0:237:7802:da30 with SMTP id d9443c01a7336-237d9a74d4amr249676745ad.31.1750745129144;
        Mon, 23 Jun 2025 23:05:29 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83937b1sm101371455ad.52.2025.06.23.23.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 23:05:28 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jie.gan@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v3 10/10] arm64: dts: qcom: sa8775p: Add interrupts to CTCU device
Date: Tue, 24 Jun 2025 14:04:38 +0800
Message-Id: <20250624060438.7469-11-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250624060438.7469-1-jie.gan@oss.qualcomm.com>
References: <20250624060438.7469-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: QOSLoqmz1V5m_v1KByyVopfRRj9QF9rs
X-Proofpoint-ORIG-GUID: QOSLoqmz1V5m_v1KByyVopfRRj9QF9rs
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=685a402a cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA1MSBTYWx0ZWRfX8xDw2EfnmTUJ
 rWK7UVDIeQQogDfavefYKEO9WqWK8HR8jqwh4MtnueG572KjdSqYHy8XQpwCbQ8n7RLg8N2ZzF6
 uhEpR0HQ6H+04S3OHVCXraOSH8MUDDM4PoW7VCPPtS/qcOmHSm82l02gs8MomJb4+QdoBxH42/6
 v3RhMmXbF6qqom2GaAQ3oC/3YWL6HQsn7m9ZiH1N7APiR6xgCvSxCuuzKycgvwQJhpG5Cdhe6sX
 gVb4Q4SJ6uG1ScjhFicUe0LnnS5QawK17ETFachs+GC8+kiUee3ZJOsbot1trppJDOhhmBFDWUv
 rWVKeiCImM1EHl4s8QBWKWdUcQGgVMy464/15YeuiariD2WgtdABBkIMRRHeUm7Knl3LyBNhTyW
 l1D3rn5ipKhMokfWop7DrKGyc+LZFEDpaaZrHnh5VBmYahz9ieG6lbsvaHTb1tyB/kzGvS0J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=794 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240051

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index fed34717460f..44da72cebcf4 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2762,6 +2762,11 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "etr0",
+					  "etr1";
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.34.1


