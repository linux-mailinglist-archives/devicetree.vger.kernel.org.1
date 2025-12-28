Return-Path: <devicetree+bounces-249931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F94CE4B54
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 12:41:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8ECC2301A709
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 11:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B25D2C21F5;
	Sun, 28 Dec 2025 11:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QUUBY1vP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kpi4MHcv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9572A2C21D8
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 11:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766922092; cv=none; b=N3sgUlx9/VKYPW3fxIoyH0+jWbxqzFivSXiYY5j8yIprCoPOdqkH6ncS3hitURFXLmCLs2h1CNdN03ETLnbqeig0gw9h69igLiH9x0B0/Z6fDejteBoH2aKExiioM81dzC1Q8SkwxWZxRP9RxsnqrsTLXvqn9mWljWL5PdNDf9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766922092; c=relaxed/simple;
	bh=7TTi4A73GfIqwWPUldZxJtQUczzPUsf7Jx4OIIj7lc8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=b8fGU3oMIjfwu+GZVxDUx06uJtpA9QgQkIAW/lEzK+tduG7jM2UxWswQ5ceu1xGzr0+OQekfXT3MoXGRDQH7Z90SfzZN9mDiZCIGvKEEXUNMnRBn1kg47KykE/MrqUMW/25GSf1yzyhk5Klkr+N1P9HPeGY7vf6mmxMbXP1GjTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QUUBY1vP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kpi4MHcv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BS5Vsxo1760685
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 11:41:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=fUR0TY8MxXOYQCJYnFgknl
	uYKFQYWHGWfbmokTmDnuc=; b=QUUBY1vPukRrRhhd+kCpLaVBr192uy7s7IpjvS
	m34kgl2vyb6rS87Dvx5sqmzX6mK1Y6nhBs/J7YCtDvzL5W75rbPlVyPMx0myiX+L
	yihQsyI48JnR53UMYM97Y3vSf6yAHm/vrMkBDRVMW911F69u+zqjLeV7M1N3sV74
	06xRO5r+8pnQrU+I67WWahes1QHzo7aXhF7Ky3QquBks7UGBcEcJ1W0dDlmRNyIH
	mLoGalhI9A+hHojcDfkR7+abOtnT7JaGUY+8VVI8ztfIiDuDc/k5YqlhyExMRESQ
	4RQq29T6q2X1jawDzCo2Gga50VRf8id9KQKdl1YIrqkGWQig==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba55e2a5k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 11:41:23 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0c933c104so36401675ad.2
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 03:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766922083; x=1767526883; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fUR0TY8MxXOYQCJYnFgknluYKFQYWHGWfbmokTmDnuc=;
        b=kpi4MHcvcWhMRgC3lM9pkx1GZL/7WW5fK+G477imMBhk1rtOAp7UhFhB7GRnSejDmb
         DjTeJfJnoc2sQN9s66gy6fH1hqq6GtN+wrGqkHETg/Me4CHLlT2OwuYyDUykRIC2HIMo
         BdNa56B9ognK9HKcp3wUdTdWNrxGqAndlgk2eiYzNdE7cK6R4CHQILgTAEH8P4j1gb7f
         BpBG+GTQiRGItiNYkwBcaRtKFm8kq1Va9bsygdBx4Ld7Ccm8gMbwjDcx22X6WQOFN2xu
         LSuUYAbAg7x8/JUOM0N4VYqKLA1LYBGa9e4aeUVFi39SnxFizixH0su2GZSCMsHUw+NV
         YtDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766922083; x=1767526883;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fUR0TY8MxXOYQCJYnFgknluYKFQYWHGWfbmokTmDnuc=;
        b=GZIfw+gnTEWF8zm/Pl41REmGUnYbWAqm+x2w0OGZsBxyo9b3ntdLZWznr2Uqur7saS
         0pmooCjfdgtHxIojpEn0XAYSRtEM1jh7QwiZjOidXtyMwgaA5yFtvgyy77LuG4ncoCy7
         OJQ6nEYs+hb5iqWx9xgrGzQmMVSDXoPtfw5UuS5dLE0LvV4bg82yAC48zplNQs940iNB
         gSUAV+jUrttOzU4dWGjeqf+xVUjxVSpnkLJljopTyh/SMgYSTktOED0y5iKNAspMOd2Z
         v30FxajG+z7ccXhj+/aKIX7ExpaFAcG2OORQ7d5G21caxc70Vc0a4ScwJWNOH0ymjF3k
         V0NQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8e4N3tsPvfFNSMQMLjXt8G7yCl/C4wLBnzbL8KIIlonl3D5f1uSHq9gX+y3K2CxEMBJmJPreT10pY@vger.kernel.org
X-Gm-Message-State: AOJu0YzVrpiJ0wDXWH3kdT2SuvNAFE7XKVF4suwAS3UOI/dQJ3N4gduq
	HFY67ZamO8fxEZLihlVTM/sJE1ES44+89SBl5ypG7SIaZyjEBN6+DySU6qq+mQ3iadh/sRaqk+e
	QdAER7jRFYzmhxl1J3DRBC+RUwM4GuLCz8IDXqOt2YQ0qR597VkN5GsORrh4GWpoZ
X-Gm-Gg: AY/fxX7jSzI1PyIubaU+cA9uyDD3s+TnZSMJ3PZMqATg1bmhaKuFAospmJeoaYgEkvf
	voZNUB8NmW2K7O8idQJPp0rkEHXPj57B/4XTyyO/sXnDD0eBHX9QEF16ecthEWj2gZjDwyfUbmz
	vcULBnkTaU5xZyJbjwnfDEBkTIT6iPXLBQPLnqaBOFAZytf8/E7MNMfqtYb6ZU5DNCKKY5cC0Tv
	ZEyf2p3v/JmpjsO3lNhLzt8DCwvrUfQyI8Qbx4iNJX3vbbhz8KIvq1y0lGtsDbRFB7tuXDjgHs3
	VWK3nn5jffu5gnu1k5OGZbigjegBEy4QO/Kxt0rtl9Gng54yMcYz8iyMsuW3G2cGp6EZvg2UVxO
	Eu7/+qsA9s0kFp48zfAtb5PvKANWIdnqT/4A+F2nZCU3y3hxSpue1gLXY+r/bZnW+7/k1DXXcl3
	DJmjDYzsTXrhFmlpX8jXpOOiXmz/8Gjw==
X-Received: by 2002:a05:6a00:3cc7:b0:7a2:861d:bfb with SMTP id d2e1a72fcca58-7ff6725d1bcmr19674787b3a.7.1766922083001;
        Sun, 28 Dec 2025 03:41:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFq1kNWMT21gOafP3VFkjsQB2ou9zxqk4R4DSnAS5FwYhGu4ix7NbZh7wgZ4M+zfDEIn17D3A==
X-Received: by 2002:a05:6a00:3cc7:b0:7a2:861d:bfb with SMTP id d2e1a72fcca58-7ff6725d1bcmr19674774b3a.7.1766922082493;
        Sun, 28 Dec 2025 03:41:22 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e197f9asm26214067b3a.43.2025.12.28.03.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 03:41:22 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Add lontium lt8713sx bridge driver
Date: Sun, 28 Dec 2025 17:10:38 +0530
Message-Id: <20251228-lt8713sx-bridge-driver-v3-0-9169fbef0e5b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADYXUWkC/4XNTQ6CMBAF4KuQri3ptDSAK+9hXPRPmQSotthgC
 He3sHKhcTPJm5f5ZiHRBXSRHIuFBJcwoh9zEIeCmE6NN0fR5kw44xIAJO2npgYRZ6oD2lzbgMk
 FKnjNqkpKbVpF8vE9uCvOO3y+5NxhnHx47X8SbNu/ZALKqLZSgQFTC6ZOPsby8VS98cNQ5kE2O
 fFPrfmp8axxqWzV8oYpgC/auq5vd6liahEBAAA=
X-Change-ID: 20251115-lt8713sx-bridge-driver-32704455bc9a
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
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766922077; l=1646;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=7TTi4A73GfIqwWPUldZxJtQUczzPUsf7Jx4OIIj7lc8=;
 b=MEuXcEwXsnZvWAPGAwgxBgUU24vC2HtZM/SDbmBst6uhwaDa+V+OqVebIj0alicDctvhdOgnw
 3WpjgKpQsUpB8CZEMZvAUNCMgTsgwKaqu9eUdaFutpyY0fGRe8AfnJe
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDEwOCBTYWx0ZWRfX8HCEJOsXm7GJ
 QwbY6PGM55ZNkvUUuxu6r03j1JTGMMBx+KKeQjUycq+AQSF3RhFEV5DHRLo1YUrFdUEK9hrC4gS
 esXFYz7VaGb8M9mhn8zzSLzBpAx50MZjnFsnmfyI8yZH6Q5UvaX0b8WnIJGVxhD2Im0bgK6GmQv
 WqTYDBxfPAUSExRg0oed/ABK0oUL3dp6VMMT84Rdfg9bDujbJwnBLxVqfuXCZVzHS/xo3wViRDG
 SZoJJ7rOnRl7edfwCCYFumSSbVOO1fMt1Zr1XQUCec4oz0+0FZ9Lf910Zr/XZY7OX++0jpo0fKN
 4tTOpzKyMyBZB9q8nWAFijR+qnOgVbsmJ0N4cStRtp4VRIkqov0+y6wBTSciQb8SPQh8/B+YBUe
 DLmnFSXtudR8sPbNcDy2v0QBTkeXkdFaZRsICdzsgNRTnwo9dX3/K5s5yxDQs0sFeoo2jbzXLkh
 T+hK7Lgp8bSW1oMjoyA==
X-Authority-Analysis: v=2.4 cv=UMDQ3Sfy c=1 sm=1 tr=0 ts=69511763 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=QxBZ9i5KDo26hP1ghMIA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: OQRj3DXWuRHF2sTq0q67E5GP_F1dfDlO
X-Proofpoint-GUID: OQRj3DXWuRHF2sTq0q67E5GP_F1dfDlO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_04,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512280108

The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
audio output interface.

This series provides bridge driver and dt bindings for lt8713sx.
The driver is required for firmware upgrade in the bridge chip.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
Changes in v3:
- Used linux/sizes.h header for size definations.
- Used linux/crc8.h for CRC calculation
- Added Basic drm_bridge changes to support corresponding ports handeling in dt
- Ran coccinelle, smatch and sparse checkpatch.pl tools to improve code quality.
- Link to v2: https://lore.kernel.org/r/20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com

Changes in v2:
- Addressed review comments from V1, majorly:
- Fixed DCO chain.
- Added supply in bindings.
- Handeled deferred probe in lt8713sx driver probe.
- Link to v1: https://lore.kernel.org/r/20251115-lt8713sx-bridge-driver-v1-0-bd5a1c1c730a@oss.qualcomm.com

---
Vishnu Saini (2):
      dt-bindings: bridge: lt8713sx: Add bindings
      drm/bridge: add support for lontium lt8713sx bridge driver

 .../bindings/display/bridge/lontium,lt8713sx.yaml  | 101 +++
 drivers/gpu/drm/bridge/Kconfig                     |  10 +
 drivers/gpu/drm/bridge/Makefile                    |   1 +
 drivers/gpu/drm/bridge/lontium-lt8713sx.c          | 682 +++++++++++++++++++++
 4 files changed, 794 insertions(+)
---
base-commit: de0d6e19d2ef33ba34be2467ffdf3595da5f5326
change-id: 20251115-lt8713sx-bridge-driver-32704455bc9a

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>


