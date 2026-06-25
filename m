Return-Path: <devicetree+bounces-315684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yS9+KjIuPWpMyggAu9opvQ
	(envelope-from <devicetree+bounces-315684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:33:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 036CF6C6298
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:33:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lontium.com header.s=default header.b=mgBz6syL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315684-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315684-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A9DF300CC29
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4063D32B10C;
	Thu, 25 Jun 2026 13:32:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out28-115.mail.aliyun.com (out28-115.mail.aliyun.com [115.124.28.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5082F1E98E3
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 13:32:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782394348; cv=none; b=Bw/EQ0ZvuCBHsJx8cx3pdST2B22xlyUW6TBvjnjH+dj0rnhGWCLY+yoXPbfWVkD3bfvTVEgi1AejxusQd3vIHfZ+h5oldsHBFhGcHNY0dnAIELXf2CFtnqeH6LBVe/wUt81jZKumM6XdK2DsjPpbLI3k812FLmSPWdKJwBaOtbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782394348; c=relaxed/simple;
	bh=3/G28DdnYc9HLNSxtSSdFJui5pJtbyuKORnAbCeIKBE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OuvpZXxEqHRTKfPee1YSpU7ttLrBQi5QLydzhtfCloSR+sy8RfzIdpyC9KKrVf0kXCoCECYDcTjZIUErexNeVKhZgx4l9kMBLvM22+nTME76TBBVBD/Xv4XcTYX3JyOC6u2vF/9mAa/EOwrWuRTY+Ig/XiWEZ0DDdVnZlpMrO+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=mgBz6syL; arc=none smtp.client-ip=115.124.28.115
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1782394338; h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
	bh=gRSJ4CRS8OCB04rZdFrPRMpEbw/Vc3lgI3K6YTTYbew=;
	b=mgBz6syLTfhuqEb31wE5SwN7jAAsCDbzQjk8a9NYiyvARrv/ctUzoZWoJTPZh0ZVF6QxTwkDynakZ4gMCrqo4AtgHCid/izrl9kflatX8XEBAVHo5KpP7dGCvKT4c/CvadDABmrY4VqP9/c9tp3n9WFKO4Pekry0v8Sybf8wX2HfYvDOHC01tZXqULUwLCoYwasFozt964elYQFlvXzM0cxeWA+VaTjb2g7YCbLqIjPGFgX+kHtP/GsHlyp2Fz1Gl5j6G5wswEr0Rw85VTX0u1Nw8mruvFyff593HYizJTGJOcCqUwNt4a5PIXauwHYTXKk7fY9uUtQ8VBGaESyIcw==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.07516154|-1;CH=blue;DM=|OVERLOAD|false|;DS=CONTINUE|ham_regular_dialog|0.110469-0.00242109-0.88711;FP=18109304622815978754|13|1|11|0|-1|-1|-1;HT=maildocker-contentspam033023018039;MF=syyang@lontium.com;NM=1;PH=DS;RN=1;RT=1;SR=0;TI=SMTPD_---.i5Q1H4d_1782394020;
Received: from mail-oi1-f177.google.com(mailfrom:syyang@lontium.com fp:SMTPD_---.i5Q1H4d_1782394020 cluster:ay29)
          by smtp.aliyun-inc.com;
          Thu, 25 Jun 2026 21:27:01 +0800
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-48f0e5e6698so1549355b6e.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 06:27:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8IAatK6wdtQRAbR6ZUnFBRj2ekpfxiTDDgp/g4PPO0wY8FdPQNfhLRZ8YTdDUMiVkY8E+t0K1RAJJV@vger.kernel.org
X-Gm-Message-State: AOJu0YxOB0jy4E8VAAKOaZi/kQKzkeMXZr4hyQG+luWYcGug4sNM8lK9
	yp0WFN2UgmCnqCKQin2IyKK4AyTIyudwG/bUgGlIkWtt1hDbhRt1edRilV/VZOoZMvDEMHFkDIv
	fAubTqqNCXwoqtAQ/BIzZWVJ2RsdN3Ec=
X-Received: by 2002:a05:6808:c2b6:b0:490:315d:e0d5 with SMTP id
 5614622812f47-4921791c07bmr2492458b6e.16.1782394019404; Thu, 25 Jun 2026
 06:26:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508134009.4582-1-syyang@lontium.com> <20260508134009.4582-3-syyang@lontium.com>
 <3188f63f-5358-48d7-b934-af20a8f95c6f@kernel.org> <CAFQXuNbKBfyeQL3N3P5QY=6BWoD3O6DSbXN-WMA1rRG9vCs3Kg@mail.gmail.com>
 <a0352a42-15db-4c7a-ae73-8a4e1543cd50@kernel.org>
In-Reply-To: <a0352a42-15db-4c7a-ae73-8a4e1543cd50@kernel.org>
From: Sunyun Yang <syyang@lontium.com>
Date: Thu, 25 Jun 2026 21:26:47 +0800
X-Gmail-Original-Message-ID: <CAFQXuNZVE6cZJGwrGKGtWnB-seSJLHFh8zW3jjAs6U4JLZFWng@mail.gmail.com>
X-Gm-Features: AVVi8CdcsgeQPjqxnZ4gT207zSP4WZU_6qclErTnYRUAvVG4BxkgLFK7wlIGlqc
Message-ID: <CAFQXuNZVE6cZJGwrGKGtWnB-seSJLHFh8zW3jjAs6U4JLZFWng@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315684-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 036CF6C6298

Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=E6=
=97=A5=E5=91=A8=E5=9B=9B 21:17=E5=86=99=E9=81=93=EF=BC=9A
>
> On 25/06/2026 15:14, Sunyun Yang wrote:
> > Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=882=
5=E6=97=A5=E5=91=A8=E5=9B=9B 20:54=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> On 08/05/2026 15:40, syyang@lontium.com wrote:
> >>> +
> >>> +static void lt9611c_reset(struct lt9611c *lt9611c)
> >>> +{
> >>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >>> +     msleep(20);
> >>> +
> >>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> >>> +     msleep(20);
> >>> +
> >>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >>
> >> This is just plain wrong. Why do you assert, then de-assert and then
> >> finally assert AGAIN the reset leaving the device in powerdown stage?
> >>
> > I am using software to emulate the hardware RESET button on our EVB.
> > When the hardware RESET button is pressed while our chip is running,
> > the signal level changes from HIGH to LOW and then back to HIGH.
> >
> > Of course, we can also use the following:
> > static void lt9611c_reset(struct lt9611c *lt9611c)
> > {
> >     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> >     msleep(50);
> >     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >     msleep(20);
> > }
>
> Makes no sense either and you just did not get the point and did not
> answer my question. I asked WHY you leave asserted. Answer "we emulate"
> is just plain wrong.
>
> So again please answer:
>
> Why do you leave device with reset asserted?
>

 devicetree:   reset-gpios =3D <&tlmm 128 GPIO_ACTIVE_HIGH>;

GPIO_ACTIVE_HIGH:

gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);   ------   reset pin
is Low level : Clear the register configuration in the chip to stop
the chip from working.

gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);   ------  reset pin
is high level:  The chip resumes operation.



> Best regards,
> Krzysztof

