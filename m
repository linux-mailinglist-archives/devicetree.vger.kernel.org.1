Return-Path: <devicetree+bounces-320146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p+sqFXe5R2rbeAAAu9opvQ
	(envelope-from <devicetree+bounces-320146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:30:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C84E702DFC
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:30:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="FSBoNF2/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320146-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-320146-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF975305FF2E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5431F3D7D7F;
	Fri,  3 Jul 2026 13:19:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC82F3D648C
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:19:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783084787; cv=none; b=A51Dl/qmj4FCvF3t7A+gxYmsD4VC4BxvAScHns+KF4yDRehXtbe7tdbGXuE67XM93aQjMxxU1UNfrFcmUa4Zope3NWNeH9fYUzX8mQUcpX21V77D+iTxygh9N/vCQA+81MxUaXTx4yBAq3LQ/00h6zj3Q4mdtW9DVvQACR3pUow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783084787; c=relaxed/simple;
	bh=2ZpeFfVSLXCb95plOToayTONu9usurRbTPlWUcjbQac=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uH0kXsfAB4ex4zdwlhyeTHdvZGyr5goc3x2KgJuf7XQYGevq6PSqap4dHS+mL31P6VX/CNf0aEcb4To+zrkQmGPRz+s7264EqZCdeu1h1Tot8pG1uGSo3DWkcQu5nKTsbjUj9bYP8UMDcH1zr29H7WhqYFxtTsouMxrFNxjwH/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSBoNF2/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 996D01F00A3F
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 13:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783084785;
	bh=TaGUI/SLnb4lR4rEHTJXqwMoSRpEpE9qSC0P8Yi76ME=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=FSBoNF2/o5ytoQNn1kGC3kmu5EcpXfFu8XwUITt159437vm7u0N13rxnf51iw/Zlm
	 vPZXwYABGauyUr71UEYBAL8uaExvvH22CewRulV5qhUZLzQ0ls34tZ86tinZyXPD4x
	 84E+q2fibmc6PkNiiXAP84aD4wFQ2c0FRJrVDknyHjV+r6g+ZU/xfsgx51yuRUpXxu
	 XdVsLHPmxJGjrH4U8WjAtCYcJHGvEtfpd0w623rBFRnt0HD2LBsmxSUiNwO4GG+66z
	 vS5K/7jd9CRckjw8fbwdtrlKKCKMxe2HqnOZlJFOGKAeHlYDJ4p2RWnuamNkS7ik1G
	 35+Pi1iLdQcyA==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-39b2acd2414so3185021fa.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 06:19:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpQt3EyiX04uF9yaaMs2lDWTVFvCLPoFFJJ6+YTvA117/3GJBPKDcinY8g+J7QO+aG39dH1j9qr+3ZV@vger.kernel.org
X-Gm-Message-State: AOJu0YxstvBDJSMx/otMpsfHXsRLd9o/e6d90d6ADsaVDdr25ulYll7L
	h4lKTGU26PVtNo7DQEHLpmIZp+I93CPoEI+GaJuKbMUEwzRSiasLYWCYzq9s9M5mQPdwCr3RtEB
	JaEljJYtsTOl0fo6GU4rpDLnyUM486C6qkCXaWroyCw==
X-Received: by 2002:a2e:a9a6:0:b0:39b:d76:5cb1 with SMTP id
 38308e7fff4ca-39b3407b828mr19081981fa.29.1783084784410; Fri, 03 Jul 2026
 06:19:44 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 08:19:43 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Jul 2026 08:19:43 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260703110317.1283411-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703110317.1283411-1-wenst@chromium.org>
Date: Fri, 3 Jul 2026 08:19:43 -0500
X-Gmail-Original-Message-ID: <CAMRc=Mdmwye6Eh6OOeP7ABXXvBfAx_aJp-m5ubSEFO1zUY3KYQ@mail.gmail.com>
X-Gm-Features: AVVi8CcQfJT1mV-O2rK8aFdmsZga0WCCNIFvY6gVso6IzL778C3Bs5vxWgVilsQ
Message-ID: <CAMRc=Mdmwye6Eh6OOeP7ABXXvBfAx_aJp-m5ubSEFO1zUY3KYQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/13] arm64: mediatek: Add M.2 E-key slot on Chromebooks
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-acpi@vger.kernel.org, driver-core@lists.linux.dev, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Manivannan Sadhasivam <mani@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Bartosz Golaszewski <brgl@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320146-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,kernel.org,rowland.harvard.edu,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C84E702DFC

On Fri, 3 Jul 2026 13:03:01 +0200, Chen-Yu Tsai <wenst@chromium.org> said:
>
> This series unfortunately spans multiple trees. The way I see it:
>
>   - Patch 1 and 2 go through the driver core, and an immutable tag is
>     provided to be merged together with the USB patches.
>
>   - Patch 3 gets an ack from Bartosz, and goes through the USB tree.
>

I gave my ack but I would prefer to have this in my tree as well, so an
immutable branch would be appreciated.

Bartosz

>   - Patch 4 through 9 (all the USB related ones) go through the USB
>     tree, along with the dependencies above.
>
>   - Patch 10 and 11 go through the power sequencing tree.
>
>   - Patch 12 and 13 (device tree only) go through the soc tree via the
>     mediatek tree.
>

