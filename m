Return-Path: <devicetree+bounces-234315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2399FC2B3DA
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7154C345080
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 630CF30103C;
	Mon,  3 Nov 2025 11:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="acI4HVvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1ACF20E702
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762168020; cv=none; b=CE1fU9D1+5P0Z+wGU36+ZwuwqXw4IbX94BnzFFwbeaiTYhWxnScdrC7DteD/WCfAe/LRE76CXGaM71Fq751ji1SKP+ALociCwqg1zDL1k0kw2RjdkPDnYXE3WzA0KkVA5BbAsdSRDzSoslYnJJMZUgOxiT4nMU9rAs5OEjhkf64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762168020; c=relaxed/simple;
	bh=4K8ff7naWva5QP5+rWneFBDK+QFz923xCqhRcHl62d0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Mg6DAiHBAxJmPKoI9zOACbEp7sVk3JnSCMNVFrvMU9o3IfGOCDKijc3bcRaMJGSGukMKym3T3aIonF3A/GhtRg0bWNuUk781PIuFmCWxaAWPy1ZWXw1Cv4cgcYNevMDlkBWOuKtzrMHIo9+KexJNEbQiHs8sRkNWTR7tF9ULSiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=acI4HVvX; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2951a817541so42420935ad.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762168018; x=1762772818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=msKPrbmLk4Pe+fn3QzDxAI35yUJEjQv+lopXWiS4lts=;
        b=acI4HVvXpDlipCGu3tF4pNA8mEaYI1wS8/ybxO6sMKNln0/f7Gj3M5kUfhyGVu8102
         ABa0zey2hWthYSAA3OcCg7wcrTtW29eQqb/9dZae2Dp5KPdsn3G27R4MTbud2uCbhzgR
         L0OqhTVA9v2QyG7/eVIekBPQDPMzgvApbmjEJGMW/MI2VGxZzSJBaAwpZq90S5eCjxLH
         vJymWCOpwDc2FP8R7KKRDQ9fV5oYimwMkNNDJTgNvswhTJNz2lDrozvvzDlnEVn2K6Dg
         JE1bN1jgtdF/mMnj5Omq440UNL4tT+1BFzmxb155G1QgizwJ7V3BuecGAE84hKKTrCrd
         8ahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762168018; x=1762772818;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=msKPrbmLk4Pe+fn3QzDxAI35yUJEjQv+lopXWiS4lts=;
        b=QXOHGYzGKgXeE5wYnVOI9fpWHZcwO/I3jdarqoF6xPt6mIzQeHQuhhLIHMcqxBFfwo
         BBg2JEx2uuMNiN620W1yq9s18hUMY8t92tt7HEsPaHOI4DO6DtbyTZWyfbMrLYSTXjqk
         Rhnn7i8TonQJ9+nKXB9cwRGvc3UBee01H5GeEMLYa/isQxETcr62JXCwxcSh/0oXXC13
         w2P/8RvFPLeeXmXKneoeoSDIljGeyx0JGub8HM/3L0RrdRV/GA8y9whcC2VDX1X+tWrI
         y3SLJGc2K/5hkIS2iv5HYCgnQPzvdP8cs6q27FcUHBmVuTxhgFOTLzFzPOxRmFlZ6FT+
         PC2w==
X-Forwarded-Encrypted: i=1; AJvYcCVR50X29J/rMWuCrirNmOOK2OCDglmgvsRYAiVxAq4B+61Go65w4h8ayXpW1PXUlxc1mOHD9oB5OFgT@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ+augM5FejAqhY17jjtm/cfArLaXLuef8UKs75uO+iFoC6ubB
	1v2Bx36jk1LY12GzlqR6Y0RwDlP2wtBb4H484WJNW9ccN3pjsQ9UcbGf
X-Gm-Gg: ASbGncvRnlZOSIPU+JNzlqHGbDUnQnm3/qV8PqS2fAmOxjTDuzsiOKNurEIKtOuX+fD
	jVWOnrmEWJ5+gGj6SWhioVF7mH7Tfm40LeR4z4UvPQ6n6++zzbW3kVquvXbluJ6M/jr6UKQQHOs
	VEl7+OoTLlDtXOngrM0IGnARFqzGCywFFHA8k6wFZ7Kw+wTNZCXY5t28HQVi3ulpSB1ux4W5psM
	3ND0yEWxVjJS1m+yBKYjmBgK/21hE6pgEAO1R5JuPXvtrBDd0eEXiJ3NJVdRJIM7ap+Bm+OgQ4Q
	NLG8jCUOxF4CSvwuxWjZ9Ec3y/e5Z/kYfjK7Z6pZZIFS8mE+3d6y8DCooICrI+EB/+EtZGjk3yh
	rPm03Xvc7aKH6M0cES+0pwt4lDw1qVRUbdvNeaqo4ijB9i73JdHv1L6xwZ97G/QKKsPZfCc0VFT
	YqO4/liQvHXqa1DDAI1g==
X-Google-Smtp-Source: AGHT+IG3q2ScRjcYVlSQKEOGzfSShOd+VCm6j/zTtP/syrwGIinOh8u7Pw68B0XoVDTjaFHiUhDd5Q==
X-Received: by 2002:a17:902:e74b:b0:269:b30c:c9b8 with SMTP id d9443c01a7336-2951a55923fmr150821025ad.56.1762168018110;
        Mon, 03 Nov 2025 03:06:58 -0800 (PST)
Received: from VM-0-14-ubuntu.. ([43.134.26.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2955615d720sm84025575ad.65.2025.11.03.03.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 03:06:57 -0800 (PST)
From: Junjie Cao <caojunjie650@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Helge Deller <deller@gmx.de>
Cc: dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>,
	Junjie Cao <caojunjie650@gmail.com>
Subject: [PATCH v2 0/2] backlight: aw99706: Add support for Awinic AW99706 backlight
Date: Mon,  3 Nov 2025 19:06:46 +0800
Message-ID: <20251103110648.878325-1-caojunjie650@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Pengyu Luo <mitltlatltl@gmail.com>

Add support for Awinic AW99706 backlight, which can be found in
tablet and notebook backlight, one case is the Lenovo Legion Y700
Gen4. This driver refers to the official datasheets and android
driver, they can be found in [1].

[1] https://www.awinic.com/en/productDetail/AW99706QNR

Signed-off-by: Junjie Cao <caojunjie650@gmail.com>
---
base-commit: 72fb0170ef1f45addf726319c52a0562b6913707
---
Changes in v2:
- add handler for max-brightness and default-brightness
- add properties(max-brightness, default-brightness) (Krzysztof)
- use proper units for properties (Krzysztof)
- drop non-fixed properties (Krzysztof)
- include default values in the aw99706_dt_props table (Daniel)
- warn when a property value from DT is invalid (Daniel)
- drop warning when optional properties are missing (Daniel)
- add a function pointer into the aw99706_dt_props table to handle lookup (Daniel)
- use a lookup function instead of hardcoding the formula for the iLED max (Daniel)
- move BL enalbe handler into aw99706_update_brightness (Daniel)
- Link to v1: https://lore.kernel.org/linux-leds/20251026123923.1531727-3-caojunjie650@gmail.com

Junjie Cao (2):
  dt-bindings: leds: backlight: Add Awinic AW99706 backlight
  backlight: aw99706: Add support for Awinic AW99706 backlight

 .../leds/backlight/awinic,aw99706.yaml        | 100 ++++
 MAINTAINERS                                   |   6 +
 drivers/video/backlight/Kconfig               |   8 +
 drivers/video/backlight/Makefile              |   1 +
 drivers/video/backlight/aw99706.c             | 492 ++++++++++++++++++
 5 files changed, 607 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/backlight/awinic,aw99706.yaml
 create mode 100644 drivers/video/backlight/aw99706.c

-- 
2.51.1.dirty


