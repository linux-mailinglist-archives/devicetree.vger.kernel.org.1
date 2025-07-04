Return-Path: <devicetree+bounces-192905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39130AF8826
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:41:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8E293A4284
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 06:41:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310D7261399;
	Fri,  4 Jul 2025 06:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D1ZZzbLs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932EB2609E6
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 06:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751611285; cv=none; b=WBw2KP6dWLMPxB2m+8pCbaHwU95mMwRQuI64oTZ8vISo9YlWyUyvwmW/Ob7KQYYKuZlgs+vb+4ALtQdex2QeIbIWCb4me+0iGFPqf7Gq5Gj7nRRuxMiGY45Mh3zKR1OUrzkTypsO/CcYpgpkLfZeBcredIHeTPTU8uJJ+irCaoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751611285; c=relaxed/simple;
	bh=jty4VCWzrjoGz/VBm938Vlu8XxCsF0DbU+pvnjj1hug=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=W2p8IotK7US1BA1Z69Gjl0LFi5cuLeKHvzA0lJnTTZ9dAtn84h9b3sXgof7RiDo68js0YvwCGQsiQS5BcGc5SuACDsXhglpYyljsC7sVwtjF0gv42ZUrGo4lRszdxlO3TbyyRHZrYp5vaMfTCaz5sQ8OcPb3lcZM1eq1nZRkGKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D1ZZzbLs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5645W9Fe018597
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 06:41:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2XKEYcroMPJpNNqAp+mZe5
	8vSDLDJjE9DwyGFdh30rI=; b=D1ZZzbLs6a1Lq85FSu0ahlduCwYAZTLHUIh5dd
	61TOJ6/se2ZcLb9HzwOhgIbXmhw0M++OPks99shrmiuAn75FtZ25vPBAq+VFdWEo
	CzDjrogwuOVmMUEWMNujgJxjOrMeaak07lboT8yNaOROEszsIKZjEBkwE/uBswhM
	NA3iL555gsfKitfp97nQ3hXrfbzG9WJcLpPmRlnUSoggnpd9A4XnmJE4c8wrJ+BA
	ZkrgVS4UNfrUZtXN7nt1xni4SXlRNE9Z+13mwd02/UQ5qPYLmA12348FkAxigaJE
	h1CCfvf+HKVpz5EUA56wwbbevK05cnJqSUMxs5rG7mgUiPDg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8fxtv1g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 06:41:22 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b38d8ee46a5so546464a12.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 23:41:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751611281; x=1752216081;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2XKEYcroMPJpNNqAp+mZe58vSDLDJjE9DwyGFdh30rI=;
        b=Ua9xJXWFsMjYp2Mf8EfqR6iRffH/l9yWk4xrNi4OHAuelCCu1nj5BPgcKWmS61o4g1
         PHDlqQPSk2dtNTh4pu2Cptj70snkAwMdsEeU9+23kI+3yDD1PjtH0lCav1Dmfqs5gYKk
         fxIfUQdYIuLmHOnA6yiBIf9MzHCcJ4jvCAoAisYg9vtozY3w01b4/KXjWUe/V55PoCCb
         vZUp43uo7ccWIR1J/b99iGomCtkOqfb71fzzTSTglVp3FJXMZ4/mIsT7cqyl/51uo0vG
         euwgwH3Rd2rHGb/fH0eNq6uTdouCd+3SvjGg25rvY0ALTL/3NC2FlhDGVcFbLUTPYlD1
         XAUw==
X-Forwarded-Encrypted: i=1; AJvYcCU9dsDmDmGavU7Y1hyAdJt9sXUzOOSFBgc9bCGunSmJ6a/27aQjusEMzQGBE6I6qRBbOwZfr4mB6MbO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgm7N2WFr5dQFNp7cjXno9KiHbacRsHGUqWNF9QAOGjsMrPXkF
	dW7Ytneu0vnx0o41m/1tyJ0s/FHkVbsxGUIgvCKvaYNrSq9DXjvsqVBoVl1ESV224rxOZCe9Rw7
	T0yGyWKWMY9DgLXUGPsCioEjf36qRTt/a22Xp7DP4ykVplzHqFk+qB7mKKO6xQQHD
X-Gm-Gg: ASbGncuPepLSoCHph1o+uC30R+ccmEWeWUyAPzytHxYZPwkFzrzNnRO90ZUPmVtmIsU
	2MJCUkieX20ZUlFopoYMWj0c3piNbqBPAyOmgPn6s2T3Y1AMvG37tn/CrxF97zgfYunFrdkiGm1
	nXZGXlXrBtBo62pBCEXsjAOdASKEEgUn7NU2jVMMQ0BQMTg5CVyiLkgREsF9aPdsBE7j8v275Pd
	twMlctUptPOF6We+MzoI/mpP5RRpYxwHxJD4SFZazo+Exa5Ax66N9GQZSD0wSRdwLcg/t9XoQ+J
	n0BAv+/CwoafNgI0q6HttALRJeEPTMuSlySdIVFDX3CEYU/lafIJGtdh8vpC2C/0QD6d4eMAFiS
	q0jIzscoAkg==
X-Received: by 2002:a17:90b:54c8:b0:30a:3e8e:ea30 with SMTP id 98e67ed59e1d1-31aab039e26mr2940422a91.11.1751611280920;
        Thu, 03 Jul 2025 23:41:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEM6kR2Bo403wYsU3oVcxfndr416uAho4dUpgNjxtmlbh16wgioPyf1W4TwF2j2D7ijs2t0Nw==
X-Received: by 2002:a17:90b:54c8:b0:30a:3e8e:ea30 with SMTP id 98e67ed59e1d1-31aab039e26mr2940389a91.11.1751611280457;
        Thu, 03 Jul 2025 23:41:20 -0700 (PDT)
Received: from yuzha-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae6b6casm1304746a91.18.2025.07.03.23.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 23:41:20 -0700 (PDT)
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Add WiFi/BT node for qcs615 ride board.
Date: Fri, 04 Jul 2025 14:41:09 +0800
Message-Id: <20250704-615-v3-0-c5f6b739705c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIZ3Z2gC/22QzWrDMBCEX8XoXBmt/mVK6XuEHmR53QjquLFsk
 x/87pWVXkpzEcyy882s7iThFDGRprqTCdeY4njKQrxUJBz96RNp7LImnHHFDJNUg6IcAlcAFh0
 4kje/J+zjpVAOHw894XnJsPkxJAOm5AusqV5/WYI5pQWrtXZMSgr0Fq8L1rc99n1MqT4v/iuMw
 1Dn523PaX1Cuk/i3FS200FZIXgw3rY+M/vQe6Otta0OwnRtQKeFIHujY0zzOF3LmSuUSn8uWiH
 nB+dAOil7NOJfgYJZ+RMrz9b8GZ3RLCjP4Yl127Yf+6Ax/GoBAAA=
X-Change-ID: 20250704-615-21c25118e919
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751611278; l=1477;
 i=yu.zhang@oss.qualcomm.com; s=20250625; h=from:subject:message-id;
 bh=jty4VCWzrjoGz/VBm938Vlu8XxCsF0DbU+pvnjj1hug=;
 b=grlLrVJ6jx/TTDEJJuwgYqbqX7dX05ZxdRVsdgQleiXqmHnAtNBP41M88XBTIPP3XCm8zOXD7
 3qROm0MR4D8CFdOQAQ4YJy6X6H0kV3YMpc/PkljCiemX+QBOmQMbk5P
X-Developer-Key: i=yu.zhang@oss.qualcomm.com; a=ed25519;
 pk=ZS+pKT1eEx1+Yb0k2iKe8mk1Rk+MUki89iurrz9iucA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA1MSBTYWx0ZWRfX2hxLOaGv5Eha
 L0GU6ICUKfnyVseohX5PP44oA5gu4vK+w9kPeTi/K6+wbvgDHZLWGD5F8imWupEGeTrft6XAwur
 uUBE2v424Yj1OCmx2T320R51AosD/vycHRJozoUNJ54pG8bbjDbT0SV/yQEGQVahtn9f6hZotWF
 A0CEVIwiVSyskF+ceIaKN5SN0OsXsEo39VrvAM5MOk6krkh2Rl0h9c9M5jy8WTPMovu5PJmQU0Q
 r2NZqkLDPqRyTpnixBi3V3WMPcMhk1SUbl3Kv0qmQxJh9tdBxrAs8gDYc7qQOOtCu2LpPGGt9iq
 TADS7To4oAJOSiI2Saav+IOXz2AwoPATZZjCIvavqu5X4YAStI36Xzw5pg5QTzTqIrRM9Pxiwqy
 lnxH3/ZKhqy/YZwZ8W+T3KZ7enEtzxopBfZqhdyn+/vx8IboCzqU8D0TTFUngWuk/6G3i4zm
X-Proofpoint-GUID: MVwN2TEk9wrW7O7_OnMlnFHIsYkNr_B4
X-Proofpoint-ORIG-GUID: MVwN2TEk9wrW7O7_OnMlnFHIsYkNr_B4
X-Authority-Analysis: v=2.4 cv=TqPmhCXh c=1 sm=1 tr=0 ts=68677792 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=TmzUbGvDyKMaPb01JRcA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_02,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507040051

This patch series depends on:
- PCIe
https://lore.kernel.org/all/20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com/

Changes in v3:
- Formatting: adjust layout based on reviewer feedback.
- Fix DT checking warnings.
- Link to v2:
  https://lore.kernel.org/r/20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com

Changes in V2:
- Correct the version metadata of the previous patch.
- Separate the modifications to the DTS and DTSI files into different
  commits.
- Formatting: adjust layout based on reviewer feedback.
- Updated the email address.
- Link to v1:
  https://lore.kernel.org/all/20241203060318.1750927-1-quic_yuzha@quicinc.com/

Signed-off-by: Yu Zhang (Yuriy) <yu.zhang@oss.qualcomm.com>
---
Yu Zhang(Yuriy) (2):
      arm64: dts: qcom: qcs615: add a PCIe port for WLAN
      arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes

 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi     |   9 +++
 2 files changed, 144 insertions(+)
---
base-commit: 8d6c58332c7a8ba025fcfa76888b6c37dbce9633
change-id: 20250704-615-21c25118e919
prerequisite-message-id: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
prerequisite-patch-id: 37d5ab98a6918dba98ef8fd7e6c91ab98aace170
prerequisite-patch-id: 1693faa1e23bbb0a37d4fb9cbe13e5dd43148ce8
prerequisite-patch-id: efa688b2ddd5744df7aef40182787ee4ceb90c98

Best regards,
-- 
Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>


