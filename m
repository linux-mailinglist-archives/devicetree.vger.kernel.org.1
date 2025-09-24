Return-Path: <devicetree+bounces-220936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 157D2B9C86A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:24:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CBA2F4E0F1B
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC6523814D;
	Wed, 24 Sep 2025 23:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JpzONz8J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A1F2D052
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756245; cv=none; b=KGeFYc4KKxXer5BWUIagVqrZIldn+oSLXUKwgRZBZgDeIV/n6MVvQK8N040iJwLR5ZhWQ7wnq1k5pLkcBEXDrsI9UgbscWPqlqnqfPmT8i9/KT4EIV4NKbRg7gCfb1yLMy8qb4px1oI5aF0Hq295/+cT0VQ2FKDEU7tYzC0gTtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756245; c=relaxed/simple;
	bh=J/wUZYvsar3Y2h2UCXq2yr3vgsHaJOw0fQtfmhXPwDM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=UOYaLeIhJVLJ8TtUVIDMVtlWaPajWWzM3hRciqzvb9OkgxLp4MsyKQGgdO3eeHdtUVg7QMktMErki4Lq+w7WsdZ/xCQP3E6HTlxRDuo60YmEdDUL6SEW4Q/YyAW8mB4i0aN0Fh+oKQDQwjRF34SjQNkB2sq/vjulJsQvTS+yLYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JpzONz8J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCcBFU016453
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:24:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=venGlUBJGXHVgO4PVr+luN
	+jDDTyagN3i/2SVPdTnIw=; b=JpzONz8JYWyMU8LMWOq3nQ0Eaila/kLMXac4cA
	hCjWEe18jj4nRz+BFNDjzobtID99Ubs1bcLbduPDI+Aml3BSC18zEXyAjdbNT/bg
	ojztvGGFOZ27lBEq051UX15i6eQfgS55VvAdTtIEWbx0OmBmHTjPNDLe8pNF3XYo
	Q2eQ8UwTApFFlKUc8bWLJOfQ4KURyRZeH8igCDXeAAXf5OiswYWdzh7qifkAvjUT
	itKGPL7tGwDP+g2Wief9vWQF5GqKbVlvngP9j6wgH0bvKy7030q3yI6QHD6bMX8C
	5tWLYiQb1SZIP1icU7i59nueZg3D3UTj5Fyd9q3nU3sjyEUw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyhubp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:24:03 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77b73bddbdcso229840b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756242; x=1759361042;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=venGlUBJGXHVgO4PVr+luN+jDDTyagN3i/2SVPdTnIw=;
        b=XQvXX7qk3DXYvEcAURWArldS1eJb2a4hBnx7O3Qgp4t2GVD7XMGRFkFqxCD5CBuKQn
         U+MQ0X20rQghyq3g1+WelEQwqQ3sIPfWExkPHZnLJ9VZ9J7Sa1BYAHhygE6cj+HXYrt+
         6+2XdR96c8n8mJNnQnJAGNmOEvH6nGM8a0WxyoaN6ccS1MxGU327hhh6wJDlQzItW8gH
         MNax3oICUF9HGwQvRE9hkfh9gJjsuoxv7g9BUdvXaazl7IuXWSuY4sqsFPDjEGamJ9I3
         R71XpJT31Gl7Gk8rD0EVJWN83W/9rPsyyWIsvZSyvfiKSiUSiW+fYtaRj8hdhs8jIPbI
         BBAg==
X-Forwarded-Encrypted: i=1; AJvYcCVsTRNVvPNbv4ST3JNb60h7TzdVyVLcOQ9DqkWS6QFqf1pvjTbOZ05uY0XB9yvnCDu2hcsLDUhw0GRU@vger.kernel.org
X-Gm-Message-State: AOJu0YzASbzjebU+icr8GG5SThydtGLHklOZk+/IqAUvwZ71mPXjFrOh
	BBXv86WTDtCCyAvnEnkzrT6IEpcL0L9yZ/Z8TbvC/fL8Jg3vs0BhzbNBX63w6p9VILeEimhwOjR
	B0cBhVk4NLQ23VcANXE0F39IkjC+iqXOf//mGsiIj1kw9rIDxWEwKe4oKIneF89sb
X-Gm-Gg: ASbGncuB2GfkstGshN4u5VYnx9f02p+xWvi02bCkC9f25Ba8q9R2tnZD1KYWwBOBhDc
	qzTyv70n5ifiO4uZp7aLITmag2Qqcd7d9e+BzMOqlAl/DBvK7ZhFPtg4rweU6BdaNZNlYGqMX8N
	qOAx7z703NJpMo30KY6AOkPiOQ536eRrLivTUCch38WcIZ1hOH92D/HjS0RcjQ8x/S69pHX5WJU
	orTqCk7l5A+52Ge7IPo00Tm5jPNuDNZcZXhAgWqjquJKo37VAuvDwcYUrWpGBfKNPrc3nX2KDZS
	fgx2OORuSql0AkCyms6qSjOUzuJXz1lbD5UePqoV10ApmUMwWqLm2lRbnPYp1iSbkXMNsW7nVWW
	947EkfUXvUCpkf4E=
X-Received: by 2002:a05:6a00:1a04:b0:77f:3826:3472 with SMTP id d2e1a72fcca58-78100f78564mr551423b3a.6.1758756242241;
        Wed, 24 Sep 2025 16:24:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrMYAL4mcDsgg3Sh/tiUOQ7NRb3zZGfekd1omIF5BXOfVOq71sZSvHV3cWFQc0HY18frAdXw==
X-Received: by 2002:a05:6a00:1a04:b0:77f:3826:3472 with SMTP id d2e1a72fcca58-78100f78564mr551395b3a.6.1758756241804;
        Wed, 24 Sep 2025 16:24:01 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c279f8sm156571b3a.98.2025.09.24.16.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:24:01 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:23:56 -0700
Subject: [PATCH] dt-bindings: mfd: qcom,tcsr: Add compatible for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-mfd-v1-1-6c8a98760e95@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAIt91GgC/x3MywqDQAyF4VeRrBtwrNXaV5Eu5hI1iFNJRITBd
 3fs8oP/nARKwqTwKRII7az8ixnmUYCfbBwJOWRDVVavsjMtznHFZQhYh/D0b0ON6xzkehUa+Pg
 /9d9sZ5XQiY1+uveL1Y0EzvMC28XrRHIAAAA=
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756240; l=997;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=J/wUZYvsar3Y2h2UCXq2yr3vgsHaJOw0fQtfmhXPwDM=;
 b=7mUwTYmWH2cOVn3SIvSc8XbSr6ganRZpjywQnoLF1FSziThRn8e6rF5DGYgh1G8Cfp9sywakk
 Qp/whHZyOdYBS0C4W7H2RsK1SsZjGqcqASh6r/Fr/Mot9GL6yHawfUr
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d47d93 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=P9gvD56xMKEh8kHMZp4A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: A8w2yJ4hfPvw8ANfYtkgXUDSjJGKX7Ff
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX1i9ZXlaqttDL
 lbF3EL6cCkts+r7n1ysqlWsWJEId3RM6R3invpNVIdhUJix7sBAR9BX+hMWyPDMmiw1Wl77WD0T
 sWTdfLU9N/0XaYtv5d3UiBFtF35+tdXk+0lbHzTtwZMlyfOE+En1PS1yy74kQfPgSfAdwgr7GRZ
 5GYmq7+noeFUvyUZb93vnTreafkFNI9g6SGgi1m6bb82NM3Gzz4/mMEs7Eb6FfKUpbg+1lQQWBo
 AtALOuoAhtxpdsPOzKa44PP/8RlOXSm0IXyqPumfni0n5+aSxCzbPCgwZ6p4W7GgOz8BBDfhEZ8
 RW9pLxQVW+6FtoYe68oiNtKYH+BH0dWCmiwosBKOM9wBHEEAvLn1zRjuUMgFkfww44bTIrIDL4E
 0gNDPj5h
X-Proofpoint-ORIG-GUID: A8w2yJ4hfPvw8ANfYtkgXUDSjJGKX7Ff
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

Document the qcom,tcsr-kaanapali compatible, tcsr will provide various
control and status functions for their peripherals.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
index 14ae3f00ef7e..ae55b0a70766 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
@@ -48,6 +48,7 @@ properties:
           - qcom,tcsr-ipq8064
           - qcom,tcsr-ipq8074
           - qcom,tcsr-ipq9574
+          - qcom,tcsr-kaanapali
           - qcom,tcsr-mdm9615
           - qcom,tcsr-msm8226
           - qcom,tcsr-msm8660

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-mfd-4dd3c81e6b9b

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


