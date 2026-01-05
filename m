Return-Path: <devicetree+bounces-251501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6819CF3D2E
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D19B53160483
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528B4314B75;
	Mon,  5 Jan 2026 13:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JPOGptQ9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F5jC64fm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F21314B7F
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619279; cv=none; b=LgWlxmbMxREhyfcEuUKU7c83uaPc+WaLY/J8Zs6uoW6CHhZFTzNRWkQ6tvDjL3cQ2ItIQbmBABuLYpMYd8kThBGdLQcuCGGbSraIygqJPzJ/4HSqrWzUT4EHCGZOlDZ1crQmigtmqrFkNYsrTEIL26sdlATlkydABZOwRraVlvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619279; c=relaxed/simple;
	bh=UFVpMdxqB8Go0aDIFeSiIjk4yuqxNQ3R5E9qV1fdxts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YRIQndYVIrV148VUWincHyOiwI04h5w4otx/Bzfduj9SXEWxzHshpNFhSAebe1V8Kq7Ihoy4TI+UqlE4VOM/wexLwCZXLRxFvGuON6pfN1uig/OeTfbhma2zkcPGB7bCFKcPbJoaDPXvG6v34xYu15joF0x0pYZKURsRqKoxPrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JPOGptQ9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F5jC64fm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60584xPn978580
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:21:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XsPtTZVK1Z9F61M9EjcIaGrg007+KURg1Ykc7hHGhr4=; b=JPOGptQ9HC8Ozsy4
	//0zUjYmnRVoGcR0t60wT6zvBg1khYqNkL8JSC2EkKTFF5ySo9Zr3jPa9OJenbAT
	xSKJe8KRKbYxICX9EHOndG+x73urHjmbOMQc/agwfqRsQdBtBB2G/tYRQtCLMatg
	nDipbhlcQpfRT+5Vgptv0Fi2fBEux9L8jndpVB+eFJ5KNLfAnvBOozm2SK2DKXaH
	/fpETL3frg9ajQNR+1EegXJQFBgwwYf/WAH2fCs8CdEJxsLzrPeWio0h/OWpRgXJ
	SUN54eSdUBRfLrZDD/xUxTaysbKYiSLxxLDvfQw9I2Uybs2nSUHX/0ZrHZV5O8tC
	IlGp5Q==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg9ftgutx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:21:16 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-11bd7a827fdso2721053c88.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619275; x=1768224075; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XsPtTZVK1Z9F61M9EjcIaGrg007+KURg1Ykc7hHGhr4=;
        b=F5jC64fmW479Vi9jQ3dwejmAiGlhWHFVz8S9Cr2X7hLtdXZGSdh7Vr66ouRShGWehP
         VT6ZzK+wJjg4QJqJqH5JGYI/CiPxR7UMsEV/UIOnqDFS1yJ5Npy+F9dWdBI8319H0DXT
         Tq08ePpTOSNgOzPtp8p0htTfVEF2aikcoEOjj/VckTu7SkNnBP7rjavS5ezrO8qaesoS
         zZ/WyU16e0UJPPHBkaAL/QACzx6IOaBuuziMfQI4/sIuVrSTXFdOQrcUOQ40ugRHkTPM
         OcJ1ABX9tWxytM/1qdIGwJYqmshzIM6h3M4V13GfcCZND6pEv6XNVoFyPdENAKmR67y0
         Q4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619275; x=1768224075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XsPtTZVK1Z9F61M9EjcIaGrg007+KURg1Ykc7hHGhr4=;
        b=Ut08BKnF1E+XJfLvlP5o43SkIfZSWZO+nR9rs6+7iyAt6ZkvNYk6umnBYybWsSdddU
         em9Lncx2RpI6qDrIITdrp+LPMTMLgnixOLKzAKQMsB2S8zN6oLcsUCsqL24ZC6phkHjN
         WO4Qx6OlP4x2EMjH2fxXZ416OfwTRH3mQBgaWA4YhtuUL9H6phEaXZHbCqQzctTxyjss
         a+oMeqyAfxhc4puVn38QOG4Y3+bYC3Xd7h8pc/7Wr7BWE5ErR60wR4ra6xOlpo/xeVCd
         sSdZRtTH/+2RydKKmVbUYyrkXspbNDlE2PEhHePMi9xz+SAMUhlv34sldEcFJbKFkYOr
         Kv6g==
X-Forwarded-Encrypted: i=1; AJvYcCV++Y5Vc9tan3g0pMqqbygefmM45ZPnE3y5tFQUKl9g2CGc8g2spvg9sh/pg0v0qlSg8Qnt3026Fp0f@vger.kernel.org
X-Gm-Message-State: AOJu0YwGuYHlAByReBdEG1E3+Nb6Xq9ymKDh16FmMbNqKhx8hsVippz3
	QWnviyBt8Fq48bUgKXJljbBYC5taDhdZLnp87fLu9QEdQmFpqZl5JFQ8w+uhWmzxDiMQmgzuvFC
	u1fVkaMmrU0SaDXivV52C9aFk4OK7OPGOjS7mf01pwyf/RxMtGrxir2SSEx6ISFol
X-Gm-Gg: AY/fxX6lstmxVTeeQYIaqXCvPWNmtstTm834S/M7FcDAhCD2Q5WhPLJmQ2TuFwrAJa4
	ITNTr7JVsZ4UXp7/+lipakfWNAFnXgOLciRA3gtnKX48qZ8CyngQTl8dBo8CU2cDsN4lkzeXkTz
	KYpcW+jNgbarVjbPN0N5pUwHi3qtHNDANU0mvCi6ovuNoZS1pf2a5xFc9ZR6lW7Ky93vx9HQQx1
	pc4l1gqVCNBs5waF18u+SRLF6KVpAuu61kHM3//H/qg4G+4Mqq20A+aLAttdpSFCsUyvuPzPYi8
	weN7liOjKO7HFpAko2P43cXSD/FM5HE55iw6dlGia23sCHXb1GVm5CSN/6r10aLDfHMgjnd24sm
	GSY/DqLgRBCFJX5IwFcNFFkHeDy9WeRtY4MJT9fGLuqRSX6YViZRU/t9v6G78mFoooQ25BfP95w
	==
X-Received: by 2002:a05:7022:e01:b0:11f:46b4:449f with SMTP id a92af1059eb24-121d80ea3a1mr5933881c88.24.1767619275344;
        Mon, 05 Jan 2026 05:21:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGdoZ3uP4i1UEVgcC/YVX5f8TTaRDDrAwyxL78hprVR5p+hE1Tun8eInn4KmIpoIthzC497pA==
X-Received: by 2002:a05:7022:e01:b0:11f:46b4:449f with SMTP id a92af1059eb24-121d80ea3a1mr5933857c88.24.1767619274715;
        Mon, 05 Jan 2026 05:21:14 -0800 (PST)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121724cfd95sm165866042c88.1.2026.01.05.05.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:21:14 -0800 (PST)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 05:21:10 -0800
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: qcom,glymur-tlmm: Document
 Mahua TLMM block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pinctrl-qcom-mahua-tlmm-v2-1-7ac036f700de@oss.qualcomm.com>
References: <20260105-pinctrl-qcom-mahua-tlmm-v2-0-7ac036f700de@oss.qualcomm.com>
In-Reply-To: <20260105-pinctrl-qcom-mahua-tlmm-v2-0-7ac036f700de@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619273; l=1086;
 i=gopikrishna.garmidi@oss.qualcomm.com; s=20260102;
 h=from:subject:message-id; bh=UFVpMdxqB8Go0aDIFeSiIjk4yuqxNQ3R5E9qV1fdxts=;
 b=fdl+WiRyCRrPjKZMOEfq6kCPUUIwDPo0KX94xGI6oaw7q25GAdh6AE6ZI8myzFgd2H7U2zQv0
 N4Cu2tbSX2xCeoiDU85H8KOhdkQswOFR0NUTGCd4kUXceWyTXnUT9xN
X-Developer-Key: i=gopikrishna.garmidi@oss.qualcomm.com; a=ed25519;
 pk=TkSjNEhrfsj90i3wkABTZtAjLNr2cfYsujaTvyOIDsE=
X-Proofpoint-GUID: psmxBfjHbykCDArjHG20vyuaHKM2eScb
X-Authority-Analysis: v=2.4 cv=GboaXAXL c=1 sm=1 tr=0 ts=695bbacc cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_GxIMNjxlj-suDvTKbUA:9
 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-ORIG-GUID: psmxBfjHbykCDArjHG20vyuaHKM2eScb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfX4ce9UAiOQcMN
 UICl+4KTnZ1Zww3R+SmnasIz0uSq9NkhZkEoF507Sgj9OiTW/krynfcGyfxT1CbmmsNAZ9HHh3a
 1yOaHWtgGuG9But/tIdY+XhoKwCiZdirLalIWVqG+dgHnUsVtXUIiqXFS11IG30Lt6yPXEtVldT
 etsRQr0A4nyiT0y3jHJVWDUSG3S1n497hm/Pg9WfNoATvHNahmnkgaJw0xr8WlnRQF7y1RrMBLL
 xjNJhsHbVmYp7yMIXQvp1iCViOwnnNSt1kmX39MEAoC5uvsjaXf7yBolNEFDbtokHJfE12pGkxF
 wUkEPO8HbUGrx7e9a52BlSkL5xUwtEPbzw1cwDE4fxnMnRqjAN4D3KaybwyNaST1OjU4bh9jcSs
 4zkxngdbSwCokFpvCQPb40HlNL/hgNKOidTFGiGrH1krNOV6BDiyEq1jIWL+ef2z5lrMLosK3TW
 6+ggIzyrgDyFFlbLbiQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050117

Update DeviceTree binding for Mahua SoC TLMM block

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
index d2b0cfeffb50..2836a1a10579 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
@@ -10,14 +10,16 @@ maintainers:
   - Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
 
 description:
-  Top Level Mode Multiplexer pin controller in Qualcomm Glymur SoC.
+  Top Level Mode Multiplexer pin controller in Qualcomm Glymur and Mahua SoC.
 
 allOf:
   - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 properties:
   compatible:
-    const: qcom,glymur-tlmm
+    enum:
+      - qcom,glymur-tlmm
+      - qcom,mahua-tlmm
 
   reg:
     maxItems: 1

-- 
2.34.1


