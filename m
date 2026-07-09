Return-Path: <devicetree+bounces-323878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jKu+Asy1T2p5nAIAu9opvQ
	(envelope-from <devicetree+bounces-323878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:53:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5551E7327E8
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:52:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iLOZIDO+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323878-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323878-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DCE132279DB
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 14:32:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1563B813F;
	Thu,  9 Jul 2026 14:31:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B0237998A
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 14:31:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783607477; cv=none; b=TZR0bY3RN5em/vBS+qSeHgHZe8El4sxJMVXkdoqHbdlT/6UsrUz95C76fdPDwdkjU4LQ6r5CjV4XkmKfwAartoGq/yY0sXjgDCZ/8gwfXXORogLc8cr4oN4MtKDisiaoRrKAkvbFBs2tpM1AjQbnkE+1LdPPi2B+thFS8B3mi6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783607477; c=relaxed/simple;
	bh=C3Mw8q4Nno0demwxgT9owXxN/qKewUThoyTmm2QW7F8=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uiFJKiQtE6djf5diW9tQON47olI0ONlPLUzbeSFpv37b0Wkf7rWayDStgJFKsqKPlYqVkfYgl1sfcaqYROzdIQfwvrShEF73e0mM6imrv4UKrU5Q51J2SFoczKKm+iQI1LLTpxZ9uoTGZZXhKRLohZMYneKMSne9zWfnpXXP+GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLOZIDO+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEBB81F01560
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 14:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783607474;
	bh=C3Mw8q4Nno0demwxgT9owXxN/qKewUThoyTmm2QW7F8=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=iLOZIDO+lyJhwkH2hmjAysd5QarjwYBTfZcs4s5flnO8wkm4BzWLLE6+SqDT375Zt
	 mhcwPGTRdwFWbcfcFDqrD2SR6x4e328QZ/GdjwL1UQpjIG1MIRvmJ8qjtCQS020ukY
	 DIKnWCJsybahgCObHZPqid4wiSalS1g2MIbJd5J7HRWhlG81Y1DO7eale792kvHxAX
	 n9QGRG8VUpEsOlL7/JRTX6seju7rdberuvBc1xzyb4mvLC8jxCeUydDD5+6I1HC+yI
	 jWyGyAIWRJU2ZYlE9joTS9K5JXltFrnwGmqkMfX1bL/gof401wvHNwu5QE3z6XpDzI
	 bV2kCg4wjnO6g==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-39c7ac9b8c3so17434861fa.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 07:31:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpLUqxF619TBOWzAbufK27Z8eLrLat2IIehu8XkTsCxYVcAA4IbT3taKNqGFgYfpgQboinCVamMtrYm@vger.kernel.org
X-Gm-Message-State: AOJu0YybTtkFTDgKRSOvq9Fl8I00W5HKwRsj6ujfXbi6R7ytb+ErZJ+M
	CtRncMfhtRn5srDyZ3IvZyE3RCmzuxdoDjfFWBDCDn5Y4UjwX+0xoCPp8gsY4wDKhRMsJ+USf9e
	ZfhBPAf4pKyQBoHUtj8M1W9AJZ/oZxxSFAYzwc0uRtQ==
X-Received: by 2002:a2e:a912:0:b0:39c:6ea4:f0a1 with SMTP id
 38308e7fff4ca-39c799c85e2mr15206641fa.26.1783607473388; Thu, 09 Jul 2026
 07:31:13 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Jul 2026 07:31:11 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Jul 2026 07:31:10 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260709095726.704448-11-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260709095726.704448-1-wenst@chromium.org> <20260709095726.704448-11-wenst@chromium.org>
Date: Thu, 9 Jul 2026 07:31:10 -0700
X-Gmail-Original-Message-ID: <CAMRc=McZNHswz2E8-0-XKpUwrzw4vNooGrYe893hWe6_Fk72yA@mail.gmail.com>
X-Gm-Features: AVVi8CeE1ugyeFFTvSY6q0TqTEjoKIk_A1SAmSoXfKQhtfuqHopW23IvHHyz7SA
Message-ID: <CAMRc=McZNHswz2E8-0-XKpUwrzw4vNooGrYe893hWe6_Fk72yA@mail.gmail.com>
Subject: Re: [PATCH v4 10/14] dt-bindings: usb: mediatek,mtk-xhci: Switch to
 ports for USB connections
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-acpi@vger.kernel.org, driver-core@lists.linux.dev, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Manivannan Sadhasivam <mani@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323878-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:krzysztof.kozlowski@oss.qualcomm.com,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,kernel.org,rowland.harvard.edu,oss.qualcomm.com,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,collabora.com:email,qualcomm.com:email,chromium.org:email];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5551E7327E8

On Thu, 9 Jul 2026 11:57:15 +0200, Chen-Yu Tsai <wenst@chromium.org> said:
> This reverts commit 454a1e3cd36c113341d7b71e8e691c6e47ab4a8a.
>
> MediaTek's XHCI implementation supports both USB 2.0 High Speed (HS)
> and USB 3.x Super Speed (SS). The block can also be synthesized with
> either HS-only capability or HS+SS capability. The SSUSB controller
> handles the device or gadget mode. Saying that SSUSB handles the HS
> portion is wrong.
>
> For example, on the MT8195, the first two instances support both HS and
> SS, while the latter two instances support only HS.
>
> Switch to a "ports" sub-node for describing USB connections. Port 1 is
> Super Speed if the controller is SS-capable, otherwise it is High Speed.
> Port 2 is High Speed if SS-capable. This port mapping scheme directly
> matches what the hardware returns in its capability registers.
>
> Fixes: 454a1e3cd36c ("dt-bindings: usb: mediatek,mtk-xhci: Add port for SuperSpeed EP")
> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

