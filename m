Return-Path: <devicetree+bounces-305617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LEuNBpbHHmokVAAAu9opvQ
	(envelope-from <devicetree+bounces-305617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:07:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 981BF62DD8A
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:07:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=OJHqPGd8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305617-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305617-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42E683073967
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 639C83DB315;
	Tue,  2 Jun 2026 12:00:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C41F1513
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:00:33 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780401634; cv=pass; b=Zx2h6gYfaNIp6TE87lRSM269mnVldwMBjnvIcf+HhjqRPD/7AIGQMHysSdhpmyub36geugOvSR5/88b5jlkNzDAhnd23DuLtv1o19cc3grLmsL4pLZ07zVN7Gfc5CUkokmf4HlKCFZdNzd5u3f77t6ApA9V23rDH5tu89DPlRNA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780401634; c=relaxed/simple;
	bh=05RkR29gR0EzADOG/MdNwo8HCGHyLs1e+QZ7FIg+Q3g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MWgaEo/TlRdjny4+5Ebmds/yg07a7dJ7cL/OhbIQdwWWKMmAi0VmISs7kLVLrSyfyCbevX37XYZiTarRwTC56e3W818Wk8klYrW9JWMcmcqn4NWTw0W/hWEa+YPo6MDVaBz5E94RceNUUTNzQi5MmRW3YorLzrgHypmDp/FvevM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OJHqPGd8; arc=pass smtp.client-ip=74.125.82.170
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-304cf518c9dso7659608eec.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 05:00:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780401632; cv=none;
        d=google.com; s=arc-20240605;
        b=Z82NoQETMub79b/wmwSeQfO3Syi/UR+gvHe2Zrob2Ip/HlONtIFlk3obduR7MQ88y/
         V2iLn9pgw52fGeeWf7r4rrn5E/2qkT8BXWm048RUxIrW8lZfQdVNeRwCUf/C/0ibnnW9
         UKWPFJsMStWhMWUs2uzHNbIq+jtUFFGROPk8GmgZyZh8DEPJ1q9Oikba9rwpQyDgEWzF
         n7C9NNIErMPhvFoe1wzTpc20kxiUMWCJUyZzZ68LTuNRuYLxeINiXl0n97eaZ2hXOfm4
         14OCyfqBqWL8hY8JYAXSzBqUP1gV7Z3GAkYsV9RqUZASGePEnHbfSfgT14UqegzguSsG
         bZRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ltXCCc4wpurtipYSrGSPv75JAWyLn0B0neQXenFUA+U=;
        fh=2Yjo32qp5H6tM4J+ZJlRVswnv7BXRGuaPut0/89AXOw=;
        b=bth/jUn0E8IqHAx72gZLTeadoCxIbMNHEpOtVT/Dq/vXgfowjF0nNa/OAwpRPSgxa3
         Eqf2O6bMBLPl16tVBle4r+8UcpCqjzQz1oogO3GkX84+C1Ux1cG7yVwKufGUOXndaca/
         hbH6+LeEvoMTC/+Lw4ThzP6NxEtLRgP5dLRUHl0A6nMZ1ucBGwjP49WKtgY5+vEc5562
         AsvNT8GcgFtrkUSZ1neyxWB0t8HTMmzGFVp7jD6oOHAAie4W1fLnMaodsHXq6RCcvV3f
         fcgYI9kzLs/WTMXOwXECLWzMGCnEMuJaWm3b7nrAcoKWgoMXGfC2kPgv5rrpLYH/qE9j
         ZX8w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780401632; x=1781006432; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ltXCCc4wpurtipYSrGSPv75JAWyLn0B0neQXenFUA+U=;
        b=OJHqPGd8T5ZLeLBZmcKKhC9oV+fAHsJ3ogyPztPRr4yGUuHjHxTCBNM5At2oKaa8ld
         gUaQCJnx233Ed6zi1cLJ3kLWaFrJaZ9MaQa9LJAQhslCGmHm5MsvNyunuME5UMrDxAxv
         lTWtJdk9Dr0y7pdmXpb1aOtVx5Vq8QbPw3KB9tKZCGOqQrOKuYOwwo18kqnYnYB6poLh
         dTfjW3HFajqn5egdgVMuxMOPZcKd1U5x3hpuOxfgyeuxflpD8+OEDCxEyOW5qs9afZzK
         LUQrbUBdTzLZpRDejmdG1jZ6F//fAxn7NOcYCS6iGSyE5tJqq5OlufyCEzRxsSOoqDoR
         Qmhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780401632; x=1781006432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ltXCCc4wpurtipYSrGSPv75JAWyLn0B0neQXenFUA+U=;
        b=H+20jcEoCLFALBXDAcwPutuxs9M42p0PDy9FG6L6IRy8FDvcacxfECd5y/XVQHOyTR
         qK3eOPgbezIe6UMr7LND7s3jD5Cv1H/A4B99+BWmvffri4Jz73W96uIRUNBnlf4Xzetq
         CXVrVOZyKoci408oOxvzab5ssNyzjmWPUDlRuxu0xTxkCWldBLDs00btfO9MfnfHI1xj
         xn6YNa/FEEadqELr4FFS/vo5W0mlqJc1rfmevDPSilznDCBEMCUnqFl/vVU/sWy30G/c
         MOLZTka1l6rG/SYGTI/sIlLDUUsLKNSI1rKwNb2cWtbSAOZWFStsOXWvJs7Y1/VglLf1
         whlQ==
X-Forwarded-Encrypted: i=1; AFNElJ9FXSvRmAGkoTxPUGaxamQOVymwiWb9Fkxki9OralUMK6qgh+dGXOXYTaFm/y7JVSb40kOedj6H9ws7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo9PdkiOKDeZr2bmlAq6bDzYTlywfVBDRBFAfIj99a2nK6xpdg
	L5a5UY0/dqdxLhey4Rw2lXVY9pEDctjKun3WotZvnKSbvnBftiRRNKCWOBj+7bHQcliKWf+K42o
	OYZvR/OTY/rzTPmynz8axIO8KlSZ4HmM=
X-Gm-Gg: Acq92OFiAocq6TE9PURdAuWss5fVtmL7eds6GmdqJF9YazoXayO4Ti+xuijGrIifpEE
	ZGbrjdkD/Cj1TYSyzKGgGwTNms6XAfeqmBtxiQctB/H/Q8UrDbuYNfFrZ477QrkdBG+i77rNn9n
	+yQqVuTgCfTdxkJ5D+AnAqSAJquk4qTDn991qvVIZnkQMWRzRYF7+f504h79MUQ5sPNClG3oMx3
	/3yj4wiw0sQr0CG07rpG17n9jyaMckYwnSYKnb37eleMlEGOx86M5syCDoFaNl5t5yA0ZIsGW8U
	jpE1LqhOwJzorQtZbxU=
X-Received: by 2002:a05:7300:6da3:b0:304:cf6c:4cfe with SMTP id
 5a478bee46e88-304fa4d506emr7133140eec.9.1780401626958; Tue, 02 Jun 2026
 05:00:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260601151831.76350-1-clamor95@gmail.com> <20260601151831.76350-6-clamor95@gmail.com>
 <ah6TGjRNnDpQGO60@ashevche-desk.local> <CAPVz0n21RGAaJc1sda4xyp1h0z+6R6FJ4=XWdOtB1mgtV8=RUA@mail.gmail.com>
 <ah648F2plc4UHTM1@ashevche-desk.local>
In-Reply-To: <ah648F2plc4UHTM1@ashevche-desk.local>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 2 Jun 2026 15:00:15 +0300
X-Gm-Features: AVHnY4JW9CHRHy50Nkm6GtBSzM61Oxt7rnaqb6kAIuOEvYU0rp0GBajm0chAidM
Message-ID: <CAPVz0n2J6cmWyYWL5aQcFJeDEezD0P_ianTjqUzXiFuDsYbVmQ@mail.gmail.com>
Subject: Re: [PATCH v3 05/11] mfd: lm3533: Convert to use OF bindings
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>, 
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Helge Deller <deller@gmx.de>, Johan Hovold <johan@kernel.org>, 
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:lee@kernel.org,m:danielt@kernel.org,m:jingoohan1@gmail.com,m:pavel@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:deller@gmx.de,m:johan@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-leds@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:linux-fbdev@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-305617-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,baylibre.com,analog.com,gmx.de,lists.freedesktop.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 981BF62DD8A

=D0=B2=D1=82, 2 =D1=87=D0=B5=D1=80=D0=B2. 2026=E2=80=AF=D1=80. =D0=BE 14:05=
 Andy Shevchenko <andriy.shevchenko@intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Tue, Jun 02, 2026 at 01:31:44PM +0300, Svyatoslav Ryhel wrote:
> > =D0=B2=D1=82, 2 =D1=87=D0=B5=D1=80=D0=B2. 2026=E2=80=AF=D1=80. =D0=BE 1=
1:24 Andy Shevchenko <andriy.shevchenko@intel.com> =D0=BF=D0=B8=D1=88=D0=B5=
:
> > > On Mon, Jun 01, 2026 at 06:18:25PM +0300, Svyatoslav Ryhel wrote:
>
>
> ...
>
> > > > +     device_for_each_child_node_scoped(lm3533->dev, child) {
> > >
> > > > +             if (!fwnode_device_is_available(child))
> > > > +                     continue;
> > >
> > > Do we need this check?
> >
> > This is nice to have if the node is disabled. If we assume that there
> > are no disabled nodes, I can remove it.
>
> It's already implied. See
>
> static struct fwnode_handle *
> of_fwnode_get_next_child_node(const struct fwnode_handle *fwnode, struct =
fwnode_handle *child)
> {
>         return of_fwnode_handle(of_get_next_available_child(to_of_node(fw=
node), to_of_node(child)));
> }
>
> And I believe it's written somewhere in the documentation (if not, feel f=
ree to
> patch that).
>

Very nice. Thank you.

> ...
>
> > > > +     ret =3D sysfs_create_group(&dev->kobj, &lm3533_attribute_grou=
p);
> > >
> > > No way. You should use .dev_groups.
> >
> > I did not change how driver does this, just swapped lm3533->dev to
> > dev. I will set is back as it was.
>
> This is a serious race condition that needs to be addressed. Since you ar=
e
> touching this driver the fixes against known issues probably are the firs=
t
> things that have to be done.
>

Fine, I will have a look.

> > > > +     if (ret) {
> > > > +             dev_err(dev, "failed to create sysfs attributes\n");
> > > >               goto err_unregister;
> > > >       }
>
> ...
>
> > > Can you think on how to split this change to smaller steps? I believe=
 it's
> > > possible.
> >
> > No, I am done with tinkering with this patchset. It is broken enough
> > and it has inflated enough.
>
> Probably you don't want this to be reviewed then? I believe other kernel
> developers and maintainers will ask you the same.
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

