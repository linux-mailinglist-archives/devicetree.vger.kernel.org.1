Return-Path: <devicetree+bounces-252667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD2BD01B34
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 09:58:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F094F302BAAD
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B70CB35FF5F;
	Thu,  8 Jan 2026 08:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I7O9aB1P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Fem+cLSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30016346783
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862675; cv=none; b=epKs/x5kd41zcKT44NRsM/mQ6XodV0bcajtRWmvsv7CSQvP7amGeuESWuYZO+C9ArNYmlvWFx1P76Nu5MSGkERotXa0t8Z75TFC5XpfApGpHJR1+f7amEImvH65KXd8ku9EukSzihoj0PnC4ofboNKf+D62OCypxxJP0W8RPmpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862675; c=relaxed/simple;
	bh=1bDSTkidDw+Ja+Jkbfj1sNEyDYT7N+D0FHhFA1impA0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=buvUlyRPwJYxvCCgHauEqBDLR0qCfTgDJxrsgdoVN6HUdReKrW6Bd0QMW3k/jubGsjuefWSID/s+md6gHKvXNEUGwhNvs2IeicbLvKt9+z7H18b6F9lDt7sgAFAGRurRXjOOEe0c/0AA4HbT50JkjuFgiOu5Aczt8v5hzEdsgLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I7O9aB1P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Fem+cLSG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60872Egj1495958
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:57:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=c8PWEb0m8sW
	dkLPVou1pl3oui9KwXqV++4vSVkw9qLM=; b=I7O9aB1PNe1S/3qYGlUbDFfmmQL
	2YQl+hMVOe27gUcYM+8pYK8kwKvrB5KXl4c88iuenF7Fhtpa9YJzrt/jOYtiP9i7
	uSRLsZ3M/jJoemTvbDolsWEJlCCmDmQ6ZP568jAkVYPaQpcI3NAXBgoRZlvdCRZD
	yUFVLC1lcuKcFjWro6Q4tAU8CfI7U9dH3oTg72t0cXawMB7GueHn833Y26g2uvwC
	U8dvOEszwCaLKkxDp2nq0MYct0LD0Qk8gCj4egv34YHZozkPCieJQ1qF4e4lLctr
	YgR6rR7u2nMQoYu4G5StLrvaOQ7ORKYnMivgsXSe67zoHh6VrBToVd8sL7g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj7ua8awm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:57:41 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a360b8086so80435146d6.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862661; x=1768467461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8PWEb0m8sWdkLPVou1pl3oui9KwXqV++4vSVkw9qLM=;
        b=Fem+cLSGBh6p+YoNKxrwy8RapU6jG63Ad2SWAk/tlkaFBr2QT3HvJBNmcRGzdczD2N
         xom8Siwh/6GRdz7dXqe6kSXn/hcfj19dgTzYvZ4TqIjoaK9nHY7YFsBKPZ5xbnt8qzen
         sxMbvB5qlAxy5yv6tllwKNW70FexD7nY00c/FZoPbz8BvAQ1V07kan+f+k2oa6DvAldu
         expCwJMBLuOLoYwK6VL3UdoGR/55YFUz0R1qY5wAoA0ynQW5iIoaQuFyeFPsREX9sR5E
         pgQ9V5nqOjuS5fRn+Fv2Jfxd8s7EusjQQgn6HUcQ43+IjOx2enDqZrRb1rUeaGqytYdi
         hV1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862661; x=1768467461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c8PWEb0m8sWdkLPVou1pl3oui9KwXqV++4vSVkw9qLM=;
        b=hNMUGUY5oi+OKQ3R8YGYoykXucPhLstS2Lom5kU4Z+2DPP8hUVwzZZW7nRmQM0xoQM
         Wnz/544MHAKBYQCOVuyBBBXA81MHg0rETLttgWYpPscOkOr7InrQlGJN/958Ck9LNved
         BaShf0gxodYfpI0WyF7romDHzeAUw/dorB2nXUGC2nQmplOf8+x/lfWLC0c8yx3YqEv5
         1Pu1z55MJjm9VnCixv2QP3ZoTnWg9GGNfr4t3ffvYls14w8JbKi4gq8BMOviH79vVRwB
         M+rSg2F0vmcxrNk6h8lQH6sHr16UwDNxF6doZurUgp38T0l1mIN3GvKEGhNtShuiL2QR
         KXvA==
X-Forwarded-Encrypted: i=1; AJvYcCXQlNyU72f7chWrPg5vhHbz9L1cvmezBrg2xJctFLuvWYivWVcL1F+1mB/KSJU+jPisXb6tN7/QSNYj@vger.kernel.org
X-Gm-Message-State: AOJu0YyZEfyskgBwpI1PC3MWBU5VZTLuipQ7SzRfhJECR1tuxOpM5HYt
	sRpDfWmukRmkA06tCo48ji3lt76+fkadUBcX/RR3k0Fxg145DcMjcsVzc3tW+6VunESdtDNyAOg
	G+fSaDKlXB0JYeFRetxhBMHiIVPIGOxGg/CQ7HW1C/VT1I86GzkmmR4ULSTPp/KZ4
X-Gm-Gg: AY/fxX5VUCY0yKAovVRWGS4ZXDOhrQb2PSELvncZmXbbPDuunYU4Q8xLr/qldIO2ucH
	QosvurJXuxS6V+/XOb/zVvU+kGWtvouJkHXuko1+xjyMC7Ax4l82lAGIlZ/7swtmzVP4Rz838CA
	ji5T6qiXB8LOlq1cofOgk6llXSqj8s5GIvyCkxc3Hnh3hhwkZXOK7qKTLBMUQn9pNXShkP1cJec
	LgxrHimWMySfWL+OhSWwPLF4TfH2bShmjfjGlb35EWG3fY1NirCW9LCaQlDTA//PFrPGFjWVB+e
	lva6UmdXpkJxNQwR0sFEne42JaIVYXXaXsH4P2B7faDUpRljM/Wae29jXLa6LrXZ/FplGwLhyBK
	+jVGl+Gr7ADmXhq961bVzFOyVnIhZElpYhkdPmOenqIt0jXm6DE9chTaCCchsAFFL0QU=
X-Received: by 2002:a05:6214:f6c:b0:88f:cebf:f7bd with SMTP id 6a1803df08f44-890842f5175mr77313826d6.70.1767862661209;
        Thu, 08 Jan 2026 00:57:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEP71nOodf5/nPXrEPkydrhdDpMoq8JxICLTshZ3OPSRTvksaFU3iM79Vsd304YJwYU3HH89Q==
X-Received: by 2002:a05:6214:f6c:b0:88f:cebf:f7bd with SMTP id 6a1803df08f44-890842f5175mr77313626d6.70.1767862660848;
        Thu, 08 Jan 2026 00:57:40 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cc7eesm49680326d6.2.2026.01.08.00.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:57:40 -0800 (PST)
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
Subject: [PATCH v5 02/12] dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSI PHY
Date: Thu,  8 Jan 2026 16:56:49 +0800
Message-Id: <20260108085659.790-3-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfXwQMkGdoS14XU
 CvAwy55E7Z/S6ne1Ewsn8rUAHUDpj8HeU6T7PXpmzx+SvyWTYsNq6p76aGecLY1Z3YEsZC86NBH
 Ud4Jgt115PXkJisWjeZIJ97misdznVmTQ/TZL8+uwsJhVbbfz7vUsy1JJRvqb+tXr9k/3vIDADq
 wmCFPG581zqbTbQh7tdjMj6PgDFzv3nEnj5wfqIWM0OEBVjY1ggpQp+mrI8NUS4hGEBJqZRytbZ
 FasEc6tYmYyEwv98QrwB7G/2US8an06beSkr9Yg9PkVXEB0d3l7pxevY+7h3OAFkaCGae5iluXe
 ofo1FvpDcPJaabTFdNfRzbEKjyc3FQJBiypl1PrE3Gqd9a6oqPMMJN8IXh6KYKBH049yavc/7OD
 aVEyxR4fXV7rdwMeuESGfPxudgWURVXnEKM0Gwe5KjfardE7m1KxdOHwMIdy+IDSAphbQm89qbB
 loEjaGfxYlHh4Su+LFg==
X-Proofpoint-GUID: QHYBipVv_P0vpj5pntlO2_j-HPONRRia
X-Proofpoint-ORIG-GUID: QHYBipVv_P0vpj5pntlO2_j-HPONRRia
X-Authority-Analysis: v=2.4 cv=XMM9iAhE c=1 sm=1 tr=0 ts=695f7185 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tNVMJPnUsVqa3Ada0T4A:9 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080059

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


