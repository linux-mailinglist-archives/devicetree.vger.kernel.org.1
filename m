Return-Path: <devicetree+bounces-227082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CE822BDE7CD
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 554E034D494
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB0E815ADB4;
	Wed, 15 Oct 2025 12:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oOlk8DPe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5362B39FCE
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760531709; cv=none; b=NsfN8iIgOVpEJbQq5hEbWN1+TTYvjBdGxXVIoGCn+SpjSESqkhP6FfBN/Ox2b5OlcERrvCbhHYzpZ5cFmjqREgSylOkQFhnT+3nwn4/pX5dwKHFfvz+8x3pArzWu3v64ZFVbux6nNosKTh8EXVYKjq3OXNvOfMuQHVCDvs4iGXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760531709; c=relaxed/simple;
	bh=X4N17n4Ua7mNCyR6WAfWyrl+7cd5pNOirQVeBonC7NU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ldvhOK20Y3d1L6grzF5JgoYvkAbPMOeltGgqxbGtDxnCCkdXpPaspit8MWQ/w3I1hkeOmnh0GfcZuxvzI1qhOBBuTkW3wMmhztg2CipGgwBvTZE0DVlneU/Ox+48seik8Q4vei+dhdMPYJr3tGA/FvAa7N9DMwVP30yLi6liAg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oOlk8DPe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FAWJOs004000
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:35:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Pzp5Zzc1pFXeaU+Nwva8WA
	BLFh5MZrb4G6fcqC/jDw8=; b=oOlk8DPeuPHxrvywEh9EpALCqUovMqVGiTHQy5
	c/YI1UDP8gMj0fAyPKXTG+9OQ3lrDcfji9GvtdNjlSe8Loc7fz+P8QqnnmohyW0l
	lA/SDI9tZ0emDDZEj0idI11lCQg1mu/+KyACKxBntfgdCIuLv4ljbmhkc3wAmv0M
	PGYck+mWHtReuT7Yq22OMBFenBLOh2y/qrb3azByJnFdijJS+TdxnUeyAQTmz89J
	zwhygi5YA2Ulmaz/5QPHM1HHtphxRWzo45vd2nwOpjFZg/0JPAO8FCNwWxea2AiE
	WPBkAItLri/aB80FVNgQ5wGwP8HhilXk/1yajovQLJC9CQKQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwppdm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:35:07 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-334b0876195so12745747a91.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 05:35:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760531706; x=1761136506;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pzp5Zzc1pFXeaU+Nwva8WABLFh5MZrb4G6fcqC/jDw8=;
        b=IF7HM+jlhdW0LN0VGWXfxI7lCnfo5SGfd+KMmR0luQrpfe6RcmXWNlKY6aX7+59K1Z
         hk4zJd7dhz4M9FsSNYChexB/pZp3hNUtRuqKSDAEmjFYCggWYXdYhktJCSRVDHHr2RqO
         G/UkzOjvvjI/Baf76uumUUBbAl3Jk+JUIz+xjz/VIrRVr0YOjLMAuAAqgWY6lmA3/YQS
         HqrY/5rKPrkq7ObPUrwnkAfYOop5QqSfXpjYC86orBybvQCCVcwRogx/4796GMyfjSdT
         t6Fn5iMSwRLcYG/kJ9YGwdSMcuRKIOo6bvtu5Nfd7KNrPOSvTEZkAoJ+r8STAqbNmL77
         Y8Cg==
X-Forwarded-Encrypted: i=1; AJvYcCXQd3rzclUn4S6Ze/FyNQUtrqx84z7hTK102YEimYx4wTB5MYkySesN7TmnQ2nyC2etIEBgmCJTOFl/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0O0HSCkB/NbRZ/zR4iLTq/J05N0nfcPANP9HC3M2Z0vvVmk3v
	ZlXYZkc0NfCUkgR9mC+atnT1WMfVYeoufrZSxX/0ux7yfq5INxjBkfx3YbjITDKN66TJFrKktSX
	IAlExEvY83IMo/prWc8Y5X6r+195T53H7Jt5iPyzndv5f6gxHqVL9F8lqXXQrIjw=
X-Gm-Gg: ASbGncukQQj3JJqsqHCibO8h6UEMhRG90gBDJ6U5e1zEhGxQFRy+wDawKh28nIs5bo2
	EVBUV4NM1yu/0ZOYqD1aSjZS3lvVFplr3SMxot10he0TBX905XnMsdjgO0/p2u1vfzrzOsaeeUa
	4app15hM3C2HygY9MFtBZT5yu/a4kGavfU7ol+wBbmfKiDbOMxPiXqOBvURQIs2cdCV62xDpRv8
	yk7K+1zbZaSxe7H2pjv0w6KKLPaVYbOCe4IGxmXFLHHqn6XgaR8o+V9chYkAZIz5MT8hoJ/d9KQ
	pwn8TbH6nLQePxD161+3wUPe3PMivsiT2JLcOC4ErqIclWj5csSQitxE3n4uuaA/AAaabg==
X-Received: by 2002:a17:90b:1807:b0:32b:a2b9:b200 with SMTP id 98e67ed59e1d1-33b51129723mr36139018a91.13.1760531706487;
        Wed, 15 Oct 2025 05:35:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELMqHeo+HHyB2I1fDjUFGKkYnQoxP4f9ftX6FPP/Z5V2sIvrCOnIckE3CHkoakEpIlcghHVg==
X-Received: by 2002:a17:90b:1807:b0:32b:a2b9:b200 with SMTP id 98e67ed59e1d1-33b51129723mr36138978a91.13.1760531705862;
        Wed, 15 Oct 2025 05:35:05 -0700 (PDT)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a08c4b7d6sm2389755a12.7.2025.10.15.05.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 05:35:05 -0700 (PDT)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 18:04:55 +0530
Subject: [PATCH v2] arm64: dts: qcom: lemans-evk: Add resin key code for
 PMM8654AU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-add_pon_resin-v2-1-44e2e45de5f1@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAO6U72gC/3WMQQ6CMBBFr2JmbUmnWARX3sMQgmWQSaTFjhIN4
 e5W9m5+8n7y3gJCkUngtFsg0szCwScw+x24ofU3UtwlBqONRY25aruumYJvIgl7ZU1vDxpLl1s
 HyZki9fzeepc68cDyDPGz5Wf8vf9KMypUhXF4pbI6Vro4B5Hs8WrvLoxjlgbqdV2/pw0YE7EAA
 AA=
X-Change-ID: 20251013-add_pon_resin-52f54018c35c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760531702; l=1121;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=X4N17n4Ua7mNCyR6WAfWyrl+7cd5pNOirQVeBonC7NU=;
 b=KE3ICyICIkU3msidOaHXIeqwTq4UdytdyqOAFInA7R2Y8kcF1vZYhaJGh/zR7I8cDi3CJ+KWE
 T7TQb976xwBBW/Ksz3p6/CQl3coCGfC3J0CP/wfQRMH9je478eLl6iw
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX1lOyuAzOYlY8
 PYacoJ/hgbkdOMIkl0I1ccrZ7rsJdtVbJvp0+11upTGyvYhFlEnu7LrZCBtt4bi62YoGHKIEee0
 j09fdRtwvqZ0gWlQsdMRDfz0nJg29mkazM3UuNnb0gY3muwY4h4EzX2GSNbUlQENRQerLpvl2cj
 XIXUnuG85fST1nq3XWg+wtl3zBt0dEQB8miwav2rtO1l822imCw2fdAdkiMd0JZp/AoP9/4E4KB
 QI3JSTGEcoAYU7lO9ZEPulv9OIOXrjT2i4WpcZIRer9IG1Bq7Bb5xWvHFQsP01gR/JqsOSh1FJU
 CpA127JOyt6sZLCKMN0LDa0GxaTk5YFz4XkG7g3HgW5+IKDAvhQV7njsK/aRen9HRT6Uqm/1zBc
 pO3JMaGGsV2j9QtCErfcMIb3BBwzYQ==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68ef94fb cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=9TsxBIn3MFV-MpTI3mAA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 650BkUAxdvjpXcK-b-DFz58vTXGRcBSH
X-Proofpoint-ORIG-GUID: 650BkUAxdvjpXcK-b-DFz58vTXGRcBSH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

Update the PMM8654AU resin input code to KEY_VOLUMEDOWN
and enable it.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
Changes in v2:
- I have dropped the RTC change. I will be posting it as an independent
  change, as suggested by Dmitry Baryshkov.
- Link to v1: https://lore.kernel.org/r/20251013-add_pon_resin-v1-1-62c1be897906@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c7dc9b8f445787a87ba4869bb426f70f14c1dc9f..0df105755c328706475cc1974fc45557d0a7bff5 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -587,6 +587,11 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&pmm8654au_0_pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };

---
base-commit: 52ba76324a9d7c39830c850999210a36ef023cde
change-id: 20251013-add_pon_resin-52f54018c35c

Best regards,
-- 
Rakesh Kota <rakesh.kota@oss.qualcomm.com>


