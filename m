Return-Path: <devicetree+bounces-236113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8262C40040
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 14:03:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00C6A3A50B1
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 13:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78378271454;
	Fri,  7 Nov 2025 13:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iFVQbAOa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JQ6zixVc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67EF243954
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 13:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762520594; cv=none; b=NNNKJbIPif6Tw0gmh0P5Fb2zb5MVbFXX3YOUUPTqlfySqSpVyDnCEfSZa8awguHQfoU3zi4Zh9Bh6+K+XWkQvl8iFbzAEZRZU9r1X+vK1FCeOCaDvqBsKnGzZ6hLdrujlukkdbczaLsWWKBeIPvKUQ7kgiXYtiRYQxLM3wx6qDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762520594; c=relaxed/simple;
	bh=3o6/h7lfm0wNOd4QIU3s+OjsyRjrNHPqDmP6ixdcEM4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OI8BrOWjPr+Quj7YW4C+WhRfq/M5hW2taIQ0gZD1DqMPDxhLDlJEYVMwPIgMgmdWHjgCTOiwlBJCSubOCVYxvRKaYk+8pni1cMeUXFefNqoCeyWmRFF2XIBPbnfW32nL25sWzwmbGhxE1wFp61AmHifLp6SHXW/XbJy+5KTkea0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iFVQbAOa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JQ6zixVc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A793CXZ1710787
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 13:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=lfUt+Pe8Vkcg5TILyH6ijn
	6N/BCnnj8nV9k1efvvmJc=; b=iFVQbAOaLGnngSi4qCLpu4a1Q4Dk1u1ETE6tO3
	WGjDSDTveSH5bQC64sD+MOji/EzasaBH8JQftSVYnmCrOHGFhmLsBrocf8HUHIPi
	/JD6yS9PPagvjxnnNtqPfCigErUfNxBNw2QZMj9Jak+AG/3InWzyPmo66Me0PI5E
	tpBYXVEtdvmU/XOt8ELqigtw6hLZsoCzFxolqNW/w9+hhB4z4S5C3yBt99rHVNgT
	6y8FgNCoxFYqrUKqTPNuB1YMtfHOR+k2xxiXxUob5W1q9xoo3kY25f2eayx3rmwm
	N8Est9/RvjAJm+T1b9TyAYxj5kfBNiMW28i6raeXbmsvbqhg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a96ue1w4v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 13:03:10 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-295b713530cso10951675ad.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 05:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762520589; x=1763125389; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lfUt+Pe8Vkcg5TILyH6ijn6N/BCnnj8nV9k1efvvmJc=;
        b=JQ6zixVc/kb3UNf5Mc/e0ams3wWqC+SZRaNNF7iepgchqrAUw7fq73/VnebfnutHGA
         hwUuvzAvn1DsBsq+zszR3ut+suni1rqi8uAvyl3YXbbHdMrHAwuFirsgB8eU96gXwIAg
         lhrnUB2cOVONJe0gp4w1ERuUDe54iXtUIDuDkieNn5NNefmGIcxwsw/j/oHdSNI7td3U
         x6S3vP6gdmS+hVKlFW5DXNCVRdM4rosFlNqP+6Se2+PhwjiNBGmHNXsWCsLWo7kygulB
         7dGAfq4pSumrnPGqQvEZfoQOuCv2EUKfGeeAdO1+6XM9O+VqwGJgytoYsfUWONTGroIy
         Y8LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762520589; x=1763125389;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lfUt+Pe8Vkcg5TILyH6ijn6N/BCnnj8nV9k1efvvmJc=;
        b=AlI9TJSxVbQQ+j+MM2pg+cNmo0+wgZcKMmkYZ9H4te6cBWMcuZVpq9MuzJhtrWyzZL
         LRgWUlEZmzfked7T9N1aaUbG9zqp4X2dqG0ZIK/5QumzHxac0CDWY4tKreN0nf6cO4QP
         h8rwmvIyWCtSBjbnp16/tLxqKD40IpVoaGpMXja3s6RF1bBYm3JnrGDtXCcscE+7enk6
         mB+4mf1Ktk045UsyZgyAuOMOlVNZYOm1N63IbU8xZQonb+xOkK4xliyDLoZnzyUjBEbZ
         myyJGkjS4IHgbAL6jGwu3cQoYoLPTaE0Tu+lRRmErNyurjcKRD603kJJ2yJX9Uh3gG5c
         6Etw==
X-Forwarded-Encrypted: i=1; AJvYcCXFvV+fMJu1q4RrUrqlq2BvX7QvmoGtAJPvhtdcw4uv5kbYG3cTG2+vbw+FGtg/P54LAsJmrgFg5lpF@vger.kernel.org
X-Gm-Message-State: AOJu0YxRV1G6k1ad+899nS8loTw5+bjUuQ0xpRRbJrBcOzG3CiwtsDvT
	nBL4qnXVERTkBBvIcjdpk6RA5MGckzmtZMiRaxQHLqtW/BhrNfUZUvrYD+l560tdDFHykJVt+QW
	Ua04QjpEb0fkgpwgpRIDMXRLHpYK725ANanFiaMc66yLapQ7VidSF8NeqGfjHudSZ5Pp553U=
X-Gm-Gg: ASbGncslp9MOG3v2MpfTJ56CrUWPaAx28hMxBEXAKzc2p21bP2wyhKgS+E8c/ZjImYJ
	VaStL2hAD5NZeU3IWN428DXp3RMzZNqLx1oH9xcKJl6ZoGmtpHoMGjEYdKT5UXlhQLe7AcMgLD2
	vVaY8Zo6bIMXmnkhkmJPqXny081HENDERGYmxkNSf3tmkF4y9+i90pNDbsPszA01n8nfUttUC3O
	mzDctK54lZ7ZfWw3x+54q5mfOCWyThFwCLvej/o4kiz+z5skgd3/jtU/4iJrvprkzpBLn94kIWS
	ufhUb8QqrQNNlGXXc2bDdCXcXeYhjW0xp6YbX2tT3BZKybV+D7DbNXu02/kg4lsIn2Sf22JPR/V
	lOhutNRoy5mGBjG3wOWbWjJ4G
X-Received: by 2002:a17:903:1111:b0:295:4d97:8503 with SMTP id d9443c01a7336-297c0464908mr45728615ad.30.1762520589204;
        Fri, 07 Nov 2025 05:03:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeHnWcEh2L1n7jfwYkgaWNZ9WVU4d8qKMKl6aIl3glpe3CfGHxreyqN5fPQUGfR/kDgnPPIw==
X-Received: by 2002:a17:903:1111:b0:295:4d97:8503 with SMTP id d9443c01a7336-297c0464908mr45727775ad.30.1762520588466;
        Fri, 07 Nov 2025 05:03:08 -0800 (PST)
Received: from hu-nlaad-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-296509680e5sm62477745ad.1.2025.11.07.05.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 05:03:07 -0800 (PST)
From: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
Subject: [PATCH v2 0/2] This series adds LT9211c bridge driver support.
Date: Fri, 07 Nov 2025 18:32:57 +0530
Message-Id: <20251107-add-lt9211c-bridge-v2-0-b0616e23407c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAHuDWkC/32NTQ6CMBCFr0Jm7ZBOgSiuvIdhUfojkwDFFhsN4
 e5WDuDmJd/L+9kg2sA2wrXYINjEkf2cQZ4K0IOaHxbZZAYpZCNaEqiMwXFtJZHGPrDJiUZJcro
 nfREV5OISrOP3MXrvMg8cVx8+x0ein/t3LhES1k5W51o4S4JuPsby+VKj9tNUZoFu3/cv2We/6
 rsAAAA=
X-Change-ID: 20250910-add-lt9211c-bridge-5a21fcb1c803
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Nilesh Laad <nilesh.laad@oss.qualcomm.com>,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-a9b2a
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762520582; l=1293;
 i=nilesh.laad@oss.qualcomm.com; s=20250718; h=from:subject:message-id;
 bh=3o6/h7lfm0wNOd4QIU3s+OjsyRjrNHPqDmP6ixdcEM4=;
 b=kZHsSBXd6SQsvPCO/QQLrItK5cFUkDdGBuKgmtLJTb7VA4fPrSSp7u/q0iRYBSRuKGG1Oht1l
 Okx3+359Y9ECUA6V/8mERpMXOSGlmOskpfQrpfT9NBOz1SCLgJFYDo6
X-Developer-Key: i=nilesh.laad@oss.qualcomm.com; a=ed25519;
 pk=MjLHvGipC16awutyYh0FnLpT1nPxL/Cs1dCevHMrrD4=
X-Authority-Analysis: v=2.4 cv=fYKgCkQF c=1 sm=1 tr=0 ts=690dee0e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=wg4gmtxcXx2xPSsGLWoA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: hMOfUl2Td1MmEbLBOlcjMr1PPf2SZCFH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDEwNiBTYWx0ZWRfX6JVV6sc8hIDS
 kwUzP0NrXkpO2zjUumIB1HSfnB5NflmKu/uR9Rvwp0Aa43SvaKs4JE1qltKr9lxpWhh/tlpR2yW
 utQLKFWgdno03UrMhnI3VxLf8d8t8S6qCcyNVyHgkhVdyOxXFHzWa9YwfOiZVccoU5TapFKONYc
 heIGFVOqP8pFVpPYeJTXFlq8ztZi8V+Czgz2PHaN/JjPtKdnkKLRQ01LtL0kYvd1qqQVF2iCxqo
 hsdGc6smbP4IsyX9HPRdfrpoNqARM5sXYOhfjan4YDn/4GgiwItM9sNEIJ3ES9/eL1M0WiNvKPM
 cvcyQZVBkeA7R0NPzfGo87f4goSNzGlscXTeu6/H9vhnnUHvNilC4ZlkpWBkHh6Qp5zNk8uRj0d
 MLzC0ysrOBmjJdsMKY9FOKXmSmThhQ==
X-Proofpoint-GUID: hMOfUl2Td1MmEbLBOlcjMr1PPf2SZCFH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070106

LT9211c is a Single/Dual-Link DSI/LVDS or Single DPI input to
Single-link/Dual-Link DSI/LVDS or Single DPI output bridge chip.
This adds support for DSI to LVDS bridge configuration. Exisitng
lt9211 programming sequence is completely different from lt9211c
hence adding as a seperate driver.

Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
---
Changes in v2:
- Combined driver patch from https://lore.kernel.org/lkml/20250911-lt9211c-bridge-support-v1-1-c221202cbcd5@oss.qualcomm.com/ 
- Added MODULE_AUTHOR
- Uppercase to lowercase for hex values
- Link to v1: https://lore.kernel.org/r/20250910-add-lt9211c-bridge-v1-1-4f23740fe101@oss.qualcomm.com

---
Yi Zhang (2):
      dt-bindings: bridge: lt9211c: Add bindings
      drm/bridge: add support for lontium lt9211c bridge

 .../bindings/display/bridge/lontium,lt9211c.yaml   |  113 ++
 drivers/gpu/drm/bridge/Kconfig                     |   13 +
 drivers/gpu/drm/bridge/Makefile                    |    1 +
 drivers/gpu/drm/bridge/lontium-lt9211c.c           | 1106 ++++++++++++++++++++
 4 files changed, 1233 insertions(+)
---
base-commit: f50b969bafafb2810a07f376387350c4c0d72a21
change-id: 20250910-add-lt9211c-bridge-5a21fcb1c803

Best regards,
--  
Nilesh Laad <nilesh.laad@oss.qualcomm.com>


