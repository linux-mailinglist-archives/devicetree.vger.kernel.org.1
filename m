Return-Path: <devicetree+bounces-268642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFC+A6z6n2n3fAQAu9opvQ
	(envelope-from <devicetree+bounces-268642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:47:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 627F11A20A9
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C07330DE1BB
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AD1D392C2F;
	Thu, 26 Feb 2026 07:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1s/ljrs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610F6392C22;
	Thu, 26 Feb 2026 07:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091889; cv=none; b=Xc1Df5PZJE1DRRB2WcQShfcfEa26uUeDmM0i4KtuGxunNvTN9GORVIgQ83zQAg4PLxgRt/GB2RQ2Zt2NeeqBhGQWvgCc4M3Y61d+v3irUqa2DUdZs42N468TGtsuMbTJ91TURPDntFlMKYaJp2ORjmVH/mrSVx2KFADrnM10YyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091889; c=relaxed/simple;
	bh=BAJW1pkkJkdB9Hftla0w6vh2oS0fQJVtk41GNO1eC+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mzWnrnkWqu3VoO1VoGYGfGE6jPsbbGKrgJvcERjFmeIup6SG5hWiwLfxboyZ7s1VMT+wz6lqYktDuEUge/luODTvmUDWZHhucd3JLPND+z20euHshodGUluPPdXvkwqEbtlEhJxejoGTPOI/FNTkvuMu/SPGW0teq8FXyOL3JNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1s/ljrs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01532C19425;
	Thu, 26 Feb 2026 07:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772091888;
	bh=BAJW1pkkJkdB9Hftla0w6vh2oS0fQJVtk41GNO1eC+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b1s/ljrs45DZiI2VP2FWaQts6aCnHBhP6Sa9eMSEZFRXZAsYUe+Bk3zDrug1APmk6
	 YU8xdtEC08g5oZ6/Tw62ML+PbHooL00yMLMBKhJ6pvcQEguuB6d/iLiRJVNNpKMWuu
	 wPhLSZK/btLv4ewrhOiN+JYkSZi/4jX+emH2AV7GCwoPGh94KWa/vhqEdMuWR+511M
	 y0w4eWqmnNgFrIj5Vsj3qdKl6WrVZm1foJWKPXj6gq6Af4bSsLLnHu3UYXR5jH6Kya
	 a4g4XEE1C8H0rRPFJUy1QqeAtrQU2pTmXn8GLFWBsL56juoZox9V0DUNPzJE0VJXob
	 /zxKAAvZCAB9Q==
Date: Thu, 26 Feb 2026 08:44:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Manikandan Muralidharan <manikandan.m@microchip.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev, 
	linux@armlinux.org.uk, ebiggers@google.com, martin.petersen@oracle.com, ardb@kernel.org, 
	tytso@mit.edu, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/6] dt-bindings: display: bridge:
 microchip,sam9x75-lvds: document SAMA7D65 binding
Message-ID: <20260226-lean-elk-of-excellence-9b95c9@quoll>
References: <20260225085430.480052-1-manikandan.m@microchip.com>
 <20260225085430.480052-3-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260225085430.480052-3-manikandan.m@microchip.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268642-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,microchip.com,bootlin.com,tuxon.dev,armlinux.org.uk,google.com,oracle.com,mit.edu,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,bootlin.com:url]
X-Rspamd-Queue-Id: 627F11A20A9
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 02:24:26PM +0530, Manikandan Muralidharan wrote:
> Update the microchip LVDS bridge device tree bindings to support the
> SAMA7D65 SoC LVDS controller
> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> ---
>  .../bindings/display/bridge/microchip,sam9x75-lvds.yaml     | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>

A nit, subject: drop second/last, redundant "binding". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


