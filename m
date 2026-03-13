Return-Path: <devicetree+bounces-274815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBexL29hs2lcVgAAu9opvQ
	(envelope-from <devicetree+bounces-274815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:59:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3786627C196
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:59:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 012C63031B17
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 00:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A08930EF91;
	Fri, 13 Mar 2026 00:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Y6JwNC3i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756B4312836
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773363559; cv=none; b=hgmQAzY4rl4Ldgzgr5wz3je/NVtazhyMewEWQYdCcpYMvPDnMa3VWRG5n21nAjnUabb99arosYiNzxnMp70z5ektQMUN54HNlNVmTFbVch9zL8nKzM6cMJsdPrVXC3ZcfiRtXeHETrHZ3kMYxtMulqQ1WSOKylmGHwP3WRQ2Zs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773363559; c=relaxed/simple;
	bh=N56zY6ERDiOsmUWj1ibbj5vfyDtADAWSqqKHL42yXrQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=bnJBy+h4RqTPGxNAiVLHD6JCXvElM2sE+pWKYxJCAZp2392HTS8krLo2EaVkcAVQPAdse9mgmIubs97QTuXx+gvp7wlCljBK1Giio8GLFwSDKyXbryFk/cbDPtyEAI1dD6O8Vr00Au5ca49g1SClQfNIVsDSBxDKDZAlP41f8vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Y6JwNC3i; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2ae4988e039so18186455ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 17:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773363557; x=1773968357; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Cy9kXTv2NCvP2HAY6FejDEYYtBGZPXJx11C/O+hbqz8=;
        b=Y6JwNC3i4h2a+xUspaGAvbblEkgjWhUi1oTTNnqTLfcOrbWWmbaIxHWZzPxARxGqes
         Iw791pN2q3PlQpJ3X0PmVepuXJhCTsDCl3BEGhlAQAr917C5JZdIyeBNNDz3ljvnVVks
         9dyDaFCgwSI+gWr+9EPD1hcOrxnW0iGz3c0rYl8HWp1qvJYO84BeM34+Cdw51RjeJf27
         SinJrYFDlLbMwkJsb/xt0/4CNuG3HkPP5F3LPv+B4jIZfLz3VIGylr8RCX1b/z1JvCag
         5qYFa9iAvJ0xHxmS9nEg6b83ZgIsTPOtPg39IbG0FfMT3TYbygy6eyMB8PGZ4J6qYQnX
         gtqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773363557; x=1773968357;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cy9kXTv2NCvP2HAY6FejDEYYtBGZPXJx11C/O+hbqz8=;
        b=hrN3YDXAmzwiBIiCTH1tnl+lpiC76riok8iyt411w1QQd5Y9dIhJ3B4zxMzynW7xXq
         Cn9MpU6/uXdaEOvfAi+//FOxv/sNoWmHPGrjElU9XlXqVk8dUJfZFMdC0qnr0ivt48MH
         jOV10za4BGKXEtu0tEQ1FZfFN3SfbIdLjP2SBi4/s8emXLHnELh58DgWf2F4/mfKVHHM
         KMthIqy46jafO44My5P8mup1AUEyJRM2zVrY3XB9ZpecxAAf2tKiLugDbuBwkF0RNS3K
         2HACJoaMWkD0Pe5gd4BlUcRBvZWAmj9c4QxjquVwCu9cnbqXoIIG6bBKAt12pkibJMjV
         ohvA==
X-Forwarded-Encrypted: i=1; AJvYcCVdImkYTxDLwt9wNgYSaKBIeCehWuuM2Lb2BEkYDq/ThfK9BtYKQumMXrmjjhjJVbpxRMhZjGByaso9@vger.kernel.org
X-Gm-Message-State: AOJu0YyZa/i+ja5RtF5vUiZQ6QByjulR+5jMKzfumntb8DanSg7RWrwy
	ZlnQan/oE/+5Djh48fBsEf7yf8jeLAB8OjqlQ0XZq8SVzwok0sInDIpPeMzoptN5eGBJbdHHVa/
	aMrHY
X-Gm-Gg: ATEYQzxYeAq5uh00ZYNCo2bbxCTbuK/EKzfg+dWGvCBa0mYQlUw3efTwYMcY8LIKnYg
	9Unu7AOjuX9cjGD0oL9VKwfF81S/aDbUwjftXtXMgkK0MJahfCQL85UQbcrmEoajOf5xVcz4e0J
	Gnp/5RwYZO9icGlGvi3uJZcXlNW4vUqDkTncijEOq1BmesPdl5NmayjU+BCxInmS9ZwlCrp6hUA
	7fN/k/2xCiIxk9WId2WyQd1mUVBrJZUJcjGmnwdgMhVgEmw8yd0cN4qYhLw1eDAw3Er0oVuFSZh
	yM6ZzdEmeKhpsgeFBqKqXD8dY80WkuVRQqukh9ZJzCYt7IC2ovuWeOP7z+Qx9GLfCZGNsPOJ0df
	vLGgWCbBCNbYgEeOWdnNlDR+zq4ZDXj5WDRIK9ky3UCZ71gzx3m9BIo6G5/M3u9soy9v0wGVpn1
	sFMiUoY9WPdp2TtpsoF0o=
X-Received: by 2002:a17:903:120a:b0:2ae:47d7:e101 with SMTP id d9443c01a7336-2aeca4cada8mr12610675ad.1.1773363556830;
        Thu, 12 Mar 2026 17:59:16 -0700 (PDT)
Received: from localhost ([97.126.187.42])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece56cb7fsm3034135ad.6.2026.03.12.17.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 17:59:16 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Parvathi Pudi <parvathi@couthit.com>, nm@ti.com, vigneshr@ti.com,
 afd@ti.com, rogerq@kernel.org, tony@atomide.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
 aaro.koskinen@iki.fi, andreas@kemnade.info
Cc: andrew@lunn.ch, linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, danishanwar@ti.com,
 pratheesh@ti.com, j-rameshbabu@ti.com, praneeth@ti.com, srk@ti.com,
 rogerq@ti.com, m-malladi@ti.com, krishna@couthit.com, mohan@couthit.com,
 pmohan@couthit.com, basharath@couthit.com, parvathi@couthit.com, Murali
 Karicheri <m-karicheri2@ti.com>
Subject: Re: [PATCH v5 3/3] arm: dts: ti: Add device tree support for
 PRU-ICSS on AM335x
In-Reply-To: <20260307122641.738450-4-parvathi@couthit.com>
References: <20260307122641.738450-1-parvathi@couthit.com>
 <20260307122641.738450-4-parvathi@couthit.com>
Date: Thu, 12 Mar 2026 17:59:15 -0700
Message-ID: <7ho6ks1r4s.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274815-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[couthit.com,ti.com,kernel.org,atomide.com,gmail.com,iki.fi,kemnade.info];
	RCPT_COUNT_TWELVE(0.00)[30];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,couthit.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:email]
X-Rspamd-Queue-Id: 3786627C196
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Parvathi Pudi <parvathi@couthit.com> writes:

> From: Roger Quadros <rogerq@ti.com>
>
> The TI Sitara AM335x ICE-V2 consists of single PRU-ICSS instance,
> This patch adds the new device tree overlay file in-order to enable
> PRU-ICSS instance, along with makefile changes.
>
> PRU-ICSS instance consists of two PRU cores along with various
> peripherals such as the Interrupt Controller (PRU_INTC), the Industrial
> Ethernet Peripheral(IEP), the Real Time Media Independent Interface
> controller (MII_RT), and the Enhanced Capture (eCAP) event module.
>
> am33xx-l4.dtsi - Adds IEP and eCAP peripheral as child nodes
> of the PRUSS subsystem node.
>
> am335x-icev2-prueth.dtso - Adds PRU-ICSS instance node along with PRU
> eth port information and corresponding port configuration. It includes
> interrupt mapping for packet reception, HW timestamp collection, and PRU
> Ethernet ports in MII mode,
>
> GPIO configuration, boot strapping along with delay configuration for
> individual PRU Ethernet port and other required nodes.
>
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> Signed-off-by: Andrew F. Davis <afd@ti.com>
> Signed-off-by: Murali Karicheri <m-karicheri2@ti.com>
> Signed-off-by: Basharath Hussain Khaja <basharath@couthit.com>
> Signed-off-by: Parvathi Pudi <parvathi@couthit.com>

[...]

> +/*
> + * Disable CPSW switch node and
> + * MDIO configuration to prevent
> + * conflict with PRU-ICSS
> + */
> +&mac_sw {
> +        status = "disable";
> +};
> +
> +&davinci_mdio_sw {
> +        status = "disable";
> +};

I think you need s/disable/disabled/?  (note the trailing 'd').  Without
that, I don't think you're disabling these nodes, so I'm curious how it
is not conflicting with the PRU-ICSS.

Kevin

