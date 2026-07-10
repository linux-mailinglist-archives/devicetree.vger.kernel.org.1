Return-Path: <devicetree+bounces-324630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZQ/dHu4/UWoJBQMAu9opvQ
	(envelope-from <devicetree+bounces-324630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:54:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A12573D728
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:54:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=njlNg6ft;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324630-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324630-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFF633017037
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C6D537FF63;
	Fri, 10 Jul 2026 18:54:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A40537AA8A
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:54:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783709663; cv=none; b=qUbqrn9ie7/Kuzu2H/rqRZ1f8uiXlwJzSz0Cem3ApqRdrlnugy/xpwpHDl7teK0CcrFsc/Ph4F0EBLOVCUKrpNjowu/J3XDSNhb3PQ2owWrA9zr96F5G1U221+xN5dhSkfZ8BxyGQ3vrJhnOMEs0OFOPWVpsdwpKHfF5NaoTJbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783709663; c=relaxed/simple;
	bh=ouBlTpHGnmyUfrXsmo1Bq7O40Y624bpYwfRwC5r1Lzc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=swiDlkPDmJsgp72BUWCWTi7hiTLZa9/4svvXxlVU86lZmdUpfg1WwO9jO2qUjgkzla0kjwkxDsKizth3mmVsl6e26ToDX87r1QLhqMdKfdYxm9DqjzlhKPBGoYlC+diNqzZCExc85EY+L8eJI4Ic4L3aBzuIJ0VbMCv5pG6W+Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njlNg6ft; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8CBD1F00A3F
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783709661;
	bh=ouBlTpHGnmyUfrXsmo1Bq7O40Y624bpYwfRwC5r1Lzc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=njlNg6ftu1pr5TlPVDwX5iYcyzqbkWZjhazrr5pZxCuSLX4SS4vRCyPH/3Krq/JKR
	 2qVVUZWPTgLmxYxYxlKOZefx8K3az8Cm991C6PSaghBVPz4x3qjpZJji1f84w19KTv
	 N+EIVk5FrLC8rA/qN4i6WKFcWmFGbqUxEgMMxQE6qhUzsS162mRMAMSc1aGkFD8Pjo
	 wBprcfpqR37kWJJKptREZel4YnXs1YnkL4jmUS4kc58cjcJpj17sjp5kiL95SipdiW
	 iPhR1kKFCgJFwx6T5YrAVxMJgUuJFObpzapqamBWiZ1BnxkagBQ0cTALJo3Q45YioC
	 0GBdXgSJ4SxCg==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5aec6360133so887704e87.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 11:54:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rq5D0N4N9306EF++OLHk0fyNbSH+hMScog/q5A29b5QfC6n3WmLhpF0mZWTlKSBB147xQytDsB5zAOz@vger.kernel.org
X-Gm-Message-State: AOJu0YzUJCWHCeAGZbVvQltVPvADi7Anv8OlwtiVGfYAb9Q6SRQalQen
	8214/tJ+jfcTi5DSPb94rFEYpg2XfwNUahkFZXlw7pIWvCGYo1ZN8ZRPCf3k1GJ7oK7ruiVVkvR
	T+sGqrjRPhm7cHwn0/feGLR709PyeZWE=
X-Received: by 2002:a05:6512:33d1:b0:5ae:bd53:70f8 with SMTP id
 2adb3069b0e04-5b0236a3403mr65056e87.47.1783709660727; Fri, 10 Jul 2026
 11:54:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260706101823.341230-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260706101823.341230-4-krzysztof.kozlowski@oss.qualcomm.com> <CAD++jLkQPHfq=_D_TPMbmmA4JFwbhhtTC+3Dj+uD2P6LFNtfUg@mail.gmail.com>
In-Reply-To: <CAD++jLkQPHfq=_D_TPMbmmA4JFwbhhtTC+3Dj+uD2P6LFNtfUg@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 10 Jul 2026 20:54:06 +0200
X-Gmail-Original-Message-ID: <CAD++jLmk7c-836VWFkZTKtgFgvR-4uizQShiUuyQ7jL-iAJP_w@mail.gmail.com>
X-Gm-Features: AUfX_mx-aW0xSlv_lXB_IgSnV0_rVkl-4iwi5PwHYhMokOtVpZa9KEbz-fl7ZxA
Message-ID: <CAD++jLmk7c-836VWFkZTKtgFgvR-4uizQShiUuyQ7jL-iAJP_w@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:vireshk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:soc@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A12573D728

On Fri, Jul 10, 2026 at 8:53=E2=80=AFPM Linus Walleij <linusw@kernel.org> w=
rote:
> On Mon, Jul 6, 2026 at 12:18=E2=80=AFPM Krzysztof Kozlowski
> <krzysztof.kozlowski@oss.qualcomm.com> wrote:
>
> > Correct spaces or mix of tabs+spaces into proper tab-indented lines.
> > No functional impact (same DTB).
> >
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.co=
m>
>
> This patch 2/2 applied to my ux500 tree, thanks!

Oh nevermind they are already in the SoC tree, even better.

Yours,
Linus Walleij

