Return-Path: <devicetree+bounces-173520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED86AA8A26
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 02:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEDA5171968
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 00:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 995A144C77;
	Mon,  5 May 2025 00:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iqQr7IVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9CE2628D
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 00:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746404103; cv=none; b=DPmpE8GSdie3VpFwAZg2U+CE6TXdVwYnbV/9N8SazzG3fMZKz+rt46uVNpdHUGSgmAIdDa5PQ82y3l91uqW9E536v6IIlR3RUzRbRMaCQu3zeUY5JP9x9jAulq+wHDziwlzxZRTmTODfKi8zOac68f6076LmQV1Yyq+NtlA/XHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746404103; c=relaxed/simple;
	bh=qPjEnVJcWHzZbV3EVkbm0vz2YVbx//bPP/IZKQShGaQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SNQSPiKuty/soAOrjMKL0Az9z1L5rSDQo3RcVRkRO62YYxnHOOAk9T7MJUT+av10hjcd1IfcTamzW3DwUoC08QPHIwcLeVX751mNdC6rKBhAoW7/vVZIvPn38VI1fshqqYn1wL5aGU+V+74R2h9rrMBE6QoYzzn/05OUfwD0A8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iqQr7IVh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544MZLqO017719
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 00:15:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	70R5N83II2gknlMbdIhEMERE7CMg2dERyKgyccEkyWU=; b=iqQr7IVhBWyGuD89
	Kc7IIiWFNIJyjp2lJ2lUfGhfrSq0c7ps7d15ZlvSUuLYl0KDAaxfNKyp1ZsEEoLJ
	hPqkAMmlKiUtEtDsRKDs6PMNix3VrTYBULTpdSx2vaY6PXhD5566ZJShGyhyhRq0
	vc6PnKQFyG/vlgVpKsnl+FrQkdY7F9Bwm6lR0/SAVlUY7sCPcHugCp71Jn4EF0Q0
	KORFcHAemuzQRNoJ3ps6oeG4cxWJEGbRU8OsGR5VyI035vkF7MJB+H4EDJHyeNsM
	W0VC5PACaPQEhZ8bdB39mHsD3rGS/3DeKRXt/CNbt2E3+AWGaXaY6WseR0UZ8Y+N
	Uip2RQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dce9ahhe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 00:15:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54e9f6e00so869617685a.0
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 17:15:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746404100; x=1747008900;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=70R5N83II2gknlMbdIhEMERE7CMg2dERyKgyccEkyWU=;
        b=qaUCPfaq6jqyKYIJh7zzMbtzmOptV0CX/MsaSQjMFfeSrNi+yfMa5BiTvLKbtKD6LG
         nhWiWXcPMQzBp+f9QCrgc/LHl+s9ok40QgrM2aDnA5slhPtVM1YyiRywRt9tFIo0Nhyq
         hi6m9nbnJ18c35rbe0hfmOAB3z2G8EDv4UVzNxEjH4+7eWSpqAEJqD2khq1RxxFDK2Ld
         jNOxRoayWQox51dueTpmUkIrM2L1jUO8Ykb1NYrEhn4imDHMvL+B5SHhHYUU11VVuBdp
         MjKQhilROINbLrj35j1+d1JwImKNb02QrxwW/SJ7PX8FYALdaFEvbjVulitwfMDWTPpM
         npww==
X-Forwarded-Encrypted: i=1; AJvYcCUGT6MGPWizvyTxmnOkwrwVhLmD8pZ8bLltdY3FLR8qhHueMlEV2Bw6SDUx7+N+i/yJxsu8K8DdKwR4@vger.kernel.org
X-Gm-Message-State: AOJu0YwUYr/YWe6V/3c4Bifu5V9ItNOJEXjpEXHJ+NMEh0bVUEXJIxsj
	koJkR+ISX89ySZ7gKq1TkbpNnYNVgN4fZ60PG0/bzq7fXFN/9TToRGoISKc7edABlNPhwEOIAT7
	UNermXx4yRFL7BooyMvfPYtayVqX/Sa6eKzpcCCiw+OO6c39opVNq1+I4zYBX
X-Gm-Gg: ASbGnctYYOoAeZ7krPPx/U8OuxPbYcPPp1oOscCQpobUCy9x103A2GgEg6eiMewk5WZ
	rWuOsk0CW0Gz1yF6nJhNbmLwve0mBUW8HOSeoxyy2H9qwBLaPk4ElyBUN6cjQIvawUMrjIdLk9F
	hEVi3l5RTYlutoetB2e5KO6Ong2U1/eOdGgtMqS/Yjy3PVIn1ItUg2+08KwZX/4/HTAefZ++62j
	uqoIMsrhhemoJGC/oj2KqFLu1dmAtUmT8n/0C9sMW5rtLt2fj2gWQNxEK6nrGmqT3wOW6q+KNPr
	wvl0T7RvYwLG470O7611wl4hruWtA+i6JZDTkJ4kofomxj9UjqKN4gZ1unwipaCJdU2Kwr6dxDo
	ukTe31kCdpH81bjkduwC4oyfm
X-Received: by 2002:a05:620a:a4a:b0:7ca:d9e8:d737 with SMTP id af79cd13be357-7cad9e8d908mr1091028985a.22.1746404099964;
        Sun, 04 May 2025 17:14:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRhCRNcvKG5ymjFE6pX4ZnRjXc7dZtbqrZKKdZ0iDjLTptYnzUJfbnAUIC3NcigRTH0B1TZg==
X-Received: by 2002:a05:620a:a4a:b0:7ca:d9e8:d737 with SMTP id af79cd13be357-7cad9e8d908mr1091027485a.22.1746404099646;
        Sun, 04 May 2025 17:14:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ce656sm1454066e87.105.2025.05.04.17.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 17:14:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 05 May 2025 03:14:45 +0300
Subject: [PATCH v5 01/13] dt-bindings: display/msm/hdmi: drop obsolete
 GPIOs from schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250505-fd-hdmi-hpd-v5-1-48541f76318c@oss.qualcomm.com>
References: <20250505-fd-hdmi-hpd-v5-0-48541f76318c@oss.qualcomm.com>
In-Reply-To: <20250505-fd-hdmi-hpd-v5-0-48541f76318c@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1292;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=gcOjyAZkXuR3SrOQQtUEYQYbb60rDFhov+Xy2NtQ5t4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoGAL7tA9sxa/DweHnrlNpCUZI8ErVU6X39GuyJ
 8xVcAVW1ceJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaBgC+wAKCRCLPIo+Aiko
 1ccPCACgPWq8rM5hryfozxB2ZWetX4xJ24yyrKuD89yYi6VrlRNmyhCy5tuIwVtGlxtPWIPNhQB
 dTWXqSpX1rjDTAELM4B4E59M4ZOn5EMf4QASI7RjO1QxJgvB/oh0RISwTAD41x/DhwsAZW9SYsT
 7HujJL66j41R4uEvXSC//FCkBhJX3lq7m4V2hohlH9NDv7XrBFEGThI0sEM+nzA31Baya9aD1ML
 YEeMypT4BBlpR9/viELikD8eDcvX9mdZ6jxJ4Rq17H/+xAqxGakHWKGUSD1ELIUKf59jy05URF0
 TWRcURDtUuVLJJwIk4b1XLXof83szgUS9+yy+Nf+hHiy1l8o
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDAwMCBTYWx0ZWRfX86jcvGvWWifi
 0VFo9RAhq9rFrq/CaH7tyKKRPuZfSRIjnbg2XV8vWDkBZDx4eYQvTF48sk3p+gwFsZJ+j+F7C2W
 v7CJvyRXMpCR6uG2RFIeI38zHBXHgDH+PqJbijloIijdx1h0aMQVUSxWSEieaELtxXpoxIhJfVC
 WhzREaa+oeXYnzc1iAxWttMrFqTLdEo83QLJU+XnXYFNMnCarZdb/cOnYxWJVxqDG+SzpXswqTf
 THksHAauYFKiz4QPnS/VBaEy8vXvumpA1H64HzKPYBdKjPpXIj8mvYUHZf5gFT8q0HgNkrxMV6P
 RMCmnCLBigdcS5qR5hJH/kPCzC3fBR+H583eO2c2KMcK/5K2Kt1FOGxieVFFnjAZOaFYnvLhkcP
 FeX+sqZpWeYXp5MT2uCA2laMRMfwfZ+c/lDZewmFsrq7sNESEQhF1zY9vXF0ev4D7zkBeZea
X-Proofpoint-ORIG-GUID: xHc5je41yA0vMG2OxvPZ9NaUSwGk1Tom
X-Authority-Analysis: v=2.4 cv=Qope3Uyd c=1 sm=1 tr=0 ts=68180305 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=Q0eG0X4qb_EmYOw2QsEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: xHc5je41yA0vMG2OxvPZ9NaUSwGk1Tom
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_09,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050000

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

The commit 68e674b13b17 ("drm/msm/hdmi: drop unused GPIO support")
dropped support for obsolete qcom,hdmi-tx-mux-* gpios. They were not
used by any of the upstream platforms. Drop them from the bindings too.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/hdmi.yaml | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index d4a2033afea8d4e4f83c9859f8840d30ae9d53f8..7e6f776a047a00851e3e1e27fec3dabeed5242fd 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -66,21 +66,6 @@ properties:
     maxItems: 1
     description: hpd pin
 
-  qcom,hdmi-tx-mux-en-gpios:
-    maxItems: 1
-    deprecated: true
-    description: HDMI mux enable pin
-
-  qcom,hdmi-tx-mux-sel-gpios:
-    maxItems: 1
-    deprecated: true
-    description: HDMI mux select pin
-
-  qcom,hdmi-tx-mux-lpm-gpios:
-    maxItems: 1
-    deprecated: true
-    description: HDMI mux lpm pin
-
   '#sound-dai-cells':
     const: 1
 

-- 
2.39.5


