Return-Path: <devicetree+bounces-258064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uN8GB54kcWl8eQAAu9opvQ
	(envelope-from <devicetree+bounces-258064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:10:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9A05BDE5
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:10:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B2E78AEC137
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D327E41C30A;
	Wed, 21 Jan 2026 17:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXbsNaui"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C1F364EB2
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769014981; cv=none; b=fVTFCGAJZoOdnWjHxnP9Vt6GHfpI8k7fAi5BAqGCNKax4pj3dgKUVXKvmz3uHq0hDQ4fdqQyY3Ki1ouyd09IJTLJ0tNCi4eYCmImQ5RtFAdSlLeVJiHQGGzHmWlDx8vQPsBSFhSjvCn8ioAB5LI6LTaAgQ1STGyOO1Cjq3sju3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769014981; c=relaxed/simple;
	bh=pa8aWCTcpI5fQV8rx/plmPidwgBTTPF3cpoGqJ3CbM8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Rt3IreMoTl9DD0k/XyiS1pNjbhkQ80hjxlYxPMU9cO1APEfD58PjWQH8Qg2NSaRCzc3+jLXieKJkbBhz3bbWLWDJbHXnMXRmRvqs8icpdBlu+atlMa7+Ggx30xu8Axta4EYT+8VVSqqVGVsOnUimlHzJsKm6f8bIOdZ1QC+mqGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXbsNaui; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19ED7C2BCB1
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769014981;
	bh=pa8aWCTcpI5fQV8rx/plmPidwgBTTPF3cpoGqJ3CbM8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=mXbsNauiA8DEehouSx0bo1tQQZObz1DX6hvdtnpcVFOgycqXsZVdgkiON+MmgQlx+
	 Pf+71tP3kA81oTJ74sFcGl2OBUsDCKc2Nh+dv0am40ivp34QijdI3hh+fJcszE9gSB
	 NkX4DiADcoq/Mz1eeqyEl8wJcg2PpOA1EwFAOdqM/lnsJ3Ml3g6IgSo2oCm+wpiwmW
	 jhE4CY4zS01OGoeO5Haj/E0I8mMBVZQ8wQRhFXAim9HX26rqdgbn5KOevD+g07dYTG
	 /j/hW/PJWnNPU4Wb4MyzfdeakmPcMTxhwxTs5KzoZocEC3f1SmmWVlFLsSesR43RIR
	 9tQs7MRpPhihA==
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b8718187eb6so462266b.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:03:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX3jpsgmg8TsjxvMtlhKzix9dJhDrfHr3n0xA/ixq8tmziPE2vMdMym3upXlv5pVQ4dQ3dF9Kn6v2On@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8yP9PfmRxMksoc+xVM+5WgLSij7PS66pPhZfm2kBFad8NkDmu
	MS3RPwR5Djzg31AroIrs0pcyOS2S75Rq5PCw0jC2eRZ19m75ym7nT9rzsv1kxO6W/EAAzhBJy9w
	6Zcq4hxDYUfvHFzCAWHKh4Q3jgFIGcQ==
X-Received: by 2002:a17:907:a05:b0:b87:1b62:13ae with SMTP id
 a640c23a62f3a-b87932b8e26mr1653806366b.61.1769014979483; Wed, 21 Jan 2026
 09:02:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260121085347.10368-1-marex@nabladev.com> <176901406635.3440858.3601461880570246394.robh@kernel.org>
In-Reply-To: <176901406635.3440858.3601461880570246394.robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 21 Jan 2026 11:02:47 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+v3W2bVCUbYtMZMyvkdP7LGrn4vzca_PFHkwgQptJ6rQ@mail.gmail.com>
X-Gm-Features: AZwV_Qix7oj-Of4DdoJ2Jzyev08ewbS4IgrrQfV85apQDNnlZrqyfeVPrtD3VKk
Message-ID: <CAL_Jsq+v3W2bVCUbYtMZMyvkdP7LGrn4vzca_PFHkwgQptJ6rQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: eeprom: at25: Document Microchip 25AA010A
To: Marek Vasut <marex@nabladev.com>
Cc: kernel@dh-electronics.com, 
	Christoph Niedermaier <cniedermaier@dh-electronics.com>, linux-stm32@st-md-mailman.stormreply.com, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Amelie Delaunay <amelie.delaunay@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FREEMAIL_CC(0.00)[dh-electronics.com,st-md-mailman.stormreply.com,gmail.com,kernel.org,vger.kernel.org,lists.infradead.org,foss.st.com,linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258064-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7C9A05BDE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 10:48=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org=
> wrote:
>
>
> On Wed, 21 Jan 2026 09:53:19 +0100, Marek Vasut wrote:
> > The Microchip 25AA010A is a 1 Kbit SPI EEPROM with 16 Byte page.
> > Product page is at https://www.microchip.com/en-us/product/25AA010A
> >
> > Signed-off-by: Marek Vasut <marex@nabladev.com>
> > ---
> > Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> > Cc: Amelie Delaunay <amelie.delaunay@foss.st.com>
> > Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > Cc: Neil Armstrong <neil.armstrong@linaro.org>
> > Cc: Raphael Gallais-Pou <rgallaispou@gmail.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Cc: kernel@dh-electronics.com
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-stm32@st-md-mailman.stormreply.com
> > ---
> >  Documentation/devicetree/bindings/eeprom/at25.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Actually, I applied this one too.

Rob

