Return-Path: <devicetree+bounces-266584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2T0OHKvAlmmzlwIAu9opvQ
	(envelope-from <devicetree+bounces-266584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:50:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D058915CCBC
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:50:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55DAA300E277
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36623346AF;
	Thu, 19 Feb 2026 07:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdJwyZ47"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9193D33436A
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771487398; cv=none; b=psBzXBAr05hUU1UZR80/j60VyhcUVJ0GtJHBDmR78kTz4sLkOD7zKZVjFbNNzj60ROoRKnVadnm0w2663Th9xlYjYbICbiFEa9ZvNVexk5fOq/57MSvJG6E8159aaBbMADU1QcX3unR5cvbqBsaY3CVAQNUZV00rA7SJsLM1htA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771487398; c=relaxed/simple;
	bh=ZTsJZQGNGuNyEZqHtlkF16M63qPvKht4Gw6M1DOfbDM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YyIGDYH/KGSBDLkU1Qw28+eNSgEuOUfvGRC11tpJVL8+RRfNRQuh1rd3WG2KzHUMfMn5F7sc8b1U988f9d2LTmPr/D5ntAfZ+YTwaF9UdiX/ZlYUSw3nxB1buex+SASqjDOKGCKL/eZ4FNNePMw2447gkewdw4U9jkfPJqqp+6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdJwyZ47; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85379C4CEF7;
	Thu, 19 Feb 2026 07:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771487398;
	bh=ZTsJZQGNGuNyEZqHtlkF16M63qPvKht4Gw6M1DOfbDM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tdJwyZ47qnFcMs2kXrzQKabmrgHl6qFrpwkx6c31Nvoc1WNs9TGGRuVeY8VL0vfTQ
	 ZQD9sTldH+YlqwchYTYmSC1CAHnOLqakR9E1dYxjS4bHLYIhvgDcV67THtT9w3e6IC
	 5OmUjUFxryetq+Kld6RI8o9DJmJqBkpOm7yJqrIsswmQWXjBHeWjmam9rU1D8eKBCM
	 +Nk97alkgcgRLmCof1xEUSNf8fmKjYDhpCnSP4oZSe16xXm5oMtfnNuQ3xdd/9y2h6
	 8rC5AYFBLCvd72rXGT1tSx96/TCHL9Cc26nIu1wpgEuYcv2ow0U3toQi5XqzY0J7md
	 k0iWXdkw5YM3w==
Date: Thu, 19 Feb 2026 08:49:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rouven Czerwinski <r.czerwinski@pengutronix.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de
Subject: Re: [PATCH v4 2/3] dt-bindings: display: panel: add LXD M9189A
Message-ID: <20260219-overjoyed-koala-of-warranty-bbcc73@quoll>
References: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
 <20260218-drm-panel-ek79007ad3-v4-2-8ec448bf3ede@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260218-drm-panel-ek79007ad3-v4-2-8ec448bf3ede@pengutronix.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266584-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D058915CCBC
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 10:12:05AM +0100, Michael Tretter wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> The LXD M9189A is a 1024x600 MIPI-DSI panel.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Changes in v4:
> - Remove "YAML schema for" from subject line
> - Make backlight a required property

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


