Return-Path: <devicetree+bounces-201395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BFBB185DC
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 18:36:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F02193BF7F4
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 16:36:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8703C1A5BBF;
	Fri,  1 Aug 2025 16:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gMURKO6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFBE1A23A0
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 16:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754066179; cv=none; b=uQhW7ob8BV3FR9omLGE3QU/H4MyFKuW9mODBM4QEhXvufdwXIwzvT5OWPbh4+Qa5CmkGOk14Te4XM5s4ZOCI3/SSojKEeD7kXtN2JxG2S0hfw3+V3nX1eaeSPNb+Ark6e1DdG3KQD2AP89TzP+EHSwXaaUXv5hnQ8ZsCe2wqpgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754066179; c=relaxed/simple;
	bh=USVIRTYvItXP8BGf+5XlbaJOiJKBYU+1rya6gVHqn8Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ABpjLU0p+7kKyhLpnPxvqyPM7SjoUENP15PYuO1/naJx2h5sgCYLAGPL3AyEZIiPSGlf+Z1CMWb6wFOpB63CDCyaPuyoNy01Pvetnm07VH6n1cgTjMtn8p7rTqrbVtroKMDb6xsUo3NHHVOpFATq0fBseaqy71IQK/8pHK0MnuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gMURKO6B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5719H8hR003592
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 16:36:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=i93bfBUxotY
	KxTjsE6wzFA2Q/b0JiDSP7PrC2Xp3hqc=; b=gMURKO6BOkDUpx5AG86lNVc550f
	93+3neyFsNZzdo8c5nnixXNezJG9oyN4wbQkU5Ksu2NaPRoi4TKqfhtJp9pkp2tm
	jkKVk59SgDMUHki6V6SD89Fa+aJFHdJrQ+BH0v0QvJutYWpcAPP2uZl5hBjzmUgy
	EIAlX9qygfcAbb2sBA6u3KvMpSrxYCR1umva86r8FHiOoQGcz6pQua1AbARrHk8G
	+lFuxbYgJJfbKHgME7XtOw0R0VIsA038qmMMS4RiY+S0b46pWWXt+6AlIOiO7D8X
	ZnxNRihBxH8tiV14p0Blra/IQGZI4HhUXeZY7z980QHvJy+qlF0FF+JvGYA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbmc9wj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 16:36:16 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b42099903c3so317854a12.3
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 09:36:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754066175; x=1754670975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i93bfBUxotYKxTjsE6wzFA2Q/b0JiDSP7PrC2Xp3hqc=;
        b=CwvwcqeTfyx2mGywQnxJAo9PwASxGfNoJQQbUqkrBM24XIbWdzNnLp+U5WsX/rWc1v
         2hbcoML1vAAbndT8vLxoyDLLyPloI6AJJKMtyY95Rgm/f6rj419rBIbzUI5jB6cEsork
         sV0AgyoGqGOjrd6oCIg4+0+efOhxpjDEs1gnEoycU6WL1RmqBdHVhzS3JLube6Vgyu23
         CGqJcPkv8PIWYE2sA7W9Ox6dmEmJtOhIROebEgo+GOE72fA4adGeSKWSzwVnPsjuZXSb
         UJfqqevq+M72jR0vC/OCJ1KDebBnyORqnGg9Obk3pF8S48ihnKdE+/yEvv6jICjT0+VD
         1zeg==
X-Forwarded-Encrypted: i=1; AJvYcCW4M2AstepXI3cpBledeU+zdvuYrFD8snDch3PmZDmKi78gHW+/dTuJVYwk/YjefQCWG9S8wwAZYbBn@vger.kernel.org
X-Gm-Message-State: AOJu0YyKx+dv2SaynhJuu9N3pzGFlrtfF1Xz0Bd4BtwakYjCF4kyGLD3
	H5CkiUkBnKyjakJYc48vVt5jyCETouylyFVa7m5jZ+ysTYFv/gt4qtNBX2lO9d7NzsGopddJd6o
	S7g7cvT8TlNaFD75sm+MfCT4/MqaZSHBVfOy6jG3VdXrfNpO8/ViVnEb2d32VsPiw
X-Gm-Gg: ASbGnctYIEz/mArUUMMPcHWCvpsU18ON/0A+roraslfDXrkqwOzcF23tcpgYsXWF+ED
	kpThN24HqtAPiGLld1XisbjqR7HDzutHuKhG+YVlmekShjyuX0l3N3UsmxCJEQBlRvZ7wZBj7GL
	PuRJarltgEi4ATbIC7zjRzwjZib0ywcvNkjMgl7SJgegSsHTCAFJFo5/grFO0Ou+tSatyDfBUv4
	E1qkk5LjcA1ejKcD88Cq5w9+iNiIYWJ3KR6PmN6/m9mi4PW6oJFXhOB84xpinHv9/71Ng5XmCX1
	aYRcutTYGt7V6dO6RsWy8nfKMRu0rEBo8PgSOyaJyDAMUR+sRi1X5mTu1SRnMKyCu2u8SMI=
X-Received: by 2002:a05:6a00:2d1f:b0:76b:cb1e:ac3f with SMTP id d2e1a72fcca58-76bec4cc7cemr4471b3a.7.1754066175506;
        Fri, 01 Aug 2025 09:36:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTMLKM2eZ4vKvP/DSM7I+lMHWQJybrsCRF+VUbih9RkpYt4jteso/4tQ42Ujq1Z60KobCoOQ==
X-Received: by 2002:a05:6a00:2d1f:b0:76b:cb1e:ac3f with SMTP id d2e1a72fcca58-76bec4cc7cemr4444b3a.7.1754066175138;
        Fri, 01 Aug 2025 09:36:15 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfe74bfsm4508775b3a.121.2025.08.01.09.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Aug 2025 09:36:14 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, umang.chheda@oss.qualcomm.com
Subject: [PATCH V2 1/2] dt-bindings: arm: qcom: Add bindings for Monaco EVK
Date: Fri,  1 Aug 2025 22:06:06 +0530
Message-Id: <20250801163607.1464037-2-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250801163607.1464037-1-umang.chheda@oss.qualcomm.com>
References: <20250801163607.1464037-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=688ced00 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Zd15BVePnIxtF9Lu70oA:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDEyNyBTYWx0ZWRfXwAaBTMn4FKf1
 Kk+Jx7MZUboBNfKf8a5K76JmG5cX7U72Vgek+vRSxjSePgdlqdE7w6F0Dz7wtToD3mKEAqDs+CT
 5+5mDq66hU8ytL0o2/oBp1cEm4BWa09SR7PYgsiehuGh/QRJp8BanhUs7kzGDUoVxiprn3okEho
 rTU7GGyPIvMqrrLlSsiCpi0SYPNew/T1l6QCrTChvscu4jU05Mif6scJisH1I1XxCdZppie8TR6
 OPROSbUK022DnoZnabizwEZkLGhLdpAg6eWqGhSWXQ4q4EblICZ1KXzI0DdcN9trM5ZAfAaibFm
 3/NJXF+CgVyQXtuyDBv5WUPKCYZAQsoTTLBD5P9WmzFoyxeRYSgZd2O4/2HFItYYczNor9Uupru
 bgeuCvsC4IhoKOR5lB02a0MQEHFyFUOZTi4msCF258wnRyRf1tHLMbLPKD49n7ylgl1mioX8
X-Proofpoint-ORIG-GUID: iIK7wIuNYwPQoAE97UfRWfGL2PTmXXD6
X-Proofpoint-GUID: iIK7wIuNYwPQoAE97UfRWfGL2PTmXXD6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_05,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010127

From: Umang Chheda <uchheda.chheda@oss.qualcomm.com>

Introduce new bindings for the Monaco Evaluation Kit (EVK),
an IoT board based on the QCS8300 SoC.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 47a7b1cb3cac..31e260590f52 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -950,6 +950,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,monaco-evk
               - qcom,qcs8300-ride
           - const: qcom,qcs8300
 
-- 
2.25.1


