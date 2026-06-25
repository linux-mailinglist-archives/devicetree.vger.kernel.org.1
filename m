Return-Path: <devicetree+bounces-315682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PtLsD2ErPWqOyQgAu9opvQ
	(envelope-from <devicetree+bounces-315682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:21:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9526C6192
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:21:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lontium.com header.s=default header.b=kpp82dw9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315682-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315682-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CFBE300F11F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C412F8EA2;
	Thu, 25 Jun 2026 13:21:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out28-134.mail.aliyun.com (out28-134.mail.aliyun.com [115.124.28.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E81E2D0C63
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 13:21:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782393686; cv=none; b=TqE2/exwtU4ccqiVVmVFh/GGsBGJpeSA7p7Vo2Ry3x3BIqxWGoTNeuhDDz642ro9fD7gFlEU25ynlj5zpt0YWCImfILCGdEkdHlP2Q5JPDKXhzzA5e3mkvv4/sYdBnrDShPPVdYq4nEUFOVgH/WwfPWjKfoY/tihWyLdwer9A0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782393686; c=relaxed/simple;
	bh=ti/PN8skITuRG8OlztXMT7V18V1YNBXs7Uaa1CesobU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iP29IbaNoplRau9V3Lsklnhp5RDtX6yU9++9QOs6JDaR+cOBkMPVxAuEY/k7NANLTkCZX33XVkxfmHsuupZtgPlqPbEpN2udecOlBsSiYf/xrRG3+bE7tKP3VHKyYU1jrPlGXGEvJFf59hrCtk50zIAdRL7BeeUudJ7jop0MwiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=kpp82dw9; arc=none smtp.client-ip=115.124.28.134
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1782393683; h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
	bh=wK/ZKOardcwv/Aodd8pEJaJbQNMwYl1VUq+9vFFehTc=;
	b=kpp82dw9+Pabxn4cz1Ht905fuKXOgCsoyoxg1hANXuXPtR5PEUmyZsisHMqm2GkcpL2chUg5JBfcvcapCHdi0DCKND8cByvCWuWmUIBfx2kCNzydRy0kcqWXxALdTMuwYBWppiAXw0ztMedn0qWQyWrxYjo9nf468TAVLmEK4mLurAJns98Pxn+lpB6gJa3Uci2cbheVvmSAHBQWblGrJYQmJXroM9fyT9FkqNWgwH8LWpRiZ9AxCqgPhv20Vywm8qObf5C7FrhZNm1lXSHJsRGK6EO9Db7f1SXuJHS/Ikp1iMyVeTkREMKOlr5ly1qBdsQChKSrZZoXpm9nGexpXw==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.09206045|-1;CH=blue;DM=|OVERLOAD|false|;DS=CONTINUE|ham_regular_dialog|0.0384528-0.0220204-0.939527;FP=18248887180456620888|6|1|5|0|-1|-1|-1;HT=maildocker-contentspam033040074035;MF=syyang@lontium.com;NM=1;PH=DS;RN=1;RT=1;SR=0;TI=SMTPD_---.i5gQ.fu_1782393679;
Received: from mail-ot1-f52.google.com(mailfrom:syyang@lontium.com fp:SMTPD_---.i5gQ.fu_1782393679 cluster:ay29)
          by smtp.aliyun-inc.com;
          Thu, 25 Jun 2026 21:21:20 +0800
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7e6cdd78fe6so1151952a34.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 06:21:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ98HRhfU1qnA0LPDq8MroDxYxnP8ADdG77070yZULUtLiLj5uOw8XcU+tBebSF+0YCtxMba1OBc1zCM@vger.kernel.org
X-Gm-Message-State: AOJu0YxBSdvi2cRCFCFiSXi8w5nKlLsPYVNrPU/FBF0I1MADXSoeV82h
	QvEal8Rq1Vr780pcT6zx5LeSI6XXzf3PsRLerrBuUs9Dswp3yGOo0AhzPFHhte8dFlcFqcwNtO5
	txrvBgac6jh8p0VePD5HWIA7S35Mb88I=
X-Received: by 2002:a05:6808:508b:b0:48c:6ab8:b22f with SMTP id
 5614622812f47-49218410421mr2874082b6e.33.1782393678366; Thu, 25 Jun 2026
 06:21:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508142500.4922-1-syyang@lontium.com> <CAFQXuNYq5QYAXRzcUBnyvVh5ofPBVYONCs1dM6qPgK0BDja5Ow@mail.gmail.com>
 <495f0dc3-b5ee-429e-bc60-78b13bcb42c3@kernel.org> <CAFQXuNajWT31q1MccwTDa074_7=6tfaz-FOmP-tx_q83R60QfQ@mail.gmail.com>
 <CAFQXuNbvSQSZayBGcS6L106ic6M9D+xi8CF9=k27fCAn5U8tdg@mail.gmail.com> <206f2e80-132a-4586-bd27-5983783f97ce@kernel.org>
In-Reply-To: <206f2e80-132a-4586-bd27-5983783f97ce@kernel.org>
From: Sunyun Yang <syyang@lontium.com>
Date: Thu, 25 Jun 2026 21:21:06 +0800
X-Gmail-Original-Message-ID: <CAFQXuNZMwwNrUft=w9o_dB96cOchKoh07jnk3Z2CioJoqhYybw@mail.gmail.com>
X-Gm-Features: AVVi8CcRLVVCVFUu6dNTXTPJQjRM91gouORofLQ5rIVxZgeiGY6BSZ5XTAxS8O0
Message-ID: <CAFQXuNZMwwNrUft=w9o_dB96cOchKoh07jnk3Z2CioJoqhYybw@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: bridge: Add Lontium LT9611C(EX/UXD)
 MIPI DSI to HDMI driver
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
	TAGGED_FROM(0.00)[bounces-315682-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lontium.com:dkim,lontium.com:email,lontium.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B9526C6192

Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=E6=
=97=A5=E5=91=A8=E5=9B=9B 20:59=E5=86=99=E9=81=93=EF=BC=9A
>
> On 25/06/2026 04:01, Sunyun Yang wrote:
> > Sunyun Yang <syyang@lontium.com> =E4=BA=8E2026=E5=B9=B46=E6=9C=8825=E6=
=97=A5=E5=91=A8=E5=9B=9B 08:52=E5=86=99=E9=81=93=EF=BC=9A
> >>
> >> Krzysztof Kozlowski <krzk@kernel.org> =E4=BA=8E2026=E5=B9=B46=E6=9C=88=
24=E6=97=A5=E5=91=A8=E4=B8=89 22:05=E5=86=99=E9=81=93=EF=BC=9A
> >>>
> >>> On 11/05/2026 05:28, Sunyun Yang wrote:
> >>>> <syyang@lontium.com> =E4=BA=8E2026=E5=B9=B45=E6=9C=888=E6=97=A5=E5=
=91=A8=E4=BA=94 22:25=E5=86=99=E9=81=93=EF=BC=9A
> >>>>>
> >>>>> From: Sunyun Yang <syyang@lontium.com>
> >>>>>
> >>>>> LT9611C(EX/UXD) is an I2C-controlled chip that Receiver signal/dual=
 port
> >>>>> mipi dsi and output hdmi, differences in hardware features:
> >>>>> - LT9611C: supports 1-port mipi dsi to hdmi 1.4
> >>>>> - LT9611EX: supports 2-port mipi dsi to hdmi 1.4
> >>>>> - LT9611UXD: supports 2-port mipi dsi to hdmi 1.4/2.0
> >>>>>
> >>>>> Signed-off-by: Sunyun Yang <syyang@lontium.com>
> >>>>> ---
> >>>>>  .../bindings/display/bridge/lontium,lt9611.yaml           | 8 ++++=
++--
> >>>>>  1 file changed, 6 insertions(+), 2 deletions(-)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/lonti=
um,lt9611.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,l=
t9611.yaml
> >>>>> index 429a06057ae8..e0821a63d9d7 100644
> >>>>> --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt96=
11.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt96=
11.yaml
> >>>>> @@ -4,19 +4,23 @@
> >>>>>  $id: http://devicetree.org/schemas/display/bridge/lontium,lt9611.y=
aml#
> >>>>>  $schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>>
> >>>>> -title: Lontium LT9611(UXC) 2 Port MIPI to HDMI Bridge
> >>>>> +title: Lontium LT9611(UXC/C/EX/UXD) 2 Port MIPI DSI to HDMI Bridge
> >>>>>
> >>>>>  maintainers:
> >>>>>    - Vinod Koul <vkoul@kernel.org>
> >>>>>
> >>>>>  description: |
> >>>>> -  The LT9611 and LT9611UXC are bridge devices which convert DSI to=
 HDMI
> >>>>> +  The LT9611=E3=80=81LT9611UXC=E3=80=81LT9611C=E3=80=81LT9611EX an=
d LT9611UXD
> >>>>> +  are bridge devices which convert DSI to HDMI
> >>>>>
> >>>>>  properties:
> >>>>>    compatible:
> >>>>>      enum:
> >>>>>        - lontium,lt9611
> >>>>> +      - lontium,lt9611c
> >>>>> +      - lontium,lt9611ex
> >>>>>        - lontium,lt9611uxc
> >>>>> +      - lontium,lt9611uxd
> >>>>>
> >>>>>    reg:
> >>>>>      maxItems: 1
> >>>>> --
> >>>>
> >>>> Gentle ping.
> >>>> Thanks.
> >>>
> >>> Except mess with threading, your patchset does not build, when applie=
d
> >>> on next-20260618.
> >>>
> >>> What is the base of this?
> >>>
> >>
> >> Thanks for testing my patchset on next-20260618.
> >>
> >> The base of this series is v7.0.
> >>
> > Krzysztof,   Is Sashiko AI review required before merging a patch now?
>
> Fixing obvious bugs in your code is required before merging.
>
> But even without bugs, this cannot be merged - does not apply. And you
> sending the same three different times does not help, because now there
> is complete mess in reviews.
>
We will modify the driver and the device tree, and test it on next-20260623=
.
Additionally, we would like to ask you a question regarding Sashiko
AI: Is Sashiko AI review required before merging a patch now?

> Best regards,
> Krzysztof

