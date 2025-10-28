Return-Path: <devicetree+bounces-232199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B89C15750
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAF8E424488
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8AC434405B;
	Tue, 28 Oct 2025 15:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BVMbOC9D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28136340DBE
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665236; cv=none; b=FtJuoeQVtnDi5JBAFt0py2sBssEOASALR1TmScNU9UQlckXYB5oLvcXHSwfEYRNDqTjqwk5QAZMWIGXtEB1/h5tOYXD+TDzxm06hHgNbqnGwFn+bC1gDSn4mlGzmpZBfzalOwCCO4Lw/Yt42sYu9WsRE3bpinFLMspnhliyleFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665236; c=relaxed/simple;
	bh=HYWjIFO0ntFquQpHN0l24OI9KvjX8KR7IgwrgsomREE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CX8SooQqZqd9LDbBXWfXZz2OidvEn36ni3oTW46yWXnCZA8ZnmvBc5pgHHM2eQYEm+dHONHqdjkx4UbdD8hVh6ggTzqnJeGlliEnEXkp18nQmholxoBn1Aw5FGfdiImVe5NxEoTq+2u/X5zb212VvXP3BjVmaDDea8+nKcpsCgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BVMbOC9D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SEnssV1973387
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UGyfXeVKPbjgWlb4WeAZcL6J+OWf0aILgFM3g8oL4Ko=; b=BVMbOC9D3sepW2Gz
	QyriUPQIx6YZ6mfqu0R1PdP/cL6ilQ8O4sCloBogVKj6tivSpKqc0oongrCfRTQU
	ocpuN3XQFe9IB99fZEqxSiTeBsrA0nrLVJshw/d0DNtRvRrZw4NSDu+ULWp/aGcA
	MHKGBk4WhzYAlAFVUdfzZ/TF0vwYI0l34er+RN+5qhgTkxdA0HUZkVZA0WoSqio8
	rMWsTqon1Xxm/CfIszUik6zce/LcppHe/HzE4vU0fIwcubkYf/r9dkrrqNQpNjp2
	zLLxPbY3H5bBMs7XgUS9ygtqJyLUalKWttOOTQu7bGFL/NnOCsGiDZhhSZlQYUau
	kYhTzQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2smusdd9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-28c58e009d1so130925315ad.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:27:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665233; x=1762270033;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UGyfXeVKPbjgWlb4WeAZcL6J+OWf0aILgFM3g8oL4Ko=;
        b=jDnZyCd8YEQVP5ivfrfCf0qkmeGO+TiC/7XTfQBRF6n1pyyCbEIU4U1PVuJpcSkekb
         0DnjTvZCAcHI1mpVjdBqItydKNHBodppZ8e8QS3V/DwCGVCaRIKZ4zL2vtXIp4j18S6d
         ufueo5/o4zzMMJxz6vtg41hx3bHvq4gV0UnhGc2sT7d4LrDSo1NWs3o0t829Cx52W6ky
         VCs3rtNAbSWn7MzFTgGLWFX3juEI08ff8yJqXy9n5dtOaK24px+o/MMFERuKrDmclAqy
         yK7V6VkOTeFYqim6nHnHHbYCZYgDyRDPkzbS3rsnVe7rzrgtnBBEIdppnihubkz1gxfH
         fHsA==
X-Forwarded-Encrypted: i=1; AJvYcCU1jjs4KHJFko1JJ+lKEsbaIB2D1Z1QpIGxM8TCgFactaXcf5d28cL/x5nPBkpxXPNm+CcHU3ztSRQt@vger.kernel.org
X-Gm-Message-State: AOJu0YxgOj5zqEDkfvnjkBifZrpps8uHGbwyyihbWHeGbH/77jskwmFa
	oCpyzLVbBFD33UngBxg3oFxUeRYmeKRnAnUngrG+T0fThCab0U8y/R41gc8OkKZvxVlCk1Lk75x
	yCLC62Z5K7XIfaqT5lEenTft0BlodTDf9hfX97hwCTltFO7mfeAHSk3+fjEgc1lTK
X-Gm-Gg: ASbGncuV0qMuxq2iVnZD2VG7lDSvjWSdcw9trtI9+TklNrFtN1V4L6sYCmWqjmEDfbU
	VO9R86R/HHNwiQvmztFGfnM/3Ob38PqMDBnSkEfbr7rytiqrObWu3KUKzv0QEdWvUn9cWMy1iuW
	UZxP/nKtyQKrol5Fv9Q3uqJEPPQVGwnx4pmtv222gtH+uwFYHfXT+PnckY+U0fczMPQ4Z0M499y
	bdxHgnkxR3K5MIxZ/bO5fC/7llCjcpcbdOY9QYwyujb4HjIyiJCZuAk9uPMERNNLMaKuu1gbNgb
	WKnDyh0mW9/EC8OOAsVhZXr00TuA8OZAx48TbAAdNguLNzgvFGHcjUBMp4j5Oyij2F3cHapaGkE
	5ubK43OmRMdBgsSUOrjjqq+68mUd7vhe96is=
X-Received: by 2002:a17:903:1a07:b0:294:cc1d:e2b3 with SMTP id d9443c01a7336-294cc1deb8fmr41726665ad.38.1761665232858;
        Tue, 28 Oct 2025 08:27:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE14cBnmetdTEvip2AiuMPqbNocEUBhwvIQ30b1DCC6u6VkGqRobEtLNnL3qD4nV422vPonug==
X-Received: by 2002:a17:903:1a07:b0:294:cc1d:e2b3 with SMTP id d9443c01a7336-294cc1deb8fmr41726245ad.38.1761665232393;
        Tue, 28 Oct 2025 08:27:12 -0700 (PDT)
Received: from hu-vvalluru-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e4113fsm119490755ad.90.2025.10.28.08.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:27:12 -0700 (PDT)
From: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 20:56:50 +0530
Subject: [PATCH 2/2] drm: bridge: add enable gpio for display-connector
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-enable-gpio-dp-connector-v1-2-2babdf1d2289@oss.qualcomm.com>
References: <20251028-enable-gpio-dp-connector-v1-0-2babdf1d2289@oss.qualcomm.com>
In-Reply-To: <20251028-enable-gpio-dp-connector-v1-0-2babdf1d2289@oss.qualcomm.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761665215; l=1210;
 i=venkata.valluru@oss.qualcomm.com; s=20251028; h=from:subject:message-id;
 bh=HYWjIFO0ntFquQpHN0l24OI9KvjX8KR7IgwrgsomREE=;
 b=kZQ9dNvz5d07r2JVyT+l2SWfzUBeDR2/1r/VFgKtBPVDb02OA9jts1ZxG7kCK/+gfgkviLY6x
 tisl04gG8v4DpK/GIpDS7QDZ7hU6OoMaoKF1xlsuWnAogLAJTOP8PYh
X-Developer-Key: i=venkata.valluru@oss.qualcomm.com; a=ed25519;
 pk=KEpJdy7/I8HDmNSf6B83x+sFHUNr+mjMNJ2qe4G/zXI=
X-Proofpoint-ORIG-GUID: 3ntKOfq3RWWVD8uIqM2qSZv91D_WPUQP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDEzMCBTYWx0ZWRfX4i4Hy/KJobDe
 fBotiTkC0ZPg6WGZd+ZdFV2Rp34ArrDmIAKiSf87VUsT8cepxOqZtE2aZjqHlQZ4sSL+w76xQJV
 LdB5YBuTM85tDyVkQJpKp01/O44Z1imiJbHvBkxCx6VwoeATtFF5IAkh7hY/XJmfciS8gpCEvaT
 KnzL6wA9TQbiZMltR6zQc7FIZEdjLdjeUkEbBC4mwEcAsez7ZZ+ffNqPs9tW7tJ4VemuogDBCPV
 3/e5P1byHpvn/WEgSnDAbWe5Mkq9aKcKZ9zFzeE2IxYE+L8awaeUjuC5jpFvKj2mVWeQkJhduuO
 6NYCrmw6yYDqNGCiHEIEFs9gEyYmmWdLgdF4OVfYlc/AQhZTCOWLYQcLpmSxNEN5bRT9Vk9zF0S
 7XGvoJ33eD5l0idDsxV1tNMKS9Tt5g==
X-Authority-Analysis: v=2.4 cv=IcCKmGqa c=1 sm=1 tr=0 ts=6900e0d1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=aOUc1jQm1-AEEL6HbbgA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 3ntKOfq3RWWVD8uIqM2qSZv91D_WPUQP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280130

In some cases, need gpio to be set for the connector
enable. Add optional enable gpio to display-connector.

Signed-off-by: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
---
 drivers/gpu/drm/bridge/display-connector.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm/bridge/display-connector.c
index e9f16dbc9535..52f5e4175e64 100644
--- a/drivers/gpu/drm/bridge/display-connector.c
+++ b/drivers/gpu/drm/bridge/display-connector.c
@@ -21,6 +21,7 @@ struct display_connector {
 	struct drm_bridge	bridge;
 
 	struct gpio_desc	*hpd_gpio;
+	struct gpio_desc	*enable_gpio;
 	int			hpd_irq;
 
 	struct regulator	*supply;
@@ -298,6 +299,12 @@ static int display_connector_probe(struct platform_device *pdev)
 					     "Unable to retrieve HPD GPIO\n");
 
 		conn->hpd_irq = gpiod_to_irq(conn->hpd_gpio);
+
+		conn->enable_gpio = devm_gpiod_get_optional(&pdev->dev, "enable",
+							 GPIOD_OUT_HIGH);
+		if (IS_ERR(conn->enable_gpio))
+			return dev_err_probe(&pdev->dev, PTR_ERR(conn->enable_gpio),
+					     "Unable to retrieve enable GPIO\n");
 	} else {
 		conn->hpd_irq = -EINVAL;
 	}

-- 
2.34.1


