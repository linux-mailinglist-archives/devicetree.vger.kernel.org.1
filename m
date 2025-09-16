Return-Path: <devicetree+bounces-217839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22957B595D0
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 14:11:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED1B17AF243
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC3E3043AC;
	Tue, 16 Sep 2025 12:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bUyLFPT1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E97921D599
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758024691; cv=none; b=dgZMV+gPpfuObNKdHSprjQ1/imkGShSJNcD3P++j9de3a79CnUh5tkK8GLinKpUVEsXm+YxxPPMqlAcy7WgiVP3EseU+yWpxKssF3maRasK5y4FhzIG7tFV1GNSY+MswMl91rrIAiR8tUIbAcoELMqjj0trTv9Dx1HhvcQv2MnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758024691; c=relaxed/simple;
	bh=gN1Yn0VpAUn7s61raHRdCxjlHvOYYRG1fBqsrSDL2Pw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=WUOB3kmt4x5kMcgzUBaoJnhAJHPi+Wk+WhE5hDbfhJLLMj4y7mOwJU5oDD1y5lxzZcxJrEt23r9Ji7qN3KbPYxyKMr8umY6L3P8zxYa4nIV2zj8JDLrgzdeYqRTiRnV69AqFKba6Exg9YTst2yqiFh9tE/pCRSggDUU97/vW7BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bUyLFPT1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA7YkZ005231
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:11:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I/1QUiWOzVEO3VoHMdH+VY
	/0cv7c//ZqTTeZogz3nHQ=; b=bUyLFPT12tjtAzwgTMPn3I3T2WZ7iNGjVHJMMQ
	SrYwZskuxRslLu+y1pngDjZdKlTX5tne9cQhgc742xk47DJpMFScSmcpJysro6W2
	v8UIV7/cJ4vn+Hz3t6QPhONHmUHWiPDYtAcsCDXUvqE2oBzLi3jEUg+Qimhsy6jx
	nscsgl93QZAvYqedv8Ixxcl0ep/xWYtbqGj1zUYoAGnA7svkiiIGbVoEs9Cy6zhd
	1sbHM+t4cZhoNEkO+o6CdQELMcuzrzNEHcuTuoEpRq0rBOgdd9/dzcjtC6I85DDg
	Oj5AOPaQqavJDb3sCIbBQCp1wHxZxGMrkyxPt7del/a/7gaw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u58q1s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:11:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-25faf73efa7so4804805ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 05:11:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758024688; x=1758629488;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I/1QUiWOzVEO3VoHMdH+VY/0cv7c//ZqTTeZogz3nHQ=;
        b=d9PCHpAKwQ6mWTxHhU8vtOsUWdiQR8ZWpv2C33TyGXATXOFliN5Xq7xZLDxN1Qzw/b
         yp87q4CCibb2TWSzW82LxmT5MJGoYYFmkzAZHpnNvKEby5QaBd/rZ1Fwxtxzwg6TfDS4
         m579MPI98JxBZeoaG2gT6qNtK3xIm9BiPulAfpI5ZS/4keMCMBQAh2M/bMFIZ1vVb0Le
         kdgxrvzDk+G2qGSDRI4TOlH8tZzWp+ks1jBVtBo+7n6q0ZRbxMlvW/0SXvENU265tigN
         SWs3u5JRV8GrH7zeXBmQ+Lhj9Ltr6yLNUh3MTivj2zQnnzEh4qFK7mUPkUggN0iLP8vz
         VATg==
X-Forwarded-Encrypted: i=1; AJvYcCWQ0jkkRvbJZE4X/ujAWvH+CWkUURXE5+Oq6k8f7rtXFRrt8qYduBtJlRPQTBtnr7e0pMHDzdEynRby@vger.kernel.org
X-Gm-Message-State: AOJu0YyIinr0wYKMqCgden90tnpRZFwyywvYPyCmKsWI4d5gOACm5tje
	Q1M2kZEx0OVnzCgTvx2RSUh11nHT3m4FV9CC0mC5hR1n3BDJGThGF1e9jks1wAg8BPwXOBKDzuf
	4Sl3I/9pTd9cBiLEwXGBvnE44fUrkJD6YSVKosZ6zY/mxNNE5IHlWuK6pXzQLBHKL
X-Gm-Gg: ASbGncs37FdLOjreDcN0MduZuLJ6f0eEuuhbc3w/Pkvz99yt3TJy3L3bX3hfZJ4kgK7
	Q/OI+kDHbYdHXCW3ZJTAZZsV+0GWR6moRy+VyB2bjG8GPeGCcMz5WImsS5ryuHaA2E1sgNYM5P8
	d9CGVjUz41BuhMwvn8uTddl/GGkYM40ONEC/hq6/OhYfA0chVEwydxeYhgU88UMdjHrNoaSSrIc
	Ch6uHWx/uLmfbbcB5ROV40xK0kq+RMbqvYltB1uC9gEWVT8Zz5uzaXo2OW+DyLomUcqnYyxM5p4
	xwWkB/oAGt88x0xZ9hO223wfAwLRmEKjyZuCRKeTdGkGiKAGqzMuU/bhSvAelWlHk5MMGBEYNdd
	1vCBJrc4qoctzWg==
X-Received: by 2002:a17:902:d4c4:b0:265:faaf:6786 with SMTP id d9443c01a7336-265faaf6aacmr57817645ad.9.1758024688213;
        Tue, 16 Sep 2025 05:11:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1RFXVSoXe2CpCJjQa/I6g0IBtRjuRx1HyyBA7zcwcg518iVOozlceyedzv3YXnIBdF0x/fQ==
X-Received: by 2002:a17:902:d4c4:b0:265:faaf:6786 with SMTP id d9443c01a7336-265faaf6aacmr57817355ad.9.1758024687596;
        Tue, 16 Sep 2025 05:11:27 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c37293edasm154917085ad.37.2025.09.16.05.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 05:11:27 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 20:11:03 +0800
Subject: [PATCH v3] dt-bindings: display/msm: dp-controller: Add SM6150
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-add-dp-controller-support-for-sm6150-v3-1-dd60ebbd101e@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANdTyWgC/42OSw6CMBBAr0K6dkhboIgr72Fc9Ic0AVpbaDSEu
 1tITFy4YDOZN4v3ZkFBe6MDumQL8jqaYOyYoDhlSHZ8fGgwKjGimFa4IQy4UqAcSDtO3va99hB
 m56yfoLVpHxipMFS04pJqdZZnhpLKed2a15653RN3JkzWv/dqJNv1G6DHApEABkxFUYpa1KRRV
 xtC/px5L+0w5GmgrRPpr/vg85ECAV0ypngjRF3/c6/r+gE47R2zOwEAAA==
X-Change-ID: 20250916-add-dp-controller-support-for-sm6150-525ac2ed8c86
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758024680; l=2207;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=gN1Yn0VpAUn7s61raHRdCxjlHvOYYRG1fBqsrSDL2Pw=;
 b=dnWAH94x2hSw2DgxOZu5/hAEMxbWiPfFDHoqjvA9O6N5tyLlk8u82ECscoUEsii7po37OjmpQ
 2qAE0CjTfxMDn/tNwhtFcML/kBMWivwzwELwrpA0amJOZPXyLg+1r8Q
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: ozw1knN1xdoPn1_DYoHB8Sf5K6ZNpHad
X-Proofpoint-ORIG-GUID: ozw1knN1xdoPn1_DYoHB8Sf5K6ZNpHad
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfXw5kIW8A7Pv28
 rCiTTJRIJnafM0d7DE0YKSgr/8/g3/17o7kVjyzEUjyoaJJFtlZhc3tkpS8u+YtRB47n4KimX85
 guyYWMHERAATvNviCQqcG2PDuqfyyi4C+HveTFnDnOhuaUkhAUe6+XLoG/Fs/KRof/hBWXlKlyi
 i3TM6N94YkuZV8PXaF9FqLnwNdRL/6x18VVLJddG935fk8USpBKIyTAOHIQJcQYJ1fnNBsKUhqu
 dXfBEL+W+zP6JhXwGK7mn/tMsk3jwmKaT1flTJi9dGkpyXMAZOQF0+Ifq2U/80R/aWICBronwpc
 P75D+NjcDy1ZPPfIm2YQIxt+4QwqEeuR7USjfTrvw4rwCrzvMRQvOAdLSA882tyXk+HtXPz6kIz
 YLqdoJ2S
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c953f1 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=6qpd5Zjz4k7RSA1uLzYA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

Add DisplayPort controller binding for Qualcomm SM6150 SoC.
SM6150 uses the same controller IP as SM8150.
Declare 'qcom,sm6150-dp' as a fallback compatible to
'qcom,sm8150-dp' and 'qcom,sm8350-dp' for consistency with existing
bindings and to ensure correct matching and future clarity.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
This series splits the SM6150 dp-controller definition from the
'[v3] Add DisplayPort support for QCS615 platform' series and rebases
'dt-bindings: msm/dp: Add support for 4 pixel streams'.

The devicetree modification for DisplayPort on SM6150 will be provided
in a future patch.
---
Changes in v3:
- Update binding fallback chain to "qcom,sm6150-dp", "qcom,sm8150-dp", "qcom,sm8350-dp". [Dmitry]
- Link to v2: https://lore.kernel.org/r/20250916-add-dp-controller-support-for-sm6150-v2-1-e466da9bb77d@oss.qualcomm.com

Changes in v2:
- Update commit message and binding with fallback configuration. [Dmitry]
- Drop driver patch since SM6150 is declared as a fallback to 'qcom-sm8350-dp'.
- Link to v1: https://lore.kernel.org/r/20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index aeb4e4f36044a0ff1e78ad47b867e232b21df509..34d5b2984b163ef80501ae403db9c2d7c1c4ac59 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -53,6 +53,12 @@ properties:
               - qcom,sm8550-dp
           - const: qcom,sm8350-dp
 
+      - items:
+          - enum:
+              - qcom,sm6150-dp
+          - const: qcom,sm8150-dp
+          - const: qcom,sm8350-dp
+
       - items:
           - enum:
               - qcom,sm8750-dp

---
base-commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
change-id: 20250916-add-dp-controller-support-for-sm6150-525ac2ed8c86

Best regards,
-- 
Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>


