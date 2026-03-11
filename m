Return-Path: <devicetree+bounces-274360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GB9zGcj2sWl7HQAAu9opvQ
	(envelope-from <devicetree+bounces-274360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:12:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDFD26B3F5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27060313096A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 577C23A16BA;
	Wed, 11 Mar 2026 23:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZVcCprEO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I6Ue1K+c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B4A396B75
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773270660; cv=none; b=ub6KTY548apwRUnVTQ+/2MTqg2SgWaZu2tJo86M2i+p6744njR7ZP1bMLzgmdHp05XfsfJ7ixelYR5a4CuaPNBMp9VR418LB/nOjeAIstEqdk/Sz0l+HdOFzPqavng2/vvh7yXr5bcrFXutam++exe+LoWPNXEd6YDSO17o1I4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773270660; c=relaxed/simple;
	bh=LD9DtGH948IjdWwYBarmlCyU8PFzEr7EfHT5H7TtKso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OOEt6jZCaeVT8dLms2qlQHWEGeW6ErGytQX0IInqa5mbQ2gD4ZviGTRpgxfoiq29bKBLrPK2wErIdFoXIOsCAAfJRBupJib6qdGhvuQyhXNs3HOReLtnubTtcfla3FEOkC9XLI2n6DlEB47kIxZdeXfF55KbvTOem1Mf+RU4aJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZVcCprEO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I6Ue1K+c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMOssg1758836
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:10:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p20TEKmEeddTfqjMifIyK8sbPd6OphW6xY+1KjLoeRE=; b=ZVcCprEOi6fWuqAq
	mOBF+qO6+bqLzAfwmwL7nYonzUkE/0nECX+c5X7xOu6d2YUren56+IZJ/nhJOsG0
	5RW3Z/ewZ2KEIlnOr81VBl08pKQbN0izlmoD3mFkJXGxsYuFJQCKh9NfmaA/W0Vt
	C1QMtoSfexsB4Wup42mokRYXpBK5GwjvdNFfcGgvmRrQ6qJEjyQxmDm69cbqShE8
	sQ8eI8urShF8RgNNtpGWyrSnkzT9QR3gRsXk3V4B7eyvYKMZxGcXBiqmjtaDN7sr
	hn+3A7wIVpEmuorB2LAUFtmxDfEAFJytBtGHhM3o7EDvwN5Io7lVuYZrlpOih9bO
	Yja/6g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh53g3dn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:10:56 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8298c733f52so173011b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773270656; x=1773875456; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p20TEKmEeddTfqjMifIyK8sbPd6OphW6xY+1KjLoeRE=;
        b=I6Ue1K+cg1ctSIJnoswY2q/agvIJ4bAE0MYu+volne1Ufj+MgxHWi6tufwjVxsjOU1
         eQoypXXdZyplqHWsxCPyh/RihgHaIl0suxJ4HVOa54MopwyWFPQwwFn8flR3TVzBzXDx
         8o25mnbJZyJsKI2ZLenx+yXvySGFnIrTC0qQTOej/7QKyyiynoA6drh8iomjRWw0xblA
         T8hZIpUuQJNjWEpZJu7QLEpiyV5aDcrAFsmQ7PGKsjM+yNNFDtyMHbkctDjxqogOk3Id
         8mDKwOeuxs16Id2O7b06RrjWUSp78OgRR1EMM9LWc4UUwcjAfhxerLmm3R4xIj4m2zA7
         W5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773270656; x=1773875456;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p20TEKmEeddTfqjMifIyK8sbPd6OphW6xY+1KjLoeRE=;
        b=B9vrAO/QHGP6RgmBCn0Fc2jHL93EklgqqSiSR6/b/acVb0yWEuc4nhjmguYGG5Q2Oq
         i+r/PNKsvBQgzq1ofJGeA1LeAQNf5kllH636ECYwTYYU6dn3ER8SpnSdruMNLsepeamm
         MVwJ6ArojtBh51dQ4JOpResNX57bPIptPLwXILco55k7pMEprdeF9bnb52Y1hIUfAd8T
         B1NffOQpCm9P21lkCUIODSN1LZzeXDYHELZG+UFzC3IkH40B3oYEIw7bbYC+AcRZbiI6
         QLWI5bDE+NyD33RAqLDcNrqlCJ0uxN5fDbXPBvU7mzhtL73nyc9dRmF6N11O/BUbj+3t
         fjQg==
X-Forwarded-Encrypted: i=1; AJvYcCUGXOtoI7Ly8kstN9KWyFsmpmDTEvKKWHpTyTAD8kMat6YZlXDcB4WsHeYgqhgRCzoS3ImEkqq29yz1@vger.kernel.org
X-Gm-Message-State: AOJu0YwIfsEHswZHiSpggUOISRXZM3qcBwJQSXfIUJnHdPtFCj33vFew
	E7HHxyBUtr2Vn+3BXPihkRVBhwXhvNS5+7Aek8D2qxHOa79jD9bhn8epktxniVbj40/zO+ZhHT0
	DVCYg0K0gzxKCGOBiedvPfnOvImTp2T3hZPWy6Y6+44imm8wyvoeq/chGloVSGal8
X-Gm-Gg: ATEYQzyHbTm+jhtK02JzryB2X4Nfj8ROM7XMe0g6U3NVDKbLSz35LXJCY2pQTawrjT/
	pfyGVZvyyQ0wWlrAKDL7SpIDzrIZj4V+y+7u8IM6CquFC2E6JM/5nfnU0jkh+bImRGY76knGqHT
	ZmN06PF/2i7cR/ceI9kawX98e7oW0XvIXu4nwtX9mccKFDGIZ8QIQALqTQthcZ2MZSHNbe1LMkC
	iwM+kD3qTYrp9dy6rvNx+iwFwz/30Wqg3mM2t2f/TmY3eEjAkOqNhogkgQFu9JixdjNnt2mZ+dQ
	LX1PDvwKdZXaGx1M9LlQdD4IM30NW6H9ofdooWi4GJaUWGFv1hX2i3j3vXnYujq5EaPpBw7geL3
	5jMBqV78tQLfjnEsTffbJO3/Cgz7Wbhordp9KMnCs3i5yHA==
X-Received: by 2002:a05:6a00:4fd0:b0:829:b08f:7353 with SMTP id d2e1a72fcca58-82a0707bcc6mr1066918b3a.7.1773270655895;
        Wed, 11 Mar 2026 16:10:55 -0700 (PDT)
X-Received: by 2002:a05:6a00:4fd0:b0:829:b08f:7353 with SMTP id d2e1a72fcca58-82a0707bcc6mr1066877b3a.7.1773270655336;
        Wed, 11 Mar 2026 16:10:55 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0725facbsm774569b3a.20.2026.03.11.16.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 16:10:54 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 04:39:53 +0530
Subject: [PATCH v8 1/4] arm64: dts: qcom: talos: add the GPU SMMU node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-qcs615-spin-2-v8-1-fca38edcd6e6@oss.qualcomm.com>
References: <20260312-qcs615-spin-2-v8-0-fca38edcd6e6@oss.qualcomm.com>
In-Reply-To: <20260312-qcs615-spin-2-v8-0-fca38edcd6e6@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773270637; l=1845;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=D3qrCVnvO+yu8RWeyOeIut52r5PFBn26gicNRhOfaHY=;
 b=GhufVG3s13qzfOIXSkaau4UNR3Ym/EFq0Gh2+5TOeY6A7deaEj+EdYGbFYTLW1R5vAkwtgBFD
 9pNIsxLYP16Bg1BcLpkSErw1oFBB7jEn/yl+0R7nwvbUNG5Cg6Vtb74
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=ZN/aWH7b c=1 sm=1 tr=0 ts=69b1f680 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=Qd8OTwLUrmNk7h6opE0A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDE5NyBTYWx0ZWRfX+Na3wQ6jf4zF
 Hmb4rXBwIDEm4CCU8nLFjhGp+yNQL7Oo+MISpZZA/NgTQbgl7yaxKTFTU668/G0hrEA9bC2lGni
 31LyWsXnaecQUzJbM2G0UEFATWli4n1hBCC3xtvtve02rcNCID3igUjKhm7RqTzeI2BNira5IVh
 arvKDKAue9etnBCHHBPdIzH17EBkgQAXYvcJ93j0lWiVuIP8yaita8ypjwjlaPjzOW+FXZvpc17
 2D22xVzMJXXquCu1qWJm1O0DBZM+g2W3SaoD0OFHwlPHVkeB/qc3ph4P7Y/To1X93dZ7xVa8t8m
 7dRcOmPiQVkRjFkKvtpQHUKtOBcaD/U6iDkU2uC8Ihc+afdCjyFY+uRg0xkFh4lAxKxccDg1aiW
 v0NolItldkFteeKLlHeYrJWW9qb5/sLDhQ9uvoWv8B5wM002pTy7HgHwWPV7MgwgtlEhUkSaFUQ
 buPwVV9jBaTLWonq9uA==
X-Proofpoint-GUID: eRlRYehaXJd0DseB5nLUMfcIkJuJzBi3
X-Proofpoint-ORIG-GUID: eRlRYehaXJd0DseB5nLUMfcIkJuJzBi3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603110197
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274360-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,somainline.org,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,50a0000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.77.170.208:email,quicinc.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.91.149.80:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0DDFD26B3F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Qingqing Zhou <quic_qqzhou@quicinc.com>

Add the Adreno GPU SMMU node for Talos chipset.

Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
Signed-off-by: Jie Zhang <jie.zhang@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index e0282a5f9a6a..bad57592f63f 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1846,6 +1846,31 @@ gpucc: clock-controller@5090000 {
 			#power-domain-cells = <1>;
 		};
 
+		adreno_smmu: iommu@50a0000 {
+			compatible = "qcom,qcs615-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x050a0000 0x0 0x40000>;
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
+			interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
+				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>;
+			clock-names = "mem",
+				      "hlos",
+				      "iface";
+			power-domains = <&gpucc CX_GDSC>;
+			dma-coherent;
+		};
+
 		stm@6002000 {
 			compatible = "arm,coresight-stm", "arm,primecell";
 			reg = <0x0 0x06002000 0x0 0x1000>,

-- 
2.51.0


