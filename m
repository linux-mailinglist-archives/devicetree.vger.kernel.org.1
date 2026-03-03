Return-Path: <devicetree+bounces-270496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id caj+LsDhpmlAYgAAu9opvQ
	(envelope-from <devicetree+bounces-270496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:27:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1DA1F0312
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:27:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 773923053093
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5467423A6B;
	Tue,  3 Mar 2026 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mLQvoYFU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9137A35B64D
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772544153; cv=none; b=JDC4Dctn85NuSTFjdv1Ocs+WsOe9IFedURCBNWyNuVDgCVUYfudzauOOun6rJBHo1Sn4esDZOvPFMZkCnu0Jv4DAFD9mEt0hTyMn205/KBisEexr68ilA3dKAm2vT9gun7os+iiXB9AoW0AlWvYwQNKAgWZtZm7gURAJkLJrw2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772544153; c=relaxed/simple;
	bh=AA/rC8J0bWYxDqY4WhfEhh5yf0+vIt1t0AD3KtpELOE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BagKLgA5Ih+fxA20xPWmaYnDy0jYMerFpgMSn38fgUAI78BXqa3zE54YVk4dW/6TBSV32BQEs/8081zXTfVTwy35psCIYyczAT89fRwsBAhMH6TZEs/UOrjWqNmxR2gHYWhcCANQe8MpLerBnkS0MIGnekEKQF/EfNofAj2HnTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mLQvoYFU; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4806fd9033bso10716755e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772544151; x=1773148951; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jhjoAq3MmovlrlE8lgBAJ1EdXOnr75atWGwQPHXyE58=;
        b=mLQvoYFUsaxB2oqpFTKAcasCdy0u/VYZvaQemjYO3XrJkRlFgdYLj1lpITml2savsP
         YeBuE5hcdvt2/VsZbk72aYv7GOgCJzuVS1PrqBS/rK8qngP7LOQ+zABCVtYC+OXnTSFr
         Ofo272WawhZi+sCmEtl/5QNx3UqHiVnuhUl1D9o2vVi3aTPrKPznwLpjOhIKQmTQ0odx
         j6YBkDAXHNcmD0+4Q5ZWstme2zjWUzlxto9+35unHn6fGOPHaFvFwOOYR/nxn215WGXT
         FGUMdM4V+JPItBx+tifRlDfX26Z8HChctwOmjyvR1QHqfoP6jptqyfOTHdipWuivgmZU
         ajjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772544151; x=1773148951;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jhjoAq3MmovlrlE8lgBAJ1EdXOnr75atWGwQPHXyE58=;
        b=QmZMQUGsXGJjnzhZq06GIhOvt13fg64KQni0qDp3KheOsOhMAisSvEC1dLoJisTq1k
         YABpm1slIBpQmVBX9G/z0PIZwSMDLAH1SHCJ8aQFYKuSH7okBSxbj+1xwzSxFf5NSIze
         pQKAqBJYqdluJvOMnFlb/Y8qmPKWD4JcILbd64Cb/QMEWH3M6RoETOvM566D4G2ucyHA
         SQgSjDE1nOyTLP+sSIP1RqjFkj+He2YfY7Vah6fIlD23AKozvFbCzxZb4/IWuoqZZXm9
         SIL+aC0WhaR/K19WwpMIQHDJ3Y2Rto2IA+vzQ6/2dwBuEDbKXkzXUthBdvEBgpPpxIY7
         /g4A==
X-Forwarded-Encrypted: i=1; AJvYcCWVv64DxtXTn8mh4+LWWJVCtg1Juy6/PwI4S2sgmIivCbHd7yHvM07Af9ut9EfxNEglHNSngvV5vPaJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwCsDkD/BZ9G7RE5aDV9a8BDth6eGxBkXsS1HNNpazNR7wZEEUt
	p8yt9TnreIRFJ/CWgmAvxQ7bbSREHh4wTPQaz6CjAV46ltno5rR8iAXN
X-Gm-Gg: ATEYQzysKrjjE0l/BQqmM8FYYWVg9Q6awWq4wvNvO5aIfsgGRbfOFjbTFO3ZDOoOujp
	IA4HeRAAxWz7/Fdkhe14gI5QNoW/FtBOM+3/1CB0xTldl4P4w1AixPQU2O31ZQRtEKN8omEh8dr
	xK+3ar0UTb6lRb1meEwkhym6b1UHn7WiIH3bvIj9+gNpm75zvnT/3t2mLdG3itglWuHCY/3Ruck
	nibKmQ+PklKwrckyfi9sVnzE3+S0jOvu+k5N6Bz7ruVoYV/Fa5fAbM0U7iDI/fBOjk4/FXGBmTm
	shWMJWRFnQtVqHIz2f4G0bx8nKCgpMim4ZTl/cJ+EnvhqSmhgY2170sInPoNzc+EL44YVqPL7no
	jHlEIkKDfHrdTr4eGAjL5c2EPqepFn7S80wPog6Dy5+yBkf1L0cn0M0yHAXrw54jWidkZJlLCSw
	hXrKZivR/Mda42mY0=
X-Received: by 2002:a05:600c:8b56:b0:477:9fa8:bc99 with SMTP id 5b1f17b1804b1-483c9bba8cfmr153881545e9.4.1772544150700;
        Tue, 03 Mar 2026 05:22:30 -0800 (PST)
Received: from skbuf ([2a02:2f04:d00e:3600:2472:8e4a:cf12:bb30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485135d0232sm15234605e9.28.2026.03.03.05.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:22:29 -0800 (PST)
Date: Tue, 3 Mar 2026 15:22:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jens Emil Schulz =?utf-8?Q?=C3=98stergaard?= <jensemil.schulzostergaard@microchip.com>
Cc: UNGLinuxDriver@microchip.com, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Woojung Huh <woojung.huh@microchip.com>,
	Russell King <linux@armlinux.org.uk>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 2/8] dt-bindings: net: lan9645x: add LAN9645X
 switch bindings
Message-ID: <20260303132226.6de5boh5pl6hi3hh@skbuf>
References: <20260303-dsa_lan9645x_switch_driver_base-v1-0-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-0-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-2-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-2-bff8ca1396f5@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260303-dsa_lan9645x_switch_driver_base-v1-2-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-2-bff8ca1396f5@microchip.com>
X-Rspamd-Queue-Id: 1B1DA1F0312
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270496-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 01:22:28PM +0100, Jens Emil Schulz Østergaard wrote:
> +examples:
> +  - |
> +    soc {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +      ethernet-switch@0 {
> +        reg = <0>;
> +        compatible = "microchip,lan96459f-switch", "microchip,lan96455s-switch";
> +        pinctrl-0 = <&lan9645x_leds>;
> +        pinctrl-names = "default";
> +
> +        ethernet-ports {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          port@0 {
> +            reg = <0>;
> +            label = "lan0";

Please remove labels from DSA examples. They do not constitute best
practice, and it is preferable they don't leak into device trees by
promoting them through binding examples.

It is currently recommended to name DSA (like other) network interfaces
using udev rules set up by user space. Using labels is perhaps only
tolerated for cases where the udev implementation is sub-par, like
OpenWrt.

