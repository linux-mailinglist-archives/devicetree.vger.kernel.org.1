Return-Path: <devicetree+bounces-253633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA7AD0F5D1
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC64D30B2B8C
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0392E34D4DF;
	Sun, 11 Jan 2026 15:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oEh82c+l";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FDfsGtmY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C7734CFC9
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768146577; cv=none; b=DufNj0a8MK6DKi1rm1l6WjZHtuQHX0jdBnDOrXCvIEmHNcwFMngbMUzIBzt9UFDZvaQocHlsM7WOWVwvoKXEX2iNEXhk5QbZ8UeYPhTfGIXOxt7+n4D4/Z6nEZ5EDlAtZ3jWOZXt1zKyhOaHPlGLgUP+LI6PQJLnja1aCiwQNLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768146577; c=relaxed/simple;
	bh=6vZrxZuGRWDo/M6oQXbZQQ3gJdpWZlph0xza3vLC58c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OqPtC+PJalx2izyTpQz1VChjEU0rD65scamPZapTnhyhiGbj3G49u3WwbGbJwDTvTZNgAAXxu3KTPknm/uDHWsRh0lz/sC8SqHS2YqK0o4znoBzkhnLynH3do0UidB2uOvTmcLT5JfPCUo1xIxg9BLS7s2mTCBaj6DkOs745tAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oEh82c+l; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FDfsGtmY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60B6wNid1844143
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	awIiB2Ey6NFv8oEXBhn79OJVv3KdaerPnR/oXQd2tPU=; b=oEh82c+lTLZB7Wds
	j3QKFWozEjUhWZhM47/xGQHtKxEmJwKAfeLkZ9rhQwfxkfQO0I90E5sNYzoaKHas
	0zvzcaBgRk0KbHRcSHz4aMf0HIm3QtncYg2t2h1rsLrGXkxpPcSymzEkjH6jP0cX
	MK+3kTT1E79zf2EKwE8qXUWBiiyzQfL/LasvOFyWJSeImpNn5cy3/IuvJyQGrRUA
	WyXIqd4i3VDyHpInyhyiWFl+ZZCopRi5zEXDhtZQ3J7mD1u7bDpBK7sxsd2KYVsC
	XNo+NVLc5FUwo9vtk4tPNn6AMD7+qLLRDLkyd12ca+zKi22sTYwg28rxhgSg+Chr
	a/JVGg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bks259jad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b259f0da04so1541573485a.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 07:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768146570; x=1768751370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=awIiB2Ey6NFv8oEXBhn79OJVv3KdaerPnR/oXQd2tPU=;
        b=FDfsGtmYs+32us9Ygn0VJmHHexjKYNGHd+P6b/nrgl61BvjG/SMItBanUmdraPDSh1
         3cyh6qCO6geVJfc9AuYXCjbsH4eJlObPON/aovy7Mp5yT7wRhLf6b0+hOXjWjmqrx4q0
         /T9eJK72rCnH2gtQR709DxSaYLW0AYBiCGe+ZB2Jp50ScJvyDevPBRgJSTBnuJ8DR6/S
         +oq3KQf8BI6yJi08jstliH+lPPBjbKfY3xt76vRJWmVsfZpFL3gCTl3TSufs3LJPQwai
         CP1jhre5RlbaoDqZpwpWZST+JsLalokkbt2+XCWCpdS84rScRD3IZv+OqdmVC8FCd9sW
         RXsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768146570; x=1768751370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=awIiB2Ey6NFv8oEXBhn79OJVv3KdaerPnR/oXQd2tPU=;
        b=jhgx8AVVvyRA4OfxiW3YhR3ZGkF8XJeEaTrlwakWNszTWqxzGnva2mehl5Wi3sB3ci
         sK6Ox7jbEtWlAvGPe3CJVysLTazgLHbfrHZlgzmzC5bzs9E0h254BH0mxnizTixx15xK
         ZGB3SGNICLNgAUtZuQyOBxJ1QANkJn3eB5kk72hdGsipPLcbvkfdOxJ42OdoVwVtVXN0
         0Qt4UgtdrxsPrekSycf4+jVsGdLx6dMzfrKq0PAx5Vssid9o8PqIVVfKhd59gYn42sp8
         e1K0wKP9NsCRsQho4E4oQhvuFYA/YLCslxevUcpbuuxtOXNN78+SXjCUAKUXIaqlFFAE
         9gug==
X-Forwarded-Encrypted: i=1; AJvYcCVNhQA+EAuIS8T8x3A9vaw63l2TumY+nQhjcwmq3WPAUupnVjXxLQIZhPIf89KF6nTiHPdGJ06TzbZc@vger.kernel.org
X-Gm-Message-State: AOJu0YwXY9GgwZpP3bvgihZ3POeK6qhVbzfRH2knG8bfRlZUwvjlJ2vc
	oqHZzBio0VdFtHS+dUIx5eHwXAdDJBjcoh0O2S6Vpc4yeyAyUjjI98gct/W9eQQJJcdB10PmR84
	ytjSm5JCt3qCemEHPsDjNj9T52zM1MEMlQ1hfDTCfK7YKT6gBziitJay0V+vMyYIA
X-Gm-Gg: AY/fxX7YgiHfZsgyrKItwthvK6iU2mrmGBpMWlYeYMCNLV5LEQPJmqsxyfdnB873KLc
	E0f8u3s5ggQ5gtnnoccCTjJq8pK9J+jmwQvK/3cZSSBAlKvyo5euEHDz209hOaH49C/xIpkHDmC
	ZCUvEJpfAG/uEEIQsqg0n2I094pZTgiIeC6oP0/iEOdCb/QZOl3b8IM/GnCVMgz1zg1IzsUN1wH
	D4GCq6IfgHPVB47MJ9tkPaqPKNk/SZaE2SkEvDHHQPk6rqwcwxUclPhQHWYpeS9CKW+C8T4GGnw
	YVdq1uxdmFCdS8DoahTmGomlUvUHONFOdQdkEw3R/t00VWlIxjFeulpBqizBEB0lekoivGAb0N9
	8k4JXYGLhw0MaCmZrOCydlTjHBPBg2bfcJw==
X-Received: by 2002:a05:620a:1791:b0:8c3:7ec3:4bab with SMTP id af79cd13be357-8c38940319bmr2022832685a.68.1768146570143;
        Sun, 11 Jan 2026 07:49:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbCHkw4085vY2zN79ZcXH90qll7YSCUAa88NACZWJBMDohuTOf367IGE8LxHceNtEMSDuOZA==
X-Received: by 2002:a05:620a:1791:b0:8c3:7ec3:4bab with SMTP id af79cd13be357-8c38940319bmr2022830885a.68.1768146569737;
        Sun, 11 Jan 2026 07:49:29 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a5180bdsm1637163166b.57.2026.01.11.07.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 07:49:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 11 Jan 2026 16:49:04 +0100
Subject: [PATCH RESEND v3 07/11] dt-bindings: bluetooth: qcom,wcn6750-bt:
 Deprecate old supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260111-dt-bindings-qcom-bluetooth-v3-7-95e286de1da1@oss.qualcomm.com>
References: <20260111-dt-bindings-qcom-bluetooth-v3-0-95e286de1da1@oss.qualcomm.com>
In-Reply-To: <20260111-dt-bindings-qcom-bluetooth-v3-0-95e286de1da1@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1852;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=6vZrxZuGRWDo/M6oQXbZQQ3gJdpWZlph0xza3vLC58c=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpY8Z53X+jburp7UPt8+kYxLGlBCn21Gp/z9NqH
 1Yg2fUqZcuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWPGeQAKCRDBN2bmhouD
 1+/LD/9U53cgRG8uc2MIiIYcNBfnjKDPx3Iu5DQrCRORQTAChPd+V8xmOcTWHA51MtF5ihflrVG
 2Erekwd8gFyRtY9aKSf11/Rf8zPL6KFXOT2Er/XUsjseWb5/dG2I7VNKf/f4vydo9aAU6tp7Fx8
 yEVXJkyvlmlUNo7Y1hvxzTXi1Af2K3B/UdeXtyuQB0oyQLRl+7ETXG1d9ch0WpqC9wDr+EHkZ5z
 3LYnIChsYGDqn8k148UZHAP6nwxKMEvLnKzZXsOWN21c5WZFwmADWm9SjCDXRvmzYVa+/KNGM3Y
 zRHx4XaCmTqdUKi2c5xImIhNpkXZg+eSv6zzVdr8MogiZAWpgU4JqGYyGlyB9I9sEfMBT0+xEQS
 e3C7feXJ0g4LS/eSSlTtFyo3+G66HMqhnAUNJh0hRQbeMT/tjcGM1A8i1281in2wuuJXD7O7VnH
 CYJ4xCj3W7B/cM2H+2zDlFS4PDhDPEO7VNiYRZK6rbW3+M5ciVTmWH6ffCMg29zCAGDCNSsphsF
 kevIjlLjUbBBWkaqTkdycn5rzDPH7iBxfM0hdhNLzceC6ohM6E+JM2DG2l9JO1RvuZphcpn8xHN
 Ss1pMrc2Pxw1slcNX0aNQnRggKR2lrhwPdZr37tVJywjPKNwF8Ep1Cs0fpnbw0pAc6HrpBz23JH
 VGTonLuHE0WM8pg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE0NiBTYWx0ZWRfX9jTJkqXbLD3j
 nBNYB65CvLQAFF6+oi6FvecN+3Aw4Ijx5nI8p5R4bxJiYfs/Z8BHagib2xsOrl4DiP5uAfsgzzs
 j0phuZq+X6YtuEX+XnOMMrdYglIqF8aqk/spap52Q+EufL7A2kMVPVlAeMsTgDW9xvihmKvQApe
 b1BOSyBkSp1B0TMuVtQWKqikppqAotdfNQSCRbwwp+OJ4S87ZrvXlmmUwxh7ejzolyihDP9RAAf
 QcosCh6K7giTfZ9BDNAXxi6867rLh4BSDULRtMESAY619Fi/VL+NoaOIHco9fgpokNH51CBXqdD
 kVEMPXD/PyV8yn2i2vXyUaCeYB4zDHWSyc88k0CN2zYaEDuu5hhyGoXsplw5st6U/z42efwBOPm
 Hcg8Hr6j7zbqgfTE0UlfQkY+jwrooSNGabEdmBltFhTPZ7povR5uA0XwZE1uXoNiwyNMJ75Jc6w
 LTa9eI2GSZUd9nL7atg==
X-Proofpoint-GUID: 18Um9VP3q0-DEr59s4vGSSCnAb1WBwPl
X-Proofpoint-ORIG-GUID: 18Um9VP3q0-DEr59s4vGSSCnAb1WBwPl
X-Authority-Analysis: v=2.4 cv=EMELElZC c=1 sm=1 tr=0 ts=6963c68b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Hly1SnzPtDZhKKQCjPAA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 malwarescore=0 adultscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110146

Commit cca4fe34979a ("dt-bindings: bluetooth: Utilize PMU abstraction
for WCN6750") changed the binding to new description with a Power
Management Unit (PMU), thus certain power-controller properties are
considered deprecated and are part of that PMUs binding.

Deprecate them to mark clearly that new PMU-based approach is preferred.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
index f11d12c205fa..8606a45ac9b9 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
@@ -17,26 +17,31 @@ properties:
 
   enable-gpios:
     maxItems: 1
+    deprecated: true
 
   swctrl-gpios:
     maxItems: 1
     description: gpio specifier is used to find status
                  of clock supply to SoC
+    deprecated: true
 
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
   vddasd-supply:
     description: VDD_ASD supply regulator handle
+    deprecated: true
 
   vddbtcmx-supply:
     description: VDD_BT_CMX supply regulator handle
 
   vddbtcxmx-supply:
     description: VDD_BT_CXMX supply regulator handle
+    deprecated: true
 
   vddio-supply:
     description: VDD_IO supply regulator handle
+    deprecated: true
 
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle

-- 
2.51.0


