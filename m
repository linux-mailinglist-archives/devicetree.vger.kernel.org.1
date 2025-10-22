Return-Path: <devicetree+bounces-229657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC90BFA8D3
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:29:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DB91467AF9
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 07:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709EF2FABF0;
	Wed, 22 Oct 2025 07:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WJkSjQyn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A7B2F90D8
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761118144; cv=none; b=p6ga8PmBBphL5OepIMS9AH5PQ2je1yjZ7OEgPDfMvUSOGqdsDFh1BIvHSqqrsZ6SZoI9Mbaf5Rme9Ef9LEIFeJj0rQnU0uscTTXCzcVlBrQP//Yr1SCS92cCcBP0rLcq8pxFGENhsmcnofCb5tqeP0PlqaOhw1h8Lnl06LoOxG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761118144; c=relaxed/simple;
	bh=d6LoZRVEAeqEPQShLGGsaUfprEVuMtrCJ2M3G5JH1Ys=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZfQIXpRNoyr8ciN450aLBv++G/W9MyRcX1h6FKLM/zYPjFJZvoo1wawdET6g49S9Bz2jxr5y4pZP8kHqRoV+UWXIz9yPf4KCxUBZKeSp3IUJ5PIUYjeoeybYgJKr0DxE+iLpLm8iFtqaSgrEvyOoVjfi6AKVyJJDkgNhPUNm6CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WJkSjQyn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2Wup4002484
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1vYcux79sr7GRCh2xTNc3z2z/N537ViNEGo9Mt+EsHo=; b=WJkSjQynnCMVHOlv
	LZXwnT5nQhLdVfJI5EUFKZvs8UNAkWV7UIyItyHw15jbvLq1vuPqiSlRSYD454uh
	U8cowu528qvmSSZHCqNyn12PCeKOjhexcNpoqW0SoyIlFIBUuFyLTj9yGm+ulf4Q
	/ccVQtQBDQIFwhgUAFdcY2m/Te5+iVDgvtUI2q0Cj236KkF8jq65W97ePMuDuVHv
	T7Lg3qffTeQVfP7HQF5f/3/jPJlbtta2dW4PHMDJIyFVJHfoBd7COy/hXd9x6jKD
	rccUKjCw2xRtMZ6lgUHdRpnlyiUI2/vOCZRMVjHGmLkJ2k+Th4AaJE2A9Tim0k1V
	D+noKA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08w99xq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:00 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33428befc08so2520488a91.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 00:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761118140; x=1761722940;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1vYcux79sr7GRCh2xTNc3z2z/N537ViNEGo9Mt+EsHo=;
        b=JnqD3qAHwupW1daFxIYFc40FBEZ5r0rjnh/DOu+adyUFs9Lir4E49aY/1K4dWOjPCx
         YuLIvhiLhTP+2aS3dWprVz4LMkJK/fSL6sYXU3mnxoHytIM4R5DjfvnBZlBLwNi9dWur
         L3XS70GNzo6ZJfWJdeN7jZ/Ep3jxlOrLKPG+O41uHu9lJQxWFPao95teWBmChtPxtWyB
         LSpjrOEK3o9XS4xxnw2eeywv0HOJXh0jnCYlM0/31tkKeX+U2qp1o2toUMGV0CKS+lxw
         va4HgLByekob/3S4SnuiP1jk6EQL7nfiwavYi2d2xob8AXajyYTMClltxsXrEN2dAUpQ
         AhIA==
X-Forwarded-Encrypted: i=1; AJvYcCVJ5Wp1skOwokAMPDe9NqrHYorWvDPkCOlNdvUpykrIWIXzXcDX7lLjG4wjDzwff2za7mx+mnKcSIA0@vger.kernel.org
X-Gm-Message-State: AOJu0YxBsxMzoQRm71MjxsTqhLKUEEdlDA/yOIT0jfUcu4sdbQUESCqX
	isWRyKCmCkHsiE0v7EkyAtp915PFoDwQrLDFKWDi8vUr8A0dtp7GLOIBuj6gIRVbDWfc/d8AXrX
	AgLmsTGEOEhAWMPeUFLsdbAf9s408iGekEKhM7dhulbmuEdrP8NxCXYpSSL3Ge4wB
X-Gm-Gg: ASbGncu6MH0lwONd6LmOJh1mRCB9wgRhxsO5jPRnlD6TVNHxLgdnhtr7GjoV96TM4C1
	bkz4J9VpvJ80tSbKcZ3QhZg/ictkq0EgX/700h0/LSDikqS/QAjY/geFbxEsnSme38qqhiqhhST
	IqNjNZ9chOJLBk14vMbSTKsaV7vZ1LfN9mqCK93mIIYRGr8tSpeBs6ZIpTORRdOCjdSqTdAJNxk
	EsWkWT97wqjbj7m1HUhYW4yy8FJSP8rcJVtCQAG8nyWtJ3j+u0lo90wKmuKeVCv33U1yXjLr/Ho
	z8vg4f8iEQzMMnPYAwafpTrPp59xN4FkseoZGhGHoRF3/XH0QMYPZ8EXuRZm06wxNoeCPmF5bSp
	e3qKGJb7eZDh9To8Aybl2mg8/wjhkCRIuRO2Lvp4HaXGrfAj2ag==
X-Received: by 2002:a17:90b:2692:b0:338:3221:9dc0 with SMTP id 98e67ed59e1d1-33bcf91f1dcmr24381162a91.37.1761118139863;
        Wed, 22 Oct 2025 00:28:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeAy6LGQ5ragdIjJI48LVf4NMUjtC7IuDfdWsBV7Haqt/Ymfy9bfKowNu0VlG3/QwAd7mG3g==
X-Received: by 2002:a17:90b:2692:b0:338:3221:9dc0 with SMTP id 98e67ed59e1d1-33bcf91f1dcmr24381117a91.37.1761118139416;
        Wed, 22 Oct 2025 00:28:59 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33dff4498d0sm1687342a91.11.2025.10.22.00.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 00:28:58 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 00:28:42 -0700
Subject: [PATCH v2 2/4] dt-bindings: soc: qcom,aoss-qmp: Document the
 Kaanapali AOSS channel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-knp-soc-binding-v2-2-3cd3f390f3e2@oss.qualcomm.com>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
In-Reply-To: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Eugen Hristev <eugen.hristev@linaro.org>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761118135; l=931;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=d6LoZRVEAeqEPQShLGGsaUfprEVuMtrCJ2M3G5JH1Ys=;
 b=QmAA0XesK6oX0jh2aKtFroITSokVtnP/WidJx2NR1Nz90BayYXnxJRWDlHSbfoiU/A5hsR53G
 Mrj1r7XzgLPD/Np+IubFoKQnk79zGweVapMrYV44uMlKSzHVyz3SYza
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: 0ZL1n69_0qmnkWoaHoTIruw0R4wjijsY
X-Proofpoint-GUID: 0ZL1n69_0qmnkWoaHoTIruw0R4wjijsY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX7k+OYWgnXUSG
 o/smHLJOx7S4GRBmA2PPXZsNw0jx20Y4NWwb62WsEpIbURskmcV4kfjTfxog/fOzUx/FXklqH/m
 sw3sI/1hD2YFLGoYq+oGDcn1Y5cDZkQRp4NLhBd2IjVrUHB7Q1T35EJBEYRoYRGwbReGucoO7R5
 vG1e6BLa+SjhmTSkL8GUOQHU+pIlv29HL2/Y+zF0DZpmFATbte6WgQmuXrJ5AR9MwCM1h3cBIPs
 Ac4E6Wbx6aiznzhFquhUcTzR7DV0idT3l+gs1QqwUVkIJMsDvyVpVswjSwjJU7Sf0oNpXa7/qzj
 jUplsjSTKRTfal8aHd0NF9G0Etp2YTm0HLS0bBTSrABWFCXFpq60bXmtDVWWQOUO86lGDlBKsm0
 cQN093ff4t2OzoRXXHSjw4LzKOVSJg==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f887bc cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=XyoQbdpzVujUkJi0dowA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

Document the Always-On Subsystem side channel on the Qualcomm Kaanapali
platform for communication with client found on the SoC such as
remoteprocs.

Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
index 851a1260f8dc..57aa819939f0 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
@@ -25,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,kaanapali-aoss-qmp
           - qcom,milos-aoss-qmp
           - qcom,qcs615-aoss-qmp
           - qcom,qcs8300-aoss-qmp

-- 
2.25.1


