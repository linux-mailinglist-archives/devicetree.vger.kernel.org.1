Return-Path: <devicetree+bounces-229624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AC190BFA52C
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 35F774EF7EC
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C33A72F2905;
	Wed, 22 Oct 2025 06:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MMgqM8N9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CD62F2610
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761115835; cv=none; b=MmRvBZWmj3Yhc+hz1hgH9E2HAmfRLf/NESHoIargXGE6ZnLtuzIPavJx11HtI2v+LUoP+LK55wqW0gNLujPNbDOAYLU/jbvX4W54W9wpL9WT6UAsP+AWky55bBQGemwrEPPdCcqpFn0/urewfqJ/55SNiq46BRZFlEAhotgbTJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761115835; c=relaxed/simple;
	bh=bMveLn8qXGEXMOOXqLmYG2oX6+KBs0Vzyv7XgzdwA4E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kASlqftkFPuVbAW8P8c3ozg4S+7RrI3TtVpiHXg46sqRGF/U2Z9YT35EMfWZ1jfP4QbkJT0+u+PjLtQcZbjMGtrbc1UduwPEXLS8v+GP8kQjqmKsOwlDBwWWFuL/Sy2w35bUnf5gpGa0v1RN1Etj7gx9opzom+eZPLLZMfe/6EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MMgqM8N9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2MG7R002519
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GfF19aO8xny9L39JuzD8Gu3or8NnMTbYbN7iD67kX3Q=; b=MMgqM8N92f10wjjQ
	3hWg5vMx/IFvH7roUEaeSLuVfeAkuliOuRgyNytcolmYTgqk5T72Bgp/T/M94S2l
	5Ne/uJKCur3t1nDuzHpzsaDlf3JJSQ2ZWJQSejrPpe7L4lPyEsF2sF/+vrSxU2w8
	zodJbSJ5RvLCQ3rscebtK9D+igwahWDhuK1ccx/KEnsibVXxtQdyT7ly6KJ4E9wy
	78oREBay6JoavJi4tH6GaIPwNGwmTMUGUfSbHankmXC8zbSwy1YBmH3uzyTiAuMh
	+2whizrPlDJd97JOrq5cT1Dr4iKXUdLI45YuBtWaWZA/Q4Dc7FFg4tf8/eLlNeRt
	7j385g==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08w95qd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:50:33 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33be01bcda8so5813323a91.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 23:50:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115832; x=1761720632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GfF19aO8xny9L39JuzD8Gu3or8NnMTbYbN7iD67kX3Q=;
        b=SCsAl86QisK1M895kErYw/47ezta11mzccLoQD3kAs/15ug6Hw4UGIItAhE1fxiyNJ
         Cd5poOWFgLNO0tylIYHiNkjcbFfX32U4GeNDh8ewunhLSSSXVTcv7OLUKHoIgnCzh8EH
         VKA6A3KWgGoiQUiC2yMYv98CLvRiqfTdRgznHQrsxIRx+1pBQJBGnkOonctZs98GdaSa
         1YW0LStrqGNwTENeT+cyHqSPLO/zci+pkcok0sJUXRmZ1uKIbvmkWXTLKxTP3aEDTDWp
         y6XetYcha3LVoCVyHxxq4bNcuXXrsQnVizE5PEJ+cVnjUO78SvUOpN/HPiVv6LchsWG/
         KFbw==
X-Forwarded-Encrypted: i=1; AJvYcCX24NEPnHPdUh24JQ/yowaA1xTNiQl5uN9AdeJd+MbR1pfUBh/wJV9qh32jLcrnXzubxjykbZpeVEu5@vger.kernel.org
X-Gm-Message-State: AOJu0YyoihOWDqbg672cByU7ljdWSlhqu8y5NHIMC/RQhfpmnnhjtRkT
	kSsJISqLmOG3QHweOVAXuVyiUZVXkZiKsAbe8YVBY1zT5qc4THqMcdgo9EyqOGO0wY+dJLTh8Z+
	Nsluc/kWZZ1Key+ZDQR9mACDrlo8jyYfNLYVv1Ky26wF01PGotxN0CkPJQ6CHGI7V
X-Gm-Gg: ASbGnctBIOZvOYOokxO2AnRuYtiH9XLuw6EeXKjw5NujX5Mjb+urPD8XWsxCNj7MxFz
	cx5o27/ehXEaYcWDs9szD1YlXSZsedYzudmmjSro0xI6n83IBrck7XWGoJcUSYlitCo/fkL3Kcs
	oRT0opf69ZTVVX22ISf/UEhsZiON6/R30ZR2sX9ruwuSe1A/w3XejxVeBDykCcNexUsVYcLJugh
	UQMWvvIGepokqLniULoVHZt+J7gVutY3VMybJ3elZR0/wa8t3ITxTAMYc7+Las4x2d/rmnvyKng
	l3GI3MdKnWBlZXmeEOh9rAKkOMp/AQoLyO2VLnGiX51LcrFSB+Nz/ZHdokDx0dAQgWLhPlasbnS
	GSxchjYtLPYsW9eCnlpaJ0N6SprfD4RfFlbIk4SAnBFRumPA5ew==
X-Received: by 2002:a17:90b:2d8f:b0:339:f09b:d36f with SMTP id 98e67ed59e1d1-33bcf8f8ca4mr24582316a91.28.1761115832259;
        Tue, 21 Oct 2025 23:50:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyOzdwa6M6+VonTKVpn/1dRGshyVGeAEj3HtpwTzivtN28WxG1KsX0bk+9YqsiFARG7CtuNQ==
X-Received: by 2002:a17:90b:2d8f:b0:339:f09b:d36f with SMTP id 98e67ed59e1d1-33bcf8f8ca4mr24582286a91.28.1761115831768;
        Tue, 21 Oct 2025 23:50:31 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223e334fsm1560285a91.8.2025.10.21.23.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:50:31 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 23:50:27 -0700
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Kaanapali QMP PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-knp-usb-v2-1-a2809fffcfab@oss.qualcomm.com>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
In-Reply-To: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761115829; l=3168;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=wyxSRIp6b2YrRKpZKlLcX2lrCBRNwJtuTyhh+0I06cw=;
 b=WfGOp1rFR/PQ0DC7AXBJXKQ5YWGLmn3QByRcDCNfXH+p43IEdWO+k1Zkx/lfO5PztnyG3o4bN
 dSW/2yFfwZTC6ouw9RtmFBhOxE1Faix6EtiB3S19NbYSpwSTKzdKx3g
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: KxUHJkGaluydFslSMG7V0lbzlIwstiJM
X-Proofpoint-GUID: KxUHJkGaluydFslSMG7V0lbzlIwstiJM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX2ke0Rh7Stdgk
 8ch0IcrfdVJ8uohvgj9eWi0sn2969eUOXVWFQxM6oNLW+WBTWAyFaMaQqwrmNP7KfDWwvRyydaZ
 d2S+2+BiXFehe+hlHTvzcJmZnMHB9oVhOKZPIPyAnaLBkfpN8UhT/hfhZd9w99gD4EiRJHj6jEn
 j/VXkNtY9c3hu4lUhLXlyoeotUHITqAt3WbPRf5j+lLDA0dj7lOhCLOMcVspWE3iwITbaxxYzgg
 3OQv8KqjNcQjCPgjPzB3lJinbLphJyDX34pAqI039OpekAyepjoLbIyXxY4dlzCt7rvuc1+/iPs
 Lrb4rPjeeBVMmWT4fsiC8bGgV+dAe/B6eTIn9QyTBetfQ1A7lzLT2/Gf4YIFChysU5AlTOZ3cZv
 0l1hGRyLHAJEdKnVpqKJ9cElvZO9sQ==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f87eb9 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2IkYd7TCTIqYiAcLhPQA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document QMP combo PHY for Kaanapali. Use fallback to indicate the
compatibility of the QMP PHY on the Kaanapali with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 54 ++++++++++++----------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..8fa919ea3318 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -15,22 +15,27 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sar2130p-qmp-usb3-dp-phy
-      - qcom,sc7180-qmp-usb3-dp-phy
-      - qcom,sc7280-qmp-usb3-dp-phy
-      - qcom,sc8180x-qmp-usb3-dp-phy
-      - qcom,sc8280xp-qmp-usb43dp-phy
-      - qcom,sdm845-qmp-usb3-dp-phy
-      - qcom,sm6350-qmp-usb3-dp-phy
-      - qcom,sm8150-qmp-usb3-dp-phy
-      - qcom,sm8250-qmp-usb3-dp-phy
-      - qcom,sm8350-qmp-usb3-dp-phy
-      - qcom,sm8450-qmp-usb3-dp-phy
-      - qcom,sm8550-qmp-usb3-dp-phy
-      - qcom,sm8650-qmp-usb3-dp-phy
-      - qcom,sm8750-qmp-usb3-dp-phy
-      - qcom,x1e80100-qmp-usb3-dp-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-qmp-usb3-dp-phy
+          - const: qcom,sm8750-qmp-usb3-dp-phy
+      - enum:
+          - qcom,sar2130p-qmp-usb3-dp-phy
+          - qcom,sc7180-qmp-usb3-dp-phy
+          - qcom,sc7280-qmp-usb3-dp-phy
+          - qcom,sc8180x-qmp-usb3-dp-phy
+          - qcom,sc8280xp-qmp-usb43dp-phy
+          - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm6350-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
+          - qcom,sm8250-qmp-usb3-dp-phy
+          - qcom,sm8350-qmp-usb3-dp-phy
+          - qcom,sm8450-qmp-usb3-dp-phy
+          - qcom,sm8550-qmp-usb3-dp-phy
+          - qcom,sm8650-qmp-usb3-dp-phy
+          - qcom,sm8750-qmp-usb3-dp-phy
+          - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -127,14 +132,15 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sar2130p-qmp-usb3-dp-phy
-            - qcom,sc8280xp-qmp-usb43dp-phy
-            - qcom,sm6350-qmp-usb3-dp-phy
-            - qcom,sm8550-qmp-usb3-dp-phy
-            - qcom,sm8650-qmp-usb3-dp-phy
-            - qcom,sm8750-qmp-usb3-dp-phy
-            - qcom,x1e80100-qmp-usb3-dp-phy
+          contains:
+            enum:
+              - qcom,sar2130p-qmp-usb3-dp-phy
+              - qcom,sc8280xp-qmp-usb43dp-phy
+              - qcom,sm6350-qmp-usb3-dp-phy
+              - qcom,sm8550-qmp-usb3-dp-phy
+              - qcom,sm8650-qmp-usb3-dp-phy
+              - qcom,sm8750-qmp-usb3-dp-phy
+              - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:
         - power-domains

-- 
2.25.1


