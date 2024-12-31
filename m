Return-Path: <devicetree+bounces-134889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0419FEE2D
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:08:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D7B01612DD
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D2C418C32C;
	Tue, 31 Dec 2024 09:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="U7J4mHAr"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D791EEE6;
	Tue, 31 Dec 2024 09:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735636123; cv=none; b=apAvhceXBySBIT9X7UfvQeeMSc7+vWUOvpglTacXis7t40OxPUgzMyTt4+N9/+S4N/06A9obToHqipMj3vn8OtVpExlFuVWsAQpYisDfJCR/gNtx7qOEuAoXifjdKYEfquvNy9pC4NkyKTRXhztlODoka7x3sJyvJ5Oc9cIzCEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735636123; c=relaxed/simple;
	bh=UuZgi7L0wFZaks8YyRDpYhLo8q1uUCH+7g5YxJDqrtE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JhQhgUdrVCCZ7Sr2bPAWfedB6zdfUfHpXk8ULJhZAptWwDm/GQpWMXV6pryzuh/09xPqXsabvguapsQY+UspC8+oQaoUPZpo4Z7eo7N36nMdBkQkJZWKrLMiwYb8dH7g9/raFFjitW3q6dce40XB2XBRIEiSUDrl8FQxHZZmPDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=U7J4mHAr; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=XV89b
	s2wMRgwDYsfc4+32ZIFY6mzS8Qa7Y/aVo+nfdg=; b=U7J4mHArmgnK31kiMlw/m
	NYbgpVQ+ffexx/JzQpigx9VytFTkuZNbFon076kTfTuWk4ncxay2sVGUcxxE108S
	z+OIPhXj7qBQud8arUB1J+qG3saozRkogdOsjhVaeS482uRDeR8Lr2/CpdKMbfPM
	mssKjHLF1pgZjujt3tt5T0=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wBHEQp0tHNnooOKCw--.15748S2;
	Tue, 31 Dec 2024 17:08:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v8 0/9] VOP Support for rk3576
Date: Tue, 31 Dec 2024 17:07:43 +0800
Message-ID: <20241231090802.251787-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wBHEQp0tHNnooOKCw--.15748S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxGw4xtF1DJw15ArW8Wry8Zrb_yoW5GF1Dp3
	98Cr95XrWxGF42qrs7Jw1UCFWFgFnayFWSg34fKw13Ja4qyry7Kryakr15Zr9xXw18Zr4j
	9a1Skw4UKFsFvF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UmZXwUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQbGXmdzq1zdEQABsZ

From: Andy Yan <andy.yan@rock-chips.com>

Here is the V8

Patches that have already been merged in V6 are dropped.

PATCH 1~7 are preparations for rk3576 support
PATCH 8~9 are real support for rk376

I test it with a 1080P/4K HDMI output with modetest and weston
output.

If there are some one want to have a try, I have a tree based on
Linux 6.13-rc2 here[1]

[0]https://lore.kernel.org/linux-rockchip/20241115151131.416830-1-heiko@sntech.de/
[1]https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v6

Changes in v8:
- Remove redundant blank line before drm_bus_format_enum_list
- Add a blank line before DRM_ENUM_NAME_FN
- Fix dt_binding_check errors of vop2
- ordered by soc name of vop2 ymal

Changes in v7:
- Fix rk3588 dp+dsi maxclk verification

Changes in v6:
- Add a blank line after hardware version check code
-  More specific explanation about the AXI_BUS_ID register bit of
   cluster window.

Changes in v5:
- Add axi id configuration
- Remove the non-existent CBCR scale register.

Changes in v4:
- Typo fix: selet->select
- describe constraint SOC by SOC, as interrupts of rk3576 is very
  different from others
- Drop Krzysztof's Reviewed-by, as this version changed a lot.

Changes in v3:
- Add comments for why we should treat rk3566 with special care.
- Add hardware version check
- Add comments for why we should treat rk3566 with special care.
- ordered by soc name
- Add description for newly added interrupt
- Share the alpha setup function with rk3568
- recoder the code block by soc

Changes in v2:
- split it from main patch add support for rk3576
- Add platform specific callback
- Introduce vop hardware version
- Add dt bindings
- Add platform specific callback

Andy Yan (9):
  drm/rockchip: vop2: Support 32x8 superblock afbc
  drm/rockchip: vop2: Add platform specific callback
  drm/rockchip: vop2: Support for different layer select configuration
    between VPs
  drm/rockchip: vop2: Introduce vop hardware version
  drm/rockchip: vop2: Register the primary plane and overlay plane
    separately
  drm/rockchip: vop2: Set plane possible crtcs by possible vp mask
  drm/rockchip: vop2: Add uv swap for cluster window
  dt-bindings: display: vop2: Add rk3576 support
  drm/rockchip: vop2: Add support for rk3576

 .../display/rockchip/rockchip-vop2.yaml       |   81 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1454 +++----------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  271 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1797 ++++++++++++++++-
 4 files changed, 2361 insertions(+), 1242 deletions(-)

-- 
2.34.1


