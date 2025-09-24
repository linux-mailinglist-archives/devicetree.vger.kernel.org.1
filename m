Return-Path: <devicetree+bounces-220931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5971FB9C83A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:21:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 47A5F4E313D
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 552332D46CB;
	Wed, 24 Sep 2025 23:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fyVDwjd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C4125484D
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755926; cv=none; b=IE5a7xAEBEoFfD9C8lUeh27D5BColZISFkLYsBvAu5HHpXummAdFN47HKn5PDuq/xo79XI2oiaIOdTli+yAQ3rd67imCurX/KDxTAqaU/p9WqHzw3rfl7VV+isHhco4Ci6aV3XElnPjXZyrci8UrTOxivqjdQTaxLFbNrxiR3yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755926; c=relaxed/simple;
	bh=+qkSekDGOjNKG/k7dn905Dlzpg/GVr/t9jtr3sEQRwg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=f8dU1S+G/4vKEdpMff94L4SF5NUHCPd6DVRuCSKT+NbP6KzmZrs3EPCdNmpAVrJSYNJKsGjP3Ujwg4ojDutJX04eIZWsHU37Gvdx/9VKmkQp6wmbAxJ2U6ReUNl+mjK1RXEuLZp0ekdi9DYbmpqkIsCyktFbentpzr/ADOoq7nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fyVDwjd0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODGCTd002400
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=5ypITQmkoYFzW0JuVREFsC
	yxSWVZiss9ZTnyYLXQQuU=; b=fyVDwjd0aZ9gk527VorQYQ5d1tzMA9uYf5wfrF
	95hMtjqb56a/LsAQlkXyGHCI/l6wIs2hnD8FnYvf/V+9fbMGQ0GI4CswqSkw6CEz
	TnRgSxXFVi/ALu1S3m6JfIme3chs3rRxe6zoFpqWJI1FkTwul3bp94Y/I3OLwAjT
	Y+AfxVn+5CAulN5XkRjjvXF1Amk+oImbRNxMtQRmPzmHeBRlPx6hAff/qxXamUqn
	UZzN//xzlkQKb54RzfcW8q7uanAaiT2XyFh7S75fZbFehjs0v4VO03bmTB33hWIU
	pGx9+wiB8IHxkePSmWHyq0U3n8jvn+Xv/CiYXTAkSm5BFkgg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p13j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:18:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3307af9b595so294950a91.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755922; x=1759360722;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ypITQmkoYFzW0JuVREFsCyxSWVZiss9ZTnyYLXQQuU=;
        b=RauuBaybh8Ld8Xs8Sbmn1fS5yVKCyLHlntYRN3/8NQFDwrm+PusrYnPS+SSamLoFsv
         a+aseRTEkNaEDYXHYgyoi2W7zPcUikFTXGRE/5m6EmXvtA5ZRosjgQl05lRsAtRVw5H3
         0SXCecCAPqT7k+/WyWfqsYtVt2E3Vqv3nGsGP47Jlfj0cuiU2j4gh1I3aeJ98LfRnpEY
         srqoXlgfihT28beYuU1VFaRtM0EhGMuC7gcbN9SYv1uRnpoMLg9AurBO6jMAI+SxSvDo
         ws8G2wTcixKOqV3Ac/dXVFKsvKV+ol46GRziOiuKXj39RrWj8//NNZ/nxZYnax4aAd2a
         5vKg==
X-Forwarded-Encrypted: i=1; AJvYcCWPEEObGs/P8OemSzj+qu2K5cdT84SXPwgLzqPpqq+lh3Uk4K+iBWof+79Vr55HzQxu+BTwNTjun7WD@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb5tNrzRpHvfdNM+bmYUVInxkvhQqNtV0V/EYPUABbGY3EGKJw
	82owC246L6eyKQymNxgoOcmp58jRSrIb/tNZ1bqsnv1raoO4fBXxrReEeokaCtZH4cQCAjjdKDK
	Un7gYFdWBfQOFMTCatU7s+L97I4UlQic7gusFxah0NsSjlwROOy6zHTTP/iSo6PWH
X-Gm-Gg: ASbGncvzqED8wML4wxWYdB43gwQkFMHIAc0tlb5tYPTgWT8XiFlFrzsEoAyA0Y3xG4C
	0SeccX7I9B2UqO5FIp/nWrL6k0Na4tHPnEPzS9WmxHMNfOX5v+FUW3fTedK+KTbMQ56MqrDiZjt
	wSxlLISYu/1uzfqjSB1CWaOV++p/K9ohB2vM0G8G3/GQACmLzghhaNjHDcV77P2WHciTOTmcVLA
	VvmzRnKydsJ02fREU6+f780F30B5RL54TO6kJopQMR5fn6WaQ2pPv72jPdfgLL3FJK8ocRuAZAW
	rCGRp4w5GxIdU0WX9TgXrooMg853lSFtPsw14Pc5sEGv9zBFzv9WtOM9lX8p1PfQI+gMUxiPkL/
	kAV9plTeekpqk6S8=
X-Received: by 2002:a17:90b:1e0a:b0:32e:4924:690f with SMTP id 98e67ed59e1d1-3342a2437c4mr1307651a91.6.1758755922279;
        Wed, 24 Sep 2025 16:18:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnkwZW7OOokn8gI0yk0E3I0Ln5FclDoYgmkYTDIztv/RM5NLyWdggkDIInIpcowpngDxQM+w==
X-Received: by 2002:a17:90b:1e0a:b0:32e:4924:690f with SMTP id 98e67ed59e1d1-3342a2437c4mr1307628a91.6.1758755921840;
        Wed, 24 Sep 2025 16:18:41 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53d9160sm385470a12.22.2025.09.24.16.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:18:41 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:18:35 -0700
Subject: [PATCH] dt-bindings: mailbox: qcom-ipcc: Document Kaanapali IPCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-ipcc-v1-1-5d9e9cb59ad4@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAEp81GgC/x3MQQqDQAxA0atI1g2Mjlrbq4iLOEYNpdMhKUUQ7
 +7Y5YPP38FYhQ2exQ7KPzH5xIzyVkBYKS6MMmVD5arGPco7vmJCSSGgc633vvNEdQc5T8qzbP9
 VP2SPZIyjUgzrNXiTfVnhOE7/l9eKcwAAAA==
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755920; l=1157;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=+qkSekDGOjNKG/k7dn905Dlzpg/GVr/t9jtr3sEQRwg=;
 b=QQAn2FTnIVHInKPF5KCqvL/M8G6naMhW9ZVdAAUor+YhEmraG26rDoDSqc2sr6WTpTQ57JzrU
 XeJwFCepJ6yBA2P/cO8VwzTcJwI93Y2YPT1AF4d/GohtRYG6dyhtX6o
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Ct-RnFAEgXkEMpha9SV075PoSvjt_PLe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXwxJGuduKgJtY
 BOEYy6JX8qb/Cgo03uJQYMc8+j9OGPqJdjYIXaFnU+fVfUdRPzvysQ5wiPDYjrtRiisd2MaNu/e
 AFlNgHDssa/sdBjKNZRmrtRjbTHcvn40wliZrSDuxKF1engX+P51z54L5zec4vse8kUSEgKsSB1
 1UuZSHdaDRXTDp1DvhzKLu7Bc60Jvsnu2UGSAJzXvWSRc40oSCiuxB1com1bvuu4cHqMh6iSYGE
 zgmJpqRu3bb5KtBMz/Z+g6yyEvkQulJVgLfnMwKkUDbSbx0Xu8nQ84eql0tUSshKGIBmQOlLnWX
 Z3O049dxdw4lqR+QHSfHjpa/h/sLs5geFUps6d7JM+jvh7OcpYwWqwNDJucNdufEs4TkTkuFb7m
 sMt6jSva
X-Proofpoint-ORIG-GUID: Ct-RnFAEgXkEMpha9SV075PoSvjt_PLe
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d47c53 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=U9C9QlmAXZJKE0jXtekA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

Document the Inter-Processor Communication Controller on the Qualcomm
Kaanapali Platform, which will be used to route interrupts across various
subsystems found on the SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Add support for Inter-Processor Communication Controller on Qualcomm
Kaanapali platform. Including the document and the new bindings.
---
 Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
index e5c423130db6..ee3fe093e3ca 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
@@ -24,6 +24,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,kaanapali-ipcc
           - qcom,milos-ipcc
           - qcom,qcs8300-ipcc
           - qcom,qdu1000-ipcc

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-ipcc-00633383aa48

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


