Return-Path: <devicetree+bounces-266281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCTDCoPPlGlGIAIAu9opvQ
	(envelope-from <devicetree+bounces-266281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 21:28:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE6114FF6D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 21:28:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20A67304C7FE
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3608436B074;
	Tue, 17 Feb 2026 20:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9lqDfIG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1197B1A9F91;
	Tue, 17 Feb 2026 20:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771360006; cv=none; b=P/3XGCY/72yWNGTBKHmhEoj7x4+yNoQBLvpIcglWo26ftnf+lagp1IEloFgOutkgqkmBr5COTg/hJjoy2uYJ7zXIUE7ynyTpZ9LfC5So81Xm93DFB6MRv8OZavDQ4UqVWqH67ZTN/QTfDMt+HGRJzFHBWCLbmSLaCtSHLrCZpB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771360006; c=relaxed/simple;
	bh=TfqrVkjjhQ67a7UsK1c6lgmC8THfQq3eSm+drD+TQ28=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gNfDw2vg4RXFY442J6SsMGNQZb1dn8GJlgiy17Y9n+mGfyLBY1sXucjqnfKSU2bDcxwvv/UXiMZ9SCJHZ1yWQ9jsyrIX+wOWRPGy86FykukGT+RpzV/+ek5PluHDjOuwEef3+BOJiOSRnaZFSoIbzclD7A++SlJC4kmWsm2m8lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9lqDfIG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ECA9C4CEF7;
	Tue, 17 Feb 2026 20:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771360005;
	bh=TfqrVkjjhQ67a7UsK1c6lgmC8THfQq3eSm+drD+TQ28=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O9lqDfIGImavMes8hSxkv32hGSnFhtd7sW3epyRa6pqd3ScI4T77tMGVq5ly0bV7v
	 BBLpivkPZqL2/XolV0zJuAMihHalyvNIinAy5hN/wYPxsdeJSI2AKjKNpGLJDtFw7e
	 /UXQ6X3h4k40kkHxkmN1TNt8drISWfi+XmA5K6CN5zUUvERjcVhX3Ot/j+9fFwe0mm
	 ZPAmvs6nYu8Y5+l8/MsGGecQ1VvGkSGwiYG+EMuW/kLGWX44g7CF0FJY4U9pS5Zkye
	 F990Xc/7HyRZDvQcILoR+oltQe07QfsCX8wWLSOLLrsWYTGTWYpnc5IUhvO21oTVZU
	 PaTBk5GSG9MLw==
Date: Tue, 17 Feb 2026 21:26:43 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Val Packett <val@packett.cool>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>, dri-devel@lists.freedesktop.org, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: display: panel: Add compatible for
 Holitech HTF065H045
Message-ID: <20260217-massive-juicy-shrimp-2d32fd@quoll>
References: <20260217070121.190108-1-val@packett.cool>
 <20260217070121.190108-3-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260217070121.190108-3-val@packett.cool>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266281-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,huaqin.corp-partner.google.com,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7EE6114FF6D
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 04:00:10AM -0300, Val Packett wrote:
> Add a new compatible for the Holitech HTF065H045 panel that uses the
> Himax HX83102 controller IC.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


