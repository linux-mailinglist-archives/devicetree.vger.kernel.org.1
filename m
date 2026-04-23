Return-Path: <devicetree+bounces-289785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJYwJN2L6mmZ0gIAu9opvQ
	(envelope-from <devicetree+bounces-289785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 23:15:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B0A457B75
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 23:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E08FC30103A8
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 21:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE58F34C130;
	Thu, 23 Apr 2026 21:14:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189502F6931;
	Thu, 23 Apr 2026 21:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776978898; cv=none; b=io9CNpvitTy7SvXGa3re/N2//9XEUf9v7Ya27a7+RQnc71XYeffiYEQFoWAQ8yjMrp0OoGELntEDsv+42I5J0QHH/EubpE3Gc2pzY8d0idjwGEH8/RMY4fC2y/BoIyDWkn5IOMhFQpMPsknIJjBQhD7NKNWdMPiWO1z27u/yuNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776978898; c=relaxed/simple;
	bh=CgdXWrbrAHb92IHWVgD9jZSu0Js7paRIRX2/vSjqQIY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JSaI3YnCePr9H3wcYFIpHYy0NKtnnLo0imdULG3EgXQALwoyN9EiLAw6ne9Y1ft8CjGPrjDiKGGVOSbD34w38jCV+ZmUUrMWxuiX5Cbx5se8vXsc7ebM6OJ7Ez17WrlPddW+srvFGryomTPspIi0gL0DNwcZcz1AYZBhcgtRwzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timmermann.space; spf=pass smtp.mailfrom=timmermann.space; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timmermann.space
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timmermann.space
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4g1pl14JdCz9t9D;
	Thu, 23 Apr 2026 23:14:53 +0200 (CEST)
From: Lukas Timmermann <linux@timmermann.space>
Subject: [PATCH 0/5] Google Nexus 10 display support
Date: Thu, 23 Apr 2026 23:14:36 +0200
Message-Id: <20260423-manta-display-v1-0-196f80c5673a@timmermann.space>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDEyNj3dzEvJJE3ZTM4oKcxEpdU1NzC0MDY8u0JIMUJaCegqLUtMwKsHn
 RsRB+cWlSVmpyCcgQpdpaAHB6MUFxAAAA
X-Change-ID: 20260423-manta-display-55781039fb0d
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Douglas Anderson <dianders@chromium.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Lukas Timmermann <linux@timmermann.space>, 
 Alexandre Marquet <tb@a-marquet.fr>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[timmermann.space];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ravnborg.org,chromium.org,samsung.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289785-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@timmermann.space,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,timmermann.space:mid,timmermann.space:email]
X-Rspamd-Queue-Id: C5B0A457B75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series adds display support to the
Nexus 10 (google-manta) tablet. 

The panel can be used with the panel-edp 
driver and just had to be added.

Also needed for display output were two clocks which had to be defined.

This patch series depends on previous patches which are
currently only found in linux-next.
See: https://lore.kernel.org/all/177214038655.341086.4114348823043257597.b4-ty@kernel.org/

Signed-off-by: Lukas Timmermann <linux@timmermann.space>
---
Alexandre Marquet (2):
      dt-bindings: display: panel: Document Samsung LTL101DL02-002 panel
      drm/panel-edp: Add support for Samsung LTL101DL02-002 panel

Lukas Timmermann (3):
      dt-bindings: clock: samsung: Add fimd1 and vpll muxes
      clk: samsung: exynos5250: Define more clocks
      ARM: dts: exynos: Add display support for exynos5250-manta

 .../bindings/display/panel/panel-simple.yaml       |  2 +
 arch/arm/boot/dts/samsung/exynos5250-manta.dts     | 99 ++++++++++++++++++++++
 drivers/clk/samsung/clk-exynos5250.c               |  6 +-
 drivers/gpu/drm/panel/panel-edp.c                  | 31 +++++++
 include/dt-bindings/clock/exynos5250.h             |  2 +
 5 files changed, 137 insertions(+), 3 deletions(-)
---
base-commit: 6d130a71abb393ce99b081e78783581bd3b5985b
change-id: 20260423-manta-display-55781039fb0d

Best regards,
--  
Lukas Timmermann <linux@timmermann.space>


