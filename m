Return-Path: <devicetree+bounces-252564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE3FD01129
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:25:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5AD99300764A
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE2B2D73BC;
	Thu,  8 Jan 2026 05:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KBwYCeJX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hqbfBNdo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4FE2D97B7
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 05:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767849919; cv=none; b=ZJNPZPASmi93vTjS9e4QR6ZghKnBt+prHD6ap8JMYa+M4AIVsqNhA/B/divhCCH9FEqNzZEqAP4ZyTCsHbtBreo9CTZ4mKuR0O3rKbBfXUmJq9e+fSGD367ZB5vQZaKXSslXq2FU2i2gjtD11FfNpe10vPI8HXODJRQkha5t0Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767849919; c=relaxed/simple;
	bh=7C/fuM99sOD5dTqJ/5H4LpMXwX3TLFHJS3TICuRG+gg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZhM9DW6K0HUsdgqKg7pJebdVneutZUSiQahjz6NVvSjPxe1pVKsP5oFQGMhudfWVBVj/RWFAcFyBtKqHrgoHBiV6tCTMGVDIZAqpoFq7P/7dzGfHLJN4CxpHSptgx85VnN9OZfTLoqB/JFqp9GL8pjuuy4DQnrHuQDfsCc7EVzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KBwYCeJX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hqbfBNdo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60846Arc2779224
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 05:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=++7hsKoXJsW
	92ivW/TnQTYqSqCDWM44USC0F3hg6uVo=; b=KBwYCeJXWlx9Z90ACkYV7HTF7SR
	gbv4XeBVxaAxjv+qHuUVQ2t7J2Vbng1ZIEAO5BbDQTKzPnr9ro27guNqBuh1uKAg
	sqQjGmux3Jn0xqKWJUNj0zAhPw+NpmdlQTBvyDrNofJzqw1GlbObWAuMe89pCQyf
	Jt+3oq7cJSC18yRDnlbOni3pLSdjnartwLN6inqn2831YJTuuPD7pVvporv3XWCX
	GODTJPTL3Hj3H9PjJHEDCBRgZZ9xEIYG0yl/ZhvqJ/6HqLWEywjrqrG0U4UF3dmc
	GEFdvgiXEl6+f27R16/f27ArourKT/anspkn8zIjf0216KYcbZ6t3GpGM2g==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj58ug6cw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:25:17 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso1505281b3a.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 21:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767849916; x=1768454716; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=++7hsKoXJsW92ivW/TnQTYqSqCDWM44USC0F3hg6uVo=;
        b=hqbfBNdosiRG8AgVRl65Lbvks0pCgEFKQosG/7fQ4CzSWijqYVK3TDBrn6yDm/Nx+2
         j/pL3bxjtYmpcHxEu3aUtyh+CWfJwkamhjGxyUuxNuUqThulDFQyqeyVL0HvbKCaRUAV
         n8EcV53FLutOutCFN6dpMVTeRFqqftX9bbU8C48dWkv3P8zSnPZ2Uzh/vCtCKsMQ9/s3
         GvAYPzlYM/147AJwq9SEkAVnjXgMI/pSkK6VU04pvvRBfgo14XZXBNYDTox4fYYqiB3w
         +50yfxzwgzhO5SZwzj6tztITBmeb352cHTK7TTG3U+Y3/ef7k04dWkhIUer2GevP4+of
         lWQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767849916; x=1768454716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=++7hsKoXJsW92ivW/TnQTYqSqCDWM44USC0F3hg6uVo=;
        b=vEir+FqxbYuCOXTDN7limDTJJu8N2kO2yy+b3lXPWIOpuB//GqaTngz+GkIEgMV7TS
         NTgoOq+YyO0sbdUoEZ4N0T6FegqBr7iz6QAUWyFtUJTyTLdTF7U1aiJEcdCw4zAvYoa7
         W5RtblPr4CfUwDEEt/saM15WLZeIS93yERwKWzTANNlujpdEC7GIy3rSRsqZw1yotG1U
         eyMRXopzx9k3NSBO5sXimtUHDVgC+dheaT51z2WTyr6vwv/LEH/NnWdEu9WBPP8rsaFi
         119umVQSjp8OsReUX2TcaWUOHxkkdwaXuz+3aFWVsJlCZpt2Kd3xKpqUMkf6cMPTAriv
         jLMg==
X-Forwarded-Encrypted: i=1; AJvYcCUZnf9EvoezjgYrPZ7J0d8ioYSRNv5pKCnpECf9iBxdYz6IGO1GCOyizWymBFJvVC1WCJkUPMtRht8H@vger.kernel.org
X-Gm-Message-State: AOJu0YxhzLo62hOaj8aOctzVPMEmCQ4GDrp79Lj1LgWxlH0OOpVKY3fv
	YTxSmT/icZ7QOOT8MH7j7eqHn4Tud0eLvT9WZwwrKoIXH/uhFy4MkpwDgnXE2RWCq2bT9vurfDD
	7pG42rjGGEZwylYf+kdVzhTQ+phtQLWZygB/YxT9T2s6uGunomKOPefo71awcxfVm
X-Gm-Gg: AY/fxX6Cfg5MRuh40xJ0YPlR+QiR2P1awq+oDkuLt4W0LM343yLQHA6b+OP0vKWL76D
	LSe13TB73mzbfoa4uzThgNOdsZYjWhylr/81cldgJRw/KRfRnwfitvApR4f9r83Csn+ZaGTYQpo
	YOItOb0NiX74F7kesb6mcmDHDNDylqmqnam5Py2VfJ+JZGd2SWWYlbwxE2y6vkwrQyBNWk31qdP
	Yg1KnvKUSQ8cFhZN7ba7b3XyKQuqekQHiahsXV+w2G2MJDj0ULXEbdUmrQGz/SYz0u6yVm4dPnw
	/iZSTYcCchwUKf4zr/X951FYu4h7l8Ebuqa4UGVQ7J3TvgEIk9npLMFTH81KnLtku5rPYTXeTrX
	AfaHelvecGWRcIgD6iEZ4NEyl/tmbmbEA6+ww7MYxzsnSwlg=
X-Received: by 2002:a05:6a00:1c9e:b0:7ff:8316:22f8 with SMTP id d2e1a72fcca58-81b77eea660mr4857351b3a.21.1767849916482;
        Wed, 07 Jan 2026 21:25:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIWySSU4rM/WwZXOa7D43aSEqm/pO1hNAnchsuorkXjxYBUuM60iUD4BoztRWzF833sFg1pA==
X-Received: by 2002:a05:6a00:1c9e:b0:7ff:8316:22f8 with SMTP id d2e1a72fcca58-81b77eea660mr4857328b3a.21.1767849916005;
        Wed, 07 Jan 2026 21:25:16 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb0de2d2sm6415534b3a.27.2026.01.07.21.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 21:25:15 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Kaanapali
Date: Thu,  8 Jan 2026 10:54:59 +0530
Message-Id: <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzMyBTYWx0ZWRfX3veDFBx3k05+
 Tof8pwqEjU3G6X8RJZaU8RPDz5pbpTXJX56EkCG3EW/lhbG7wmbBeqGer0vlRAZ1hy9byjQ5VfH
 QkDTAOQlwziCH95GSkTvCIR7Qwob1lGf6omNGOKW06eSTp/fMjQufxRWjTwzODqTvFv02woHY0H
 Bp1NPCL+JA9HLkO5oxMGJ2w7rn4Hq1U4h1TJdFBtddSoOhOdRRiE4yaR+QUEpxdBwBA1/1VuBKE
 6OVmJYup0unrsveMUdDxfwNYIlT7aRP5WkfsO2V5sDUIpn/urUsVT4NDUpLuiykwxC+SDJUGwQg
 xfBkN3PcRdP0itriO5wxXui5PeYNf1MluDe4ME/8ms/qcbzM2y9aDX9cJSWfYRLZxxrOJekZgHi
 hFcyGuRReplf9lc57wFTRKV9I3fOfuu0D2JJDwEsXpoleFcQcwSkr8yyEW+TmSm9mzQ0HI0hTUA
 cqc3FB/g8aOcR9c+EJw==
X-Proofpoint-GUID: iwn3pKJlS8eNIEJPvm1vwSGajRL8rZhc
X-Proofpoint-ORIG-GUID: iwn3pKJlS8eNIEJPvm1vwSGajRL8rZhc
X-Authority-Analysis: v=2.4 cv=CMgnnBrD c=1 sm=1 tr=0 ts=695f3fbd cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JlprKJ-Wy1uuo2cOBb8A:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 adultscore=0 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080033

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the
Kaanapali with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index 409803874c97..cd6b84213a7c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-m31-eusb2-phy
+              - qcom,kaanapali-m31-eusb2-phy
           - const: qcom,sm8750-m31-eusb2-phy
       - const: qcom,sm8750-m31-eusb2-phy
 
-- 
2.34.1


