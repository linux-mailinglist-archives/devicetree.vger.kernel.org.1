Return-Path: <devicetree+bounces-232590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB31C1936D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:54:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6DEDC5695C0
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464643161AA;
	Wed, 29 Oct 2025 08:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pqPYPJAi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D3g2Twbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0048314D36
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727055; cv=none; b=tCZDC34vFu5csA+S32RroXIGYAI02QFCnRZ0b5hu/WEmPecsLHezeIIWq4fHaF2GVSjK/KIPEiOQgfJwAhsrd68CxvFA1a99q56DZXG/aYtRCAQuPRg6wiXEdlaXHFYu60OrcrEz8hZsUFIeDGa01XYcbo1u3qCBMY5KnPeA2CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727055; c=relaxed/simple;
	bh=w43bHQGv/zAaKHwokTSoj0q1EvK3cCGUoMxNLVzLHPE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I12TY0lEsg0/RJlhpSG1XN9Vg6qqJWJlxGfqnRIUoBlQEG9khPbLJaCDz9lvdiF1PQZVLeuzDHa4u+jeYKjVj04OZpm1lcY8Tn2DdX7WM6PEkQFKX4wrO+cx0J61zNCq7HA+803NYxZAgikkzbZkAczGNnFye4JmGRbfa8E2l54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pqPYPJAi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D3g2Twbj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v7it3755502
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:37:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	50Cp3I5mBMY7GPkVlH2aGvh/9PRy+BGUwsmDasOX5G0=; b=pqPYPJAiNMOoiw9G
	1rPqYQ1PkKiDKu6cjLY+e2QQeI2dRgXksuFKkHIgGb5bH5mpoWSWwOfNcdvyi5OS
	3tJoDUH9qwLdguGsvAg9U/BEFA8/J6FBz3ZgdqPzbXHcUu6QRh1mwXkI0s3JU88a
	KbZguItQZixrFRI72sERi7T2V9Q04CeXnxhIfDbkOXcO85KGZU4/jaPUjpe/sVkK
	0CkYXjzbW3ziNW+KpC3oerNJJuZb0BiwsXbyiKzTJlAsuxUYa3fHe184eYbzbSK4
	59mtEXDFW5ec07H82x6dxl8Ol1vog6DSyI17aE88pO7uocQpsR9ab2HeQVhYlcrb
	APh+xg==
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a0hthu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:37:32 +0000 (GMT)
Received: by mail-io1-f72.google.com with SMTP id ca18e2360f4ac-925332ba890so1921528439f.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761727052; x=1762331852; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=50Cp3I5mBMY7GPkVlH2aGvh/9PRy+BGUwsmDasOX5G0=;
        b=D3g2TwbjF19wUR3MrNtvItK1kXkG1pN7U66+0ZISxXhsftCnQTadPJRGM66SzdCnvr
         rhHYyCxHSC3ENYwiz65/G6NQSHe/qFJ6CLcBruWxBUsYI7Xy/jczwQvqlIwQNqTlxH1i
         DYmS/lwjcydrUTFlNS0CDKFtOZ+JrHjA44pt0V45E14NsB5j/5klDa0qV4zx6qYSklrm
         HsJLNx0IDW6Ow+XPLsBSy9t5+/rK5suevrhVD7tuScdA+koLCaVrPeDlpRrTjLdZ9GE+
         Le5wK0wewu+y9Xn8Uj1N0dT6H7KUMHTXP1Q6VKFcWnrhHXs8bgj4PY4BNVp7fp26Atpt
         ZeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727052; x=1762331852;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=50Cp3I5mBMY7GPkVlH2aGvh/9PRy+BGUwsmDasOX5G0=;
        b=H70ttFWCYbvJFhE9kf2QeLf1fzil+Dy98d09ZLjvF4nohtozx3BFoPWnZeEawKuCYa
         leU2InHVUqdM9oUev554VuhqIFvV7YXNxO0ufLYgdl0jkgWBlWe6I0WkVCo0ilekd6zw
         /z8DZ9+F/wYvdLiRkzBu0kJSiaO/T1vzt1AB7e9TxEXIH7MsclgtHLRvGfQI5P4dMhgp
         PUDREujRrqMcBPnt6bHhkSfReUjf5ne8Ed5LfH8efZ4Gkcrr1gOEn/ZvuMt59/4NaxC5
         WBEz55vcqzcRsvZGSZt372523xv1/IJ6FOK+YGQXjAUGtZ8CcWMAwDW4Z++fAyczsq6D
         Uy2g==
X-Forwarded-Encrypted: i=1; AJvYcCXs4gpBh//pFD76EYcfPSuwVnloee1cF1Qy6U2u0qokDeMJXlHoQ9luKAqnubBFRkJuw0mEt7NDn2eK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1YlgZM/22JlFCoqM+8SM9MYZqDtezF99x5H6VBJa+wDlAKy5G
	GEygRPtrNOMIWEkJ7I5Nw/nR/1Sy32JB2xvc0QtKdgq5UP9kN+FtjupY8z0+1VXxqM5anp1pATq
	TldOZ3/raa5SeHDxuOMHzgo7EqSrCpoubCJb14Hi2oWIUa+kY1xJxVqrlZQ3fR/RP
X-Gm-Gg: ASbGncujbkHuYVUctsLdjB8qxurEOVFgK6RZ2PvF934mTH+7EmbhGm/jBGaKJS9HW4/
	MEn0RBIsvoJkimK+RnzMrbrRAudyElrwWQ/Fu1fnWq+2mKFD6IkL+sbe3WqdAUdB9/4G25uLeA+
	va/8iYq/ADJfl5bU7bosOsHoTe5VmIjh6tK0n6v++BX6milh/bzueq38qxfIfw5qYanvKzy5GXU
	QwcFA6OTXLwj4YwYXM1rPayvlnNnvjMBenMt8avn1m5/wgECwtz4xjChzW8vRvSZ4u61A7qG8Xi
	ZfEBjHL/Gr0V8Vm264kX8j7mg8zdR3PHBSOZb1UmCkah2Mi8ZM2GNRiwcsz3CA9lgIZH+SWQDyb
	89CG9PicH8ggJs7ZYOhxwlpEw8LtfM2+XfXIZvgfrg7L74+P+dg==
X-Received: by 2002:a05:6a00:3e04:b0:7a2:76a9:9bf0 with SMTP id d2e1a72fcca58-7a4e53f47eamr2802452b3a.31.1761726337574;
        Wed, 29 Oct 2025 01:25:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnkr279komHitpMFYSLX57z9xYrZhE70hIU2j2mahLHGOiFc3l7/MU04d5SWTk1X9QMqcI2g==
X-Received: by 2002:a05:6a00:3e04:b0:7a2:76a9:9bf0 with SMTP id d2e1a72fcca58-7a4e53f47eamr2802417b3a.31.1761726337088;
        Wed, 29 Oct 2025 01:25:37 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414049a44sm14158850b3a.35.2025.10.29.01.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:25:36 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 01:25:29 -0700
Subject: [PATCH v2 1/3] dt-bindings: crypto: qcom,prng: Document kaanapali
 RNG
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-knp-crypto-v2-1-b109a22da4f7@oss.qualcomm.com>
References: <20251029-knp-crypto-v2-0-b109a22da4f7@oss.qualcomm.com>
In-Reply-To: <20251029-knp-crypto-v2-0-b109a22da4f7@oss.qualcomm.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761726334; l=960;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=SWFaejhCBdbBAfLWu5s/QWExunI5LAeom61uGwA2pZI=;
 b=/AvSxPMJLFyU/Dzv85BBKtBK8RgdwXpFW/pU71hx+9yFVaibNBVFOyIdTecVihUljGcx0SRv2
 KEfTegPnQopCHsl6gZ8N6fZo9GB4b9HTRGOaWh4bmEpL8/msqsHxGhx
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=HvZ72kTS c=1 sm=1 tr=0 ts=6901d24c cx=c_pps
 a=uNfGY+tMOExK0qre0aeUgg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=ou92kEv10uOBaGRFQZkA:9 a=QEXdDO2ut3YA:10 a=61Ooq9ZcVZHF1UnRMGoz:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: s53LqFyyDqZ1e1UaA0EHzqlfO9WVhqb1
X-Proofpoint-ORIG-GUID: s53LqFyyDqZ1e1UaA0EHzqlfO9WVhqb1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA2MyBTYWx0ZWRfX3wUJT86vJVYF
 OOOFqUe5dJvX20Fo/NjTLkGOzfhi9BrHhoBruCb5H4VytY+BI8LsEyAHpXBzvCmAyiX0XabJJwi
 7EDm6Z9cJGVg9W1o8+fwB9uJQNdjt2fGmpqHFgHd98bduEZfcupI+swiun1uE39d6fOuFnbALRU
 Il2xoe1qWRo/GDPPAYHdeTKtPTt7HhV03UU68uHD5ol2pw2eTODQ8NKotgDyJRU0IZEqoTZ2lPu
 QJ1CYnOrWEInqZx7rNTGQtLW3bxazM+qY0/wkh5FpuW5qTBycIM81+htkQiwBDnKCPlHqhgF8ez
 UMp7szgL8L/ew3n8k1sWZXdLxzmGypDE4Hw+2VZoPd3SW7VJGyRbKbtaSTi/MRSYKVCfkgYvyOf
 08HAwu1n1CkhH9DCQwwmkhtteQeVwA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290063

From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>

Document kaanapali compatible for the True Random Number Generator.

Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index ed7e16bd11d3..597441d94cf1 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -20,6 +20,7 @@ properties:
               - qcom,ipq5332-trng
               - qcom,ipq5424-trng
               - qcom,ipq9574-trng
+              - qcom,kaanapali-trng
               - qcom,qcs615-trng
               - qcom,qcs8300-trng
               - qcom,sa8255p-trng

-- 
2.25.1


