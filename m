Return-Path: <devicetree+bounces-286734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGJvBqJc2mkU0wgAu9opvQ
	(envelope-from <devicetree+bounces-286734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 16:37:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D503E05F4
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 16:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50200304CA58
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 14:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E25B38643F;
	Sat, 11 Apr 2026 14:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b="UkMhGpa0"
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.localdomain (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B372F351C20;
	Sat, 11 Apr 2026 14:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.81.229.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775918206; cv=none; b=Vhvb6a3Y0zpuWU8xjDoCXvYzQzsryZ8aehLIYtPB0aDs0v5qgXvARCVtDwWU7wI57QfR0OYo4AHuP8+f4kX0a05fEgXokJ4cOABnBHtVv7nDktGQhRXVykOO2rbct1pr9qdSt622opQuCuqJxEPUV5atNFg93tOsZDT/8V3H2zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775918206; c=relaxed/simple;
	bh=H3vb196Bonv2B64TrkyQotDmkvS/Tgm+20Oi7PQEDyw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oTRLVgStVDyIDI3nLyFnYiA6N9Fi1ipq0fxUNOPCjO/WTqyh8fy4mKE2Ul0O+TVQSFZbhtRTKCsNXxJ8bbEQuTvEI42o5O7rtLxBOVPt8HaR6eghvSTKI489nVLYHlPxDWCM3TZT3lIijuaa0TlxvhyW3Nii5ArOWZNUSXc/S5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=UkMhGpa0; arc=none smtp.client-ip=77.81.229.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chaosmail.tech
Received: by chaosmail.localdomain (Postfix) with ESMTPSA id C7A2D1CC197;
	Sat, 11 Apr 2026 14:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1775918196;
	bh=FV2KW+VzhC+bsnnWEGvRQPU2DOb0W51ZIph3TY9j7+U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=UkMhGpa0dzddIdSXbo0kBLHynv1yiKYSD/wKMj6lOOqfXaV7e1ZM7S2qiIqkkWaw2
	 6m7ZsNmhOu3Fa0zgJ2Gc+VfLHLwiQwIqDmRk+GwZ42nYzmbTX+Oeu2LBCnnxzf1934
	 CKTIksEQlUMl1kk0ZbrzzgoLLNrLMjTbPsJ/Imc4=
From: Sasha Finkelstein <k@chaosmail.tech>
Date: Sat, 11 Apr 2026 16:36:07 +0200
Subject: [PATCH 1/2] mailmap: Update Sasha Finkelstein's email address
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260411-mailmap-v1-1-5a519f7b00b5@chaosmail.tech>
References: <20260411-mailmap-v1-0-5a519f7b00b5@chaosmail.tech>
In-Reply-To: <20260411-mailmap-v1-0-5a519f7b00b5@chaosmail.tech>
To: Sasha Finkelstein <k@chaosmail.tech>, Janne Grunau <j@jannau.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sven Peter <sven@kernel.org>, 
 Neal Gompa <neal@gompa.dev>, asahi@lists.linux.dev
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775918195; l=1276;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=H3vb196Bonv2B64TrkyQotDmkvS/Tgm+20Oi7PQEDyw=;
 b=ct7uqOuq5sYCWgJLD8+EojNofW+gbwL+Za+lqMiLFXZldSDl29QDSuwNuSQ+tqJysQ7YBIGvv
 yUEJ3VuTAPKANgO/A/llvcH4bf+Hj4iz1ALNPsBBgXxc0424NHkzGfi
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chaosmail.tech,reject];
	R_DKIM_ALLOW(-0.20)[chaosmail.tech:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286734-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chaosmail.tech:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 72D503E05F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add mailmap entry

Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
 .mailmap    | 1 +
 MAINTAINERS | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/.mailmap b/.mailmap
index 22c5ab1c5d55..df3cd6a25780 100644
--- a/.mailmap
+++ b/.mailmap
@@ -733,6 +733,7 @@ Sarangdhar Joshi <spjoshi@codeaurora.org>
 Saravana Kannan <saravanak@kernel.org> <skannan@codeaurora.org>
 Saravana Kannan <saravanak@kernel.org> <saravanak@google.com>
 Sascha Hauer <s.hauer@pengutronix.de>
+Sasha Finkelstein <k@chaosmail.tech> <fnkl.kernel@gmail.com>
 Sahitya Tummala <quic_stummala@quicinc.com> <stummala@codeaurora.org>
 Sathishkumar Muruganandam <quic_murugana@quicinc.com> <murugana@codeaurora.org>
 Satya Priya <quic_skakitap@quicinc.com> <quic_c_skakit@quicinc.com> <skakit@codeaurora.org>
diff --git a/MAINTAINERS b/MAINTAINERS
index d238590a31f2..0d7a00ae3fc3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8668,7 +8668,7 @@ F:	include/linux/host1x.h
 F:	include/uapi/drm/tegra_drm.h
 
 DRM DRIVERS FOR PRE-DCP APPLE DISPLAY OUTPUT
-M:	Sasha Finkelstein <fnkl.kernel@gmail.com>
+M:	Sasha Finkelstein <k@chaosmail.tech>
 R:	Janne Grunau <j@jannau.net>
 L:	dri-devel@lists.freedesktop.org
 L:	asahi@lists.linux.dev

-- 
2.53.0


