Return-Path: <devicetree+bounces-263748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2J/QDKsCiWn70gQAu9opvQ
	(envelope-from <devicetree+bounces-263748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 22:39:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E4110A402
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 22:39:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B493430075D6
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 21:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C564634B1A1;
	Sun,  8 Feb 2026 21:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="ISNt0Wcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213F7258EFF
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 21:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770586791; cv=pass; b=tZU4fIJDCyq9qoN6bNvvOvETDs1Xd82S1VfXhZl8ZK6Jm70mqjMQIsY4HLAooUQB24lb1BhSDMDFMq2456YtJ6zNbHC+zZrK+8fje+uQXUioiEiz9+5G4wlZbVSq5P1VSglL1ZPo4VldkbiV4Mj0DK9wM6xlJRxYWh73q+OOrWY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770586791; c=relaxed/simple;
	bh=bE4KLuNDmmwdLE9+ipQbVHt6P79ExA5fyxCMLhhgUHI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fJFkP3t53u2QSgWKmExgQ+BYReNdfAQShsM25Q1GCF4H63Os/KaXFRknLxXcdslsuSGtFsWCIIKu9sSvo+27sTlupA7yxqlwa9IA4I4W3A58OAb7j9uF7ToPmof+i3aRl5nuN6/rYGqHyVnpfpQtMe5VIFK/Pz/s23KrGOrCf9o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=ISNt0Wcb; arc=pass smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-7945838691aso60297787b3.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 13:39:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770586790; cv=none;
        d=google.com; s=arc-20240605;
        b=O3n8+Xwsy0WMvA/v93K9xjTi+9IIQLWo/glwy5T0js9mAFGSX6GV185LyuV2g1nWaZ
         39LLf3FrgPQFwqaEZY8ee+bLSRVngseUoX0YvjnVxrVPjGgAXhhDc+WdX+rZogBulAX0
         mdmSumC8gtc8vHQXOggjUIZNm3riQ+xpj+neG7/fc+SywB0DuVPCTa/YdB+LmMBnGLuy
         RVbkfhlR3KA6HqyInvrXjq2srvs+Z1ap9AZNdHVrsdY/OuSlNiY+NcxO5Y0phQ/XaVvl
         oEHqUKrmfkZ37ytZa+R6lXBUAM6bqOswO6BfxofQhbIw+aKtwISF9IRL/uJCDhtqzGRA
         372w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bE4KLuNDmmwdLE9+ipQbVHt6P79ExA5fyxCMLhhgUHI=;
        fh=2i3jsVeG3kSkteJlJY4R0YCTaK6uA/fB566JuLU6vvQ=;
        b=eJe5XxSNYolNKVv1BM70fJFQNzEygX1Cj1RlmoUBAN1R4dAgiahDCabYghxUojZsmT
         wx8Zi32s0WJTV6yWg98TivaCOfKtP6PpZ6Pde00dwnVcpfYpAFnOaoX81msfmshTFdDX
         iJYYP1NsAtvPyx2UoYH+d3+knu8GZwfK7C3tGr5ua1qvaQYzUV3/KavF7Y8L4KaRio+a
         tD1VcCATWlxWJp5TTO6/W3D/M5PT6E14CiVthr+YMDeImZ0LFYVEI4qhvWNuuy4EmGmb
         vYqLPS8r8PGOxXiC9ITjhODVN4qt7GysJj+PyWSRG6GyJ10CUUhxJlSLg2HwLie2LmST
         wkzQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1770586790; x=1771191590; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bE4KLuNDmmwdLE9+ipQbVHt6P79ExA5fyxCMLhhgUHI=;
        b=ISNt0WcbRgPjx3kC/9pbRh4YChVp5vK0PmK8CQJXxPJUWWxNwUrXNhju+4zhQKeXHO
         hPzQ1hjwY9DFgQiSGXOcxSccfYhaqhYO2AqDAsr453CUlXpWHSoFMj5ekRUqL9/vZsfe
         hoy1WUiUPAQ6r05j7VXC2AeFBD2oT+a7GtP9wTzNljQ3SDSL9GXs0X5PiSosb/KoEG/L
         7/aYslmWH6c1db9BTeaSGQzlizP15komLGRH5TFT9GNtk6SYzQs3LeEWWsiko/Vgs1au
         TLdh6h2tm0xtF6lZYR1XlpRg6riLrXcB8o+6zY8ChZJjIJ/AmYSO+yeJfsIYtxBqiZfa
         MBTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770586790; x=1771191590;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bE4KLuNDmmwdLE9+ipQbVHt6P79ExA5fyxCMLhhgUHI=;
        b=I5CDFKbn8RTqA4iM/kqXH3URGupN+JskZRF7ywdWMTKSytA/NyLASvhOIInpwMSUH1
         m6aPRsJX6U8B+MB1pfN7S0f0h55K/6PpxesomfuAL55icBMgjhd/0VZRd3mgHgYZTVF/
         vbfPooiDlOVQIlGy5uQB8VJvGQKq8mLUkq88FWj3U2lfG5I+WjgRB4mkqtuUM7IY2hzu
         LPBsl/ZGhpbRaAc8dlvX+s+lJrZbB6ExzAYuDBCWtGwBpMiephqre6H9XdLjj0UCv06X
         KZZoyIor3bIwcty/Y6qFY1GwiRv7853SYtdK0r1JWSth4qLZslC67+RKuXix3tVsE52v
         Yztw==
X-Forwarded-Encrypted: i=1; AJvYcCVduD76IjRWI2oy93zt32iF50zo6tHD4c2dryBcS8VCCVp+4hvQ1sFWOKOCB4DbttF32Klj6EKSwOB4@vger.kernel.org
X-Gm-Message-State: AOJu0YyTzOtYxWYOTzV+5G520tqDsQxAjmcxHdaY5FcXBWL2hpdxcA42
	CmsIUnxCnP+sVzrxG2IL0RmQqlt1Qt/Mfl2hf1YMSMUw0C3JjMAcvtXi1nlqooP/1Qwx5zEYRjC
	TeUcEAHbnKYX1tcYxNnnE6SzRWK3BZ/4QWZalWV5YaA==
X-Gm-Gg: AZuq6aIJKEoPDCpRfjsDE1QZeAhLQ8yIcU9QGo7QEJYyK4UONm+t4fD2Ci3KYENuXvo
	6JtpZ55PA8k14veC807Qhta0N+sgGerytjxTNYodMxgAah9CuUx7gvdgZ4To0bS10oYeLHPgt9+
	774AZERJ32kgWBL4zw96I3usc8ISOCyydC6lmfb9sBW4uo8knSRp3njLMq1ZKJQZzN6wXEVi+Yu
	6ySwsz3QrFzZFiUAaaG76G1b8WXr9OU2SY8ha1WvWwg3JWm5RpfJetDoeq640YUBRj9HnCkRb/s
	uL8qTPTEsrTmAjdRnER+iTKgLY+Hn/jtp321zQ4gy+hwVMJZGK9KWj4AhA==
X-Received: by 2002:a53:cb85:0:b0:649:b062:674a with SMTP id
 956f58d0204a3-649f253441dmr6382827d50.37.1770586790136; Sun, 08 Feb 2026
 13:39:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202-atlantis-clocks-v5-0-0922e43acaba@oss.tenstorrent.com>
 <20260202-atlantis-clocks-v5-1-0922e43acaba@oss.tenstorrent.com>
 <20260205-upbeat-tortoise-of-admiration-b3c0eb@quoll> <CAEev2e8_4LSLNvHsiC4d7Rrd2GmjQ_5GRHU6b9-Ha69+yvn5cA@mail.gmail.com>
 <92512903-4651-4ac3-b3ea-c9297e866a3a@kernel.org> <CAEev2e99LEoi83_d09NEJwzcSiYdFFZvLOFZUTRRrYtL_qCErw@mail.gmail.com>
 <e242a327-b53e-4b24-a9c1-9ae990de901e@kernel.org> <20260207-stifle-chowtime-8502c0a57f70@spud>
 <6ebcb1a9-78ca-4734-8723-758f79e6819e@kernel.org>
In-Reply-To: <6ebcb1a9-78ca-4734-8723-758f79e6819e@kernel.org>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Sun, 8 Feb 2026 15:39:39 -0600
X-Gm-Features: AZwV_QgkEwTCiwXuHTTQ3WLCXuNOfifaUxe6wncI1nA-Tus6DJ7O3arSqaM8mRM
Message-ID: <CAEev2e9ukBSgWc5WT1xcv+G1ZzOWAnuwp9kaJcKKe6mbtOtoFA@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Drew Fustini <dfustini@oss.tenstorrent.com>, 
	Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263748-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-0.970];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 55E4110A402
X-Rspamd-Action: no action

On Sat, Feb 7, 2026 at 12:39=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 07/02/2026 15:54, Conor Dooley wrote:
> >>>>> suggests picking a more generic name in this case, so isn't
> >>>>> "tenstorrent,atlantis-prcm" okay for that?
> >>>>
> >>>> No, because I don't want to keep guessing this. The docs clearly ask=
 you
> >>>> to post complete bindings, which now became less-complete, but fine.
> >
> > I don't think it actually is "less complete" without the other
> > compatibles. The non-rcpu prcms function differently to the rcpu prcm
> > (they seem to be consumers of clocks that the rcpu produces) and are no=
t
> > supported by the drivers in this series. They're different devices and =
I
> > think should only be documented when support for them comes along. v4
> > had problems that were caused by trying to document them without
> > actually having driver support figured out.
>
> It's fine without them, but then let's just name the file after that
> only sole compatible.

Okay, thank you for clarifying this. I will just add one compatible
and name the bindings file based on that one.

In the future when I add the remaining compatibles (and driver for
them), should I add them to this same bindings file? Can I rename the
file to have a more generic name then? Is renaming bindings files
okay? Or is this something to worry about for later?

>
> Best regards,
> Krzysztof

