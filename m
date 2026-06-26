Return-Path: <devicetree+bounces-315987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wElAKxM0PmqjBQkAu9opvQ
	(envelope-from <devicetree+bounces-315987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:10:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2047F6CB39E
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:10:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lontium.com header.s=default header.b=ecaZMlug;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315987-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315987-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C0236300652B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 08:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6B453AB298;
	Fri, 26 Jun 2026 08:10:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out198-38.us.a.mail.aliyun.com (out198-38.us.a.mail.aliyun.com [47.90.198.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E27C3A9639
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 08:10:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782461448; cv=none; b=H/J24wYx9FMLRF+qSbDL42wY7GUxb8I4+Ajp5xBHyqo6YLSJgvr8uQSaU68W2N1HELZuAiEWCqI5KtiBjofmZ7XAi9Irlw7DBc1gfadR7hlIWtNeZ5ScX/GPBf7ZcgNKuMdCe3wMhYqqHRlbl/m7SyXT0N/ChJJkfQE8rCnda0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782461448; c=relaxed/simple;
	bh=nZvtXtmyrg9U0JE4Hys4l5JldL1Bc4/F8SeH9MWmWlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fehroHTd/KdI3msM4RQBwpacnrOp5J/GEowQqvHZFmlJlA3zSRbQE4AWX+LR8YgEB4QmhmTaN0KKx5H3SNjps1xWPvdevWdMW7DCJI+ec27TeAyle1jPXiqIq5XvGm/Q2p0TPDc0tyovWwoqwappaoonhjOjjnvHK9TnkqPXTnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=ecaZMlug; arc=none smtp.client-ip=47.90.198.38
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1782461428; h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
	bh=HhV3bWO9gIVoUi3jAkMYRQDGZL+blyVm2vY9bmLhsaM=;
	b=ecaZMlugL34+pZQkBArMDBjLWnrs0gTrfp6C5pD/F/LFvIa3jZMJ9ocmNacHgGlP0ulWV36jKI6tYWgy2xGUxm3edG01BB/vmBybVsdaTvjx6h1tN4a3if6mbLXl4bnd6cxs0Tfj0slvRTCtd7eBIsrQ1T5it3+qTt0YaVtp19ANzhakdTnLWAJgIKYPvpYnP5HtvPoeRZFQYi0rXmixb+pb4dImoLYXUxdFLFr/MaCpKdr9kNBi/qCZ0pU/wL0J0mPxlM+QJO+Cz8D1qBSqNLYgVd59X5JRHHbDKBTsqXDkVELefUS+MI9XpZbumwLOOGq5LA7D5qc7ThsnbgVITQ==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.07437418|-1;CH=blue;DM=|OVERLOAD|false|;DS=CONTINUE|ham_regular_dialog|0.0255571-0.00402946-0.970414;FP=18253397270903497986|1|1|2|0|-1|-1|-1;HT=maildocker-contentspam033045213054;MF=syyang@lontium.com;NM=1;PH=DS;RN=1;RT=1;SR=0;TI=SMTPD_---.i6H6gXd_1782461107;
Received: from mail-oi1-f175.google.com(mailfrom:syyang@lontium.com fp:SMTPD_---.i6H6gXd_1782461107 cluster:ay29)
          by smtp.aliyun-inc.com;
          Fri, 26 Jun 2026 16:05:07 +0800
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-4863a7dac63so368289b6e.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 01:05:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ823jrrPuSlmRewVEqrDHfxBoCndaH+ba/ui2Nvp6FYJVDF4ySjW9piEJSaGzvMJ7o8CWvBp81bm9dh@vger.kernel.org
X-Gm-Message-State: AOJu0YzHTlz6w7Pn5K//fhzLFqG9Q51w4U5RaEnw2q/+7+ZJvV2LXAyH
	aJpmMLBXAwmn4dI8WiYRkt1e145j39hqZ7fbqn9mfNoGQPGRrZffhmPcvmTLFT/29VFQck1YGQV
	6hhrJWoWFStQd66OGm2d2EJ5a01hphIQ=
X-Received: by 2002:a05:6808:67c8:b0:489:6b4c:d779 with SMTP id
 5614622812f47-49217d2713amr5165727b6e.20.1782461106299; Fri, 26 Jun 2026
 01:05:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508134009.4582-1-syyang@lontium.com> <20260508134009.4582-3-syyang@lontium.com>
 <3188f63f-5358-48d7-b934-af20a8f95c6f@kernel.org> <CAFQXuNbKBfyeQL3N3P5QY=6BWoD3O6DSbXN-WMA1rRG9vCs3Kg@mail.gmail.com>
 <a0352a42-15db-4c7a-ae73-8a4e1543cd50@kernel.org> <CAFQXuNZVE6cZJGwrGKGtWnB-seSJLHFh8zW3jjAs6U4JLZFWng@mail.gmail.com>
 <CAFQXuNa8bJCpZBkMs_3mtbK_pjVzDdaDaoGk0KDxiG_Pf7txdg@mail.gmail.com>
 <6371d1d8-cdfb-40fa-84c7-ba3ec4e2ac00@kernel.org> <CAFQXuNZtzBu+WiG8n0BeN47zagQmL-iz_6Af7prk-xHLAeRBwg@mail.gmail.com>
 <e8001fe1-684d-4de2-bde4-8b0c1ce1dd0d@kernel.org>
In-Reply-To: <e8001fe1-684d-4de2-bde4-8b0c1ce1dd0d@kernel.org>
From: Sunyun Yang <syyang@lontium.com>
Date: Fri, 26 Jun 2026 16:04:54 +0800
X-Gmail-Original-Message-ID: <CAFQXuNYx1qFkM_iuM6nqfa7HDVW21AeGAJ2QY=dc-gnkJdGSNg@mail.gmail.com>
X-Gm-Features: AVVi8CdilLO5T98OMihI_-qQERGzIO1j1r0pJRpQqMWJHbfI3o1AP2MIwXAucP0
Message-ID: <CAFQXuNYx1qFkM_iuM6nqfa7HDVW21AeGAJ2QY=dc-gnkJdGSNg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315987-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lontium.com:dkim,lontium.com:email,lontium.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2047F6CB39E

Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=8826=E6=
=97=A5=E5=91=A8=E4=BA=94 15:38=E5=86=99=E9=81=93=EF=BC=9A


>
> On 26/06/2026 04:15, Sunyun Yang wrote:
> > Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=882=
5=E6=97=A5=E5=91=A8=E5=9B=9B 21:51=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> On 25/06/2026 15:40, Sunyun Yang wrote:
> >>> Sunyun Yang <syyang@lontium.com> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=
=E6=97=A5=E5=91=A8=E5=9B=9B 21:26=E5=86=99=E9=81=93=EF=BC=9A
> >>>>
> >>>> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=
=8825=E6=97=A5=E5=91=A8=E5=9B=9B 21:17=E5=86=99=E9=81=93=EF=BC=9A
> >>>>>
> >>>>> On 25/06/2026 15:14, Sunyun Yang wrote:
> >>>>>> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=
=9C=8825=E6=97=A5=E5=91=A8=E5=9B=9B 20:54=E5=86=99=E9=81=93=EF=BC=9A
> >>>>>>>
> >>>>>>> On 08/05/2026 15:40, syyang@lontium.com wrote:
> >>>>>>>> +
> >>>>>>>> +static void lt9611c_reset(struct lt9611c *lt9611c)
> >>>>>>>> +{
> >>>>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >>>>>>>> +     msleep(20);
> >>>>>>>> +
> >>>>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> >>>>>>>> +     msleep(20);
> >>>>>>>> +
> >>>>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >>>>>>>
> >>>>>>> This is just plain wrong. Why do you assert, then de-assert and t=
hen
> >>>>>>> finally assert AGAIN the reset leaving the device in powerdown st=
age?
> >>>>>>>
> >>>>>> I am using software to emulate the hardware RESET button on our EV=
B.
> >>>>>> When the hardware RESET button is pressed while our chip is runnin=
g,
> >>>>>> the signal level changes from HIGH to LOW and then back to HIGH.
> >>>>>>
> >>>>>> Of course, we can also use the following:
> >>>>>> static void lt9611c_reset(struct lt9611c *lt9611c)
> >>>>>> {
> >>>>>>     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> >>>>>>     msleep(50);
> >>>>>>     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >>>>>>     msleep(20);
> >>>>>> }
> >>>>>
> >>>>> Makes no sense either and you just did not get the point and did no=
t
> >>>>> answer my question. I asked WHY you leave asserted. Answer "we emul=
ate"
> >>>>> is just plain wrong.
> >>>>>
> >>>>> So again please answer:
> >>>>>
> >>>>> Why do you leave device with reset asserted?
> >>>>>
> >>>>
> >>>>  devicetree:   reset-gpios =3D <&tlmm 128 GPIO_ACTIVE_HIGH>;
> >>>>
> >>>> GPIO_ACTIVE_HIGH:
> >>>>
> >>>> gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);   ------   reset p=
in
> >>>> is Low level : Clear the register configuration in the chip to stop
> >>>> the chip from working.
> >>>>
> >>>> gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);   ------  reset pi=
n
> >>>> is high level:  The chip resumes operation.
> >>>>
> >>>>
> >>>
> >>> Our purpose is: pull the level low to clear the register configuratio=
n
> >>> in the chip, and then pull it high to allow the MCU inside the chip t=
o
> >>> re=E2=80=91initialize the registers.
> >>
> >>
> >> And you do completely opposite... so that confirms your code is just w=
rong.
> >>
> >
> > The lontium-lt9611.yaml uses GPIO_ACTIVE_HIGH. I am just following the
> > rule of this device tree. If I modify the device tree to use
> > GPIO_ACTIVE_LOW,
> > and use the following code in my driver, then my driver would be correc=
t.
> > However, would the existing kernel drivers lontium-lt9611uxc.c and
> > lontium-lt9611.c be affected?
>
> DT has nothing to do here. 1 is assert, 0 is de-assert. Your code does
> things opposite to any logic, because you finish function with reset
> asserted.
>

I understand your point, and I will make the changes in the next version.

Additionally, I have another question I would like to ask you
regarding sashiko-bot@kernel.org. Since sashiko-bot sometimes has
opinions that differ from yours, whose advice should I follow?

If I do not adopt sashiko-bot's suggestions, will my patches still be
accepted into the upstream Linux kernel?

>
> Best regards,
> Krzysztof

