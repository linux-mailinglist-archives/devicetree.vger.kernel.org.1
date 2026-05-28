Return-Path: <devicetree+bounces-303672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UL+BNzHxF2q5WAgAu9opvQ
	(envelope-from <devicetree+bounces-303672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 09:39:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B04B5EDCAD
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 09:39:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51E2E3017252
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 07:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3628A34041C;
	Thu, 28 May 2026 07:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVp+0DpW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268F33195FD;
	Thu, 28 May 2026 07:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779953965; cv=none; b=T3i82t+IXMv9BpnjcGVhJrx2kAs7lUg+XwIgh6LzO6EJ1vmueorduoQ2D23j0b8Kqg0JHdJoCYT2ttRrT3XxDrDzUL01B0OwGSz/uXflda5efN2AUifKTgsoKSnv3lpyaVWDprR+WpMTACe+0X35aqai2USLeUe52yz9jPWGx/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779953965; c=relaxed/simple;
	bh=RX0ZSMCmsmI0opbzO1NxUIs6BQ4DN8yWkG5BYekBfho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ryIMbQkc1tGWioeUWpewmIUdrNzGQxytCYh5BdiCho2V8AEqj/49Rjh8ayeXxustG/AqA6xBzeKztX+2pnRbJbFSA44FFkKILsewHLQIRGOD0yxdIC8/J39jNIVQ2STdRDSB5cSV1lfxYl4kymk/xdpMSednta1Qs0XpkiL0vMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVp+0DpW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F3711F000E9;
	Thu, 28 May 2026 07:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779953963;
	bh=DSIjaXcduwNYBJCQrGtQKLo8lAav4xOuWF8oe+nqQKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SVp+0DpWalSi7cdfdBP7UfszYqPQZkiQ6CgIvR+C5PufGehp6wsNS7S0VM2rKBmmi
	 UWPJQ3vKqm4RBEeXpGml01oRpLdtxBrfoZE4yUPu42w4GaJ55oYmHGmjzNFf3PGRCA
	 sOW11CJnfQjqtcUV77j8BsSdZ/gqZBY8L9IAILV5OW0GRpy0hOWKZA309StDLK/L4h
	 NUg72vfoIBA6+gHaG31hdWQwRHkL/TT2QMtgb45jKE8hkvIfSc1oHiH8ZKnTOt+WZU
	 PT1RzASgc0m3MkFpvyB4E8THmx3kdhkOLj3wDel4jEsQSSH6UUNCzlfXlf3no34duc
	 tpNlVtxau+9RA==
Date: Thu, 28 May 2026 09:39:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux@ew.tq-group.com, Alexander Stein <alexander.stein@ew.tq-group.com>, 
	Ying Liu <victor.liu@nxp.com>
Subject: Re: [PATCH v23 5/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
Message-ID: <20260528-nice-bronze-cat-19be71@quoll>
References: <20260519-dcss-hdmi-upstreaming-v23-0-5615524a9c63@oss.nxp.com>
 <20260519-dcss-hdmi-upstreaming-v23-5-5615524a9c63@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260519-dcss-hdmi-upstreaming-v23-5-5615524a9c63@oss.nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303672-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,linux.intel.com,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linux.dev,ew.tq-group.com,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.0:email]
X-Rspamd-Queue-Id: 5B04B5EDCAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 02:42:28PM +0000, Laurentiu Palcu wrote:
> +    required:
> +      - port@0
> +      - port@1
> +
> +  phy:
> +    description:
> +      Child node describing the Cadence HDP-TX DP/HDMI PHY, which shares
> +      the same MMIO region as the bridge.
> +    $ref: /schemas/phy/fsl,imx8mq-hdptx-phy.yaml#

Another new thing... at v23 you should not have major changes to the
binding.

You do not get separate node, just to instantiate the driver and sharing
the MMIO suggests that this is the same device. Phy reference from your
bridge into the child confirms that this is the same device, so one
device node.

Best regards,
Krzysztof


