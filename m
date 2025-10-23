Return-Path: <devicetree+bounces-230106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3342DBFFCB2
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:09:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 13BCC4F5039
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA932F0C78;
	Thu, 23 Oct 2025 08:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PkKKtOpI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AE52EC0AB
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206870; cv=none; b=jg//n1Wv/szbATDS1NYYOavqahd3Na2/Jy7lIJlhrhc6yNqinNzBVHodFbKItFWQuJMUZEArv5IXANKRGCbSmyqm1caj5ISZbxFAKXTRE8jJbEmFnUiZm3sQ6Ra1T1N8eSHLBa8eMsdqZVHPCNa7YtDBAGGQzzve0l+LoN59odk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206870; c=relaxed/simple;
	bh=df1ZsrK8gVaOe7J2+CuDQdRh1tegzMfSLcKb1Y9LTME=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ASjrCvYCUjEU5EUUQCA983eNiUE0zxMWXbXQHDINhp5QeWncOpY75sm0vhOLYX51qeAuyuFsTD7f+JbxD5GbC7r11/cFI+9wztUUobXL60M/9RLxtK5bLBzEu2JxvIWE+L2jG8XOlmt62R2X/k4xTS1Si72j0Som2H9Pi4NDHOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PkKKtOpI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7CKAB006702
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=j1IIJSrPTfw
	ivQCAHihRszXwyf0kfSMjdUDkP6+21Yk=; b=PkKKtOpIyQLVTGsRai2jXSJzHkE
	8A0G2xLZ1PYKj4BRtH4q2geggWIOzrO0xWu2zGuWap83DvfuVBY5fZLedqNvlKUr
	RKHG5bvBTab2IwasBUJ+pt0ih5ovCCj2AP3uxEznB+rmzVZLSZl/NtrRIkr4AtPS
	x1sNWeVLLwGGshDDp+OP9WH6Nke+xFjS7AvrnqLACHbIpZXWp9Rkg/EhKRfe2s9X
	Evb5UbVFzxLsls84bApSHgfKtgX1V6AFRBbTTGMc8CV7v2i3AUG/mktp2jj92O2U
	rzmwR/gZU1fX6tGpRd06oe0s1e+6j2rmWvPFW9Tf7I7GBumY0avAC610HMw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27j7g03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:07:47 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a277277cb7so791716b3a.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:07:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206867; x=1761811667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j1IIJSrPTfwivQCAHihRszXwyf0kfSMjdUDkP6+21Yk=;
        b=T1zBYbxlIGI5xGjHmf4JaLT4TOso+aYYU0SUsO5e5FUX4sQfxi3WtzJZePiQzsGxFF
         ycEWBeyKRsKsO0SAyRTD4wV5zISfdcwv21hJTwF44ElxQyGW7aUJ9RPWxnqprTpvi6el
         m6i/oL0QA/snKoo/S+6pqLkTFIM8hBBPLQbLgvX1pOPKkwPB4dmo0XN/iK0qJZ7xXG2v
         4zpcJOt2mr//782C3pPs6lCAc1kfrczzBD2KakM5Nus1nQAPBgZ3l2wIbRL2dikVHMlm
         855xwss4ABObG1uyiwjNnPVzM0QC8IFZiBv0pxYbCtolQlaIVTkpFunn6DsUYT53b1/Y
         6zdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwR0d1CwYLO6g67K5EWX/FH0cmiBYufv22YDW1COGwN4ve10gBqbFRKM975Irf76NQcEi5plLvYV1B@vger.kernel.org
X-Gm-Message-State: AOJu0YwbCjo0NBWPgVVaKJkm6gYr1E1D6EdHrKXKZV9CI5OStAYwJJYy
	MJeEOcyJ2JBi5YhELsafEyi+gljBJ1Np+UihxOtphEsckQSeMnUJI3BjckXhq2cGqsx/DZ6Vtup
	sXQGpvV+V87RXTK+Ve71oCVtOCe0sj9Q2kL+VMhUmjJfJ2sbebTGV3OHuzhDdMgs0
X-Gm-Gg: ASbGncuYm7uqedneJvrAQdUeOVJmIKxP61vINO3PHtgk0sHnU+bIXfoYuHeycPhqKON
	o0YY1vD0JjqbVvNaAltBGdOQT1CVVWjl+lBahe83YAPj0jgqcub8bYJaAbI3yjDhxwp8+J8lSBj
	rLHRPtxgpcL4UMxTIFlIE2+JL0vFBPYtSnX1VjjWH1oVTGZsOyGTM+ywPMzbhClDEIq4nysSh+R
	nTyK5oo3AnYnS83FMB8ToyBAHJ1aPlb8Rv0W5/kUfuSxdJNDRbaw9Mxxt3Vpa71e0UQb/k5DlM2
	CIT5GPrF+uGcTPGyfP1ROsnKQRaziZ3BD665QE241oA0sm6PYEjSMxhVzosNpT/oCCzOeEExwNl
	cd1iXbDOp8f4TIr/WN3PRbslKYiRk2xWOOVxJ+GrHVw2Y4TG4oQ==
X-Received: by 2002:a05:6a00:1707:b0:7a2:7792:a47e with SMTP id d2e1a72fcca58-7a27792cff9mr1270475b3a.8.1761206866514;
        Thu, 23 Oct 2025 01:07:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGm29AEfViqZ/xwI8Z4NkviSg6rNCA4U/hY4ny+YB6ujwOOvByBjS3fyeNcsd8nDzK1JHj/mQ==
X-Received: by 2002:a05:6a00:1707:b0:7a2:7792:a47e with SMTP id d2e1a72fcca58-7a27792cff9mr1270451b3a.8.1761206866100;
        Thu, 23 Oct 2025 01:07:46 -0700 (PDT)
Received: from yuanjiey.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274a9cec5sm1676410b3a.20.2025.10.23.01.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 01:07:45 -0700 (PDT)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH 11/12] dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
Date: Thu, 23 Oct 2025 16:06:08 +0800
Message-Id: <20251023080609.1212-6-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX+48lh7nPTlpR
 6QgW97+yArtBnWDzVwWA4Ons026WT7FCYkeKhNdbuNJ8ID7jiKPCFuw1VayypK/WwHCBBPSXFk/
 pDqYoM5V2Hjt0A2paLs7smZFHHBQ1954JWNjseXGQZs4nxfocrdguXoHODHdARwFwpDN0gsJm/5
 4oQ7wJqTBThjMIhgACROC5X1Ni5KFgtpeRhEejCBSVaX/kRm7iaqLcf9DLMsCmWJ6DP90MgU/cg
 FA868dyMDnUHv7FNVhRdwbLWASp5tKnqUomcC/PsXMyDDbQ6RLBCJJQxVoQhO0iXhHjqr7irphy
 gmSeXdcxpKINGemQ/wzlU+FV3vamOFbuY0sf13cXKcbYCqxSujix8BrksCLhGuNtsqrdzTpsGoV
 MrBe75FpjyQvp8ztGWNck0cU3E1q8w==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68f9e253 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=NRHHWUy0EX9jfUzwrTwA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: pYLmjC5nvAO6IQzMnMSAqO6txaI1rva8
X-Proofpoint-ORIG-GUID: pYLmjC5nvAO6IQzMnMSAqO6txaI1rva8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add DSI Controller for Kaanapali.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 4400d4cce072..536ebf331828 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - qcom,apq8064-dsi-ctrl
+              - qcom,kaanapali-dsi-ctrl
               - qcom,msm8226-dsi-ctrl
               - qcom,msm8916-dsi-ctrl
               - qcom,msm8953-dsi-ctrl
@@ -369,6 +370,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-dsi-ctrl
               - qcom,sm8750-dsi-ctrl
     then:
       properties:
-- 
2.34.1


