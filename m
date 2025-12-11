Return-Path: <devicetree+bounces-245787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6C8CB54E1
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:06:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 663A0301A73C
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 09:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C3E2F5A09;
	Thu, 11 Dec 2025 09:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NOSEQvtX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K6DGCbd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6660E2BCF46
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 09:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765443774; cv=none; b=J8RBawCR3grng6/nRJeyXVKYH8FZEonAQFdBp6aj5yGWohlRPd2iFlkQowVGfxWk2UPimJXQAlgdwSnoZeylQOQMevyV3IEdAVGTQQ2EOZ3rBU3djEdKJrJxuS80bpATFMbaWh3D8XxqMD56ZfdIEvFButvbKSMr8Fb8NK1KX7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765443774; c=relaxed/simple;
	bh=QUa3DEZcMWBiNcmvpB2lseRak8nUOh0xeBJQMi2ZJhk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sOwWATHm4BDB99XtMkHw1C3+9XVuVC3iPZPmPFteXnGdyWfAb2xjoOmdrOGvanT27qwlPNSMoXr5sf3HNNg/GqBxRvw/VDqhlCKQTqg42WGsWt2lWL2tP4Eoacs8Ke7H0eXK76y+j2SC2GW0X/nmYF5wnkaUhB+ixQMA7RxU9Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NOSEQvtX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K6DGCbd3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB8gTDj1352084
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 09:02:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=F58wD7iZDQFljT0FOPoy97
	8P+NtpnD2MVmAR+CtsprI=; b=NOSEQvtXGD/LWi1Oeag7Wu7l+kWC7ViqVEVyWq
	vgNS8WjXQs5JdJCOiSEC1tImIio1qpdSnz+ao3D8tC9q6hVlyAvijwBT05cfkU5b
	SyN9K6YXzPRyJ+E4swgpxwrEEtHylOFKYuLaRdHAj4k7M99k/cOhlh8krKe1pDcZ
	A3PEydvKanlNaWO1pQCmo9SV1t2Zwpnfs1NLEpP36D0/OoiWpi+B0JRyvmR4NhDm
	azlZU307oXMjYyk59MfG2TgceBrpkJoQgwWEzWoZ6y8AdpqeYBvhkbLuYSL7ayi+
	LuF2F/pL3PsbXNGoH6X7UbiZLsjWb7/BBr/HUIDHPyDQ73ng==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aybhpawhd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 09:02:51 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34188ba5990so2010308a91.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765443770; x=1766048570; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F58wD7iZDQFljT0FOPoy978P+NtpnD2MVmAR+CtsprI=;
        b=K6DGCbd3/ANAt96rlppzP9JIeM5mFpYJy9EfDkufCwT1j0mrT3/LKLLJCUpFWtmYNQ
         C1b004VupSylkU+kmON+gLEQEysXoUSr5x6bSUkJqLS7i/h/m7Y1OBorHwuzNLtbmFEb
         4EDa35K26aHYWPbEjR3S5dHquVHxFyOcfPYYfmCK7slnAiJQ/x6zAZuSSCtjY63VAp8f
         AUEoKX7xG30VhUlG7RoOwvEcFmnPvoNG5SdldllXza6Wk9xrcBV04hC99PiQRBkazur9
         1KEWMmdAPS/l1lARUYXKtmRB9COgJfjOCZfliVkA6Ec9RHV5i4Rc4wviTuynOiYeTWZD
         C9VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765443770; x=1766048570;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F58wD7iZDQFljT0FOPoy978P+NtpnD2MVmAR+CtsprI=;
        b=FkMsSpKV8HvG7oobec8eLM5q7gzhEbEkCNX5/Gyoi0xwKYT2eTgAcTbYNRA2D1bOxt
         GN8TPs03YuExzfJNBCNBzMSxw8MPt4hLmRZv7GUUPoWknx5hVjVoMQjybGPUR9ryJawR
         YajlSMHBu4ZF+T/bdTPhrH37d16jpeK6XQJmhgO8mJssVLsVlFnlWY88ZRgL6zZHu06s
         rrfuT7xz/dKHHbi44PqwE6GmeYAI2oHIZDSumn2SWPCbVoE+ALl6Suckx9uGc1Dry6Qc
         OGMNACQF+gX2XZn9ngI33t+PJCo6u/6KUezQzfBKZ2yoFIGMWU1bbkTns9Frov7ISYUC
         1Cdw==
X-Forwarded-Encrypted: i=1; AJvYcCXsRfN12Y/muL86qBSsnxL/qKAFKl9IifjQ5Ks43facMTVkiKRkzdoNhxF/aNptxkjVIC0Rd4X6IBmn@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ4LIHvd9sU4AMXRadr5kRiGf4Xc5Tv1FC4ObKtaiSIvlgGTWz
	jlftYjrpyufzvcgl1V0/eFjbmnpK3DTLGzOiqdWNJHgsV0gYL85Y3n8j1rdRpn7ey4VZwNFDaP7
	TIroMFXJkZTvn+3J0q0nQsWafdTjdsLLP92ZRT4EuZuyeb9HXr5EHphhUpT+v9voB
X-Gm-Gg: AY/fxX6VfrWj03EXZCzETYDIctKGGJBSBR1BSb7Pvan38zdzJxVzdPzsE9V/cf2ae2a
	NinobnqdYpVC9SygqgeeUMIDRqr3iV5QaiRgsHZm+og7d70MLTz4d2xThLPCXfmKQATPqqrc2Xu
	AqlsVevXaLtUw3/dUTnkihICJkWv8eIx535lGS401tS0TQpftcX3DdZ7YvJhOWHyl59bffncd5Z
	6E+RfobeocFmv6pHpj6jCsmpsdy0btGb1ThJ0qWGrFiC9VEhfb+Fz528oKt4KQNNdcZjKAo0tQD
	/i/zlohKX8s9dpaxxE0sR+yCePe1RIaZJj+pymg/E7bExXWnUMuUztycafkYEQYxesSlMMmnZnB
	w/uFB417nJpiyysNvfa3DOky6sRKuGnPX77f6GkA7CT+qAkkYLdiCIN6Djzzwr9IwNz/aWYWiJy
	YzyZQz4HRUiIzIPvFMMtq0s5dWDgOJEg==
X-Received: by 2002:a17:90b:3806:b0:340:c070:82d7 with SMTP id 98e67ed59e1d1-34a7287ff49mr5417147a91.35.1765443770073;
        Thu, 11 Dec 2025 01:02:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFpdBFOK+imWh1RtyBCLxP9QV8KUhIo5EFmPmTd8eE4f9vxE4MXLIE1IrNkcqT9CW932fD1Xw==
X-Received: by 2002:a17:90b:3806:b0:340:c070:82d7 with SMTP id 98e67ed59e1d1-34a7287ff49mr5417105a91.35.1765443769582;
        Thu, 11 Dec 2025 01:02:49 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a92860032sm1273780a91.11.2025.12.11.01.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 01:02:49 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Subject: [PATCH v3 0/2] soc: qcom: llcc: Add support for Glymur SoC
Date: Thu, 11 Dec 2025 14:32:34 +0530
Message-Id: <20251211-glymur_llcc_enablement-v3-0-43457b354b0d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKqIOmkC/3WNyw6CMBREf4V0bUl7pYKu/A9DSCkXaNKHtkAkh
 H+34trNJGeSObORiEFjJLdsIwEXHbV3Cc6njKhRugGp7hITYCA4gysdzGrn0BijVINOtgYtuol
 eZMVBsaovFCdp/AzY6/chftSJRx0nH9bjZ4Fv+1NyEP+UC1BGSyE5a1HwrizuPsb8NUujvLV5C
 lLv+/4BTuAbq8MAAAA=
X-Change-ID: 20251029-glymur_llcc_enablement-6a812c08f4c1
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765443765; l=1669;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=QUa3DEZcMWBiNcmvpB2lseRak8nUOh0xeBJQMi2ZJhk=;
 b=l2ybs94rRCXgGLVRQz5cHnwnzw1SEI6ju38FUzO2stw9luMlDTXxZLv7GnAN6vjtPWNhVmXpf
 hjE3VaDas8qAj71segRGh/QLk2+vgqFM4YsPKCIiDJGL09MDFRCnB3H
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA2NyBTYWx0ZWRfX1tQxmjzMHy9b
 Gh1m0+CFzdFtPTLmtB0OufGahNH6lI3Q+caAsvZiVIJCk5KgHslRHi1qjR8fwDHTvSKLjI7hzFY
 nJywXSiokGUE0OdRTtDa0iN3HnwtP74nWC/VtlytKBSVMQAnDPNJ1GaDNzmeL974PTRhudM28Pr
 YjYLQG7xCJ6DsFNPj0y8VqIn8599hrCsnny1erImB/Tj8LMgCLSsj0v9v1dfKmN04Kpb8UhAAjI
 IQfT0h9derG+1SJkgfEisORR93CTrye1F22blXW5w03erJGpE1k1BOEcvz9Mi6V8knSdYFZyo3Y
 uORtodhpoOb6SP5nn12PCTAh0GiTK9iFMpiscmUgq3kEmBUnJj/YuQxdwuF0+hdJ+k6YgL80u7n
 WpgAtkBrgX1ZZ/z7JiggTrdqOU/m6w==
X-Proofpoint-ORIG-GUID: KxEYJJi2e6S0FUHqM2uFxl8_mwRF6ZjI
X-Proofpoint-GUID: KxEYJJi2e6S0FUHqM2uFxl8_mwRF6ZjI
X-Authority-Analysis: v=2.4 cv=LJ9rgZW9 c=1 sm=1 tr=0 ts=693a88bb cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=7q9y67zIC7BUKB0Phv0A:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110067

Glymur SoC uses the Last Level Cache Controller (LLCC) as its
system cache controller, update the device-tree bindings to allow
maximum of 14 registers for llcc block since GLymur has 12 llcc base
register regions and an additional AND, OR broadcast base register.
Updated SCT configuration data in the LLCC driver.

Enabled additional use case IDs defined in
include/linux/soc/qcom/llcc-qcom.h:

OOBM_NS
OOBM_S
VIDSC_VSP1
PCIE_TCU

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
Changes in v3:
- Dropped patch for changing alignment style for usecase-id macro in
  include/linux/soc/qcom/llcc-qcom.h
- Link to v2: https://lore.kernel.org/r/20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com

Changes in v2:
- Updated dt-bindings for maximum no of registers to be 14
- Re-ordered the fix alignment patch to before adding a new entry for Glymur
- Squashed commit for enablement of usecase id and driver changes
- Link to v1: https://lore.kernel.org/all/20251121-glymur_llcc_enablement-v1-0-336b851b8dcb@oss.qualcomm.com/

---
Pankaj Patil (2):
      dt-bindings: cache: qcom,llcc: Document Glymur LLCC block
      soc: qcom: llcc-qcom: Add support for Glymur

 .../devicetree/bindings/cache/qcom,llcc.yaml       |  47 ++++-
 drivers/soc/qcom/llcc-qcom.c                       | 207 +++++++++++++++++++++
 include/linux/soc/qcom/llcc-qcom.h                 |   4 +
 3 files changed, 256 insertions(+), 2 deletions(-)
---
base-commit: c75caf76ed86bbc15a72808f48f8df1608a0886c
change-id: 20251029-glymur_llcc_enablement-6a812c08f4c1

Best regards,
-- 
Pankaj Patil <pankaj.patil@oss.qualcomm.com>


