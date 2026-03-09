Return-Path: <devicetree+bounces-272854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIt/HcSrrmntHQIAu9opvQ
	(envelope-from <devicetree+bounces-272854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:15:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 388F4237B52
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F20F301A699
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B85399020;
	Mon,  9 Mar 2026 11:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RX9X/fB7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YOKc+sXG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D646399017
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054802; cv=none; b=EPxOlBxPj2P9MuKQzwCy/nwDGb5s/GD7GSDG3O8WA82+VnvUAkwy/ZXlAQgJNH7oYvsd+1ibkl+2/X6dC0rM0c5wH+q9MpQ3URIVjtu7XQCfu3ai0BM0bzEsNF3+LeZAViUTtr9ZPVcdW5sJ5ka6yZJI3yjIfhn/ckAc6FCEtp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054802; c=relaxed/simple;
	bh=gYJlb63Zd53dsZ7vgXD5qYT6doFbEv5m6uL2BgBrnwk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BtmJDXadGcdTLZRF1Rj0/I4bh1B4jjQRwoA3iN8C/JKGYQOZemYrC1eks8u/pHk9/yI5GaygvUp74FNuRqqr8Kn8v9GDVLhjjxi1BM2iCweZ2wyJvCkWpwGIE1BF2Y5072sKzzoo/NWcyipjYl7sFdBxA+075dzNEzTOGV4goqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RX9X/fB7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YOKc+sXG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6298WEEE3773310
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 11:13:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zLiURaoEZ7L
	H+73e94RS9tg/hkXxyFDfy3q31wGb3cU=; b=RX9X/fB7VT4k+OiKrYdL6e7EBs6
	PM1VN0l8VkzHkWhBE+Hlw/Eav1Y9KtP6dqq8ZKH87rn+Nm4BkLJkpa+K3jF4Fw+f
	u5esUEq8v5CSk8Goj93Lfc7w1ATPh//r56BgrjaMxu2AidbKRWh7l4Q8N1nD4YhG
	h69q+PCxyCiMPeCEty1QZ7OQKUbDJDVrr8/J8zBbv2FcNho1Ir6hTp/IOHcRXHqE
	pyiyZ9sOKvnlRhzE6ckQjx40cGxQ2m/NYh0epCh+NlwweisSdL1OaDtLJzdJLq4y
	yJvY3WE6bpyfMJ4UCmnXFAXQnQH2P5tZ8M6qvjEchh3bx5z4d4dyo2Df9Fw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cstsa8jcg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:13:20 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ae669a8ff1so308931155ad.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773054799; x=1773659599; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zLiURaoEZ7LH+73e94RS9tg/hkXxyFDfy3q31wGb3cU=;
        b=YOKc+sXG7B83/UaZfD77frfk/em0YaXtSURsZ24qnFeqV+dmA9P54px1+xhjc12V1F
         HU/5mHCdZebds6nUkgrtlIq7dQOPAYqkU4+8pW9tFSC0Zad7jRdevrzxjLa2VQg44Umu
         +ZzgpEG1E1GAuR7RwWlGGGJRaltA+Bi8907Ln6OwcGLS0kzj5oY79uN57lbgEGgC3Yrv
         qgY+Xrtb/Ld8c5lLrs7kiKS8E0tdZSyzuX6k39NslwlXhXf+IrWMB3vAM/gLePNAP25O
         K9BzDcj5lkrwNRoVMOv/Lreof9FTgepb7ckPF8BFx6kzv3WtwV20JYjDkEHmuwDlis2L
         NduQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773054799; x=1773659599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zLiURaoEZ7LH+73e94RS9tg/hkXxyFDfy3q31wGb3cU=;
        b=sGdxduZJn4N4V0CwomZD2eUOto+f2usVA16fJWcDhu/DQs+anS1CmT63UKc+TrFTDJ
         NkaEIiUk0vKRJEBemr2CXr7HDI0/IcdTPcp+ov0bZapeWAz40c0+J95HjZ7jqxsC/03R
         6q8czXQzbUGdonYS5pG30+rgasH1geXt4B/C3d8nwJFPlPBxnbWeYf9zRI3ePkEw6/ZJ
         uc9H8Jbx2Sf6jmzhkPNY3xquwsQjw1mHDFvabCaycHwD0bkOhC1VOt5aOID722liNnSr
         CttIVH2rGWU9OJTFrg6AcnsjYRRGxl2nYuEfSEt2nTDoHcdwQWGiBoHY/3j8jmfclpU1
         1c6w==
X-Forwarded-Encrypted: i=1; AJvYcCUmCg8JruG0scIdblLX6FG8sBk/1LjjHPyc8S5lCGLXJgWhh0nSO1cZwx3hLMuxCorRQ4mAP18LpVNt@vger.kernel.org
X-Gm-Message-State: AOJu0Yw76pT+TGcP+2BESfh5jTeQ7UPAgRoU8h+fnU61dmysIWN67dWX
	R9urEce+pPxQcW1AOi04gnk3Pr+wbNXHTEeV/mtIhW+sbimrMjTibEICa9/P4v5WlUG1m6EHEA5
	w2omPAee1Vhq1gGq0uH0o4lgsk9R83FzsYXqFGnSCTacZOcpTNoEOksLBvkZWPXjtKJ3iqajK
X-Gm-Gg: ATEYQzwT0BcivLUrX0NyrCad6g+04yqhXXQ8kq1RRq+fFObggCyz103YYM3qZ+LSHP4
	K5m7YDyNWTLpBx7rXtZbjj+Q9oXnIxVR5V7IV0SEt2mXwyHwdsYG2GkjQAtAhLWsZPM7uHv3XB/
	y1SoaVucPCBcgrLBq29iGFbgOgpna6z6nhwis9AzYL6+vpmoOw+B8f5Ls+8LeQiknDx4yP+GtZY
	pfz/lVXdusbFq196ad6N2dKMNudoFatoDLjqwZ+4/mcgmTytCZoBilNknYFl92ydHF074acL7Xa
	tJ299j0NxOFLmG927y0NhcDekzKM0ovyG94O6hhEO7+VKu3mcTcaLX9Ga4/teASdAw0qBuuDpQa
	jnmry6Ne6sFbch/xSn2YbmV0AVl89Y8/UD9iazNk/isREcE7RE8ECbYS7qQ==
X-Received: by 2002:a17:902:d48b:b0:2ae:51bb:9809 with SMTP id d9443c01a7336-2ae82444376mr111788105ad.36.1773054799176;
        Mon, 09 Mar 2026 04:13:19 -0700 (PDT)
X-Received: by 2002:a17:902:d48b:b0:2ae:51bb:9809 with SMTP id d9443c01a7336-2ae82444376mr111787955ad.36.1773054798670;
        Mon, 09 Mar 2026 04:13:18 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae840c9967sm145405925ad.90.2026.03.09.04.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:13:18 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v1 1/4] ASoC: dt-bindings: qcom,q6apm-lpass-dais: Document DAI subnode
Date: Mon,  9 Mar 2026 16:42:57 +0530
Message-Id: <20260309111300.2484262-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: fipvLuV4dqwSjxA2bypUXt_x0aUJNP6T
X-Authority-Analysis: v=2.4 cv=I+Vohdgg c=1 sm=1 tr=0 ts=69aeab50 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=ToWtgBs4AJHCE2l4FVQA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwMyBTYWx0ZWRfXyaOabOoGfkX/
 IxU2ri2fSw8mb769fmh6jd58GCPvwfWQY+7E4Y3hpMJjfTD6ueK4jYG4VnTa2MQZ5//1tgwA/oV
 qnRPq7OeRmQCNXP1spwbhNqLSTnba6IGhnHv/J+Pc4dRppR6g5r+UVWsAcwpZS32J72NtZ6YSeQ
 m7guVokNLWguajzktNuzd8oS5023ZJXZkUm5AJh0nIzv2ftQBgZc1Hm+rZ5XuVHLj7jQZQdfuNk
 3Gl8khxB8BoMwtUckD98wtxpMc+0p4wzMrGK72N4FHhNikObQzEvG/LZmr9D6umMhYb8KM1NPfm
 AGe8+2tVCFL3rWQyrmCuHPkVlM+goRzbAKhDJv2zI0Ord/+/Dzu2QW7E/Ljz0qJYwCVP2pOv5Rl
 ufkUK8l0gpjldA/ki471kRO8DuBCPaOogX4eWHDp5ViP9JCyRgA7kTj6RUgxKv23dNVZUwl0+V6
 DWO0Cv1CCwW0iUI6ofQ==
X-Proofpoint-ORIG-GUID: fipvLuV4dqwSjxA2bypUXt_x0aUJNP6T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090103
X-Rspamd-Queue-Id: 388F4237B52
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272854-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.16:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.994];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Extend the qcom,q6apm-lpass-dais device tree binding to explicitly
describe Digital Audio Interface (DAI) child nodes.

Add #address-cells and #size-cells to allow representation of multiple
DAI instances as child nodes, and define a dai@<id> pattern to document
per-DAI properties such as the interface ID and associated clocks.

Qualcomm platforms like talos integrate third-party audio codecs or use
different external audio paths. These designs often require additional
configuration such as explicit MI2S MCLK settings for audio to work.

Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 .../bindings/sound/qcom,q6apm-lpass-dais.yaml | 41 ++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
index 2fb95544d..1d770cbcb 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
@@ -21,6 +21,34 @@ properties:
   '#sound-dai-cells':
     const: 1
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+# Digital Audio Interfaces
+patternProperties:
+  '^dai@[0-9]+$':
+    type: object
+    description:
+      Q6DSP Digital Audio Interfaces.
+
+    properties:
+      reg:
+        description:
+          Digital Audio Interface ID
+
+      clocks:
+        minItems: 1
+        maxItems: 3
+
+      clock-names:
+        minItems: 1
+        maxItems: 3
+
+    additionalProperties: false
+
 required:
   - compatible
   - '#sound-dai-cells'
@@ -29,7 +57,18 @@ unevaluatedProperties: false
 
 examples:
   - |
-    dais {
+    #include <dt-bindings/sound/qcom,q6afe.h>
+
+    bedais {
         compatible = "qcom,q6apm-lpass-dais";
         #sound-dai-cells = <1>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        dai@16 {
+           reg = <PRIMARY_MI2S_RX>;
+           clocks = <&q6prmcc LPASS_CLK_ID_MCLK_1
+                              LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+           clock-names = "mclk";
+        };
     };
-- 
2.34.1


