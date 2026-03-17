Return-Path: <devicetree+bounces-276664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GNVKYRJuWmK+QEAu9opvQ
	(envelope-from <devicetree+bounces-276664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:31:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 009412A9E7E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:30:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A48C3020030
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C78773C0605;
	Tue, 17 Mar 2026 12:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QHEnw4k/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDD435C1B6
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750657; cv=pass; b=EuhdMJ2Rhvw7D+iCqgLmx/7082q0OWfTT2A/OqvbL4VqxlD8W39uO3KMNZ/rumT3c7ASK6NOKpGBmujBDy/bw7wXalnjln2Vd1xcSmqRVDHPuVyXPopjxCQeRN4qBQB3Z/zl7K7vM+L4+J3PFmOqirncPLP+KurRrM7XL/wdxwk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750657; c=relaxed/simple;
	bh=iVI/aYbZjML/zXQFyx/DyAycVJiYb1PkAlg427mPHcU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qP10I8Pm3SWo9XbBAfFYh++3a6NSQP5cpfw0Zf8a+OKQ9IV1VDSu4oA41wd/hB1jY9gJ04thN9dcbT/tWz0KDFzlE/Lh1eA3SH7ijPBj8Nljv17q7yy4aBzWgzM+IiA/l+RPvl55CKg5ord65cnu2My5EFiVIssNV6nDSpVB9/Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QHEnw4k/; arc=pass smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-66132b22182so7384592a12.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:30:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773750655; cv=none;
        d=google.com; s=arc-20240605;
        b=D0Rg6qvWxdKn2Do8Y8kwgXSTX1It28oaw4wnBSzlAyY7ogYzDg6ZtWc5O5uzdnyL8X
         NTmKV5sahHVsQjjpf7lFHi2Ed7jnoh6RHqIb5gN1s49XFyKQWo5DDzk2qXJSaf2+xh99
         2OzSpmgKF4x/VT/U5HiR/BHtmwyK/EGCINq6OJmLHaFr/qritXrBgogG62N9lBETatNl
         Hl9hvxJ/BWIeSdKxpvtFzk2SXJDDM+RIU/7xYq/HGpSDb16Q6dUNzSD099VXtKEr7G4i
         lO9cZex0fM41Dy13Xb7l/b4G5fiXtcAji++/uAdn1+nfQIOxQqiNd9jMKxXJ/sPgIbpS
         dEUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eKGVaZGEthLonpWdZqAUAIX4b+v5oagSeyJWvMOko08=;
        fh=VK08e9jbaTaUV2OcNlDZzqXRzl6VL+0wBh5xRIq3yFA=;
        b=D96LSpSBvFQqs+MQ+4VJmo92Bry6fauv+niA9fbLAACsyR3BZz2PImbSFLypw5AC3C
         CXmLupR56KSYhnPcgfqaxOVn6lblZvYpLtK5QrxsdojE/nlMv0MMeiig0ByQxP+Z4HSf
         SBklLd5VXLLHsj4RGo47iVf0aJKEzMw2HsgecKzcJ3UagBbGbDzVK8axXe20F1X6D/nP
         PyK0QM08P/zJXir1/P2BnnS2O+X+GN5FPB79sIIA/88+puApCIS8Jc4isDkY9rHtYcnG
         /a04KtD8pbcg081Mjs4LIMMCpX39vMJzePdJ3jQo9tGhpfN7reiL8BIC79ZGyMC2vV5g
         pfrA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773750655; x=1774355455; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eKGVaZGEthLonpWdZqAUAIX4b+v5oagSeyJWvMOko08=;
        b=QHEnw4k/gr4ixTlgHgmKa6hwAoK1aCzGTl5K+iHmoU0KiOiIg3yKCoOlIjbxU93CZw
         DGNmQ2D/sj9sz9uqsxJFdsZH+Q7XmkKCqWIPhrbGJw5NMf8s+AmPxTw4Cs3P+voCbEae
         lYaEKGIOhPBwIC+O7mPVAfdROGkLwKumxV1/Py9MyxuAnI2V7aD11pVx5i8Zl630hB6k
         +fPPrs1YNCbn0Qau14/zirwxvNkJW2GuYGbD6D+S0aZzLPCeb7KBquqXzmMQ5rdwfkmC
         888TAT0mhGtHo56LaQwm0MeN8x04kR/jekeGSTXRfuhaSBhQSMtrX1Ep4PpWOE4JE2qB
         wx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773750655; x=1774355455;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eKGVaZGEthLonpWdZqAUAIX4b+v5oagSeyJWvMOko08=;
        b=OPZsc9FVRJg9icNyZxJvDd/m5T3cbDbqnEoPk9wTr+OlzD02Lq/7Sfcao5D+okaBbB
         0lW71AlSpl4p5xDkpDnvSpWRz3rQR14yKkPhQP67uZpjREQ5r49kGJrEvqsXBDW3/i4y
         MfLL4vro9IFTN2NF5Np0L1dPN6aTm4Ff2Cu+8tUqt16EPaYV7FCoBUb0izUuqNoZwxOp
         jUvCSEGg9/J4gZsp+rm+lPaEViaRt8EiSr2XZMG6717W5rlQLsAlzMw5LwtzsL3E+j24
         9JBctxoaIwFnGhnhAT+WDbBqwh+tAQhUeAPGWtnbyUknqfNKfRap0w8EPb6C0lEHLwqn
         1Cyw==
X-Forwarded-Encrypted: i=1; AJvYcCXwAyhI+FoSpEqYhl2Aq7/3QdeghO2cXC98t2vUk+ewwiCT5lfoGeu8EyPHWzFdpIYpiDxSFhH8U3BX@vger.kernel.org
X-Gm-Message-State: AOJu0YwuMicdUok/JKUJTC1R7Kzi1HiWMrP1Yd4EcogolPiv128NvxF+
	tj2TPDzDuXs8nrwRcY3PRqAmwkI62e18JPq3GIC3D0fKshhxRqCUd3kb5XDh9yN4cb1UiV0WM4Y
	OdtMXNoKmiCqmFuxXGsrFQwI6DPM///w=
X-Gm-Gg: ATEYQzwjGM/yZv6oVR/0SC5EdInIXxmuf05VOO89K/+IjOPG4SOPB8YH3rPJ56EIiEg
	UEtoUuQ7JRWmKBdJV03u3bguvLJwrZpgJkoy0mYaxaNACNzSLHstb9c6qO0H5Iq0WMFWdqnDR6o
	UbuTKU9bFKO1EsTqIEpBDqteRRiwyymIl/rsOEPcmL+Swg9naPtB0hWY12m2aw6/+xzxFYg914c
	Wtjqx88CEWTB8btaLyy3ROBA2OHzFa3ztL5K16Uyj2Bq5fHf5ByaDv+UTMtHQAszDPgEHPRlqC2
	OlNeKimlEWas8pxl1VDm
X-Received: by 2002:a05:6402:1d49:b0:663:4560:aa8d with SMTP id
 4fb4d7f45d1cf-663bac0b2a9mr9465681a12.26.1773750654417; Tue, 17 Mar 2026
 05:30:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1773142933.git.zhoubinbin@loongson.cn> <bd5c06a20ef2e61f76902c4209f2be539ca91a97.1773142933.git.zhoubinbin@loongson.cn>
 <abAyd9uyl3TC8vC_@ashevche-desk.local> <CAMpQs4JVYRo4DQyEVe5NhHQ=VN96mF17AtSoo6a4CGB6w_Aphw@mail.gmail.com>
 <abFTF-RDxLqsSs6X@ashevche-desk.local>
In-Reply-To: <abFTF-RDxLqsSs6X@ashevche-desk.local>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 17 Mar 2026 20:30:42 +0800
X-Gm-Features: AaiRm50Kv8zppqeHF9w4EcoyL9629DqEk-04yGnKyzwAzL8KPJzuesVItDbOu6Q
Message-ID: <CAMpQs4J323uWkjPXYXwwb2URRV0wsfkiFAXOcNazejzdhEsx2A@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] i2c: ls2x-v2: Add driver for Loongson-2K0300 I2C controller
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Binbin Zhou <zhoubinbin@loongson.cn>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-i2c@vger.kernel.org, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276664-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 009412A9E7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi all:

On Wed, Mar 11, 2026 at 7:33=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> +Cc: Bart (what's going on with i2c_adapter_set_node()?)
>
> On Wed, Mar 11, 2026 at 11:07:19AM +0800, Binbin Zhou wrote:
> > On Tue, Mar 10, 2026 at 11:02=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@intel.com> wrote:
> > > On Tue, Mar 10, 2026 at 07:48:53PM +0800, Binbin Zhou wrote:
>
> ...
>
> > > > +     struct device *dev =3D priv->adapter.dev.parent;
> > >
> > > Derive it from regmap (and check elsewhere) as accessing dev in the a=
dapter
> > > may lead to issues related to the object lifetime.
> >
> > Do you mean regmap_get_device() API?
>
> Yes.
>
> > Also, similar references exist in `loongson2_i2c_xfer()` and
> > `loongson2_i2c_isr_event()`, requiring synchronized updates.
>
> Correct.
>
> > > > +             return dev_err_probe(dev, PTR_ERR(priv->clk), "Failed=
 to enable clock.\n");
> > > > +
> > > > +     irq =3D platform_get_irq(pdev, 0);
> > > > +     if (irq < 0)
> > > > +             return irq;
> > > > +
> > > > +     adap =3D &priv->adapter;
> > > > +     adap->retries =3D 5;
> > > > +     adap->nr =3D pdev->id;
> > > > +     adap->dev.parent =3D dev;
> > > > +     adap->owner =3D THIS_MODULE;
> > > > +     adap->algo =3D &loongson2_i2c_algo;
> > > > +     adap->timeout =3D 2 * HZ;
> > >
> > > > +     device_set_node(&adap->dev, dev_fwnode(dev));
> > >
> > > Why?! i2c_adapter_set_node() is part of the i2c-next.
> >
> > Indeed, when I rebased the v4 patchset, `i2c_adapter_set_node()`
> > existed in the i2c-next[1]. However, when I prepared the v5 patchset,
> > it was removed[2].
> >
> > [1]: base commit: 6117e1ba1db78a52a4161208ea403d3769ad73c6
> > [2]: base commit: b82316862bea929265725c077dffcec42e3dc20b

Excuse me, I=E2=80=99d like to inquire about the current status of merging =
the
`i2c_adapter_set_node()` API.
If there hasn=E2=80=99t been any concrete progress yet, I=E2=80=99ll try to=
 keep
things as they are and prepare the V6 patchset.

>
> Bart?
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

--=20
Thanks.
Binbin

