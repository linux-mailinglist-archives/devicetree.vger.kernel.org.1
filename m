Return-Path: <devicetree+bounces-277025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHBKKK9jummoVwIAu9opvQ
	(envelope-from <devicetree+bounces-277025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:34:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C452B821E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 833A230DB1F0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFCA73815EE;
	Wed, 18 Mar 2026 08:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="PyipFHRL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAFF3815CC
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773822652; cv=pass; b=jk2j6reiDv/dyS7Iy6ZnC7Xr2OuIOzIIAN6R490hgEVH5hf2o8q0PlpzIhl44/bVmgkNWKHoTiJG+gKttRU5Svb9Lg6dSsosWwyq1hCxIAlTatahZ14L9iu3+k8joNdVB6A3jyjvajjFi2bJynv9Hec7GnFb6D7hBWDmtEhB1SE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773822652; c=relaxed/simple;
	bh=y5UOcqnH2MD5V2vd60aLTGsn4Lp/YNbijHlJE0Ujmi4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RmJHy/PHIlR8Qj3AZvsyFHmcohgNd2II8PAfkTEkH4cjrDsUg0UiPz9HwpvfxxiZfGs5StY8974eqpSIgEBDiKG9ACYwcdguyEVTw2GJShcGrw3ZzA6gBPpxfQxJPoHOn3t8n5jz8I2E8rATBMQ+mXSGrVZ/uiaD2BIGeTzCv/w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=PyipFHRL; arc=pass smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b96d784828bso983781566b.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:30:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773822648; cv=none;
        d=google.com; s=arc-20240605;
        b=CLGLCHj/ZGZZpQcdGFZ7sHAN7bVHa0E/aY+ZIf19tBKhntXbJLMOt8PchKhcE2iDZ5
         VDvX9hglwc1MK3B7lKHjGPF9cBkUCgMwJbPdYap2s2fdo4DTYueF+kuOZUiIXBtfBA5L
         SeShk/Qcl8pNVnTbVTTvbcaGN6if53+sp2qjN9w4CFRO6upzHKNU9xOy63vP3uUSJlyG
         nxAK8CsGGx13V5Vae9Dg+/O8x8Tazwv/gaUT7wUffibocoHPK9wA/Bw3nBI1WYxDq2aJ
         rAYQSYV9tzcS+kl8Lv4C3X9DFPnPPkmDrdM9N99ippqezIKIn0TvwrLX0Vvncf2qgEiJ
         wZXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BbWR2/gQozMOlanUkb5RxqFQxqhUpLHTgJQy5vCFP2w=;
        fh=U75hDmEGP54BYrIr0q6tSwPSPcKs7Qay9UvF8GjZoEE=;
        b=D4HoccM1FCsPImOzUyTh/47lvRQfQaTZXMSOFs7dEJYTo7tCoa7Xkni1JssJk+N3ZL
         mdK2dEdto9MaUSIeIclCwLUpnKRY/j2tDrNI3zEUXNcb8BEkhDWOq7rZkyiSaj/7s3/a
         2K8tw3Ul1ktnz4TC3zWdhNhIhL5UfOCbLnckyhQGiPPURCeGxd9zCOsKhYkWcfXN5G2n
         ug9F5+ebWQnTqlREmOegLfje1p/KXWtMOkJJwXXB6WOIBH0TCuM2EpiCfuCEUFaPIIgj
         Tx19BY2R5+LY2QDCcoAoGR2KdFQz69nhX+QV5CKO+8sszHjNyp66b6xugFf2RYcjl2w6
         qVsg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773822648; x=1774427448; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbWR2/gQozMOlanUkb5RxqFQxqhUpLHTgJQy5vCFP2w=;
        b=PyipFHRLOZgpf1CaiRZsSj4hPJBn9Mc/WI6XgbagPRfqLft/8BlFGwjIUaUbUK/W6B
         vw1H6776ZDr+XB/yRF8NHiENlFSxQ0WTMkAZBYSJtAVIFU16kBP2IXbuXDaBRR1IV/cn
         aqK8mp53CWvHeY50lrifjbwUddzECMRjDqqUxD8YzXkaoBm/FAxDkyGWAbSuz3KCDcwG
         ywWhik7+Ic4KUHbmrbQzG7sjKLPuRHp5fJLPhZmRbQhbWsOwgsmV/AHycLX+OJ1UJeUQ
         e6LHP1mkVWKbmZKsKHtWj+UG45IgoSeVqY5z8bIXu/KiUkqQIziuETba+FNLiOloGVfg
         Y63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773822648; x=1774427448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BbWR2/gQozMOlanUkb5RxqFQxqhUpLHTgJQy5vCFP2w=;
        b=OkzOGC6yw9gzF1+XhIVK1rkmJYZbGv5228vL+m4nT24Sj2ovwhhh7nr/xXpoxnEDnH
         n11K8GteiuZ49FtAA/pg80vVH2FIcPRNnRZ1iKoGy9so4U+ohHvDfKopSYnkoRpNTUx0
         bK4vTgwLzzObEnvGslWARTvACtIcCEB4cuIV73ExCZp/+E4Ps6Y2CHf473mK6v+FJkNI
         LpXVRh1cDlnQebRn5lrs65f6W5Bv1aaC8yXP5oDiSuEF13LAw5uvKl9HF9okqimVWZhn
         s66PklGA0U1+qzFVeiZsdMGflkmCn8oEpVK6UW+dlRdoKUiQiRUPZgaZ0x7+IAnDglAP
         E4fg==
X-Forwarded-Encrypted: i=1; AJvYcCV8H7q887fBYXMMOb0MtsDZJJjnIHRDqU30TVi7NGip6SME4pOdwdNVnm5uC5/02YhHILSQl4cE0tei@vger.kernel.org
X-Gm-Message-State: AOJu0YwrK0onYP4t6W+BqRk+0uM79b9S1Sex8Pt939BufIaQzLekhqDR
	gVsSqqvi63Ggng+b2TJfWp/afiY3H5GFS1Kg5tx7zouU8EGROInHeGQoxmkZY5kpTsvPAG9yIXf
	BgG1rCumCrKHd2XnnB4WaOT1NaPoIgb3YEVXvNjirUw==
X-Gm-Gg: ATEYQzz4HsRhe9iDW356Z/ZklcwPvrPAdl3F0RCJNJPkoLfz/zncbaMhBono2TSdBMx
	e3PvvKC3skN7q72YFAJQzJRSaQrz3jDwKwIxAAQYTRlqKmNCldzkfFw9exlJPrwQfAwHY4mk/xZ
	GE66n1T6QQ13Pu4//O0jEcUj0+0NgFlnZVpsPiAT39mlNnRVgEVCzYLpsNY2eOSEOr33M8m6but
	rY3/cyJpPeu1fom1QYzF5uroTTCIYyuvuE1y9GsZPoErKy1UiqhLmQY3GhMl706S27hP4iiJZ/h
	rdahl17H
X-Received: by 2002:a17:906:560b:b0:b97:b6de:8b70 with SMTP id
 a640c23a62f3a-b97f4a83971mr100061566b.45.1773822647758; Wed, 18 Mar 2026
 01:30:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
 <20260317-husb311-v2-5-03c17c986abe@flipper.net> <20260318-able-goose-of-downpour-db3bbd@quoll>
 <d925c15d-add5-4f2a-8eac-fa7dd1b56bf2@kernel.org>
In-Reply-To: <d925c15d-add5-4f2a-8eac-fa7dd1b56bf2@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 12:30:30 +0400
X-Gm-Features: AaiRm51FSOw7GXPkE6PrP7Z08J3AwH80SUW7rhgBPEdKkIl_8cJ7xjS_zqUlAVs
Message-ID: <CAKTNdwH7RswOSBZyVKvsHfhZ3-xwyDs7ywOHuafMFb1-xNf0PA@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add HUSB311 Type-C
 controller on RK3576 EVB1
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Gene Chen <gene_chen@richtek.com>, 
	Heiko Stuebner <heiko@sntech.de>, Yuanshen Cao <alex.caoys@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277025-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,linuxfoundation.org,richtek.com,sntech.de,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,flipper.net:dkim,flipper.net:email]
X-Rspamd-Queue-Id: 04C452B821E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 12:19=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 18/03/2026 09:17, Krzysztof Kozlowski wrote:
> > On Tue, Mar 17, 2026 at 10:08:02PM +0400, Alexey Charkov wrote:
> >> Rockchip RK3576 EVB1 board has a Hynetek HUSB311 USB Type-C controller=
 on
> >> its Type-C OTG port, which also supports DisplayPort Alternate Mode.
> >>
> >> Add the required DT nodes to enable basic HUSB311 operation.
> >>
> >> Note that for full support of mode and orientation switching, the USBD=
P
> >> PHY schema may need to be expanded, such as in [1]. This is left out f=
or
> >> now until the respective schema is finalized and merged.
> >>
> >> [1] https://lore.kernel.org/linux-rockchip/20260313-rockchip-usbdp-cle=
anup-v3-1-3e8fe89a35b5@collabora.com/
> >>
> >> Signed-off-by: Alexey Charkov <alchark@flipper.net>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 20 +++++++++++++++=
+++++
> >>  1 file changed, 20 insertions(+)
> >
> > DTS patch must not be in this patchset. Don't mix it.
>
> In case I am too vague: by don't mix it, I mean - separate DTS changes
> to independent patchset. They cannot be combined into USB posting.

Thanks Krzysztof. I will split them out in the next submission. I
think it's important to first agree on the use of fallback compatibles
and the best way to handle the (already queued up in next) ET7304
patches this cycle before their bindings hit mainline. Then, I can
rebase and squash/split everything as required.

Best regards,
Alexey

