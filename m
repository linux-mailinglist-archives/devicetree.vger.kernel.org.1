Return-Path: <devicetree+bounces-267198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MACMIAmDm2k60wMAu9opvQ
	(envelope-from <devicetree+bounces-267198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:28:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9BA17094F
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:28:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BE70300CC05
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A35D335CB79;
	Sun, 22 Feb 2026 22:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDJn+Gvj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDEF1DF748;
	Sun, 22 Feb 2026 22:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771799302; cv=none; b=BWOgQoDVeBiXIAzLfvHRVTllIqO3eiND13mhtKD22QX029UXN52HrD6OzLMd/40aOaad4b5hKe/Dt2XG/WCMREUG+b39iYfqYaIDjTcdFniGLsfY/TAozwh7BkuckijM1Cz4/tBKmQpdC5+B08gG6OO8QPOdrTQEcwAhekMoVdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771799302; c=relaxed/simple;
	bh=TCIGixUhPyc/6Ro93xL9qSO+umxyc2HQT+H3bVMe/C0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=V4hQNZUXAVSHKrFKhxseD6IkSUXfUKUa9GC69+xwGyOjyUZblFYWo9RLf+TH4F8GSFqXditaFealN1ntJ1El7cX3LfQM1Zs6hQVneqUVAjvHcHRdgxi1WJd8yMfZLxk+ok61c500oyBUt3SWVdf8Ws3xwHhOfmVD7hq2lmfK3KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDJn+Gvj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C58AC116D0;
	Sun, 22 Feb 2026 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771799302;
	bh=TCIGixUhPyc/6Ro93xL9qSO+umxyc2HQT+H3bVMe/C0=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=tDJn+GvjX+Ekt4PiBD36A8omAg5P16H4ELWNmaT7KKQ0vEyVXb3YQkl4YrXr+h7cR
	 fvLIybky/5bv3vRmCJCGVQUpOFI08bXGAsSd1TOtbTIkTw6WR7x4zDEZndHxXMF8P6
	 gKkxQ2gBe9FnfHR6A0bne8j2IqdmEtDRCkpnom7uILhOCyRK8GDSKcVFiS/TBtY64r
	 4s57wHQsGBcbd04v0p2pTKdePXWQILXZ/ZVy91Pv0r2RhGleahzgFPGqEI4F8NmrsG
	 mW2fZ2RyuR8L1an1WrikTbww/emaOQmNgdjnnf5eDyu6+wwSroA4pNOzX8lpt+NYIC
	 bs4sMyOZfZoRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07D18C6369E;
	Sun, 22 Feb 2026 22:28:22 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Subject: [PATCH RFC 0/2] drm/panel: Add panel driver for ChipWealth
 CH13726A based panels
Date: Sun, 22 Feb 2026 16:26:21 -0600
Message-Id: <20260222-ch13726a-v1-0-e501d78e105a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/02OywrCMBBFf6XM2kBn0kkfW8EPcCsu0sxUs7DVt
 BZF/HeLiri8Dw7nAaOmqCM02QOSznGMQ78EXGUQjr4/qImyZKCcXE6Um3BEW5LzhuvgXFkJW6l
 guZ+TdvH2Ru1gu1nD/lMmvVwX7PRdWj+qCcPpFKcm67RWq9I6T8iMLIhFJZY8h6LgwK1IWaPr4
 F+nyX4y/t6bWXsZkvHIFl0VqG6pmRH2z+cLoxZ8i90AAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771799301; l=1537;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=TCIGixUhPyc/6Ro93xL9qSO+umxyc2HQT+H3bVMe/C0=;
 b=rvuCTiLbZy3EM+/1YR1yOEHTd5chLZ1ZaOcCiH44aWtS8Ub3VDjbZAJYDn05lS5aPLW4eZFRM
 3aMBaFSNf5VA8zRTx3VrpliWirfgwajVbtDo9kt0dOUUQkxxOep19Cd
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
Reply-To: webgeek1234@gmail.com
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267198-lists,devicetree=lfdr.de,webgeek1234.gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CD9BA17094F
X-Rspamd-Action: no action

This series is marked RFC because there is no ongoing maintainer to
list. I am willing to put in the effort to get this submitted in a good
and maintainable state, but I cannot promise ongoing support for it. I
see that Neil Armstrong is listed at the general panel maintainer. Is it
okay to list you in the binding? If not, is there someone willing to
take over once this is approved for merge? There are three more new
panel drivers related to AYN qcs8550 support as well.

This driver is based on the one by Teguh Sobirin [0], cut down to only
support the AYN Thor bottom panel.

[0] https://github.com/AYNTechnologies/linux/commit/d0ff75b09e66023c5f88992706dee4601aa7a437

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
Aaron Kling (1):
      dt-bindings: display: panel: Add ChipWealth CH13726A AMOLED driver bindings

Teguh Sobirin (1):
      drm/panel: Add panel driver for ChipWealth CH13726A based panels

 .../display/panel/chipwealth,ch13726a.yaml         |  66 +++++
 drivers/gpu/drm/panel/Kconfig                      |  11 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-chipwealth-ch13726a.c  | 296 +++++++++++++++++++++
 4 files changed, 374 insertions(+)
---
base-commit: fe9e3edb6a215515d1148d32a5c445c5bdd7916f
change-id: 20260220-ch13726a-59c6678d53d8
prerequisite-change-id: 20260220-ayn-vendor-a153168c29b2:v1
prerequisite-patch-id: 042cab8f04748207ba5395dd0f23c445955aaa2b

Best regards,
-- 
Aaron Kling <webgeek1234@gmail.com>



