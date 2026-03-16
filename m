Return-Path: <devicetree+bounces-276406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGn2GP2GuGndfQEAu9opvQ
	(envelope-from <devicetree+bounces-276406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 23:41:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 755672A1A25
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 23:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DB409302B67E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE6A0373C0E;
	Mon, 16 Mar 2026 22:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="F3dgDwtL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E56372EE7
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 22:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773700523; cv=pass; b=QxzSoXYbxHdzOhyT/IjNHRp50m1pphrIMzSHK4O4eNG/Qgal8JvmTXO6fN1nsm47VOUhcMdArJ4AyPKER1f7t/oq/+DbU7wp8yI7JB2glRL8VBg6Epa8ba6pGGIKoALAV+5RcYZlHhzx5Y9+EsN9HwEjoa39RwQYJJaHiZLpESA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773700523; c=relaxed/simple;
	bh=X8mio8kNECrnD7g8Wvz7SSendh1SQnLSxQ5Izt0e38I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=epNYwtHidGw4AY2oOal08pgcui+v84wzbmmkSO1SD3XsGqdoWjM2OONAJb+v1K05zeTAb3SWcyIcTYMbjp/VRUqqlBLSNtODe0GgS38hwKuF1N+S+9f8Er+zHztn7vS5Wra5bDxuhDLC6EPrj0py1K/K/7/hOWvY6Pfy9zuC3Uc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=F3dgDwtL; arc=pass smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-4152698e745so2196672fac.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:35:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773700521; cv=none;
        d=google.com; s=arc-20240605;
        b=STJ/yIdAIOlRiMKV+JdnK7/0V+1kzxi9/GMjik0VHdjhmJqwjgCbC6fHOO+FkABkET
         wPAU8KpMSfWMM/53CpmZhCvhnbw2xfCM6GQDdI90XDgFXgIQopEVmnM6KBttVUpfTIbX
         sEI9vJ0ONZ1uAGWv71uCon02AEXgIB2K+gkOE0KuLpsvlNroiLx0Vusbdc1oHw3rH9DY
         u6guwxR1djJI/uy39oJtkpDnzCTR9eSC6IBcCTCw0qfr79rP8xHvf9Oxbx3t7aHUJeHF
         s+/eAVqchQ/vl1JABa3jdnTbJkqQv2OhVGS1AytxL+4GOvBQGC/WNAx1aZ77oa6oDqMC
         MHuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xXJC7zDdC8S8kCMXP3Y8fcS1OYO4pKzMyEbES776Ceo=;
        fh=QwRthiv4cE04e0o80zplIJT4XQIO3+zOpx/5OB1kGYQ=;
        b=acxgu5wpJNIxLe3I95K9V0T5Gwo9FkoLEXq32jYgTTh0T2p3P7KsoEmZR19Er7Utx8
         sDC0c1teTagNxJyOJwnD8hbNXoPihHi1e2doIInqBlp0XFC4xDnV3BeytcRxr+jqvsyW
         uYIwduEVoa3UtAu/YuYpXIXSjhKU2fYCLUM/yv/3JCaEr0+a/yGDwqYUgxx/8gEmtg41
         5xvHqWdihUN8wxBq5ZuCKXvpwQRtYI0TbhI0NhlW5m7/5hrgClkh1DJE0nAKz3i2g9et
         TKdoeFKS1DwMMLKMXEgVvBWuH6zOSN9wHrE6QyIO8pUQweRSoJqbdwvrVkFNGGBVJw/D
         uWuQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1773700521; x=1774305321; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xXJC7zDdC8S8kCMXP3Y8fcS1OYO4pKzMyEbES776Ceo=;
        b=F3dgDwtLrnBAuyqB8yb9KL3kqzWbSjfs9g29LwQ6O5YktcSMOYgKeUdkiKqAxBeQVL
         TVn39mOjDeRcP5Zrv7fk5eGziRdgKBzjVmMITHG+xMVKYJPy3HVqiD03QFKJRlifKCk5
         4Yif3Kgan7odzZigeapq4ta/VCz0M7ZpT3BhznmXggO8ZNZtRWJlK86VC0tm7tbzPm9z
         VCSVdvO57jz9x8W/43+CF/2feJSouVQAGFz6bv1mGBY4uu6WAPkEYn9hDL47T6zHNX59
         3KFxi9evdTpiOYN38Yaa/r0AdV+nBChUbK8I1cUPkqzDaanN8VLJNPDOA08TkSw22yiL
         Jkbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773700521; x=1774305321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xXJC7zDdC8S8kCMXP3Y8fcS1OYO4pKzMyEbES776Ceo=;
        b=nKKMw8VAngVqKrsGZB+Esgk1RlM67cJYiPSpzvf5k4Xhg58Vd97sh7dUFmYyZy4oJX
         Ry44+VzFlTmt2xPShWAqbYRD6a+aDk7WoKUcRnfqF1Wy6TOQoCy1ktKlEgwSDsZtWJvU
         D8VYROYcA4avKUuf13vNhZz3wmVRa+eu2XWJDlfRz/3lB+R9yS/CnJ+cr0AOS1xZcbic
         r9vu2Du/kvcoW503BtqYWBhe7RE7dXE8jjKowPAf80qeGPPPeIMJ/dm96Q23wMSEIaym
         ASyGRaYkSMlB9fE1IeYJQA+6Yiir9+IJA9x6glTi4C8QBtEXdqrrQK7oW2eDb8Q+f3Hd
         e+lQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYFiVNuPHS9auv1zDzq1RTfXhEiRjJ0AjdijM824VMKUNVsHTUAlB9Pxufc5+4M0iKEYpnex7BRsdR@vger.kernel.org
X-Gm-Message-State: AOJu0YykCkaXRE327NPURNRXIA0UI46qIet9HRRvS/oTPWir6nIxsLcM
	9AlivOO5nTUtkNRbooXkFZojY6NmOByyCubu2lp56pTGEX9zd1ZDrkPs59obV8cxvebMGFbUD7r
	YL7vkfltwQ2ZR/JRrCnhvCsQVUohCQRik9l27muVF
X-Gm-Gg: ATEYQzwohoAlNw4Xk575Oxq20tHWWxPZ3SZFEDcfEG9VhMOWFw/WFKZHSbH2r6Mk3oD
	Mt8FOk8uMHIquDqHZhXrHRRLcx/EpvBG1nYcMm65XlRTW9iTi3srU0i6ato3YI83WKssxDO2T/9
	BKvuVtLe2EmU+KIF7gBbSXqAmCvb1RES5b+kz7zcxOWcrEXEgVtDZyyIRMD57J7izQrjO4kQf7g
	Ds2wOx4xu76fPXiZ2MWESDSl+fMDfebQXtySjkZdlVAixjfn3ESTXQGSe027/nril96LXqcjCC2
	LuJzraBImJ96YX1HLIZcQkW2sFKR6HcdOyqKaBAo
X-Received: by 2002:a05:6870:d8d2:b0:417:6997:3884 with SMTP id
 586e51a60fabf-417b937a5b8mr8480876fac.35.1773700520937; Mon, 16 Mar 2026
 15:35:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226055311.2591357-1-badhri@google.com> <20260226055311.2591357-3-badhri@google.com>
 <aa7lRufFIdqHTOMg@venus>
In-Reply-To: <aa7lRufFIdqHTOMg@venus>
From: Badhri Jagan Sridharan <badhri@google.com>
Date: Mon, 16 Mar 2026 15:34:44 -0700
X-Gm-Features: AaiRm50O1kImotm_0hiwHA_K6T-xNXS2cyWuaCIPk5eUa8UfYxwzoDudvzje3U4
Message-ID: <CAPTae5LyH1c380+Se16XJ6btysjJnBTFWR-Gw_kHX-T-x6NRZw@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] power: supply: Add PD SPR AVS support to USB type enum
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Amit Sunil Dhamne <amitsd@google.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276406-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[badhri@google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,collabora.com:email]
X-Rspamd-Queue-Id: 755672A1A25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 9, 2026 at 8:22=E2=80=AFAM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Thu, Feb 26, 2026 at 05:53:10AM +0000, Badhri Jagan Sridharan wrote:
> > Add two new members to the power_supply_usb_type to represent the
> > USB Power Delivery (PD) Standard Power Range (SPR) Adjustable Voltage
> > Supply (AVS) charging types:
> >
> > POWER_SUPPLY_USB_TYPE_PD_SPR_AVS: For devices supporting only the
> > PD SPR AVS type.
> >
> > POWER_SUPPLY_USB_TYPE_PD_PPS_SPR_AVS: For devices that support both
> > PD Programmable Power Supply (PPS) and PD SPR AVS.
> >
> > Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
> > ---
> >  drivers/power/supply/power_supply_sysfs.c | 2 ++
> >  include/linux/power_supply.h              | 3 +++
> >  2 files changed, 5 insertions(+)
>
> This is missing an update to Documentation/ABI/testing/sysfs-class-power =
.

Apologies, my bad, sent out a v2:
https://lore.kernel.org/lkml/20260316150301.3892223-1-badhri@google.com/

Thanks Sebastian for taking a look.

Regards,
Badhri

>
> Greetings,
>
> -- Sebastian
>
> >
> > diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/=
supply/power_supply_sysfs.c
> > index dd3a48d72d2b..f30a7b9ccd5e 100644
> > --- a/drivers/power/supply/power_supply_sysfs.c
> > +++ b/drivers/power/supply/power_supply_sysfs.c
> > @@ -70,6 +70,8 @@ static const char * const POWER_SUPPLY_USB_TYPE_TEXT[=
] =3D {
> >       [POWER_SUPPLY_USB_TYPE_PD]              =3D "PD",
> >       [POWER_SUPPLY_USB_TYPE_PD_DRP]          =3D "PD_DRP",
> >       [POWER_SUPPLY_USB_TYPE_PD_PPS]          =3D "PD_PPS",
> > +     [POWER_SUPPLY_USB_TYPE_PD_SPR_AVS]      =3D "PD_SPR_AVS",
> > +     [POWER_SUPPLY_USB_TYPE_PD_PPS_SPR_AVS]  =3D "PD_PPS_SPR_AVS",
> >       [POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID]  =3D "BrickID",
> >  };
> >
> > diff --git a/include/linux/power_supply.h b/include/linux/power_supply.=
h
> > index 360ffdf272da..7a5e4c3242a0 100644
> > --- a/include/linux/power_supply.h
> > +++ b/include/linux/power_supply.h
> > @@ -210,6 +210,9 @@ enum power_supply_usb_type {
> >       POWER_SUPPLY_USB_TYPE_PD,               /* Power Delivery Port */
> >       POWER_SUPPLY_USB_TYPE_PD_DRP,           /* PD Dual Role Port */
> >       POWER_SUPPLY_USB_TYPE_PD_PPS,           /* PD Programmable Power =
Supply */
> > +     /* PD Standard Power Range Adjustable Voltage Supply */
> > +     POWER_SUPPLY_USB_TYPE_PD_SPR_AVS,
> > +     POWER_SUPPLY_USB_TYPE_PD_PPS_SPR_AVS,   /* Supports both PD PPS +=
 SPR AVS */
> >       POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID,   /* Apple Charging Method =
*/
> >  };
> >
> > --
> > 2.53.0.414.gf7e9f6c205-goog
> >

