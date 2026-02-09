Return-Path: <devicetree+bounces-264010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBcYGEfliWnpDgAAu9opvQ
	(envelope-from <devicetree+bounces-264010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:46:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C5510FDD4
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1EA18300530C
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0AFA3793B9;
	Mon,  9 Feb 2026 13:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KSA90deV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iB4fvRAE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697943783A2
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770644802; cv=none; b=krI0K6jR8gpkI9Y3nfK33yNKZNUP3VSjmu093/Z5LeGSgJWS2/GnspUOLWsj8PnrAShPsog2G0YJE9aTpktZ8l+NrJi7fLRiZvsM/Kmhop9qp/q5Q9jArbLImQ2DXZTIfPwtmXzsNHbJqwySPckP0jALYB9jZBhKNba3uLdF2BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770644802; c=relaxed/simple;
	bh=fnOQnLODNQIhr6CssUQwPBrgabH81UaqvBrFTwQDb/U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YNg8l/2aq5mtHQuCsd7VYyuxOxCrWuH2Dcsh4THfJYtFYDmltjFijGR7qcGouUTEeiXkN7/4qcjJv/OmMdBPKgf4TsQ0Ix+uhjLac0qlPSDVYZBs+DAletnNSYLfQtX4DbyuCgjylvtvCAiCThcst4AwLQ3Y1ilrl3nHka9WZIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KSA90deV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iB4fvRAE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619BS0uw3347381
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 13:46:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=bOk6xSYzwz58WXyx+KwiUtL/RsTQgy5B2cl
	OaWbtEU4=; b=KSA90deVh4vEJV+NKnwqlXPGLFidRB91KI0OhFDwpKdOQ8tICOc
	5fo+vOIpLr3ouf7FH2tx97UeL5J7eUlx1K/poinN0otIsk1Tax4GPz24ZCDkDaN4
	3QnEvUIYSYQorpvlI/bkkSqL9j6a5+fYyrlEqENDUQTD/04nrsbxIT9LHmveBh4F
	jawfI0Vqk/Veu+8g/0Fx+TN/cnJLjKzf6zuhXLfMELbRnfWrIiiOoPK4WV2MpGex
	wWbwxIQcIxvcb9fggNjO4ODcwA1QVa2x3UGeFhwZdHEg49VBgbS35maM3bfXUw5/
	KOYYJ2ZbY4aYq73Tj/eydaYtr3xreGukf8g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79cy1kck-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 13:46:41 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aae3810558so17279665ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770644800; x=1771249600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bOk6xSYzwz58WXyx+KwiUtL/RsTQgy5B2clOaWbtEU4=;
        b=iB4fvRAEcv/2qZI6QGrEqlLo+kYL6KqE0FzpUpc8YyT15V4c6ZZzjCM/Yn27vbA4zX
         jRYUpqtA4w9TbvCC+kcYvjA14PgdzuHeGlPXEnmgphzYnDSU4FzxSzW5Q+fEZtAfmhIK
         0bGk2TNR+JwjtUiPJiSfYdGWV9VkQ5MFq726YOwLLYmbxlW4YfwlTW0or5iGcbP+DT5D
         gvM3AmAu97WHx5krsyw9uwgReuxhshg+6K4/rq18s7V32iNgl+vkovUJIhx001sSpWqr
         6YtjtHQUedTjtYz4AuVHOBY8q1YgK1F1G3fJs2/zqYkGtj9EkoYzIONLj2TtguLt1VXg
         z2zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770644800; x=1771249600;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bOk6xSYzwz58WXyx+KwiUtL/RsTQgy5B2clOaWbtEU4=;
        b=Lbf5NFegYPkTDp8uUFUlni9PUF0y3bwccysCo0e739jj2+HochFZA3E//CM+tPBJIk
         SCue5qUa3Eu361kBYA5IhQ+cCiS+qsgQpGXfuWYxMZRsaYfTG9ER8UMf9bwNy5gGw/jj
         eKzyBxthno3kPi3FBKcH+rJFqM4+pHsnIbgX808Jj1czVMEus9GHJ6Clk8rjqIJQk8Ic
         TSzETf/3afXIBFh1s8l+ZuqMRvJhqBNDilvBfMQVp2sfS9xiDm+YF2ZVYJ+kxbV12aPv
         AsGiFjF9uske08+ent7DS2vG4T1jBrk4nEj/lvJIv5zw3ZMuH4gGVlA6KwLWIPusm/HJ
         PCfg==
X-Forwarded-Encrypted: i=1; AJvYcCXDg750g2kvb/8eLUcnnIiLd95OPKcs1Lt8GDdGsvxaRh1YN/yRfL8TKM9zKRQkXU5rwh9BAO9MgqgC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8cv5v/Pxn258M7ars3EoXfc2nM6yifCHKgH72pY9sl55y1mn/
	BtUsQW22yKDqpUO9oVbyd7KmcMtj56aanqrk6utmv8BvRSPvQ0xyCrETPsjpsSGKwmgYrpB9+2V
	lNKQTj5dy5OFsUA2EP4DKGEelTOTujG5vfRuZPU2O8ZTouYLOjDin3t8T75IKgwo/
X-Gm-Gg: AZuq6aIEqlcjfQ70EFFm9w3TCtW2EwSimdwN4HmcgoN/Jws6GKoINTu0HkhOd9SndTe
	RTS6CA2x7Ed9XZJ4R8JTAJGCEa8hiQQH3hyMHJ7cchtdM/sa0B9ln6j8tVPO9Z20dwYlBJV6MOe
	Lf21nqcgtjFxgqnZ6nPMg1cPKA9vXjZv9glJ5yOHwT0KHjXjFHICudfESxbSWD05FjnT1/nPD3M
	BPSKyhmUnptjBbRLmb54w9vNrOVBMIg17hnHcUQlSI+3JaJEvPquPYv4k+8ZWSYN8GNuhAA88Jw
	hdFgzNEXbZ0Je/5WslXEa3YC0LfUvYCezDi1FfD1df0lX4sGJAhB6xi3epQy51Bnb+sIoS8eDh7
	fYZ8HIqAXq+jA+YyhSA16/MxYHMKBskPAokUlEHnF3lBYMw==
X-Received: by 2002:a17:90b:5748:b0:354:7be4:a250 with SMTP id 98e67ed59e1d1-354b3bd326dmr11289312a91.12.1770644800262;
        Mon, 09 Feb 2026 05:46:40 -0800 (PST)
X-Received: by 2002:a17:90b:5748:b0:354:7be4:a250 with SMTP id 98e67ed59e1d1-354b3bd326dmr11289289a91.12.1770644799772;
        Mon, 09 Feb 2026 05:46:39 -0800 (PST)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3561f4e0dffsm8238024a91.11.2026.02.09.05.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:46:39 -0800 (PST)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4] dt-bindings: pinctrl: qcom,sm8450-lpass-lpi-pinctrl: Add SA8775P and QCS8300 pinctrl
Date: Mon,  9 Feb 2026 19:15:29 +0530
Message-Id: <20260209134529.725573-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: kX46_XcTWHRvHz_AJKtbbbCq26DER-dr
X-Proofpoint-GUID: kX46_XcTWHRvHz_AJKtbbbCq26DER-dr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExNiBTYWx0ZWRfX98InMvoXXncO
 H+Ykut5gVQQb3ikXyAA9R675Wg9sccvy4yosXuYOyJg7+OF8mFP+IhbSGwErsE0EXUXJPYTyIsu
 3v5OB0H3Ll3PIGg6NtxrDB2koBoW6dfLwa1Mm0+LZOQowakg7cwmqAJ5IWFEZuoZRy+5F/W99De
 gQmTeUoyN2OXT6HPs92xLdjCZxKhS/TT9AqYEc7Icg36xATQpgesry7WaK4B9sesPMc6yQwLmzs
 eF6IWVlierLryZEuKamfFp2hV7m4HzvfbUtPZaGBfYhfZYNUC1KS8QR977/whJkYJ2iOezkX46I
 Q+fyPsWqcFXRX1L6XGTT3wd6YLtUlY6wWSdocIe5y8N9X1HSAHGm84IibcJxnOUfF+Iisro3Ue1
 Tbx5z2rn3BVC5kSlbE4DBAaqyPGWaOU0LVmF5HmXrl6pUgu8hUkWp4A1b/PMG7yxzrK06Jukeyp
 SqQCKTxhuzOQ6PCzHGg==
X-Authority-Analysis: v=2.4 cv=EtvfbCcA c=1 sm=1 tr=0 ts=6989e541 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=a0HnErEHd3o58QWwnPEA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264010-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 83C5510FDD4
X-Rspamd-Action: no action

Document compatible for Qualcomm SA8775P and QCS8300 SoC LPASS TLMM
pin controller, fully compatible with previous SM8450 generation
(same amount of pins and functions).

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
changes in [v4]:
 - Fixed dt-binding errors reported by Rob.
 - Link to V3: https://lore.kernel.org/all/176951636220.1230755.4335541729269457450.robh@kernel.org/

changes in [v3]:
 - Removed the duplicate driver code patch as suggested by Krzysztof.
 - Reused the existing SM8490 pinctrl, which is fully compatible with SA8775P and QCS8300.
 - Link to V2: https://lore.kernel.org/all/20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com/

changes in [v2]:
 - Fixed dt-binding errors reported by Krzysztof and Rob.
 - Added proper slew rate value for wsa2_swr_data GPIO, as suggested by Konrad.
 - Documented Monaco compatible as suggested by Konrad.
 - Link to V1: https://lore.kernel.org/all/20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com/
---
 .../bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml   | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
index e7565592d..541c1c54d 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
@@ -15,7 +15,13 @@ description:
 
 properties:
   compatible:
-    const: qcom,sm8450-lpass-lpi-pinctrl
+    oneOf:
+      - const: qcom,sm8450-lpass-lpi-pinctrl
+      - items:
+          - enum:
+              - qcom,qcs8300-lpass-lpi-pinctrl
+              - qcom,sa8775p-lpass-lpi-pinctrl
+          - const: qcom,sm8450-lpass-lpi-pinctrl
 
   reg:
     items:
-- 
2.34.1


