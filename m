Return-Path: <devicetree+bounces-196210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71375B047D2
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 21:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A337E188A3D3
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 19:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC4E27781D;
	Mon, 14 Jul 2025 19:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b="d7vHIWWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501702E36F0
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 19:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752520657; cv=none; b=oXTCATmZ8c+w325Oxwfd5aNmcI2V1WQp0tYRWrpIKcrGcKDWg1CxPXvtwPo63psxDVfJZ29HZWU+/7O4fmGUhpjNQimh+eOxMkDpktjngYsY96PuNw+gnAFCuI8/NFWLYo+yDwlKzqas0Gn8VknX+kWosCA5Y1L0+asgI7A/Zno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752520657; c=relaxed/simple;
	bh=WzdmAPFj2LG6qLCiulIcbqEYYhZwbUStzkjL7nV75sw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KqhGTUntCdepOv4jnMUxK+27NtR1du6ZaEE7cJsAK2aIeONR+LvimPxVZGhX+DbHes88jlpxkHpbJlddaz3lFVWGho8n6hkuyW4fT2i07UySRzJl3Bi0Ol2MEucMh9kUevF5gTo3fvrH15N/3n9sjk+8pgnaP0rwwJgZTlHQujg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com; spf=pass smtp.mailfrom=scandent.com; dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b=d7vHIWWt; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scandent.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7dfff5327fbso416330585a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scandent.com; s=google; t=1752520654; x=1753125454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ppm77+VMgkhfwsY1YCayVc7qsiRcdKYM27vglyic/Bs=;
        b=d7vHIWWtgkN3t6cw9G4trS65kj6cwjZn3OB+It6C9ewzhuqP3orHuxvR4kIrQksh2N
         oQ5LpDi9DceJYCM8lGlLJwP2AmwFiLVvp93rU2iQ2H3lKK4EfDpMRqkgoiC565ewkCAS
         3Vm1Przv0yVqJkML0RxHC4UyGaXVzsMRkjn1QKxr56YcePhszNBiPadU7bjr6Tufjmrl
         dZdcA5zmp57rrNrMutRYTHsI1FJMtYm2w8EDob3XTiNvhDLdSYnNOXAmrthh43rdWqCv
         JorJEgJi5u5rRDFF0sib4Z4NMtEnfMKp7zlHnaF0+qJw/ynAjmzDIWRrBKz/1NDGcG2Q
         93XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752520654; x=1753125454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ppm77+VMgkhfwsY1YCayVc7qsiRcdKYM27vglyic/Bs=;
        b=fdki143Pz3N+oQ01Z/3zlhtOpTpPiji05T3sRWeb1kzaSeW5zBZt3cAPK0IYTsWDVY
         hDAjmAreHuqZlngfTIBMCLYKkteAc0sHmspgpIIyi2SGSYwtI3saj98IRbBZ0TxgnAT5
         +PyM3AOphRF6N9gQQQnkLZgbkBDY83jfZP4n6Ie/NAbNS0yq00H3Z6NTh+3syor3jfMV
         UwJs3ilHNDu6nvLQWZqEgpaxrEH5+mKZsXJdMJVPC6TvdpgTrgxu0/8aRN53ojJeNSlc
         /EdEJ2mqnWjEKiJxfEEtMn4Le+iZCtMTbq5XkCxcoTs5OFOk6iicw8HvEBcOMm0FRaZP
         1zhg==
X-Gm-Message-State: AOJu0YxFShQ1RvjQXBqe2M1gS3JJhUMZB5EAnH3KbC7mfInVsINu+5m/
	36DgJlzSLd+FSRzCp/P6VKbACDBTsxj+UirsrjpcidWUbGzZ5mFl3JB14fGZ96CE/nQ=
X-Gm-Gg: ASbGncuvb7tk0RLPLlAepTKE4jDy59JuASYavIxNOD6fEN3lcsSJeR8haQi/dZTgoVU
	7jSP6esUdKRi1Zbkcby3hcO5nO/APOtXByN3D6J4rUliGWqM065oSmY/uoe/bq8QwXDzqRnzGyD
	7NsmETQR/EdpLcQGHa4AF2aNny5pAho8yUxQt/PEzKISYYjocyqhtNR8VlsfybhZivNGJKieT2s
	po+5CnIAPH5ZNicGfo5Sm2Lo/2BZMVkrOSQcfPXC4v5peM98/daCjJUqDQ6dgf/USRnmmDUNmQ2
	Gf0x+pxt+BWDLXBxp0b6N01/C5y2Ai1gOt87h8A8Vjn82UJ7fEL/MvJvmGzRyi3CbO9hdHmE+3l
	auVrkRU86ZN5h9Z2WaMrUaJTJ4oSSamsNE96VrzuNIp5M0xvV
X-Google-Smtp-Source: AGHT+IGP8D0B1lB9WiY8LrpCrDqEWqN/fOscHbnw1FMJjYlEArtBj6PYHuACMQiqFNKRhKBRsvK8ig==
X-Received: by 2002:a05:620a:d8d:b0:7c5:405e:e88f with SMTP id af79cd13be357-7ddea60f5e1mr2300530285a.21.1752520654091;
        Mon, 14 Jul 2025 12:17:34 -0700 (PDT)
Received: from vserver (ool-44c5118c.dyn.optonline.net. [68.197.17.140])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab801e542bsm1482521cf.3.2025.07.14.12.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 12:17:33 -0700 (PDT)
From: Richard Yao <richard@scandent.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Akshay Athalye <akshay@scandent.com>,
	Richard Yao <richard@scandent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andre Przywara <andre.przywara@arm.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	Caleb James DeLisle <cjd@cjdns.fr>,
	Kever Yang <kever.yang@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 0/3] drm/panel: ilitek-ili9881c: Add Tianxinwei TWX700100S0
Date: Mon, 14 Jul 2025 15:17:20 -0400
Message-ID: <20250714191729.2416-1-richard@scandent.com>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This series adds support for the Tianxinwei TWX700100S0 panel. The first
patch adds the Tianxinwei vendor to the vendor prefixes yaml file.  The
second patch documents the DT binding. The third patch makes fairly
standard changes to the ili9881c driver.

Runtime testing and validation was done using a patched rpi-6.12.36-v8
kernel on a CM4 using a custom carrier board designed by Scandent.

I have confirmed in writing with Tianxinwei that this patch series may
be released under the GPL after sending them an early draft for review.
This should be superfluous given my signed-off, but I want to make it
clear that I did not assume fair use when providing signed-off.

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Junhao Xie <bigfoot@classfun.cn>
Cc: Caleb James DeLisle <cjd@cjdns.fr>
Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Richard Yao <richard@scandent.com>
---
Richard Yao (3):
  dt-bindings: vendor-prefixes: Add Tianxinwei name
  dt-bindings: ilitek-ili9881c: Add Tianxinwei TWX700100S0 support
  drm/panel: ilitek-ili9881c: Add Tianxinwei TWX700100S0 support

 .../display/panel/ilitek,ili9881c.yaml        |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 242 ++++++++++++++++++
 3 files changed, 245 insertions(+)

-- 
2.50.0


