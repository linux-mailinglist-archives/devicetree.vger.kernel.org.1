Return-Path: <devicetree+bounces-270540-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGN2D/nrpmnUaAAAu9opvQ
	(envelope-from <devicetree+bounces-270540-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:11:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C28D11F1209
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:11:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 477E63067B3F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC3E635F5F7;
	Tue,  3 Mar 2026 13:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fTQFqQD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7790B35E947
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772546307; cv=pass; b=VtdY3y1M8kf9tD3er6ReHNraiI9zChEx79REXj0JeDanS6Xg6BhEY2uISnkEabdS/4u671rEtMugYSwwCTooTiQ4G7102+/WaWk76+a+wDT93OTqywY4lEvu7Oghxg43rCLO72g3nf5n3S8oHU8h8hVFHWlACo9a/3LtVQI+Hcw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772546307; c=relaxed/simple;
	bh=cHDl/UGxVI3bg2xIA4BoN5IYdh6+l3v4+cbwiHeVBNg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L4Tt9RYH/Zlk+L1npw8VHDG9jiSn+B1+zQs6eP6RnTZ7adp9aA9fDtdEYXw4keI2GR+WKfRFDbMZD8nq6Am5cwWmgdT6C4EikUSR9XaYi2RKcwZLqXQf4cyLwoCPFisovfESVmyXQyuIGkRkuM6vwFqfpHm+LevVAkL9cGwNbG0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fTQFqQD9; arc=pass smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-79885f4a8ffso39511467b3.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:58:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772546305; cv=none;
        d=google.com; s=arc-20240605;
        b=aVTN9kUR4zEYOqLEkkpQQbg+8x/H7gM+0jc9yqMc9jU9va/17cAQAhrpNchfDmFkx0
         5n2gjDe/otsbsLE6dwHokXkUu42Wsqz1mge+QTDdNS4g4aZjLftUBHyvYMGr7Ypkmjhv
         0cfv+lhV1GozaPW/SnPknFqgwz6qSDbiV4TT90ZfLIgsKX31P+5MzKGhVu/CcyL/fnjR
         u4HIO7dmALul7ZwT2o0iK38U8CA6VSh3WCifq9To81W1ALE4HBDy2CYez1Bdx2dCS99A
         saMfcHakah2AUCTdjQelrVDXIjAMOT1TfqZ9RGXs5kYRjEaHR68VRvfUMth1vBierYra
         rqpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=25Zk0eBlVyMNHvv/kU7Q4vGl++ta3IdblXKrhWJCrxQ=;
        fh=9nnoZSc5vYDpPTvY+61kJ/X691La466Vj3IFfxrQIJQ=;
        b=WbfL82VPwna2CVJ6Xoql+sv5sNl5Ln+z3oGTQ1drcLg8ARGU33qZwtJ/mM1zq+XI44
         9fa3gUg6cCYWAt3gy/8VfKmB3J7FfeR0lMv60MIcEZr9H/McIgkgnCIdBNbVpQp1Kn3z
         0bBVvo6l4EjHTjHiHdtalIAZYqrd/uQm8MYvtOfqp4DiT7BHN2dUfn1n2J1dHs/uUcG3
         5K7cB9VYrjOXwXdwUr8UF1YevLUFdyPI4WR6RmSGPAfPvJlHcsu1BV0RFhSQL4IRQqGa
         wdZA+Zr4LEpEBR5UVTWhki2wMt1Y1Yur6B5iMLxT+9NQO/5n7Zg1NVEgTOrz7R7SNet1
         G6+w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772546305; x=1773151105; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=25Zk0eBlVyMNHvv/kU7Q4vGl++ta3IdblXKrhWJCrxQ=;
        b=fTQFqQD9S03rdJHWIx7FV1e4PAtmVkSVhz08nudyJdkDjA3gMr6VPadoRc+0HXIu2x
         UiwfRVyLoK2pMnnlm8WNgHuSe2E+yDdutXLWvwG+HfjH6vvPvTpsBySJgEazp/y6wKwb
         mBw/TfJv8OsMwIrru91NHJEm65LEEM2s41tfBOQRMemxZHkEWtToCpXt0VGICzm46zZP
         ygZtw0sWX7XI5a9YLA13mYQs0orpBei+esC0i2ks0axDkczQHRY5tbeetnAlXtlBpo9+
         7FBsppjbnnumkO8V5Pe9sNCUTP27KHY8yWEAzAfG2P6LtxXm9+zS912RYDoMvoSwt9dH
         V1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772546305; x=1773151105;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=25Zk0eBlVyMNHvv/kU7Q4vGl++ta3IdblXKrhWJCrxQ=;
        b=SqknrsbEWl5q1tK4lFGWiWPU4y0RtvrK97D27+R5FKqegezM7A0qCE6U8fHNjiKnCE
         IK3rwR59XGdlAz6oiIbtQEovjdveocwyJlSWSdrMS4KKSQ8zG966Xdoo7CLaPKwU24z6
         4ZPttfWW62xfWhAa9pC6YH6Roza3gaYvOzft7y5Dn/0359etMy3UvPGhSXiZMJJQXXPC
         0/jrVgwQOrWtZqbYP6BOcTDSsv4OVyGcELIdohqesR8J3hhd7HbIQdwcMV42Kcvnv8BT
         oStjIk/QeNym7u1WVIwMJ9kydJFtu7i/MwaFPQwzsbaQIjtdvpjDRoj+/yPmsKgl6end
         IuYg==
X-Forwarded-Encrypted: i=1; AJvYcCV3kUNKyv0BUfQvM277KP7aiGzEhzI3e8nqRxgVRK5i6LvN5nDntvJMAHmOYxgne5dpJn3jGHVpbHHh@vger.kernel.org
X-Gm-Message-State: AOJu0YxwItjrZ9MLKbx2W+pW44O8IKZbzA6KdqafqiL6GgXQCeDW1ek+
	qkNy0Y995JQqMfFAy7MHHSDfw6jFZWIlfuY4pirdJ9wASrLj3z4T7GNr4/u53r03ZzutgziTkNX
	zR5MWuZupuRJ+tjAQePSrLHZe7COj0Xs=
X-Gm-Gg: ATEYQzx8qWN4ypu7a/x+iDQN2vX8FU6nZnm067Iht9n6wXbMdg/TuQsSMmxQf1sQ3V7
	qm4jC6gEucgCmXXZi4EdaREqvqUReRdo6bWem8kGz936matUJn1ALJIA10qdpUA0CGtNCfjHu9p
	z8i7Psxkmzwh8SzZXI/W40OrxgadTuJEjDXQBrV4Ol22iUnjqwtzUpjEdcuhB2d/oI7m3WxAdVt
	wp0u3eltw4lytGBNOIk5bytWU8NU1qRBq8T236S6d7CFE63DQIygbrduKnrm4Y5fXT+EtOQOGjd
	8b2r9Hbo
X-Received: by 2002:a53:ecd5:0:b0:64c:bae1:2168 with SMTP id
 956f58d0204a3-64cc201e46fmr9653985d50.12.1772546305463; Tue, 03 Mar 2026
 05:58:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
 <20260302-orangepi-sd-card-uhs-v1-3-89c219973c0c@gmail.com> <aaZfVZoCe3AxTzAf@pie>
In-Reply-To: <aaZfVZoCe3AxTzAf@pie>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Tue, 3 Mar 2026 14:58:13 +0100
X-Gm-Features: AaiRm52kBZDv7RHaHk__HaURlrgDL3u1uXFkZRgyX5QSdwPI4llWUBVCuA0ve_E
Message-ID: <CABdCQ=NporA_1wRZx-dG3pXE3mmqT1g=M18Utpqpewt5qXLiCg@mail.gmail.com>
Subject: Re: [PATCH 03/10] mmc: sdhci-of-k1: add regulator framework support
To: Yao Zi <me@ziyao.cc>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: C28D11F1209
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.84 / 15.00];
	URIBL_BLACK(7.50)[ziyao.cc:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270540-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	R_SPF_ALLOW(0.00)[+ip4:172.105.105.114:c];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=2];
	NEURAL_SPAM(0.00)[0.685];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziyao.cc:email,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: add header
X-Spam: Yes

El mar, 3 mar 2026 a las 5:11, Yao Zi (<me@ziyao.cc>) escribi=C3=B3:
>
> On Mon, Mar 02, 2026 at 04:13:24PM +0100, Iker Pedrosa wrote:
> > Add regulator framework support for voltage switching operations. This
> > enables proper PMIC control for UHS voltage switching between 3.3V and
> > 1.8V signaling levels.
> >
> > - Add regulator supply parsing
> > - Implement voltage switching callback
> > - Enable mmc regulator framework integration
> >
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >  drivers/mmc/host/sdhci-of-k1.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
>
> It seems PATCH 4 should be squashed into this one, or the functionality
> of voltage switching isn't really complete.

That makes sense. I'm still learning the best way to structure these
series for the kernel, so I appreciate the guidance. I'll squash patch
4 into this one for v2 to ensure the voltage switching logic is
atomic.

>
> > diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of=
-k1.c
> > index b703b78282ed8d89183c816477c149c0a565618a..c260cb89704ae7a25bec0f0=
7831d495553405bbd 100644
> > --- a/drivers/mmc/host/sdhci-of-k1.c
> > +++ b/drivers/mmc/host/sdhci-of-k1.c
>
> ...
>
> > @@ -291,6 +297,12 @@ static int spacemit_sdhci_probe(struct platform_de=
vice *pdev)
> >
> >       host->mmc->caps |=3D MMC_CAP_NEED_RSP_BUSY;
> >
> > +     ret =3D mmc_regulator_get_supply(host->mmc);
> > +     if (ret)
> > +             dev_warn(dev, "Failed to get regulators: %d\n", ret);
> > +
> > +     host->mmc_host_ops.start_signal_voltage_switch =3D spacemit_sdhci=
_start_signal_voltage_switch;
>
> Why not assign start_signal_voltage_switch in the declaration of
> spacemit_sdhci_ops?

You're right, that=E2=80=99s much cleaner. I'll move the assignment into th=
e
spacemit_sdhci_ops declaration for v2. Thanks for the suggestion!

>
> >       ret =3D spacemit_sdhci_get_clocks(dev, pltfm_host);
> >       if (ret)
> >               goto err_pltfm;
> >
> > --
> > 2.53.0
>
> Best regards,
> Yao Zi
>

