Return-Path: <devicetree+bounces-232575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EC3C19250
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0FA13564293
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC32033CEA3;
	Wed, 29 Oct 2025 08:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IJdOyt9F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ONt6P81B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0FB33B955
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725930; cv=none; b=IOpJ01skiIeUAcNOQsjTDW9Pu4ftaBs1A1ZrKfbNtw3SuyFgVX1RTDLdgoUUVQXZpugfPRo3jtSmUJKPheppmKuZVN1GRlcJTcMypY4f1fjP0NIZMZ9zrnEW+5jzwdCutyRUHC7znu/GP6y4yKgJJmDJppLlYvzFB3peTRWY4T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725930; c=relaxed/simple;
	bh=KLTyHWEAcaKr1eRQGtyWJm7kWu7wVUNzKX0WRgsTt1s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OixgYIxJkQLO6yF1b0d1FyGtXmbJJk10Nv5XNmS49GuIVSg1EkzfJvVtn/Bj13o/3agq3utaPmlE6rdSBTRXT66wY38sNAKPcB3SdSFJQKrEfSs/lDVeDwbbiH1O8SeAJmgp97OhW9GlGLUKB26Se1Q07RkU42Xgl7XXVrQ21YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IJdOyt9F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ONt6P81B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v0Z93663639
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:18:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=QeivkgIAz76HiBHfRH/41C
	LBq7zxQHuMJPrMhMpbui8=; b=IJdOyt9FNkI52GhAL7ksgUSuZ9Y5RyhtC55q8x
	J050JEEMA44qPATGIDdmgc8CL7WWlPjrpibwguqTV/tKb0cQM+H5omnDKGUw0ySV
	+o0wEifCR4yHksAydoOcWT+Qg/KVwgjipZMA7a8EA4qq18BmDKBI4nANkzM+IrOo
	HlWzKLysbJ5kTc2qSIRDZjH+MmofV6R+IIbo12fg/xVnu0kmBGqAf44YYzzTlotI
	K7dWDAjqgYCg2KBWwfynIEUTdxCUQevOZ2gcdbjqnro/Ek320+mgTALEzMA+AF85
	yB+j4vfxqE4g2Lh9CNIQlggrQAp13v3q1NgvWx86vnaSdtZw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1src1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:18:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88f81cf8244so2780184185a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761725926; x=1762330726; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QeivkgIAz76HiBHfRH/41CLBq7zxQHuMJPrMhMpbui8=;
        b=ONt6P81BXhD/gBXFf/wec2IN0yLqP4plSlzGd9QL7SL3zxVwSFn5bv+Y8mN4zEQLvW
         mH3jyapcWUWjHtYjLT3fAnRrmaMfR7XTkIsx9tarrhnVju8k8NCKbr8/LWVUiw8jqJKl
         fS263V4QBo5bkupZqn5pYrGFq/NGnlZM8BBWlCYDlcgnvyu/Zmg5HfKLb02Faqxcn7YN
         skbGqWkG+H5++EvNkOrt8ysvgEup0rUO9+kJCDm/2ldrB7tIvsMe2q1M9V68zskIjLRv
         fzNllA05pAfcTbZFJHIgY/fA1Mg8RgBiX7FEvfW3d10JIFf6sUEZ08tQnKUpFLVbeeBY
         sBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761725926; x=1762330726;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QeivkgIAz76HiBHfRH/41CLBq7zxQHuMJPrMhMpbui8=;
        b=eauXcUkQ+Us6rZUYkq8ObunQYJEJ3PmYmS2kvHpKRO7K1/riuHGDQyKipUxIA66Wn3
         +C6IP0XLxVpTyh6S9ruaHu/JM7GVn41T/awFFM/vSBBoZ9srNhe8LtONHH/auyZFyOGR
         MRx/uOe5DhDUvAlIixNh4Jjb1JiRzXtUF3PZ2H8dFDbnA7uH3jgr9Q8wm0nPf1lt8cez
         g/ssfm2mN1eqnUtaxMBmtunrF8nuo6IFtB3eCAaWraGIpOoXprQJmKL3u4wQT4smmMZy
         +lb+LZ7ol4XSPDl8YD9RHvvtxaEuXlGWAg3Ip3y/NEiP25oZpBBJYTvQjM0d12BPYuXt
         m3+w==
X-Forwarded-Encrypted: i=1; AJvYcCX1za+hdzB77vCcwAlwv1JR3FlBoaEhE4SPq6op6mo81SQ4W6KdA36n51WHJc0MT5ZG9G0nRM5T25h1@vger.kernel.org
X-Gm-Message-State: AOJu0YztkhV/Fsc3RCVunishIvCfBw833WOra5QrcfQtPDhnsBAoNUkX
	YXIDeTpeKPVFDeGBTnOPKJqUOvnCzg2jM9EFI3wWHIzHLTcWMR+A+hXEB3VriMefAfxYOirM0ct
	yrh3yCO9wYv0mWS4LEGtJQd1GOW2h8f6ie6XCwK1JMYxqF6Nl0qqYYPG29hGzpZuE
X-Gm-Gg: ASbGncvqYu3e7kkBv8GrI+Lff9Odv8b4AMTi79H73BpY/MwpubDX9ZQQhKmyCq6Vevo
	N9WU5KMiwwckXjJFxqkHX9Aqp0yYfnyctfPE2oWkLBCTRnXZ88VO+7SVsAdKPo5rJ0lJ+DEQP49
	Hw/zkyT7dTQnBbqFs+3alxSzwgTrspNa1khzOzXxd0LYeGDMbM21ow+FJStDA4+TadodC4ajEwm
	1EfVUwVav87P0qNqwY33iVnnwPRPyy2I+U+DGtIquAetM6lfUejQZ5rQ3g01WnlAG5ZURt8tD5y
	Hxy5jNOSbVNngaQ8tI7Sh5EHmU4IgJVQmA2Ux/vGwxNE276yqsOZudew/x88eHJXSAVcmAfYq7E
	6vCIZT3wvk0Xbqx43nvpgLXi2LQ7hcjxafC2bmn2mcY1i4WcRAw==
X-Received: by 2002:a17:902:ecc8:b0:269:8072:5be7 with SMTP id d9443c01a7336-294deef6753mr23722355ad.56.1761725145782;
        Wed, 29 Oct 2025 01:05:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/y7bkWhIxx0Myxzh6vjq+isdNvogeuTT3oJcV1MrMZQLM6S5Py7etz8cDRf4QLE50KCO0ZQ==
X-Received: by 2002:a17:902:ecc8:b0:269:8072:5be7 with SMTP id d9443c01a7336-294deef6753mr23721835ad.56.1761725145134;
        Wed, 29 Oct 2025 01:05:45 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498f0be0esm141754705ad.96.2025.10.29.01.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:05:44 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v2 0/7] Add initial remoteproc support for Kaanapali and
 Glymur SoCs
Date: Wed, 29 Oct 2025 01:05:38 -0700
Message-Id: <20251029-knp-remoteproc-v2-0-6c81993b52ea@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANLKAWkC/12NzQ6CMBAGX4X0bEm7ID+efA/DoS2LNEpbu0g0h
 He3cPSyySTfzqyMMFokdslWFnGxZL1LAKeMmVG5O3LbJ2Yg4CwFtPzhAo84+RlD9IaboZFlXRS
 yx4qlpxBxsJ9DeOsSa0XIdVTOjLsmKWCfjZZmH79HdpH7+CiIFsr/wiK54JWUeqg1NgW0V0+Uv
 97qafw05emwbtu2HzgamczKAAAA
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Gokul krishna Krishnakumar <Gokul.krishnakumar@oss.qualcomm>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761725143; l=2358;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=KLTyHWEAcaKr1eRQGtyWJm7kWu7wVUNzKX0WRgsTt1s=;
 b=faSqcdKYBrQNp77AXE7+l4Bwfer/H+ghqklHKylwMz6VlE3VL3AsVkgHEKNACI2O7MKpdBu8J
 y5N7wBgwkC3DIFWxw465Pjo7iEC2LV6lBuvQeTCakPPVGfL3DP9y1zH
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 4zR3esBVeC-7KqFoXqZWl5fqxnwTPPhI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA2MCBTYWx0ZWRfX3ugGMn4AFvML
 RrODtx9I4EYWd2OVV1+CcVFXA+vVfDvZ7h9UBQluDnVb3+bEDNXU8Nn043m06PYesecU/hrhQJO
 3uall2FDcqB+dDvx2fZFz0oQRJqrvbfwxiljIsDtTPLd4pod3l9ctebwno8ghSe5Drgj4BriiNy
 1H4RlZ0uxGNfNw7QL0H/7u2ycBfn7AYnPok6lQUjNw3WOHr3jHb/3zuhdvr3A1Kkf1YtRLFjUDM
 cCIBDXkJLgkovdCyIbpxAhIzQhCtPtPMupMD12yu+MUrLXbIVsVmZc52+08fXZzIfPzJ+GsLyuN
 OG7xWY7lzv3hDclzjvznlL9KsQlK7JS7aW48E8nUaSt3So9y7JTbxSNzmcJ+z5/ygPaePzO9Im3
 msxIDphkIe0NEbk8xjNx2YupEgV/bw==
X-Proofpoint-ORIG-GUID: 4zR3esBVeC-7KqFoXqZWl5fqxnwTPPhI
X-Authority-Analysis: v=2.4 cv=UObQ3Sfy c=1 sm=1 tr=0 ts=6901cde7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=kDz7l3ViJ1xZ-f_3I1MA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290060

Add initial support for remoteprocs including ADSP and CDSP aon Qualcomm
Kaanapali and Glymur platforms which are compatible with ealier Platforms
with minor difference. And add initial support for SoC Control Processor
(SoCCP) which is loaded by  bootloader. PAS loader will check the state
of the subsystem, and set the status "attached" if ping the subsystem
successfully.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- Drop MPSS change
- pick Glymur changes from https://lore.kernel.org/linux-arm-msm/20250924183726.509202-1-sibi.sankar@oss.qualcomm.com
- Drop redundant adsp bindings - Dmitry
- Clarify Kaanapali CDSP compatible in commit msg - Krzysztof
- include pas-common.yaml in soccp yaml and extend the common part - Krzysztof
- Clear early_boot flag in the adsp stop callback - Dmitry
- Use .mbn in soccp driver node - Konrad
- Link to v1: https://lore.kernel.org/r/20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com

---
Gokul krishna Krishnakumar (1):
      remoteproc: qcom: pas: Add late attach support for subsystems

Jingyi Wang (4):
      dt-bindings: remoteproc: qcom,sm8550-pas: Add Kaanapali ADSP
      dt-bindings: remoteproc: qcom,sm8550-pas: Add Kaanapali CDSP
      dt-bindings: remoteproc: qcom,pas: Document pas for SoCCP on Kaanapali and Glymur platforms
      remoteproc: qcom_q6v5_pas: Add SoCCP node on Kaanapali

Sibi Sankar (2):
      dt-bindings: remoteproc: qcom,sm8550-pas: Document Glymur ADSP
      dt-bindings: remoteproc: qcom,sm8550-pas: Document Glymur CDSP

 .../remoteproc/qcom,kaanapali-soccp-pas.yaml       | 134 +++++++++++++++++++++
 .../bindings/remoteproc/qcom,pas-common.yaml       |  83 +++++++++----
 .../bindings/remoteproc/qcom,sm8550-pas.yaml       |  26 +++-
 drivers/remoteproc/qcom_q6v5.c                     |  89 +++++++++++++-
 drivers/remoteproc/qcom_q6v5.h                     |  14 ++-
 drivers/remoteproc/qcom_q6v5_adsp.c                |   2 +-
 drivers/remoteproc/qcom_q6v5_mss.c                 |   2 +-
 drivers/remoteproc/qcom_q6v5_pas.c                 |  81 ++++++++++++-
 8 files changed, 402 insertions(+), 29 deletions(-)
---
base-commit: aaa9c3550b60d6259d6ea8b1175ade8d1242444e
change-id: 20251029-knp-remoteproc-cf8147331de6

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


