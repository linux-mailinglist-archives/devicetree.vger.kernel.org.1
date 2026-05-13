Return-Path: <devicetree+bounces-296787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMDjCmdhBGq6HgIAu9opvQ
	(envelope-from <devicetree+bounces-296787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 13:32:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 885BF532575
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 13:32:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1CF730AE0AC
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 11:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 574B43921F1;
	Wed, 13 May 2026 11:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b="N5nVtWzD"
X-Original-To: devicetree@vger.kernel.org
Received: from out28-134.mail.aliyun.com (out28-134.mail.aliyun.com [115.124.28.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BA23A6B8B
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 11:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.28.134
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778671674; cv=none; b=GEYucjV/0qSaPcXxfWV5eDERabvcEfUgVPnmqQ7sLvDgHaBsUFYsfcZ0EwZUTklNjKu8B0tnqYdsIsnv20XNy1oYZdwBK4KKVgwm6Op94ejs+g37rWxGixy+wRS17BzPsnT+c6AwLXtjXig+aGerRO78VS/2hSadOG138RwpzrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778671674; c=relaxed/simple;
	bh=2GEjtbOwCpnwfl5unavGXJwIGKcEY37Y89VSrNZXIGE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GGs1m3Z8OP1XvKL+A9m0kx8px4RxPMRVvRamNxHN6jqUPR0i183PrBIR3p6OQtAiO3ePR9WE4wxZMiax6UqLfndtn54BPWQ4HRR6OYSEyp9j7IZqQjaOv/GfRoddAOrkL5T/OmKbaru+VfuKQRYstt9p3jFM/ti/ftBOP4I18JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com; spf=pass smtp.mailfrom=lontium.com; dkim=pass (2048-bit key) header.d=lontium.com header.i=@lontium.com header.b=N5nVtWzD; arc=none smtp.client-ip=115.124.28.134
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lontium.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lontium.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lontium.com; s=default;
	t=1778671664; h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
	bh=2GEjtbOwCpnwfl5unavGXJwIGKcEY37Y89VSrNZXIGE=;
	b=N5nVtWzDJl9ydEB0MM/ZPrRxtTvYw+RrHJSPBMk8s/Rt2RJEaQJCNBEsC/LgwPSmf93f18vpOUZvDtPkq0rwwdxhVcN8q1zCQX8rkE13uNmCzin95/urLG74x2iVDK61xvu+Oo5T7m00aPVp2OtjUGUyu0laT6q3L09kSCsmnVoj9b8LtW0PIb2GbwRPoNepvYha/syXo2KvaHsDwH99n8S9HfGqvEn4LZHGyHzBCaUj24C2KkNua1ofATdB3R9OmvXp+iC+qSonTy00uotxuAI7AACUnv1/xWmshaOVUnXNZ7kgTf075RBBmDfFjaUcgOeqpXsA/AFEATy5wgx1zA==
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.1161461|-1;CH=blue;DM=|OVERLOAD|false|;DS=CONTINUE|ham_regular_dialog|0.0291599-0.00153537-0.969305;FP=9029467269343933129|4|1|4|0|-1|-1|-1;HT=maildocker-contentspam033037021217;MF=syyang@lontium.com;NM=1;PH=DS;RN=1;RT=1;SR=0;TI=SMTPD_---.hWAgeIC_1778671344;
Received: from mail-oo1-f53.google.com(mailfrom:syyang@lontium.com fp:SMTPD_---.hWAgeIC_1778671344 cluster:ay29)
          by smtp.aliyun-inc.com;
          Wed, 13 May 2026 19:22:25 +0800
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-69489b43d66so1879889eaf.2
        for <devicetree@vger.kernel.org>; Wed, 13 May 2026 04:22:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ94trkthTiiqEoy7xloWmIyI0P27z1N2tbKg1mioV4lMT2rklKonawLOSiE4rWDmZn1zzwiaY9NKEXS@vger.kernel.org
X-Gm-Message-State: AOJu0YwbU8xnykKjD43erkQ/SjD5lY+3A5Fy3JDgfEy7350KDeAQ5KTd
	xtr63uHXOqsXg+mqqwNss0C9yG+kEz/a3SJlkfYXje3BkJGEbIqXSco05Tx3EeOrKjI2bOuxUPV
	OkPBc//2eos/p7Idc4HD49Xk+0/LwL7g=
X-Received: by 2002:a05:6820:c85:b0:69b:5fcb:1d7f with SMTP id
 006d021491bc7-69b78d0200cmr1590836eaf.12.1778671343548; Wed, 13 May 2026
 04:22:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260508142500.4922-1-syyang@lontium.com> <CAFQXuNYq5QYAXRzcUBnyvVh5ofPBVYONCs1dM6qPgK0BDja5Ow@mail.gmail.com>
 <vly3gbft3k76mrcztcn6vxuqadz647hsaz2q7qpmpofowofodb@nnxrr2cdueru>
 <CAFQXuNZKoahwq0zoWg860Z-amTKEefBFuen2fDG1htKjzE7ymw@mail.gmail.com> <0636aa3c-5240-44a7-a551-4740956ba5cd@oss.qualcomm.com>
In-Reply-To: <0636aa3c-5240-44a7-a551-4740956ba5cd@oss.qualcomm.com>
From: Sunyun Yang <syyang@lontium.com>
Date: Wed, 13 May 2026 19:22:11 +0800
X-Gmail-Original-Message-ID: <CAFQXuNb8w-+xEYeDSxaqK-2hxdu5ADo_Vtvy4iVBzSgNzRmSuw@mail.gmail.com>
X-Gm-Features: AVHnY4KI3alC15mWANB2wEv_Zcci0uD8DwE8pUCjDOC6tt2QhYXUaTBcMAGJGWg
Message-ID: <CAFQXuNb8w-+xEYeDSxaqK-2hxdu5ADo_Vtvy4iVBzSgNzRmSuw@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: bridge: Add Lontium LT9611C(EX/UXD)
 MIPI DSI to HDMI driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	maarten.lankhorst@linux.intel.com, rfoss@kernel.org, mripard@kernel.org, 
	Laurent.pinchart@ideasonboard.com, tzimmermann@suse.de, jonas@kwiboo.se, 
	jernej.skrabec@gmail.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	xmzhu@lontium.corp-partner.google.com, xmzhu@lontium.com, rlyu@lontium.com, 
	xbpeng@lontium.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 885BF532575
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[lontium.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296787-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[lontium.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,linux.intel.com,ideasonboard.com,suse.de,kwiboo.se,gmail.com,vger.kernel.org,lists.freedesktop.org,lontium.corp-partner.google.com,lontium.com];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syyang@lontium.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lontium.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lontium.com:email,lontium.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Action: no action

Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> =E4=BA=8E2026=E5=B9=B4=
5=E6=9C=8813=E6=97=A5=E5=91=A8=E4=B8=89 19:10=E5=86=99=E9=81=93=EF=BC=9A
>
> On 13/05/2026 14:07, Sunyun Yang wrote:
> > Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> =E4=BA=8E2026=E5=
=B9=B45=E6=9C=8813=E6=97=A5=E5=91=A8=E4=B8=89 18:24=E5=86=99=E9=81=93=EF=BC=
=9A
> >>
> >> On Mon, May 11, 2026 at 11:28:06AM +0800, Sunyun Yang wrote:
> >>> <syyang@lontium.com> =E4=BA=8E2026=E5=B9=B45=E6=9C=888=E6=97=A5=E5=91=
=A8=E4=BA=94 22:25=E5=86=99=E9=81=93=EF=BC=9A
> >>>>
> >>>> From: Sunyun Yang <syyang@lontium.com>
> >>>
> >>> Gentle ping.
> >>> Thanks.
> >>
> >> You've posted the bindings on May 8th. Please give maintainers some ti=
me
> >> to react. Not to mention that you posting the bindings 4 times in a ro=
w
> >> (once together with the driver and other 3 times separately) doesn't
> >> help maintainers.
> >>
> > Sorry, when I submitted the patch on May 8th, I received bounce
> > notifications from devicetree@vger.kernel.org and conor+dt@kernel.org,
> > which is why I sent the patch again.
>
> And some patch trackers will now have incomplete series, others will
> have duplicate entries, etc.
>
> In future please use `b4 --resend` to resend the whole series at once.
>

Isn't it recommended not to use 'git send-email' ?

> >
> >> See https://lore.kernel.org/dri-devel/?q=3Dbindings+Lt9611c+v6
> >>
> >>>
> >>>> 2.34.1
> >>>>
> >>
> >> --
> >> With best wishes
> >> Dmitry
>
>
> --
> With best wishes
> Dmitry

