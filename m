Return-Path: <devicetree+bounces-324629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CU5jE60/UWr6BAMAu9opvQ
	(envelope-from <devicetree+bounces-324629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:53:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A94E573D708
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:53:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nC1gZkZG;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324629-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324629-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC46330234FB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B348F37702C;
	Fri, 10 Jul 2026 18:53:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67512882D6
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:53:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783709609; cv=none; b=d0Kwz2uNIq38veNu/DHOlxN6E3Lnny9JhduqTODNXNwoxmf+h3Xj0ovMaCOEPDEdw8rALlnUsOSeG+gW/CtlX09sO6j0opXCihXjGdfwzth8gDtbnQ+YdmYV4gxW5UysLAsw0bsx6f+1crOJaRHymXEXWVMGN0QYatVoL0kDMl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783709609; c=relaxed/simple;
	bh=mS485fOgIvhcuepZ3Oku5/wDYi5YVAtYod06IGUO/W8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DlVS6Rfbqo1bibt2eM1ANZCjQ4XFdQc5AY4X4vB+jJlyhD2wlKZeN46eeMI4zvS2FLfzsV6h57dicI8G4oplQBskE9Z2x4T0wJRc503K2rKcsI1TlYwGVvDSCOaLNh8oL+XR2v7qhfSPMN6WvpLDb2geSOrdmaqcyFEttHFuP4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nC1gZkZG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CB621F00ADB
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783709608;
	bh=mS485fOgIvhcuepZ3Oku5/wDYi5YVAtYod06IGUO/W8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=nC1gZkZGUu1c+ijRrCKUlcDODg0wDdbTfE/l8HAx67EYodxhv5NUpCETx43W1TTkU
	 6bDmYUu3pjoHfW8d2SifUOq7ef+JQ2k7es4ev27hYVTTZKTUID62MenQ2qHU9p6Q/I
	 zshxisfohZVOFnwJOtkapzZXGeHFRn0EW8McOD4z/5N0bWb83eNFd5SGxk7fyh7Rmu
	 MSWB4cyXgFLPcAbRCO4i/8frv/c0YYd5dRipH5fhIQDqUj0UqnPhcSi5hhsj+qBk2Q
	 R2kNF9ITFd5pqJ6qFZwzWBY8QqJQNQpRjmrA68EfbzPlDGKbgw78ngCZ7RxgkGmbx3
	 qwqeIi/pPifQg==
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5b01146b205so905261e87.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 11:53:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrYBOAPklOi0VeMuTaJ2r5oWi0geUKM6fnIY6E+9DtVbS0CZCJhvii2xXaZjBTBeWOkEqjTlbgUfcTH@vger.kernel.org
X-Gm-Message-State: AOJu0YxVj13li0+mteL1LEm4o54YB+mx1g2AOhz1HfAvCkU7xt2HINg1
	VFtwbw+bqgq/QyJsrcC3QFiySHKfYvAlJFe1oUV0rSIIaeo11JpztxtZwvUusp4k9HYV05Z+Nq4
	UAxegtKmIGngj+VsgWcWGuKVKd9cEBO0=
X-Received: by 2002:a05:6512:6699:20b0:5ae:b629:4517 with SMTP id
 2adb3069b0e04-5b0236de948mr44182e87.63.1783709607271; Fri, 10 Jul 2026
 11:53:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260706101823.341230-3-krzysztof.kozlowski@oss.qualcomm.com> <20260706101823.341230-4-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260706101823.341230-4-krzysztof.kozlowski@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 10 Jul 2026 20:53:15 +0200
X-Gmail-Original-Message-ID: <CAD++jLkQPHfq=_D_TPMbmmA4JFwbhhtTC+3Dj+uD2P6LFNtfUg@mail.gmail.com>
X-Gm-Features: AUfX_myNLzbgrTSqqqiX6xG1do6m36L6LA1SqCR-RLu3gRQM6LPnA90pLzI98Wc
Message-ID: <CAD++jLkQPHfq=_D_TPMbmmA4JFwbhhtTC+3Dj+uD2P6LFNtfUg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: st: ste: Correct indentation
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, soc@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324629-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:vireshk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:soc@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,mail.gmail.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A94E573D708

On Mon, Jul 6, 2026 at 12:18=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:

> Correct spaces or mix of tabs+spaces into proper tab-indented lines.
> No functional impact (same DTB).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

This patch 2/2 applied to my ux500 tree, thanks!

Yours,
Linus Walleij

