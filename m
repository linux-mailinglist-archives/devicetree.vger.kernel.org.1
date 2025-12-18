Return-Path: <devicetree+bounces-247687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC6DCCA72B
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 07:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0003303AEA1
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 06:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3816431ED97;
	Thu, 18 Dec 2025 06:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pTCANGuN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="geIuyPzo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D8F320A3C
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766039071; cv=none; b=L+rwnTRfPt+v5iYRYap54Unj2WUzvLqZH+fSnOK15LctqVf0B4kI32RAPKDuZjWmsxQzApWN0s+W9wpGK77D05LfPesK9uGlq86nl+2C2B4lbZMSYwdMJ/FuDItxaddaZdTkINCWtksmjgmR9pLEDqvPZdzOo7T+gAI97lurTV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766039071; c=relaxed/simple;
	bh=IjhpA0u5gPex9Wgy/9k20zgIgM0B6va1VAAo1IRxNlA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bO00LKvtfl+JAfrCD/gJVD6EFUAKjsQ7Mm/q/d17a/VXsrMRIHmjq3M+N+7ETRc/cKYkjsJD2mifYT+hOkDcMLOljdKS2R4Kjoujj2za73Ck8bHTapOWKgaqVoDERy8POrUVYZKgyk3XdIxXdM1tUVgODJOB6d1VDmXd/kWgEt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pTCANGuN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=geIuyPzo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI3bpbP757279
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:24:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=PvF2kzY2RJHVpfE8ZdMyt/
	PKZpR9Jd5AN8TGCxGkhRU=; b=pTCANGuNL/wuSiX6BBHNr34cIhBnXmhZZV6WhJ
	87EQY5dQOQrJTsjIdLUPXeYNod01Jvbf3K5P9IZK+6XMKZapuK2p3oKnBCvjWNjp
	dbbdA5UOUy2WSu1Mbb9tYCh6PJnIek0IRd6Khy6CZz/mTXvOGJQO7w15VxAoZS0M
	4+PBfkVoHjR7LxQBAdIEiNjFeJ/XnSyr8Oj5vSgWAqh/wG1gkqdIPWN+gI9lU7JT
	1z0dtuqR++UkGYugEM9rw5tY8Rgsim1dUBhyO7z6AHaW3vveZ4PnR33Woysm/8VK
	7xZG3ljk0wZaznZI3RGwA73gcioSZyd83mzQ0yf1Y/W5+fRg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b49v0rd7h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:24:28 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7a99a5f77e0so580532b3a.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 22:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766039067; x=1766643867; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PvF2kzY2RJHVpfE8ZdMyt/PKZpR9Jd5AN8TGCxGkhRU=;
        b=geIuyPzordWaC+DqSI+c/zadWnm+krwpfsyZgBzesa6zOvr8nOnWveZOCElHmbEJ5W
         uYFrOWe7i6WE1mMvMHmkb5xexDAsx9o5qc6OKIIxIWuTMzUMINR7x1EvFYiLC9SbWUmK
         Po4XvMC6toAXq1aQuruoU5d6R0rZiPZs1LUwpTvG7WPqyQsH81D3mKMN4U4/AGFs7sgv
         Kq2mpuW9naBox9t6/ssUJpT9oWb9lmfZxIVeLrGk1owKotmu60Sn8DcyKEH8daykHQJ6
         rmGdN8gawYO3yTuvBzibuWNorY4d8BXg6NWptQ/XvOZ8lozgtkRrQlHhfutpXe+cfPIq
         9UnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766039067; x=1766643867;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PvF2kzY2RJHVpfE8ZdMyt/PKZpR9Jd5AN8TGCxGkhRU=;
        b=WuDA6sRuYy418280+ul1Uh2fscPlR6XEvdieBtoPKs7R64h+j/SOn/9JzeH7dBuHO9
         E/jpa0VGQYOXZ47+NVNk4tt6RKuvxX7z6ahdHotOmC2UdBGFNpYJWIBy/32Leaix02U+
         WeG0VmDmCTmpD/bLRWbKkdhQqd/Q+0SYNEVI3w1E1iSNcHxA9hZlCWO3bcTBziAFAAJV
         9L+jzSwouk5VOIyWI2Dmoh9unDVqCh/bdmX7CQ9PBcs2UZBPmJo8Gwi0SGHMXi6QQ/cS
         el5du+Km1bsIKGUcYaxR2BVKZh2D/LEIkBH70LrqhUafexJOUZ1euK+Egc5HEcewknCI
         pNMA==
X-Forwarded-Encrypted: i=1; AJvYcCV9D/MnE4q/VR6k695TU8TiaIwE7x17SMR17E0/MZfca9+81LkI70mmy1fT3zpfaq02tJdvmMMktOCC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8Xv+AUW5fqV3JkJJkAaQQUku68jii+vXxFcRZV1fbtYvJg8Wm
	Q3orSJHqGxFFLWXUJ2D5Et3KEzUZ8eU4WucvpXEIdHFa0UcuBPUtiIwzAWiCg+UrYWl09/229Mv
	OOrqNloAFlXuv+7pFySNqHvQIwhmcD4p0RQYsJ5ve5pAPSTI1+XhnphfehLApCZZz
X-Gm-Gg: AY/fxX4RVgTCUQFCpEuNySTullKHihsyI28XNa1tK9vJtzeBzkzD3nDb9zex3GfEWkM
	rhaLFjk2IR2YH0cym0vNs7nvnBJtIJtJfWwOq8NqhjMd0oW8zVyY7EEMJvDPtrd3pB8zIQ4KrxO
	bVvkftaBCtSZUE1Up70QOTAmJ8xR9fq9ZOvLIIH8BudmMQw3LjCXc2CQWb9wi14k6+cZ4H+hEob
	SNu8uJw/W56K4ctS5EAmY67fY9VIFMDyTEZLZs81xsae/539jOKwzeL5ZZcLQjt1chKIq/2DGKL
	r2r9WBt992zfuHXG0QqYDMuNFO53glZ0yQzRQHvKDccHe1WLP+Ep3WWdAcR7D/D38RkPw0H0uqF
	F0L5Jmy3xwZBLw4wGE++3+GaLAznmzaAjNWlB0evn9ij2t7FQwA==
X-Received: by 2002:a05:6a00:4216:b0:7e8:43f5:bd27 with SMTP id d2e1a72fcca58-7f669c81ff2mr17211645b3a.60.1766039067204;
        Wed, 17 Dec 2025 22:24:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEjcqAYJhzbvHq9wbHPc4O96OAqL2IGnrb9qafv86gJxCGnrmm5D5C8yeH+AXHcK19aSoRdKw==
X-Received: by 2002:a05:6a00:4216:b0:7e8:43f5:bd27 with SMTP id d2e1a72fcca58-7f669c81ff2mr17211627b3a.60.1766039066756;
        Wed, 17 Dec 2025 22:24:26 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fe0eb24d7dsm1433161b3a.0.2025.12.17.22.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 22:24:26 -0800 (PST)
From: Venkata Gopi Nagaraju Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Subject: [PATCH v3 0/2] This series adds LT9211C bridge driver by extending
 LT9211.
Date: Thu, 18 Dec 2025 11:54:06 +0530
Message-Id: <20251218-add-lt9211c-bridge-v3-0-1ee0670a0db2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAaeQ2kC/32NSw6CMBRFt0Le2JK+FqI4ch+GQelHXgIUW2w0p
 Hu3sgAnNzk397NDtIFshGu1Q7CJIvmlgDxVoEe1PCwjUxgEFy3vkDNlDJu2TiBqNgQyJdEqgU4
 PqC9cQimuwTp6H6P3vvBIcfPhc3wk/Ll/5xIyZI0T8txwZ5HjzcdYP19q0n6e6yLQ55y/T83pE
 7sAAAA=
X-Change-ID: 20250910-add-lt9211c-bridge-5a21fcb1c803
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
        Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        Nilesh Laad <nilesh.laad@oss.qualcomm.com>,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766039060; l=1574;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=IjhpA0u5gPex9Wgy/9k20zgIgM0B6va1VAAo1IRxNlA=;
 b=5JOl+l0TsIbkP24+rWLxeB88zfYt5IzFvin3Wbgjhyn1Q7xFdrYyWYxNnFQ5/0ZLnL6hSLUYI
 XzMh839PREzBgESJ6TJzfGbaUWYJMJPcrU0kMQOkN5tmAv049X3Ftpn
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Proofpoint-ORIG-GUID: 1iM14ChLBP0u70JJkNt4L3SAH8dd65wG
X-Authority-Analysis: v=2.4 cv=Q/HfIo2a c=1 sm=1 tr=0 ts=69439e1c cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=l2Wm8-mKMQOuCn8Uv30A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 1iM14ChLBP0u70JJkNt4L3SAH8dd65wG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA1MCBTYWx0ZWRfX3Qg/5S9q5l4j
 sDb20fEWOD7Jqn5DYPaNfZDZiH/pQe5GzT3Cc0ck1uVwd8WdP388/5U97F27jZKcWKSNTHdOnn6
 b4Ush4CXcZWlIgNYRcFxbt+q5NaNT+n1pImjD0/2uxl+JfVEmWkCrmU2jbR0GirdKuVt27yzaXo
 WkAiBvC4Zkug3rq9CEbSwJgAGUKMnMTjV/RzoeXWNjQ7wcmnW/pYyNYsBWyYJQdwT294c0W30s5
 zWstUL3bHTMXfT9F+GLRDBaJt2T2o29cziwvv669MLy445nFI8KaEZtrGPX72WkisJQkZhIBadf
 aaxR+tW2nz/TsFethDvCgL8xiaM4z9Z0nUEetJYP0C0F8I+hB5ow7y/+JGSqpSMXksW3FsrIU5n
 SF9pAtq4VQ4oLxWFIkTjgQFJxG3qxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180050

LT9211c is a Single/Dual-Link DSI/LVDS or Single DPI input to
Single-link/Dual-Link DSI/LVDS or Single DPI output bridge chip.
This adds support for DSI to LVDS bridge configuration.By Extending the
existing lontium-lt9211 driver to support DSI-to-LVDS
bridge configuration.

Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
---
Changes in v3:
  - removed lontium-lt9211c as separate driver
  - Add support to lontium-lt9211c bridge driver by extending the existing lontium-lt9211.c
  - fixed kernel test robot reported build errors
  - Link to v2:https://lore.kernel.org/lkml/20251107-add-lt9211c-bridge-v2-0-b0616e23407c@oss.qualcomm.com/

Changes in v2:
  - Combined driver patch from https://lore.kernel.org/lkml/20250911-lt9211c-bridge-support-v1-1-c221202cbcd5@oss.qualcomm.com/ 
  - Added MODULE_AUTHOR
  - Uppercase to lowercase for hex values
  - Link to v1:https://lore.kernel.org/r/20250910-add-lt9211c-bridge-v1-1-4f23740fe101@oss.qualcomm.com

---
Yi Zhang (2):
      dt-bindings: bridge: lt9211c: Add bindings
      drm/bridge: add support for lontium lt9211c bridge

 .../bindings/display/bridge/lontium,lt9211c.yaml   | 113 +++
 drivers/gpu/drm/bridge/lontium-lt9211.c            | 829 +++++++++++++++++++--
 2 files changed, 881 insertions(+), 61 deletions(-)
---
base-commit: f50b969bafafb2810a07f376387350c4c0d72a21
change-id: 20250910-add-lt9211c-bridge-5a21fcb1c803

Best regards,
-- 
Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>


