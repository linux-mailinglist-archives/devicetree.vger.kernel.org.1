Return-Path: <devicetree+bounces-276460-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOrqDGPluGkYlAEAu9opvQ
	(envelope-from <devicetree+bounces-276460-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:23:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E6D2A3F07
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 06:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AB5DA3033E65
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 05:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 021EF37DE92;
	Tue, 17 Mar 2026 05:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPXi2Vxz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE68B21CFF6;
	Tue, 17 Mar 2026 05:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773725021; cv=none; b=Usw6Ld0Y6Y8kNM4MeTRrmbGvj1ehpzHrDsU3Y+iuNxOx9xFuAZo+BYA3jhrtIqwNFyN0p3xs2LAO+dMsNNX24ocdzl/0tZkyAxA8otqlfzzXes5nNfrmdXQ28m8dTGFJs95gD5sHvdZOd58r2sDynADaPMaoUsdh7yOxglEda6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773725021; c=relaxed/simple;
	bh=sHBOXa5iAdCKVMBMgSvMM6uqXWupWn60SVKYB9JnKgY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=evUpUOfezi1OZZTOndPeZK8Wu095jslBY92E7yKDF3mK4ZDndyI/V2qQWaFwp3xk1UDvbS5+/IxhZPWL6LLOroigYGcz0wt1Vj8Y2RKYXcHiK1chSeHfVYi/ctwq+mGrjhXY8B/jE5lPP5du6z/TeYyR0bqPiiAuxsQ6bw8+Zu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPXi2Vxz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6980BC4CEF7;
	Tue, 17 Mar 2026 05:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773725021;
	bh=sHBOXa5iAdCKVMBMgSvMM6uqXWupWn60SVKYB9JnKgY=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=BPXi2VxzpJp9VE/PmpOBsGdREevYRg/UZXUY0BnXrVOxvXCH6UCE4Ceeb6mg2A9u5
	 7hvWlIcz7b0B4M1LxPVzuZ6Kh/vyGOHzabIflQG3I5IgijSdoaf3VJuDm0qskQh/Ml
	 tWJlctbBeVunzYnoU62z7jYblFD7AKJcFsBldG+Ln8jDR6n7P/m5elmxRCmi+FxtQT
	 bYR85BmelPzv6girrgzgaepiBCIs3H41GuAlqNMkara0VaXPzhZmJWj+Oh9rJXywDu
	 5Zfpgr+tgbWbZxaaRSNutXT7Bw5wbuKeWmcmzVlIMILQycGi5zZ03W9PEOKWTgIMOi
	 cRcoxHIBjoT1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551A3FB5EB8;
	Tue, 17 Mar 2026 05:23:41 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Subject: [PATCH v2 0/2] drm/panel: Add panel driver for ChipWealth CH13726A
 based panels
Date: Tue, 17 Mar 2026 00:23:06 -0500
Message-Id: <20260317-ch13726a-v2-0-28aa46bcd6d0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/02PzU7DMBCEXyXyGaNdp/5JTrwH6mFtbxpLJAE7j
 VpVeXfcFgTHGe3OfHMThXPiIvrmJjJvqaRlrkK9NCKMNJ9Ypli1UKAMKAUyjNhaZUjqLhhjXdR
 tdKKef2Ye0uUR9X586sxf55q4Pk3hqbAMyzSltW86HfQBYxw8ONQETO5gLQ3WOu+x9R6sBtuR+
 E9SwX456DrLjee4ZEmoWzQuqM6rfkNxbx9TWZd8feyq1r3+51X9TdhQgmQNGK1jBE1vp4nSx2t
 lFMd9378Blcf2nR4BAAA=
X-Change-ID: 20260220-ch13726a-59c6678d53d8
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773725020; l=1279;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=sHBOXa5iAdCKVMBMgSvMM6uqXWupWn60SVKYB9JnKgY=;
 b=DzjhYFE5zY5In+vRpMU9r4oJg+dntBbzxTebe3W3BE1mGvjExZ86o6IckAdH0FYKHDmZJJFOH
 JMwVyjJLiegAxS3PbkmSiAtO+k2VsdSek+G8WHb7/YX3qxDIiQnF0Aw
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
Reply-To: webgeek1234@gmail.com
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276460-lists,devicetree=lfdr.de,webgeek1234.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.963];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,sobir.in,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[webgeek1234@gmail.com]
X-Rspamd-Queue-Id: C7E6D2A3F07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This driver is based on the one by Teguh Sobirin [0], cut down to only
support the AYN Thor bottom panel.

[0] https://github.com/AYNTechnologies/linux/commit/d0ff75b09e66023c5f88992706dee4601aa7a437

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
Changes in v2:
- Add Neil Armstrong to binding maintainer list
- Add 120hz mode, which required a minor restructure of the driver
- Link to v1: https://lore.kernel.org/r/20260222-ch13726a-v1-0-e501d78e105a@gmail.com

---
Aaron Kling (1):
      dt-bindings: display: panel: Add ChipWealth CH13726A AMOLED driver bindings

Teguh Sobirin (1):
      drm/panel: Add panel driver for ChipWealth CH13726A based panels

 .../display/panel/chipwealth,ch13726a.yaml         |  66 ++++
 drivers/gpu/drm/panel/Kconfig                      |  11 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-chipwealth-ch13726a.c  | 339 +++++++++++++++++++++
 4 files changed, 417 insertions(+)
---
base-commit: 95c541ddfb0815a0ea8477af778bb13bb075079a
change-id: 20260220-ch13726a-59c6678d53d8
prerequisite-change-id: 20260220-ayn-vendor-a153168c29b2:v1
prerequisite-patch-id: 042cab8f04748207ba5395dd0f23c445955aaa2b

Best regards,
-- 
Aaron Kling <webgeek1234@gmail.com>



