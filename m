Return-Path: <devicetree+bounces-181896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AD8AC9514
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:48:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA9AB50002B
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B578827874F;
	Fri, 30 May 2025 17:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FLvuOCyq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A8D277804
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748627274; cv=none; b=jhyR6SmVtY5VpQSXfKlE/AGVz16SMJZtCTz/yc/OlBPx26HIlqhG1b2w7xqOvdX35hbR6gwNX0dAPKdc6JPF9zoNjT4/2bco3pdpbYitupqW0q/5NRHiB0e0XYfYcmw5ul95m5nI6+byawwE6PS5YVBo4Wir0GxaobKLEeqqcog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748627274; c=relaxed/simple;
	bh=wtNBVObtJLZWFz34xNAcXaCgoS4pdtkSWPvWnWYjv30=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CKXIGLnWm1JQn0rkgBJGb2ieKouMQfKPpwVQijt6zC5lhPhQyA5dRQqePaxAnUZhUvK1yF0VcUJo/xYEE1EP4WnQyKJEDFmAFQ3hVAwkUficIlfSc9rHqZ6K354SuWdLZ2l2nyDJQC20FeibipDYOnr9SSiiyl8y0EACa28NPJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FLvuOCyq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UBGeqV004885
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G3Yaqy14zRsDj/Izz9GTItYivVNTdDctP3/IaDWEKC8=; b=FLvuOCyqwowbjxsp
	yBk8vn5Sb1CkQ9OqQ/c3/gQWkWbn2Hia9PPIm0Ebc5BQvtUOcseAd/J4UK05Iq25
	jxo2avGTqcL3DcijyLXC+KeVKPWAvEoaCSjhmKE5A2jOwSLin+35hJ2zPWdhGdZJ
	nH87I7y4JLJwDElm7f/lhOlfYi0+sIzqmD5x3Jqpf/pr7+v9+n5veQ8RIJYWu/ab
	3wSkorySUWquBnxVQ1Wi5Vx6og4pMvLQvQe3QDPa4nDSZ/0MyKuv1dzmTW8vY8jy
	/FoT/DEISvDHyFc6/xcGQuTCx1xNHxRi7+1TToScl5xpsK+i+VC/JhV0tpyZtRSR
	P/JobQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ek9s3p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:45 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b2eb60594e8so1462029a12.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:47:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748627264; x=1749232064;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G3Yaqy14zRsDj/Izz9GTItYivVNTdDctP3/IaDWEKC8=;
        b=ATXrEN9fuXnF4YirhBwLlqefj10HNVPDHRseBCpOC8wCA882gqJSy+swJM23ExS1kq
         +BoDxFaJEi7w5Ohwd2otcN/pcWja7WNG0M8vrWOfxPN1Q4FgmpojOAsvwWKKjLb7fya4
         mSWCsK/Y9rtw0Vo1oy91PZCaDDyrpo+j/NIqZeUEOoV+ElI1uVtxFW6SONhs+h/WKPtY
         shoyzaxUYySgzsuF5hGtB+szOS9Lu8uKVv3avfRSVPTgbh7ewP3sc4GbC7XQu0t/NPgJ
         65I+/h+3ln6tzBx9sfQxSjKBrrc+qs2kcSIZeFFLOTJ3v9ryC+JguW+lXrRq/4clYUB4
         7iMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtnFR4v64cPJI5aVqP0Pg4hHya7jE+gNyhsAUBmQf1EoctvWGp1Kx7dWDv5gUJWzcg9uCS/5d1LK2+@vger.kernel.org
X-Gm-Message-State: AOJu0YwX/MiOG3cf5qzMfIfgevrYd6YLj6tW9GaIZBa8fzSuwa0lvHNU
	G+SExLrO7zsHhhhjPhle2Vk0WBO6i0tdZLYcGdSeQeujGtdMgPz1JM+0TyabKFzNdJceELkejXr
	eaEO4rHCQ6roKW6Sse9O9mp1U9TkgnmYiKAC75re8vvcmYe3NqxYuo2zCdB1E9tzm
X-Gm-Gg: ASbGncsX7u8WNYAiADJAgDNw+eFjnqDjPDJf2zvtWs5U1Ti0pnt+tdqRjKlW3zlNjSG
	V3UuzLvyB/ZZO4K4gThfU5xHvG3+BNAMFJexQ9zxTD2vY4/BSeF8WTNLpHebsPA0fA6Cl1+ZEVo
	G4jpQPmGPsY0mdQodvkoebgtct/sFE7v+yrCT0AlsPeqbov7dKYpgJ+SJjGxnb2v9fPkEZg2oXW
	3wtJub3k43w7J2We9zim+AyMKjGjc363/nrgM4URp0DV/LqFebPdEY0rtMJjwK5xnl0HJEHI7gD
	c/9XdTRGgTDzSH0PkSOsNM+puEr4VlXZsvKE8gbeFFAUmS8/mbkGh61lEyPntXw1oJkRwAg4
X-Received: by 2002:a17:90b:54ce:b0:311:e731:523a with SMTP id 98e67ed59e1d1-31241532eb7mr7091874a91.11.1748627264425;
        Fri, 30 May 2025 10:47:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtRyWpC+3J4vARPUxNqzxp7BkyRVcIjF8pzurxuAfBXAhl/rjeV8CUFFYkLjSxulswmYqtTg==
X-Received: by 2002:a17:90b:54ce:b0:311:e731:523a with SMTP id 98e67ed59e1d1-31241532eb7mr7091826a91.11.1748627263967;
        Fri, 30 May 2025 10:47:43 -0700 (PDT)
Received: from jesszhan-linux.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e399b0fsm1615381a91.30.2025.05.30.10.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:47:43 -0700 (PDT)
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Date: Fri, 30 May 2025 10:47:24 -0700
Subject: [PATCH v2 1/5] dt-bindings: Fixup x1e80100 to add DP MST support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250530-dp_mst_bindings-v2-1-f925464d32a8@oss.qualcomm.com>
References: <20250530-dp_mst_bindings-v2-0-f925464d32a8@oss.qualcomm.com>
In-Reply-To: <20250530-dp_mst_bindings-v2-0-f925464d32a8@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Danila Tikhonov <danila@jiaxyga.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Yongxing Mou <quic_yongmou@quicinc.com>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-64971
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748627260; l=2367;
 i=jessica.zhang@oss.qualcomm.com; s=20230329; h=from:subject:message-id;
 bh=7Nf93rJk1Jau571xR4KogJtaiOBtO9isp+SwjgHQiMA=;
 b=/V8/oYxYroVmei3jP22ho13u9RU9te5O8gMSJvS2fsv5LzCmRzxuZ7SWGvcuaJNzLm5NDHvH6
 Z+SX6xZyosxCjhFzne33X5dJrRH6cXF1LJw0ZmHLBJgAd87nGUHIeH7
X-Developer-Key: i=jessica.zhang@oss.qualcomm.com; a=ed25519;
 pk=gAUCgHZ6wTJOzQa3U0GfeCDH7iZLlqIEPo4rrjfDpWE=
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=6839ef41 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=l8kPDwqpA12hi6-TC14A:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ngkEfq1XvI-e9WWiXzasE4WCz95Y5FyD
X-Proofpoint-GUID: ngkEfq1XvI-e9WWiXzasE4WCz95Y5FyD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE1NiBTYWx0ZWRfX3KtfQXb2F3wG
 QG01ltiVW90p6P6A2qwP/j4+gncxcdliE11tjU/hUzvpN2jPhaFdZpT3GN+ueWer/IkS/8hYAB2
 hyE69tYBPKSN+wCtbW+DgT0tmPuB7WKqN8O+/YLOewQK09FSS2LA1f0E6nuf3u1YRJGjIIg1zvz
 763+YqS580+kbf6G0AHkfKVE+/6Ptdmk1VCWOilWExAfoIB+Dl7uV+c34KbwQwL11hJhGwEPZP2
 4bmhcxBkT37Vjm9asWMgUC4azX29AcsYpLE6+OYOG3N6NOTQ5a1PvILJwXdj4Q46tdBYfxi48Q0
 /Be/OmK/PCaoQN0R4PnpriuByUCP+J9JOpgK05/JpPuEpRYvHnZjMBUPdKV9bAJkPBxPNtZPnyB
 5CDW2SxVm3LE5a9Z9zNsABkQ5Mg+T/HosOMfq/ec+XAYm38z5d3KoAnHPaDMF9f5MdUQJrtg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_08,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=664 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300156

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

Add x1e80100 to the dp-controller bindings, fix the
displayport-controller reg bindings, and drop
assigned-clock-parents

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml       |  2 ++
 .../devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml  | 12 +++++-------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 246bbb509bea..46a50ca4a986 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -29,6 +29,8 @@ properties:
           - qcom,sdm845-dp
           - qcom,sm8350-dp
           - qcom,sm8650-dp
+          - qcom,x1e80100-dp
+
       - items:
           - enum:
               - qcom,sar2130p-dp
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
index 3b01a0e47333..791de8a277cb 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
@@ -170,11 +170,11 @@ examples:
 
         displayport-controller@ae90000 {
             compatible = "qcom,x1e80100-dp";
-            reg = <0 0xae90000 0 0x200>,
-                  <0 0xae90200 0 0x200>,
-                  <0 0xae90400 0 0x600>,
-                  <0 0xae91000 0 0x400>,
-                  <0 0xae91400 0 0x400>;
+            reg = <0xae90000 0x200>,
+                  <0xae90200 0x200>,
+                  <0xae90400 0x600>,
+                  <0xae91000 0x400>,
+                  <0xae91400 0x400>;
 
             interrupt-parent = <&mdss>;
             interrupts = <12>;
@@ -191,8 +191,6 @@ examples:
 
             assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
                   <&dispcc_mdss_dptx0_pixel0_clk_src>;
-            assigned-clock-parents = <&usb_1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
-                  <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
             operating-points-v2 = <&mdss_dp0_opp_table>;
 

-- 
2.49.0


