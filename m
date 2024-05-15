Return-Path: <devicetree+bounces-67175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8869A8C6DC0
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABA451C21FC8
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65EB115B159;
	Wed, 15 May 2024 21:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e7Y4LMwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A854F1591EC
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715808182; cv=none; b=u3JNB/IfRz+UWWP+fSHN0HeXKG5peelgCAo/UFErRPgLCcTRE84XqO16PS+PqBWR/dSLHfJOK85lkXU476ybfZw6zO8xWYgRP3J1vBIb8TdtsS2IUWHYizFApzrwKX/AQk18mS/gquHDcdAbZfAlcSry2SY5gt/XS5FldIdJI9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715808182; c=relaxed/simple;
	bh=fLdltj37EV2+Ymei8JpEyo6L510ax3HLU5kTDkMNW78=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=I2n7auSmXloHtxpdbpvMINpdGAH8FEdnzKB1PWaCx1btgIMTngnf6tWKWmYyh5QPhX2VTJhEp3WChqDm2iATEDbSYW8kfDjh1zGdBYvkJcMMP7bJoR18iIxt7+Ta0bpVP6+GtzYHpVYxDAuVzftW3s+DE2EkHtjd5r9WQyw/vrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e7Y4LMwP; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41fd5dc0439so50489355e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715808179; x=1716412979; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=02OMX2IuQAjEPGw2rAjJ5BimZOrw1fH/m9JV58iRemM=;
        b=e7Y4LMwP8feqWZA68QMBt/WxU+qpFWUtaoZVkHTEF1XXMrexJc4qQth+A4MwP0ZMUa
         PHrljM2DKxWo7Xwl0Bf/o1JT9GaOP1f8aay2SlkGVrjehXc4VJ6mmNWs2PhwMciZ3DhB
         bDhwAI6qzHsKYI/Cz02P6t93wP7Ni63BHVLmVzoUuOVmvzKSsy4L7Hrl+bbhDGhhi1dI
         JBy/Nw1EzFujCixzVvwmOE0vWoV7g4TYXPCHriphukt4mtR8zrSAEw1ZSQYrhXzgU0Gj
         i5/jmevLtE/xsRm/bgUZNVr077I/3Vzr3xmNFPu/IJ6Yqvgd8+OS+9PzVZVI1A6w/WZ2
         frqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715808179; x=1716412979;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=02OMX2IuQAjEPGw2rAjJ5BimZOrw1fH/m9JV58iRemM=;
        b=XUSSHYW7FQ/R/xH5lWYLdwhaX+99avZ4WwhsQcSv6GL4nGYStsLqbF0l5RE1g9uVlq
         T0YDuUnxZuVimA3UJrxbxitTRVOcCdgDGRMhv58WSWdN+7VveVYXwkQJ2JOE39OGPfo9
         6mZU6Zfv9zSsCXvqfXRAFc9iEGzQ8ZaMMdBMgqUHPo04//Vy5ZhSaNbmTq4wK7n8ou5H
         yqXE1pOT2mT+zmYXYxn+FiNuc1SgiYd/3xRAORpVScJ57wr1g4kK3B7PE/MbSAKv31Dk
         BhfFzY3DP4K9/urEWvcwkW4vQJMQeXzXgbzbrTc37ZXzoXSKStHeaCLSxdaZHstF5848
         X1XA==
X-Forwarded-Encrypted: i=1; AJvYcCWjXc1yBS234DWKnhCeNoElEsNg7kW6zaY/5MBGUiWhgHdBk97te6ySMrMwRXBkNCymOm5Cg00UeI94ibMU2pJ0BxR6/Z4XPhzBqg==
X-Gm-Message-State: AOJu0Yz2q4XpkWIXF/kx6r8yhkaXkEk3SmZhUbZlolYWwzkIJbxrzabT
	CJOTNpDTY0OwsA01VMZ0dAKEw3Iq84GitPg67OcFCR9XUs3Yi6gDSr90YpkWkQQ=
X-Google-Smtp-Source: AGHT+IGeQbrRopmwSba59K7PV2A3scK722IGRG+7XPMRIEHVc5y/YoDGZ+vh8GIBi063AAn6tL4LqQ==
X-Received: by 2002:adf:fb4f:0:b0:34e:e5c6:521d with SMTP id ffacd0b85a97d-3504a73da61mr10904352f8f.38.1715808178716;
        Wed, 15 May 2024 14:22:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502bbbbde1sm17374879f8f.97.2024.05.15.14.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 14:22:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Aradhya Bhatia <a-bhatia1@ti.com>
Cc: DRI Development List <dri-devel@lists.freedesktop.org>, 
 Devicetree List <devicetree@vger.kernel.org>, 
 Linux Kernel List <linux-kernel@vger.kernel.org>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Praneeth Bajjuri <praneeth@ti.com>, Udit Kumar <u-kumar1@ti.com>, 
 Devarsh Thakkar <devarsht@ti.com>, Jai Luthra <j-luthra@ti.com>
In-Reply-To: <20240515095133.745492-1-a-bhatia1@ti.com>
References: <20240515095133.745492-1-a-bhatia1@ti.com>
Subject: Re: [PATCH v3 0/6] drm/panel: simple: Add Panels and Panel Vendors
Message-Id: <171580817744.3240821.968286353425260350.b4-ty@linaro.org>
Date: Wed, 15 May 2024 23:22:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Wed, 15 May 2024 15:21:27 +0530, Aradhya Bhatia wrote:
> Picking up this long-standing series which added support for Microtips'
> and LincolnTech's dual-lvds panels.
> 
> Microtips Technology Solutions USA, and Lincoln Technology Solutions are
> 2 display panel vendors, and the patches 1/6 and 2/6 add their vendor
> prefixes.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/6] dt-bindings: vendor-prefixes: Add microtips
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/71465a86296ab963bc120b5e32b9a19f69090e6f
[2/6] dt-bindings: vendor-prefixes: Add lincolntech
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/37dbca37f3b53cb698798462f197db2637f6ab34
[3/6] dt-bindings: display: simple: Add Microtips & Lincolntech Dual-LVDS Panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/43f092d2540f7869ab5dc5a53ae1f76d44fc6293
[4/6] drm/panel: simple: Add Lincoln Tech Sol LCD185-101CT panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ac9b8b7fee6578015483c5f130bad78d368c00cd
[5/6] drm/panel: simple: Add Microtips Technology 13-101HIEBCAF0-C panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/f558d676cfbc388f2c3175c3c1f99c57902ea3c1
[6/6] drm/panel: simple: Add Microtips Technology MF-103HIEB0GA0 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/2c3d1bd284c5141a85188f48e7f42112e81ffcd8

-- 
Neil


