Return-Path: <devicetree+bounces-273684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDWoK2NbsGn2iQIAu9opvQ
	(envelope-from <devicetree+bounces-273684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:56:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B44CD25601B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:56:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CB8EE300A5BC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7381839DBCA;
	Tue, 10 Mar 2026 17:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T891cqZj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505CC1B6D1A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773165407; cv=none; b=WCsspoUTdnLGT07oXhp1N6+jClPY8/SBf2gsYaBlTHQfGiFMrw07Aq7x+aATnDL4eNMdfQo+wEOSRAYANaFe2IyKufDYqpLmwx95XqEgmKouH3+BZYPrMcGqSVBFWG5aHArWoChRnGxklH53IzFfuU0B18uVswc6ApkOu8OtBBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773165407; c=relaxed/simple;
	bh=YOSJC2IC323+lNrs0NtYPEZYxLcLfviCMZ74PbxeQWk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ehd96CBy1qWjsiUYB97z4fVG2k1hG3ERQafMqlqVZtC4wup6agJCzq+wHnYC/RASJAoTWIujeOjn3HQPQ0LkFMAGHpTdjFSdVHPGmbuejXPnfxSZ6Pq310tVlQ39t3Gj+GtrpwwF6hHSQb4f+S3acmfcS2zlh7Eq8WKm1YJor0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T891cqZj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32B2AC2BC87
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773165407;
	bh=YOSJC2IC323+lNrs0NtYPEZYxLcLfviCMZ74PbxeQWk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=T891cqZjCsowv29AzQfcFL0AknJgbGGA/+t29kgZzsKOpL3zJFo5+Xzs1n9KnSVyO
	 EJOdjAz8LiS1HWoC1dXuTXgosvnBP0cI7jfiqStkGfcHz8CE46C0dggAfbhNLiSL7T
	 IgPO0jXIPCxXdI6jESSPLrbehdj56GI7F7m5u+ZAuPbn1pMouFW8+HNAbovSMNR4WC
	 imFrgFQtB73nKITcUwfBberr3+A4Yc2RB5NhizwoRSBazcz6okLW64v7jDH9TERV4e
	 ec9f/wSS5bfNdo7BfN+NMUHhlqI6aE+wqS/nR7pbS54SVMCMJ3rA/DWSTw14bbeS3T
	 L+LhslUTq/hkA==
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-661568ce781so8441227a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:56:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU+6t1y7m6W44OkjxoWTfcVYgMtICu3hQ/tY9bzSU6+xx8mszK+qt0y3Sa86GZSbGItrWw07oEKQp+F@vger.kernel.org
X-Gm-Message-State: AOJu0YzEX6Mbr3TNkiaPNdC8m8uM7guI6yjntNqm21ny6/sXK5rpwo4U
	rNR2CMY6z1lTJdj3YjxaRE7CqMkLUtNGBiZYWwh932kTULvaJ9ZDTJlIu38cu4o1PkMIv4vWOPg
	vzD2ae4AOK5q4bP5WBekH9cQQl/C18g==
X-Received: by 2002:a50:9e27:0:b0:662:ac7e:aab9 with SMTP id
 4fb4d7f45d1cf-662ac7eacbemr2012863a12.8.1773165405616; Tue, 10 Mar 2026
 10:56:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260224-atmel-usb-v2-0-6d6a615c9c47@gmail.com>
 <20260224-atmel-usb-v2-4-6d6a615c9c47@gmail.com> <20260306004931.GA875708-robh@kernel.org>
 <924b7631-0b75-4ecc-bae2-162abb4bdc31@gmail.com>
In-Reply-To: <924b7631-0b75-4ecc-bae2-162abb4bdc31@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 10 Mar 2026 12:56:34 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+b8vGzzpwR3waB79OjbyOT17S3W6htRv+3q48YHpDrjQ@mail.gmail.com>
X-Gm-Features: AaiRm51MMEXEqnOLjtLKD0uik8Pyp5xUqnmZcuciK2BL52Q7_ByxKePxBEdEeks
Message-ID: <CAL_Jsq+b8vGzzpwR3waB79OjbyOT17S3W6htRv+3q48YHpDrjQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: usb: atmel,at91sam9rl-udc: convert to
 DT schema
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Herve Codina <herve.codina@bootlin.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: B44CD25601B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-273684-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Sat, Mar 7, 2026 at 1:46=E2=80=AFAM Charan Pedumuru
<charan.pedumuru@gmail.com> wrote:
>
>
>
> On 06-03-2026 06:19, Rob Herring wrote:
> > On Tue, Feb 24, 2026 at 01:13:01PM +0000, Charan Pedumuru wrote:
> >> Convert Atmel High-Speed USB Device Controller (USBA) binding to DT sc=
hema.
> >> Changes during conversion:
> >> - Include "#address-cells" and "#size-cells" in the properties since t=
hey
> >>   are required by existing in-tree DTS definitions.
> >
> > The DTS files are wrong unless there are child nodes and there aren't.
>
> Yes, there is no child node but these properties are defined in sam9x60.d=
tsi for the compatible "microchip,sam9x60-udc" and the yaml fails dtbs_chec=
k if I remove them, can I send an another patch for removing these properti=
es from sam9x60.dtsi?
>

Yes. There's no requirement to fix the .dts files when doing the
conversion, but a fix would be nice.

Rob

