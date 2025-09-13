Return-Path: <devicetree+bounces-216685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09125B55AA2
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 02:22:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AD001CC4683
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 00:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593E32CCDB;
	Sat, 13 Sep 2025 00:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jjMjPVac"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DDB1BC58
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 00:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757722922; cv=none; b=jYmHwXHi7LMO5gfkU6n3TLl1d4mSiLJDKZWw53CJytrKXsh78NOsjR/2YuePsbq5EGdR3PqwO9fVfjiTI9n1Q90hXCbkXTfLoiKb4uLZo4TQx0wZI9KypuV/xZ0wa292GoGJ9twGzFVkFYveO1rJRl/sY4phVJPmL0V/MifCUlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757722922; c=relaxed/simple;
	bh=dT7fUD4yDpJecyQix7xo4zndYT0BdYTpZJTgjD9NMtU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FkUpE+eohkBo7rwoOAUxE3ajHsy5Rxgj/pX87s7KuVnPEtgNjWvVGia23x2eTfQcQBJL2cMsVzAJ/6eJA5iQX9O2YQM85DXJXASru3COMz9kjJ5FSdi1/hLUQE0fvzNWwo2VdvW5IgRHmwuNgaPjxVkmsyolthMy7GMXkiO//Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jjMjPVac; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2570bf6058aso32870135ad.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 17:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757722920; x=1758327720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1c3CBG/NboBfPVJVTzHzXXMWP+/wIvK4O9TlNT+vRDg=;
        b=jjMjPVacX1zy5EUyMfqHGH/qciQLXqXoJldm/elvuFs5Z+qnBfstrBGboK4Nii79cR
         xEcd3LUEPTWm2ZaVRkYxmsFmQXXv1Z1KIPa9b24muVIkKkzIaRCm1r9Ei1eg6JgtyCFj
         itZt/8uy0hjLAGupiLRin/HO685F4bwHs3cONaQO7w8/waniWlkT2BdEgbhtJsfCYruH
         Eei/ce4WMvtUqvg45DGTHQ0rCEk2w8XUK57sIMcC1iNW474l0r7WxpCpNXykfi0Pk5Yi
         j2ZsCLhtSsi1jEnx2rY1jUb639KGs88BeKFxKka0dfI4s5vl/IWF3WHdvRKcXkTjOB8M
         KlhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757722920; x=1758327720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1c3CBG/NboBfPVJVTzHzXXMWP+/wIvK4O9TlNT+vRDg=;
        b=q5Tb4B1KoUSTNaYVUh65SR7tl7A/9WUHS/5/xnfIR+wU47TysuVY5zsBirqUS2UrGy
         at/G4EA39OmVvmAHX+scyPnE4Rwg4uOpi81QwIGoqMyjuABaFwVxJLJ7dR/rBmhBXZJ9
         UEf+Vzm1srOF7p9WwMmCgWwFVhLNT7k6VWmI2aWHpVxVmPCzJcV80djXqwZfXYMMJirw
         lOVumvFY5AygMOLdMuyuqus4YplVVXv/uRmweKZ7LzAASkV+AbOaYQxMNIFPtT2l1qhk
         0NwdFYtbYkDPCdYvAn7YRlolevE9ezrkIDR5VXlYVuFhmvWeqn3XmwNQT8WcIqdbvpmi
         0nPg==
X-Forwarded-Encrypted: i=1; AJvYcCWW1KOvjLkoNQWihjUT+8glm6EJ7uQBEtV/6pSwgpfaH/NUg2VYSebU4QKT6GR+VfJ/4WJIMAFLGb6R@vger.kernel.org
X-Gm-Message-State: AOJu0YxLWN/2xGBRkyPE8HrL1QjqhI61utcqKHKx7HbWA3mI+xkuh2+8
	zU7cVO2R3uteSNIkNWmEMqrU6SBCrR/gJGKOb0wyxAlNsNmNAEBmDGLg
X-Gm-Gg: ASbGncutcn133STxws7XK2n823nLniq/3/sBknukexxkCzQ4bQ2vYey0dwkEXwI7cmv
	5CR77CY+aripqVfz6dRnQZqSna1stf8YWB+iDNT2WMDjv9FOeTxnZWNmEIfkSuMHqYqfGars2WA
	PYiCqRHH/9PrU+beYao6Ip6W0XoSzbrkfHO1IDTrGD3vameYFjaoe2ibpZxC107V++IvptoFuw3
	pmTWWByJq37+zPPsqiXlR1cF3A/OezOzqnb71+EehJBycp28ES3XN0+vZ32/rj4p86jmAHELKcA
	gsLQSXOhBuAG+V0+/IyP8U1XcPGRuL1Vqtrn+KwJLWrIT2FOniYnP+Ate2ulkTg17RLSVbnmPgq
	ZQCVUrUNI2NcdpawJndN1qOjKaiEjjMGQcOcTVLYvBQzY6kSGCzj2qyj0Rba63n9XZHJlspJJGz
	eh9ZFcLRfefg==
X-Google-Smtp-Source: AGHT+IF+nK5Fq9ofZfzYEh11WCYZrbZLJT0mADN5dCYbpAjIJMEjmIB/u1gmzzXb0gcqRVsJ1Y5rMg==
X-Received: by 2002:a17:902:f78f:b0:248:79d4:93a9 with SMTP id d9443c01a7336-25d2713422dmr52089335ad.55.1757722920172;
        Fri, 12 Sep 2025 17:22:00 -0700 (PDT)
Received: from localhost (185.3.125.34.bc.googleusercontent.com. [34.125.3.185])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-25c37294b4fsm59866135ad.34.2025.09.12.17.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 17:21:59 -0700 (PDT)
From: Chia-I Wu <olvaffe@gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
	Steven Price <steven.price@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: gpu: mali-valhall-csf: add MediaTek MT8196 compatible
Date: Fri, 12 Sep 2025 17:21:54 -0700
Message-ID: <20250913002155.1163908-2-olvaffe@gmail.com>
X-Mailer: git-send-email 2.51.0.384.g4c02a37b29-goog
In-Reply-To: <20250913002155.1163908-1-olvaffe@gmail.com>
References: <20250913002155.1163908-1-olvaffe@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MediaTek MT8196 has Mali-G925-Immortalis GPU. panthor drm driver gained
support for it recently.

Signed-off-by: Chia-I Wu <olvaffe@gmail.com>

---
v2: update commit message
---
 Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
index a5b4e00217587..7ad5a3ffc5f5c 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - mediatek,mt8196-mali
               - rockchip,rk3588-mali
           - const: arm,mali-valhall-csf   # Mali Valhall GPU model/revision is fully discoverable
 
-- 
2.51.0.384.g4c02a37b29-goog


