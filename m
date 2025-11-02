Return-Path: <devicetree+bounces-234146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2301DC292D1
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 17:49:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BF64188A1E4
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 16:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84CC32D94BC;
	Sun,  2 Nov 2025 16:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ouQCr/7p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z39OL/wa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1028D1DF965
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762102115; cv=none; b=Mf+npB0x7ucIIvJdcdRWfqynfgaszkzKwNzb4AKB/OmJo60fCmM8UTeLFyEQQ72BaElqdUz8H42DANBr4Qf1VXUB7ZfkdHBTWZYVXQI5h5J2mbhQk46Itadau1rt/UlEAfQwuVWaRIsBSr01xXQx7EZ9yD+AvsAvv9t9f070mHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762102115; c=relaxed/simple;
	bh=TpiTxJW1Bz3YKEyohqJFyPy/4FKxAmL8LRUVMUuk+JM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=H3dAmWV886qI4jKF9CVdhxE1kpCJOTaCb9Viu8FAXwHpSgzJh6sp39RBUbzh2BOukS6IpAZwZzKZKqi/ZxTuHPQzRGafrI+4tZFNzQ53nqdfpxE77HytzA5XnBGRkLEBkG1RN5DoA4qnzqP7F9B6JOL7+OMzGsZbEl0+mjZFc3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ouQCr/7p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z39OL/wa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2GfbVN631476
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 16:48:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JBOvaCbH4Qv
	gqPmGhscoPlHjn3V3P8Ah+9WTpPAoTAQ=; b=ouQCr/7ptlEWiywzxOCJq5SUrv2
	yRj/HFJaVwVFkaAAKLHSTDcRSi9bmpwCrIDtmTL4I2pOWMJAChOyMPBYjJ9v8ELc
	Yo36c1sTnYnUbnNScTZvYEg7X70Zsbh8T910nEJJt3NNWPcswUWnJdE1Ofh5MoWW
	2eKQjmGFbqPH0ICLACifhgqAqwBhg2yXyOc8hFOMRlZOhVCUMbjpAA6IQDc9V7Hm
	eyRmFp9MUeBW6DTwm+S9fZvuJJfS+e6mvodKZw14qomDJCT/EaXil0jkfM7C5gDW
	YDIyRccCP+BbWZMC1JH7saRVw2J3bAp2XAGN2DBm0JtDA0J2hY6vHQbL+iQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a57weajhy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 16:48:33 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33bbbb41a84so8332392a91.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 08:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762102112; x=1762706912; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JBOvaCbH4QvgqPmGhscoPlHjn3V3P8Ah+9WTpPAoTAQ=;
        b=Z39OL/wafRLvmAbdAPLS2jRBLchnB7p0yXimurE7tvTeyFult9GdKmFfLg4+TpscLF
         R6FhvLm6uRNXp7tyXwxrKWiHZPm2hJg0ipz37LfkZJOzfRzUEDAFZ4g28rwQhTbW1L6p
         JEJnaxgfOLPMDWFjn9YwH805wgaYhtiD4P2m44iq3SZss+Z9sGNTUFvYCjyn07+fQQAe
         3rn7TW6VMk2Q2p2mnHsNzDUW5xV7Uz+q8f7KzTU4ahZGxBEYnPWk7WlMrQFiL4kj8Z3F
         IKDluo7j87FrZqYxeipLp6wLKwjg1P8M7iE5ENXAvDzYDKMiIe549TMHHC0tpicFCAxG
         zv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762102112; x=1762706912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JBOvaCbH4QvgqPmGhscoPlHjn3V3P8Ah+9WTpPAoTAQ=;
        b=FB2kjhaGkhjN7jePDMd6oW/Hc/Qw9X84tkD1l7FZtTUqABs+r+lD1V2V/YywfF+Kiy
         0e39CA434kJIBJr9SvWWZeNVBqTQAmKS7y4kItmwUBuZNUumEi5fb9wMsyoNBJxFpPPW
         mJV15JoJrNbJ6FxjRd1LIGQ/i59bVF6Fonsam7tAUxdODtu7yJt4AwELxN64wLM6LS/u
         sGZe3Kw5Cn79KoVuFPrncnfUIED2Biazh9YBrOp8XedGoePcm0v/A1JRez17IMNjouC6
         Wkxecz4dApkbZy4Gi6c4dR1ysH7KSj3hR5fpKXJUzlOD1uGwqhbEo5sgnUkhR/nx+H0Y
         TNSg==
X-Forwarded-Encrypted: i=1; AJvYcCVGLtP0k6OVf0DxR+H8eOsalGhoPoTbBroKXyt8dvmgUHfIfK4tS9mgosWqZxZCjSiTO7CFAuf6/djp@vger.kernel.org
X-Gm-Message-State: AOJu0YwuclZe1Ia3YSWHey+2qhZ15FRq5VcjEsgQUYrXOouZoWNshOvr
	P/WYfnqXQEE1tAMVi1jGz9bFkmXanr6bR367Izap5ySHY+pFA51EyjkwLQV1Hudh4YGDlDlBIYC
	0sU1+dFXuCF/OQ4LjlI+HyISAp/sfy6TGB2MgUTOuiGMyhuxSgvxjS3IyHWXaUf+o
X-Gm-Gg: ASbGncu/nfT72BT4wv3qPRmvcuyYar8k3N+Nglk5xiilrORSEx7tQxVONVZvYs+Cgyu
	JhUvs5GhTP+OVEIhi/sB3Z2iOdsAfShLB1PBGn3N44QZFH3261Q8Go2Vf9cfkehk6KIN7WGzeoX
	Sw6iu0xJ8ytDM/s7J90cQFsIecgwt7nI6EskGClEU6LM2tveSliQGBisf/FhsGhTBII+BNJlU3h
	0R/fbnQnWRkHzt4clhdfEjhlcm2lTH7lL8BAiOzooxMU43ZRh7eENakLxrF+xezz6gZZpB33GZZ
	TkIQecFRFfCYzZfqVb2bAzGM5HQ1LzSNiFna1eaHfpTQRBV+D78SgLlpv4lzGXRkJ1TBbt/2O4Z
	ZuC8mEVk5jtb5YKMI0RHRDwjyGyvC/dqm9zvA
X-Received: by 2002:a17:90b:2cc6:b0:32e:7bbc:bf13 with SMTP id 98e67ed59e1d1-34083088f88mr13211499a91.34.1762102112396;
        Sun, 02 Nov 2025 08:48:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEML+rLFkUQskJw5HVlAhpdyqKOC52Uv4UQprVOYlNSEbl5x1DeFwYSHp4i0sTovR3MvbEruQ==
X-Received: by 2002:a17:90b:2cc6:b0:32e:7bbc:bf13 with SMTP id 98e67ed59e1d1-34083088f88mr13211473a91.34.1762102111882;
        Sun, 02 Nov 2025 08:48:31 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93bda55f74sm7708125a12.19.2025.11.02.08.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 08:48:31 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v6 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for VBUS based on ID state
Date: Sun,  2 Nov 2025 22:18:18 +0530
Message-Id: <20251102164819.2798754-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251102164819.2798754-1-krishna.kurapati@oss.qualcomm.com>
References: <20251102164819.2798754-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69078b61 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=UO34u3PHWDRxg_ly3EkA:9
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: u1DEANEEhRZMYviY7LAkNCvv1tJTVGS_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDE1NiBTYWx0ZWRfX5TqzuNExIdEx
 mxaqNRVRccL2EwyYmTjkdaMCuNd1UP4Ll5yg2D890+wr6D0X49wrSQDtD6Y+1dUYScoe5QsfKVb
 vaiQEVXETTbiwESDmtdMgCP8Ggdu4yVJeWTi4cY0X1zd8kX85wIHIiY92TdmLBHtDeKMqM1w/7E
 NcQoP5uD1ixEVCOLMSlPA0hGNqEpZZwTBVXpTEuiLIKNrgljPSCB8X0EW5+9Mu5wjRvFRUeqgdd
 HjbIWGrS5ji3f1IS2cAUlGGeOfBNdYEI3QwBTSfjj6IY4I+SSBohZYiKsyDU9Vo8HWXHixUyzLW
 rbTrAoPHilS5Qz5WiLsO4+dd88TqKhYMy23iStM3QBPCe5bvJeU4O4DMrfVuucRggrqB2Jjb4qg
 X/nRWaUKLc2yIDBuEHlbwdj1UA52WA==
X-Proofpoint-GUID: u1DEANEEhRZMYviY7LAkNCvv1tJTVGS_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511020156

Update the bindings to support reading ID state and VBUS, as per the
HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at VSafe0V and
asserted low once VBUS is at VSafe0V, enforcing the Type-C requirement that
VBUS must be at VSafe0V before re-enabling VBUS.

Add id-gpios property to describe the input gpio for USB ID pin.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
index bec1c8047bc0..06099e93c6c3 100644
--- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
@@ -25,6 +25,14 @@ properties:
   interrupts:
     maxItems: 1
 
+  id-gpios:
+    description:
+      An input gpio for USB ID pin. Upon detecting a UFP device, HD3SS3220
+      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS is at VSafe0V,
+      the HD3SS3220 will assert ID pin low. This is done to enforce Type-C
+      requirement that VBUS must be at VSafe0V before re-enabling VBUS.
+    maxItems: 1
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     description: OF graph bindings (specified in bindings/graph.txt) that model
-- 
2.34.1


