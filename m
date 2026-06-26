Return-Path: <devicetree+bounces-315877-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jMyELzbhPWox7ggAu9opvQ
	(envelope-from <devicetree+bounces-315877-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:17:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4466C9B85
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:17:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lontium.com header.s=default header.b=WRFm9EI+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315877-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315877-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3E05306F9CE
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0DF2F5313;
	Fri, 26 Jun 2026 02:15:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out28-124.mail.aliyun.com (out28-124.mail.aliyun.com [115.124.28.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCF9248886
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 02:15:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782440122; cv=none; b=H5OQ2CEpAJioSYjzczIgcmMqDcdOpNVWDF6fwn5lgRia3MTQRiQrwDW/+r/ODmeAw8nfJclvI2eFSpTyRwwHGWUCVWeoDA0oC5npRXEhICO9Ipt65oaanJfls6OROcNQ5yLsCVVx19SgJmWopv3mTH42s6n93fnixlVuHkSqNBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782440122; c=relaxed/simple;
	bh=b/ijV46iH0mSU6JndiHuzBFXWZKigw5caZlgTXmjwMc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fxcbx9+PcoxqBcDK8xJuWWlagW6gaIi2QFlKs6yW954YA1x0JoIKUMcXI5WEANpsFl39bW4SmEaUq6/zqbCwwg6C5yIhEBjdnsSXGDJsXB9pc2YIKMUf0f8mZnNKmQfJH8MeV8HonKsQEpvun90J+QAfeBVn7f94nYVOVKi42m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=WRFm9EI+; arc=none smtp.client-ip=115.124.28.124
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1782440117; h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
	bh=Wb7F0HgHSsOQi1v3oh8YOg8rPkXbeVLfr1rGV3IZM3A=;
	b=WRFm9EI+2jbtuP3Ewkkodvv2oITCqBy0ERH14fTRzg6selRIMG8bpktsZvipD+WoGMV1mNaT92NSToxlzxmpYvXwV0+ofe6QE2HleI5mVMFFLcY2AN2OMWTEKrNm9Pb3Hauo2QNzbcuiDu7Zh+lWVcP351APsF5Wk/wkqCk8CteqyK8r2QgLTPDnbIIdlVyKNnJvrt+8cCaHy10nnwIPFLRVoPeNwBuCIjA1JPgQghQ0q7qAubf/6is6BN5cxM40kSY8K94sYFApW6EnXH3HTsY4QpRBLZeIBJyICvJPwL9GV5az5z7Q51fKZlFtaAMxvC64IPEVYLQzAxyavkdkoA==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.07438967|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_regular_dialog|0.0504687-0.00160094-0.94793;FP=17965206477170353410|2|1|2|0|-1|-1|-1;HT=maildocker-contentspam033037017159;MF=syyang@lontium.com;NM=1;PH=DS;RN=1;RT=1;SR=0;TI=SMTPD_---.i60vge7_1782440115;
Received: from mail-oi1-f175.google.com(mailfrom:syyang@lontium.com fp:SMTPD_---.i60vge7_1782440115 cluster:ay29)
          by smtp.aliyun-inc.com;
          Fri, 26 Jun 2026 10:15:16 +0800
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-485ecc0f2dfso339362b6e.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 19:15:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/qeGTunouQPYF1K0EZADv49Ax1WESWqVgH/G+rCQF/MRqQDeQzE0XVXWZ8pEYvQpmol8u02J3qltuK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Yy40RLeoqt5u81xBLYTE33PvmFvFUFH7IBPuXdvQviFgOPGB
	ksf/sOd3uUn68UAUnru4DgRYjvBRjopz0kyz3Z1KFWAjkQEvIwZPU65afYND6ekOLcx3bLuicAZ
	LjMeg/FZwNGQnWQ0xZvMY9bTD5jdx2uI=
X-Received: by 2002:a05:6808:e87:b0:485:41fc:71e1 with SMTP id
 5614622812f47-49217d271fcmr4756254b6e.21.1782440115200; Thu, 25 Jun 2026
 19:15:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508134009.4582-1-syyang@lontium.com> <20260508134009.4582-3-syyang@lontium.com>
 <3188f63f-5358-48d7-b934-af20a8f95c6f@kernel.org> <CAFQXuNbKBfyeQL3N3P5QY=6BWoD3O6DSbXN-WMA1rRG9vCs3Kg@mail.gmail.com>
 <a0352a42-15db-4c7a-ae73-8a4e1543cd50@kernel.org> <CAFQXuNZVE6cZJGwrGKGtWnB-seSJLHFh8zW3jjAs6U4JLZFWng@mail.gmail.com>
 <CAFQXuNa8bJCpZBkMs_3mtbK_pjVzDdaDaoGk0KDxiG_Pf7txdg@mail.gmail.com> <6371d1d8-cdfb-40fa-84c7-ba3ec4e2ac00@kernel.org>
In-Reply-To: <6371d1d8-cdfb-40fa-84c7-ba3ec4e2ac00@kernel.org>
From: Sunyun Yang <syyang@lontium.com>
Date: Fri, 26 Jun 2026 10:15:03 +0800
X-Gmail-Original-Message-ID: <CAFQXuNZtzBu+WiG8n0BeN47zagQmL-iz_6Af7prk-xHLAeRBwg@mail.gmail.com>
X-Gm-Features: AVVi8Cf8o4UMoK0nnWXG70UOOa3TP4xvy7_Ao2U944dWAm89fBUWaicxN-xgha8
Message-ID: <CAFQXuNZtzBu+WiG8n0BeN47zagQmL-iz_6Af7prk-xHLAeRBwg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315877-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lontium.com:dkim,lontium.com:email,lontium.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F4466C9B85

Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=E6=
=97=A5=E5=91=A8=E5=9B=9B 21:51=E5=86=99=E9=81=93=EF=BC=9A
>
> On 25/06/2026 15:40, Sunyun Yang wrote:
> > Sunyun Yang <syyang@lontium.com> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=E6=
=97=A5=E5=91=A8=E5=9B=9B 21:26=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=88=
25=E6=97=A5=E5=91=A8=E5=9B=9B 21:17=E5=86=99=E9=81=93=EF=BC=9A
> >>>
> >>> On 25/06/2026 15:14, Sunyun Yang wrote:
> >>>> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=
=8825=E6=97=A5=E5=91=A8=E5=9B=9B 20:54=E5=86=99=E9=81=93=EF=BC=9A
> >>>>>
> >>>>> On 08/05/2026 15:40, syyang@lontium.com wrote:
> >>>>>> +
> >>>>>> +static void lt9611c_reset(struct lt9611c *lt9611c)
> >>>>>> +{
> >>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >>>>>> +     msleep(20);
> >>>>>> +
> >>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> >>>>>> +     msleep(20);
> >>>>>> +
> >>>>>> +     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >>>>>
> >>>>> This is just plain wrong. Why do you assert, then de-assert and the=
n
> >>>>> finally assert AGAIN the reset leaving the device in powerdown stag=
e?
> >>>>>
> >>>> I am using software to emulate the hardware RESET button on our EVB.
> >>>> When the hardware RESET button is pressed while our chip is running,
> >>>> the signal level changes from HIGH to LOW and then back to HIGH.
> >>>>
> >>>> Of course, we can also use the following:
> >>>> static void lt9611c_reset(struct lt9611c *lt9611c)
> >>>> {
> >>>>     gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
> >>>>     msleep(50);
> >>>>     gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
> >>>>     msleep(20);
> >>>> }
> >>>
> >>> Makes no sense either and you just did not get the point and did not
> >>> answer my question. I asked WHY you leave asserted. Answer "we emulat=
e"
> >>> is just plain wrong.
> >>>
> >>> So again please answer:
> >>>
> >>> Why do you leave device with reset asserted?
> >>>
> >>
> >>  devicetree:   reset-gpios =3D <&tlmm 128 GPIO_ACTIVE_HIGH>;
> >>
> >> GPIO_ACTIVE_HIGH:
> >>
> >> gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);   ------   reset pin
> >> is Low level : Clear the register configuration in the chip to stop
> >> the chip from working.
> >>
> >> gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);   ------  reset pin
> >> is high level:  The chip resumes operation.
> >>
> >>
> >
> > Our purpose is: pull the level low to clear the register configuration
> > in the chip, and then pull it high to allow the MCU inside the chip to
> > re=E2=80=91initialize the registers.
>
>
> And you do completely opposite... so that confirms your code is just wron=
g.
>

The lontium-lt9611.yaml uses GPIO_ACTIVE_HIGH. I am just following the
rule of this device tree. If I modify the device tree to use
GPIO_ACTIVE_LOW,
and use the following code in my driver, then my driver would be correct.
However, would the existing kernel drivers lontium-lt9611uxc.c and
lontium-lt9611.c be affected?
static void lt9611c_reset(struct lt9611c *lt9611c)
{
    gpiod_set_value_cansleep(lt9611c->reset_gpio, 1);
    msleep(50);
    gpiod_set_value_cansleep(lt9611c->reset_gpio, 0);
    msleep(20);
}



>
> Best regards,
> Krzysztof

