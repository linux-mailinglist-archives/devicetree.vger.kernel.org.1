Return-Path: <devicetree+bounces-177192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02287AB6A29
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 13:38:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4463E4C0F9A
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2DC278772;
	Wed, 14 May 2025 11:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QcOsASb0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82ED2749EA
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 11:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747222650; cv=none; b=SdjsPrqi1Q95n/9KNSdMN7IFDQ5wYSmlk2NVjpV9pQ9wwyXcuaJZPnBaw6a4fF4wHFbNkgxbM7FnyL9I/v26ZeP6ZytIANRFjkax+/flXL3ps8NhkluXB0h8gp6gaf/CzQQKoxQsapULNIk1wMWEDCLzK28s+vC5iS3uof7Xh/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747222650; c=relaxed/simple;
	bh=Pd6UckjZVaM/JS3ilAyea5a2vj0MVO3e/e9pYvH6Rpw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TxvRw01200hkEAYyOIRJ0G6o+SC1DfttE3gNBAta2zpTDLMh+J1ll4qgJ4ZB+VcZo01hZcOgPd6gdXXFZf/+sUnzQ3Q2USGIuvw3siZI18BUgAPUKdz3ZXDVP+RWdFIK+wnBdCJ9mbpRnsOYuCHsNmtgzviW6VIR5Z8lzcQM+Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QcOsASb0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EAuwI8015271
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 11:37:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Av7CXuJFhg2tfAQcC5KHKa
	93MT0YXTr8f30ak6FnWcc=; b=QcOsASb0DarQ1LkTe/IXxEGBCsaTJz0SGk/ShG
	8cN+AOLIMsBbEsUQSPDZeou7Fud95u1D1cympNKjdr7kP/e5dlJdBfm1wxvtpiBN
	SJKkfoTLSib2MmUS/qC62+dRVcLMpfGycHGq5Yl0gwpmzHoaDH5apTeSsgrKn/uq
	t9Pm5Z5P+7iCPfyZtT4WU2DIvaiX/P8Ao3kT19uiEjSpc1CqsUxfymMNYSLnt27R
	e/SQwy7mZHVJHvfuPi1troJ2xh5wRMTzKQ0V+8eQ8PGJ7RBbBwTtiSqOSzNSfVB8
	3q5UbTLlcrpV5zqOxrREZhPhS3EQBIWJeJO7unH1pupBOjFA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcr2f7k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 11:37:27 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7370e73f690so7437389b3a.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 04:37:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747222646; x=1747827446;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Av7CXuJFhg2tfAQcC5KHKa93MT0YXTr8f30ak6FnWcc=;
        b=omj/up8/6VMdEbBAQPY3deB3h2BwmJVNJ7tl30px291da5ieUUjm2zqe8k/lTi813K
         Zm/83vZdC3VeWevUX53I2VqTmMLTKZ1MiyzhlEHINTkbXXXcUSfeO1G3KBgPh7gdUx64
         xmK/VbIqvG2VvR6Jb1g5xshBlt5V5PUWB6sktZbrEuaX7bzn+8XurTjyZseisZvaiG8n
         MsnoJY4q/d3QjuOS+dbrmdiahBYX77BKNjxu1jbOIy8pKW+iLopQWtIhklF1EzwlhIHp
         qL1MBusqo65dLPGjpGh/462wbcBzxBCbxb1krkg4Vz3OUYuwcJUHfyERVXjgKGZaB6/s
         gdkg==
X-Forwarded-Encrypted: i=1; AJvYcCVwswaiKe/wC9dEHQtIcIAMZYktOCyyj6KsLtuXHD4mVxpVYjXY9DcCPFLJ3NC91RmoYrDZhRj5SJQO@vger.kernel.org
X-Gm-Message-State: AOJu0YxSc5DGkK/jGikfdt6MPaL37mNV3wC+KWBrrglsLmpdJr0nJjge
	RDFrqsGOLC6DFe6Mhoerkq9OZwV+c2ngzWwqxoUDI9C4UyauhKdNobsMxyRcd8bha4OovzuKSVl
	jw3MdY3ZEBwKHKKOJq7BCtvmyN/3K0DFBYe2cakpKAg7YxSsbyEZ6X2WWU5w4
X-Gm-Gg: ASbGncuEewgyZtcVTFT8y4muq/2SWs1pD2wgcCvfIMzMujBJm3xe3rQFQZVb2+hui0B
	5padiCcONE3q+5w9VUj2pplDJ+4C43VbDA4Q0xry+WBIZuJlI4CMOSFY1K+DspIHWcX1VWD2oBC
	0Zp3ZMmODP8oFSGKew777d5fAEfdCGc6nOz0mc2PxtZcPE6eHWO+cWWxUS+Fs12PJdeq4/iNqcz
	jSuSU/0McQpoAcUKON0V0+rME148ffwuSyrpyyjaqmv1iMuCuVZnY2pKsX0n2+ZTqKNEojjICC6
	hCC1visOn2iOTG06qmpCgkkjAZLMRvuVc4yf
X-Received: by 2002:a05:6a20:d491:b0:1f5:8903:860f with SMTP id adf61e73a8af0-215ff0d7d90mr4654866637.14.1747222646112;
        Wed, 14 May 2025 04:37:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMOj0pkODASLbgHA597n/lSxCiGTIkCoSHyvzsT2+w3pqt18BviC0qXr2f+fhOeqV0kjeFgg==
X-Received: by 2002:a05:6a20:d491:b0:1f5:8903:860f with SMTP id adf61e73a8af0-215ff0d7d90mr4654805637.14.1747222645585;
        Wed, 14 May 2025 04:37:25 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2349ec78c3sm8652783a12.31.2025.05.14.04.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 04:37:24 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v2 0/2] Update PCIe PHY settings for SA8775P
Date: Wed, 14 May 2025 17:07:11 +0530
Message-Id: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGeAJGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDU0Nj3dKClMSS1PiCjEpdo+QUCwOTlBQjEwNDJaCGgqLUtMwKsGHRsbW
 1AHifrahcAAAA
X-Change-ID: 20250513-update_phy-2cd804dd2401
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747222639; l=1087;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=Pd6UckjZVaM/JS3ilAyea5a2vj0MVO3e/e9pYvH6Rpw=;
 b=5xf64b1oFtVoWpo7QJDvmfnMI4ZU9vSKKfHGBECdURRD52SALWLG7AONflLhDZQYhuYFddPnu
 bsuTg99t2BQDr8pQbA2zNLNFRSbfxEZgMss5NRpqj6OEw4JCQST+3Se
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-ORIG-GUID: a2flWVKLbeVgucqw57BTmAkSl_Y48OHg
X-Authority-Analysis: v=2.4 cv=Auju3P9P c=1 sm=1 tr=0 ts=68248077 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=vWfPPh_LAE0cc4QMUwIA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: a2flWVKLbeVgucqw57BTmAkSl_Y48OHg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDEwMSBTYWx0ZWRfX27tDX0X/88lQ
 RnE3OtvOSGA3uF2yBKXf1aFyrwKR4dGiDnvGr2/Q4aA/lP3wU5U3o50i6gyhocoAfn3aJg0GAnI
 wy7r7/CYQUBKgvO7VVPGnuTYPDjeoXDVtz3O7XZatyF3R7EuEBjKpuPyoGL3pfGLbTaBvjSIU5J
 yhziM8Yce4oYHc7lQz00xAktI0rg01GsN3oCJpzUgav6BJb+YGpTBwdNGkayvm0otvuRpdDKcBL
 /13+gava1VJXiwwAEMMiFYNk1IWVOUwD5PFnPgQ/oFLUPuLT9+OZvjwMtwloMU8MKL3oImON/Zt
 idv0Gg9dYs2SZOuVyOkqJSGBdT0IQpWgeaUQ0IkX4xQzeoqavB8/dxVaTO7AhiS2Z47AcIyDCLC
 RP3qrmbQ34Arfc+sRSRZUOVMQ4jYf2NiEUZV2sv0CJUsoEAjNJyNKvew5Mil1azyzd75FSbs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_03,2025-05-14_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=556
 phishscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140101

This Series is to update PCIe PHY settings as per latest
hardware programming guide and remove max link speed dt 
property for SA8775P PCIe EP.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
v1 -> v2:
- Update commit message as per the review comments.
- Remove max-link-speed DT property.

---
Mrinmay Sarkar (2):
      phy: qcom: qmp-pcie: Update PHY settings for SA8775P
      arm64: dts: qcom: sa8775p: Remove max link speed property for PCIe EP

 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  2 -
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 6 files changed, 66 insertions(+), 43 deletions(-)
---
base-commit: edef457004774e598fc4c1b7d1d4f0bcd9d0bb30
change-id: 20250513-update_phy-2cd804dd2401

Best regards,
-- 
Mrinmay Sarkar <quic_msarkar@quicinc.com>


