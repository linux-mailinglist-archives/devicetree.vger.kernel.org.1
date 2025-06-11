Return-Path: <devicetree+bounces-184552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D00AD4915
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 05:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3CAC3A4B91
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 03:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 048E022576E;
	Wed, 11 Jun 2025 03:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F35BS/br"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944ED17BB21
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 03:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749610822; cv=none; b=hjW+5BQ1+FO1m3A8NswqGzGy7YbdPsmxJt4g4khSRQ4pa2HFEyiTynSuqD8oa3lNoc/Dm2QAUIIlzoQWjFuo0y/5a5UztD1j6X4FHJfcuDK5bBN9tPETgoNE9haszRjCOkiWWZD8IGrnaSag/zrvPwaZc4KB6YBeteWi0LpnnOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749610822; c=relaxed/simple;
	bh=YwimPYQo5w5oj3euFTtVkBsrZNt3dvgUqWiiSoaOPQE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KDN8zEUxOJZMcvifrnH0NQfpD+1GVE9ZvOf9xcVh7hvxI/o4i1u1wGt9N9/AIl4tEnu6rJJO08p06CRVbdUoVgxnhDrEFmrPm6K5uBfpdlMxYJBzoGaj8gQmuwuQjxsWy1yGT5qxl5C89YvFH68opwHOKS4O4sbD+97jX3gkCNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F35BS/br; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AIPneu000372
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 03:00:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=jk7S7lY42gg5pO/gSWtDrK8morqTLehUEY7
	fLQbfzbI=; b=F35BS/brsrmClxp4+G2rBV3XqdWLPv9bmzybXsfnjPCjzKsQdCW
	vRtFYLwgfgr/Crp69Tb2CBe7reir/Dej5V8PAZJv35QPs/HpYAGpp+rDe419aeYB
	COrZYxzNgCVcRgqQ8aIKWgJswlWUj5WL36KsitdhC2C40I1D0usaeg99zug1lX5e
	fstLBfHV3b9irojfEmvA+1ne3q/VjSu0gs3qJZs0DEHX2dVrjgyChbAhRb4ml7by
	1CUl4Rgm80Jj+XpWulkSKpZZO6mdEg/o0F+InzMzshusKCKoJwNMTawUYWBSPtbp
	ictmBzc/ciq5lh+NfRaibjAU8mg8rWcTr9g==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ccvbeau-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 03:00:20 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-745e89b0c32so9913334b3a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 20:00:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749610819; x=1750215619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jk7S7lY42gg5pO/gSWtDrK8morqTLehUEY7fLQbfzbI=;
        b=oMCpOZk2b9nGuu5h2TfIVrZlLNaTiSIoeFfbGskjR1WapcXlh+S9Q/ao+YNR5dlhbw
         61aRg2G5btL9wgBfZ9AzYuQudGazEMmYRzYsfjj1Wep7OPuy9c9lpG5cv72vwFcmHuQe
         9xJJE4Q3OUOvd55G34+SBwHHp56EQiEZFJCShHdouaRNmtk+AscgokuDt6cIufbyLjng
         ELjUf/K52ajf9JMvC9pjTD7bkNYzCUJzw7HUImlDGLDnm20fMeyxaLzcuBUUuQGPYdVd
         jOr1wtDGdd4StrDlqY5C6J3PQnHQqobOv1Q1cRb+CG6basHBaaaLRZw0maeQK6xxMLKL
         0VYg==
X-Forwarded-Encrypted: i=1; AJvYcCUZcy5W3He2cC46kk416tH+0Snpf0fptKRLGU2yQxNcfHDVGynIFN6GoCAwq3swCVbg5v4FRhSb2Owe@vger.kernel.org
X-Gm-Message-State: AOJu0YygKQjohD1xhFehgyW8DM9Yy33OByYZMgjSKmXN1wOm+m/36p+a
	6M+wfNZ6l/JcNyZM7CY/Ag5WtO31mh1itcIqw4arNN2N15VVXC7GJZVUZTUNQrd1ZazkY51QGd6
	tJk0TuITW94/GIUHO+fMKAq2M4n1o0POoZeoZ/JCOV0shV36sxgsNAeK2Bw2i5nFIhgT75XmKXc
	Y=
X-Gm-Gg: ASbGncu7w9ZGh5fakk925BKP7pVxG9mxSyX1Ls3t7xKfhjH/eMoh9iIAJI+klxyGswi
	JXxCH8fjN7mS5iLWBvKyhjVADXuz4Wgra14JhMxar60uStyR5Z/SEYuOL3fOuAh3ZPOrngVWZYc
	5gHpKSvKj532ESc7PEAUP7crbjTH9umgBkJSuh4cxDGlTv0S6IhpZdfOkEDWsy2wgtQi3rzQbdG
	LT39kfyVXnpUtfBlhmIMgVSq9lBVj57RjmfkJ/Zp86FtDzS5IiBYpilCGCsCDizrpL5JIKjiSfj
	U2hsxZ11WbrJEuSq35SRAIoMIy6HrGo7odXQsQYA7IGC1uRQSwTx2Ps7vSXRzTFX5SITy9A5K0R
	HpDk=
X-Received: by 2002:a05:6a21:9208:b0:1f5:709d:e0c6 with SMTP id adf61e73a8af0-21f89129c7bmr1517606637.42.1749610819358;
        Tue, 10 Jun 2025 20:00:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEm97iwcYG4U9+2Ei9ZjiYgSzh6GmTA1c+FFmow1NqLf2qf8IaBoa6JWs0uyzi5uM0TYpYH/g==
X-Received: by 2002:a17:902:ce0f:b0:234:f182:a754 with SMTP id d9443c01a7336-236426d657amr14845775ad.47.1749610807973;
        Tue, 10 Jun 2025 20:00:07 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603511b2bsm77273225ad.243.2025.06.10.20.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 20:00:07 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jie Gan <quic_jiegan@quicinc.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: qcs615: disable the CTI device of the camera block
Date: Wed, 11 Jun 2025 11:00:03 +0800
Message-Id: <20250611030003.3801-1-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: BIro5xplT9dKafqnH78TNH8tWk7aNGQ1
X-Authority-Analysis: v=2.4 cv=TsLmhCXh c=1 sm=1 tr=0 ts=6848f144 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=95F7GRXi1wRhAKWngM4A:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: BIro5xplT9dKafqnH78TNH8tWk7aNGQ1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDAyNSBTYWx0ZWRfX4nRcsnw6r/86
 iMmfgr+zF8GqvUZ6hyReEqhQB1/toDcPpjTvJvxPp1f0FB2YHfxeKGDlVQ+9stE4hFntsuEPvdJ
 nlm+SOl/yDuHLNYd6YC3gwyh5YFjVtk6TU/gCV670kJdtfbNWjxaYtakHurcA8ubt92bZ7RxcBh
 gPY8J0uOswS8J28syAwcrUcWD507ADm/bnaFfFaUoQa4nZXkbv4i3po9sLmF8D9NxBzOpbcu4IV
 nWEwoTQ/UvhL3ooUKjFdLjI8HtOa8xBw4KTZ6wlliONILA5m9T9a+KYSfg3w6CPtCIX7LRvgivZ
 cZw8rV8N9Jjvj8MT1tMAbgzKonI2oYEbTLMKSlk2j7yGiy9YzSywnSOYthy7rWjbgMtZibGUO0F
 hz+Zavk7y1Qgm3I4JJzvhH4Clv7fwZUyxVbqgtVSVlxEkJgoaAtvI8PhVT1lNYMYsbbJX8TH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_01,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=625 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110025

Disable the CTI device of the camera block to prevent potential NoC errors
during AMBA bus device matching.

The clocks for the Qualcomm Debug Subsystem (QDSS) are managed by aoss_qmp
through a mailbox. However, the camera block resides outside the AP domain,
meaning its QDSS clock cannot be controlled via aoss_qmp.

Fixes: bf469630552a ("arm64: dts: qcom: qcs615: Add coresight nodes")
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
index bb8b6c3ebd03..fc2ab750f2cd 100644
--- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
@@ -2461,6 +2461,9 @@ cti@6c13000 {
 
 			clocks = <&aoss_qmp>;
 			clock-names = "apb_pclk";
+
+			/* Not all required clocks can be enabled from the OS */
+			status = "fail";
 		};
 
 		cti@6c20000 {
-- 
2.34.1


