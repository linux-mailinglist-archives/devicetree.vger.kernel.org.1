Return-Path: <devicetree+bounces-256899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F1DD3AB1B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:04:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 93B9A3033662
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6531636D513;
	Mon, 19 Jan 2026 14:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bIoSRJvI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hwA+3m5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C744136B075
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768831378; cv=none; b=BUuI1Fpx/9fFgQRwSGxpmnsNgLsWHLysKy3Rfoq7JeRenCn37KyZxHvEtXRFL7Bl5OwUpV6rcMq97pBE09ydIpAdo/FsI98Jd+VqtgZoIv41dq1WxclGINJtGAxm/532IxStUKw+3XNA1l96EEaZ//dCeKVXwPKPegdSvoBnPOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768831378; c=relaxed/simple;
	bh=a+u7mLrY7xCjaxOvNnubGsDkYiT/hMo3LPRrkBAx8hg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=s1C/2Knhf5T2bZ2t+w7qXaPO8BKH5v9FhpNcm22hnc5l3VbWuFIy6Lyet1p50C28Sk3NNdIxmWFsRAh0bWBg39RqI8QCVJ4TKfPITdMTD1uG+TJwneEedufBDaUUBEeNsp5XcCvT/p3/TDpJ7MGjsLhlcehDAWAmtQ3BLk1uWcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bIoSRJvI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hwA+3m5i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JDdGor1347547
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=J5/a5GAcpRG
	BaODL6+7ZjI/35JuzQp2n7BUtvP6Jbr0=; b=bIoSRJvIVVKzpf7NzjpQo2kA4Sr
	8zhPaRHIddZ4dTAG/FOa5bdM4kQeURkDii9gKqkX7cfyCDWmKgE+WFjRwPF0LpeW
	6aAk2SRegb0NMZb+so7GYaSch3sGaoEdGt7Tbjfr2STLSqi5S7WfZxPk+NR/E02+
	ONp2xKXdXKCJxT0JEES8KP2W7OtvtVHv29I/c8FrZxDWdoe8m6o2nW8zDpandhxs
	pAo+k1Xbf0KS5q4GdtxhUkX/67+skuJFJnvPxnKPbC4DtMEQ6To7cz1KUmKJfcbp
	ko26tsoLzPBlh1MNIWMDPSf8BibV3gk8hVVsOmAVRGd2sUm2LMFGAniKgGA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdg1vj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:02:55 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c549aaa796dso6975727a12.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768831375; x=1769436175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J5/a5GAcpRGBaODL6+7ZjI/35JuzQp2n7BUtvP6Jbr0=;
        b=hwA+3m5ihCGeWwEnOGpregbWAiQ5fl/bv1P8x6HNZPqo43THW2zFakiYA1mRjszsZj
         DxC+qO0tRtQBm6RTxEpa95yeaqFjnzRZuBBO1QmibT0kEW2K49ndB84jCB44YxSYNmZ4
         2i1MyrwOoy8vfN3G900GFpPwn6DyEyutuOZZ6P3lVJLCS+ENNN1McrLc4VgeHX4tg0ck
         FC6UmVXIu+YBZoRqkuHRE43e8YKAQq/X5PSfNipOHn1XYz+dHFXmzTUvreLg69FE6TJG
         cuQk6kWzGLVQHuS3IHlB8PSEhFwROBfO1PUB+8uY6OVJZMkRcjUtO4WmS+8mfmgxXG2G
         Sz4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768831375; x=1769436175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J5/a5GAcpRGBaODL6+7ZjI/35JuzQp2n7BUtvP6Jbr0=;
        b=PZXmUunuvAPTkJVjIxwKTMPP7ULxwQDvs/2+TINc2UNjeaPAfI6ju/us0hOSi8pARq
         flxsTsu0yTNk09L1pk67Ch3ZiTQuwpOvUIXaWrsTO+WYhxR+Ubtz1os/e3WhBjFQWzlx
         GftZy2R4v9qqHErLxa65ADF6m6+9I87kTrsnNRc7UIWHpkhtOeZz+ICDLzxCGqx4zhQm
         kgjvWNxjCW6zsplWPDhnA841HV94sEDG+MWDthcomYmOU+L56SrBbgFD0DhPh8ye+W8+
         d6ZourxxGBgG+6yf2tBKhjT0HiIXZMmN32hzEdbbjesP6Sn0DUZDIASUStFbYdnJ+aho
         XVLg==
X-Forwarded-Encrypted: i=1; AJvYcCVXVF5C5AcNKFBpYPJQcOo7RELRpqt7qlp/3YYSbVHDDwy1LoINcJXCD/6Q+njt5Gu+qULt41b+YcVU@vger.kernel.org
X-Gm-Message-State: AOJu0YxYpHh+mKz8kIOT2Lv1CZygw1Rm1TyEwn1q1FJSAd+qtviT5iS2
	6rUx9Gkbe7vswRjUeW6Mt/6m72SpGAtrUzwKnLm3lL+4fYB+Dx2ZNHSO3A9ljOpoVbcu2ZTdex9
	p4K5EgQqp25zsLtGoXPor7BLP6hKz/xbVAKD9f2uswrhqcur9uwLmlM/dL+xSdh9h
X-Gm-Gg: AZuq6aJxi5Sd0s7eJF1mhp5SM13NNNdDxyVSiac8vbKSfCYEdNrMVpMNiemBKdlOyIY
	r3sH8IzhVAhfJwnjSWPTBOmzyxg9G/Vk4CFgL+V2Xx21uB0+sHpcyIRo0iEO/cmSGfWRXKegMYf
	g0kYu7w/tsQ2ier0G95n9OHKe2D7hXacOZzK4FeMuORT8se9pv7DQmzu+dftdn/DKr643E5Xjbc
	dzVcfb1v+PN8G5/6oszKO+88BPK34mlABg8O5BAG4+Fm1lTDW7jPiahZU75BBw/OGbf8wk8rPDH
	mtHp84xU07m2UJWR0A+41yeZddUiEPrgHo7VYe/mwIS0CbAz+x8wvVX69bIYYWlZPV8ykU1A7Mk
	9LCsX5WOxqZJYdrYEkYbMiaq4pAIaPJZUP2jWYy/cA2erB9+ct2fCyIR3c5NhD2IcUPAS
X-Received: by 2002:a17:903:138a:b0:29e:fd60:2cf9 with SMTP id d9443c01a7336-2a7177e0b55mr111488415ad.54.1768831374642;
        Mon, 19 Jan 2026 06:02:54 -0800 (PST)
X-Received: by 2002:a17:903:138a:b0:29e:fd60:2cf9 with SMTP id d9443c01a7336-2a7177e0b55mr111487955ad.54.1768831373959;
        Mon, 19 Jan 2026 06:02:53 -0800 (PST)
Received: from Z2-SFF-G9-MQ.ap.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a71941b915sm97416715ad.90.2026.01.19.06.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 06:02:53 -0800 (PST)
From: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
To: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzk@kernel.org, Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: [PATCH v3 ath-current 2/2] dt-bindings: net: wireless: ath11k-pci: deprecate 'firmware-name' property
Date: Mon, 19 Jan 2026 22:02:38 +0800
Message-Id: <20260119140238.3360658-3-miaoqing.pan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260119140238.3360658-1-miaoqing.pan@oss.qualcomm.com>
References: <20260119140238.3360658-1-miaoqing.pan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696e398f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gumsBO624h-QSWVlTkIA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: 0P_1FppTBgMkm8fI62s3HLBgQ48oeAfH
X-Proofpoint-ORIG-GUID: 0P_1FppTBgMkm8fI62s3HLBgQ48oeAfH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDExNyBTYWx0ZWRfX/qeqnCBkmj0/
 XZDJxiH5Cx+w+A92uIBaN4ZtHGAmt8nNT6l+RbmAEY/sqk9dRw+jZ8xUss0ksMMlbA63NcwkRuE
 exZsWBxVEuutkn2MqLQ10MsuHbxXCP9RNpbNvJXuximMvpH+Ti9NZy/mNMRRZluG3zx6vyvrrGa
 2xhFkfY8usSb2gsrYWgvQt9fwD/TPff3NmVvalDSHRkxPXEh0s+dAIC4dFfcR83GKW1AYr94FsO
 haKQb2i+V6CmE9Ld/0NgGIv4GdUH5rB4EMRxKAPr28G2kFiAGzF14xV0ySSHlxctCQj6TAi6UeO
 BdCq0sdRBPCjdDllbU8t1g/cor2L18aPx2I2DkeA00U10oa1MXZpyugIaFhMauX6IHo2gvM+J6a
 68CW/h7Y6scjRCD8LRXqANlXmdsEoZ6BVrzIVA1WkJc54T6t4ePi1cLZVwRubNmcOCXRW/hEs5K
 8wZGT/prSkSPOFhe6fw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190117

The firmware-name property was originally introduced to allow end-users
and integrators to select use-case-specific firmware for the WCN6855.
However, specifying firmware for an M.2 WLAN module in the Device Tree
is not appropriate. Instead, this functionality will be handled within
the ath11k driver. Therefore, the firmware-name property is now
deprecated.

Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
index e34d42a30192..0162e365798b 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
@@ -37,6 +37,7 @@ properties:
 
   firmware-name:
     maxItems: 1
+    deprecated: true
     description:
       If present, a board or platform specific string used to lookup
       usecase-specific firmware files for the device.
-- 
2.34.1


