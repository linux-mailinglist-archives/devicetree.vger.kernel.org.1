Return-Path: <devicetree+bounces-310351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ul1OAVORKmpHsgMAu9opvQ
	(envelope-from <devicetree+bounces-310351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:43:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB2B670F3E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:43:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KyYzxx0f;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310351-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310351-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B08B3244679
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB573CE0A3;
	Thu, 11 Jun 2026 10:40:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AAD3101C8;
	Thu, 11 Jun 2026 10:40:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781174442; cv=none; b=hZtOIr/QZHZY28hGJkXoJvX1mdJlRQqk3K589+1DJg1iNJhTnRX+ww2bw7HsWPM7zhag3uqmqy4KBWzMPZGb71OeJBtaDjnp9ni8YloAkdX7aaTMSAkA8+Wyw9EG0NJ8IK2YiDpxDNGos+u7Tb/kypZiMUf3zbKa8WhgwB8pAbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781174442; c=relaxed/simple;
	bh=WBOLGMgF1eH6uYKXL2tqLm6o8+XndGv9Hqtsk7f7XmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NP66PvvcA6OfQy+8oRUYFxp/0FADxqXeXjrZN+q+bWEYFn0jBe9y+h4Kxx5y997pjA6vTGtSWBg7hFjYKJ2VmM1Z7U7smRyb9v4IIr2oJwoWuGBwHgq6NmrULlo9XXGDJj2iRDWKdOUl7NZm9HNwGT3hkDvLXRVr4EjVJgNjbtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyYzxx0f; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E4B11F00893;
	Thu, 11 Jun 2026 10:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781174440;
	bh=mFvpcmVUxhChdO1k+pqgD/FbrPsh5HOLEY52Z+y2R3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KyYzxx0fyG9gNFIpHCI2SnaN6tznDHjSPizm1cTYZpzn9C0m1ZfHFAQXa5J3dVe3Y
	 FYpDcNVERnFh0GNUodI8ZPk8WFR1cRmykmKmf23Ab2YwkxUrN/4dmcK32SH1IhvS84
	 Q8of3530c59a3MEh1asLDfEamZ1sj04R7H9/Bi6JLqzE1VCqBiRVGxkguIHPLfftr2
	 OfaF8+7vaz7ACSqxAufJsrWDAXdN4bfWyhQ4UYbuOT5+e23yFq8z7xNIzAb0W8wYMS
	 QxJhFhKqgLsy/P41ycqR4EgVe8iWvk9rC5kfwU66XJ2xf8Myn4GMrxa/Afpd7IxV3u
	 0JVBI6ItJKLsQ==
Date: Thu, 11 Jun 2026 12:40:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mohit Dsor <mohit.dsor@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, boss@oss.qualcomm.com, qc-display-maintainer@oss.qualcomm.com
Subject: Re: [PATCH 1/4] dt-bindings: brige: lt9611c: add port-select
 property for LT9611C
Message-ID: <20260611-burrowing-fervent-serpent-584cac@quoll>
References: <20260611-lt9611-b4-send-v1-0-42abbcd3bb1e@oss.qualcomm.com>
 <20260611-lt9611-b4-send-v1-1-42abbcd3bb1e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260611-lt9611-b4-send-v1-1-42abbcd3bb1e@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mohit.dsor@oss.qualcomm.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:boss@oss.qualcomm.com,m:qc-display-maintainer@oss.qualcomm.com,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310351-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,ffwll.ch,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AB2B670F3E

On Thu, Jun 11, 2026 at 02:44:56AM +0530, Mohit Dsor wrote:
> Add a new optional `lontium,port-select` property to describe the DSI
> input port configuration for the LT9611C variant, which supports
> single-port (A or B) and dual-port (A+B) operation.
> 
> This property allows explicitly selecting the active DSI input port(s):
>   0 = port A (default)
>   1 = port B
>   2 = ports A and B (dual-port)
> 
> Signed-off-by: Mohit Dsor <mohit.dsor@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/display/bridge/lontium,lt9611.yaml  | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
> index e0821a63d9d7..77220f893bf8 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
> @@ -41,6 +41,17 @@ properties:
>    vcc-supply:
>      description: Regulator for 3.3V IO power.
>  
> +  lontium,port-select:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2]
> +    default: 0
> +    description: |
> +      Selects which DSI input port(s) the bridge uses. Only relevant for
> +      the lontium,lt9611c compatible.
> +        0 = PORT_SELECT_A  - single DSI port A (default)
> +        1 = PORT_SELECT_B  - single DSI port B
> +        2 = PORT_SELECT_AB - dual DSI ports A and B

Why graph is not enough? Seems exactly duplicating the graph ports.

Best regards,
Krzysztof


