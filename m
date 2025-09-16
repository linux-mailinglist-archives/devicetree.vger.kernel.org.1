Return-Path: <devicetree+bounces-217706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EEEB58FC3
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68BE51BC4A2D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 07:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E832820BA;
	Tue, 16 Sep 2025 07:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iABD70tt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA1C28488D
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758009525; cv=none; b=s2Y/zx3LJmYX6MDyaLShEZKa2XCurPhuNC/YgOH23/Aa05d4hctE7KIKr45M0bOj0f9aq4c+mYyg/RSYikunI1dzk/pq7xItRcU+Bxd2M/l05IUuYvkNXIFFeIMPcB0vRyMFOrRkhy/y0C2tYzcVWCAodmGerkW/7kuOdyg7TLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758009525; c=relaxed/simple;
	bh=zylmmscsnfAs5OtV0ch3oQtaSHtRLKMkmNf4bkdCBHA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hdO+2GxjzI5Ybj35qs7T5jCXo0dOYZMY/tbcwFtelJSIBXmVvbaA8BH8sKEzOQDmMIfFg81tmKOy8tDdCsk4kjc0zsHW3rH8bussDpsIYhfOPSBIcyPzTAbo5tBgCeU6+XVX9dhExC3hpxyVS2q9M1YB1Knn+XMgoGovbsY9z2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iABD70tt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3pf6B012287
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:58:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ot8w2T4cQuPGEePCaHCyKU6VR0cRvcl1EFBEGB7W5yo=; b=iABD70ttfChR3d6Y
	HgQavt7UtBhOmfLgr6+ig6ywP5XwOu4Tf+eUv0e6dCfnQcc3rSizG9DGw/ARBrNk
	Y8nJO8Br4PXJtdJ6ZbIylGagbS+8fGYm53Fr3TtarbLsLerU06iUbGvfczrbRo1v
	/50ik/e7jxu2xE41VB8eSeqFp61pJYo5mvmKLF5GBCx+wVFtpOTfTZithWl4af0q
	Mr2yBBhyzTeX8vEXWl8XBQ66sSEXF7hg3AckR9Fh1daQD4rIYpnFrZvrvb3d4XyY
	6BmVMrG2xNKz6SJ2NPSZwhcc7S7nUriCV622B5lkv4aTnhjifN74mvfRQcTsVpw4
	BVTSCA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g12km8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:58:43 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7725b77b795so4636636b3a.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 00:58:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758009522; x=1758614322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ot8w2T4cQuPGEePCaHCyKU6VR0cRvcl1EFBEGB7W5yo=;
        b=lhqEjgrUnxykzqHLgEjEWbF+0mmE4LCS37Vjtpxp/xCLoyH3xx6BgFlAweamv4uMVZ
         NhTHD892rPqWJnPZLcUKsovYjoVRmB1tIHNQGBJv1Pfi7Xr5t8jaEzUYERl8oQm34tu6
         Qz3nNgeVmBOl1R5CkFUgFZtE8cKFXJjgzPfOE4I0CTuPIQ49g6ULaDnmFPDjHesG1O4Q
         KgpRpxW6vM1GZhZ6Min32S6u0AA56840i4f5LB0yGpcjuSjjKhl5A7N3CfJH1eofQfPF
         lPdVJVSZJflM2iVU8j2oRGZuBCUAKfYLQ8G6GGBA3pVBCSjYTbkELW3uNj1m9yZE9E6E
         QLNA==
X-Forwarded-Encrypted: i=1; AJvYcCVi2WQG5zD0bOzOelBbJsAZru4rptsDhODQFEZqFvC2DF6MefiueuKIRc6OmZQoS/SE1edNY65VfJAq@vger.kernel.org
X-Gm-Message-State: AOJu0YxproifLVfRdw+MRjufNQASxtm5CbzmtkyFh4jMhp4RXVwPyVP/
	t+XEqyUHvvql1WtywA8ToXO/gp1Ksn2mXLvKvHMQuhjvO7BGNn92Sdo2CQZrVV0HEXR0uZrAPSp
	N0cXCfghfygAgrGCKcMVrgTWt2Zk/cg9WEb1fO2iDr6QmJG3JByMcflOZ3t5d77ge
X-Gm-Gg: ASbGncuicWQmFl8gSR2Dj7yiP7mXX+dAOw3yqp+qfcioYJswh9L9kQM+yfcKuzVys6t
	k6SPOJUESCL57LsIPb9iMcYBMrFYnpnum+esCqaNPf3V9RoUGJm1zSYVUDxbRVAz+xB0dlp9jyj
	IRqq19k8VIVLjnf8vx5eM+nCMzI6kgvNkn2N8f9tyJdGdXp2gwCGxVpcijoVvFnktH4YNXHxl1f
	Hx1LpzkdkY9X6ts54xqLv7x+CizgVj4npKTJCLsi6h+v9ExJ/Yx1mDN2OHV4Jf0GSAiAL8BS4FR
	7MBYIXAgIo/G8NVyBxvVQoGR2oCS6fanYI3EQUhghNHdkxML7hhuTpShKbwCAc7op3u5ydZU0nF
	VdT1eHVttbvEovSDwuVxzLZLucA==
X-Received: by 2002:a05:6a00:928b:b0:771:e1bf:bddc with SMTP id d2e1a72fcca58-7761208d656mr16834708b3a.13.1758009522137;
        Tue, 16 Sep 2025 00:58:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKdHClzzvHyazfnyBj58lGy8nWw5lRZsRQKuhdPh9d1u2cuL43JD3iU1uvQJq5lIa6GOXV1A==
X-Received: by 2002:a05:6a00:928b:b0:771:e1bf:bddc with SMTP id d2e1a72fcca58-7761208d656mr16834669b3a.13.1758009521616;
        Tue, 16 Sep 2025 00:58:41 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7761af2e09dsm11292222b3a.76.2025.09.16.00.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 00:58:41 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 13:28:16 +0530
Subject: [PATCH 2/4] dt-bindings: rpmh-regulator: Update pmic-id property
 info
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-glymur-rpmh-regulator-driver-v1-2-bb9b00e93a61@oss.qualcomm.com>
References: <20250916-glymur-rpmh-regulator-driver-v1-0-bb9b00e93a61@oss.qualcomm.com>
In-Reply-To: <20250916-glymur-rpmh-regulator-driver-v1-0-bb9b00e93a61@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758009510; l=1081;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=zylmmscsnfAs5OtV0ch3oQtaSHtRLKMkmNf4bkdCBHA=;
 b=vEZhDtXr0Mqqp+NUVl5eEuLTfBqEdDHfRiv322bCrWfCiAWuhpP6nlIrhN9pT1/r+gK21uA1D
 OkUw730yfSFA10uH3vbyBoaxWGmJx1J9aLjIoJTjLR6IEQJWmcGCqxv
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Proofpoint-ORIG-GUID: tINWpY_fUmON7JuIXyW4Q5g0NixuacUp
X-Proofpoint-GUID: tINWpY_fUmON7JuIXyW4Q5g0NixuacUp
X-Authority-Analysis: v=2.4 cv=E5PNpbdl c=1 sm=1 tr=0 ts=68c918b3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=B3qX-pFcB6t4li0ik0cA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NiBTYWx0ZWRfXwRvNup4i2g2J
 cArkzJU73n3PIPM43x16IrJ9oJ6fed9cpiedkstF/m4SNAG2ydGpO/hzsSn7w0ypOoN38hqaH6v
 SrqFNsyQrSXF2sWjEL5qerDPswbxcWHJ24pJYf9WguClUqAh0w5XQNU5jN0R9WCqiUn4nwcUeKf
 Oty6fU5a0UFeUFhunJ78JsR8gNjBC9atLlZTUR+SNODGfy16GQ7lx5Da50BT+RCWhR5/ZdKHE61
 XDB9d0ApiKNIEGGCBGpdHAeMMsqRe3MGol0zFQMFS0z8z8lEXnuhrjwuA+8rAw9byOkgYfgpKnt
 XLdi/zGqZO17LtWOGJsCjtVLK8TRy7XbChm6WliHeWNTL0nMBG23oSrHkUckgpNaHTYSgkSMpgg
 WaQZacdt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150086

On new targets like Glymur, `pmic-id` will have this new
format `[A-N]_E[0-3]`. Update the property description to
reflect this information.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 40e57b10ebbebeff130871b6d978df64111b6f29..40ddc64577e78b5c0dbb7b4e8893a08e8b37c92e 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -108,7 +108,7 @@ properties:
         RPMh resource name suffix used for the regulators found
         on this PMIC.
     $ref: /schemas/types.yaml#/definitions/string
-    enum: [a, b, c, d, e, f, g, h, i, j, k, l, m, n]
+    pattern: "^[a-n]|[A-N]_E[0-3]+$"
 
   qcom,always-wait-for-ack:
     description: |

-- 
2.25.1


