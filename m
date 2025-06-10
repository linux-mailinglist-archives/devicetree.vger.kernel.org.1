Return-Path: <devicetree+bounces-184045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E543DAD2E02
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:35:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DEC757A6D20
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 06:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 506F02797B7;
	Tue, 10 Jun 2025 06:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TjW5bcYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD675279795
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749537283; cv=none; b=q+R0oGGflyYkJt3vj2s+lYUb4pElSta6hMhxQ1vzT6EtuvEUdLRghynS8/rePBAI+22lOe42Wn3m1Z/oefAKc7wxEwuBmoytTPJwOlUNrjzIqB5XPnQ8CG3ZG8bjAxlLQk/yMKUO+s1cgIZCDaZg1LiUE7FM3yusfgaNDVqzyFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749537283; c=relaxed/simple;
	bh=5yrNw8pQv3JUpVLncdRPNjVfR54w6B/BmPAplz5EDoM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sL6x6zrI9inXIwsv4EbuAIjkihzOpZFai+N1CqLG9zzdO2a9e0SRV8Eal5TzbGUPhcUaK06QVRbX/rQX2Z9yI9flOooEdEFHiZ4y6CluHMOArnonZx48Tlsr6+jbTOb7q1AuExIf2Vbowirho9UFtOybedIEp0oOt9bS6zzBu80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TjW5bcYU; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2352400344aso43911235ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 23:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749537281; x=1750142081; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6O0xC6SOcOSthm+nVuFP6/iA1o0YzWpNBPJwRk/wNao=;
        b=TjW5bcYU1n6JCT3ub8dInY7QBxKSERzNzduCNyqjFM2pRGOtl8Fj9WtHZRg2vz69nl
         iMNEsW6WwnykXmkPFuO4iOzoRPuPvJ+2aERxqIFfwZLmMsNaVmXF3R8229dJwH6p68zt
         +939RI6uChzG1n5q84MBbhyfPSycxq5aSnF/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749537281; x=1750142081;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6O0xC6SOcOSthm+nVuFP6/iA1o0YzWpNBPJwRk/wNao=;
        b=nYSWnh7kvzLFDAMuKyR4x+L7PsezN2bikJxyLxWZ4Q8pRBKtbTjsV6hekX0AYr9wBc
         E/5LmVVRzJ3Gy9Fp5XCMN9CPELMiOP6W9rkkmZlFUWiY6s2o3df57oCPRlKT5ha0JEMC
         yw1U2q8Qvp38sv9cuv9Sts1ZSb6L5Pq8+HNQAAFS6vP0ES1ezOjvE/R8YuQgeyVI7uIg
         4doq4rFrpBxloYRSygFj0417FBemoSt5p2qkmhdCOij47d4vmbftLzVPRHSFSnpg3G+L
         aOy1C7Vu4p84PQIazrv8lOwIZlQda0ZbZnvaMdhW1E8ojhUEm6Cnb92pZh2bgBuNEcO+
         RTTw==
X-Forwarded-Encrypted: i=1; AJvYcCXlro6X1bwBnCNg2qPoucyQI7VMAVk96XOmb5q8coQmXpOtdeL6DwoYGy1bFcUyj0K98g3ESfycFc06@vger.kernel.org
X-Gm-Message-State: AOJu0YxqIAs6yxmz2OM6nzCRxwnffJE4lnqcvU7jRXDOnOv/DKiwE4dQ
	KuxRSUAFSu+ms0hV8FlM7Nljbw20Dzk4ITkaaI4H1ziLYaGcUR136CyRcw6ECeCgIg==
X-Gm-Gg: ASbGncvHnORUgZo1Ugr5vOFzZCi9Gt9Rr9IKgRBa7RxYzeg8/pxvrQ+NM3xeGRmmRpp
	yY8HUVvLHqYG8XI4rmAxXbLg0yIGYIToQjXjfjqr77NafRSMBKmycaI2u3e+bgRfNHjSHkBDuEU
	+D/ceVHbqWXSvFD25RmoZDIxzREaWbQGOg8x8FaG1q5bsiU/jnyFfUV2L6iK0QnEZhlAcgZbVJq
	2U7LQsRr1ydZZRWyAXDaS1w/2HeYDL1epp5X6RvCRi2WN7bwLaOggma1YGGfUPKnjz8Phop6ywd
	g7//VdgZ8u/my29ihH4t+6JBRzT5yCFnFl4h7PhptS3E6YIwEYyGMjrS87t5fJbk4F4atFlZCFl
	kBW9J
X-Google-Smtp-Source: AGHT+IFMVjJL9gd/t2t1Cdy7S0Az0MbbHnKQkvJXrj2EcXFz4rjITbDsj/BO0L7kopXXEwjxKA52Ew==
X-Received: by 2002:a17:903:244e:b0:235:f3e6:4680 with SMTP id d9443c01a7336-23601cfddb7mr217198085ad.21.1749537281092;
        Mon, 09 Jun 2025 23:34:41 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2826:ada4:efac:14e8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092ee2sm64596765ad.82.2025.06.09.23.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 23:34:40 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Srinivas Kandagatla <srini@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Lala Lin <lala.lin@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: mediatek: Enable efuse GPU speed bin post-processing
Date: Tue, 10 Jun 2025 14:34:28 +0800
Message-ID: <20250610063431.2955757-1-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc0.604.gd4ff7b7c86-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v2 of the MT8188 efuse GPU speed bin post-processing enablement
patches. In v1 [1] the change was made to the driver. Angelo, the platform
maintainer believes the change should be made to the DT binding instead
[2]. v2 adopts Angelo's argument.

Patch 1 updates the efuse DT binding so that MT8186 is a base compatible
with no fallback, and MT8188 falls back to MT8186.

Patch 2 updates the MT8188 DT to follow the new binding.

If possible I would like to see both patches merged through the soc
tree once the DT binding maintainers give an ack. This avoids prolonged
waiting for the binding changes to land and uncertainty about whether
things have fully landed or not.


Thanks
ChenYu

[1] https://lore.kernel.org/all/20241223100648.2166754-1-wenst@chromium.org/
[2] https://lore.kernel.org/all/11028242-afe4-474a-9d76-cd1bd9208987@collabora.com/

Chen-Yu Tsai (2):
  dt-bindings: nvmem: mediatek: efuse: split MT8186/MT8188 from base
    version
  arm64: dts: mediatek: mt8188: Change efuse fallback compatible to
    mt8186

 .../bindings/nvmem/mediatek,efuse.yaml          | 17 +++++++++++++++--
 arch/arm64/boot/dts/mediatek/mt8188.dtsi        |  2 +-
 2 files changed, 16 insertions(+), 3 deletions(-)

-- 
2.50.0.rc0.604.gd4ff7b7c86-goog


