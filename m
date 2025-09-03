Return-Path: <devicetree+bounces-212147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E87B41E07
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C3ED685F3E
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA772FF14A;
	Wed,  3 Sep 2025 11:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PGCgS2Jx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830B62F3C3F
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900717; cv=none; b=luj5SnvZUbT9Yju9+pz9pk5rTyKgP2+USADn8ZpHselkJWlf0uu82u1xnQeHP6d48GYukSz5/8gqdt7LKZKZ3UD6+WnQKuLuE7OeLFSM0IZJ8AmjiVj6iqtAjyAOeHygi5SzjNbCghtFzAk5Ew4JXkaiRXf616USUryupbREgIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900717; c=relaxed/simple;
	bh=lBevXKdHONx87FeX9ms0nioXAmeKW3/lJZ9j12ovv/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TNE9vdc/Zf0euyD204RRIiapiyqVnadrEjbO78qdlDxw5D/ocvQrE+ANK5EkujdDvSGR7YacmJ8+jHyUz/XH+oTMJ5S6xGwc7nvs3rQNH9mMrouoMw3LxHmfwx4yBdOZ8ASujHg4CsZ1UVpZhkln41m07zAO+rXjeu0KBE/UBMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PGCgS2Jx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEvht000723
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:58:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H010azYPB1dFkM9rbItrhry3MhtWqv6s9ueklIrUJck=; b=PGCgS2JxDn39MdJk
	Qmtczw8VuWP0yZlwY0GANOUIRW/IpSK81WY9Hp3T071cxMSqfZW46dT9bCHebih6
	q/DITlPq5X1EpFSkdPUd1Mchz31GCkMxZpho0Nf/dFH9k48gCgwW/GE/3bm9byqR
	BZDu37Tl/TPaO6/yzZY2otYquvghond01k81FVmDg68g/y0N3CgFflo72Nhz7SK2
	kPPcAzg5fePIKjrcy9V4ugQmjgs74vx5r1qleAsNgP/5OrAPjit6MkP0+6WltZ2P
	+DAgJpUOFZl2IcCMQ7qwN14GaPKzRFIWd3DMinaVKo4HbYEM+5pKPgQTcAQTTSYK
	SEscyg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush33d5j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:58:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b30d6ed3a4so46613741cf.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:58:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900714; x=1757505514;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H010azYPB1dFkM9rbItrhry3MhtWqv6s9ueklIrUJck=;
        b=WkjbsgJ0wLFqas0aFchUX2VV9a73TrDkEJrVxrYgTxxOzTxv5M3mebNZmTY0uEjSCm
         oChKuylI52lh2GCSiTV0cQsQEzzJ1Vbv11H55sLDHImkJn0oNCYWPn1fzXIjB7eNThLN
         AasFa+/z8JLL5O8aUSkprJW90XTIBsRNyJbzZy6voa910iockYz41aWTFAJ2zpUj4GMh
         BSgGSfkQUMhKR64fsyen7lg5n7tSxXbYkyvdXwyYIqP0XoW9uqvCSQ7bk/Z8d+8vgeaH
         2WtmThGyhpt/DZd91k/ReLfeIHm1Q6TKIheSHcJAmj4LptKuQwgwDtiAv4jvWvdQXEt4
         tllA==
X-Forwarded-Encrypted: i=1; AJvYcCWrieme8CFfEC2OdprP3PTVeZTZ109WgBjlsRr3bbPneDdEDkgXXBQ9a47BiUMfQpykZcG7ph9EtaL1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9ZX/EetUJUiUw9zBcGyC6JCjD3ZmvfYotbSR48LuUuIc9ki2C
	n05YvavNp/UdaoUlvUS21ldbDI3kEnG9THrTxLtDR8uS38SA5+vL6TVu8TEL4dM04IBik2UOARo
	Ckj9fikBs4sruCvXPpXPoS79fSGyiS4dWdc9Tj5O0UjU86oLqJy1fs9RsINKGFfyJ
X-Gm-Gg: ASbGnct6DiT+Ss7oOaicgv34U3OhDFUnErlUgnZ7AG6ebU6p68f/Wvu4oTnLkLC2AHP
	DMmBmlv8oFh6KKpp9Z3dzoeUudI3H2kHHR17AoUMSwRRWpWNx6hPqFjwvaOs/DfsVdZbLJU7p7j
	bIcK7a33lVx5qVR4CyMb9Tv29gBbMv9O86dYmDbmnK4PpAg304GXVR6My5m0iaHJxof8dTBJZpB
	7U+HPyXxIjZRhTHsvJn4zge2d6mUmB6A4QNxCmxDRUcOsogmDdeZ+idkWtpyncyjivFPjjojhVp
	xjA/M0I5F2HHlfcsxc8itRtv5MEtyYOUj00YrwowXggMKPnyLMW98KbwFHhI6AvqHOitzVpCgFT
	Jb2MHlkeG3VMpYMuyHsEB/SiR1QGrqTrCt6FD/RiCXMun7+OohpF6
X-Received: by 2002:ac8:5708:0:b0:4b2:a96b:11ca with SMTP id d75a77b69052e-4b31d8c03ffmr167861901cf.35.1756900714346;
        Wed, 03 Sep 2025 04:58:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkGGAS3RPAQRRlAhwEn7il9NRls7BjhMAjCYkS0WjfrgqegShhrJEbGNDK0zM3QZXpoVuOfQ==
X-Received: by 2002:ac8:5708:0:b0:4b2:a96b:11ca with SMTP id d75a77b69052e-4b31d8c03ffmr167861381cf.35.1756900713772;
        Wed, 03 Sep 2025 04:58:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f50d30b0sm9891421fa.67.2025.09.03.04.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:58:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 14:58:17 +0300
Subject: [PATCH v8 6/9] dt-bindings: display/msm: drop
 assigned-clock-parents for dp controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-dp_mst_bindings-v8-6-7526f0311eaa@oss.qualcomm.com>
References: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
In-Reply-To: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1630;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=jRBkyHcr8xMj4BTwupyA6gCqxajStjyC+O9UZ5EGgLs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBouC1Y3hkuiW1SdkWdW290s9cpICY2nNpGq9u2+
 ZHdafw7MJCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLgtWAAKCRCLPIo+Aiko
 1RmYB/9/VcpHWh/T/oWqH9QlA/WdaWLvy2U1EC9r0ItZxVKnxhkQSnrH/R515kKz/bJkz0lBrxv
 5rZpsAdlZAs7zfHNe7ImD79Y+IhvUWlWpILd/MT5GHjO/4Y6PusaYedg+kJ4cacVKecLb5FAlYS
 zEVK8LBwv5piuq8veplWWb6t05FnF2Zq2QuqRGR1iJw4i9kK4EzInHt3n2b+7pekkGf1wqffVZg
 veGoMDumdL01DUrZvJP5EjIKnj1g+MmXAqRzfMGmgQG0PXINDlVgzA2ct+f2T/4IIOqF3qy3Qvp
 FIb+7nKcGES5MeMPVPbNLVIPIQricUltNMD3derDF0Ou26eW
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX8nt/LVTosSTn
 sOH588n5IOj9CN9cSGpK5whSAMe6I8NBW0zvCmVMV2tgMmGhW8gRBHLEiTYxu4O83cnllLq0CDk
 txs4NhXAilc4oey1JuhNIIxMdpXT6/4s+pZpVVQyFUDYQB3IjBDwOSwro1ThfmxeX8vD+xl90eN
 TOce7mMYJDnbZjg9SF/WAqIlCxm4+S20mpjVVXT71AfKMM9Eo0JYjXVrM0hyiK/+nNJ3/Ga9lls
 tMxnVR/cUmQifcdtp6hAfbi3nj8jCVgEFD4mlr/UgxNvmu+a5a1IeCiBKRPLj4AqsjNiva4Qmlm
 rQOy9ceDuILdbtNcCNPh+8+CwYVfcFC6hMn7XIu34c+TwTD06H7xGEy/+WaKynyJbCkzNkO9fov
 8Pg7eXoA
X-Proofpoint-ORIG-GUID: 6UYS0IENhQx8rTpAOwrBXPT1Tr4Ti6EH
X-Proofpoint-GUID: 6UYS0IENhQx8rTpAOwrBXPT1Tr4Ti6EH
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b82d6b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=VjVaSBsDX57WhQYIrYsA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

DP controller schema documents assigned-clocks and
assigned-clock-parents. However these assignments should not be a part
of the ABI: there are no actual requirements on the order of the
assignments, MST cases require different number of clocks to be
assigned, etc.

Instead of fixing up the documentation, drop the assigned-clock-parents
and assigned-clocks from the bindings. The generic clock/clock.yaml
already covers these properties.

Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml         | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 6316c929fd66588b83d3abaf01d83a6b49b35e80..afe01332d66c3c2e6e5848ce3d864079ce71f3cd 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -86,16 +86,6 @@ properties:
       - const: ctrl_link_iface
       - const: stream_pixel
 
-  assigned-clocks:
-    items:
-      - description: link clock source
-      - description: pixel clock source
-
-  assigned-clock-parents:
-    items:
-      - description: phy 0 parent
-      - description: phy 1 parent
-
   phys:
     maxItems: 1
 

-- 
2.47.2


