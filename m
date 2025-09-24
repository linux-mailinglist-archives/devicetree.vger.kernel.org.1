Return-Path: <devicetree+bounces-220985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F67B9CAED
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:44:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C54703A8DA2
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665BA2C0295;
	Wed, 24 Sep 2025 23:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hCmuuGg4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC4B2BE625
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757424; cv=none; b=E2Wo9Ny+lmHyNH0FAct/kA6xo159lE7p14DYbkZg7rlDueXiESezu+CJjDY2V8VFZy9wh/WTGioKszxsxeqw1Fn35P4eR2L5O6F9+hPlB0EQZhGEerRMG6ed0AG1c9tBL7aByWpkRHcTKODgcsM26bhTS9Zi6/yFjzwVyt21dfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757424; c=relaxed/simple;
	bh=6CSXlCZwl15wpvD4tnn4P+V9Gu48Alpev3pff07bAQU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JtELdJm+6QR5vZosN0W0cqwJu1rNup26NGRHHPCm38bZlRwMreiBH6C7X3ZBq5zVTsH7M8aBySs0Az2Jn6yUWntgUAgSQFKce0Zy5AQqmSXPVfuuQCW7esY+HM5T53irtVp6JM8Tga7euUhi5eSP3sKCm/Ze85LwwFAaGymoHsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hCmuuGg4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODM0ee001948
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h74aNk7MomfcVP5U+yv9902v1K2etOMKqpcz1QWtIc0=; b=hCmuuGg4/qdsfiPd
	AE/M7auyVnfT186ipCbKXHTq7rrgTWqZgJpLIDOfHGfISNDBBmqLmZDedy4VHZeZ
	sMSfc62lionCadMuzCZXIoWy1dJrvg6gqWYWFD254OPk3N59rG4gMovj1CqKVm/G
	XlSW4qANs7+AEL8/2v5lK6GJkSF362xuDhwitkEUszFsTMJxpJLsCy5Hx0PCjcyd
	qhvlw+aVQmXKrvtg2A4v9Yik7DU7Zms6ya4XERBKxiy1PCJ0JZoCY/oKdOIX+oEr
	4WTMnQqT55LiZSV++jm17k/5gIhMBi7BW3m7pM0kzuVlS5kefb8isKTjnM/FClwy
	rPlzTw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p33y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:41 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-781044c8791so3235b3a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757421; x=1759362221;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h74aNk7MomfcVP5U+yv9902v1K2etOMKqpcz1QWtIc0=;
        b=trTPB3HZxUk1ieMWwDwhvJkURggrF9EJVNYyNaMAuL4gsNUmpiz6ZRe8p7GQX6jAjh
         DoJjxPLGtQDgf1RM790UonQTNWhTNsA+hvfvt2z37SwdTvBtTbPK5Y88dHi1EzjmNrrO
         L/YkHG/8TT9NMY160Hc4Wc6iQHvTNECRaKZdJmJVDLmCL9U98ZFAmh6dM7BbDkbpIldi
         u6vQJiwWiGtFbTBOG2ardUBPpOlfpzqgGeQF2c8hWqiAJdF1lPMv/GjXDqv3dOfts4p7
         YuNiqidsQX+1gSZDVJX/yPqm3+ycdRiSXeXuJ31G6FNe8gEB2Iqi4hIyIZRulgMci/rH
         bdMQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3z1kvmgDg9oUwqC0rHVEGavhwD/IvrjMw+yAIOmHrU1jWFb1RR64oPLnPnodAgXtIAUk0VGaUyOW/@vger.kernel.org
X-Gm-Message-State: AOJu0YwdqcPoniKgKjPP4KAM7Xec3zixvM+Q19kdmTGOkl3yrgf0aZrw
	FJN1pnxe2itqrogIDisHYaHoEMYFJ4Dr1WOrgpGmSYmqE4dARdT8TnG7te0QDo+wgGuMu4HhenQ
	+1mFP06x/d9cYTxxIuIWqsYVUko8i3S3CQxyQnUAUiLGZ3max+oMbbl+TwuR6j4g0
X-Gm-Gg: ASbGncsK5DL88F52uJojxcrnS2s7HC7aCdupr9U2wBokkUTH03lw1maRbgwe2fTW0/X
	tLQNqQEhLWtCPj1C16NzwNINK2yEsqL8ZIkrOHxG81HLkNZ7Tt1R3a0lcO+nbK1JRUBqtAC4MI+
	x5hAGYlVUu3x0z4kXT0B4OWKuZn7g4TRI48NecBaKWwDyZynI5W4VBMOIxqYAfxf7uzu9rjYDha
	OSXw47RiBR7Kaqb2HffVdD8ZHBiZlZNojVJO2KINll4xrAkQdPRaHqTtjGJCsPsoCcyPGCKbxXH
	JAnVsNlC0gWRIvR6J3ypQ9abLoK8retkSJlWH6ZYGnia+secBokX8KmbPuGQscyxaN21jI+cLNG
	eY8ZtTenNz/OxjXg=
X-Received: by 2002:a05:6a20:7f99:b0:24c:dd96:5500 with SMTP id adf61e73a8af0-2e7c5089ad2mr1405282637.11.1758757420685;
        Wed, 24 Sep 2025 16:43:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdCe0j5CR4NDWA6456FRnN4l/jjecqJTFbVlhKpwlC7CmhUhcUtXBR9LkhZzDu07Wsd2uVKw==
X-Received: by 2002:a05:6a20:7f99:b0:24c:dd96:5500 with SMTP id adf61e73a8af0-2e7c5089ad2mr1405253637.11.1758757420237;
        Wed, 24 Sep 2025 16:43:40 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102b64599sm192088b3a.70.2025.09.24.16.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:43:39 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:43:34 -0700
Subject: [PATCH 2/2] dt-bindings: leds: qcom,spmi-flash-led: Add PMH0101
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-pmic-peri-v1-2-47413f8ddbf2@oss.qualcomm.com>
References: <20250924-knp-pmic-peri-v1-0-47413f8ddbf2@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pmic-peri-v1-0-47413f8ddbf2@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757416; l=900;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=/+orHcqdoCJiYis1BeSN59ik+XCNFok4pl/dlM9EI5c=;
 b=z99WCkBgPuSR7Ka1AneTYCNVrG8aURUdIjBbvNJ/OjMWWtA9dLXxnQzPuwbV4fpBLrZvq0N8n
 tHxQq9Ww+JICGc5rCuQazqbUKGXQ2zHqaAgCP2wMY7itPMv979fla+p
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 1mDgpqDyhYY2Uhet1pbRyfIQ5lL8iwuF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXx8KOlM3Zg1qP
 cr5d9nzsKYtsOvSocNyMB5dsNlouNcaoWefxUBdQIjibUXPX4bnK2tBkgbHJU7hQKLbu/h9u1Nm
 lC/FYNNrBFUL5/ssrw27M8KONy/r4J9eT7rw6uIoxghy8rq5nTTa+FdYx/DZ8kTz4smFerHPfqf
 mIbJoGJLAcrZYRCZVTrSLnWEuF6Gy/XAeJ9q5maoIkoJFnqEpXd1a4W/cKYMfLTyqwz8LeupG6U
 2wU3Ezkc21ClUYqg2hg0KrC1fvvcV3UeS5Ur4ukW1OcfYADP54Gk6UF0Dsz3yoRx+LwEPibuRHo
 wiyuRkFXZ1FKn3ifQ4aBEYrmdRwRKeHrXGC3R8azVcp9/g8oK683u7YOgMXkyfRkJYhbqwzVPpF
 RvzzKUjY
X-Proofpoint-ORIG-GUID: 1mDgpqDyhYY2Uhet1pbRyfIQ5lL8iwuF
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d4822d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RkQeGxZFYsPkH16At1YA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Document compatible for PMH0101 Torch and Flash LED controller.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml b/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
index bcf0ad4ea57e..0df3e460a792 100644
--- a/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
+++ b/Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml
@@ -28,6 +28,7 @@ properties:
           - qcom,pm8150l-flash-led
           - qcom,pm8350c-flash-led
           - qcom,pm8550-flash-led
+          - qcom,pmh0101-flash-led
           - qcom,pmi8998-flash-led
       - const: qcom,spmi-flash-led
 

-- 
2.25.1


