Return-Path: <devicetree+bounces-308265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uNBbC3WwJmrhbAIAu9opvQ
	(envelope-from <devicetree+bounces-308265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 14:07:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D091E655F78
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 14:07:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bQNDoStj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308265-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308265-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 16EA03015842
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 12:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BDD7376A1A;
	Mon,  8 Jun 2026 12:06:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2E7372EDE
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 12:06:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780920388; cv=none; b=VtMbqqnMBXortfVWMbv92Z1etvUnnARjcFjG2hhoQmmCyuFMaatp3xDJ4KHTi7Ip5wtjN/s/9k/ja1oUzK7zm56Mtyb3F7f+9CZ1W/gNX4wPp8PU7ICV/7vAQVmLD4Y9u6Riompa7hu/6wOVLHedfca0XiZBVUZAVa326d/OSe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780920388; c=relaxed/simple;
	bh=BuoTf4wVL4g8Z3xsGez2Y7XIEEPar/p8NPUweSV+iH0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m0C2WzaSUHi/1zsy4taKEFCueCubI9mw2BB1VMYqOgGNHIToLdgbPcCYygw16pjxGhbRHm+/6j576bUL9B02Wle0Orw46i/Q8BEBPSeSigmkE9KNgUCRWJ0xDvAiW6i6jGiD4fmpl5fXI/ija3Gi6E+SGVrlzk0UCEX8oNV3G3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bQNDoStj; arc=none smtp.client-ip=74.125.224.49
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-660e9ea26b9so3939170d50.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 05:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780920386; x=1781525186; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BuoTf4wVL4g8Z3xsGez2Y7XIEEPar/p8NPUweSV+iH0=;
        b=bQNDoStjsXqyRFqqStEuZc81Z8ah9h2CQepAj1uRpapGX5E5yjHFaMitIXVaj0hFEU
         mA203kfKIZOfJE+J2wMwrSBjIcx/EL1OtXg7CeBCFjBe9BvgRGFFlPxxlpqpqlz7ECTj
         S7Fog+QEam6aoQVUYB6j7rcZVg7F1rj3ovZURlaAcK1ADXjPFTu9vMuGjlRir5pDVyEE
         y658NambI6lKrZicpWHTeS1a1lDHnmIARvXTkHjQpNH4LN89c8JzXDcpBPH0YyMxdjWp
         ncnisyslBP3cXhqnzKxV0blgJV9niWyYpfjf/pmUkVbb6RyD4XF2LhiEZxr0aId8plY/
         wlGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780920386; x=1781525186;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BuoTf4wVL4g8Z3xsGez2Y7XIEEPar/p8NPUweSV+iH0=;
        b=OFDqCJ5cw2epm4GhOlz+TqRJ/GIbxjpOiKtqTvCRT5SlP42jpbvqvY+mMTP0qADS7G
         iOAw6l3HV6rQ1sVL0MXCqHTdI7cWkZBV/VSQKm/S2dgkEqtkINphzB+1vqLT9RdI+yKW
         Gff0muKuR+fUGlN7mnW37R7dkcuuRcCKpHGKjyAQfbq3ja77q16mZSj0IQXsp3kw6mnW
         SxmMbH5HzEcBK458130k0diOVAICXXxHUEvuDGOjVVLgQ+hADdMRrUUWzIiKLrxN8HyV
         1V93GCfLXGKzkoQB0OQr11NhHvtf3/9jgCn6h0rLhdg83xgQHBbH6Wwgvkn3qfETnhNd
         o4dA==
X-Forwarded-Encrypted: i=1; AFNElJ8nvo+HVB8msqvR8RZ1C4Xuh0IbhOH4ayh2FIV1w1Q8Kblqwb++UD8zeHZm/F/srIoZBfjNmcxAKXXd@vger.kernel.org
X-Gm-Message-State: AOJu0YzNttouqG6qdsaPhwpPoffKOR1Ox/8/ozQD9P5AxmDYm+YJIMui
	RW3fXQU1kQlPYXgDiLY6GyZzIZE+5CD8fw+6FruHDKBSMI0Wp7LROIq7
X-Gm-Gg: Acq92OE69DP4A2HnjENbCfRTBZw2CUDYGs3et2w9O+7Gqd1F4Scr4fARha048qUKmIB
	W4JgT5WhGUXWOVZyYLFooIv+5oIhHymLoW+Q2hCafTATbwTBcmkIC3IF4D84+a18IwjRAGeA2Ee
	/OjhE9XIpafDk1iw5pzgzET8r+23FKfoRtyuxJzD/q6S89qgvI6vPaxzyE6ZKPWnBwM6EJWZGa8
	HIAfu7SeIflfiIeErWhDVG0taiSUvZyUYI/89moWYmP+SeoUl6FHschix5sPVYN6YoF+Q+51flT
	kjUHm7TCva8MZUwN5qR5JabfNs+2nAcu1BAb37+oYaTLyoXY81dP5K9eKvQQwEboCiF/5p/c+Q4
	AJYS5RUnwX8MrAZm8WrmJ9KfjgIAR0Klg/TLW3PEbQEYAvyyuYy5stBbfdqKONwRjfrBqRGiCx/
	7FY76TfoDDNjDZ1V8XeAvkCXJt1EZAMU9M+oxRC7XBoz7l/fonFXHy/Sy3GkyK7qevZu4=
X-Received: by 2002:a05:690e:d58:b0:660:5d71:7b46 with SMTP id 956f58d0204a3-66106dcf6d4mr11872452d50.12.1780920386042;
        Mon, 08 Jun 2026 05:06:26 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8cecd26b9d5sm177590886d6.44.2026.06.08.05.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 05:06:25 -0700 (PDT)
Date: Mon, 8 Jun 2026 08:06:17 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Shuwei Wu <shuwei.wu@mailbox.org>
Cc: tglx@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, pjw@kernel.org, samuel.holland@sifive.com,
	unicorn_wang@outlook.com, inochiama@gmail.com,
	daniel.lezcano@linaro.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, liujingqi@lanxincomputing.com,
	alexander.sverdlin@gmail.com, rabenda.cn@gmail.com, dlan@kernel.org,
	chao.wei@sophgo.com, anup@brainfault.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, sophgo@lists.linux.dev,
	hanguidong02@gmail.com, michael.opdenacker@rootcommit.com,
	linux-riscv <linux-riscv-bounces@lists.infradead.org>
Subject: Re: [PATCH v5 RESEND 5/5] riscv64: dts: sophgo: add initial Milk-V
 Duo S board support
Message-ID: <aiawOUHBcKtMVEZk@sleek>
References: <20260530173347.33533-1-josh.milas@gmail.com>
 <20260530173347.33533-6-josh.milas@gmail.com>
 <DJ0ZYF5C8MMH.2GBBY188VVPSH@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DJ0ZYF5C8MMH.2GBBY188VVPSH@mailbox.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308265-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[joshmilas@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:shuwei.wu@mailbox.org,m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:samuel.holland@sifive.com,m:unicorn_wang@outlook.com,m:inochiama@gmail.com,m:daniel.lezcano@linaro.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:liujingqi@lanxincomputing.com,m:alexander.sverdlin@gmail.com,m:rabenda.cn@gmail.com,m:dlan@kernel.org,m:chao.wei@sophgo.com,m:anup@brainfault.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:sophgo@lists.linux.dev,m:hanguidong02@gmail.com,m:michael.opdenacker@rootcommit.com,m:linux-riscv-bounces@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:alexandersverdlin@gmail.com,m:rabendacn@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,sifive.com,outlook.com,gmail.com,linaro.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lanxincomputing.com,sophgo.com,brainfault.org,vger.kernel.org,lists.infradead.org,lists.linux.dev,rootcommit.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshmilas@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sleek:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D091E655F78

Hi Shuwei,

Thanks for testing! I am seeing the same wifi issue on my end and have been
looking into it so it may not be a config issue.

I was able to get the chip enumerated by adding some properties to the sdhci1
node and adding some quirks to the kernel source on reset. I was also not able
to get the chip powered without manually toggling PORTA pin 15 in code. Then I
tried using the aic8800 1.0.9 dkms module however it needs some changes because
it is not updated for Linux 7.1. I did find some Milk-V Duo S AIC8800 drivers
and will give it a shot soon.

Thanks again,
- Joshua Milas

