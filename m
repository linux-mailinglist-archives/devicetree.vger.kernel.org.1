Return-Path: <devicetree+bounces-225980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A1FBD2A66
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26BC73A652A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D5730594E;
	Mon, 13 Oct 2025 10:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lnq47aeg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91AD130276F
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760352841; cv=none; b=Vya1nKvEhkOCuys/JfVPkKgwdZfvvSbonKL727CbILJ09silyeveQznmYz9dBG6s+nTmip5YFkEmR37D1cDYUdCVFjiWlbXHuKQQHurXSwFsPu4I/IDYGDA2iKEWIUMlxPUEtVn9rgd/G0iL4h5KPtmLwH5H0Tzx6NmxroMFnHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760352841; c=relaxed/simple;
	bh=DMfL92AdXlzenYd0/1DcFtxFL7fShJdaftub5B4NfLA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aGKJdA5+TxkDpg/o85duM+0a/E5vklIXKr7MKayI+El7m2lxqdfuijZRZoICOBLzPzK0HIj/JMl0YV2R7BzUw9hwifP4Z6Xv1vPAS2fMgJsMjxmL8wUqNB1qXoe50iI/xUVk+UNNXzYNlxDUaQO4s+RMUjNd7Qs9LcrMda/hwWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lnq47aeg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAQWF9028844
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:53:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u08lX6E4lF1MxSnTgYczMeE3BdQjrxXWCXSB/fw3rAw=; b=Lnq47aegwaYYDEHt
	eySFkWY8N+U6pkF3ky0z3Kv4UaVoCuLIIIfnGKgFctHJk6CW45eRtAnGjrm3bLyS
	n3jW1AVE/W+gvnYAczZsExW+cWrlE9qjFHep/WO1seHJ1FzPK6XRqsyv4TocMF1f
	EtSGcuPimDgSHm4jgJbwUaRFupz+M8tg2zMggxac1uUOo0Eknt19GMh1ZFfc23Y+
	6rH/NOsb3/PqRpNmNyGqS0pSNtpqad/JUlpHRsM1jyMY/UkueSsbAEtgKy3HJ1z2
	OG7U5jAFokEAOxGVR1yzhgJ3qMnqfNTQbYlwlztF4purLMBikbCWAZAnbgQjAbWz
	BfxsZQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0m93u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:53:57 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-27eeb9730d9so86429585ad.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:53:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760352836; x=1760957636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u08lX6E4lF1MxSnTgYczMeE3BdQjrxXWCXSB/fw3rAw=;
        b=njNoC3jjwqP+MBCAyJZYEKEwkHk91mT0Kku663chNj7RW9K39jbUtvbNS7gGAo58fU
         TFhmLqP3aK8w0bNgWt8RT/sSpHwLT3N3o0LP1TL/m1iFtxd2Gwa1GWKTOMRW5Xh2tfAP
         ZC1jnd8GNLBNzH5NFhzdlCdAQ3i0OG2lf75exeppg5j9yguKQaWsxcuuE4lYRg33wPnS
         xRr8bdWJzinHcxKAYMZkg9ZhgbJ1UCY73pVMX1ueFOCIGKdOsgDLiRKdjK0sJhPuuRqU
         NLorh8nzWkMaEhLAuWeH0mYwg+aX2hPjnMhPSfM6fcXw0cyrkCDkwZX+9Ikvb99M1Z6k
         sNZA==
X-Forwarded-Encrypted: i=1; AJvYcCUsWzsyazzJ9jRC1GIbi50mQpN/oh6b8YfnkbKiZB5gN9iND8uuhZSScX3/w2JtPfwbz/Ml6T7gR4ME@vger.kernel.org
X-Gm-Message-State: AOJu0YznyBnTQOtEV2VmfXX1/yDoKJnxwzZCdiHL4N7NMp5TsXM23Y2L
	CaNzG/gUy45TpfKOGOf4x1W/wvd6DLs4P6+ii9NhRpfQnxy1HuaiLsnLUC8L9ayc0BzE8W/nrq6
	gJkIUbKeTJdigGiZlXMO0FCiY14QuHQNOl121zoKYLIfeKnDKObgPkit1M4TuZpHt
X-Gm-Gg: ASbGncs+h2Dn/qPmd8Uq4xOd+dcKvMr4YdDW0tbGUeMpcSmH3WHLpYd45EN9BMH+FnK
	gv/MDaJkVeLSsZfbTvfvHIyiCJdrARBIpdnHDlgGStMpkKcKsSGTc3sNG+SP6BZxBXYiH6UV/xY
	Dl7wXSJJFZWNLU/KdpmcoYg/ZgZ616URkK6Rb4QTJgsKrtR/e2yNqDtj4CK35uiuuEQ7ngKoEfW
	PSmTLCTSIuG/26qQnRltqetxVvMqBk1QRoD2W+wBD7A+it7saoFzqasTXT/2oqbIokdcDvRWcku
	XzHLpFX4kz+6neg3qnPrHN6aIPPkdK3MHbaZ7r8Iqf7EwitHTHFweC/3mOdCepCErkLlPAphdjk
	=
X-Received: by 2002:a17:903:2302:b0:263:ac60:fc41 with SMTP id d9443c01a7336-290274030a0mr268570515ad.48.1760352836318;
        Mon, 13 Oct 2025 03:53:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4gao4pvLHEPOQz//QIqS/9Zz9d9DOggsWC7wOSF/QEy30BK1Aeknp4p0FhJCVT0WVN54eJQ==
X-Received: by 2002:a17:903:2302:b0:263:ac60:fc41 with SMTP id d9443c01a7336-290274030a0mr268570175ad.48.1760352835823;
        Mon, 13 Oct 2025 03:53:55 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b626403desm11662295a91.7.2025.10.13.03.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 03:53:55 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 16:23:28 +0530
Subject: [PATCH v5 1/5] arm64: dts: qcom: sm8450: Add opp-level to indicate
 PCIe data rates
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-opp_pcie-v5-1-eb64db2b4bd3@oss.qualcomm.com>
References: <20251013-opp_pcie-v5-0-eb64db2b4bd3@oss.qualcomm.com>
In-Reply-To: <20251013-opp_pcie-v5-0-eb64db2b4bd3@oss.qualcomm.com>
To: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760352825; l=4058;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=DMfL92AdXlzenYd0/1DcFtxFL7fShJdaftub5B4NfLA=;
 b=31xcT0QdpgR7G2WSAuRQQywywT1N0r3T7iCT13jrZ565TkRMr/wHsbX0Yy5s26RjTQdCMMMbE
 deYLgUXgn3bBSAAHsg/USnh5L4PFJPRiixnZCAR2KC8LOeDhv732Fpw
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX/ZyYBU+nYkUS
 wA41YCFTbBYpWIZ3yiwwdRrss/vTbNHOgfqX3xritFRasdAuA+3aF31WHY8O5CDGQI6u3R4ImGX
 EK2PCWIcN/31xfQVSdfwZuaP/oMPL02AHhHQO9pHAylu6slFV7cxBYob/vjK5rMES6Gy44acXHA
 VjItjXzsVebcPCMar+3NZV7cwKxp0le2JlBBzFLdDGWOxAA1lvR3goQHQ3kJsUwsLmn/BhpMQrR
 yRlqMIV9rpSyS8GiWnZ373QRstObhS18kyX3XndUIcxP7KRSUMkPSfudDWdGknDpYpOld6cPaOI
 h63w2DJ0g1bbaG2WurrsJIqr9+1sXMUGc7Dd+eC1miIv5Efrrfzn4dEHxBzwzknosqPJfdCr6iZ
 96+si5Vxwws0GKo/Z2BrOxbTPwL2hw==
X-Proofpoint-GUID: cW7kaiVFjg1LnF73MTmuIAHNGKtoczhU
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ecda45 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=qQkGquXN9PvF_GGjQ98A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: cW7kaiVFjg1LnF73MTmuIAHNGKtoczhU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

The existing OPP table for PCIe is shared across different link
configurations such as data rates 8GT/s x2 and 16GT/s x1. These
configurations often operate at the same frequency, allowing them
to reuse the same OPP entries. However, 8GT/s and 16 GT/s may have
different RPMh votes which cannot be represented accurately when
sharing a single OPP.

To address this, introduce an `opp-level` to indicate the PCIe data
rate and uniquely differentiate OPP entries even when the frequency
is the same.

Although this platform does not currently suffer from this issue, the
change is introduced to support unification across platforms.

Append the opp level to name of the opp node to indicate both frequency
and level.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 55 ++++++++++++++++++++++++++----------
 1 file changed, 40 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 23420e6924728cb80fc9e44fb4d7e01fbffae21f..2ae56c39f2e6d8a11a2ef0f77bffcf05a6fd637e 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2047,25 +2047,28 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			pcie0_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
-				/* GEN 1 x1 */
+				/* 2.5 GT/s x1 */
 				opp-2500000 {
 					opp-hz = /bits/ 64 <2500000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <250000 1>;
+					opp-level = <1>;
 				};
 
-				/* GEN 2 x1 */
+				/* 5 GT/s x1 */
 				opp-5000000 {
 					opp-hz = /bits/ 64 <5000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <500000 1>;
+					opp-level = <2>;
 				};
 
-				/* GEN 3 x1 */
+				/* 8 GT/s x1 */
 				opp-8000000 {
 					opp-hz = /bits/ 64 <8000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <984500 1>;
+					opp-level = <3>;
 				};
 			};
 
@@ -2209,46 +2212,68 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			pcie1_opp_table: opp-table {
 				compatible = "operating-points-v2";
 
-				/* GEN 1 x1 */
-				opp-2500000 {
+				/* 2.5 GT/s x1 */
+				opp-2500000-1 {
 					opp-hz = /bits/ 64 <2500000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <250000 1>;
+					opp-level = <1>;
 				};
 
-				/* GEN 1 x2 and GEN 2 x1 */
-				opp-5000000 {
+				/* 2.5 GT/s x2 */
+				opp-5000000-1 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <1>;
+				};
+
+				/* 5 GT/s x1 */
+				opp-5000000-2 {
 					opp-hz = /bits/ 64 <5000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <500000 1>;
+					opp-level = <2>;
 				};
 
-				/* GEN 2 x2 */
-				opp-10000000 {
+				/* 5 GT/s x2 */
+				opp-10000000-2 {
 					opp-hz = /bits/ 64 <10000000>;
 					required-opps = <&rpmhpd_opp_low_svs>;
 					opp-peak-kBps = <1000000 1>;
+					opp-level = <2>;
 				};
 
-				/* GEN 3 x1 */
-				opp-8000000 {
+				/* 8 GT/s x1 */
+				opp-8000000-3 {
 					opp-hz = /bits/ 64 <8000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <984500 1>;
+					opp-level = <3>;
+				};
+
+				/* 8 GT/s x2 */
+				opp-16000000-3 {
+					opp-hz = /bits/ 64 <16000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <1969000 1>;
+					opp-level = <3>;
 				};
 
-				/* GEN 3 x2 and GEN 4 x1 */
-				opp-16000000 {
+				/* 16 GT/s x1 */
+				opp-16000000-4 {
 					opp-hz = /bits/ 64 <16000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <1969000 1>;
+					opp-level = <4>;
 				};
 
-				/* GEN 4 x2 */
-				opp-32000000 {
+				/* 16 GT/s x2 */
+				opp-32000000-4 {
 					opp-hz = /bits/ 64 <32000000>;
 					required-opps = <&rpmhpd_opp_nom>;
 					opp-peak-kBps = <3938000 1>;
+					opp-level = <4>;
 				};
 			};
 

-- 
2.34.1


