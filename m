Return-Path: <devicetree+bounces-279305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDcKHimAwWl2TgQAu9opvQ
	(envelope-from <devicetree+bounces-279305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 19:02:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5216B2FACDD
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 19:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 20F3E30F20A1
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 17:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720213C3C18;
	Mon, 23 Mar 2026 17:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TERubTVO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC143C13F5;
	Mon, 23 Mar 2026 17:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774285719; cv=none; b=Tl37TLLvXoLKW0mUKvYYvHylbFuwvm+s4/EgzmrTQqpcX4jWedyv6VXoqx92hPWq0csPNOqxC7//IhtwWhC+lrwhhxGEJ9hhqPtA3qJHwinKNvCjXNIomTBnEnCVhr3knEIA0RCcpDMGOXXCDPbpPgnp78YtKIV5elAl0wEDC5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774285719; c=relaxed/simple;
	bh=dPmDSxkVnarJ68kZsni6DorU2/7rZzSUc1e9Nw0R/e8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iVLSYzB9x5AnY93XI32xd6mMHHQ/V43ITi3HbdmE+fPXDDcbUSd3NjV+8f/Laf4bAfUuFSSaXag4OkdYzL+kiekVV4kV8CES4QXuuP9zNKOgckRzex9fXRErk1SA5x6DJdAV0meuGmH1BzBKpgihRmdCC57vTStNoRDxovpc7Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TERubTVO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBD5C4CEF7;
	Mon, 23 Mar 2026 17:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774285718;
	bh=dPmDSxkVnarJ68kZsni6DorU2/7rZzSUc1e9Nw0R/e8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=TERubTVOquOh9RtVj2AYAWQjz24ue1gwdlNJFJsstaVo6X0QXvRAV75XEweUtL3TE
	 jKT2nUxp3mewLu1SqyiIY5c890pZ9IilWcCK/ZZ+2ClZ27IBSNjUwJYAGvI/8NHGKB
	 wJ5Ms02/LsJIdziCgg8CFzREWD3lvW3wpwduz5yTQ4qKK9X5zMxGPI1LJq8AxsjCT1
	 1ml7CxkvbOM/pEIXxlghWLnv4g8YuGJzkykIbQKZJ8qpK3425rVLgsfATgHU7Ca2Yi
	 zUA1rOdhHisQQdF6J7BJ2AefT7L9PyXDfv8X8ePKs7prMgUjJvVFM2uEfMDX1Go/xi
	 MbAeb1M5ngfPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BB6F483D5;
	Mon, 23 Mar 2026 17:08:38 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Subject: [PATCH v3 0/2] drm/panel: Add panel driver for ChipWealth CH13726A
 based panels
Date: Mon, 23 Mar 2026 12:08:31 -0500
Message-Id: <20260323-ch13726a-v3-0-e28b6f97fe80@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/02Py26DMBBFfwV5XVfjMX7Aqv9RZWHscbBUoMEUJ
 Yr497pQiSzvaM59PFmmOVFmbfVkM60pp2ksQr5VzPduvBJPoWiGgBoQgfteSIPacdV4rY0NSgb
 Lyvv3TDHdd6vPy6Fnuv0Ux+U4ss5l4n4ahrS0lbEqAnUYrQrkOzJeUGwcNYiNFBFEU8fokdhrk
 7Y6egjD3WPkN5+tUsCF9mA6LQOhbtea/cX3KS/T/NiHrWLP/9+A54ZVcOCkQARjSYByH9fBpa/
 3UnI3WfEEZQk9QSwgWudq3fmgA7yC27b9Aqa0rxNYAQAA
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774285718; l=2117;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=dPmDSxkVnarJ68kZsni6DorU2/7rZzSUc1e9Nw0R/e8=;
 b=jqAv7KMVuVgfPPR3QtSR2+udFYVwvNa+Tlci/MAv13jRE4tuiboaeD7hwdiTr3s4s/1gzgagU
 rLBFSn+LWUiBmAHoKUwEzHy+lp1D9x/CKGh0sOLeQ0EnkZRkWOSTGo0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279305-lists,devicetree=lfdr.de,webgeek1234.gmail.com];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[webgeek1234@gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,sobir.in,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5216B2FACDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This driver is based on the one by Teguh Sobirin [0], cut down to only
support the AYN Thor bottom panel.

Due to [1], the AYN vendor description patch has been folded into the
AYN QCS8550 dt series. Which means this series now depends on said
series and it must be picked up before this.

[0] https://github.com/AYNTechnologies/linux/commit/d0ff75b09e66023c5f88992706dee4601aa7a437
[1] https://lore.kernel.org/linux-arm-msm/c7fb3f89-6574-4761-9ef2-2fdf6d4801b5@kernel.org

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
Changes in v3:
- Reword patch 1 commit message for clarity
- Order properties properly in patch 1
- Track vendor description dependency series change
- Link to v2: https://lore.kernel.org/r/20260317-ch13726a-v2-0-28aa46bcd6d0@gmail.com

Changes in v2:
- Add Neil Armstrong to binding maintainer list
- Add 120hz mode, which required a minor restructure of the driver
- Link to v1: https://lore.kernel.org/r/20260222-ch13726a-v1-0-e501d78e105a@gmail.com

---
Aaron Kling (1):
      dt-bindings: display: panel: Add ChipWealth CH13726A AMOLED driver

Teguh Sobirin (1):
      drm/panel: Add panel driver for ChipWealth CH13726A based panels

 .../display/panel/chipwealth,ch13726a.yaml         |  65 ++++
 drivers/gpu/drm/panel/Kconfig                      |  11 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-chipwealth-ch13726a.c  | 339 +++++++++++++++++++++
 4 files changed, 416 insertions(+)
---
base-commit: 785f0eb2f85decbe7c1ef9ae922931f0194ffc2e
change-id: 20260220-ch13726a-59c6678d53d8
prerequisite-change-id: 20260217-ayn-qcs8550-16c07b63de26:v4
prerequisite-patch-id: 042cab8f04748207ba5395dd0f23c445955aaa2b
prerequisite-patch-id: 4e13275bfaa4f838a627fe8dfa3d4cb8972fc5b4
prerequisite-patch-id: 16c130bcfd7c787b91e828b8e600bd0d740f937e
prerequisite-patch-id: 4b7e6b017349c386f54e221790da4392fe066ff3
prerequisite-patch-id: 3844bef2eda3cf59031b1d131eb6ba9295629bb4
prerequisite-patch-id: bcb261e40f0386b91a09eb4080cbdf74d21f3df2

Best regards,
-- 
Aaron Kling <webgeek1234@gmail.com>



