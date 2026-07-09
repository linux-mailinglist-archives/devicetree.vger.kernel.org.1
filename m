Return-Path: <devicetree+bounces-323776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6jCOFBOhT2pilQIAu9opvQ
	(envelope-from <devicetree+bounces-323776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 15:24:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 826A0731899
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 15:24:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gSCxJZbI;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323776-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323776-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59C0630363B8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 13:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBBB11FF7C8;
	Thu,  9 Jul 2026 13:15:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C211BC2A
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 13:15:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783602949; cv=none; b=IXvaGa9QAQvEPG8VX7NReij/8bVelS1E2aJodIzvZYWRu34Y3DHYMteAOoQN6s1TTTnMFoSlv8f8mLXd+L/okCVPBBGoXMlzpm03Jf4aafzXWLPJa8I950kjlM9kEhG30tzaGOwmfUaWr4gxZO77D5PMmm/WVL22dNWUQ3G83/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783602949; c=relaxed/simple;
	bh=91Kjy1zeybXRCeeGvh59yf06osK/tzkAkgdwJW/cTYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CnoUPEwy742YjjGwg+KsoCNQcZYkf1DJpfrXy235wDSEu2ICQWPKJfKYJaXrf8/I+0YL+rbDGjPtFKH+/6O47BE3DFkln6Avz/Fwkm9Go0vSvhcx+v0MLxbKxL7sPFAGVI6rp62aWIXgijsd/nronXFdHysi2gnf+fs2GefCYhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSCxJZbI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1FEE1F00AC4
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 13:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783602948;
	bh=91Kjy1zeybXRCeeGvh59yf06osK/tzkAkgdwJW/cTYM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=gSCxJZbIl24MhP0Zhqb0oxb1lCopKMBME/78SbkshPDxvaWHwYvJdrs1qT+wSxl0R
	 e99/UJcY9v5ZXGmTNgoszPIWkY3J2z3PvVgyj+AAVN556CQRQqwputqNYVQq91YXUG
	 AoV27x1xs79DoCZVWWyuNaVIimWLixuHtaf/su653g+rVRqLvIe74J+0FjDGD84YYH
	 uXMtvW1pDNoCpLrFQlVWu/tRIlpX38kIbAB30q3uKbIXA4JaUc7iKcf5zxboO+d2KM
	 8jVb36sm6Q4Kt+nljTkpXjfwqeGhudYv42gd5SyJ++sbXHz0VYPPMLFbPQeivlzs35
	 bNvqZyk3Wy6RA==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5b00d083818so856942e87.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 06:15:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rq8PGOvo+s2Hrv94aowJ4GR6zXkn2yR3O46RGyrB+4vmFoxK2I6vLsLpQtcVTN76P/gGeuzeAZzg4hd@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+QlhyH7do4x3XGQA7IPVeg/qH4WuPJ+Lu+9SLnR+QniBeAY6c
	XVB+hgPjCjFjE5qYWDa2/LDLYLXLxmBoFLpmyJaNA+vrEDPcqwtG883HFvUCWYE9EEPW9soUjcd
	f/bGmCevA80fT/46YNrNhUMI9pFCC8bo=
X-Received: by 2002:a05:6512:1092:b0:5ae:badc:47d3 with SMTP id
 2adb3069b0e04-5b016d615f0mr660965e87.28.1783602947523; Thu, 09 Jul 2026
 06:15:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260706101942.341681-2-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260706101942.341681-2-krzysztof.kozlowski@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 9 Jul 2026 15:15:35 +0200
X-Gmail-Original-Message-ID: <CAD++jL=Xy_gdJ0GRtKJJRgjwWgpK6wjvQNqemyvbcZfuJZLNyg@mail.gmail.com>
X-Gm-Features: AUfX_mwUf2c-_Y4UekW3PrE8vLF_7BJ35RTcEyy-SktxQFNLjW19tbLMp0sEH2A
Message-ID: <CAD++jL=Xy_gdJ0GRtKJJRgjwWgpK6wjvQNqemyvbcZfuJZLNyg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: arm: Correct indentation
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	TAGGED_FROM(0.00)[bounces-323776-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:liviu.dudau@arm.com,m:sudeep.holla@kernel.org,m:lpieralisi@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 826A0731899

On Mon, Jul 6, 2026 at 12:19=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:

> Correct spaces or mix of tabs+spaces into proper tab-indented lines.
> No functional impact (same DTB).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

