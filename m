Return-Path: <devicetree+bounces-248774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A93CD598F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F99630024A2
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B168E331225;
	Mon, 22 Dec 2025 10:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jsUW0NRG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d0H7HPEV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114A1331233
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399076; cv=none; b=tgEMTs/qrcEhzXiMKGB/yU5u4wtM2uKEFRq2iFiN0ftrbmp2yqEbtTtfrksuNXsumm/Mj+WqFr0ApgjVWYHEfO1169hlWSA6Jc6TIrH+7/oS5VuAO3/G2o+tlZ2Am41XFmr9b1OU3a//XP8C9EJqqLcJKG9tbTFhp9RDNsnvR2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399076; c=relaxed/simple;
	bh=1bDSTkidDw+Ja+Jkbfj1sNEyDYT7N+D0FHhFA1impA0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=n/9cmK5OGSd1QpAzsrsLE5MsQh7eKJfjaApvq0UiwdbYbL/lmGg/lWoadK8N8JCxawiEjbWAiFRgnv6wHnQhTK1vtyRnZSdzuFnTlWcJ4BWH+YmQqZT3GWULvlvtKOmoernkV8W0s+oJwVYvXGSOwibPLe4+DGqBEPspatflRd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jsUW0NRG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d0H7HPEV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM6Zxeo4117913
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=c8PWEb0m8sW
	dkLPVou1pl3oui9KwXqV++4vSVkw9qLM=; b=jsUW0NRG8L6RSidvL9aT/GcX7FE
	NsATauuEWdt1CMmkxD03VmAR+dI69fU5sCT+O7XzEXjNu9pDVYoQ1rWW2M1Drouo
	tvAU0WUCzgL2MFjU4Py6512Qnc5zkwDP2w1kSH0Xa5WrFXdS8RArb9UmG/RKgcwg
	0dKpuCdLlikRftfQLlQwv2tpoBAv1MT9zjcoVIUgRnN9rQwhgLTmH/Yk5wXT8/9V
	ZnebsPW6MFl9y4V5R0S5P4q/reQ4KaYUbiGA80hf1Kt7wt7hqAKDXND5alikaR93
	E9fDYZI47VAIDvVUxANg5Y1eTh2fAz8dIHRf8k2st44kQTLs8u0J/rzEDSg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b70v28nva-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:34 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f4d60d1fbdso3502391cf.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766399073; x=1767003873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8PWEb0m8sWdkLPVou1pl3oui9KwXqV++4vSVkw9qLM=;
        b=d0H7HPEVg8bJ39uH6IrBgp3TUDW5FiZ1ju9ATlV6jmCFdFcIRPOWTiYeKsgArPDZrZ
         8RdIcyI3RYCj+93bvyNG/wBWL6HeubzTjWmWSEH46C0pHolIer6rFTbEdL+SsBgjSvMa
         s8q8RzO/UhAtBVp9Y6zVsI6Mzj0PBPrR0Dd9MZCEDG4/RREwl0zHKn3UVuGH2CwN2YE5
         Axae5MenIaa5bQvkDjURZ2Znqd2R5tpA6JPxQirYz71DoPEQFDevm1qOCapDxNUdWV+n
         /UE74uyNIWPa+biVm6rXD5qOoosZavGrX08hoODdwoO3HKqp8flnbChO1CjR/Q1xev6S
         c7DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766399073; x=1767003873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c8PWEb0m8sWdkLPVou1pl3oui9KwXqV++4vSVkw9qLM=;
        b=b+JvTIJf9/zCMMAEWntC7BPo2UoLKpXNVblTzaBEX4ddwSqrCHmCR1hh/crxFBRAwj
         ie/sYul8aySR1+05AeWK4WrRxO8HXvxH2WszfN+7QOxGN0GSpPa35EjTyV+e5wcZRzPQ
         5pF0VJ9/mc5+FvnQQX3qfDPEzTc5A5CdsIjoLYlN09UkdU0f9xtVJYrDyTWLV2+XB8m4
         5ezYO4493suop9tufUzI87qbqpIoU/1wuPt+MqszKtPLqV0u+P8YnXOqFE79XAGB/3pW
         983k99JnofAwRqZKTzz/OwA6MAsEviVQK5adkMCiagbkzwHy1P3I21nQ+fhEFJF0sHIg
         3Pxg==
X-Forwarded-Encrypted: i=1; AJvYcCVKQlL3cuJK6AtWG4mMz+8u9N9N6vrvlWqdU73gZG505x4fiafi+cCtA7VlQjGkCKFDYOTNs/BYBFfP@vger.kernel.org
X-Gm-Message-State: AOJu0YybRgMzCdh6NpoLmh31WX3rB0h/FlSvNUVbCtBanDSei+DgfLhv
	DMOZbkwv68F5SHA+Klnwf3D7y6PyL5x7e/2qF6M618zybYPHGdBU067x3ZFX/EEfToeJ95Nya2o
	pEstCZBO4PTE8kWnSKVFdZyyW8xoFKy9ALlJ+kC3dUNgTGpkkmGjEsmzlWozrgRs5
X-Gm-Gg: AY/fxX6zmbnNt9yNn3sOkvrRUrtlag+i8DlGqdTjkAe0RB0VoEVFWPwFhukIUepxSPR
	9gM77FDVtRT/tqvOH4pt2Km2lgi4XPWs9o1V3TEfM8Nd0AiY/CnTYjN5H6jyKhTHQKq1ahhdMet
	QSgVoJ+CzChBIUltRcunZH2Dct4YVQ8fHoed76GMD8zpf9bSjOZ+6mn6ABGhXYoZpJdF87QGa4W
	FGshleDRITLTZ+Lc0mPiLBttV+/3JO3z4R4Zr8BFTR5a9y1fuxnWpts7xnlsufyOvH2H9Ks5Dl3
	STr3nqeUz2z1UolGnE6a6QmloJM1Jg3pR16Ajpviy8JrcB6+QO8k9LuM9QC9dCz5Oif/9b6qcYm
	NH9ffWsv11qpPDsZKKn2+nWKNojUNlp9WciOummodUXhySue+OjQ2lheE01qYM9lfgz4=
X-Received: by 2002:ac8:5cca:0:b0:4f1:b948:ccd8 with SMTP id d75a77b69052e-4f4abcd2a84mr158209681cf.18.1766399073289;
        Mon, 22 Dec 2025 02:24:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFMKhW9p2zaejQR4//btV0xBbTVxZJY8S5L7LeEZtBFmS63nxS/a27xorqAWzcKScdu69tvIQ==
X-Received: by 2002:ac8:5cca:0:b0:4f1:b948:ccd8 with SMTP id d75a77b69052e-4f4abcd2a84mr158209301cf.18.1766399072787;
        Mon, 22 Dec 2025 02:24:32 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66a1aasm72500001cf.33.2025.12.22.02.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:24:32 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 02/11] dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSI PHY
Date: Mon, 22 Dec 2025 18:23:51 +0800
Message-Id: <20251222102400.1109-3-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: NRHnPAkABCGQtKbiEYgcpoC_dv_58-2Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5NCBTYWx0ZWRfXw19DOnoMbSDS
 y7656kv7oI3ERmyDLByQVJ7om7y4wLmWnw14HMVpv/UtpoFAlNVr+kuRDU4ZSzFocOvFoq7zZFE
 GF/y7VAAT6isbyEFbk+hXFxy4PjnswCd3VdrJIcCJzbv3s6VY/ZMMLZgl1cSazWLmNiUGKX9mh/
 b+UXhZJDznUmBYhGvdQXKhJdV7BEMsYqrJiwnk4dKrisAWVECLdWgC3/O2N2ApAqfD+h9ZopWli
 MeiWibnvGHO3Rsfmx6Z5H7qqfcR+RWUJB0oUL4kk1X79gQ955B/mL9qDIeD2vdZbcgI4I6oBOBb
 EnP9XHnfScru4rS7KxA8LIl5DXv067jCCZEhOaLghDubKruDVgjg5gc6/P4E6jluohuer2o0m8D
 gKLTFoPy2zCGcQJ50k/2bHfdA+ZSRaTv/qCe1Brb+NYN2PdWW2GujpqCVxXJWs7VBbuv3OGJ5U3
 OohXEWAeHMrJBU9aeAA==
X-Authority-Analysis: v=2.4 cv=YOKSCBGx c=1 sm=1 tr=0 ts=69491c62 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tNVMJPnUsVqa3Ada0T4A:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: NRHnPAkABCGQtKbiEYgcpoC_dv_58-2Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220094

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The DSI PHY registers on the Kaanapali platform differ from those
on SM8750. So add DSI PHY for Kaanapali to compatible these changes.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 1ca820a500b7..a6e044eed3df 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - qcom,dsi-phy-7nm
       - qcom,dsi-phy-7nm-8150
+      - qcom,kaanapali-dsi-phy-3nm
       - qcom,sa8775p-dsi-phy-5nm
       - qcom,sar2130p-dsi-phy-5nm
       - qcom,sc7280-dsi-phy-7nm
-- 
2.34.1


