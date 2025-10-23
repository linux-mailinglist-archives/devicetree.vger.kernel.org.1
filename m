Return-Path: <devicetree+bounces-230138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D04BFFFC7
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:44:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A988188866B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8E73019BD;
	Thu, 23 Oct 2025 08:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NacakziX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62BF301707
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761209089; cv=none; b=oJXW9Y2jis/H2KcmkzWvTd3YUGa6Vn1t+qXRwuxNDwAYlXdgX/F5otaT/TzH5YMOp4toniP3w+8YRtroJtkbuBZNcbcMIeg03X1Y96p4n/LuZcRegm300+Xj/FUHgoqMezNZGPgc/MuwCrWKV5XaMvZyt1F1gc8Q1z8qgVqdlsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761209089; c=relaxed/simple;
	bh=TzxMEAEvBvay0xnUwiJ4rg2i0h0+YPV0RGQEHFd6Xsw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QalzZE6AG88ZARyYqqagrG3+Y3xZLKnYrcK+e9I4iUGMpkxAVvd+3/SkIhoAp8novRJJwZ0kfhP1CkAYOOPPCymqYp3Ylu8F4eVPQ2hOeKBNSp92LY3q4q8ky/yvMCdlPuSh2vLUVLavnkHlqwkLBDeta9MkoY72ikp38G0Temg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NacakziX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N85KmD019068
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=eAilDezzajor08e+n9AuRt
	0YHOook8LfrgI0jRV38Qc=; b=NacakziX6eeQ/vHN2PjYgKzwr7Dfv0bBDI2Sqj
	yN5f3mKZdDRmf2FWbQzPCAKsKTRE8ZCqWoXtIuwBrRpfJNIhhH7kVz71wlTFO7MR
	gfGDmt+rTYBhhEAMW/tI/TEBrlo7tekb3f/QDGCWOfHUID9WMKuMm9RFheKx8nbL
	KmryD+bB29247LS5m0f1uagsp1Z3MLc/jqliCN8U3b2d2HJ1s17BhnxqAdbMuJeB
	AdUOcz9+c6+a2EUtA4Orm+7/ZyYKCG08sgvJorJg/dbRszd0c6Byuuo008+J+0jo
	yUmZokCWG/U1Aqrr9FhhO5QAAyr291fbPBJA2UEU1rwTHrqw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y67qhn4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:47 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b6cff817142so118659a12.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:44:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761209086; x=1761813886;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eAilDezzajor08e+n9AuRt0YHOook8LfrgI0jRV38Qc=;
        b=cV6QdYaETowHyIBzBaHBwDUIiUKxi1RrwfOdP7yZWX1t5GPr4eu3ypoKlplkeQ6JPk
         pitUitHHmun+YAqLTj0GhyWW8La3HnwigliuOeTBsxdMQQ8/30rAQpasdLNoxVEt7oUZ
         5vOJ41EBlFl4eLzouffu5mUidbjgTNUX7wLSpxo9um9Uw2vdkun2y9L9W/xaRPAmxsNv
         3b9EBB7Ejiwz6MYLGiunmgkKDGMmISqBwyMS0KozhvbSLYCvXelIAvHuL/N5ZrEKuyOr
         wQy6cSZryyAzu7933CDA8+xar0kecso1j/Vad0YEkZxKiNFKvF1IKbccyIuIkQqzmoMx
         3iQg==
X-Forwarded-Encrypted: i=1; AJvYcCUQiAYGDnn+sQV6/S/YS6oNmN5vNHfgTGH9J0p55p4tBKOaubDs2fA3ZJ0ib+uRr0Q6JWlWJt8Yj/RX@vger.kernel.org
X-Gm-Message-State: AOJu0YxJvj4QcdayF7r43JuSNmaOsWfMbtfWvMHqjh6sBmjj/0mcz8PJ
	CLNxbAVO6f3xdZsYmNjSF2oQL4U/zgfABKMeiE+M2D2QhNlMPo3hw3ZQ5EaMDucGTlBMnmIs1OC
	+3XY1466Tan0Cmgbh1qYJ3gHjFJPDMn463/7nDYYlb2Xmc7oVRCI/IOEqrHX81JPC2sBc/1jJ
X-Gm-Gg: ASbGnct8T0xle806fvVBuP5I2VUm4b/w3aFHTry5dklvqff9tk/3sI5BmV7eQGXVCuO
	THw+j6ShTQZNZg6xwzpp71k6YEwSzTIP896ONsGHwlw7SSfdfspjZdoS2u8V9/d0O2as50UWj4N
	iaWZ0FEbbxQ6YVYiATD97L4dp357ZnRs0o7B3hoq4axTEMjRpsWbAMRxPjCIU3XQnm8VX94qFDw
	1SUkoZfnLfoqbFCJT12YqM/tzL6J4ekmHlWohBZLcKEky5zZ9ySRYq6hFQXbt3VgI+uuaInevA7
	Jb7DtUHl87hRmlM8JjfGfZkyXqh0PdUxKE4Q7xyNtEg8d/g+9Ay8eciVk6mlE3Rj7+bgVsniE8G
	sPVQdjeQNcMSM0t4w+SrePHQLFnYAb1IdVg==
X-Received: by 2002:a17:90b:1e08:b0:32e:f1c:e778 with SMTP id 98e67ed59e1d1-33fafb9755cmr2113291a91.3.1761209085825;
        Thu, 23 Oct 2025 01:44:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhmMIxVjdwZwB+RL6W4zlRgSWTS+YxPr19/elZcrqqzsvZ7foLK82FOM3+gPdgpiajIHnRSw==
X-Received: by 2002:a17:90b:1e08:b0:32e:f1c:e778 with SMTP id 98e67ed59e1d1-33fafb9755cmr2113253a91.3.1761209085336;
        Thu, 23 Oct 2025 01:44:45 -0700 (PDT)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4c056fbsm1391414a12.17.2025.10.23.01.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 01:44:44 -0700 (PDT)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Add rpmh regulator support for Kaanapali
Date: Thu, 23 Oct 2025 14:14:35 +0530
Message-Id: <20251023-pmr735d_regulator-v2-0-452e1b28cd38@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPTq+WgC/2WO3WrDMAxGXyX4eir+SZu4jLH3KGV4sZyYxUkqN
 6Gl9N2nJRcb7EbwCemc7yEyUsQsjsVDEC4xx3HgoF8K0XRuaBGi5yy01HsltYEpUWX2/oOwnXt
 3HQmC18GFSh+UCYL/JsIQbyvzdObcxcxn91WxqJ/tSpNWl/A1TPBLWhRI8LbxaJ2tXVm+jznvL
 rPrmzGlHQ9xfm4GwsvMZa+bRiTM2a1lj8XrRlc1tP09zQQ0pe6PxVNckGWGZaouG2kPVf2J5p/
 sjW3Pb0ytMOkiAQAA
X-Change-ID: 20251023-pmr735d_regulator-fd2faf72613f
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        jingyi.wang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761209080; l=1248;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=TzxMEAEvBvay0xnUwiJ4rg2i0h0+YPV0RGQEHFd6Xsw=;
 b=FMd18hiG+bzBkvhzRSFZlZ2mE3mYIpBjvVp3VRQdFwP4wrEovlSF7XYCV4RF5wR9KwBHbUjMJ
 7gqqS8lCcRTD5k97sRZbXs55k8+QKekmE7d+8cLUjyHZ00tbXnwHbiA
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2OCBTYWx0ZWRfXxg5XUqlO/Je9
 Juab9ZiP1Pf0Mg8bFXRQM3cUKavkeghYPPFhYJVWox4J8Y9nWFTrfwfrtDdzckkXWcvpNlvzhAe
 rQD3CPZnC3Ljrwz8w51/N/w4xWlvun82wPtd6aaVLLYc7QFBsIKPCQ3satUaYFhQBOxBghyJq4T
 VEbvz8nuLp+jEmdHFDb6EFnOQoExxAiEJFsig/e8VfIdthQTQH0kk/flsFCUoTcbytKIdYqVnOs
 TnnAqeKshniCmCQrA3rqgyIMftRzm9LjHlAVV327OkvacklMYb1Gb/rbSLkoXT3lJqZgLpENcBd
 oUzCAgROz0M5Obwze5eK757WeDOsQ+24Y+evaPiyhxk2K2rmss8DVl8n3oWOVi5Hj4143yoAoeo
 6rNdtvdxIpP+qYL96rCILEg82PL6mw==
X-Authority-Analysis: v=2.4 cv=LMRrgZW9 c=1 sm=1 tr=0 ts=68f9eaff cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Qzm-_OucbfTBZaCAGHUA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: FY0szJ6ZyHg7Q6SYEVIEn6VDgz_wyZSg
X-Proofpoint-ORIG-GUID: FY0szJ6ZyHg7Q6SYEVIEn6VDgz_wyZSg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220168

Add rpmh regulator support for Kaanapali by adding PMR735D RPMh
regulators.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes in v2:
- Rebased series and updated dependencies to fix merge conflict in v1.
- Link to v1: https://lore.kernel.org/r/20250924-knp-regulator-v1-0-d9cde9a98a44@oss.qualcomm.com

---
Jishnu Prakash (2):
      regulator: dt-bindings: qcom,rpmh: Add support for PMR735D
      regulator: rpmh-regulator: Add RPMH regulator support for PMR735D

 .../bindings/regulator/qcom,rpmh-regulator.yaml           | 14 ++++++++++++++
 drivers/regulator/qcom-rpmh-regulator.c                   | 15 +++++++++++++++
 2 files changed, 29 insertions(+)
---
base-commit: efb26a23ed5f5dc3554886ab398f559dcb1de96b
change-id: 20251023-pmr735d_regulator-fd2faf72613f
prerequisite-message-id: <20250918-glymur-rpmh-regulator-driver-v3-0-184c09678be3@oss.qualcomm.com>
prerequisite-patch-id: 3f755a759b681ac610fab3a3ab78cc50a82996f8
prerequisite-patch-id: 7f1f8d6f460a3032a7696290b5138da7d37bc6e0
prerequisite-patch-id: 264b32da8d734e44e6833d3ad5e7807f5fb88b59
prerequisite-patch-id: 0ebdc2319e0615065e1a0fe44008f2473e4bdb24

Best regards,
-- 
Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>


