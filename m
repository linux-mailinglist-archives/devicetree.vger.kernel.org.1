Return-Path: <devicetree+bounces-257775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DlmOhaGcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:53:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AB95253171
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:53:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1E0394A51B6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:53:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF90449ED5;
	Wed, 21 Jan 2026 07:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrLUyyKj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE92423A83;
	Wed, 21 Jan 2026 07:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768981993; cv=none; b=ae9euTm3mLkbnIoMj1zH+XvQwv10E1u2gPUKTwCTBi6FI2KtlM0Wpk9H+VybUkNDGSaImFmzJlBFH3CnY3SFEcySc6SOW+Py/sc330yb22YtmtSvNnHxcKrzPFzUQ8LNFHXPVdNR3QbBbd5msbjdUUM8e0QyPAhmphid6hDMlcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768981993; c=relaxed/simple;
	bh=EaisnaD8iE3unAUvY1F/jFNMAsTnHJXqYDdDGtwKxbM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k4G4lQ6AmrVH801EAx6ulZt3p4dlr0g8pi/w/HZ2HbztK/LUJ/aVUK0wrXM2E6LlsLyCpMC4Rq2q6i8Zqc8weh4vH6CBbNZqvBJ1D8vtnWcbibj4LLStE+DsGWMZ18ROWbIt7ELNPD192GwNhquUbkNPIGhKYAUDNGgMPOvFpqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrLUyyKj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7812AC116D0;
	Wed, 21 Jan 2026 07:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768981993;
	bh=EaisnaD8iE3unAUvY1F/jFNMAsTnHJXqYDdDGtwKxbM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nrLUyyKjpnjiIcX3XT83at5lTvnjVHx4H64Q6ISlZaTKJWqZBddajoFglhaH7Kl3E
	 yXQWLFP9vyMJwkH8mXeRw0JXpy06zl+DxiUQZLHVdlIKFIk2s14az8d7zLb5ub0rPL
	 cAbD+GlMja0qqKYCCkTXQ7q+a0Rao2NSKw2IZWzHuXPZE+6wpEwz4NARyLK5kOC95R
	 Qg/tZU36M8ienNjGnLXlryrOZD3IRxo2D5vyeyRE918NzDGCWlbopWSXP/VPRVaYPs
	 iwuFy1qoN5qpFac+2DlTZqevZ7RYRovYd95youmYRpshUmy0blgxxxWWVa/g3KnMfL
	 uHQgsMNMKpXhQ==
Date: Wed, 21 Jan 2026 08:53:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: add EDT
 ET057023UDBA panel
Message-ID: <20260121-hysterical-bear-of-hail-79ddca@quoll>
References: <20260119-v6-18-topic-panel-simple-et057023udba-v2-0-3c73f0c9d87a@pengutronix.de>
 <20260119-v6-18-topic-panel-simple-et057023udba-v2-1-3c73f0c9d87a@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260119-v6-18-topic-panel-simple-et057023udba-v2-1-3c73f0c9d87a@pengutronix.de>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257775-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[linaro.org,oss.qualcomm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org,lists.freedesktop.org,vger.kernel.org,pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: AB95253171
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Jan 19, 2026 at 02:44:42PM +0100, Marco Felsch wrote:
> Add EDT ET057023UDBA 5.7" 24-bit 640x480 DPI panel.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


