Return-Path: <devicetree+bounces-232197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28619C15738
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59E7A3A5DBB
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A47F344022;
	Tue, 28 Oct 2025 15:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K4vajpdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F08341653
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665229; cv=none; b=Plzt1DzYIzWiBl3T78QkgAYe+erz5Ljc8NqNngwvgq4vWanHL+NEv5vXY7CqIrd6rXlMSar56eUswAfzOqH6pNP3c9NUdl+wKcpvkeZw57yQR39iKyVNdOjgAh2C1R4vgmW5suvaE5imHCRM+qTLO+PlTScn2AGPzb538Vr/JjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665229; c=relaxed/simple;
	bh=MCyqHlLWLAE9HlCVFokhUe3kAhu2B1NN6idBdsA21bw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RFAXKhpcbBvXDpfhr3z+XFsEOUwIGPWtw0hnk0u6cPX/j/nVTf8+YpP3Tb+7swU24NTGpuLG7zbEvRlyXoHO+9vlEeFPOXNelk93M+OmL2cNpwZt1m53m+V6iRlqtfB3MXvugjpTVVlOJ3UchTnK3S0adwjlUR0ne7fsAAZSOoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K4vajpdb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SEnovd1866243
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=+Io2duPE2jXMSZ1lsWKrQo
	3etXZ7ayZ7YjOHgmgyHhY=; b=K4vajpdbR7avXycWfIS7WbbNWIEWZ+4KpzdM8V
	pv0I75M7M3VWc5YqzOW0ebdAOhwXfnaUwqOXE8BEmz0tflBhoIHJ7qhU1O5o7QUv
	fLWSz5/aOloo8BalnPdD41zMCtzn43fvBwtfah5C1kYWTWYjnEfWbO+rvwLYpvU6
	h1S6Vb3g7kuRwI/CGqcHZdnHpCv3Bnzn5PrJgyLkGzh5bUFEPAqfP61ys4y8zdlk
	eBK1j+blDYW5dzM321T6L2lX4+/WSPexwdzkb23csCRaIq4bOrGNVHhOIYvIU3aI
	8sN7/bRuVmyFxF59uzmpMzhOr3nfz3ZxHFakBv180OuGhE9Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2wsprjwe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:27:03 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b522037281bso3820774a12.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:27:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665222; x=1762270022;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Io2duPE2jXMSZ1lsWKrQo3etXZ7ayZ7YjOHgmgyHhY=;
        b=SOkYC5DbrevfO/XpDCfcBtzHTc/2aMapR55AfASk2sI66bNoHP5azXl/rk/JG9hRXm
         G/lB/BU/FyGNd65zO+sP0dJeqnhaiWIpf3n/Zu6pcuifm08AEM/2Xjh28McRwqwTW2T+
         UVV3PHeW9+JXxVAEFJe0BPWT9ZHFxYlOh55ReHWY76L9OyA7rdzTWzCBUmk+lzsr/dCc
         E/6Jj7OvRi3PM8qoHkFZfGmdNXPPq3jZus75vvDCpwFtAZ9epGejMt7vKtn6t2V/2nbu
         c17m7HFah1SqBHsvo6K2b2TqhjTo1F8ZI4MttuOPLBix14IPunEL/jUeJO0KZzoo5usn
         gSXw==
X-Forwarded-Encrypted: i=1; AJvYcCVV+ehI6D2906bMJbHMmjZEPIFxYrchMQfDH/jYzx58eY0MRciCZPO5oaCJzhpt6rS6lWo7Sm2P4EQD@vger.kernel.org
X-Gm-Message-State: AOJu0YyNump1pUz7WEz4dmTWKAmvEQmiyLfrnSpyI7lQhE9ie2IAd+Ux
	O+Qrua5CuzS11FkVbmtnZB69QPeVyxG8P9IPMWYgjfUhG4SjSaZtQxbqB2uXtgPi34lB4gvIznV
	Z9fVVU9TDupLjvUjextSKCGmXcab2LU4wnIOefJVf2HAdchdgJ+M3GNzWmbrVFez6
X-Gm-Gg: ASbGncu8rWhlS+PQhBe7+WMrq0x2ggsifLKfVi0DQG56ZyRR2W0vwAbXsTGUx5gIo0V
	WaTXQr4pzaFcbl1V1p5xUnVRj4W8t7OQ9l1OQP3SaGHjB2Gj4pwo4GJn15MWpusUSTuxTHtxZUT
	CFVmlYEoXDyqZbLD+uIR5lFVzeJkxNKvuAinMZE6fxcpo5HkE7ZCpTqN/txHU6KjgSqQ069ehtI
	ejAbhQNY+vOxKSE4zDVMuH0qUiiGdaPCxcp0osjo+2irU+sSnvIkunIJJ6ER2k70wWLKyJTNbxI
	DcTkZEP3gm6ibcwcjhfVovjFa8Tyw0DvC0qdQP8B9aLudeBADHd71S+JURCHy7X6prgwZfnWJ8k
	0DygqukGym3f0xk2wgii0R9WeA6QLi4DVBkI=
X-Received: by 2002:a17:902:e547:b0:279:a5bb:54e2 with SMTP id d9443c01a7336-294cb3d58dfmr54120905ad.20.1761665221713;
        Tue, 28 Oct 2025 08:27:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+8FElnofti5XZ5no/U8MitIwH09GYKVHku6MYV+kxz0l4JCe8MU17KZijSuMMWeZEsBYdcQ==
X-Received: by 2002:a17:902:e547:b0:279:a5bb:54e2 with SMTP id d9443c01a7336-294cb3d58dfmr54120295ad.20.1761665221032;
        Tue, 28 Oct 2025 08:27:01 -0700 (PDT)
Received: from hu-vvalluru-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e4113fsm119490755ad.90.2025.10.28.08.26.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:27:00 -0700 (PDT)
From: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
Subject: [PATCH 0/2] Add enable gpio to display connector
Date: Tue, 28 Oct 2025 20:56:48 +0530
Message-Id: <20251028-enable-gpio-dp-connector-v1-0-2babdf1d2289@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALjgAGkC/yWNwQrDIBBEfyXsuYJKmpr8SslB191UaDRVWwoh/
 15pbvMG5s0OhXKgAlO3Q6ZPKCHFBurSAT5sXEgE3xi01FcltREUrXuSWLaQhN8EphgJa8pCUU9
 mUIpQGmjzLROH7199n0/O9Hq3h3qW4GyhJljXUKeu55HZazTSarZy9IjGt9Abje5Gkt3AyAPCf
 Bw/T33KQLYAAAA=
X-Change-ID: 20251028-enable-gpio-dp-connector-1e4e8611ec08
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761665215; l=804;
 i=venkata.valluru@oss.qualcomm.com; s=20251028; h=from:subject:message-id;
 bh=MCyqHlLWLAE9HlCVFokhUe3kAhu2B1NN6idBdsA21bw=;
 b=r/QICjDQytKeoRto/5RkP0cCrHOYyY3L+8H6gep+3uEoIfbft1GTKKNgjQF1t6XRoIQUP0GUf
 LBi2lLWMSyfBpz8k8Gyf3q619QrTddHu0P/+NPg+zdNSe1HEH6oFsEI
X-Developer-Key: i=venkata.valluru@oss.qualcomm.com; a=ed25519;
 pk=KEpJdy7/I8HDmNSf6B83x+sFHUNr+mjMNJ2qe4G/zXI=
X-Proofpoint-GUID: W63trlcXNFWcm14pth_DRsF5uGAiGuIE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDEzMCBTYWx0ZWRfX18CQRr4d6U4B
 8e6V0gQExu3j0vZfPZ8afz86zhD4k2kt6haHuiN65/rhfwUkDVArEwbB7Mc+iULshBE+lw25htc
 vlDS5Wc+xKR1Eo8Y39dOn0O1KSs8Ujr1gGLI5QMX5W0q8RsqgNfFy6kSDpbk3Ml5EjqFQdFt33S
 lvMvPCTNX7pehhpschCPwVJnzT0giJ6brdTKKb7lMb6bd8EO5+OJDYsgpMmJnZHdKn5vbvK3qPO
 MaiHEbyJkiz/oHLvpxe/AkQCn6yTtrzwqCRSadpCHQyBZPQ+IlXxNooiDdcRbCai+BWaXsq2q+S
 p59/np6ZhZdvuhg68dza12iVLo34dJTT4Eq2cBtDnwPZRmOW2I9TccE6qwsAPkWOfkhMlMnnqcd
 MtMOIZARFbijoiOsRlV213J5YZRuiQ==
X-Authority-Analysis: v=2.4 cv=aIj9aL9m c=1 sm=1 tr=0 ts=6900e0c7 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gWnBJZiyT_VVvhjgOPEA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: W63trlcXNFWcm14pth_DRsF5uGAiGuIE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280130

In some cases, dp-connectors may need to enable gpios to
select or enable the port. For cases like those, we don't have
any gpio devicetree option.
In this patch, add optional enable gpio to handle them in
display-connector, so that it can be used for any connector.

---
Prahlad Valluru (2):
      dt-bindings: dp-connector: describe enable gpio
      drm: bridge: add enable gpio for display-connector

 .../devicetree/bindings/display/connector/dp-connector.yaml        | 4 ++++
 drivers/gpu/drm/bridge/display-connector.c                         | 7 +++++++
 2 files changed, 11 insertions(+)
---
base-commit: 4f9ffd2c80a2fa09dcc8dfa0482cb7e0fb6fcf6c
change-id: 20251028-enable-gpio-dp-connector-1e4e8611ec08

Best regards,
-- 
Prahlad Valluru <venkata.valluru@oss.qualcomm.com>


