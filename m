Return-Path: <devicetree+bounces-274454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GB0+FDJjsmntMAAAu9opvQ
	(envelope-from <devicetree+bounces-274454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 07:54:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA9E26E103
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 07:54:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 327F63038AF2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 06:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D005139E6D4;
	Thu, 12 Mar 2026 06:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="jo3HEwFG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BD039B96A
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773298478; cv=pass; b=iC1ZeROrzS1BrHT3/Jt4MxQOYAxaASDXqKOk2YvLHFbLEw7HpTFLaEJ57FdHd/ZrKBxkFkuM7oeL3BOV7aK9UlnZT2Y9PlQTRKrwSYWk/YWucE3YkYiPF18LfhBjtgoO2mFF8A8TC87JgE0WC6a50kntxPKbXHuB0O5wUovH6LI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773298478; c=relaxed/simple;
	bh=OwgPUCiVxJ6rlcodDLG/pyKdpMJWw543hdmyMimUVR0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Em3/CDIge3DL4FnsKA2LDCgAIjYsiG7w87mtUwb/NYT8zeScXnK6rjgIYpOWVNVAveR2+r2X1M/fvKKIczMrhrHhqteG2KQx3MwIQovk+GZDGty2UwyTv8LviZZzc9A7UdcheIoI9B1rtzvp11CnWDWZyj1387/BmcagCdyfCp4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=jo3HEwFG; arc=pass smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-661568ce781so821484a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:54:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773298476; cv=none;
        d=google.com; s=arc-20240605;
        b=Z622WabBTfA3rIkY0Uy1DbUWfZqAY9IM4oMuxSdNqDfV6EELZaSLuMr7URKvUsAJ36
         oKYKtZA7BJpQejOdrwKa+qwabjmCKCR+3mFHDmRkxU1WxYCwm0Fhi5M/u4nnI8T6QYPX
         AXinGYNetWRfeYq/PLYP4DB6Jb59l6xBbaXxa0GDN+/585t7zldrO6xQzTujtLQ9TjmJ
         5Nl3R8MsDlrba6DSxbRfU2udcQ+I6EgvZAjteAViCozRMcpe/WpXsOwL6QRxVJgCa6Dq
         1BM5lAcXYfAunCtd6Ujh4LtPB9VMTQfis+AfmBz+7m0GULQuOPOnZEWWaom0b6tonmEg
         E/Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6oVguTUzToSREXHO6bdHcFzlyooNi+O9a4UrcClhK8M=;
        fh=dhpnuBjaZ9gsWCo34prGr9bheqLi3gTLK1RgxvcrEbc=;
        b=MzTZe5qS8kEDlwofNjWxvsLdfVoTd418TtFUnXWHa6co2kYF9AKsaNfCWXFixD18NT
         mU2LiBEvgQY0TAXOGb2D9osQYR5q5BVx4CO2Chcep2mYwnuPUlCJb7QVr3G4pdXOLk+6
         +7wubEe9oRISLIOhSFXzoUXFqSVDFpy/p1ZPj66R8tPQczXTyNWXY2h9EBE43BtytxZb
         LsOLbN31ATfAN3IMLXFy6fLdDr64hdWdQnNGJ8XZzyrsGy+iV2Jt6LS5SJbye8Mpm360
         eYJMD3oYQ5ElcIIDW8IWT9umsVASQhdISPNQYes33pST4wrJSD8LAbUFmMNDSimhj9uF
         O/NQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773298476; x=1773903276; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6oVguTUzToSREXHO6bdHcFzlyooNi+O9a4UrcClhK8M=;
        b=jo3HEwFGfDQeaNDLq8UjgPgQVEwhL1su924RATM5il8GtcDaRqcwVGQxRzDzqigQ0N
         N3i1u4VOy7moF1H5fOuzgC/3oTQLzJ980vKJspFOdRAQtH73SoGzJy360O5uuVuSRsIC
         57Eh5AizpApCU1bTWnCGDH9ac8EL4yBJTwk+pLPelhqwr1wR7Sme23x8DY0GbNGwm1YC
         vbkH2KWpJ5ZgZC4zPOgmfZgeFjOpeurPmnffTW9jLaNg7nYKLD9nq2G1B2jDF9fq1vtn
         UQcIvBziO8s34ZTPoNZDivye6X/h1DhusJRtRDk/pyz2XzGYXJLpmZSBNIxrE+Hz4zjE
         GoAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773298476; x=1773903276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6oVguTUzToSREXHO6bdHcFzlyooNi+O9a4UrcClhK8M=;
        b=e/7lp0FjYlCfycKJjoHmvd5o1J1fSBR4tG5Av6mAaDvMbbtFA+q8PgTJOJ/K/K1Zoe
         fGpAObYD2ofxytbz5DgVZWzwMEI69a8fi+sJeIj492AK4VmZAj3rXoHIgpofeE94lP+4
         hFZmnsekaBy2TethQivy+VKxGkxucSeTaWYrZiWXQuPherpdlsiPKYKaStJRQGCPvDt1
         5iHKGRqNe/6CdIYgot0hrLLXfymVrjhZDyxRj+7ASI7bUg6XAhUvWAdigvIBJcIXO54D
         0i782Q8YnbIYeinejxyupXuaFYrUs98OP4VlzpNpV89LWP1QcD3mzlE3/irYHtdxSWRr
         eFew==
X-Forwarded-Encrypted: i=1; AJvYcCWtF28NGqk4CGb56txPsFn5mJ5oX/qi0Ev6RhLP1hvAKqrOBDR2T0Zehas1/qOv2EitIQkiFcgOhi2O@vger.kernel.org
X-Gm-Message-State: AOJu0YzwNBjktNS5XhMAfZlBoITAkgETb/45AwNdVppoltDtIP3XmRvv
	KaquTuCQzbJdPY9nXXugSshkoX8RwVjF+nFYFYi6rgMnpcCENIwQUFP83lSyXtehfo5f6I6aSyR
	b/Me2heTIlbPNMQ8YJoRMNUmqUZg7aPNs+KXcu3i1Sg==
X-Gm-Gg: ATEYQzy3OoldiVgJsKd2gCqixPr6jTE7epL9xu3pD7uGB8MZfmK00YiNxddNl2OUwBJ
	0+Y+ZJylAG8dhFii+41/1V3i3RZSa1shywwCuXxphXsU7db9Rtm//UYSpP02y8cF4IiNmd8pmOs
	S75toQeX0Guk/SYqwPOS+DMh2GJikMhCAE52e+zyYeVJoxQ6+sn1H4R4+vNRyCIwkAkHQxS6V5C
	B3vWgbGaZ6mbMAesaU2Wucd+D1+c6oy4ptw1P/UuW2PoquybGTQD03JEweyfdK7LnDli+Kw8W2s
	51iDRPI=
X-Received: by 2002:a17:907:e107:b0:b97:3bbe:e42b with SMTP id
 a640c23a62f3a-b973bbef8dfmr132912266b.28.1773298475586; Wed, 11 Mar 2026
 23:54:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-husb311-v1-0-f25bcb58cff7@flipper.net> <802df30e-607b-7404-6693-6691ea45618b@manjaro.org>
In-Reply-To: <802df30e-607b-7404-6693-6691ea45618b@manjaro.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 12 Mar 2026 10:54:21 +0400
X-Gm-Features: AaiRm50M_qGeqn0F08G8Ku0uzvOc6xLaJrTU2Ngsn_GnwpJNfaW5F6HrcA9leKI
Message-ID: <CAKTNdwH-dPdKyN9-ohWj4PCfRZ-DzpG-aysoULMPb=-XzJTwPw@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add HUSB311 Type-C controller
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Gene Chen <gene_chen@richtek.com>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274454-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,flipper.net:dkim,flipper.net:email,hynetek.com:url]
X-Rspamd-Queue-Id: 9AA9E26E103
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 10:32=E2=80=AFPM Dragan Simic <dsimic@manjaro.org> =
wrote:
>
> Hello Alexey,
>
> On Wednesday, March 11, 2026 17:20 CET, Alexey Charkov <alchark@flipper.n=
et> wrote:
> > HUSB311 is a drop-in replacement for RT1711H, used in Rockchip RK3576 E=
VB1
> > board and some other boards closely following the reference schematic.
> >
> > The existing RT1711H driver seems to work fine with HUSB311, and there =
is
> > no public documentation available for HUSB311 to identify any meaningfu=
l
> > differences, so this series wires up the existing driver to treat
> > HUSB311 in the same way it treats RT1711H.
>
> I'm a bit surprised that you haven't managed to find any HUSB311 datashee=
ts,
> because they are seemingly rather easy to obtain.  I've got a couple of
> HUSB311 datasheet versions with the register descriptions and whatnot, wo=
uld
> you like me to send them over?

Hi Dragan,

The only ones I could find were those I linked in the commit messages
for the bindings and the driver change:
Link: https://www.hynetek.com/uploadfiles/site/219/news/0863c0c7-f535-4f09-=
bacd-0440d2c21088.pdf
Link: https://dl.xkwy2018.com/downloads/RK3588S/03_Product%20Line%20Branch_=
Tablet/02_Key%20Device%20Specifications/HUSB311%20introduction%2020210526.p=
df

They are notably abridged in their register description (which is the
most relevant part as far as drivers are concerned), only covering the
common TCPCI registers and not any vendor defined extensions. It even
references registers in the 0x90 range on page 17 but doesn't describe
them.

Compare that for instance to the RT1711H datasheet:
Link: https://www.richtek.com/assets/product_file/RT1711H/DS1711H-04.pdf

It does look like 's/RT1711H/HUSB311/' apart from that omitted
vendor-defined range.

If you happen to see a version of a HUSB311 datasheet that includes a
description of the 0x90-0xaf register range I would definitely be
eager to have a look.

Best regards,
Alexey

