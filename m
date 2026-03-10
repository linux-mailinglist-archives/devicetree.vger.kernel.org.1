Return-Path: <devicetree+bounces-273261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIePLf+fr2mvbAIAu9opvQ
	(envelope-from <devicetree+bounces-273261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:37:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 51661245460
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:37:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4591B308ADE5
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F7D3A900B;
	Tue, 10 Mar 2026 04:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="qJUzj50G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43100.protonmail.ch (mail-43100.protonmail.ch [185.70.43.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CBA2C21FF
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773117417; cv=none; b=NE62BI3Et+u16JF/GLqc4C1ltJN0dQhxPmvrBYyNxazaLm8yt0xXbqtP6iO4z5v5NEWZzE7n9hBX+AYwyrJ9XWuaUW9BRo6hkZJPle7dnfA/aLvwd+ktahjEHcDrT5NdoaHEbsGJ9PNh/VDJp+D/DB/lkfo7TU9jIkXtcrrnb5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773117417; c=relaxed/simple;
	bh=vTu70FHNZATQFKfsW1xalsh6YEtJJyGVYX1VgkL4q6g=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=GSXBGLmuVUl7eKia253XNPqC//pEowDXWwPcf1nRvYHDDW6ExHtCvadX6qs0JclYNO4JNBN7Ftp9mOsVED63HplDvd72DegVZyZMaTzPfvHMfkW0Vx5aLoNCRgp7ZNFvytMex+6+mYwJszdxgDmpT9IZKewqqkUY4XxK479ytzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=qJUzj50G; arc=none smtp.client-ip=185.70.43.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773117412; x=1773376612;
	bh=FIgNb5G83uGjJc0WkROkEqSBVZFXGoy77+URZMiZKaQ=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=qJUzj50GK23ypWbYgdPxEIMXXbIlRbTXaj4RauFst8rLYmlBIRYbmw+Q6Z67naCGa
	 dM3T2OgRMwdNQ/6QfMQ+cYyTOiC1aJRDfstXVXvereYl3P0Gv92pLJA5/SoZOH+oMI
	 WmzzOkMA4gsOUR1jErlBDtkLRDq3I1k/KxY3rv+PIuM42Hh8AC9Mkl3T6BDN3A9Wpd
	 2BgPWgfdjaW22dmFm001zG4QY3rWBxMeVtO4Q7Mkto+o3MdFdQ+5XJKIr94Dn9iffj
	 EMV6wMcOtfo3kx3TI+e7GGXDK9XfJ64qZzgmyxMMBBIGZxtCcRMaHeen974ELMIjpZ
	 fr/xLgXQvu6Uw==
Date: Tue, 10 Mar 2026 04:36:49 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Add support for Tianma TA066VVHM03 DSI panel
Message-ID: <20260310-tianma-ta066vvhm03-v3-0-fc2938971d79@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 154ee92db062f33a131b95c098b176eecd049d51
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 51661245460
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273261-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Action: no action

Add dt-binding and driver for the Tianma TA066VVHM03 6.59" 1080x2340
AMOLED DSI panel with DSC compression, found in the ASUS ROG Phone 3.

This panel depends on slice_per_pkt support currently being reviewed:
https://lore.kernel.org/linux-arm-msm/20251001135914.13754-3-caojunjie650@g=
mail.com

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
Changes in v3:
- Fixed From/SoB mismatch
- Link to v2: https://lore.kernel.org/r/20260308-tianma-ta066vvhm03-v2-0-5f=
2344685133@pm.me

Changes in v2:
- Move additionalProperties after required block in bindings
- Link to v1: https://lore.kernel.org/r/20260308-tianma-ta066vvhm03-v1-0-86=
9fac443b20@pm.me

---
Alexander Koskovich (2):
      dt-bindings: display: panel: Document Tianma TA066VVHM03
      drm/panel: Add support for Tianma TA066VVHM03 panel

 .../bindings/display/panel/tianma,ta066vvhm03.yaml |  67 ++++
 MAINTAINERS                                        |   6 +
 drivers/gpu/drm/panel/Kconfig                      |  11 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-tianma-ta066vvhm03.c   | 387 +++++++++++++++++=
++++
 5 files changed, 472 insertions(+)
---
base-commit: 1f318b96cc84d7c2ab792fcc0bfd42a7ca890681
change-id: 20260308-tianma-ta066vvhm03-a72bd18f2b3f

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



