Return-Path: <devicetree+bounces-187767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE25CAE14B0
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 09:19:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87993168AB5
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 07:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B0B220699;
	Fri, 20 Jun 2025 07:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YNhfVabp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A64730E85C
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 07:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750403945; cv=none; b=K00+5KnaeHlARwElpLfsO0/bCEfUWlbwHS8EAlY+iZRI3AqSw8Xr7/kzmY9UFVCzu7ySLd4OXTzIE7UdxVCzPhCEHkre6GEvSwzk9qtvMVpBlzFt8GfIwiMAva1k6SNG0YvuOZg9o9D8auNFHL51UsFPcTeICGct2Ckr6xGKkc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750403945; c=relaxed/simple;
	bh=ekOrkOK7PSrzNZ5vk769vhPx84bvlTJNt4SS6QeJco4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mMnk0CMv4bzyGPAyptiYmlVPJi/c/VM1rmsBAZ8brJFH4UHBKy1wxeJO2rqUAk9FBZ3tSESLey6VVSsVRY7FxbFBIEXYzjEOJgfa3GtGsNaxzCjEfsUNzsGXTA6jOVIxJBjR6nTuamnuDXdJ4FZWRgO5Ph+Iyl5/p4JaBHMZ880=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YNhfVabp; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2366e5e4dbaso11830515ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 00:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750403943; x=1751008743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qLtejJ//A/QSzUstIr3zh1lEvcjwzNqocz7zn4vFJ00=;
        b=YNhfVabpXpeJUH2+AxDMFvhEOIOZwvRcdU4nkZ8cFknFhbQLhR8ULFI2Wm9khNdtqP
         0wKmLNb+JZRmOReYr3WtIQAbisQRXxXpPicf35RPNesiysACdwuEUBqF70r5+qdSG554
         dkP87etPH9jQ1zY8YAUzIpQOwm6lMwNTYz00rxGn2jFRqW0ttm+pHnPXnUFrxlrYakNO
         VJrktgIs4mteg0mo4jvuH+G6mIkxjdheKoILmMI/ffkFxLi2qJUePWwjOZTcNABPDWbH
         61sz01ufjeJcZXHBqwM8GPywRScdRzaiUEfiM43g15ID1148p9VlNmsOwbgXbnc+/lLN
         wpoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750403943; x=1751008743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qLtejJ//A/QSzUstIr3zh1lEvcjwzNqocz7zn4vFJ00=;
        b=ZA0cRXMht0FX2J8Y1vhfKMXZYCZH0R87bUYGlwxYzC9XL+p3t3lzPLmh1XU6020GyS
         QFN2bYkZ4QdeTJeP7yswp8kRWGVr/RCCtsF4bcSVFj3Kp0uxiOVjKeo5hwKB7A/FJOHn
         kTvnJxwkFlJL07N8T7ij8Al4w37JE1ibVg3KA2TzeW1b/SeKYh8SAtGydhQMO6PdVCN7
         nCAaCWs6cEBYmp9De4tVOg/IYbRAthFeT2eKJj96jVFSO5kw6DomPuDiXVwWJnVlkIuP
         bVWrzLPDK3PoTx4WxhugDFaXbXNjESlRa96Rf62VOifCXKGqnB/c5xAH6w3O5pCT6dUj
         RmsA==
X-Forwarded-Encrypted: i=1; AJvYcCUllV4wOG2Epvczqs1E8N8tfAnUBZdMTHKHbqlfdrUnOGQiX0KvcphdrZVGfrP7Fhsi4Iy2J26hxKrF@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb0BlOgIwqlq2kDwpJJdrp03P3l+ihb9xJLF+GlyTVJueIcGpZ
	25yirzCr75nXX08leHRY5DqClwuunkDkN8Uj0iA+U5a04+g0Ydv8cha4
X-Gm-Gg: ASbGnctyH3sBWL8EsJF27i2vx6w87qAGKPO8O6LzqnK9kMDL5lNHwzCt9w3ttXbCjI2
	arkCSwrOP49NDpTxx1vm2yTfoumsLWtMvQGLNfUU+fSiToLDVzsUeO/BSLKkFngwRYn5m3xa4C7
	cuK+C1JJz4qG/Lq5VrKG9EtW4v346ZJdzM3Evg3h0HXIZhKYM9+0XqGbkgduERofnwF04Db79Ak
	X4Uy5GqEbdjTGNEx4jGmjE6gD7r3rzPzPIE1JhdkCBnBYcIikW/kEK5F9VMXCzA5CNbgYDqk1P9
	/x9Er8qZ2e17Y6Alrk3kR7xWSaz1MNoAkb/DsAO7vHmg+5Fs+oQmPPNCHDDGmMtctD7QlzYiDEF
	fttmiKh/wkLt4ddQ8NkjXD83NVGqAzQ0+WZlZb1c=
X-Google-Smtp-Source: AGHT+IGW5bBCG1YthBjZ+43KRwT91n6Ml1tjlOKii9r6uMi3wXRMYDqtk50/XPtrETenU9CqGKY4Dg==
X-Received: by 2002:a17:903:198e:b0:234:9ef7:a189 with SMTP id d9443c01a7336-237db071659mr26270815ad.13.1750403943453;
        Fri, 20 Jun 2025 00:19:03 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83cf981sm11431995ad.59.2025.06.20.00.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 00:19:02 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: conor@kernel.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com,
	cip-dev@lists.cip-project.org
Subject: [PATCH v2 0/3] drm/tiny: Add MAYQUEEN PIXPAPER e-ink panel support
Date: Fri, 20 Jun 2025 15:18:25 +0800
Message-Id: <20250620071825.741903-1-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250620035310.735055-1-lcwang@ieiworld.com>
References: <20250620035310.735055-1-lcwang@ieiworld.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the MAYQUEEN PIXPAPER e-ink panel
(122x250 pixels, SPI-controlled) to the tiny drm subsystem.

Patches (must be applied in order due to dependencies):
Patch 1/3: Adds 'mayqueen' vendor prefix.
Patch 2/3: Implements PIXPAPER tiny drm driver.
Patch 3/3: Adds PIXPAPER device tree bindings.

Tested on PIXPAPER hardware with linux-5.10.y-cip,
verifying display initialization and refresh.
All patches pass checkpatch.pl.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>

--

LiangCheng Wang (2):
  drm: tiny: Add support for PIXPAPER e-ink panel
  dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel

Wig Cheng (1):
  dt-bindings: vendor-prefixes: Add Mayqueen name

Changes in v2:
- Corrected capitalization in the title.
- Removed unnecessary '|' from description.
- Removed redundant description lines for standard properties
- Added 'maximum: 1000000' for spi-max-frequency property definition
- Changed 'additionalProperties: false' to 'unevaluatedProperties: false'

 .../bindings/display/mayqueen,pixpaper.yaml   |  67 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/tiny/Kconfig                  |  11 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/pixpaper.c               | 716 ++++++++++++++++++
 6 files changed, 803 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
 create mode 100644 drivers/gpu/drm/tiny/pixpaper.c

-- 
2.34.1


