Return-Path: <devicetree+bounces-289290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGdJEERz6GlCKgIAu9opvQ
	(envelope-from <devicetree+bounces-289290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 09:05:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BCC442BDB
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 09:05:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4CFFE3002B5D
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 07:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC0233F598;
	Wed, 22 Apr 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tm0DYXei"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4B72D060B;
	Wed, 22 Apr 2026 07:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776841533; cv=none; b=Kx0ZrzaD72qFAIWC21FVkJunOZCF4XRjq9Sk5dADrLJKq1tPi7qHcOrVEFBKUmpazX3U0ZMedAwj2s6rmftqQTwk3nIJJEXgo3G6e2A2Q+H5KvmegC8vUHF7cyJ2VrG7C4y3GgEXFmA5tME6K6KGsPkVuERjybTSk3eBQ+p2hlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776841533; c=relaxed/simple;
	bh=AlSwSDDgeC2hF4Q929lxXrzS9wWZ7U+8Ajj4sHAJpTE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S6W2edemuA9xAQJe2ggTYXa0Z0uLGOp5xLPMbkn5Tn6iD04LcXwJt/A67UKbqjJ2dFwY0KT+fYGOGVOVQQRKgWftHg/wl7fuC/r+Y0TW8hYTQO4j6lwYYqo5UnXIpVV56M+RIfq1kANJOrwkryo18Gft2AnQlnjvkSK89QPKw3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tm0DYXei; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13ADDC19425;
	Wed, 22 Apr 2026 07:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776841532;
	bh=AlSwSDDgeC2hF4Q929lxXrzS9wWZ7U+8Ajj4sHAJpTE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tm0DYXeiKP8RKdgpE0RxD+0PgxkKswX4FJoL2B8beXJ+RB9sd5AD0D/cU5W65VUNO
	 a542dS8zGBpm3SdvK7zosVQmi+1aC0/VRLw43puOF7mNDWZ/S00dBXHtBxSEekcBJX
	 oSmS2z98VsFpCBseVSVgTZ+vGH8+Ak93sEoOcxEp8T0tThgjGZIXXmHd2Q8ZTfAQ/f
	 me1FZzVto49G9r86XYOeRQf9F69tWD6ZX78gsxowMbrBhWDHVN8waphqJIBfZbSbi2
	 9EqOtn0huLwpXm0WYbbVXF92O+aG/LGtTE6MCe+YtOukTcTXsuFWqXFKSPMIASYWvj
	 RhOznfX//y16g==
Date: Wed, 22 Apr 2026 09:05:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Teguh Sobirin <teguh@sobir.in>
Subject: Re: [PATCH v5 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver
Message-ID: <20260422-resilient-puma-of-excitement-02fee3@quoll>
References: <20260421-ch13726a-v5-0-f7f6f4f30e05@gmail.com>
 <20260421-ch13726a-v5-1-f7f6f4f30e05@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260421-ch13726a-v5-1-f7f6f4f30e05@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289290-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 46BCC442BDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 12:38:37PM -0500, Aaron Kling wrote:
> The Chip Wealth Technology CH13726A AMOLED driver is a single chip
> solution for MIPI-DSI. This is used for the AYN Thor bottom panel.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  .../display/panel/chipwealth,ch13726a.yaml         | 67 ++++++++++++++++++++++
>  1 file changed, 67 insertions(+)
> 

I don't get it, you use b4 but still drop the tags (b4 gets them
automatically). Nothing explains reasons for dropping the tag, so I skip
the patch.

Best regards,
Krzysztof


