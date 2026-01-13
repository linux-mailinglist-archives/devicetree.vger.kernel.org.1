Return-Path: <devicetree+bounces-254705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A977D1B1E5
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D110301E922
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D9A36D4F0;
	Tue, 13 Jan 2026 19:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HjzrT529"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF4A36A034
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334389; cv=none; b=reowN/oD02jDX9rPRRvZdneiZXJ7fQVd4wP76gIzN/u7TPZMhBJReRHKfN3ZOu8PTJyzfGoOP1boYUu9cCcHptHdrG6rQ2Z6B/gwSU7jhGs7q2MHeVRM4hBtvSjRh/8ce1IpfUpZ+mUQDKfvm2EuDBe0XIrrzoYGyIwzsAUFSFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334389; c=relaxed/simple;
	bh=qM1baZSj6quHfk0kXprCAO4TwYlr8SBh7vrF0N/pTEk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pU6nySHBuHWReyOxeyr04a29QfKVNMCxlFF70q5vLP61245rVBvRG/cwu07wS/pwyzGMEqTfUpOmjrQfqZ+0RAm4cB5foP2fRrYskiUixxixejECXy3RcvF9oWCF1rIkY8Qsk42pSj4FHUnIKwGUvYTA8vJBnq09zLXbIATobbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HjzrT529; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7ce229972f1so7036194a34.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768334387; x=1768939187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H8g5bJc3pUYOOH+Mh3z0UWCzPpBzWdqcnl8TWmpkj5A=;
        b=HjzrT529txKTW3bYeC4s8UN9Y+e0Tr7LbYkpK7w4AISkuFsqcVk6EpfPG1bfod4eve
         0LlY4iRDb/OUETe6XTWPeXL20mmKuuxJHBWkvcqMSjzIkF6prvQF99Ft9ZujtW7p3X3w
         SsnWkmTjIK4gGryn/KiSa+XQXUnQpZiD7KQu/wWWm2Kp6AfMfDi4OpgheChuaGLyFlCv
         hMVON4PlO0eUavOizoGtNJX3P89ShRb5U/UPnL/rW96M+Ujy+HWB6ciwTfYVb/NPDHIR
         jrFkq/82SLiA8+6bVf/cvSCnJW2FNZngfqRYR668pf4vNkqjqfKuZ4uiEfXQGrGem3Ih
         PbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768334387; x=1768939187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H8g5bJc3pUYOOH+Mh3z0UWCzPpBzWdqcnl8TWmpkj5A=;
        b=ovyWob2UH34x7CUXNlHpIMfeslZAY6ihZnxSsUBFvMrAyDgbHHhT+OKaUfpbUKRyXK
         7CT4VvGgmBr3W0w3Yw0jCGwRXmSUgLDRD0JkZzJAGnrDGrgmWadK/h69o5LJOMNjRfFy
         EWi4tnp6j9EzCbGGbSOIpUTx+IkKBLVwmAgoMbgZBLFYsxlQgLK7uyDO9Pw6kpXrKhWr
         fGRYH20u37sj8yrb3fEjU0E06ctfjk9BrCjFPLxMFfWR9CBZuSnMjky/HVF4wXLsWBJm
         r7SyZUtk4D3g3tswyRqfD0P301umSrXlHfyWSaHQ8F5zzRRhrf9Qy7yIiZOlLMUrUWlI
         VrBw==
X-Forwarded-Encrypted: i=1; AJvYcCWOrjRu7J5L9xhRpXMeePGKkipkjSqvfeMAyh4k8FvVF5jv4DwY5t9ENV8FwA0vSsmSCZ2PFhffQdzm@vger.kernel.org
X-Gm-Message-State: AOJu0YymipzClVf1OOQyFLy/OfMhyLNPQhEaVNk/c6UjrrdZmRyKy7jQ
	VJYMIoZK8Gc0XmRl2c63jni74zpOSNLWhhc44VEl7gkS2BiyPvZRJjcb
X-Gm-Gg: AY/fxX5r/xyYT6ot3jWqxqcuppKeKWCtNNKuLHO7hxwID6SOoJYBQwL8v/JEuWvgRWn
	spGqXJnMv523TaMVXM83ofFsmCPI85VtK8vdMzKUgAw3f4RSohw0a7PuaPAyAyJ6q6rb8vF9aSO
	Ye0v9Cbcg3KU+2apkB7ivU0maoCbf5r4HLSHkaXX5M0WuYzQ6jk4ESbevbWr3NeTCdE0wByjsdk
	mUq6lYCoz/sMFX0heWrHpA+hEyEuAKMRU84zA4Glk1qWdNkSeZqOmOT9+NuWZUd4X7/+vP4ygeZ
	PKGS3wA9PdXpbQqetWi7OPxKbDbGW1qI8JRR8OjDSUGTdDhKM09OfCp05DoZNHICh/amldYFX5p
	yuDrss6eHt8HJV82nYNyejp+uGihe1fszAQNBgtQBYo4+QGx8YouQusqOxpaquiG6fanLCYCBqy
	rlS0IbZP1t
X-Received: by 2002:a9d:6c18:0:b0:7c7:1c91:1258 with SMTP id 46e09a7af769-7cfc8b3a696mr126207a34.26.1768334386967;
        Tue, 13 Jan 2026 11:59:46 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47801d4dsm16221119a34.5.2026.01.13.11.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:59:46 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/6] Add Anbernic RG-DS
Date: Tue, 13 Jan 2026 13:57:15 -0600
Message-ID: <20260113195721.151205-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-DS. The Anbernic RG-DS is a dual-screen
handheld from Anbernic powered by the Rockchip RK3568 SoC. It has
dual DSI displays with touchscreens, multiple face buttons, and is in
a foldable clamshell form-factor.

https://anbernic.com/products/rgds

Chris Morgan (6):
  drm: panel: jd9365da: Use gpiod_set_value_cansleep()
  dt-bindings: display: panel: Add compatible for Anbernic RG-DS
  drm/panel: jd9365da: Support for Anbernic RG-DS Panel
  dt-bindings: arm: rockchip: Add Anbernic RG-DS
  dt-bindings: input: touchscreen: goodix: Add "panel" property
  arm64: dts: rockchip: Add Anbernic RG-DS

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/jadard,jd9365da-h3.yaml     |    2 +
 .../bindings/input/touchscreen/goodix.yaml    |    2 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 1237 +++++++++++++++++
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  |  281 +++-
 6 files changed, 1522 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts

-- 
2.43.0


