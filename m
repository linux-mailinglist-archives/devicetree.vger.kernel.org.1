Return-Path: <devicetree+bounces-268012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI+VEKPmnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:57:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4BF18AD54
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 259883013867
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B74253A9D85;
	Tue, 24 Feb 2026 17:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UpzkfFqk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BdFART2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC21F3A9DAB
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955769; cv=none; b=YWjrpb8vvq99xy2ayJXqkzdeDaRe9HjzLZNBX7BBgapVDkBrUDBPFvjNqEgg14Uj4dOP7fWxDV22HbYV546oOeh4jNP55xqPp2QHZG0FyphlIbZyhTv7bgBC2FlkjCuo0t7zJ1klretKZKzplGvA2uXMwxGaY9P4NZfnHjhCGQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955769; c=relaxed/simple;
	bh=0c7I6lCfGoQlt7xddA/LipC/G/oRreJ6Rcby/wv/eQQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OaRc0ZHDhOolc7r3idIBH5d21YpX3KhTFUYw+O6cYNmI/aMjRjeKfTeRo+8RADDe3/ovcq05DsA3IW1OpMwscVuFw3JkVbpI+aSp8I9NXCf8LhumD2waTrljoMtOOsf7xmdLvyQBcZoN289xP53LNznqh3XYMdzd1g6DFAhk+Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UpzkfFqk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BdFART2I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OFQev63177206
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:56:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jUronYKsSW9F5uXX2CjyB1l7gYUW9EJCBP2yU9CIbrY=; b=UpzkfFqkI5JefO/Y
	xK2DPikaFaT6XgUhrDEbS+32xhjHKk8rr0ts6Bcd6UrMPiZgONtUGAdXk7Pqn763
	3jJEQSPpoAqP2r/oBnyYU3weWclCu4SVzP6HvgZI4s8/Y3glx20bGwiznV6tZFBj
	bTJWcjJMs5ZiV/W4fpDnpSMtajXL1BnxiP0WYYvzfEcQl9EIpgPDZ8lhoSYkhTXL
	VCmir/8kumyBT5rVMRa1mH84HozYAJ+7MLoH056+SyaiaAp0SQ31hn9+5jl62YvR
	YL4/g0Jvtvx1sY4uIJ6YBJG7hvFcAsWIvHo42aQZ3kfHcPz0EqZbDvejHH5mSMUs
	oUiO7g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chemnrjxv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:56:06 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-82320abbea2so2463354b3a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771955766; x=1772560566; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUronYKsSW9F5uXX2CjyB1l7gYUW9EJCBP2yU9CIbrY=;
        b=BdFART2IaiGlqYS2EJKnFKpf+wOJzqDre4hxfv9gMI25/RKt/tAOd/B362y1SIUxcn
         59OVI4n1khaSQT+a2YFRemG+KJO9cQhFjT8764BR1f6qNVWQ24iZuvGYJe8EtT+4682F
         P8yfI8Hz34ecYurg7+6zfnFdwqU/UUQI/TC8TED0SBYfKV2Tkg8m48/yNGuQ8Fci0JpJ
         5KXqkfAnwBEkNI18RKhbUGhvsCw9W0M3SQ0F+A91mfBCE1jAuiTvIlchYYDKcLQs+7KX
         cPLc5Fiu5B+jqcPVZpIhrpHe4WajF1KxqefdAiBC69xqeVZTMSrTMDk7zeW/nnqm06ad
         Frdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771955766; x=1772560566;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jUronYKsSW9F5uXX2CjyB1l7gYUW9EJCBP2yU9CIbrY=;
        b=va1OViLu1fdOeABbo3HzN3rq3ZtrnEhsYb3X+YtyTZvZBjvdrY7BZAbx8gqTii39na
         y48c/TYZogD0kHP77kjbqjPPAqXjy2ec1akBxfAGPrOx46fJHYo2ypYJMwL1k6QgvJNU
         L6409VXURSl1J+7EfB9dOf2a8fsqdDiVtUujb2RNgfFiNkr7SUxAQFtcazAId37ospku
         yfOsukH4FazPmSOABK5mdc0lE0oNH2XjBmR3vbsx5fGDAdAFz/lmcbW5VEjiBtJz9N8J
         jGTOW5KMZL4vCyL8EHUlX25NGRzixUvV1W24tY9PfrUaV1egR0E81mGYyZ+OxaYE9P7s
         /F9g==
X-Forwarded-Encrypted: i=1; AJvYcCUibUNZetb/m1oBDFlBjzWRTUkes25i41mvMhuFhx9ZEK3E/uqOUL0cZOYXbcE1Te9E/Mw5DWFNDL9F@vger.kernel.org
X-Gm-Message-State: AOJu0Yyas3rHaCRrofi5sQN/+9Fe+nSmnneRVZdEy2y+9MzlPpUIACvo
	gUN3/UbzRcxvGi99oxHs1qQUdzNNh/w3x1o6XkYYIllvlPmScJ82wrudV6NQ6sDdp//+w8zusBt
	YCZwyL4b8cZosg3WKJNVD/KvYiIBsHnSXChflVplzlmEaQy+T6SWpEB+m2npvn/SX
X-Gm-Gg: ATEYQzzGZnQFYBTp6T66f34AWUaHhkqqrDUCXxBxoaY4Woi1zHnP3hpWOWHfLPS+H6c
	e1YO8R4B7iVNzsOzRKB0o/Snq5N0htnJDLPyO1obIf+nkprneXW1vHLMT5t4jaFaFB/4iaWdp67
	mlCtRvI+gzN0jmCaajLOYxjWEW0R8kATIilI/94r3d46gTYpIp07RG3YT9bDSiTXIJtKsigvd5V
	OYmp1fVc2nEkq8n6qq2MRncXNk4fFIw5b0GP84aRyP42sNWeLfegMgEuqn9ydpdAqaArIqq0UUZ
	dc3wDZ2SO/hR1SSLuxXp57m0U8rIFhWZoNsLRP72BGjnR0HTE9Bj2ysQHsfX5krRZKhuMYiL4Q7
	hh6o7rwr0RZjZCwn/rCtx7mZnktr/+m668Bj5wQNv+rnuhDIOpLsFMSHck5lvS6VSwi2GxXW+yO
	nfTMhlzAXMVGAIhxiKwLc8+AJS0hsn/a4pqbjCMsQs8w==
X-Received: by 2002:a05:6a00:4d10:b0:81f:475a:d242 with SMTP id d2e1a72fcca58-826daa0c788mr5486050b3a.4.1771955765075;
        Tue, 24 Feb 2026 09:56:05 -0800 (PST)
X-Received: by 2002:a05:6a00:4d10:b0:81f:475a:d242 with SMTP id d2e1a72fcca58-826daa0c788mr5486041b3a.4.1771955764378;
        Tue, 24 Feb 2026 09:56:04 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd68e147sm10338005b3a.19.2026.02.24.09.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 09:56:03 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 23:25:36 +0530
Subject: [PATCH v4 2/2] drm/bridge: add support for lontium lt8713sx bridge
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260224-lt8713sx-bridge-driver-v4-2-b5603f5458d8@oss.qualcomm.com>
References: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
In-Reply-To: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        =?utf-8?q?=E6=9C=B1=E6=99=93=E6=98=8E?= <xmzhu@lontium.corp-partner.google.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771955743; l=19343;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=0c7I6lCfGoQlt7xddA/LipC/G/oRreJ6Rcby/wv/eQQ=;
 b=8LoN06xi/SiFB4URDz8kc7N2LHcgDycSf00eOGNVifrEd3/oXDyDFx9KabQQN9DGueIo9a1Yp
 AwBIJ37IoqADV//y3mGd7Y0FVnqwFJV5eZBkkl/Jsj8InzP9Pgvroum
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDE1MSBTYWx0ZWRfX3pAqMQhMAw+e
 I65YoCSKNL+aQyqHZfneokpEljgzrGMH3Qq6ILvpqVQkrV75p+zMWQOTkmWnNwBtnToPr+m1bvo
 IhnMutKEqN7hmTFaN3oNFt0sEuua1Z7b7zE+456lqv+/xMmL1q+yWHbyA8lyVsLsQsq6t05/23K
 PsBhH6yIY81btQsGZTelF5ew1tCTz5a5/ZuQPTpEsWYZ5F/izsD6txNKAmTDqsjQCB3mg2oTNJ/
 hWs6DjKQ45/mZ8cfZhoxaBlYHgSNQD5vw9fNMDDScwBpQUMwlLkQy/rPmZWynzBX8yc+RgAMV7f
 jjUP+tYHLWIHjjJ7D7GetAw5WO7TLidX/keiE+qOiKwgzsjfBsdNMYTLbGI+/sQ45hVfN+7BrGW
 Jwso+VggZ9Lj3+2lfAh+HUrWI0E1e/HaouRgHnBzSrr2ZaZuSoQvLysJApgBUnbIfLI9oNpJGIS
 p/mLwc0v59zHHxU0jxg==
X-Proofpoint-ORIG-GUID: hb8Sh6Vr2gL0BzN4EwyDQNod8unUCPIs
X-Authority-Analysis: v=2.4 cv=Ro7I7SmK c=1 sm=1 tr=0 ts=699de636 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=1XWaLZrsAAAA:8 a=Kz8-B0t5AAAA:8 a=QrKC4IKgJVbfS20aV78A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-GUID: hb8Sh6Vr2gL0BzN4EwyDQNod8unUCPIs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_02,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240151
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268012-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lontium.com:email];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AB4BF18AD54
X-Rspamd-Action: no action

The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
audio output interface.

Driver is required for firmware upgrade and enabling the bridge chip.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: 朱晓明 <xmzhu@lontium.corp-partner.google.com>
---
 drivers/gpu/drm/bridge/Kconfig            |  10 +
 drivers/gpu/drm/bridge/Makefile           |   1 +
 drivers/gpu/drm/bridge/lontium-lt8713sx.c | 598 ++++++++++++++++++++++++++++++
 3 files changed, 609 insertions(+)

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index a250afd8d662..7fef383ed7cb 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -184,6 +184,16 @@ config DRM_LONTIUM_LT9611UXC
 	  HDMI signals
 	  Please say Y if you have such hardware.
 
+config DRM_LONTIUM_LT8713SX
+	tristate "Lontium LT8713SX DP MST bridge"
+	depends on OF
+	select REGMAP_I2C
+	help
+	  Driver for Lontium LT8713SX DP MST bridge
+	  chip firmware upgrade, which converts Type-C/DP1.4
+	  to 3 configurable Type-C/DP1.4/HDMI2.0 outputs
+	  Please say Y if you have such hardware.
+
 config DRM_ITE_IT66121
 	tristate "ITE IT66121 HDMI bridge"
 	depends on OF
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index c7dc03182e59..07eeb13fa497 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_DRM_LONTIUM_LT8912B) += lontium-lt8912b.o
 obj-$(CONFIG_DRM_LONTIUM_LT9211) += lontium-lt9211.o
 obj-$(CONFIG_DRM_LONTIUM_LT9611) += lontium-lt9611.o
 obj-$(CONFIG_DRM_LONTIUM_LT9611UXC) += lontium-lt9611uxc.o
+obj-$(CONFIG_DRM_LONTIUM_LT8713SX) += lontium-lt8713sx.o
 obj-$(CONFIG_DRM_LVDS_CODEC) += lvds-codec.o
 obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
 obj-$(CONFIG_DRM_MICROCHIP_LVDS_SERIALIZER) += microchip-lvds.o
diff --git a/drivers/gpu/drm/bridge/lontium-lt8713sx.c b/drivers/gpu/drm/bridge/lontium-lt8713sx.c
new file mode 100644
index 000000000000..3d99f7b94c7e
--- /dev/null
+++ b/drivers/gpu/drm/bridge/lontium-lt8713sx.c
@@ -0,0 +1,598 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <linux/crc8.h>
+#include <linux/firmware.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/of_graph.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/sizes.h>
+#include <linux/wait.h>
+#include <linux/workqueue.h>
+
+#include <drm/drm_bridge.h>
+#include <drm/drm_of.h>
+
+#define FW_FILE "lt8713sx_fw.bin"
+
+#define REG_PAGE_CONTROL	0xff
+
+#define LT8713SX_PAGE_SIZE	256
+
+DECLARE_CRC8_TABLE(lt8713sx_crc_table);
+
+struct lt8713sx {
+	struct device *dev;
+	struct drm_bridge bridge;
+	struct drm_bridge *next_bridge;
+
+	struct regmap *regmap;
+	/* Protects all accesses to registers by stopping the on-chip MCU */
+	struct mutex ocm_lock;
+
+	struct gpio_desc *reset_gpio;
+	struct gpio_desc *enable_gpio;
+
+	struct i2c_client *client;
+	const struct firmware *fw;
+
+	u8 *fw_buffer;
+
+	u32 main_crc_value;
+	u32 bank_crc_value[17];
+
+	int bank_num;
+};
+
+static void lt8713sx_reset(struct lt8713sx *lt8713sx);
+
+static const struct regmap_range lt8713sx_ranges[] = {
+	{
+		.range_min = 0x0000,
+		.range_max = 0xffff
+	},
+};
+
+static const struct regmap_access_table lt8713sx_table = {
+	.yes_ranges = lt8713sx_ranges,
+	.n_yes_ranges = ARRAY_SIZE(lt8713sx_ranges),
+};
+
+static const struct regmap_range_cfg lt8713sx_range_cfg = {
+	.name = "lt8713sx",
+	.range_min = 0x0000,
+	.range_max = 0xffff,
+	.selector_reg = REG_PAGE_CONTROL,
+	.selector_mask = 0xff,
+	.selector_shift = 0,
+	.window_start = 0,
+	.window_len = 0x100,
+};
+
+static const struct regmap_config lt8713sx_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.volatile_table = &lt8713sx_table,
+	.ranges = &lt8713sx_range_cfg,
+	.num_ranges = 1,
+	.cache_type = REGCACHE_NONE,
+	.max_register = 0xffff,
+};
+
+static void lt8713sx_i2c_enable(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe0ee, 0x01);
+}
+
+static void lt8713sx_i2c_disable(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe0ee, 0x00);
+}
+
+static int lt8713sx_prepare_firmware_data(struct lt8713sx *lt8713sx)
+{
+	int ret = 0;
+	u64 sz_12k = 12 * SZ_1K;
+
+	ret = request_firmware(&lt8713sx->fw, FW_FILE, lt8713sx->dev);
+	if (ret < 0) {
+		dev_err(lt8713sx->dev, "request firmware failed\n");
+		return ret;
+	}
+
+	dev_dbg(lt8713sx->dev, "Firmware size: %zu bytes\n", lt8713sx->fw->size);
+
+	if (lt8713sx->fw->size > SZ_256K - 1) {
+		dev_err(lt8713sx->dev, "Firmware size exceeds 256KB limit\n");
+		release_firmware(lt8713sx->fw);
+		return -EINVAL;
+	}
+
+	lt8713sx->fw_buffer = kvmalloc(SZ_256K, GFP_KERNEL);
+	if (!lt8713sx->fw_buffer) {
+		release_firmware(lt8713sx->fw);
+		return -ENOMEM;
+	}
+
+	memset(lt8713sx->fw_buffer, 0xff, SZ_256K);
+
+	/* main firmware */
+	memcpy(lt8713sx->fw_buffer, lt8713sx->fw->data, SZ_64K - 1);
+
+	lt8713sx->fw_buffer[SZ_64K - 1] =
+		crc8(lt8713sx_crc_table, lt8713sx->fw_buffer, SZ_64K - 1, 0);
+	lt8713sx->main_crc_value = lt8713sx->fw_buffer[SZ_64K - 1];
+	dev_dbg(lt8713sx->dev,
+		"Main Firmware Data  Crc = 0x%02X\n", lt8713sx->main_crc_value);
+
+	/* bank firmware */
+	memcpy(lt8713sx->fw_buffer + SZ_64K,
+	       lt8713sx->fw->data + SZ_64K,
+	       lt8713sx->fw->size - SZ_64K);
+
+	lt8713sx->bank_num = (lt8713sx->fw->size - SZ_64K + sz_12k - 1) / sz_12k;
+	dev_dbg(lt8713sx->dev, "Bank Number Total is %d.\n", lt8713sx->bank_num);
+
+	for (int i = 0; i < lt8713sx->bank_num; i++) {
+		lt8713sx->bank_crc_value[i] =
+			crc8(lt8713sx_crc_table, lt8713sx->fw_buffer + SZ_64K + i * sz_12k,
+			     sz_12k, 0);
+		dev_dbg(lt8713sx->dev, "Bank number:%d; Firmware Data  Crc:0x%02X\n",
+			i, lt8713sx->bank_crc_value[i]);
+	}
+	return 0;
+}
+
+static void lt8713sx_config_parameters(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe05e, 0xc1);
+	regmap_write(lt8713sx->regmap, 0xe058, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe059, 0x50);
+	regmap_write(lt8713sx->regmap, 0xe05a, 0x10);
+	regmap_write(lt8713sx->regmap, 0xe05a, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe058, 0x21);
+}
+
+static void lt8713sx_wren(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe103, 0xbf);
+	regmap_write(lt8713sx->regmap, 0xe103, 0xff);
+	regmap_write(lt8713sx->regmap, 0xe05a, 0x04);
+	regmap_write(lt8713sx->regmap, 0xe05a, 0x00);
+}
+
+static void lt8713sx_wrdi(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe05a, 0x08);
+	regmap_write(lt8713sx->regmap, 0xe05a, 0x00);
+}
+
+static void lt8713sx_fifo_reset(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe103, 0xbf);
+	regmap_write(lt8713sx->regmap, 0xe103, 0xff);
+}
+
+static void lt8713sx_disable_sram_write(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe055, 0x00);
+}
+
+static void lt8713sx_sram_to_flash(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe05a, 0x30);
+	regmap_write(lt8713sx->regmap, 0xe05a, 0x00);
+}
+
+static void lt8713sx_i2c_to_sram(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe055, 0x80);
+	regmap_write(lt8713sx->regmap, 0xe05e, 0xc0);
+	regmap_write(lt8713sx->regmap, 0xe058, 0x21);
+}
+
+static u8 lt8713sx_read_flash_status(struct lt8713sx *lt8713sx)
+{
+	u32 flash_status = 0;
+
+	regmap_write(lt8713sx->regmap,  0xe103, 0x3f);
+	regmap_write(lt8713sx->regmap,  0xe103, 0xff);
+
+	regmap_write(lt8713sx->regmap,  0xe05e, 0x40);
+	regmap_write(lt8713sx->regmap,  0xe056, 0x05); /* opcode=read status register */
+	regmap_write(lt8713sx->regmap,  0xe055, 0x25);
+	regmap_write(lt8713sx->regmap,  0xe055, 0x01);
+	regmap_write(lt8713sx->regmap,  0xe058, 0x21);
+
+	regmap_read(lt8713sx->regmap, 0xe05f, &flash_status);
+	dev_dbg(lt8713sx->dev, "flash_status:%x\n", flash_status);
+
+	return flash_status;
+}
+
+static void lt8713sx_block_erase(struct lt8713sx *lt8713sx)
+{
+	u32 i = 0;
+	u8 flash_status = 0;
+	u8 blocknum = 0x00;
+	u32 flashaddr = 0x00;
+
+	for (blocknum = 0; blocknum < 8; blocknum++) {
+		flashaddr = blocknum * SZ_32K;
+		regmap_write(lt8713sx->regmap,  0xe05a, 0x04);
+		regmap_write(lt8713sx->regmap,  0xe05a, 0x00);
+		regmap_write(lt8713sx->regmap,  0xe05b, flashaddr >> 16);
+		regmap_write(lt8713sx->regmap,  0xe05c, flashaddr >> 8);
+		regmap_write(lt8713sx->regmap,  0xe05d, flashaddr);
+		regmap_write(lt8713sx->regmap,  0xe05a, 0x01);
+		regmap_write(lt8713sx->regmap,  0xe05a, 0x00);
+		msleep(100);
+		i = 0;
+		while (1) {
+			flash_status = lt8713sx_read_flash_status(lt8713sx);
+			if ((flash_status & 0x01) == 0)
+				break;
+
+			if (i > 50)
+				break;
+
+			i++;
+			msleep(50);
+		}
+	}
+	dev_dbg(lt8713sx->dev, "erase flash done.\n");
+}
+
+static void lt8713sx_load_main_fw_to_sram(struct lt8713sx *lt8713sx)
+{
+	regmap_write(lt8713sx->regmap, 0xe068, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe069, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe06a, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe065, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe066, 0xff);
+	regmap_write(lt8713sx->regmap, 0xe067, 0xff);
+	regmap_write(lt8713sx->regmap, 0xe06b, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe06c, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe060, 0x01);
+	msleep(200);
+	regmap_write(lt8713sx->regmap, 0xe060, 0x00);
+}
+
+static void lt8713sx_load_bank_fw_to_sram(struct lt8713sx *lt8713sx, u64 addr)
+{
+	regmap_write(lt8713sx->regmap, 0xe068, ((addr & 0xff0000) >> 16));
+	regmap_write(lt8713sx->regmap, 0xe069, ((addr & 0x00ff00) >> 8));
+	regmap_write(lt8713sx->regmap, 0xe06a, (addr & 0x0000ff));
+	regmap_write(lt8713sx->regmap, 0xe065, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe066, 0x30);
+	regmap_write(lt8713sx->regmap, 0xe067, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe06b, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe06c, 0x00);
+	regmap_write(lt8713sx->regmap, 0xe060, 0x01);
+	msleep(50);
+	regmap_write(lt8713sx->regmap, 0xe060, 0x00);
+}
+
+static int lt8713sx_write_data(struct lt8713sx *lt8713sx, const u8 *data, u64 filesize)
+{
+	int page = 0, num = 0, i = 0, val;
+
+	page = (filesize % LT8713SX_PAGE_SIZE) ?
+			((filesize / LT8713SX_PAGE_SIZE) + 1) : (filesize / LT8713SX_PAGE_SIZE);
+
+	dev_dbg(lt8713sx->dev,
+		"Writing to Sram=%u pages, total size = %llu bytes\n", page, filesize);
+
+	for (num = 0; num < page; num++) {
+		dev_dbg(lt8713sx->dev, "page[%d]\n", num);
+		lt8713sx_i2c_to_sram(lt8713sx);
+
+		for (i = 0; i < LT8713SX_PAGE_SIZE; i++) {
+			if ((num * LT8713SX_PAGE_SIZE + i) < filesize)
+				val = *(data + (num * LT8713SX_PAGE_SIZE + i));
+			else
+				val = 0xff;
+			regmap_write(lt8713sx->regmap, 0xe059, val);
+		}
+
+		lt8713sx_wren(lt8713sx);
+		lt8713sx_sram_to_flash(lt8713sx);
+	}
+
+	lt8713sx_wrdi(lt8713sx);
+	lt8713sx_disable_sram_write(lt8713sx);
+
+	return 0;
+}
+
+static void lt8713sx_main_upgrade_result(struct lt8713sx *lt8713sx)
+{
+	u32 main_crc_result;
+
+	regmap_read(lt8713sx->regmap, 0xe023, &main_crc_result);
+
+	dev_dbg(lt8713sx->dev, "Main CRC HW: 0x%02X\n", main_crc_result);
+	dev_dbg(lt8713sx->dev, "Main CRC FW: 0x%02X\n", lt8713sx->main_crc_value);
+
+	if (main_crc_result == lt8713sx->main_crc_value)
+		dev_info(lt8713sx->dev, "Main Firmware Upgrade Success.\n");
+	else
+		dev_err(lt8713sx->dev, "Main Firmware Upgrade Failed.\n");
+}
+
+static void lt8713sx_bank_upgrade_result(struct lt8713sx *lt8713sx, u8 banknum)
+{
+	u32 bank_crc_result;
+
+	regmap_read(lt8713sx->regmap, 0xe023, &bank_crc_result);
+
+	dev_dbg(lt8713sx->dev, "Bank %d CRC Result: 0x%02X\n", banknum, bank_crc_result);
+
+	if (bank_crc_result == lt8713sx->bank_crc_value[banknum])
+		dev_info(lt8713sx->dev, "Bank %d Firmware Upgrade Success.\n", banknum);
+	else
+		dev_err(lt8713sx->dev, "Bank %d Firmware Upgrade Failed.\n", banknum);
+}
+
+static void lt8713sx_bank_result_check(struct lt8713sx *lt8713sx)
+{
+	int i;
+	u64 addr = 0x010000;
+
+	for (i = 0; i < lt8713sx->bank_num; i++) {
+		lt8713sx_load_bank_fw_to_sram(lt8713sx, addr);
+		lt8713sx_bank_upgrade_result(lt8713sx, i);
+		addr += 0x3000;
+	}
+}
+
+static int lt8713sx_firmware_upgrade(struct lt8713sx *lt8713sx)
+{
+	int ret;
+
+	lt8713sx_config_parameters(lt8713sx);
+
+	lt8713sx_block_erase(lt8713sx);
+
+	if (lt8713sx->fw->size < SZ_64K) {
+		ret = lt8713sx_write_data(lt8713sx, lt8713sx->fw_buffer, SZ_64K);
+		if (ret < 0) {
+			dev_err(lt8713sx->dev, "Failed to write firmware data: %d\n", ret);
+			return ret;
+		}
+	} else {
+		ret = lt8713sx_write_data(lt8713sx, lt8713sx->fw_buffer, lt8713sx->fw->size);
+		if (ret < 0) {
+			dev_err(lt8713sx->dev, "Failed to write firmware data: %d\n", ret);
+			return ret;
+		}
+	}
+	dev_dbg(lt8713sx->dev, "Write Data done.\n");
+
+	return 0;
+}
+
+static int lt8713sx_firmware_update(struct lt8713sx *lt8713sx)
+{
+	int ret = 0;
+
+	guard(mutex)(&lt8713sx->ocm_lock);
+	lt8713sx_i2c_enable(lt8713sx);
+
+	ret = lt8713sx_prepare_firmware_data(lt8713sx);
+	if (ret < 0) {
+		dev_err(lt8713sx->dev, "Failed to prepare firmware data: %d\n", ret);
+		goto error;
+	}
+
+	ret = lt8713sx_firmware_upgrade(lt8713sx);
+	if (ret < 0) {
+		dev_err(lt8713sx->dev, "Upgrade failure.\n");
+		goto error;
+	}
+
+	/* Validate CRC */
+	lt8713sx_load_main_fw_to_sram(lt8713sx);
+	lt8713sx_main_upgrade_result(lt8713sx);
+	lt8713sx_wrdi(lt8713sx);
+	lt8713sx_fifo_reset(lt8713sx);
+	lt8713sx_bank_result_check(lt8713sx);
+	lt8713sx_wrdi(lt8713sx);
+
+error:
+	lt8713sx_i2c_disable(lt8713sx);
+	if (!ret)
+		lt8713sx_reset(lt8713sx);
+
+	kvfree(lt8713sx->fw_buffer);
+	lt8713sx->fw_buffer = NULL;
+
+	if (lt8713sx->fw) {
+		release_firmware(lt8713sx->fw);
+		lt8713sx->fw = NULL;
+	}
+
+	return ret;
+}
+
+static void lt8713sx_reset(struct lt8713sx *lt8713sx)
+{
+	dev_dbg(lt8713sx->dev, "reset bridge.\n");
+	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 1);
+	msleep(20);
+
+	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 0);
+	msleep(20);
+
+	dev_dbg(lt8713sx->dev, "reset done.\n");
+}
+
+static int lt8713sx_regulator_enable(struct lt8713sx *lt8713sx)
+{
+	int ret;
+
+	ret = devm_regulator_get_enable(lt8713sx->dev, "vdd");
+	if (ret < 0)
+		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vdd regulator\n");
+
+	usleep_range(1000, 10000);
+
+	ret = devm_regulator_get_enable(lt8713sx->dev, "vcc");
+	if (ret < 0)
+		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vcc regulator\n");
+	return 0;
+}
+
+static int lt8713sx_bridge_attach(struct drm_bridge *bridge,
+				  struct drm_encoder *encoder,
+				  enum drm_bridge_attach_flags flags)
+{
+	struct lt8713sx *lt8713sx = container_of(bridge, struct lt8713sx, bridge);
+
+	return drm_bridge_attach(encoder,
+				lt8713sx->next_bridge,
+				bridge, flags);
+}
+
+static int lt8713sx_gpio_init(struct lt8713sx *lt8713sx)
+{
+	struct device *dev = lt8713sx->dev;
+
+	lt8713sx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(lt8713sx->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(lt8713sx->reset_gpio),
+				     "failed to acquire reset gpio\n");
+
+	/* power enable gpio */
+	lt8713sx->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
+	if (IS_ERR(lt8713sx->enable_gpio))
+		return dev_err_probe(dev, PTR_ERR(lt8713sx->enable_gpio),
+				     "failed to acquire enable gpio\n");
+	return 0;
+}
+
+static ssize_t lt8713sx_firmware_store(struct device *dev,
+				       struct device_attribute *attr,
+				       const char *buf, size_t len)
+{
+	struct lt8713sx *lt8713sx = dev_get_drvdata(dev);
+	int ret;
+
+	ret = lt8713sx_firmware_update(lt8713sx);
+	if (ret < 0)
+		return ret;
+	return len;
+}
+
+static DEVICE_ATTR_WO(lt8713sx_firmware);
+
+static struct attribute *lt8713sx_attrs[] = {
+	&dev_attr_lt8713sx_firmware.attr,
+	NULL,
+};
+
+static const struct attribute_group lt8713sx_attr_group = {
+	.attrs = lt8713sx_attrs,
+};
+
+static const struct attribute_group *lt8713sx_attr_groups[] = {
+	&lt8713sx_attr_group,
+	NULL,
+};
+
+static const struct drm_bridge_funcs lt8713sx_bridge_funcs = {
+	.attach = lt8713sx_bridge_attach,
+};
+
+static int lt8713sx_probe(struct i2c_client *client)
+{
+	struct lt8713sx *lt8713sx;
+	struct device *dev = &client->dev;
+	int ret;
+
+	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
+		return dev_err_probe(dev, -ENODEV, "device doesn't support I2C\n");
+
+	lt8713sx = devm_drm_bridge_alloc(dev, struct lt8713sx, bridge, &lt8713sx_bridge_funcs);
+	if (IS_ERR(lt8713sx))
+		return PTR_ERR(lt8713sx);
+
+	lt8713sx->dev = dev;
+	lt8713sx->client = client;
+	i2c_set_clientdata(client, lt8713sx);
+
+	ret = devm_mutex_init(lt8713sx->dev, &lt8713sx->ocm_lock);
+	if (ret)
+		return ret;
+
+	lt8713sx->regmap = devm_regmap_init_i2c(client, &lt8713sx_regmap_config);
+	if (IS_ERR(lt8713sx->regmap))
+		return dev_err_probe(dev, PTR_ERR(lt8713sx->regmap), "regmap i2c init failed\n");
+
+	ret = drm_of_find_panel_or_bridge(lt8713sx->dev->of_node, 1, -1, NULL,
+					  &lt8713sx->next_bridge);
+	if (ret < 0)
+		return ret;
+
+	ret = lt8713sx_gpio_init(lt8713sx);
+	if (ret < 0)
+		return ret;
+
+	ret = lt8713sx_regulator_enable(lt8713sx);
+	if (ret)
+		return ret;
+
+	lt8713sx_reset(lt8713sx);
+
+	lt8713sx->bridge.funcs = &lt8713sx_bridge_funcs;
+	lt8713sx->bridge.of_node = dev->of_node;
+	lt8713sx->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;
+	drm_bridge_add(&lt8713sx->bridge);
+
+	crc8_populate_msb(lt8713sx_crc_table, 0x31);
+
+	return 0;
+}
+
+static void lt8713sx_remove(struct i2c_client *client)
+{
+	struct lt8713sx *lt8713sx = i2c_get_clientdata(client);
+
+	drm_bridge_remove(&lt8713sx->bridge);
+}
+
+static struct i2c_device_id lt8713sx_id[] = {
+	{ "lontium,lt8713sx", 0 },
+	{ /* sentinel */ }
+};
+
+static const struct of_device_id lt8713sx_match_table[] = {
+	{ .compatible = "lontium,lt8713sx" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, lt8713sx_match_table);
+
+static struct i2c_driver lt8713sx_driver = {
+	.driver = {
+		.name = "lt8713sx",
+		.of_match_table = lt8713sx_match_table,
+		.dev_groups = lt8713sx_attr_groups,
+	},
+	.probe = lt8713sx_probe,
+	.remove = lt8713sx_remove,
+	.id_table = lt8713sx_id,
+};
+
+module_i2c_driver(lt8713sx_driver);
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("lt8713sx drm bridge driver");
+MODULE_AUTHOR("Tony <syyang@lontium.com>");
+MODULE_FIRMWARE(FW_FILE);

-- 
2.34.1


