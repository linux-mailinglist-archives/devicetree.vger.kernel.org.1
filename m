Return-Path: <devicetree+bounces-272634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHw5B3nlrWlU9AEAu9opvQ
	(envelope-from <devicetree+bounces-272634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 22:09:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E99C232433
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 22:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81A65300A12F
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 21:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209F634EF09;
	Sun,  8 Mar 2026 21:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="AJ7QOsxI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DD43502A9
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 21:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773004142; cv=none; b=qAWO6lq5NGRSNBXPqIhw1KOSH6l314fSl2q8S6C5pqj0JP4JTJrQ0x/lTP11qt/HsRFH4YuyN17iKRMAv/pQzDcUs/Y/vVJifAEMtEhRJhNOY2tzLeLMvEPaCGHFwtAsbNlEptUEK8iaeQfKgiYICxhss/g8f8o+olsxj+6XSx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773004142; c=relaxed/simple;
	bh=WDbjfnWff7MayD+DvVe4HFDX8oesSXCyCcxFs3iM9uU=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=b8GrhDpmNPUv4+NNmx5v3501OIpe5IOSvExr41rtjaB5GSSyex+pQUJjXgcNqi2Tc0e+RcxFA810r1yxsD1Y7JC3hPf0YlWgP/DnFUhkovo3MoXemt37uzlXM9E+9WpqWVy3RyaZ+zGg2EEnTqmE4lyHzKMbA3KP4ypvkccOPh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=AJ7QOsxI; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773004138; x=1773263338;
	bh=ZvbO2mKkFd2WPwXszQZjSCCrSJB0lBt+ZKoqwzQGlqc=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=AJ7QOsxIMsYxuP7ximH5lReAzsPliI1xPxxFlLDTuHrQCcaUA3FWtocnZMcg2IWHP
	 Yt0TrXWgqBmPGQVKBV/43750o+P6vEj/d+fxYG9/mGnDqbOM2IJ21Ip87pFFBV55Zb
	 TT9RRMcB2pwuSbeXPtnib56qsyKhYBeYsOVHtY8xPJMwbCYPoCC3m7knM5TWugAT8B
	 drpvaA9dF03MxzUqu922aId1V0bGxlKSEsj7hECJ31M55RJlSGgw5wR2FrDaC+/Wuf
	 BgRb64nsSC8XO0eNfGq6FeUxMXXhCBerHZ3mmE3clHxqwfo810oUIktTfAAs/r/ux5
	 oOi9IcKT/kL7w==
Date: Sun, 08 Mar 2026 21:08:54 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Add support for Tianma TA066VVHM03 DSI panel
Message-ID: <20260308-tianma-ta066vvhm03-v2-0-5f2344685133@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 8bcc0548fb21c8015f383be9d4775c96812b6412
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 5E99C232433
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272634-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[AKoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Action: no action

Add dt-binding and driver for the Tianma TA066VVHM03 6.59" 1080x2340
AMOLED DSI panel with DSC compression, found in the ASUS ROG Phone 3.

This panel depends on slice_per_pkt support currently being reviewed:
https://lore.kernel.org/linux-arm-msm/20251001135914.13754-3-caojunjie650@g=
mail.com

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
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
base-commit: 11439c4635edd669ae435eec308f4ab8a0804808
change-id: 20260308-tianma-ta066vvhm03-a72bd18f2b3f

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



