Return-Path: <devicetree+bounces-262123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPx9FEnBgWleJgMAu9opvQ
	(envelope-from <devicetree+bounces-262123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:35:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FD9D6D4B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22C78303EA82
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 09:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B77482F619A;
	Tue,  3 Feb 2026 09:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sc4SyQPD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QOw5U7T+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A369225788
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 09:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770111195; cv=none; b=ulP3PZiPrqP0NQ8mgFmtUrIwHF0vYi+krdRWiCnmHzhGRxEk/tQfQ4dmDtGq4GY4sBfZEoxqextGtDfteTMDXPoXpYXt7YddBkBKfYrIc1WrhM8mIc7UuSihcdiyWs/L0TlATZSD9JA625Bn5BQMdUXuHPlsswMWsta3cbu8s9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770111195; c=relaxed/simple;
	bh=XccZ96lDk92iWJrEvzXKPxaQ7i+4YFT1eB80lzaLe3A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=c2j5+ZoiX8mHk8jbE6LNfoof9Qg0jZKlzkXfIT1KVZ7L8lHU8MSVbticpDyrCIBVclDol5YtfI9olr4+KGY41cXxDkxOk2psySTSdi+Y45hlLj0nxXWIAwHW3kE4iN5nDGhJK2wFwjt0s5VYx8VaWLEGMIBj2SFXUFmEykw0+jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sc4SyQPD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QOw5U7T+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6133HMAe931271
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 09:33:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=u0laHcyRQqMcqzyGUiX+7U
	/mo2y9fWruTI7bRibaktY=; b=Sc4SyQPDkesghXqJhHjryJTjMZEeoEEmV5rXBp
	HU1pxylIkGITFG5gaS9rm30gkw7RA6oodAtSh4NBcFtna1x3jk9ewA3n6kdZReAg
	RU55ntpIAhH33LIxerU/YfvDqb+/q+qxK3rUoI7NvhiigpyjcZA45+0/3ZUGsEMh
	wR7XxrZsvXxtza3f817WGN0BnL87GmW/9w6ObTsLVuO7eEM/E2heoEmc+1/FUtKU
	dCI0jMJ6qF893+LBkb++DI/hcXcd9dyhiveAvGzCUEtBlkBwcWtUjv1lRQnN6jQ0
	tmYN+4E5FdxUKj3ySdALcs66jhjFYAkK5Kxy6ZdJMyVWYjhg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c38yu12mv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 09:33:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a77040ede0so54203845ad.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 01:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770111193; x=1770715993; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u0laHcyRQqMcqzyGUiX+7U/mo2y9fWruTI7bRibaktY=;
        b=QOw5U7T+MDqqInzoKuQQ4WhmfXss5etKSvxBkDZNhYQ+gfdbzbpbro65yZzAlgxuyF
         xzXACWNmiG57VInm3vk9e4Z1oUi7x/AweT3SKpjNr/nSLFbGn96iLhzCYP+i0ydNomGO
         tA8GeXqaYMwNFHZgn0SYiIVmAnAJuxODtmEVAfMOq5KcqDc2xsUOSO4w2VRdn5dMFDTJ
         MBQzuLUOxs2ULO5erJ4CSPT3qLiYetOt0DiNw0Tz7Rc680RM+ildVP/HTtxJiUnNs+cD
         rUXX4J/bJdjQVllzhyaC0RhWPw3UrrWKVPd6pSIDgR7UtARBtJySui3zF6/4T6mJgmg6
         B2Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770111193; x=1770715993;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u0laHcyRQqMcqzyGUiX+7U/mo2y9fWruTI7bRibaktY=;
        b=GBeFeMq4dvBa2x3TxqXa0x49ZU5bx4rj7bXPUKeRIomuNkme4f66lImYcjPbFWt3S2
         QEKv0DSn2D9WcP79kIRG0Em7C3+9HBUE4P9PloTDtp6BLknsl4TcNFE+M2O+VNe891+z
         i4QI1PWitHz45OKidZhsDI6SgO0P6ap5C45tz/fyH8lzTZqiqPBXluJUYBc7lO8Bz7HZ
         q98k0DHd/YPeBgVg3ef9uGBRCJs1PoqOtHp0qBu93aSUIJb5BuACX4tU1GGsRyLGaDtg
         0ssT5RgROyqjgYcZuwVlQKMz3qE/kXZRkWSe9OHVH/XqT+Sk/NO5KzSJlibHr0glhi7Q
         7pZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdqZWLDZcpCwmFa6JdzqDUN9YwQuyBlKQcGPqB4ESWCbUH6rg/rfK9J2jHWqvSAVUV7D2NbofZZGYv@vger.kernel.org
X-Gm-Message-State: AOJu0YyANzasTkt9BZ0UJpRCvBbWSEcrrYL9rPxh9j1+qYDXE3MPbgdW
	bvfRdz99l/DuM9FSN7TGCArNNNmETygaPhsR9Yblb7AC/A6sHEqcx7rbQVlKVqFh61xC+WbUts6
	qhtkTlCOgftZPd9hz5s1Aa9W4d8rycRAPCEnBILqZvT1MpLPNyghTW7mch5Gpj9di
X-Gm-Gg: AZuq6aKMpO3MFAJgbbareXqQq3BC3dxpvL4StrWnI0hOawlvHlmpR73Dj/hHZ5Zm1Ic
	SfpAY0M4gwswgdPJIfIITpYbbdoOR1mim1DLs8ikjP1Ycw+6cogYClJXtIHJhzm0JQ9YdqOaFG8
	egOwpFVdCUpf5qciHO1Ws/ZfHFmFk5aC+pB7Rqjg/NbJxWFxj2PGYR1Gq0Echi6KoYlnEFiSHDM
	5bsDR91HrVlA9hd+1mNfhD7PLXucFh8o6FNsb7yfdRIWgeY8Nov0bJNb2qP48xKYxslmH7Nw8xf
	u3cGbEz96iwclvM1cY8T5ryUBliSlEf8nTnNAJn1ZVgyeTv2o2ziqY9g3MxOBvmwKm78dUiaz1A
	BEJaANmh9A0ShUAiPr+nPMbBZ8l6A3zGqWGy6zj1LCd0ENx8gwHdn2y6eWYV/Jc1WhTyCN8sX
X-Received: by 2002:a17:903:124c:b0:2a7:3db0:6efe with SMTP id d9443c01a7336-2a8d959344fmr141413315ad.12.1770111192862;
        Tue, 03 Feb 2026 01:33:12 -0800 (PST)
X-Received: by 2002:a17:903:124c:b0:2a7:3db0:6efe with SMTP id d9443c01a7336-2a8d959344fmr141413085ad.12.1770111192392;
        Tue, 03 Feb 2026 01:33:12 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3eedd0sm162489155ad.3.2026.02.03.01.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 01:33:12 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Enable CTCU and ETR devices for multiple QCOM
 platforms
Date: Tue, 03 Feb 2026 17:32:48 +0800
Message-Id: <20260203-enable-ctcu-and-etr-v2-0-aacc7bd7eccb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAMHAgWkC/32NTQ6CMBSEr0Le2kf6ExVceQ/DorQPaQIttoVoS
 O9u5QBuJvkmmW92iBQsRbhVOwTabLTeFRCnCvSo3JPQmsIgmLgwwSSSU/1EqJNeUTmDlAJKPrT
 UGs6axkBZLoEG+z6sj67waGPy4XOcbPzX/vdtHBmqs7xyJUiLvrn7GOvXqibt57kuAV3O+Qu5Z
 2gNvQAAAA==
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770111187; l=1615;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=XccZ96lDk92iWJrEvzXKPxaQ7i+4YFT1eB80lzaLe3A=;
 b=HYNegZBQeqLhA/pAeMb8NnSR07v4leZeJ4ohDhazXGy7TLosKqvwaOAOfu02zm8lM00YeLG9O
 GhSWE786Ue3BcNcWh3W+xkbMSZlu96fWyWN9nR9RvgYdFw6F+6YY01Q
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3NCBTYWx0ZWRfXx/HfGydFcpOf
 QMlj/nia1vFa20Ikqj4l61qzf4eEuXTj1ldeFkEO6Q1AJNWHnn4xdQjw0Dxwz/nTYMmJsRzhqjj
 TkVPRvSFnfasv8LynBy0edWJboyNLdtopIafY3QhJuxj679NSzRc6nul7obi/cSniqirGm501zO
 Tt9MYxO6kSCpsL5VJMpsUKUsENLwSrQ7gCEn2dkHRS3ucMB62OZ3VXKSb8Vj/1HS/9WNU6Kf+Wv
 w1bH+wKf/xFay1b8KG6sZPI3ihM39xn9KB76KBrje7nZLWirL5uDDON9rlFp2OStXHMdWtCbxbW
 XkvHzKozlVCbNyZHJxflkLE68Q4AjdHw2RPeBYJAf0hM0OYkroI2Aigzl2RAQJ+7SHgKyvbH8Fy
 rBGAA4D2lLpIeiCGiHfOcr6Hu586EJQ00pGRabAscagBFL3o7XgPFAsqxKlb2osLk678uNLi9oJ
 7FGRUzSCIWOS8Tc7jAA==
X-Proofpoint-ORIG-GUID: oLQN2idmD6FqEPRIDBFetzYAnNH0QZ0r
X-Proofpoint-GUID: oLQN2idmD6FqEPRIDBFetzYAnNH0QZ0r
X-Authority-Analysis: v=2.4 cv=UKTQ3Sfy c=1 sm=1 tr=0 ts=6981c0d9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=pO0fZtIvyn0UN2_VQdIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 phishscore=0 clxscore=1015 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262123-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A5FD9D6D4B
X-Rspamd-Action: no action

The DT‑binding patch adds platform‑specific compatibles for the
CTCU device, and the following Qualcomm platforms are included:
Kaanapali
Pakala(sm8750)
Hamoa
Glymur

Since the base Coresight DT patches for the Kaanapali and Glymur
platforms have not yet been applied, I created DT patches only
for the Pakala and Hamoa platforms. I will submit the Kaanapali
and Glymur patches once their corresponding base Coresight DT patches
are merged.

The Hamoa‑related patches were posted in a separate email, and I
have included them in the current patch series.

Link to the previous Hamoa patch series:
https://lore.kernel.org/all/20251106-enable-etr-and-ctcu-for-hamoa-v2-0-cdb3a18753aa@oss.qualcomm.com/

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
Changes in v2:
- change back to the numeric compatible from pakala to sm8750.
- Link to v1: https://lore.kernel.org/r/20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com

---
Jie Gan (3):
      dt-binding: document QCOM platforms for CTCU device
      arm64: dts: qcom: hamoa: enable ETR and CTCU devices
      arm64: dts: qcom: sm8750: enable ETR and CTCU devices

 .../bindings/arm/qcom,coresight-ctcu.yaml          |   4 +
 arch/arm64/boot/dts/qcom/hamoa.dtsi                | 160 ++++++++++++++++++-
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 177 +++++++++++++++++++++
 3 files changed, 340 insertions(+), 1 deletion(-)
---
base-commit: 193579fe01389bc21aff0051d13f24e8ea95b47d
change-id: 20260203-enable-ctcu-and-etr-31f9e9d1088d

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


