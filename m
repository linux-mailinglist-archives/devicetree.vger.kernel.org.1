Return-Path: <devicetree+bounces-320779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kZ01NuLOSmqNHwEAu9opvQ
	(envelope-from <devicetree+bounces-320779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 23:38:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 745FA70B7EC
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 23:38:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=db7Tpjhv;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320779-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320779-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0526E3011105
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 21:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1C29371071;
	Sun,  5 Jul 2026 21:38:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6156836A360;
	Sun,  5 Jul 2026 21:38:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783287501; cv=none; b=Zg9d9A9R6HL/0S/zalPx/ZOxD4LvXJ3lwX57/BKQll+lwZy7nM9huXJtx2TNHJaHCRCNmmAIXOSmTP0PvUCSGS/OsWn0CkecrSg9nKnNkp1A5trqN4JZKU3bkDB8UjdYESiJJcJhf3XS1yLngXCMUG46wfzJpOZRZrm8Ap8qJaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783287501; c=relaxed/simple;
	bh=BZCFyvAp+Vakhg8GU/XUEwv9cpsIlKucQW0JPePX1JA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XEKs65kHQdJVP1eG6M+zEfzdg3GPGG9hy6Zdk56K5FzOyev6iybUCIlwGDebJ9tlgBEnnJbtUtJMzXSkIuHw/Vdm3QJvTYGaSodS36Uxw2YgqEfNAh//scRDhDj3YqlyOzno6fVq7pvSPGiwUInIAyNiiyRx+ucsZzKjJ//2ylI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=db7Tpjhv; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 52C30C8EC43;
	Sun,  5 Jul 2026 21:38:29 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6FD77601A2;
	Sun,  5 Jul 2026 21:38:16 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9652E11BB95F0;
	Sun,  5 Jul 2026 23:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783287495; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=nbQNhdkctUVjCrWqgHp2lFDpL+jVLHEUAKKHow1V6ZY=;
	b=db7Tpjhvy2P3I3L5rVTMzVybDeO2oVAJ6F9StSi9s5nFSsC/5W0Z7AS2zs8aUchOxNKvfH
	E2jzE0Wl+ZY4LXuBm255wWh6DVqGt7aCa6fGgZ/kwybMWnt/EBgZlhaOYGFQQKk/iEcH4E
	PZw9Wk38J5V7BxP7hdgC8mBkNafEP78/kLIzw03WqTC+2UkYZjVSicubiKr3CAYt+ayWfH
	x+XHtA4ZNekVaVIP5T8/5Rcqm5fgo6sUDeJ4Ea0CdIMq4PZlLgHRn4Qy5JHZZVielPSPWk
	WzZLcis48TfAJo/eBRauaHM+y+GchH1cHDMX1zcBfvxwo+vw+wa+mepI3Xd9RA==
Date: Sun, 5 Jul 2026 23:38:10 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Junhui Liu <junhui.liu@pigmoral.tech>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Maxime Ripard <mripard@kernel.org>,
	linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v3 1/8] dt-bindings: rtc: sun6i: no clock-output-names on
 h616/r329
Message-ID: <20260705213810296b48ef@mail.local>
References: <20260702-a733-rtc-v3-0-eb2580374de6@baylibre.com>
 <20260702-a733-rtc-v3-1-eb2580374de6@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260702-a733-rtc-v3-1-eb2580374de6@baylibre.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320779-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:junhui.liu@pigmoral.tech,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:mripard@kernel.org,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[pigmoral.tech,kernel.org,gmail.com,sholland.org,baylibre.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bootlin.com:from_mime,bootlin.com:email,bootlin.com:url,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 745FA70B7EC

On 02/07/2026 10:10:00+0200, Jerome Brunet wrote:
> On h616 and r329 chips, clock output names are never defined through DT and
> are not meant to be. Just disallow the property for those chips.
> 
> Reported-by: Sashiko <sashiko-bot@kernel.org>
> Closes: http://lore.kernel.org/r/20260629125305.0DF981F000E9@smtp.kernel.org
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  .../devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml     | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
> index 9df5cdb6f63f..959a012c626f 100644
> --- a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
> @@ -175,6 +175,18 @@ allOf:
>          interrupts:
>            minItems: 2
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun50i-h616-rtc
> +              - allwinner,sun50i-r329-rtc
> +
> +    then:
> +      properties:
> +        clock-output-names: false
> +
>  required:
>    - "#clock-cells"
>    - compatible
> 
> -- 
> 2.47.3
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

