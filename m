Return-Path: <devicetree+bounces-216418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BEBB54B30
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:39:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B63705804DD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17822FFDD6;
	Fri, 12 Sep 2025 11:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CI5F8IAa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAB52E6CAB
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757677181; cv=none; b=RuenqUxADevHkOfiXje1E3Y3V468Yw3R8/E60wWuLdAmDI/p1xr9QrPtKBX0xRYIACjd9V5q5EMGR0OqsQYPNFUf1J0xsM22IbpzPXzmntgHEsDvEkL9Z3WodmkNY3iWQZdvgJhu0LkxoWbWfwlQ3GUZwvZvGap7XQ2S/oDZEtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757677181; c=relaxed/simple;
	bh=jJaKwtw9u/RInTyEr63Le7/5O1dlIWRXoH3wFolu9pM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qm7svhbjkgdQmi3VJCzGfXKIa61PTYBNetANzHJmDrAT8n2lQS/T/QVedHsz17lL32kGIyoxQ2DgTaivViY6R+1nYnkWE2dxiYZZuidbNfXUA0GNdgPfCWn91HbgPxxW42RaqHZ5mWZYVEqi3A94592J2lnbLAlxnwpQ6KcKDLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CI5F8IAa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fJ91001376
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:39:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=PykDANlSk4R6a44QfGxuU2
	LMLVLao9uUaS064vEz4Rw=; b=CI5F8IAaL22LIdgNCh3lgNbXuHEmEpZaJXQnch
	vBiVaHRyO2gUOQGShiQUNnMZq4NdDrgTH/rpLi+ld1luFBxQ2IgoimrrbsEipct6
	KXu7AUVD1F8smoYOLPSEXJcYEYsG//E4OP2+5oBuHYnikikwLzuOM4fqLr6utxCB
	rdKYWOscNN943Npbxid8X1WV5+3neX39cQkGWOPSujNG2E7VRJLefrQ7yx+WseWq
	FDzCnkb2X8wclmNwEC/0QX91ArRRT6irbgqZW4el9eU8v2MsCOoMXptNGhsx536e
	m52cj1dw1EZTAVxswKZA0tR1ejDLVvuY0y+Np95Gv09b3A4Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h6gbj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:39:39 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32b5c46baf3so494223a91.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:39:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757677178; x=1758281978;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PykDANlSk4R6a44QfGxuU2LMLVLao9uUaS064vEz4Rw=;
        b=vyEfmyrf+da8a9+PkVTFQ0TyhtY+fYD2j9580tbhpJDO04+E04zt3GvlgpY9658q+i
         foELXSkz/1U953FUzi0cSgiIhSS/yKFg+dg8MhT1OHto37IlKdLY+rgnTwOxdOXi1xEq
         /Y5poTsSdeT6Kzi4bbHz5hWC4gYzdg6sCW4S1D45WSJLePyvFCHjiLtZ46Hzt+e04ia0
         jI0R+b6QNfldyFqDXf/Mbkq1BpV2QO9N/n1Zg0tG0qlXrzcfgf9DUHuxafdTHCa8sRGA
         HFKprQ3pJBO7Th87jJEyeK1Iot+HL6sNjX/TKFgQczZItPA7oxQnbaAGfoHzI/pox693
         C+pA==
X-Forwarded-Encrypted: i=1; AJvYcCXQtYX98gxR3dicju1tr0FpTyew8MMQgviWek0JrMNXqmtILzFYx7SSnrQ61a+rurAuOQ2St1Jo+dpI@vger.kernel.org
X-Gm-Message-State: AOJu0YyUWjVDduI9ioXocRl8NMpqkxMnIhNr12YConxsiPzyQbPx2lkg
	CIpNoqb+7FIZHBDnPXdG6w/1Ot6Dnqao/wzSgpfqvyf5LDhURQ0AVDaDkgDGa6PTd3oF8cn+hNJ
	E93IVo9ZsBOR8wshnlMMbf7oJIk2fA44S5yJiQ2UNbbFvTRECLZnAw6qnGPU2otZF
X-Gm-Gg: ASbGncvsDgYhxx0645JN2TczMRWZkag39AcO+WzARU/BTEIeqZ7+HCA0P2Y4nnB9vCd
	KEaog3GxtdVGpIHpI7tFyP8Not54GM3NSxn6reFEiO16ME8S0toBMA8KJ/HIFp02mtx4UJQJsWo
	2GZT1t7fLT43UvX2UUVcOkuiM/ZiC0bjGWfkAMjLM0HcbF5nC13E8IX7Qnbq/SlvIOzholaBE6X
	kWCljn6ab/s0l1qs8yZhzLQWSlw0DDVmZ/7L6smP0cboDemT+7/Z7SfJpfDbk6WIIDGVAxexuor
	CBFh5IynMx2FqlYG5a9RuvttHYc/b0tzk6XkHaGuUrQPS73CJ3++1f5CVH54ve0Mivm9R7NU+E+
	02bSQKISOnWlugyfSmiAYndspOe05HQirg/QM0CbFnVohYpj1BE7YZrbq
X-Received: by 2002:a17:90b:1b08:b0:329:df65:de88 with SMTP id 98e67ed59e1d1-32de4fad5c1mr1619888a91.7.1757677178527;
        Fri, 12 Sep 2025 04:39:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFb9/qfSDeeJM4k/mSV2bhoe+sAdxJ9belpgwJvZWL3AiibRSUg3vhUglLK/FGes1kYgelegw==
X-Received: by 2002:a17:90b:1b08:b0:329:df65:de88 with SMTP id 98e67ed59e1d1-32de4fad5c1mr1619868a91.7.1757677177899;
        Fri, 12 Sep 2025 04:39:37 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607c45e34sm5278760b3a.91.2025.09.12.04.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 04:39:37 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH 0/2] Add dp-controller support for sm6150
Date: Fri, 12 Sep 2025 19:39:15 +0800
Message-Id: <20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGQGxGgC/x2NQQrCQAwAv1JyNpBdaUW/Ih5qk62BulmyVYTSv
 7v0NnOZ2aCKq1S4dRu4fLWq5Sbh1MH0GvMsqNwcIsWeriHiyIxccLK8ui2LONZPKeYrJmv8HkJ
 PyBd+0pmJhpigpYpL0t+xuT/2/Q9oQhOjdgAAAA==
X-Change-ID: 20250912-add-dp-controller-support-for-sm6150-d7db03d0062f
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757677171; l=865;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=jJaKwtw9u/RInTyEr63Le7/5O1dlIWRXoH3wFolu9pM=;
 b=GqiLToS8NHqUmFLqN3uA43qTSnAHpwgK8phMB7Q2jeQrhHoIR1sFeeVkcrDx4h37tHXsnWmsE
 dg80WW/3tZWBxK+84WBbYMpFH2B6DOuQ5GFLMgjc3pyxKybCSJ2UhoV
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: PUuXTT6VeYU5kE5O7jTzkKNy9Os9sqP3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfX8dpTg4B3dHOS
 oGKowusVpFazivD0/3XWHMj3xKkPQpXVSGCWb7SWFa0rkKAsciBSIz1BNdgg6tYYzD2d9/o92c/
 7xBqG4+pISUu8G0k00tRT8cgVAqq8KBReHV8U/drBJqGjASzBQmH1CgVr9wLYukqDJoApM0nNPk
 VcSEFIGSV4XupDpI5iAttScgS9DOaDxT5x3iv+2YVuGNn+j71HqIenJqix2hCgd43LsKj14Leyt
 Fe+GPJfRnSQ0RiArVCvxQFP5t2nqqD0pL81YWhCbeXYwvxHbXR9aJV8cTow3T+RaaDD04VgNS6I
 gqpO7sJAPflDW2LPrOEXbdAe/1n+gEsl4SIZQXevPoRbc2sYo2mtH+ZK4Hm3PEoP/h7mRL51Ej7
 c1kSAQR+
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c4067b cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jAdeW1IC_iKJYOCu1UcA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: PUuXTT6VeYU5kE5O7jTzkKNy9Os9sqP3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177

This series splits the SM6150 dp-controller definition from the
'[v3] Add DisplayPort support for QCS615 platform' series and rebases
'dt-bindings: msm/dp: Add support for 4 pixel streams'.

The devicetree modification for DisplayPort on SM6150 will be provided
in a future patch.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
Xiangxu Yin (2):
      dt-bindings: display/msm: dp-controller: Add SM6150
      drm/msm/dp: Add DisplayPort support for SM6150

 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 2 ++
 drivers/gpu/drm/msm/dp/dp_display.c                              | 1 +
 2 files changed, 3 insertions(+)
---
base-commit: 590b221ed4256fd6c34d3dea77aa5bd6e741bbc1
change-id: 20250912-add-dp-controller-support-for-sm6150-d7db03d0062f

Best regards,
-- 
Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>


