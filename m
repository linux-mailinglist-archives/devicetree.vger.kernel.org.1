Return-Path: <devicetree+bounces-264713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEwlDMJUjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:06:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CADC123264
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 93CAB300F192
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 782B72E2679;
	Wed, 11 Feb 2026 10:06:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F842D6407
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804415; cv=none; b=ZkU23ZcMjhWUkVFCfK/j1Vya/dQ1EHhPdA/BbwivfBZq9jJ6wpPetarf5Y4v8B5YecM2fvHAfS2HWfpazBObYKZ57D79oMHikytloRoLqG9sRf7K4G56mGByOInzkdRbMZyLiRsaUJNTyu53eONmM270C5V8uNCOTWmA3KS5ZTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804415; c=relaxed/simple;
	bh=Hb/JO0glctDzr0dRcG+swAQvWcCAPs5j2mdEbqKTtCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X42MiPMjUz7F8OAtukNLG+s/0I+RTIAhE+UPxfInbtKwVyUvTucyz6zi43nAIEv6zhYUXxOpd/5Mnef3MDuQ4qmCTgq/CjAlfBw42PPaxxLhrJsqQX5ffJ09xdIKGKvblY9qkTQJiNlIo1rTg13fdQSPyEwK6DfgSn/KCL7Telo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vq77A-0004fn-0o; Wed, 11 Feb 2026 11:06:32 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vq777-000DzO-1j;
	Wed, 11 Feb 2026 11:06:30 +0100
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vq778-00Bqev-2S;
	Wed, 11 Feb 2026 11:06:30 +0100
Date: Wed, 11 Feb 2026 11:06:30 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rouven Czerwinski <r.czerwinski@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v3 2/3] dt-bindings: display: panel: add YAML schema for
 LXD M9189A
Message-ID: <aYxUpoWETYB9vaK2@pengutronix.de>
References: <20260210-drm-panel-ek79007ad3-v3-0-cd2974d56937@pengutronix.de>
 <20260210-drm-panel-ek79007ad3-v3-2-cd2974d56937@pengutronix.de>
 <20260211-practical-coyote-of-awe-0dc0a4@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260211-practical-coyote-of-awe-0dc0a4@quoll>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-264713-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: 9CADC123264
X-Rspamd-Action: no action

On Wed, 11 Feb 2026 07:28:55 +0100, Krzysztof Kozlowski wrote:
> On Tue, Feb 10, 2026 at 12:22:33PM +0100, Michael Tretter wrote:
> > From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > 
> > The LXD M9189A is a 1024x600 MIPI-DSI panel.
> > 
> > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> 
> I do not see any improvements.

Changes in v3:
- [...]
- Use panel-common.yaml as base
- [...]

This change addresses your comment on v2:

>> You should reference proper panel schema in top-level.

I changed the schema to include panel-common.yaml as a $ref. Did I
misunderstand the comment?

What else needs improvement?

I am confused and any guidance would be appreciated.

Michael

> 
> NAK
> 
> Best regards,
> Krzysztof
> 
> 

