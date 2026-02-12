Return-Path: <devicetree+bounces-264893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WM3zGDY9jWmG0QAAu9opvQ
	(envelope-from <devicetree+bounces-264893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:38:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB661292FD
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A793308D6FD
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F131216E24;
	Thu, 12 Feb 2026 02:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4n4BTb2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBED1547EE
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770863921; cv=none; b=cPRLLCH52rADa/xgq7SjrlOng2pJrz8slGX+x/22C/Pybn8YzwFXweCAcgR6Mbv/3wP32KEauovtKQVnr/9O2oelPeJ+rlfAH1VK2LXv1LwXHkcpVRpKRhETbBYptzyeJPMuvc2bvqSA6W4w/HOuI8hxBQzofxKKVQM5kASZDRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770863921; c=relaxed/simple;
	bh=QJpdXrVB1/JODpkKnQrTOquJF0PeNkvNncaEOqRAL70=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L6r4OgvalHjNS5+DCywEuflBqDT+LII+TdGh0Ux59yzf+52OJZABye2OTOAHnmMxnhi6R0Hv/560UWG/upZTiY9FHQxrKS90YSNU+rS08Vx8LoRRK+MopVI2vNwrajnD/9ZBgU/4dUiKasLkDWUN3gXOHsJfqePL59RPMPLTnQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4n4BTb2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD710C4AF09
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770863920;
	bh=QJpdXrVB1/JODpkKnQrTOquJF0PeNkvNncaEOqRAL70=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=S4n4BTb23qJ1VDd1sk37RPIf5LDq3EEHd+35vkFjYOVi5DJitFQRngUSAjoQSODgn
	 eKhMW5cNaNSgbmjkrylJXD1SNhaixEPfH+e/Z6TC7w6lonADXBFIYHA9AH2tu5okOu
	 t4R5QwgQlpCuBlCwhH0CNguVo/XXoeoMX7HMoAdOo72l2A2sdrtmBFZhNs9cFe5jgN
	 F5PM1aYg69tGVvUDZBCL5jU1pUM3WKzE0VhocDwqHvpQt/fsFFy6nQONVmRFbwwiu5
	 BTdHq/m+HvfcKGhsiWSMIp8nxlAnmmsiRC1As9C86I59g9+B1f5ykBAV92oJRztf/8
	 1aB4TZ0qgRN8w==
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b885d8f4092so995305566b.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 18:38:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX3KcFpxlyOdrc1sVREubJ9bnI8Sv1yHdnXpqdKy4Ox6DBk7rs1CUan5SquVHQMgISCodwRa8wVmtMH@vger.kernel.org
X-Gm-Message-State: AOJu0YwXscLit0/Ole6fhpn4AIthV4sSKS2HytvlLehWEtG4BYnMxGV2
	fBlnp7viG6SqLVyslKjiJZHh/ADEGE458DFaTHMMmwVUBcaYU6Ltafx1c8NVepWLZKnMcMbX2dw
	cVtRO2G/ShcMnvVXBub1S1IwUz6PMaw==
X-Received: by 2002:a17:907:9701:b0:b88:71ec:e7a6 with SMTP id
 a640c23a62f3a-b8f8f5816femr62602466b.17.1770863919386; Wed, 11 Feb 2026
 18:38:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
 <20260211093527.2892297-2-shengjiu.wang@nxp.com> <20260211215346.GA3958740-robh@kernel.org>
 <CAA+D8AOTgp9Oi3puOdZv4oYTHGBVHtgbBRV-U10hzMJMpQbBJQ@mail.gmail.com>
In-Reply-To: <CAA+D8AOTgp9Oi3puOdZv4oYTHGBVHtgbBRV-U10hzMJMpQbBJQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 11 Feb 2026 20:38:27 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+8j7bc4_GPdx+-8_HMTT=WyO8aiF+uwV-CgLMrCtsP3A@mail.gmail.com>
X-Gm-Features: AZwV_QgsAt04sGLUqg7c4BmRY3JYBO4SYxpogrqREbZhdu9l6NC9z3GuQMaT9sc
Message-ID: <CAL_Jsq+8j7bc4_GPdx+-8_HMTT=WyO8aiF+uwV-CgLMrCtsP3A@mail.gmail.com>
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: asahi-kasei,ak4458: set unevaluatedProperties:false
To: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, perex@perex.cz, 
	tiwai@suse.com, ckeepax@opensource.cirrus.com, 
	andriy.shevchenko@linux.intel.com, nichen@iscas.ac.cn, 
	kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264893-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BDB661292FD
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 7:44=E2=80=AFPM Shengjiu Wang <shengjiu.wang@gmail.=
com> wrote:
>
> On Thu, Feb 12, 2026 at 5:53=E2=80=AFAM Rob Herring <robh@kernel.org> wro=
te:
> >
> > On Wed, Feb 11, 2026 at 05:35:25PM +0800, Shengjiu Wang wrote:
> > > When including the dai-common.yaml, should use unevaluatedProperties:=
false
> > > according to writing-bindings.rst.
> >
> > Generally true, but not always. Do you have an actual problem? The only
> > possible problem is you want to use "sound-name-prefix" property.
> > Otherwise, you don't need this.
>
> Yes, I want to use "sound-name-prefix" and "#sound-dai-cells".

Then please say that in the commit message. It's not really a fix
unless "sound-name-prefix" was already used.

Rob

