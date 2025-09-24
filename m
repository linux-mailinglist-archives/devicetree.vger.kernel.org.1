Return-Path: <devicetree+bounces-220925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 873EAB9C7EC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:19:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6B7B44E2826
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04E52BEFE3;
	Wed, 24 Sep 2025 23:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xeu+lEEX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E9A28980A
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755838; cv=none; b=NWSww0Aiy8Dv5mdM9SXpSad4HGN87aolXDP0c7mIlNTLT6k74wWF9ZQ0LVCHmEZcoflpHW9z1nbr/QrFzKOkSxGHpYr1+UvQdgSN58KpxqstxYxzq8fArf0D2V5mV1WJwrKS2pFVojbq77njwDP7jOYKq7H7OYWZobVUTQWq85g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755838; c=relaxed/simple;
	bh=NDqSa0uXUcMg8nDk+VWW/r81O87p/6EtZwi1Ub6qOys=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D7WBhd1qwtJuytl+s1SdN3wIGQtUMGy4RR/6N48brxE2uyYSf/iN772HlYe8K8YhDFmRNU6iuZTQT4LN1ptjP1HUUNm+tSbiKmu9QtYgtkXz5FrR+6ZufUoJrFtF8DDhL0rqPRtJTD6dLTYJlIg2HczITGZ2ZLNiWvspNBBqbT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xeu+lEEX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCj0jk018025
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jFE1K+StjtZuaU3kr0iFGCxDv2nXJ/zhJydE+MCjc/Q=; b=Xeu+lEEX+YSBb5yb
	RAXRU+x2o/HM4BPg4yFpZaZYqgA0/1mw56aLxJYijfXcyLZyeREwcoKAe+G5tftH
	+WNPcd9NGWM6W4FCOGEcxe4LkhhPHC4IXUeS7CWC/njLy2tDZsOOfPmkGXs/ktsr
	1064ZIg57k0Xt1NSkAJZHh1LX8fN+uGulfGizw+/lTGXhxHk/1unUjLfJcsEql8Z
	kzGu9VUKTjPBMPbHmFAzPnCFuRrRscpAjWQm3f0zKjPjbiFgWLVWtn/APQq+noXO
	wgSQtQU5G4R2+CAVIu9AD1lK7QJw+9QQDnMdAmydIWIcd86SdbX0i61XV76jCqml
	WAWd7Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kk9yb2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24456ebed7bso3261265ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:17:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755835; x=1759360635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jFE1K+StjtZuaU3kr0iFGCxDv2nXJ/zhJydE+MCjc/Q=;
        b=PrTq17sAOVl7wbI8uozhW3vHKrbqNgikEBV7XQuBikOxdTT8c2UaaNNjatkqd8fPLw
         /Nlz/hzErRLnlL1CKc4+FphW0++aS0S5XywWirOXNcH6hlngNN/U09PUQW0FnQBhrsmS
         Am4cgG9dWelCxVr5QcYitzQGy8fw+3nRh5CESVL07Kt2uoJsOf3vrnllz8YWUc0vqu1H
         3mLsz9kY+0mJ1ku4DTn7M8T1z3JRJicMAfmYCF5jG3Co1XmG2nIsYN/RSAgYJT3AVrCJ
         agXvszFvjAw0vJn6GNPKGSCXWLGyYyJcIEmVDmPResnPI+gzr/XmWmDz/NZv8Cs9Q80s
         2iEA==
X-Forwarded-Encrypted: i=1; AJvYcCV7CJEVzvZzXdVWjn/Nv1eHq7YW44ZdfeebATmR4cOLr/QR3Kz4EzlSadWeUu+NFYMcvPcVqOYdDZr6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2lCjK4RRkj7JbqxEk+UEFUtAQysL2LzdOUAtWLXpffix044yY
	Jt+Arzypl+MWCo0NVZX0saSwCbr72777K36KJKqclF758ESha5eiVZO8ovSoQ//hC1KzG8zaUR3
	btOZH3BjGT/cP4sBhmC+HUHI8tu+Em9BBYgLFNX9m7WLqC9zk013Bz9ACQRD42Uj4
X-Gm-Gg: ASbGnctLgmAYzJTmv486eH+8MDXAMlxa/9CacRWHGSZkrPdJvaKdp0VjkvwC70dw7Ip
	c6shQrzU/RmJOG5sWjaUZLhot3GeA+vfxrRCXFZJ/DKNzMp82iEek49BqT5fBBob/D9cFPw+gDS
	8vk/sB6X3SzAdv6PbAlLnWSUwEvu8+yXCn19WkxLDGQE/WElXrkVyGR466HVSmu0nJrmqZ7FAXT
	ysMlvYqV4QYVwLHiDTG2WG6SYzn5j3dBuTRCyqo2JYPwZdhZEOcKEhhZIYayBPVyZxvm92Uy1t1
	+NVuO0owjof8WkwG0VTVraYnkykUj7Bq/LITIiMx9bq4e4Mo6zM3B2SMGBTxsOT38ayOPbJ+WML
	9etPbHrqBBSvYUJM=
X-Received: by 2002:a17:902:f60d:b0:267:fa8d:29a6 with SMTP id d9443c01a7336-27ed710a48dmr5412345ad.25.1758755834718;
        Wed, 24 Sep 2025 16:17:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMlgdGUr/ZjZzWyrhYuIgs/J1eNkrBFx3tTLh5d32nm0isAajEsQqljF2fCZZEsbjYF9SNTA==
X-Received: by 2002:a17:902:f60d:b0:267:fa8d:29a6 with SMTP id d9443c01a7336-27ed710a48dmr5412065ad.25.1758755834290;
        Wed, 24 Sep 2025 16:17:14 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed699cbfesm3892125ad.108.2025.09.24.16.17.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:17:13 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:17:06 -0700
Subject: [PATCH 1/3] dt-bindings: power: qcom,rpmpd: document the Kaanapali
 RPMh Power Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-pd-v1-1-b78444125c91@oss.qualcomm.com>
References: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755831; l=827;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=4qbu+a2M6+r0wYZDajhJwhrLqY8WqPugFl0GB06oldo=;
 b=+/FwS27n6/duMm1JCxEclW5CXGkYV+JJxwphU71pknluHoVMix3RRe9CulBDqK2xIxQWOPTn0
 mWccJk1Cky4ALCw//Qd3l6vT93BsmOLMXflwP+xwCs9CgsAAT6/Jhqy
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: nSXwiSKwTKjd7QjVklK_IhtFq39YMXr4
X-Proofpoint-ORIG-GUID: nSXwiSKwTKjd7QjVklK_IhtFq39YMXr4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX2sKoi6FHxcrw
 YGfT8C/AN2h03h5jlgXBI9oztj9ji+PMfECvTXjiCTkV8d1QHIPfdSlpytXy3vcxJuecP1stvB/
 3VBckhxnyT4q6jxG2hEj2j79ANr+3EzOZabdqz+YwUQ0W3GQvz0pyT4yXO8n8SQ06BAgFGKzac6
 0LEIepgRjkrY1gyG2tgQevJvUPIA0wd/sTF6tFzpZzXR6GxuIMkixArsXu/6rQKP7JPTVzLsxCD
 s6ObxrBNHnvIZVFK3u6nMS0XStvV3tjuOMK2E3N1GeF8PTlP2/FWA+8cY6qkCOn+NTvhMhEmh2Q
 xTjrSGGB8I9yzp76GWg9wLXp+P5Yb/miOBxfPL+Txkm9qdA1L8omfWG9mw4+UAtZ3S4rlAK4lG2
 M3g/TZV8
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d47bfc cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=0Z_xqJqdlRmHXTOusawA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Document the RPMh Power Domains on the Kaanapali Platform.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index af5fef872529..27af5b8aa134 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - enum:
           - qcom,glymur-rpmhpd
+          - qcom,kaanapali-rpmhpd
           - qcom,mdm9607-rpmpd
           - qcom,milos-rpmhpd
           - qcom,msm8226-rpmpd

-- 
2.25.1


