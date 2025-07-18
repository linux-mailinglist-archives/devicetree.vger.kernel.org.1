Return-Path: <devicetree+bounces-197731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 032D7B0A754
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B946A85983
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:29:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D26C2E4277;
	Fri, 18 Jul 2025 15:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ELDrK/Ul"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113062E4270
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752852354; cv=none; b=BSGVOp73DxZ2WXtXp7mPCtaEl9FhQKIeyI1m6YssJiGPY+7nLJxhDgvSWqR3igLnOh52BIsUTll5BnZ/LUfOrAdJ0wrWPY0blD8fde+87QpIRtBs5gU42NCjDEGZJaQww3G07R/SXjBjYCctr62AuyqCP5opBT3x9TsGZj3RJzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752852354; c=relaxed/simple;
	bh=7Jh0ApwfVeGj8KwNOzX4awWIjsQMmQqcBIrdHZKDbRI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XmfUICYq7s7U4WViuSlAyQzPvOkC2FywDhcgXrC3/SNk4jW7auVcdbMea8OwOlCV3Tx9x/hsinRuEj6mcSwTqk0tGQUWNUCvElYLfZEcWWlss0f1Uwf/9iZOx0z2d8nyBVefvSYlNVfXvdwnizoYslXWldDiS2F/t2Da6l1TEzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ELDrK/Ul; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I93Q1c028059
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=drqirIeVXXEfxAW1fu4y1d
	zsapDY7HV4N/7yaGv5Sls=; b=ELDrK/UlV5KqmHOaEMB3WvW6dsh1Fch7VEfHNo
	AIkkDSvuZgDS+O8Hhn+12RsSlAkNwEupN3d1yaiway8zOJVFkYV/+O3z7oRMu3J3
	ojxE9T6J88TGY3ZCJ7LdNHKw8+3anUuXIKi0K/l9BjmxY6Mni/5yhkNGKylkUXuv
	0BpsgEh/M1/oduE1HzJ56AX0O8FNFopPbE3r4Wl4sUs+Ipf8TjH+qeXgNo77E9lo
	xuWypD/EkbGIRd5PcpVRY5clilfx5gAjbpCl9KD1sG3rXP4VZvSD5sV8+O3gCnuh
	3xiCLMSoLn0NldiSmJxa1tvzo8CNpAO+3Y9l2EbIq5Iw6HFg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh64a9d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e350826d99so290703385a.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:25:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752852351; x=1753457151;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=drqirIeVXXEfxAW1fu4y1dzsapDY7HV4N/7yaGv5Sls=;
        b=a9P5pgfTo2m/5peI94jbn8JkfTbcIln0GbKljYP12wrhK2BDHTs/F3dBHyfpvb5DxR
         sasho6rwY+qrjuGcfmw/p4jiTFReMCMkKCU2XX4jSr1uueG72nBAcxgjoK7ITgFuDv6k
         /Pt6C7A4d3xNPkJM26kTRjWboGutzRpt7BKHUljh5i51cqTx348s9HiqCqZP8CRlGYlO
         GGWbWoqmJkZpF8uwvR1ZCvCU0feAdNsez/CMNq+0tvZwmovj+LYv9kP3JWH5sI+DE/e7
         me61QzdTbvHwbuG/Tp9IOZ1dJc2Y+Mm+Z11YjMpJM5CJeQEi+7dLKNyT+QRBVoQPc0+p
         lTtQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKwfL+CmjmunvzMtqNJLqx7qlS8vzgYpmXGtK76D8y4ov83MXVB0mLi4rcNIxr5HC+R/otZNgHaMMi@vger.kernel.org
X-Gm-Message-State: AOJu0YwB/g94d5+pJzIsVNcnLbgKouIT6ddE6L/zqzT2tSzBT+j2zqsr
	FE0FKt3ioPxIUwDwnz8Hzk6+r8/gYv390TMF7spm+jXoVQhAEKaawnSpo/vycO1iQSrMDqkKzG6
	tWS0aFHSmkQYb9gKlcGEjofnjOnYTQPzYeQIXQ0Cjd3WCQ2uN/pH+p96SINH2gZuN
X-Gm-Gg: ASbGncvYitPEzsDQNoWtTN6JX0CBmBKwmXHzBXsERtAdy45hq5s2tAMsBFJ5XZpO25q
	Z8yWokPMh9IjRMxueAfaxKiktlJahFph9t1tCbfc6R2Rpt2VsMfLTvVJ6pGAoltlomINra2nPfn
	OmXJKlS+EpmtXjtUpbtMcdI8pEadwvHNjI1xPGL6NMxmUi+GFmjexgyxs9Pqhv35V4jQKfbWtYS
	RemrEIkaqEetvk1Ntc+evQzey6dHq1VDQb5H1tL8lS7/Op8dltfC7IMEz5E/PXus1T/pAq0ROq4
	pSMf9aPFCi7SborFV7QcFGKCYmXWiRBzVnfo6LGaRbRZY/UIGrxrUjzCHLPzyIffR1etrOP19GR
	k05cOtkj2WVAV3ltt0ANxwU2BfKcG+19t4vUf0JdNHEnANXU5BFkn
X-Received: by 2002:a05:620a:27d1:b0:7e1:68e3:712d with SMTP id af79cd13be357-7e3435f77d2mr1326330285a.31.1752852345778;
        Fri, 18 Jul 2025 08:25:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcnPvBctrIOobI5Y6udYDD0b/geBcKaa7wSMklKLg8ppUEyhKsXeNxAsmArw0cImYApnAJxA==
X-Received: by 2002:a05:620a:27d1:b0:7e1:68e3:712d with SMTP id af79cd13be357-7e3435f77d2mr1326292485a.31.1752852340559;
        Fri, 18 Jul 2025 08:25:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91d994csm2466821fa.84.2025.07.18.08.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 08:25:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 0/4] arm64: dts: qcom: sort out RPMhPD domain indices
Date: Fri, 18 Jul 2025 18:25:37 +0300
Message-Id: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHFnemgC/12MwQ6CMBBEf4Xs2SVltUA8+R+GQymLbCK0tEo0h
 H+3knjxMsmbzLwVIgfhCOdshcCLRHFTAjpkYAcz3RilSwykSKuqKLGXFwY/Dr5D0wqSsbqtWNe
 l7iGdfOC02IXXJvEg8eHCe/cvxbf9qap/1VKgwpOtiUnzkWp1cTHm89PcrRvHPAU027Z9AOrlt
 V2zAAAA
X-Change-ID: 20250716-fix-rpmhpd-abi-2ac5b7e5865f
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1272;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7Jh0ApwfVeGj8KwNOzX4awWIjsQMmQqcBIrdHZKDbRI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoemdyXisrXLgSiWLqKDSy19GhFXIva6Bm/jmVf
 mwBqMiWncaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpncgAKCRCLPIo+Aiko
 1Z1LCACGrgR9N6FbDNEby8b4CBiYzcdPOouKFSsS/EGXZtqsZVOrWBbyWryRC76OdFlRm3vuBxt
 hg9hO6yLQbOIP+2Y0CX0z/fzB5E1xkvGHJWJv5CySBljPs8+nAZuIUBNuDhbLYDxCcrrM2kek21
 csaOMxuk5YEsODJ7xJOteotj3WxcBEDbMllauC1f2ltTz0s8rtTWKm399LCV6GTKcWHFz8NlM02
 +oGbTTPEqHUC12MIBPGSgcB+KJKzULIYhEwAriwXfOtuoE+GnBIVCA7rOouCD1C6SILGYqvKhKV
 rhhyr1rIwlfwRNtE185CNUkpNLBoa0+/mEYKGg2wJYUHY8PD
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=687a6780 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bJKr_GLULl7BGc3kRxwA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: kB3HDsUAizTYLM22p2-MP2pMv1WhrEAD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDExOSBTYWx0ZWRfX+btiK04SFSbR
 /zRRqBBdlrSGIWaM/vvsqAHlKX59WAAerBy6pm7ApKojwcsgaqeTAHTHjuNMPC0AfwvhNrMQFpC
 Ce44zsTycKMhVh3VYmcUV7oS9pppHWqJlHbOqSiZ2tCUyd0LNyU8YhfnujlrCspazKuPHd4PCvh
 h/6N9RuDYFTUXPkjvL1xqr3exMJ7/z7DhVUps6eoGaBxIB94VYwHmEWEPj2nA5/G+pAdX+enGZr
 xDOYHN//diAWnMf29fsK296MzFo77YQTpp/UtFV6QjrqY7hAgtSQQVp2ZbwgZKE4D1ZOdEfoAR3
 B8NLaj9Bnh0Yeyp/7DD1kVY1f2teAZBBTY63w0UjpHqvPEMevsPTZv9Hxe3NpZi5Gj7ysU7uMf8
 ikNaFWq220ETE48nFoNaLYnEcKJGf7oQ+2MpvDMko1ZLKhq0N3p0fvvjTjqzQSnI7gTHT5lE
X-Proofpoint-ORIG-GUID: kB3HDsUAizTYLM22p2-MP2pMv1WhrEAD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=569 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180119

Several Qualcomm board DTs either use incorrect power domain indices or
use old defines for RPMhPD even though the platform should be using
RPMHPD_foo defines. Correct all those issues.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
- Fixed SM8160 -> SM8150 typo (Konrad)
- Made corresponding commit message more obvious by specifying indices
  (Konrad)
- Link to v1: https://lore.kernel.org/r/20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com

---
Dmitry Baryshkov (4):
      arm64: dts: qcom: sa8775p: fix RPMh power domain indices
      arm64: dts: qcom: sm8150: use correct PD for DisplayPort controller
      arm64: dts: qcom: sm8250: stop using SoC-specific genpd indices
      arm64: dts: qcom: sm8550: stop using SoC-specific genpd indices

 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 25 ++++++++++-----------
 arch/arm64/boot/dts/qcom/sm8150.dtsi  |  2 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi  | 42 +++++++++++++++++------------------
 arch/arm64/boot/dts/qcom/sm8550.dtsi  |  2 +-
 4 files changed, 35 insertions(+), 36 deletions(-)
---
base-commit: 78a8f8d4ec2bf09266a03a0a8cb0af82da0766d5
change-id: 20250716-fix-rpmhpd-abi-2ac5b7e5865f

Best regards,
-- 
With best wishes
Dmitry


