Return-Path: <devicetree+bounces-315689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e42mJg8wPWq6yggAu9opvQ
	(envelope-from <devicetree+bounces-315689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:41:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5606C6355
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:41:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lontium.com header.s=default header.b=OVoc+406;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315689-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315689-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F16C9301B002
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80B5A2EFD9B;
	Thu, 25 Jun 2026 13:40:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out28-126.mail.aliyun.com (out28-126.mail.aliyun.com [115.124.28.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD90149C6F
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 13:40:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782394859; cv=none; b=qSYF4I3EwNuT/wDhpAGZ/YwExq/dqNvbDxR6NquUtAmS4C6nRzCLQuqkDeEz2AfjqLSdSuCZ24ad8H1XUq6FqQMHYBUEZZCK1dQoEql0lxCvOisKpGQtoT1LUHC8EtaVkgaMvJ4sxNvOO9ELYIfCNQtLBV4O/Mu5E33LcO6JEp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782394859; c=relaxed/simple;
	bh=QHWbY8ixn4UqbBUiJUBxYSrZq+dCWAw2m6w8kgaZZ0s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S7yUKq+Y9qH7yj2tE9Rew7CUsDJ/Mht2vJsW8kFFIwCeB+nxe1dKlwzP3fQSZQoVRBtn8nmS+58TDtPklOZRqrE8FoFrebUa6MWawbRVJhEBYsxRpNjUmRmTBa37EMYAhPsAnxOf7Sxhnk4CkqHSuKF3G8ADdVXoZ6RbElB6gQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=OVoc+406; arc=none smtp.client-ip=115.124.28.126
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1782394850; h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
	bh=r6Xx0NfFQAySM0PRNTDErUFEPOAC05qJkfQxdCWSqzE=;
	b=OVoc+406Ns9XUuYm+hbAxx4LPVMGzSevtdxokt+mjCNWP6Zw0aOpE9/MizNOZePH4+/bX977E0LIO5+ckoqIO/eQjdwfgijO88WGInMkNfNfaeoNiIBV9zKeIGZykcDCrnXWkwVv4B1JEaB1tAv4wvBL0mGLYbjngLk0IrGZc1nlXS8DenuIsEaf3xJfWpqvcxsybOqHSbhk5DUpDoncvuZBSy9zZmupjR7Z5cId4fuR8PLMmSGiYrb7F6tIYjW+hS4AcCmIrPEMm2CSlTIUGBddNRYN6Cde9GwV6HUB5QM6EQwVguLfaGF9obNOThEDS9oSkuOFEhqoUxQMOQsAkQ==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.0746977|-1;CH=blue;DM=|OVERLOAD|false|;DS=CONTINUE|ham_regular_dialog|0.145739-0.00323627-0.851025;FP=18109321665246209298|14|1|11|0|-1|-1|-1;HT=maildocker-contentspam033037025160;MF=syyang@lontium.com;NM=1;PH=DS;RN=1;RT=1;SR=0;TI=SMTPD_---.i5hSY3d_1782394846;
Received: from mail-oi1-f169.google.com(mailfrom:syyang@lontium.com fp:SMTPD_---.i5hSY3d_1782394846 cluster:ay29)
          by smtp.aliyun-inc.com;
          Thu, 25 Jun 2026 21:40:47 +0800
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-4871618372cso1286006b6e.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 06:40:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ92u/e0mZSEx6nHomXBAR7sRVHGQ6UM3tGOlCMn67KaP2Hsz04FqgZt354DAPBDfylALlcbRC0ydAJ5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjo1uydOJqyCb1SZgFI3UN1N5pWQhURbcErhXvwMYsECZQ+IcD
	8XQW2aocOunuO/tTvoQ9Gc1BEagDUX6GLyNho6194atKVUpkJPHLn8E+Vf0b5sQ1wI8b4FljcPG
	oErhNxuq5paj5N+5uvwDDS7fsyxz9TAw=
X-Received: by 2002:a05:6808:2f10:b0:492:c931:4d66 with SMTP id
 5614622812f47-492c9316c66mr544834b6e.18.1782394845754; Thu, 25 Jun 2026
 06:40:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508134009.4582-1-syyang@lontium.com> <20260508134009.4582-3-syyang@lontium.com>
 <3188f63f-5358-48d7-b934-af20a8f95c6f@kernel.org> <CAFQXuNbKBfyeQL3N3P5QY=6BWoD3O6DSbXN-WMA1rRG9vCs3Kg@mail.gmail.com>
 <a0352a42-15db-4c7a-ae73-8a4e1543cd50@kernel.org> <CAFQXuNZVE6cZJGwrGKGtWnB-seSJLHFh8zW3jjAs6U4JLZFWng@mail.gmail.com>
In-Reply-To: <CAFQXuNZVE6cZJGwrGKGtWnB-seSJLHFh8zW3jjAs6U4JLZFWng@mail.gmail.com>
From: Sunyun Yang <syyang@lontium.com>
Date: Thu, 25 Jun 2026 21:40:33 +0800
X-Gmail-Original-Message-ID: <CAFQXuNa8bJCpZBkMs_3mtbK_pjVzDdaDaoGk0KDxiG_Pf7txdg@mail.gmail.com>
X-Gm-Features: AVVi8CcVIOgE8ToOf8-IAnxNW55nWpBwzycER8it0Uh4EDS4UnWSE0MAl-bvPXA
Message-ID: <CAFQXuNa8bJCpZBkMs_3mtbK_pjVzDdaDaoGk0KDxiG_Pf7txdg@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] drm/bridge: Add Lontium LT9611C(EX/UXD) MIPI DSI
 to HDMI driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, maarten.lankhorst@linux.intel.com, 
	rfoss@kernel.org, mripard@kernel.org, Laurent.pinchart@ideasonboard.com, 
	tzimmermann@suse.de, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, xmzhu@lontium.corp-partner.google.com, 
	xmzhu@lontium.com, rlyu@lontium.com, xbpeng@lontium.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315689-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:dmitry.baryshkov@oss.qualcomm.com,m:maarten.lankhorst@linux.intel.com,m:rfoss@kernel.org,m:mripard@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:tzimmermann@suse.de,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:xmzhu@lontium.corp-partner.google.com,m:xmzhu@lontium.com,m:rlyu@lontium.com,m:xbpeng@lontium.com,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	DMARC_NA(0.00)[lontium.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,oss.qualcomm.com,linux.intel.com,ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lontium.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,lontium.com:dkim,lontium.com:email,lontium.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B5606C6355

Sunyun Yang <syyang@lontium.com> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=E6=97=
=A5=E5=91=A8=E5=9B=9B 21:26=E5=86=99=E9=81=93=EF=BC=9A
>
> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=
=E6=97=A5=E5=91=A8=E5=9B=9B 21:17=E5=86=99=E9=81=93=EF=BC=9A
> >
> > On 25/06/2026 15:14, Sunyun Yang wrote:
> > > Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=
=8825=E6=97=A5=E5=91=A8=E5=9B=9B 20:54=E5=86=99=E9=81=93=EF=BC=9A
> > >>
> > >> On 08/05/2026 15:40, syyang@lontium.com wrote:
> > >>> +
> > >>> +static void lt9611c_reset(struct lt9611c *lt9611c)
> > >>> +{
> > >>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> > >>> +     msleep(20);
> > >>> +
> > >>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> > >>> +     msleep(20);
> > >>> +
> > >>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> > >>
> > >> This is just plain wrong. Why do you assert, then de-assert and then
> > >> finally assert AGAIN the reset leaving the device in powerdown stage=
?
> > >>
> > > I am using software to emulate the hardware RESET button on our EVB.
> > > When the hardware RESET button is pressed while our chip is running,
> > > the signal level changes from HIGH to LOW and then back to HIGH.
> > >
> > > Of course, we can also use the following:
> > > static void lt9611c_reset(struct lt9611c *lt9611c)
> > > {
> > >     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> > >     msleep(50);
> > >     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> > >     msleep(20);
> > > }
> >
> > Makes no sense either and you just did not get the point and did not
> > answer my question. I asked WHY you leave asserted. Answer "we emulate"
> > is just plain wrong.
> >
> > So again please answer:
> >
> > Why do you leave device with reset asserted?
> >
>
>  devicetree:   reset-gpios =3D <&tlmm 128 GPIO_ACTIVE_HIGH>;
>
> GPIO_ACTIVE_HIGH:
>
> gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);   ------   reset pin
> is Low level : Clear the register configuration in the chip to stop
> the chip from working.
>
> gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);   ------  reset pin
> is high level:  The chip resumes operation.
>
>

Our purpose is: pull the level low to clear the register configuration
in the chip, and then pull it high to allow the MCU inside the chip to
re=E2=80=91initialize the registers.

>
> > Best regards,
> > Krzysztof

