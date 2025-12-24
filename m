Return-Path: <devicetree+bounces-249398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10823CDB907
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 08:11:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88273300EE6E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1436130B50C;
	Wed, 24 Dec 2025 07:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YiUXOTdd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fE5Wkiom"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95636283FF5
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766560315; cv=none; b=e0+2QFdJY7d2sMBxbPbEWFSqTE07txwdDv7Rm0TvjCK25d8eQxX39jvK4bvHIvneJ3lPKrAxivq8c2ReOiSlfsenaj8KWnxoN2rZJMRgtn9WY99dvOqbRqJJ+JWXY0JDv+jjaSPYWb2VpLG2P9YXYAJWl4v3Ncm2IwxeIheESRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766560315; c=relaxed/simple;
	bh=NPcD2nTh9N+swnALwEGpTtFthlo75VoFTv+NyasMxE8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GesTSeoZMH/fGhRuPoMUQOc7kRjVA28zR/3bEth+YebvB4CtU7wPF/aNPpAnHEHrfj5+8WbuSnBF+94tmiXTYmDK6PSgSKhwPs/uUbLdsUd60ymlS53ZnJ6gcJ4gZZJGMyvake4JMJ9hGvo3WfqutolwJHG7CxTSDQAe87kiDIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YiUXOTdd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fE5Wkiom; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO434XC4134145
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:11:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=hW17W4TydeKCp5cnED0aM2
	NiaedMLHDL4MI/OU9rEeQ=; b=YiUXOTddnD8AXgf6jDU9aaLRBpN04DZJWHlUwA
	YHLz2V7Pw6VbqCEBtscx9EWgUx2c95IY0qP7P+PHDTWcnG2mhJvaqM4RqjWAHU+a
	Ez2c9IWf3QwVtTDlePVPygxC/Kqz5Bi9/3Yry+7xg8x70eiohiG8J6gju86wpwJy
	9UWIhgpaHbqfqR7sdAG2HUmqQS7/+FM6V2MF22YBg1Mt3B0HiIbfl4b0/8axwUBr
	FSrnlthS1VkrYJN60aB4EFYmWbwlw8gc4NvoLML7ItwvoTPk1CMUILD7mULnq/wH
	p96+XasGDy0fFWr4aOKdYwU8v68TlRyqeSa2lTe/jja4HgwA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46t8jq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:11:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34aa6655510so7484849a91.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 23:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766560312; x=1767165112; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hW17W4TydeKCp5cnED0aM2NiaedMLHDL4MI/OU9rEeQ=;
        b=fE5WkiomwHbkh5gVCbThtdTCMk6jiIj+idb2VpxcnktPk1YWF7udHK8gm4m5FlaJQo
         gwRwL3m2XSqZGm8ZyHKFhJEuefm7k6ZEqrXYJ5K0Qhs53Ms5Zudgwh8oANo85Y/8kuZF
         +M/ZJG6WzYFwhkX2Oxe+0bYGM7TOoH/ggKO5j0lx0tex38GNZkZtG9SEmuUSCaBiqK+M
         8NnG3nN5tzNax77E4gDDux4hGqbGdVCO/467YB2ZyOcA5Iyd0BDcZSWmaIcOaBcmSVqj
         hfNBD8ywQ9iqO96IRNb99VvlJQI4hVc3illT/HHkSvh/9S5KZzyro4iD2VkV7sgCP1Zu
         lmkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766560312; x=1767165112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hW17W4TydeKCp5cnED0aM2NiaedMLHDL4MI/OU9rEeQ=;
        b=wmDzFqMbjvcWUdoie7IdQ8kDiTIw7PBHF2YcSzsOBnwIUO+PTiQEUZKY0wVGvr7zIX
         is45SZTF9s+QZbSr5n8onOYTB8AWqHiscDMtZ7r031rphdTtLMkwKH/BsB/GxnJclX2e
         Axty6raN/7VYnCrpMBIpEQwf5jH9wwHIKiPnv5zUJ07kKwA3bhFR7v/EsqncWY/8BKWR
         h0tcu2QiAoMBAQe8rObAgwiPBI+aM5ThNlIX1kq6QkH7Y06raFYTtROAjR/SbpAt2Ygv
         HGefej7wpQh3MUloU5ZMY+z32QTkSt6AYl66vDRkVZt5Jj805NkefoBq/8XhY7XVP+77
         w8Cw==
X-Forwarded-Encrypted: i=1; AJvYcCUtgAviaTdDRCEqEhSe2IbtPwTZSx3V7SrkBbNDjlNox6LVKBImvzfe32+xSb0mTgRHXiXQAVMtVpck@vger.kernel.org
X-Gm-Message-State: AOJu0YxRREsaaJc7HgLAFAjxRkvQel6TSQ8IYn+PQt802ZFwM6gQoJAy
	LtBZd0xzFDJwFtRtQMlqWaZH6IMxVKkSJgce077Gaf9rZHEhS52AAgYJJJ5M2xFStkfX+hmnaGf
	QreaktCooKZj4ZXBZeR2biZlnu19woSxE4PvVHPqBG+omNP2fGg97e7Vnq8BUYqmI
X-Gm-Gg: AY/fxX4Ab15FBDZa8fSxMBtTCOnyL4kMtyvypzUsJNepsLeW/GMYh9ugc6tGAxop4Nj
	QOLT6MEA080kHj7vRv9e8uzM46v9UbnxYYGFt2CsPaFOjWEleEE/ijsUKvKY8vunTyM/H82XZcF
	5DC01Cm+KM1OsNjhBgDwm89g1aOttuBZF+bF590iqTtJI2od9jEFo9XtrA4Ukk25T5/rTICZ/VT
	Z8zCNinGLVQ18rAlxkyuvjqecZ0D8kQabYjrgC1k5+hv7NeBbzKN2Fi3aA5BL9RFLU8b6pXqdhA
	f2Hf5c20ItnGBgc1sCARG8eXyUCwBRHlb0PA3tT3Lu50DDghQ8rRHV+SNuhiHnpeeNhHAUqfeza
	Uo1th+RYWCYgKDeDsQzBeslkCB+qQAr0wQKEzBys9tqBXWA0cpw==
X-Received: by 2002:a17:90b:548c:b0:349:3fe6:ab8b with SMTP id 98e67ed59e1d1-34e921ec30bmr12510649a91.36.1766560312158;
        Tue, 23 Dec 2025 23:11:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFXq62cC5knL5R4Af192lUYOXoYv3JhMou+LZucwkqcQ4fKAqNa5D+5SIS1pUGOYZVm8yV1eg==
X-Received: by 2002:a17:90b:548c:b0:349:3fe6:ab8b with SMTP id 98e67ed59e1d1-34e921ec30bmr12510630a91.36.1766560311642;
        Tue, 23 Dec 2025 23:11:51 -0800 (PST)
Received: from hu-botlagun-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e769c347asm8977146a91.0.2025.12.23.23.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 23:11:51 -0800 (PST)
From: Venkata Gopi Nagaraju Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Subject: [PATCH v4 0/2] This series adds LT9211C bridge driver by extending
 LT9211.
Date: Wed, 24 Dec 2025 12:41:39 +0530
Message-Id: <20251224-add-lt9211c-bridge-v4-0-406e73ec28c5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACuSS2kC/33NwQ6CMAwG4FchO1vSbiDoyfcwHsY2ZAkw3XDRE
 N7dwcET8dLkb/5+nVkw3prAztnMvIk2WDemUBwypjo53g1YnTLjyEs8EYLUGvrpxIkUNN7q1Cg
 lp1Y1pGoULB0+vGnte0Ovt5Q7GybnP9uPSOv2LxcJCIqWi6rA1hDSxYWQP1+yV24Y8jTYqkbxk
 4hTvSsJQCBj8FihRN3wHWlZli+hSyIOBQEAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766560305; l=1786;
 i=venkata.botlagunta@oss.qualcomm.com; s=20251110; h=from:subject:message-id;
 bh=NPcD2nTh9N+swnALwEGpTtFthlo75VoFTv+NyasMxE8=;
 b=2qdLgalPJe0FaTHARP0TOXCJdgt+RQNPEj0DEXemzwgcFO2qRnPl+VfJdVxUlhdauWMPEu9f+
 s+TDez/QxS3BZE/6YvsYhtjf5ZHb96BnKHDi2C4EYGraAeQpcntChP9
X-Developer-Key: i=venkata.botlagunta@oss.qualcomm.com; a=ed25519;
 pk=/SnYBwlkTzDCLnHFgEY0qFwPgKIV+aQWRbc3naiLzrk=
X-Proofpoint-ORIG-GUID: KhuCcFfd65599JR3AiQ0uvJ6Z3rYdkbI
X-Proofpoint-GUID: KhuCcFfd65599JR3AiQ0uvJ6Z3rYdkbI
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694b9238 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=C95xmP7O1PCm17Ein70A:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA2MCBTYWx0ZWRfX6kuDaXH1aMk6
 mQ7VC6tirSQUix6XX0FqPpXm12ZTe/tNt9v+FIUl78vbT6V8VOi3UgDPeif2cjGelMD8T2DQfBt
 3EfePRrb2LRhMUSDb3YEbsBnUr7sxKr16jSvcq3mRuzfhy38vPBWfHgpvKANPf/nbE3D93tzqEl
 1nIGQtnKX9HvsZE7JDutsQLpv1r9I4HLI6nvLU6Z2wWo+86nOePTi+hRayiPn++glrrNyTJvK/a
 Oxhdf1n0gbO7GKzkFarfKxvP3pMtNqu01J54Vd0c/HorHTw2b2YGZjEgT+ePNpZy9VwiEmstpj7
 xI7CVUPALc+Bob7CfE+LklDJfzgAKd2Jznb+2uoph9dAdHDqzRnKIqYXNae9+VV57urk/qe8hpr
 JE50qgn4RmaISUnAOR0qJNcWK7bI/+i/x0rf9INLQ95AOCliK6bRA2uC3ZpoADmVq4HDzCxXVFN
 ZDBJDaxUQU2Z4JGF8rw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240060

LT9211c is a Single/Dual-Link DSI/LVDS or Single DPI input to
Single-link/Dual-Link DSI/LVDS or Single DPI output bridge chip.
This adds support for DSI to LVDS bridge configuration.By Extending the
existing lontium-lt9211 driver to support DSI-to-LVDS
bridge configuration.

Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
---
Changes in v4:
  - Removed lontium-lt9211c.yaml.
  - Extended lontium-lt9211.yaml to support LT9211C.
  - Link to v3: https://lore.kernel.org/r/20251218-add-lt9211c-bridge-v3-0-1ee0670a0db2@oss.qualcomm.com

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

 .../bindings/display/bridge/lontium,lt9211.yaml    |  42 +-
 drivers/gpu/drm/bridge/lontium-lt9211.c            | 829 +++++++++++++++++++--
 2 files changed, 808 insertions(+), 63 deletions(-)
---
base-commit: f50b969bafafb2810a07f376387350c4c0d72a21
change-id: 20250910-add-lt9211c-bridge-5a21fcb1c803

Best regards,
-- 
Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>


