Return-Path: <devicetree+bounces-319589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DmUiBzK8Rmq5cQsAu9opvQ
	(envelope-from <devicetree+bounces-319589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:29:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 855146FC88C
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:29:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MOnhQbf1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319589-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319589-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1DD70304B680
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29AE638E5FE;
	Thu,  2 Jul 2026 19:29:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 937D23806B8
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 19:29:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783020579; cv=none; b=ZoWXlSPIMpHdulQuKy7ZLp6bn6T5CviRtz3uxn0azIYAeaf/47hyd4uOuw1OHZAS/CWg37UTMiusoobJJwmngKngIbrmsFgFK1WSdHmpjBt+MzCCVQ8KH6kuSbBZhsJ3FFPaBLwdrMEi8bH3VKutEHxm0PPZ02yR/GO88VT10Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783020579; c=relaxed/simple;
	bh=UdMJM06ebK67YQ2Mnbs0Jp1/l3ZNaXIh/MKaQ3oYKr4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lyX60fTxBYFZJPPbFLEmM2wzagWy4eovb0HUZyYYWu1FWej6keqooBYfJucw611jH2zkT6QjplP9w7PiHJGcdwy6MMsK2dnnbm8ZMutOgJ+By7ncdipgW7EftmMFQ2yFcosH97vTBmI+J0qY8rMktyGzcZz67py4Hfi9augybYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MOnhQbf1; arc=none smtp.client-ip=209.85.128.53
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-493c733f15aso7451945e9.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 12:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783020575; x=1783625375; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zAwDyBfy9pmItaLqNOcnGFdZ3qhtmyuBm6fxfzFEds4=;
        b=MOnhQbf1/CqJFRSRzJybl3CWwBroY7cPKOcHx4jCNrtLqHUMyB6ujxtqzQhD4Q4xDh
         sudlR5oq3V72pp9i+NAt6O2GCCUkUdhSrA3AGe12ObYoXHPiguj9xOgRJ7m17BoLLkVO
         /F+TD0qhA47QA4NF3Ziw/3TsbzePPCk6tDNX0VYltyakCRYMVig7jUAwZIE67tCxWvvJ
         3VcdZMQyB793F7+xbGrSL3cMFnO/qVVWUDYuSYjeUTb6CdXMPPSFVHr1Xy1gJXBG1/fM
         4/MGvCAXEPHeGMgK84h+38rMddq9Ozuv6Y2ITiznjFl7luuxkSUkr9A9HGWRPzREg024
         In1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783020575; x=1783625375;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zAwDyBfy9pmItaLqNOcnGFdZ3qhtmyuBm6fxfzFEds4=;
        b=FvKdhq6oSDBYcfWIhtw9GKyfnipdVh9Uv6WYcbpBfj2a8abdmI+NRY/vnCsYQ4jwWZ
         WZiCW4Vvx5MLm8MZbGiedkyYv/OEyotk7pUhZ8EfY7waegAW9TMisNYn5tvXk8NUVpQe
         5z9+Z5ZPpVXjUI/gY/cuqiqcA26AhqF6Q26jJiZlXnvMRi9gTG1aeFiioBeSKvALY4cA
         3SjWGS9kSZanU8P81vXPvVCAXTUj7Cydvg3NkPm+kY1OdZLhzLFCM+KSBCvOvBEN8drP
         5yiBlCPpaG1talYg93M5eM3st8KQFtaO/dQ9j7/F3LV8SWOveCaQ3Mr1eeOptdJzOxm1
         lNVw==
X-Forwarded-Encrypted: i=1; AHgh+RrcFZqJ+ct71PKkMZ7WzOxA4z0iQTwwg66ZcKHmoSjyGiHpXFXGGLyFYwwslAlM+6Spo4fu/2xz52TZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8fZ5pJsH80HfMkuOZYlhR1pWJWc3dD9Ej90bjU9oH0wjT+TQG
	hS1PU1BdxM/GUMQ2DxLO7Agkhxsd2PpSwjKX6+Kk8B66A06abhVwNjZi
X-Gm-Gg: AfdE7ck1KzbeKW7ar2nS5zR33V7Y9qsaDdTtJfbh2HTKjeIXVT1XWxAnmNuDl3U4Tsz
	Q0KabSrE7abPttwS8L4goE2pB6+Pn2/mdOq0clAYwnlIOehtbpMipkdTk4fTBA2MZnTe2BGZ4HD
	kMvNJnfBI0WUen21rFOaCceYvNztSmKmzLcO7uzOitZ5cSRb/Me7OhzNX+Hy8XoZv4W/hSlPKJY
	mXLsL9MYCmOEHM2TahQHKGVtb+8dgXsuEzb5q5nij++qse/764LO/ZGMvKYJYyk/4Meye0qkFR3
	nsUDxrIBQjNoezM/aHxwqI5Q9XP4dPfWveyxErhR6uclVlkE82G9qL25enfjUhr9Hyb7yCVZrzk
	Kr0MeXiTc9xGKAVJPlCPCLz74IbkQBdisxKBLgDBhcRYzEfH85zK6hhrNtoZkcm/jXJ1bOOII4J
	AnmIlVq4cJkWd5sAsVPlOzmYkKmvx61WJNwUqtd+Fhs+JPWqfMg2E+HL/xlQY1MtKxopLQEtxm0
	XeLCaWN
X-Received: by 2002:adf:ea82:0:b0:475:a4ae:e630 with SMTP id ffacd0b85a97d-4775be03177mr9148509f8f.37.1783020574993;
        Thu, 02 Jul 2026 12:29:34 -0700 (PDT)
Received: from [10.128.11.240] (195-23-151-163.net.novis.pt. [195.23.151.163])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477db3db964sm11113317f8f.8.2026.07.02.12.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 12:29:33 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <d6a56d05-0c6f-49a5-9281-1194b62ab86e@gmail.com>
Date: Thu, 2 Jul 2026 20:29:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v6 12/15] onsemi: s2500: Add driver support for
 TS2500 MAC-PHY
To: Selvamani.Rajagopal@onsemi.com, Andrew Lunn <andrew@lunn.ch>,
 Piergiorgio Beruto <pier.beruto@onsemi.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Richard Cochran <richardcochran@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 Jerry Ray <jerry.ray@microchip.com>
References: <20260629-s2500-mac-phy-support-v6-0-18ce79500371@onsemi.com>
 <20260629-s2500-mac-phy-support-v6-12-18ce79500371@onsemi.com>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <20260629-s2500-mac-phy-support-v6-12-18ce79500371@onsemi.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319589-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Selvamani.Rajagopal@onsemi.com,m:andrew@lunn.ch,m:pier.beruto@onsemi.com,m:hkallweit1@gmail.com,m:linux@armlinux.org.uk,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:parthiban.veerasooran@microchip.com,m:richardcochran@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-doc@vger.kernel.org,m:jerry.ray@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[onsemi.com,lunn.ch,gmail.com,armlinux.org.uk,davemloft.net,google.com,kernel.org,redhat.com,microchip.com,lwn.net,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 855146FC88C

Hi Selvamani,

On 6/29/26 18:23, Selvamani Rajagopal via B4 Relay wrote:
> +if NET_VENDOR_ONSEMI
> +
> +source "drivers/net/ethernet/onsemi/s2500/Kconfig"
> +
> +endif # NET_VENDOR_ONSEMI
> +
> diff --git a/drivers/net/ethernet/onsemi/Makefile b/drivers/net/ethernet/onsemi/Makefile
> new file mode 100644
> index 000000000000..f3d4eb154313
> --- /dev/null
> +++ b/drivers/net/ethernet/onsemi/Makefile
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Makefile for the onsemi network device drivers.
> +#
> +
> +obj-$(CONFIG_S2500_MACPHY) += s2500/
> +
> diff --git a/drivers/net/ethernet/onsemi/s2500/Kconfig b/drivers/net/ethernet/onsemi/s2500/Kconfig
> new file mode 100644
> index 000000000000..f2e8d5d1429d
> --- /dev/null
> +++ b/drivers/net/ethernet/onsemi/s2500/Kconfig
> @@ -0,0 +1,21 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# onsemi S2500 Driver Support
> +#
> +
> +if NET_VENDOR_ONSEMI
> +
> +config S2500_MACPHY
> +	tristate "S2500 support"
> +	depends on SPI
> +	select NCN26000_PHY
> +	select OA_TC6
> +	help
> +	  Support for the onsemi TS2500 MACPHY Ethernet chip.
> +	  It works under the framework that conform to OPEN Alliance
> +	  10BASE-T1x Serial Interface specification.
> +
> +	  To compile this driver as a module, choose M here. The module will be
> +	  called s2500.
> +
> +endif # NET_VENDOR_ONSEMI

S2500_MACPHY still has that duplicate dependency from being inside two
of these:
'if NET_VENDOR_ONSEMI..endif'

And I already pointed it out on v5:
https://lore.kernel.org/all/90f84945-e83f-40a8-8d9e-a477c45579e9@gmail.com/

:(

- Julian Braha

