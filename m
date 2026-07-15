Return-Path: <devicetree+bounces-326958-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mxF3Dm59V2rGSQAAu9opvQ
	(envelope-from <devicetree+bounces-326958-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:30:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA9E75E257
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:30:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Nmd5qbkr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326958-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326958-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFACE304BE67
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89E9F466B74;
	Wed, 15 Jul 2026 12:25:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F011D45BD7F
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:25:24 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118326; cv=pass; b=axiWy1Gbz+rGAO8b7Ye1DUROaHDJCty5y8n1bjckKzRMo0jcv+xLv8HqQqruc35ERH6i8ox34lgyGVMyZ1lWqUz/sfFnXL2zChyRS7jaTicRS57/YWwKzIrDzgIbIXNTwPCUN9/6It0p0H5d5vJhsZnX/QQ6qsLDC+riLA6RArE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118326; c=relaxed/simple;
	bh=s1XP3CBX1vjLoCZEqWTUBRju6xstvuxvI2ntg39GLR8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IwQINXy1bTzgIUluye1nxFNN+C1z7CIGED5lrk4rYy5MUcTYn/9QvfRVUiMkA6PUTA8WANKaMOUD5XJYMg45yKpdnfcPJED9VbFmCyZ8/+/DYSPRwIlRRtTtvWWm6hMrDJucUGvKGWHixG/aUNCxgHujvBvxgJhJRQf2Rc5hBXw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nmd5qbkr; arc=pass smtp.client-ip=209.85.208.181
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-39c7ac9b8c3so18938401fa.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 05:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784118323; cv=none;
        d=google.com; s=arc-20260327;
        b=KiDQaWotpe+LCsyDxQ3qPdvzZnAIRfYylRmdsR5U9r2lmhrRDKmCXk0cRUcMeZZKqN
         sQ4EVq+jQXPCPrYT29dGoPQ8UwT5zAaFidfLE6U4ZG6nUWvF5mRCPGAok9TVxTVUrSHF
         gwY5anjIztA6KHXMVZPAhVG6B7krrprfVoCOfrVvuHfpAmLgJkRXDIdU2Ve7UHkIPxn0
         9k3gFTPfGhcyEmjtYRNU0OEgKESZCf752TFrBP6zjsky0R8lbNfU1uMP0LOMp262trUa
         /6IXbVFe4s6r4f5HOaPBPCjT/4lLv8048oAZIw7G2pkcE/i3GYQ+f+/4wd/4awqEIzbt
         HM0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=phmAAV/S+5KnjhMYpBu8jVRdoI1pgmVSU2EZUZpX/q0=;
        fh=FU40mgA1+MqhDisWA9hAo67T+WO8ir88xsxxqbR2yak=;
        b=Ae0vJGH/DZZFimNiVoEya0nYlQbAK7KdYiArwMhikQnWdDtjJqa3bc9fpCOhzOZ+yu
         51Cvyia0Ee5zGK+Z9l60u4VuXevazIbvOjT5NnUisHmELw5LJg9wwnFfF0NB4uM9ZUS/
         W9gD1D3KrzzBcXy+YKv31cw94CwHc+I24OfIt+/iRNrbaZjgeItQ683hsL9nLGnjoinH
         OUtF+PaJPXzW4mjQwJD8wTnCgzS0Ce8IRssthObkhMb17uycxwmiWZCeCQUtI/dlr7Or
         4UCbBhNLbDYACbyAE5Td0rSv19M+fSeiz+Zu3n+SYejEgOS2+Buo/BzMpe208O7j15aQ
         9cww==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784118323; x=1784723123; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=phmAAV/S+5KnjhMYpBu8jVRdoI1pgmVSU2EZUZpX/q0=;
        b=Nmd5qbkrQU1E/3wSaxS0GjfkyNQPU/XKhIN0gqXHgslyspryt/Ry8Qeh3y3DUvwToD
         xtL88Z5iqc29xv5Lf5VQmdGs/hwfJ7GMSjZa3ww0Jp8xdG7wZB3M/Wovsuz8BxAfY3P+
         XRWbePAgM+9J6wXomvVr2AUmTvsFA/5ZmJkzw9MYkC0sD8Ye3Oc4MI2WWOHFJEe6r0tH
         kqWH+i1gyku9/bsUMfgktvZ3PbwNJ01N9n36vcsi3l6266boZ2T2Xxpj/vptRSRy/8Bm
         DcleDt6cRa4WBSWevcJXlf+JVDmZjremtqQZP/qzkcYSrKLrlYW5mRbbItDD6Hn4Kdtx
         q8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784118323; x=1784723123;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=phmAAV/S+5KnjhMYpBu8jVRdoI1pgmVSU2EZUZpX/q0=;
        b=RGwSZcNdbNt8lkbs4RiZfrvo4MLF+ua9tOZONfcIN+QOe7Bhobcgfu0m1h2OqWYAC7
         CRcngkLh9aqxTCSUfNLJxTSUmQNfvAHcy/2RxkQUDQK8zOJ7AslgQ3+IVxxzCbkD4ZuD
         RBHG8ATvfCzspVk77ZW/W/TS9DxV8rifShs8seGU3xNYXkWgDkzykbQEODn9PECdTerc
         pRS1tk8T4kE6a4w1hZcx3zFYWgPDVKRtoUlS2LxZlKVJy18PWLZ34NjEkxgV/WMbgG1N
         IWWiwvY0H0v3vF9SCZvyWtqKqiOhk4DtHbv0P5blY2q9g1c8PlGLj8BnD8NK0KLOUWiQ
         E1uQ==
X-Forwarded-Encrypted: i=1; AHgh+RqfYmo+AwQbkLvW2hxSgCEYte8yY4+T8p9zuxdws0fq5cOHWVvlqCC4qIbZpV5mLc/Ud6xrAVDCMPIx@vger.kernel.org
X-Gm-Message-State: AOJu0YzsbTF7PTaTV16NWYN9yB+bxyju1a82Sl5+LEEBL/d5PPVUGGPn
	eFt5SSNiEAzrZIeXUrXQXKe18eXqiedC1SPTYu5dxjx5K0+YXJB+k21O14HUEMac+SeHCF7Ffki
	8aKZIDSmm2wFXym38VakcFZlWBk13eUw=
X-Gm-Gg: AfdE7ckTMJgmz2SuQSSVUixiu8/zzja+c+e1m9veZ1JhSFYSX+HXYkVmg7m3MMWU5rg
	Vz3ln1dga5NP0unV6Z/jbWHfYgwKEwe6xsS6PI7cN+gtKILNhZJm+iGnbz83V+3cdWiIC2QWb/W
	i6yNz4/aXvhD2YlPlnXqQqgOCy6E9bVstUvEf6mMNIo6kJwaXEsSmAH8jeoMeGNPzWARYeVzQDs
	n3edbMyBr/VZoAOnmSs30v4HbGwokGvc9gMvOaXlnxTm9oX6y3Dv5vYfFMJZ+6J8DKbe/BJHSN7
	vUlW14rTJn3CLTO0KNLb1MgjZB/rSqHp82edEkNVmRePb6rew0SAiw==
X-Received: by 2002:a2e:a994:0:b0:394:3b62:b6aa with SMTP id
 38308e7fff4ca-39caa14ea59mr36819751fa.12.1784118322672; Wed, 15 Jul 2026
 05:25:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
 <178370682987.2572738.13491033810212556744.b4-ty@kernel.org> <jhl7fic36ec36pyaduw6xtmgvr75sxurngdykljbovdbt2j23g@ezon25dsv3hg>
In-Reply-To: <jhl7fic36ec36pyaduw6xtmgvr75sxurngdykljbovdbt2j23g@ezon25dsv3hg>
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Date: Wed, 15 Jul 2026 07:25:11 -0500
X-Gm-Features: AUfX_mxYH4-79PzEKbul0S_jMoxLx16udW5ZOUTVeJXUFPAxj9_qNMvYlkM_evo
Message-ID: <CADi83T4bioudCtHk03hLkOf7PG2up0gwoDTWGaseGh2m3R7ecA@mail.gmail.com>
Subject: Re: (subset) [PATCH v2 0/9] remoteproc: qcom_q6v5_wcss: add native
 ipq9574 support
To: =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, krzk+dt@kernel.org, 
	mturquette@baylibre.com, linux-remoteproc@vger.kernel.org, 
	mathieu.poirier@linaro.org, robh@kernel.org, conor+dt@kernel.org, 
	konradybcio@kernel.org, sboyd@kernel.org, p.zabel@pengutronix.de, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:marek.behun@nic.cz,m:andersson@kernel.org,m:varadarajan.narayanan@oss.qualcomm.com,m:krzk+dt@kernel.org,m:mturquette@baylibre.com,m:linux-remoteproc@vger.kernel.org,m:mathieu.poirier@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:konradybcio@kernel.org,m:sboyd@kernel.org,m:p.zabel@pengutronix.de,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-326958-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[mrnukeme@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mrnukeme@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,nic.cz:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lkml.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8EA9E75E257
X-Rspamd-Action: no action

Hi Marek,

On Wed, Jul 15, 2026 at 2:58=E2=80=AFAM Marek Beh=C3=BAn <marek.behun@nic.c=
z> wrote:
>
> Bjorn, Alexandru,
>
> there is another, much newer series by Varadarajan adding ipq9574 to
> wcss PIL driver,
>
>   https://lore.kernel.org/linux-remoteproc/20260713-rproc-v13-0-41011cbcd=
a3e@oss.qualcomm.com/
>
> I suspect these two series are incompatible.

The compatibility of the two series was discussed [1] with the Qualcomm fol=
k,
with agreement that "it is good to have [native IPQ9574]". I don't see an
incompatibility with how Bjorn applied this subset.

[1] https://lkml.org/lkml/2026/1/14/300

Alex

