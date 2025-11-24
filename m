Return-Path: <devicetree+bounces-241502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFCCC7F2F1
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 08:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 99D9E4E2E8C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 07:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68B5E2E7F08;
	Mon, 24 Nov 2025 07:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JB9zP1o7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ProThH+y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6B72DCF78
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 07:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763969529; cv=none; b=hzhM1uqXiKEXzbmenyQYj8k9TjG7Fo9oH2f3YoVwkfwRCkJgKPQKmqo465eSDGLjd4ywKMt3IHycFcSIJ7MlmFOIk+1EeKLY2e+3uYIaKvQYCuFExzFwGnpnfZaC41omtORXPbCggW4EpHAdKQy6jKDyXc8n9/p8GPBX9jYBUrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763969529; c=relaxed/simple;
	bh=gi8m2fYncjoshzUCF9ETqrEgzgA8RBT1yDJxH6Ie+gE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=iJKxj5eUBXtzGejRV+S9WTDQOoVPTRApICAJZ6mE4w/K2lRWhuwJLPBMcenaDaG3dRj1xCw5ykzOe2CjPwIBI3GFeVCap3G14ir5KL98tBSuf7pQ3mSrq9U+m9GeMmPmPNEptdTUEDLQoWKkZpN92muwNtfsbQzqUNWcj1oRpWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JB9zP1o7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ProThH+y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ANMK1Nk2288309
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 07:32:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9K7rbDTiYahi8EAdFEXRy+
	9l4NDbzvn0ekHRcsZXQgs=; b=JB9zP1o7RIRLPF6AvmTGN4cv99jZY3T1Xwqgwp
	/Z6z1x9AZh/oBT7qYxFecG5Cq8tFzp32avdbWwtHVfbFex3zE2mMhtvjiY4akN2Q
	q/ZIROyORerwBsjigixvIu8sreIHur89bnO51HKa90j2G1CpOL0WlTvlHJJ/U4fb
	K6+Q/7x1DbImFmGti8B20p2+O46r3YhLBXI5v8Phzcw8hwTD1UQDSyfoiBclxEIZ
	zPyodDCVQckzltp4WlW02vGVEflQhX/qmb/NXt7ByOlHOLmuGKnQR9ERE82cwbuL
	h0wa+SMqJZMpawy72dykyAlHNxNB/xz6DDYi1WzrIqm/ehxg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak68dv3pg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 07:32:06 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29809acd049so81694315ad.3
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 23:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763969526; x=1764574326; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9K7rbDTiYahi8EAdFEXRy+9l4NDbzvn0ekHRcsZXQgs=;
        b=ProThH+yxf+s5oPe5N5w+T27JXrSBfvvy28YojI0tT6C8ILtYsiVCTiz94teoZZumY
         pqd943Xg8njaNvf/RnwN8Y+K7NvGzqVfyTIFK3mmc7PeRm1K9kzCLJg+o4lWyV7hGTOu
         mkE+IWBukn6Wd5fNY+9QLd9LrqEwdq1rgjc9102O8A66ABDDpt04C3vTjsZl5XS06x8+
         SV/Q+Us+H3Iczd3Q58QcY6hq7/W640ACX+NoeIraQYs+6G1XxQojPYoDevZXcUT+TQbl
         bG2CNtyg3XuGBsJGuJGDZ5WEY3SE40w6D2zc9b3Q/EZllMSlsT811UWn4OGnzY+RsaoF
         6CNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763969526; x=1764574326;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9K7rbDTiYahi8EAdFEXRy+9l4NDbzvn0ekHRcsZXQgs=;
        b=Ffe/RNMi4metyyCumsyVV4LgbpcPGEK4jL2m7PYfyWdfNgMfbkyhK4OpBeW3g9qQ6k
         6LCy/bYBgyuME3FjijKv8quy9UvkmLMd2NUoDeFFD0QtTUSys+5ZoOrBVRnLfBt8u0TX
         2pZH6uf1KZ/UlwpOQPz5hmq96RX7fRy9B/rtrN+FjxQlfm9iZW39vQb+VTyVA2XErjOU
         XAO5BRbafTGshbm0uC5AW8VoaiTBNJQ+bcSW0gY8FtQkBOwH1Wss+G89bxs98eK77jSm
         NI/KX75USi6KOEVO2rSId3vP+WT0difnJN5nk4BUu15UGqkFvdGZv6SJLAZgLIu9zOgo
         Cu2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUSf0lqt7GGVW7zBOw9zgb8V8Chqs14W6Klm92rAbV9/JPqyThWX/YhKK9v0yg1+gIij1Z5hzbk6bZj@vger.kernel.org
X-Gm-Message-State: AOJu0YxY5DKowCXZ/CwDArR1o5/GpIBUBS6bc1G9qkbAo4lqeugFdT9S
	xrNu6fuQVe7PFLrg1p066Zvv3x8ttoy9tcN1qVFe95u8Zb6GTYv63CKDunrtfWq1TsNspMfV2yE
	96cztenkw48uN40NUWSGvVw0avCfSe+S8SvY9GVDjihAP1tTb0LfY4Oh9YXTeCPWM
X-Gm-Gg: ASbGnctKNNhEmwc/bUt6todLe9TJd5g2/R6zL+tsr+p4XsbWWzVMclRNSmEAjz5oJcP
	g/KYyQNKwmmUSOUAILOcI3sLrmzJ31eGu68jx69KVVpiTCQ4rlxEVmQSxXtyr/ZuaeJzc9doz1m
	A/dFqh/pMNYLd/CNfkpSI0hvTfF9ltFfkGChAXBCrWplZirBFz+UlGt+TiNIUAKXkVr1Qjfa48I
	EF1kcWCjfhdu13FADy2g98U0ONtwlIEbvnWfaIQAVbJLI1nPfY8Px9HyZQqdzDIgRGD61rSofp5
	KcvSY1hYhKljAsnmJgxR3SyoB7h0xmfLJTGIzUD6RVcWDWDok6rwCaAF4SlYYF2NqaLDOCzfEgI
	R/BGPteX3DWFKqyfRBWjiLMxJxG98VO+5pk9ajdlYJU04gnXKDvRY3QKqnjoi
X-Received: by 2002:a05:7300:ad09:b0:2a4:3593:6451 with SMTP id 5a478bee46e88-2a7190b3e79mr6044842eec.1.1763969526138;
        Sun, 23 Nov 2025 23:32:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH+81eCyzNENn9k51K+qkK3/shBEXMUjIgK2xySIfG4n1dPD5yMOj9FtyopD35OOaYQ6t9L3g==
X-Received: by 2002:a05:7300:ad09:b0:2a4:3593:6451 with SMTP id 5a478bee46e88-2a7190b3e79mr6044821eec.1.1763969525530;
        Sun, 23 Nov 2025 23:32:05 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a6fc38a66bsm49122544eec.1.2025.11.23.23.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Nov 2025 23:32:04 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Sun, 23 Nov 2025 23:31:54 -0800
Subject: [PATCH v4] dt-bindings: sram: Document qcom,kaanapali-imem and its
 child node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251123-knp-soc-binding-v4-1-42b349a66c59@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAOkJJGkC/2WNwQ6CMBBEf4X07BJaqIon/8NwKO0CG7XFrhIN4
 d8txJuXSV4y82YWjJGQxSmbRcSJmIJPUO0yYQfjewRyiYUqlJZSlXD1I3Cw0JJ35Huo96gO9dH
 ZzqFIqzFiR+/NeGkSt4YR2mi8HVZPcsi1NhA/Q/xsv5Ncy7+LQv1dTCUUkIZao62MLvU5MOePl
 7nZcL/nKUSzLMsXQu5aEcwAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, konrad.dybcio@oss.qualcomm.com,
        andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763969524; l=2176;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=gi8m2fYncjoshzUCF9ETqrEgzgA8RBT1yDJxH6Ie+gE=;
 b=tGljJaxW8W2EshT1NL+Cev2xxlui+HFvzH8Sz/U55fyriWPnMolK3LGUipoebRG1y6NVWROI+
 ZBFejTbJr1wCWybnM+SWesWfLKTIBqBEFFIC0PcbeeDJWWqg/xAzts0
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA2NSBTYWx0ZWRfX2ueqo7QzvzVd
 JH+ZsjYggRy50k5yAIOs3EClWlFj4nGgX7ie5gtmd5Hm2UAvqclqSXmoI6uaHwXPfaBdFzVtY5R
 /m4AnqMCCGFFDD134vZ2CdWmn5R5MUvl7huAgYZHC3WjlEixi6Rp/jgcr+Wgf5BAQnKGcYVKnGs
 K7Pgu5SuCwnBiQHSeoagTMjrqIXwVTcigrI1qIJ+nDYh4ETsVa99gztMj6PLUzfQECiTjbFVQNt
 dKXSWPb4b/obtKPKXtOamjcyhHjeyJ6tQHiYEWFgt0YW91yIEI4WMKcJC5ocoDrn7cLxdS45Bi5
 4OM9ldxexr9J6Xyqu1WUfCooOfl3zHabi+kdH3+QpeMscSqYWb8LXIXOdJBXWxFw+ndRHJ8Gf6T
 xkHRmRi5dddt6hprGWpkI6lU/DZ0kA==
X-Proofpoint-GUID: rUimu5D0ZaFF9PDubs9pjc1KjYzqUKnI
X-Proofpoint-ORIG-GUID: rUimu5D0ZaFF9PDubs9pjc1KjYzqUKnI
X-Authority-Analysis: v=2.4 cv=UsBu9uwB c=1 sm=1 tr=0 ts=692409f6 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=bHCfYezArJoviQaWnfQA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240065

On Qualcomm Kaanapali platform, IMEM is a block of SRAM shared across
multiple IP blocks which can falk back to "mmio-sram". Documnent it and
its child node "qcom,pil-reloc-info" which is used for collecting
remoteproc ramdumps.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v4:
- drop change that is applied
- fallback to "mmio-sram"
- Link to v3: https://lore.kernel.org/r/20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com

Changes in v3:
- Fix capital letter in commit message - Dmitry 
- drop changes that are applied
- fallback to a no implementation binding qcom,imem - Bjorn
- Link to v2: https://lore.kernel.org/r/20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com

Changes in v2:
- Fix capital letter in subject and simplify commit message - Eugen Hristev
- pick aoss_qmp change from https://lore.kernel.org/linux-arm-msm/20250924183726.509202-1-sibi.sankar@oss.qualcomm.com/T/#m4bbee2db112a471cdca7aa63477b7147691e6852 and rebase
- Link to v1: https://lore.kernel.org/r/20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com
---
 Documentation/devicetree/bindings/sram/sram.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 7c1337e159f2..c451140962c8 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -34,6 +34,7 @@ properties:
         - nvidia,tegra186-sysram
         - nvidia,tegra194-sysram
         - nvidia,tegra234-sysram
+        - qcom,kaanapali-imem
         - qcom,rpm-msg-ram
         - rockchip,rk3288-pmu-sram
 
@@ -89,6 +90,7 @@ patternProperties:
             - arm,juno-scp-shmem
             - arm,scmi-shmem
             - arm,scp-shmem
+            - qcom,pil-reloc-info
             - renesas,smp-sram
             - rockchip,rk3066-smp-sram
             - samsung,exynos4210-sysram

---
base-commit: d724c6f85e80a23ed46b7ebc6e38b527c09d64f5
change-id: 20251123-knp-soc-binding-96e2798dcfde

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


