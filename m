Return-Path: <devicetree+bounces-311541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FCOtAtBCL2o19wQAu9opvQ
	(envelope-from <devicetree+bounces-311541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:09:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F15682950
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:09:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=postmarketos.org header.s=key1 header.b=BtkmzVTj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311541-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311541-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=postmarketos.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C94923019388
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 00:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D93416F288;
	Mon, 15 Jun 2026 00:08:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D33513A3ED
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 00:08:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781482119; cv=none; b=sd7Cm8G5DFwTn2uXNevSZ0PM3OFjdsiIgSNdLKzCgMltt7zaH2SAXV1Jq1VCRc0mVcsPy2ISAbRorjZRVAf5QCDqRdlzUn2DFRcANje5FWxiGLN9LTu2JCxk+fPJrmTDysviCZ6X6baptOpeuG/V+jW2iPdSQW6n8fEEf/fATeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781482119; c=relaxed/simple;
	bh=g4LsE0oUeBORs6EP9fBGYDXKPlMpulzbsT65r0ihbYE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l1tBCZ9YELFU65ZO43vcUsTUJgTAMb1zf2KTOv9DtSBBUJT5Pgo4pNPh7CT3UUwSvWXrQlHRhS30RbX0uH+HLu9+qi+aR2GwXdf7pSaW95E5T+/xpSIrs1ug54b0kgdAuHBleu/lEL94QadFJnPNdnD4bEoaeyGh4NJKRR6KQnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=BtkmzVTj; arc=none smtp.client-ip=91.218.175.183
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1781482116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8LFnjM2WcVsdQ7iGTQq/KkiMHSRoGfQrE7FIyOH5nQI=;
	b=BtkmzVTjRUnJvv+bFzzpEz906LMqB1HG/liAPHwyakSv4lmEeRzd/U2F36xmqyJKKTRtgJ
	nhPigEg+HrP9cg/HQ9zMa+jvJyFgphEDzBn288kzaVGk5Dt3CH+/6UhXC5dShioZuHBN0R
	4tljkMvhHBH/FXcyziQhzzz4DrpYpFuIjkc1KjpGWBhyJ++A2gpYnTyrQpwYkc4EUk0dGR
	vkYv/a49C77Q0izK0i/q2ZCzJv0gP9EZhOHdWjso+iuXRk+d5ygW0uP5d8cGHiGRLulIhy
	GFWfPSVaU0k2sdhZm69Yx13PB+Ez/llKEZB3pks3CiKQhDxcn9KJlPHVjghnQw==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Sun, 14 Jun 2026 17:08:01 -0700
Subject: [PATCH v3 4/4] Revert "dt-bindings: display: panel: panel-simple:
 Add lg,sw49410 compatible"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260614-judyln-panel-v3-4-07f4134441bd@postmarketos.org>
References: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
In-Reply-To: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Jessica Zhang <jesszhan0024@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>, 
 phone-devel@vger.kernel.org, Amir Dahan <system64fumo@tuta.io>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781482095; l=1194;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=g4LsE0oUeBORs6EP9fBGYDXKPlMpulzbsT65r0ihbYE=;
 b=yU0bx3nb755hToRHoxxFdjdi+4LOx+YcSylY4MqtdPtN5OS/CYDBNw34gllXFO+2yNtZtt7rA
 KG8sc6lXygsAiNgHjhjESTiPrrNjzVxUBo6YnAPHnuC0lrWhYwdEYyx
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:jesszhan0024@gmail.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:david@ixit.cz,m:phone-devel@vger.kernel.org,m:system64fumo@tuta.io,m:sajattack@postmarketos.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311541-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ravnborg.org];
	FORGED_SENDER(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,postmarketos.org:dkim,postmarketos.org:email,postmarketos.org:mid,postmarketos.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73F15682950

This reverts commit a74c2e55ab66519ffa2069ac9ae83cd937bff4c4.

It isn't actually panel-simple-compatible, and we knew as much by the
time this merged, but I guess maintainers needed something to prevent
the dt-bindings error going off while I was working on these patches.

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 21453f0d7ce2..58303a767a36 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -204,8 +204,6 @@ properties:
       - lemaker,bl035-rgb-002
         # LG 7" (800x480 pixels) TFT LCD panel
       - lg,lb070wv8
-        # LG 6.1" (1440x3120) IPS LCD panel
-      - lg,sw49410
         # Logic Technologies LT161010-2NHC 7" WVGA TFT Cap Touch Module
       - logictechno,lt161010-2nhc
         # Logic Technologies LT161010-2NHR 7" WVGA TFT Resistive Touch Module

-- 
2.54.0


