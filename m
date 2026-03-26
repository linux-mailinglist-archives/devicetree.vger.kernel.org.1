Return-Path: <devicetree+bounces-281328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DjwMthvxWkB+QQAu9opvQ
	(envelope-from <devicetree+bounces-281328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 18:41:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3A63394F6
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 18:41:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF660315BB36
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 17:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4AA4279E4;
	Thu, 26 Mar 2026 17:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Hqf6Uxa2"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD4A427A13;
	Thu, 26 Mar 2026 17:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774546306; cv=none; b=bUF5E32q8ygwtAJ7SWWIraxivgQk4JVMVEyowHUthT5CxL4mVwGJNkI+JxDLxc5UsS945q3z59pVD/1rU8UG6C8Lus31gYvUGLprSmh+sWK+hzwVCnwcPdmci4D3Dsb0aZ3rvpOOeFQzaBfpa0PDRw22xs/P0A0I11o+YEsr5l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774546306; c=relaxed/simple;
	bh=vXSMlfnFJobHWPCmXLs+jZ975SzlTret6G5BHToTXjQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qfvgU8PgbLXFbco6GnIisGLDorRSqFyCvxS/JhtKrtb4Sk4/9pXAt2wHWMdbwZUiIpx5NCFMGfRNSzqtTTFNX6SY99bgU8WchFe6dmc4EEFSUhWroaUyCHbNBjSNTjPO7ILmM+cI3V7RSMuiIRJwKEE2CyEOBeezYPgatEwJFIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Hqf6Uxa2; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774546298;
	bh=vXSMlfnFJobHWPCmXLs+jZ975SzlTret6G5BHToTXjQ=;
	h=From:Subject:Date:To:Cc:From;
	b=Hqf6Uxa2V1Z3nvXD7aSjfaZKYtCFUunhvl+aR0o3ph11xD422+OSpYCQ24gI4Kbe3
	 XrHrzYUTP0DLqWdcQunO/SAV6MWoBOTrYLAyOF2FXeRf7pdowq2UJUFmqEb8RojHF1
	 dBDZ8INXnQeM4LDd8wMk2djJzqrrJRTIx3r2mUt3QGbR3VllZvUz3bM/98E4czW2TF
	 CEfsRBS1NDsC1/6CXC6LFNFxMf5YRjEh8c9GDokQyeK669/oX4UHAXPh327WGHYHTS
	 k2DnbIX1D/aY69Mvv8pRhuLT1tXM2H2AUbNLnMRMM9RnjZoCOThHmb5DG0ofJ1e2/h
	 1UF5wgriBb05w==
Received: from jupiter.universe (dyndsl-091-248-208-149.ewe-ip-backbone.de [91.248.208.149])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8447217E6048;
	Thu, 26 Mar 2026 18:31:38 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3DA2348002A; Thu, 26 Mar 2026 18:31:38 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 00/10] Synopsys DisplayPort Controller improvements for
 Rockchip platforms
Date: Thu, 26 Mar 2026 18:31:24 +0100
Message-Id: <20260326-synopsys-dw-dp-improvements-v1-0-501849162290@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGxtxWkC/x3MOwqAMAwA0KtIZgNa8XsVcRATNYNtacQP4t0tj
 m95DygHYYUueSDwISrORuRpAtM62oVRKBpMZqqsMCXqbZ3XW5FOJI+y+eAO3tjuijWNhtuG5pw
 I4uADz3L9ez+87wfIOUB2bQAAAA==
X-Change-ID: 20260325-synopsys-dw-dp-improvements-7da2e98df1dd
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Damon Ding <damon.ding@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Alexey Charkov <alchark@gmail.com>, 
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2957;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=vXSMlfnFJobHWPCmXLs+jZ975SzlTret6G5BHToTXjQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGnFbXngsbl1x0TPdrPLkOGJGsIh3WY7uN0/3
 M/tLY7s0s0oVYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpxW15AAoJENju1/PI
 O/qasu0QAIio8x0zfbPD9Dlu94zX6PnbJ4xUIHrhn3eRQ4J5aIbNo/ec1gCVM995Ql87krJto/a
 rSeVQEtBJGsJooT3EV/IGAXLJPyGnQdVXNBaHsJ889KEVmkSMzwQy3g8TMnXCROTDlKROsjhi2X
 syExDiVJuIxBw2Q8VmfWZgbiyRoWRNeI1FOaeywFP563dLm6BAfQs31irNtTiMcFdBIwAVrc4CZ
 O85VAidN1lqDjdmdmhnCnhh/dHBwzpmn4os0rfZVt3KOg4jDpoUw6ArE2mwfzgrFU1GHmVwjPVd
 xpISw/eNJybiu03+5sHs10WF20HHIRRp9QVYcZ9ciW2m9u74GyyV/vvTQW1YYNxx/BJ63gX9LjK
 iyj91gqiRRLGVkIaXcoVCo28NteuSKplokYCPuiq4f3EjxYvc0ihzvhXuGTHhG23VMjcibFvXCe
 sK0MT2p1visGr9ub68kpMCaiyvykOxK7DQYcbYxhQgZcYB0ZOxQqxcc2MINyUcf+2in3TXqrR2i
 MY+p67NNqlWRlPJz4iE9xqUqjX+p2dFnY8i2iKtX1Fc2pzkZw9KVWnuSYSwVQXkuAm0J/ACXhPq
 Ym4kR5TPoMe5ny/49BOlmBIUXB2QI+dRF2Fu0fyqgXpTKJM54LQYuuWMcHuegbTUOTkJCeJahLM
 ECDL2wGlb3otSuOdMrD0vEg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281328-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:dkim,collabora.com:email,collabora.com:mid]
X-Rspamd-Queue-Id: 4F3A63394F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series updates the Synopsys Designware DisplayPort bridge
together with the only existing user: The Rockchip RK3576/RK3588:

 1. follow-up bridges (PHY, USB-C connector)
    this is needed to get USB-C DP AltMode working; I've followed the
    Qualcomm driver as reference

 2. runtime PM
    the initial driver has been upstreamed without RPM; add it to
    avoid wasting power when nothing is plugged

 3. audio
    the initial driver has been upstreamed without audio support;
    this adds all missing bits for audio with single stream transport

The series is based on drm-misc-next with Cristian's cleanup series
applied as I expect that to land first:

https://lore.kernel.org/linux-rockchip/20260310-drm-rk-fixes-v2-0-645ecfb43f49@collabora.com/

To properly make use of the bridge code the following USBDP PHY series
is also needed:

https://lore.kernel.org/linux-rockchip/20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com/

There are two parts, which possibly need some discussion:

 1. I added a dedicated bridge callback for out-of-band hotplug events,
    which is separate from the hotplug_notify. I have a feeling, that
    there might be a better solution, but haven't found it.

 2. The DT binding for audio support - explicitly marked as RFC - works
    perfectly fine, but is not ready for MST. I don't intend to
    implement that right now, but the binding should obviously take it
    into consideration to avoid breaking it in the future. I've put
    some points for discussion into the relevant patch.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Sebastian Reichel (10):
      drm/bridge: synopsys: dw-dp: Simplify driver data setting
      drm/bridge: synopsys: dw-dp: Support MEDIA_BUS_FMT_FIXED
      drm/bridge: synopsys: dw-dp: Add follow-up bridge support
      drm/bridge: Add out-of-band HPD notify handler
      drm/bridge: synopsys: dw-dp: Support software triggered OOB HPD
      drm/rockchip: dw_dp: Implement out-of-band HPD handling
      drm/bridge: synopsys: dw-dp: Add Runtime PM support
      drm/rockchip: dw_dp: Add runtime PM support
      [RFC] dt-bindings: display: rockchip: dw-dp: fix sound DAI cells
      drm/bridge: synopsys: dw-dp: Add audio support

 .../bindings/display/rockchip/rockchip,dw-dp.yaml  |   5 +-
 drivers/gpu/drm/bridge/synopsys/dw-dp.c            | 284 ++++++++++++++++++++-
 drivers/gpu/drm/display/drm_bridge_connector.c     |   6 +
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c          | 167 +++++++++++-
 include/drm/bridge/dw_dp.h                         |   6 +
 include/drm/drm_bridge.h                           |  14 +
 6 files changed, 469 insertions(+), 13 deletions(-)
---
base-commit: 0660ee19141e5e90b422b7daa0d8518a8d0d898b
change-id: 20260325-synopsys-dw-dp-improvements-7da2e98df1dd

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


