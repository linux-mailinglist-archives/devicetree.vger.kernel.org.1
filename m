Return-Path: <devicetree+bounces-216419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7631CB54B39
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:40:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEE0518924E3
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B329B3009F1;
	Fri, 12 Sep 2025 11:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZLLgVOkZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A42A301038
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757677187; cv=none; b=jVGn1xt0Taa9vEFh9FFNenR1/L9pZdzNPT/DNPn4/5zrRAWuVzvfHUea1O+KVkW7FqiaAWqGQ3xMSrWjlBREqJ6x/AWyDiSpSF52rDGdK0dNhEpKQ+odjCP5no6FWZ1b+PgJDV3DzcythZng4yYlaRyMeNUpUEAiV8hXitzlHW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757677187; c=relaxed/simple;
	bh=iXID0C097LlDUB/zo7wU7HLlfkLmr4ASRlNP6RgIyjA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P2F4RGzj4hxnemQ79a2JFGKskpIqGCd8AemxnK4Ify0NxggQhVyxhXBpruIsSdb12+tkm79L2+TGObPaharPPy52LAX1Hhmj45TXVhbMtTcyRfx+AGMVRd33tLUotBD0ksbdjCPHutCKtJITeUlcK9rNzfbnm0UKpXnlbxxRd+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZLLgVOkZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fK3i017571
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:39:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	59rj00Uo3zScXl9anw4BJDMpejse5yew5Wz5zTlZCs0=; b=ZLLgVOkZwD/EGXgm
	dwIgV9pApQ6cleVbKK/6af2p+jTjrCAf0btvIdQt1Gq59Q5onQ40i0l2fftMY0Uy
	bYXxTC6pMBGGGs4MDMse1hoxCl7qp6s4827o67SpP4PAbhtr+jV3JYHrQY2OwN4p
	+hZnyDluBu46ibXlKN/9NRnC7B9mpX811b0UnyHrT+iId5//9RRiKOYpUt7tpg1g
	5L21OvWn5MYRQFRLU318bQmJ0Jh6AflzMCYVB1+B+bVsc5tPp9Dqpi74fTmuBmlY
	7trrIUyTiD7WZIyDymViiP2uZl4hXwgx8scU7EBpA6nh4WkqaEOG7tEda/MwlFH2
	ecN2Bw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwskmqf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:39:45 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32b5f6d5292so476474a91.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:39:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757677184; x=1758281984;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=59rj00Uo3zScXl9anw4BJDMpejse5yew5Wz5zTlZCs0=;
        b=cQ5+7eEKMHFWKK5rwzpcMQLJYCEn1ukx3mJBKFvFhQ72G/WqDVmMW7/ck2oWkHd04B
         39tusEzte3FO1FVQyXdqbZy4zpEuOdpScNbHVIXP7D7CGF4jft5k3QFdjOD1TA57K0I4
         yVnDGYYiYVK+08dSS0u3y62EWxLx7fkvZ9LVSWEWlj+O/sfRHqUN6oCaaYCYnaHhg9rr
         VZB6DZYCwxYX52NEzku1iKj3Aej678N6Fj15LYct8XYMj+aNIHuVmxFQKEe/oN6QUq5K
         ilpt6ha3zCiwyF9SEm+QubYQG+rxoHTasOoAMTRU+z2RaitBGl1YwNdtx513F4GVnfbV
         otjA==
X-Forwarded-Encrypted: i=1; AJvYcCXHBV8ZvoNTAuAJu9eIh5CaB+VuNW8Rqdgoqfe/Ttlc9AwMLi2/HnWLb2q+L0BinoHcMMV4haPgB85O@vger.kernel.org
X-Gm-Message-State: AOJu0YxA/5SWXuutHHh8oLc2VymA0Izf/Kkz0w4K5nSiECe9Ikd5es/Y
	JPbKvTBIfWiBQ8H+sSOpsANTuDYoElM3OjuAARqKomo+MCyfVnUViNV8gII1XHQJA+Oq1Mas3yy
	uw3D3YtiQ/MGDlx4Aszcrlb+NYz7QZFwP1Ij4oRFF5tILxEW6FmMKB4vGpoynp/NN
X-Gm-Gg: ASbGnctxa7FoIVAo2noXfv/Qf5vATqNbH17yhDZp1wyP2HI5oxUOJUb2mYG6fY1KiPz
	T0x7yMI5JqB4logLS83nIAoVKRM+E4FmqfFs64HEwwtXBkMlQbnzQRhBkaUq0y0dbFWPVnVTaYU
	CtMED2i8boRsMw5wpAP30buk3ZCWAGE9smeP53q5btJafu2jgAyGDRCJoqfYJtaNqVQzYQ7gh/L
	fSwucYrd1M/ussadRuHm9JzjIZU4ZUUlVskR7toN8zSGD0VMmhnbqelTCrXhmAETO2D1+VtaIKl
	xZNLhK2AJpEx/QCqhe5n2XuMFQeJBpLieyEhbi12F8UXNioWpQs3iFL4tyuVxdAEwqcJDzbl2d4
	27kvdGY0JQxf+Sefe0hbZIthuwRVTdsoHDBkxphtQhbrFaSNDns8Oh0/F
X-Received: by 2002:a17:90b:1c8c:b0:32b:87ef:5faa with SMTP id 98e67ed59e1d1-32de4f80998mr1685181a91.4.1757677184287;
        Fri, 12 Sep 2025 04:39:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEN8J7dSHJlf1bK3eu79lm+dW5G5Xfjiiq4Mp8bFzHbfNDPDpKNxRTqTagtKWQGq9O7pdVh8A==
X-Received: by 2002:a17:90b:1c8c:b0:32b:87ef:5faa with SMTP id 98e67ed59e1d1-32de4f80998mr1685136a91.4.1757677183700;
        Fri, 12 Sep 2025 04:39:43 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607c45e34sm5278760b3a.91.2025.09.12.04.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 04:39:43 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 19:39:16 +0800
Subject: [PATCH 1/2] dt-bindings: display/msm: dp-controller: Add SM6150
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250912-add-dp-controller-support-for-sm6150-v1-1-02b34b7b719d@oss.qualcomm.com>
References: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
In-Reply-To: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757677171; l=1295;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=iXID0C097LlDUB/zo7wU7HLlfkLmr4ASRlNP6RgIyjA=;
 b=CP5uTwRTZhS0ty2t+/L3sSCKvXc3+Xx3YfkllA0kqvsxBtN84bm7Wx5HahYy8qmEBjjDQ6yiA
 coC/qz/R7eIA9rz6ilS1Q6EwxYQAyEH5WSf4CprNO34jp9ZMzzCVT7I
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: Y7dgaDQ2-S7EIJ0_PuoYeFLVv2gQPp1R
X-Proofpoint-GUID: Y7dgaDQ2-S7EIJ0_PuoYeFLVv2gQPp1R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfXyg0mifK/MUza
 G1RVSTyNwC4vUFpvPV4Yp9Lrh4OZ4hjhfVi4D8i79KYVAnvqS3K0gOpCIVRn2Bvq9IbW3Gf+1h5
 hN7CWq0hw+moCnIKMjhREV4K7rWLO/KxYOfjIOOK587sSYUf43MeS+mf6WjDpxGFrhKxkB9WYma
 p0Xk5lgESZ/1tcsbg4A1XCmxJuNSxVNS5QEn3Axe3wjiNZDSF5fi9cY+9QP8OlhC5etbkf5fzFu
 KcDvZ7eLuyV96Oy5pMm6KMImtDIjjIixOnFSOZ2oKEXOf+wCNzduoXQwoph7u8FLUPt6ZX+CzuY
 QIl+iTud9yqfDyril3EVF0qP75VrnS54xz2JGXoRkrPCU5II5MN+OkXmsxnnxkNr2y5oESCWOAS
 x7su+Lhi
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c40681 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2t1bcwrjeadYucq94KYA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

Add DisplayPort controller for Qualcomm SM6150 SoC.
SM6150 shares the same configuration as SM8350, its hardware capabilities
differ about HBR3. Explicitly listing it ensures clarity and avoids
potential issues if SM8350 support evolves in the future.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index aeb4e4f36044a0ff1e78ad47b867e232b21df509..2bebc182ffe348fd37c215a6bf0becea11e5ac15 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -46,6 +46,7 @@ properties:
       - items:
           - enum:
               - qcom,sar2130p-dp
+              - qcom,sm6150-dp
               - qcom,sm7150-dp
               - qcom,sm8150-dp
               - qcom,sm8250-dp
@@ -261,6 +262,7 @@ allOf:
             enum:
               - qcom,sc8180x-dp
               - qcom,sdm845-dp
+              - qcom,sm6150-dp
               - qcom,sm8350-dp
               - qcom,sm8650-dp
     then:

-- 
2.34.1


