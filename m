Return-Path: <devicetree+bounces-147035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA57A371A5
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 02:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2EE216E884
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 01:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB76EC8CE;
	Sun, 16 Feb 2025 01:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lLGV0P/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF8F3FE4
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 01:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739670347; cv=none; b=dUKc7p+a6XuOosUneHRMCqzYgHsInxIWfyJp+gZ+LtjVd67Bqx/RWsriDrEdld/x5c0/Pjk3EttEGiwz8GFWQa5rXjCsP1GAkxsNtG1HZeRs21imWfVsRxo+lOgjuzaPXSFeVNy2xTCtlSSf9Xq1hDHieU+Q+HGIoey3uEhPBeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739670347; c=relaxed/simple;
	bh=BGcJQ3Ll6glAfMQXdp/lUcU5Vrse7Olu5opVqRzh+DE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WFLRt124d1/joAMYsu9M38l5yhuBYGD6uQU6DTH1IwxAzt8ErRdKCdZSzIDpJ52S+z/fQmugVj8YeBEaj/Um/XQqBeG2aLUEBrfNlfbMCb8c0sWVPrYWE8aIgbiFUkG7QjkNiUaL+5QElRxGUiCeuCt3Skl7JcCdtIk8FecUH9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lLGV0P/i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51G1MRTG018764
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 01:45:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jPVONscn72E
	ctMrzq7jWfE2rC2sdmlOx+fZ773e4rMw=; b=lLGV0P/iKQys++M8x2cRh1fr0F+
	DT8hJ4pTVDTP7qL0hD+mHtNxFYiCla0zGqXc9Vn9e6eleDlTTw39JIX6NfhR+MBL
	m8K/eqypNXRtXJSibsSPu+AzYiCl0GyHMR+/Wb72LfKH1fn/ItDbAbH/n7wdhOpi
	K+NnjK84Rt13viM2rGlgedAM5c1HQLWi3suDnRkIikD8sRLkImarbVSd0h+cmIw1
	PYA1WFZgbjTH2J7Yugxx34v1xznI1s9mDFVGhNneTYAHqxmt3KmCAABzLAth7jom
	m3bBIWsKt4zMi/2bbzBeEzdjTMOzVSn+8mcKBnO54EfkX2IVXODcChXgiLw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44tkqh1ay6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Feb 2025 01:45:45 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22112e86501so7975515ad.0
        for <devicetree@vger.kernel.org>; Sat, 15 Feb 2025 17:45:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739670344; x=1740275144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPVONscn72EctMrzq7jWfE2rC2sdmlOx+fZ773e4rMw=;
        b=WcLS7Vr2u8fiqUpbCY1lepp9M+iXHC3VT1PTMXDvoF0ohcxPPJfA16Gh6LRV0DAYlD
         hrZY4pkOIQLiWdrKc9eq1/FuaMLgknvMHbhH5HIw+x2wKNuROLp5Rxm3gcogR4AdPf4N
         bsXVAdH5aMZkOgyO7E5d+aU6Wav92c0+l76AEUVdqelc0yQ7hyZy+0isgMAvUph9tX5J
         WeM+n7tOjsBNBy9f/4yAhjSx8ZUY0xjxAWXdJ5orIwZG0ebtpk0VXrN+3T5w65omzwNY
         aXM0vFR9JNAlN3lRiP5USxvoCOyfW5dBl1fQnO5GekEn1YvTntW08ho/xd1+GTxpMtoU
         wCKA==
X-Forwarded-Encrypted: i=1; AJvYcCUg4/Gyods9+uvKQFqrw1KHT1Yfut+mOOJdVkQkGZkStRHIAOVu+G/vcRhYn58dTzvrwjBPZPZTCt5X@vger.kernel.org
X-Gm-Message-State: AOJu0YySdziHSDpdobviE2Hm5UJQJt4VIeXWLDU2PFzAXivZYnxe2m1X
	4+gjLDL44ZKK67dq02oDzAyNpTDZR6EAf+e3k95IWz79nhGIekWUfeYNGryBBaNn8lrL0jB0d8O
	Wlhfys05xlUmsbBPv6tSdVzGPYAqX4pvDknjlppZIGA+smwJyuVm4ER5AMx+B
X-Gm-Gg: ASbGncs5WiHCuAM7KABbz/5Phq5QeaIo8tlueExj93iD//0MSFkS7HUC/SXEv3jBUak
	+HxYQCiKEn1yp6tbakaz/T2TvyHxHLD0dpXR73Pz4TTmRPhNQZ0aIPzUGirAqeZm8jMng3U9tCP
	oeInHHmQheAcfNtSo7YXZu9CNt7trQ/gUHi/Q6jv/hHcFkWyzFtIbH6rhw16zj9/9LmIkd8X+ba
	dJDefv2V4ss9/YSPJQodeD9XXjdGHZDnxzZVDVmw3w9KhCCzaa8rHeEo8jwwP72Fh2KQA14CRx6
	BDppmccLRj5CMeFvzLaSrSBy/sC7Zxm8oz1aiKV5
X-Received: by 2002:a17:902:e5d0:b0:215:89a0:416f with SMTP id d9443c01a7336-22104058b35mr58608845ad.30.1739670343807;
        Sat, 15 Feb 2025 17:45:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEOZ+s1hML65+t/oMtnG25500NghTCO06Dip85+ffWni6ZFpcXj+VIoxImhNSiQ1ejvbPABEw==
X-Received: by 2002:a17:902:e5d0:b0:215:89a0:416f with SMTP id d9443c01a7336-22104058b35mr58608675ad.30.1739670343430;
        Sat, 15 Feb 2025 17:45:43 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d536455esm49896955ad.74.2025.02.15.17.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Feb 2025 17:45:42 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
To: andersson@kernel.org, robh@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, krzk@kernel.org, helgaas@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        lpieralisi@kernel.org, kw@linux.com, conor+dt@kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree-spec@vger.kernel.org, quic_vbadigan@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH V3 2/2] schemas: pci: bridge: Document PCIe N_FTS
Date: Sun, 16 Feb 2025 07:15:10 +0530
Message-Id: <20250216014510.3990613-3-krishna.chundru@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250216014510.3990613-1-krishna.chundru@oss.qualcomm.com>
References: <20250216014510.3990613-1-krishna.chundru@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 5ecmGA9THVWPiTlDMQkIoPhFL_aAHICW
X-Proofpoint-ORIG-GUID: 5ecmGA9THVWPiTlDMQkIoPhFL_aAHICW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-15_09,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 mlxlogscore=924 clxscore=1015 impostorscore=0 lowpriorityscore=0
 adultscore=0 phishscore=0 spamscore=0 mlxscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502160014

Per PCIe r6.0, sec 4.2.5.1, during Link training, a PCIe component
captures the N_FTS value it receives.  Per 4.2.5.6, when
transitioning the Link from L0s to L0, it must transmit N_FTS Fast
Training Sequences to enable the receiver to obtain bit and Symbol
lock.

Components may have device-specific ways to configure N_FTS values
to advertise during Link training.  Define an n_fts array with an
entry for each supported data rate.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 dtschema/schemas/pci/pci-bus-common.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/dtschema/schemas/pci/pci-bus-common.yaml b/dtschema/schemas/pci/pci-bus-common.yaml
index a9309af..ca97a00 100644
--- a/dtschema/schemas/pci/pci-bus-common.yaml
+++ b/dtschema/schemas/pci/pci-bus-common.yaml
@@ -128,6 +128,16 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [ 1, 2, 4, 8, 16, 32 ]
 
+  n-fts:
+    description:
+      The number of Fast Training Sequences (N_FTS) required by the
+      Receiver (this component) when transitioning the Link from L0s
+      to L0; advertised during initial Link training. Each entry in
+      the array specifies a PCIe data rate
+    $ref: /schemas/types.yaml#/definitions/uint8-array
+    minItems: 1
+    maxItems: 5
+
   reset-gpios:
     description: GPIO controlled connection to PERST# signal
     maxItems: 1
-- 
2.34.1


