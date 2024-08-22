Return-Path: <devicetree+bounces-95714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF60995ADE5
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 08:47:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B7CE28157C
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 06:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D2A481727;
	Thu, 22 Aug 2024 06:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jTwL27bv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122718BF3
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 06:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724309221; cv=none; b=urCeiY/2KC4zolunirgtzsJ3KmfbHAIZM0r9W68U4oiz9JIwpj0lFVdrfHJzv8slg5XpZctab9IcbqY1NJsc4f9nygu81ZiOXgUE7eK2uFkRBF5L7FumEip1KHxbkoAJHt4MghXiKX+qlMYsqCk6kUgxJcxbV760pGLBcyTdAUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724309221; c=relaxed/simple;
	bh=cHOgrWJ+n48M9IJC/fbxbOS6OOu1RKAgV8a9R2Ksfe0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QjbUY5g1ZYva0hUfUlleov+5pihUdaukFw13iYhiJgsGJSyeecRuHgb9TnFtIvcXM1FMTM4ix0HumVKvKj/THZWCQ4yCMOxlh1yjQsFSKqdUvO45yqLiqAFf0uJpSXVPoVR9ccxiKbSafIftXEchNVgGuqLl4Ltu7Sx4CZNUzMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jTwL27bv; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-202146e9538so4146595ad.3
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 23:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724309219; x=1724914019; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8PKT7sjGktvi1hrrMiQcV4qsyDxjdMEYuTJhST1ej0Q=;
        b=jTwL27bvDN1aRneU+Jmm0uvHyQmvJf5/zFhSXoncI+YMJtPfYu4RY5xmLE+3OrDw00
         RJ1x6pRDGmeuQIXmzUlL0F7H2mCULi7GGCUuH4u2uuEK5PLROMMGd9E5gtwBb+jUCRYW
         MIIssS+89drP5NgY1rcH4rWx++gXN6H+L0BlA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724309219; x=1724914019;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8PKT7sjGktvi1hrrMiQcV4qsyDxjdMEYuTJhST1ej0Q=;
        b=XTE3a0KsF+oY5VHfK7MFqY5PXoL2Ii8YHMCrl+bTdIg1HAGLaKEcfIx+XPSnaXATcM
         UN2UlxdIgfhS5Y4lJFjfAY5Iem9nYT6DW23D4MTBK++3W4JZlSJ2A/ik6eq/CpC67buF
         kEBZ8vUcziCF2fNGrZ5wYmCIJPJzU8JmAiNwoV2hmzcBXDPmRCLoJtvxyWIvE0SQLtD7
         ocIP8pOsmjsPGwLYD51AO+Ct1oeFjIIrLIke+u4toFqfAw4ihG4IB5ELufgP5QnCJzRp
         zvcaYYdOX+/XS/ZQkfh8b0+6IsWfxVkF8w1OOGGji7TyTNyQjzg7hNO5zQOQMuGb31lV
         ircg==
X-Forwarded-Encrypted: i=1; AJvYcCVuEhyag2EcsjC0niSx3qwP7BKSc+FdCDwsNTtJzAacxAq04xwI9CLWNmSR3EHGBnTTEf5h2+xkvcWu@vger.kernel.org
X-Gm-Message-State: AOJu0YxFtmpB5tCMf+mx09kyZxvcqMkCIDjpz4a7SZ3VRrnTx9N2CokU
	YET5WtrGYQYryJvrnBSbSLMTzAL/WkUlRDir8RwJPTXKt6d7C8U4EHRg0N9FFFXdeTsSrb+jzQY
	=
X-Google-Smtp-Source: AGHT+IF05n9K3CL+M63P08MGc6+22/ERQOuhVD94PT0FR2/G0i0HFMNVwflN0PwwvODsfTnybf75Vw==
X-Received: by 2002:a17:902:c94e:b0:202:1547:66ad with SMTP id d9443c01a7336-20388e34ce7mr10308775ad.65.1724309219112;
        Wed, 21 Aug 2024 23:46:59 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-2038558137csm6046845ad.99.2024.08.21.23.46.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 23:46:58 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH v3 0/3] Devicetree updates for MT8186
Date: Thu, 22 Aug 2024 06:46:47 +0000
Message-ID: <20240822064650.1473930-1-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Changes in v3:
 - Update some formatting errors in the bindings patch.

Changes in v2:
 - Update the binding to include power domain in only some
   specific variants.

This series updates the DPI node to add power domain and
adds the Mediatek SVS node as well to MT8186.

Thanks,
Rohit.

Rohit Agarwal (3):
  dt-bindings: display: mediatek: dpi: Add power domains
  arm64: dts: mediatek: mt8186: Add power domain for DPI
  arm64: dts: mediatek: mt8186: Add svs node

 .../display/mediatek/mediatek,dpi.yaml        | 17 +++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8186.dtsi      | 21 +++++++++++++++++++
 2 files changed, 38 insertions(+)

-- 
2.46.0.295.g3b9ea8a38a-goog


