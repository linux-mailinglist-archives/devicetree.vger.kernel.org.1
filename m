Return-Path: <devicetree+bounces-319697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JRadNnr+RmpMgQsAu9opvQ
	(envelope-from <devicetree+bounces-319697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 02:12:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D53496FD905
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 02:12:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="eUGaKjW/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319697-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319697-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9755F3012749
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 00:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59DE65C613;
	Fri,  3 Jul 2026 00:12:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1137141C6A
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 00:12:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783037542; cv=none; b=AUl7sqzj3NVzuJnjO6ZqL/jTrzlfFHFqaLoYDDL+FCye6EMt2QMmoOyKmyfr1SnkNdNK384MVmgUG2q1V2nQUbq8nK7UE2umyVImQcXk2DnmDJnxBgh3x3tbNRSHmWx374PS7+W5X7rYeZQV4hHiNEhusAZwdc3vmdhI2g9kjo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783037542; c=relaxed/simple;
	bh=DBT8QbiXPV791Ei75jZRE+bdrb5rv+oRxEtX04MEBMM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eyPy5822Zq5hJCcpH3VONtdcMSFHfYKnpK1OHft502dF309cBKv6YHwr+v2zwMy6MBCCURQTiJwT9axkyTkH9Ke5aB6OQa9tA1bEypQCpTYNLwqccuNuR8KnfqQdcEYY7Hgwx+rsJwD2a1tLxVTDf10LvtVgObbbROZzPoMHIoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eUGaKjW/; arc=none smtp.client-ip=209.85.160.178
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-51c1d487f2cso314921cf.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 17:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783037540; x=1783642340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DBT8QbiXPV791Ei75jZRE+bdrb5rv+oRxEtX04MEBMM=;
        b=eUGaKjW/PlpMqqXbBu7yiI6FKgvcpKROzSnkbNU5x203TTb/GBazkrWcIuMTjfBN45
         7YD31crDKq7AM3LfmjENZG/VCD+Lt991KYg1y1ITjZQLLILBuvYWFDgSOgajbFBrYQM+
         3TQRsGGU+0YuTTGRAYpxN6Mfm8s4SUyeXXVQxmuIgLRDPav8CLxD6tyiQrPWOPvNfYAp
         eEgAzjpRstnkxyhrRzWGiT/lRvj7EKDbYBq533uXnhCyssiSDn3z20SIyI3of1SBAUzX
         nv8gdgK/TkJnkPYGZXLv0STia0HuHleiMk4qlpfPD0X7OEFrO8xw0G5rqNJmhkdIrZeE
         JcBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783037540; x=1783642340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=DBT8QbiXPV791Ei75jZRE+bdrb5rv+oRxEtX04MEBMM=;
        b=lzwaHy6xmL7hEWCIo/A9TY3ytXQpUZtBiWtCO7KUtWVZ7BuolUdAiNALTuJHAIXPie
         RruSZiGW+HUdgG6ZEdhRJScS9Au9mZks4CElK3J1f3z1ejeVlIyWUJhM/yBuq0y+WpYK
         PcB7MktJonW+cp72Z+Ul6p6YigxHhkuuQMnaf7MbiQ/9RM9l1ef5gnQnOowBwgq0NkAx
         2lyyVQRdXvrCF3NJEJIYotEs58w1fOmUjmJEafVbq5vwQWCH8SPlyp4IbSw2/6viGlrA
         P92EzCAUkslkBjNYopL3Zq4aNoYNWhvzBN1YFzZpdD6btYeNA/0OS1QuNOxoOZbVKBk8
         hXIw==
X-Forwarded-Encrypted: i=1; AFNElJ/whh+xiiW5LP/14ahUsymhdZxdsMW7ASLe842KqDEJueqZvZ21LsllTosoJQYyHHnKCe/FyTS29+Ni@vger.kernel.org
X-Gm-Message-State: AOJu0YzBa7e5ltvxgqyhWDYn5mL9nQVOaAfLR4g5URTlj2gxMsfXkqHO
	AbdN/JgopFvq8sWAYw0/xBiq24UorkOhdUp+2qZ0Ej2eQ2K/r0XBtsw8
X-Gm-Gg: AfdE7ckOdo9cketVonWwRuVobfg5xg6ED9qQxKgGcRkxd0ZQUQt6rkifB72BNK2zkVl
	NTiFTfusxHxjXkh9DYsupCmq9+to0k1fRpl2B+1Vm+qDt5wfvSU8A0WEHTY87DFxuBPVSmzQdne
	lMYs+ANOSlkDcjWw1Gj2oRJj2f841rr7Rfx0xPHIosQraoIFhme0Y4YalpUylP5YtviQHSbgq+T
	Wh3/juCwv9gIHjPIqv7pXmU1ZO9Z82MVNrHTzvmjgxG7kIso8GIhHaIA9ziifnz7twPgqeEQU7K
	0pMDgt0M/2idbnzMbIMbLBNQttSU2AGRrjoaGxyV9BroY15dUuAylOa/w9oKFvjs2S714cpWKZ7
	lpmLIq1bsbX+k5EXH6fBJ7taGOT0mOFCyDbc5VnnFb8W6Nxjo3TZUkFim2YMzVFyZeiC6im0bgx
	9HaRKuzhvT/8y4iSHuvlymXkgistQsDKsWQbkBaGyDJF0knHXaIlSekrfsVZtWJctXhP2bKhc=
X-Received: by 2002:ac8:7f43:0:b0:51a:88f8:bef2 with SMTP id d75a77b69052e-51c2ad4803amr90244191cf.28.1783037540068;
        Thu, 02 Jul 2026 17:12:20 -0700 (PDT)
Received: from AMD.home.local (dhcp-9-244-8-156.gobrightspeed.net. [9.244.8.156])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8f471de87e3sm40289776d6.35.2026.07.02.17.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 17:12:19 -0700 (PDT)
From: Enzo Adriano <enzo.adriano.code@gmail.com>
To: Yuanshen Cao <alex.caoys@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Frank Li <frank.li@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	dmaengine@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v3 0/5] dmaengine: sun6i-dma: Add support for Allwinner A733 DMA controller
Date: Thu,  2 Jul 2026 20:12:18 -0400
Message-ID: <20260703001218.1243244-1-enzo.adriano.code@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622-sun60i-a733-dma-v3-0-f697ef296cbc@gmail.com>
References: <20260622-sun60i-a733-dma-v3-0-f697ef296cbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-319697-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alex.caoys@gmail.com,m:vkoul@kernel.org,m:frank.li@kernel.org,m:wens@kernel.org,m:mripard@kernel.org,m:dmaengine@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:alexcaoys@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[enzoadrianocode@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,sholland.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[enzoadrianocode@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D53496FD905

Hi Yuanshen,

Following up on my earlier note on patch 1: I have Cubie A7S hardware
on hand and boot test kernels over serial routinely. If runtime
confirmation of the DMA controller would help the next revision, say
what you would like exercised and I will run it.

(AI-assisted, as before.)

Thanks,
Enzo

