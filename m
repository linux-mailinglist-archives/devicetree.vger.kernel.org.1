Return-Path: <devicetree+bounces-315425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n3krFSldPGonnQgAu9opvQ
	(envelope-from <devicetree+bounces-315425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 00:41:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5466C1CC4
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 00:41:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b="dW2p/xDn";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315425-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315425-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64EE6303A53B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 22:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EBDB3B3C14;
	Wed, 24 Jun 2026 22:41:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912773B3BF1
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 22:41:41 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782340902; cv=pass; b=e5LmR2mbsERwhEhEg9bZPkvDsIJXYUUnR0OWuhcRrTl0J3gegldNA6LTNwghzwQEl3XIrBCpl6R+E+V2uj7S7EQEZFFMvDandONpY0m/r0lMGONE2AW6+I4iG+gz07I9PypUAD4fEq5MEgX/bSnWEPDK23oeH6YysVHo4Nr7lls=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782340902; c=relaxed/simple;
	bh=lGJ2gfHSnw57MpbofjpuTPtD42d8yiISwF4In2IuKDk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gpjc8zY+JwBIKLF+yTpn7wh+E3SSnYbMl3v+CH+5iR+5WQ6Xm9SrymR9/GqPT8uSw+Ank5JMidcH54Ez73M8zeEUPKTlK9os6OErR08ermq9popac5Zp6w8LSdyrWT+NytGSNqYyu6h5iymxZTt4WxYE4ePhWcon9DWZm51rS98=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dW2p/xDn; arc=pass smtp.client-ip=74.125.224.51
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-662c360aa73so1723227d50.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 15:41:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782340900; cv=none;
        d=google.com; s=arc-20240605;
        b=IIBIWWQgcvH03klrIlrSv+d5lr/R3EB1eFqRadqE5ZX6QNJgU6Nx5S8GfbWRpm3hzN
         vbx402Qz/O75RQLUD2tK5yKfSxcGZcqWI8BtYvWgyzE1PL6pShgrj0HiETncLbfLeo7S
         GRfcvmiq5v9okYKqBaGUIyiLTaXb1owEmR8dniK/CV2dI1StV0WPwRnoZHc0KXhFs9Xj
         tRsftJb7xnuqKwawyqsVHuHqjOJw2nqb1SGzZCF0m3Wtgj4OJO6Q3zo4eq7B6z85AL5b
         uK+VC0ysvGuRv75G/aZJT0U+ySliQ5MenXEcPjw3ODldSD5HZBQrWFpS5AL00W2XCl9I
         /rhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=y1uYuwI5UQMrf4FOORVNSBAqq2rAsy2aYavTdYoUa1c=;
        fh=i6/yWkm6GmmcWSonJAKqVmy0k7DfH3q5FG9rY2ebkEs=;
        b=Po7mfhIWTa+gbpKzmqGMNYuuKdSuXGUq+WBNuUJoeB3X51zi2816P5/PB3OF5CsfMq
         RltiRHVTY5UumfEunaOHYMIZU/TUS7RVuV+qk/QuVpvYqQsy+3Ov1PvljGivaTfKvXOT
         kOPZ+IsepGKYokGu3f7blbNmJHRzU+S7JYEKGXIcFd5+/aQSlb+jWtRGrWAIzKfJezZa
         N2416gYeTnp79vqa3kwO1JIzL8lTFIdA7hHE8Q+tx6KjyJaoB7nuUdqVFZPVQ5QsPQj3
         SGR+bVvSuDfHimUhMC8HmArpEI7XIWEygayrGs6xyb2dFiWHBd4MAGFyIH1jnUSeAmOY
         de/g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1782340900; x=1782945700; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y1uYuwI5UQMrf4FOORVNSBAqq2rAsy2aYavTdYoUa1c=;
        b=dW2p/xDnzbQ9mbLScYUzd7PnKSNpkJESeKG924BUrn1jmL+ljc7KtHQWWvBud+Ewcg
         unlN6D3NkMo2vpwQG5L2TCvgRJzsO2lmtdfD0rVsnr9yaCzHyM9hjE7qEHNZb7IWmAFY
         EEBzWBepqhknWSDvwRVluuvBYEoTbWoyNNNHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782340900; x=1782945700;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y1uYuwI5UQMrf4FOORVNSBAqq2rAsy2aYavTdYoUa1c=;
        b=A4AT2x9hAqPBcf4z7ErVfZdhRKN6nIuIACCvfC7LdbKlz1sD2feM2SeyJ4p0sJFrtK
         Ld1TFs9S5UovK5cDZ2QilrXpQqUCFjP+uvxTioGWA1LxN2dREx/QkXDxZxdbFsK+q6R+
         KMSc0LY2CnMUF5gMETG1aKrjCmVrh7r7WIHA4ync2lvB4JU/BscXSMtieLUxClhK34hx
         bIUbKcbmXIINrGVfHUqiUaCRuWONv7w9kHxMO2TGYKKIPc2ekEkeQSCEqY0B+8wTi7GJ
         x+e+D5YSLvfJyByaqFKiioy3EgNiGKx9g8I2R5YHqTjC94hdWP0XJ2eOfHBlvRAEnUFV
         qwKg==
X-Forwarded-Encrypted: i=1; AHgh+RqG0ECDhOnZKI6TTkEHSEKYTO7d6XJaQE2kbgnK4N4xwpMAGXysyUY6pD77iD/gTGaO2g1KqqydGs9X@vger.kernel.org
X-Gm-Message-State: AOJu0YyMs7sjBkTia8MGQi9t+86Hhj+A2DDcjthH8t7pKWJiHLKgh+uB
	pI1gBsTXcAF+b6pvt/ocGURpqrV+JI1XnO/lFY5ycRwt3uYSyNZH6/Gm1MZ3D4UJ4BmFu8IbB2m
	7PfYoaNaZzjEo7SmwOFitTI1ZVaLVVzcX6jeIT36u
X-Gm-Gg: AfdE7ckFvGfWLYp29Ax4wFtTnviDdbJEBWrsU8SUZJeXvpPnCm3ACBHEIX4+zJNMAeM
	Ayts+1N90TYige4LQsPVQfcHJEpFGYgGaV/AYJzKpMoLivqd8aWZAp8DnN9Bg7bk6B9h+8uAHhF
	NpxeWEcxtTQm7D+SnwwUk+f22BsN7kX3L9JKRpYEMnzpLQ+S+DBP47HcnN7poaprJZm6H1RUrK5
	/d9EhvuGOtRis9zHXBIPIr+TU3Yj2aSVr6gjJEWtcAKM+44+xJ/V1jfQn2tFX5kD/XqIyEV01at
	P2K7eBXOdUPwpHt2JTRouLDSEQ==
X-Received: by 2002:a05:690e:13c6:b0:65d:7d86:7758 with SMTP id
 956f58d0204a3-6636e4fd15dmr4910430d50.59.1782340900600; Wed, 24 Jun 2026
 15:41:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609-send-upstream-v4-3-b843d5e6ced3@chromium.org> <20260609045604.44FE71F00893@smtp.kernel.org>
In-Reply-To: <20260609045604.44FE71F00893@smtp.kernel.org>
From: Jingyuan Liang <jingyliang@chromium.org>
Date: Wed, 24 Jun 2026 15:41:29 -0700
X-Gm-Features: AVVi8CcTKZzbbZlWyreRB8uD4ucjtFXbjur0kDwQgo7E4rh-_3tMMR2pon7swuI
Message-ID: <CAEe3GZFVuy_Y-qHtXtdiZkoQk3vK357ZnJO2A_1WroQASSbs8g@mail.gmail.com>
Subject: Re: [PATCH v4 03/11] HID: spi-hid: add transport driver skeleton for
 HID over SPI bus
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	dmitry.torokhov@gmail.com, linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315425-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jingyliang@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyliang@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,vger.kernel.org:from_smtp,sashiko.dev:url,chromium.org:dkim,chromium.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B5466C1CC4

On Mon, Jun 8, 2026 at 9:56=E2=80=AFPM <sashiko-bot@kernel.org> wrote:
>
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [High] Embedded arrays `read_approval_header` and `read_approval_body` =
are used for SPI DMA transfers without cacheline alignment, risking memory =
corruption.
> - [Medium] Unchecked return values of reset operations in `spi_hid_dev_in=
it` and `spi_hid_resume`
> --
>
> commit ea35a3a23739acaca367a8d250ef25c96d22df36
> Author: Angela Czubak <acz@semihalf.com>
>
> HID: spi-hid: add transport driver skeleton for HID over SPI bus
>
> Create spi-hid folder and add Kconfig and Makefile for spi-hid driver.
> Add basic device structure, definitions, and probe/remove functions.
>
> > diff --git a/drivers/hid/spi-hid/spi-hid-core.c b/drivers/hid/spi-hid/s=
pi-hid-core.c
> > new file mode 100644
> > index 0000000000000..02a7608c4b882
> > --- /dev/null
> > +++ b/drivers/hid/spi-hid/spi-hid-core.c
> > @@ -0,0 +1,213 @@
>
> [ ... ]
>
> > +/* Driver context */
> > +struct spi_hid {
> > +     struct spi_device       *spi;   /* spi device. */
> > +     struct hid_device       *hid;   /* pointer to corresponding HID d=
ev. */
> > +
> > +     struct spihid_ops       *ops;
> > +     struct spi_hid_conf     *conf;
> > +
> > +     enum hidspi_power_state power_state;
> > +
> > +     u32 regulator_error_count;
> > +     int regulator_last_error;
> > +     u32 bus_error_count;
> > +     int bus_last_error;
> > +     u32 dir_count;  /* device initiated reset count. */
> > +};
>
> [Severity: High]
> Does embedding the read_approval_header and read_approval_body arrays dir=
ectly
> in this struct for SPI DMA transfers risk memory corruption?
>
> When these buffers are passed as tx_buf to spi_sync() (e.g. in
> spi_hid_input_sync()), they lack the ____cacheline_aligned directive. On
> architectures with non-coherent DMA, cache maintenance operations could
> encompass adjacent struct members.
>
> Concurrent CPU writes to those adjacent members during the DMA mapping wi=
ndow
> will be destroyed, leading to memory corruption.
>
> Should these buffers be cacheline aligned, or dynamically allocated?

read_approval_header and read_approval_body arrays are not in this patch.

>
> [ ... ]
>
> > +int spi_hid_core_probe(struct spi_device *spi, struct spihid_ops *ops,
> > +                    struct spi_hid_conf *conf)
> > +{
>
> [ ... ]
>
> > +     /*
> > +      * At the end of probe we initialize the device:
> > +      *   0) assert reset, bias the interrupt line
> > +      *   1) sleep minimal reset delay
> > +      *   2) request IRQ
> > +      *   3) power up the device
> > +      *   4) deassert reset (high)
> > +      * After this we expect an IRQ with a reset response.
> > +      */
> > +
> > +     shid->ops->assert_reset(shid->ops);
> > +
> > +     shid->ops->sleep_minimal_reset_delay(shid->ops);
>
> [ ... ]
>
> > +     error =3D shid->ops->power_up(shid->ops);
> > +     if (error) {
> > +             dev_err(dev, "%s: could not power up\n", __func__);
> > +             return error;
> > +     }
> > +
> > +     shid->ops->deassert_reset(shid->ops);
>
> [Severity: Medium]
> Can hardware reset failures be masked here?
>
> The assert_reset and deassert_reset callbacks return integer error codes.
> However, their return values are ignored in spi_hid_core_probe() (as well=
 as
> resume paths).
>
> If deassert_reset() fails, the device may remain in reset, causing the dr=
iver
> to hang waiting for a reset response IRQ that will never arrive.
>
> Should these return values be checked and handled?
>
> > +
> > +     dev_dbg(dev, "%s: d3 -> %s\n", __func__,
> > +             spi_hid_power_mode_string(shid->power_state));
> > +
> > +     return 0;
> > +}
>
> --
> Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-send-ups=
tream-v4-0-b843d5e6ced3@chromium.org?part=3D3

