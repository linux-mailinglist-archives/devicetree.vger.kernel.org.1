Return-Path: <devicetree+bounces-263533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id W46HM36fhmmkPQQAu9opvQ
	(envelope-from <devicetree+bounces-263533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 03:12:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A0010496C
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 03:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10EBD3025D00
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 02:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CC883112A5;
	Sat,  7 Feb 2026 02:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="UK1Tfjts"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205542FB612
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 02:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770430325; cv=pass; b=WL2W5ldVkgwzK0A6AjPd1P3Tz7NwMYBSr6cMThOEb/jh2rdyZJWSj01K8IjFKrFHWhqexdnBlpzkMlAmLZTrgxU6w8u7YxekWbyq/URuTeISTiApOiZ+keF58Dshe56d+LYaeIg6c4U/fix1sbZynuNtZadhnOj0vhL+Dl6QVeA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770430325; c=relaxed/simple;
	bh=H8ygkU9hCJhnugRPEnG3lPWgCrbq+0GO3cjHhz/6Ncs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iZKBLsfV/9lzFz/59J4vIxqQhfeFzJ/RDCbKUXBASGhTFK5IQXJIrNqm53WinyYxyeuSkGtCDpUkF5/D4r2WiRRDfhy57v6FgGi53yYazE5X49eb8By4gFwqRJCWsyBsIP9R69Vy4QG1LrDw51uyIQgWzWd8vMFkC9d4dBRVZ28=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=UK1Tfjts; arc=pass smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b884cb1e717so85864666b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 18:12:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770430323; cv=none;
        d=google.com; s=arc-20240605;
        b=i1Gq2Fg2nhVbh9ynRy1XMNbrI4YX24dqf9P0eJ1aWBhWwIWP2DrY+t8U4uMTG/1R4D
         e75fVc9ycSDv4nXNVPq7NQI+mG4wib7eAXdPxBv/t1hKBdl8LGR/ZdTt4pnqBZoiUszV
         GeG68wbiy+raR7QnGtuLdTev3ptGNhHhqhpBuy541Z4vL8YdCO2sgJYcaFBDi0WUcljS
         dl34xpFEwXdHfKhfxSZx4Lrs3qDAIgc6md+HJs6b18h4K9G1B+/Jt62Xi0phITfwznGo
         CzT0hfPLmQ0h9cky4he6YpIA48hTOuaHpjleyzqq+MfASDzp7nxN2hdsHBiGi5nlpVMx
         ixSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xVXJfBkOf++utzjym33J9FgN5u0L0gqySOwPjSjRi3c=;
        fh=4J8MPDon+Nmf5uTqj7ddsO2YEypKZIk79A14pvbF9YE=;
        b=X+2BmxO6Ldo11xQ76r77T3EMBrtfKwnkaOIqfaYObgwoJ7ysyWwGVayFXuVrVYyLU3
         35UlRtizXvejW56T7a1hqh+7bG/t4pfZoHRpf7KBs+tdhDwZj9s+3NNx/TYU1MNhuQM3
         WxmPqQSTWASY+8MJi3ZUI2GE5yXkJy7jwCOwtXl0nEX1evDwVYIPTE8B3BAonfikUmsx
         wsv1LdiEJVMVj+F0zIrzt6NTMHbN1xqpBqrRuZheBFaaQ//GhBbMqLtVW0VKmQpxSnNF
         HF5G1PPHcZhEkrf0Gbmf2E6FZ6pGDSTtVeAOyOePai5CDEwf2znMON6StBxOCiNJ79EL
         /Hkw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1770430323; x=1771035123; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xVXJfBkOf++utzjym33J9FgN5u0L0gqySOwPjSjRi3c=;
        b=UK1TfjtskPBvBftD8YltalZRhW5+CL61JXQpe+siFZNRnOb8IJI9VeA4W7tCT8aILo
         xxmxWGLltOYSYDDzCgQsd6K5+i8tA/hs61GeY/gAcoq1s0p2obnTsmYfqOxil6YaCIep
         exhwyQgIXqrNs7ABqwVA7X2oY1vq9BUbTzK3JyRHpK8tjIJ7v0lTspBl5XODh9txlTZr
         83byfTHuAPjR0CukRdRoq5NWP4NS53oDfi58vAxKAn9zSQ+dg3P4iJ7ZUEY5egYJ77mZ
         /ib0GOQkvxB/Am+FgBL2vnWUTrnS0022ztCtKeIE/GlDceotZSuZu71J6LvSUBcGFw/s
         bBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770430323; x=1771035123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xVXJfBkOf++utzjym33J9FgN5u0L0gqySOwPjSjRi3c=;
        b=VjwWgN1ptYaMOi7pivQWfRiV7WFMQe5G5VIbjGw1kufQ2QtQ470YTq/jbK/jLn7C/z
         Uac0sbXqx8MggVYK5TR8I2Pq3I5ZO7vEtwsYColIxGfb7G90SPHWSvjDvwqswJc8rxvc
         SivWIvwbU4nW3uW94dupq9NxPemc0azd7tFKd0Bilt42doAVZ0pzYKSTKa0wpaVaVwwL
         ARUKOXVCuqOS6ZqalmhWM9P0WIun0LbxD3YB6nOhOukdw+yTPPLcIGckw7Kk2N2M5D5G
         SimvqiNeEPhDGmL/Y3JHfR26FApmJFa2yUWu5tQjCDF7hU5LGWOAL2wJFOenzB2xYEsv
         dZ1w==
X-Forwarded-Encrypted: i=1; AJvYcCXMcIAKSbO0CXr/lpRtzSBwtdgOt7eNQ4rIESEaZaE7RXZ/1nzc5DUuJkj2hrTNFi4tUSqfv3Ql14ri@vger.kernel.org
X-Gm-Message-State: AOJu0YzMT7itz82iOJg/WfF0+29hUdoCe6uqeS7Vh/Momin45Tdgfnet
	8K21v8GQBGOjNHxTq9dT5ScUsDrmR1m4q6tTrjDtdULxV3bxm+IU/0eB2ayCpa8EtnXWCBZsKGn
	BVTcIeSgHobkfxnNw5T4K/TBWYvO8DMiPt5rmhLPmwg==
X-Gm-Gg: AZuq6aLsBCCrfHWvMc2L3H1vADWgJfogEwHepHCPadfzqEQO5Qy2G8b4tK4TD3HDUHh
	zSF7oWrJ/s8oCrncBPZjKBNRXaSDO3SwXd+qraFRcH5D7bXg2fe488jAO9FgSgJbiEoPizeCxx9
	W/1omscVOL8/T9zaN027APtVhnwYIDW3HcMK3izfgLRl+ylx9l2zdadRbda29oWDm5iL6Vcw7J9
	lERdOeJ/9vhp9oe+B1aqh5j/SWyWfkSouacLLj50a2yoLNqBARki0aLx2Fi23kW1s/BQ5IAfQDi
	z/uLDNG1
X-Received: by 2002:a17:906:d54e:b0:b87:2abc:4a2a with SMTP id
 a640c23a62f3a-b8edb7e7fefmr270858966b.1.1770430323440; Fri, 06 Feb 2026
 18:12:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1769562575.git.lv.zheng@spacemit.com> <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <9C0A2AD4850D179B+524146e74e808db90d5f28fcb6ee791cf1d1bfaa.1770195980.git.lv.zheng@linux.spacemit.com>
 <p74snip7yykhogvzqld4gyjlygmd2z4kqnat7w3qj63fwebnmm@dlz6tloevgbs>
 <4D87481E9AABE2C6+72d18f72-9407-4d68-8195-edc6c171df14@linux.spacemit.com>
 <CANXhq0q8N5eHx9ytabZR97Y7AULKwgS2-uEGhcaOOGp9mvbtRQ@mail.gmail.com>
 <6C65A3873186B07C+29da5dbd-ed27-4ace-a5ca-355b3983d60c@linux.spacemit.com>
 <zzbwkazzgeovgmbvg4qnibipzsldqcjnw4axnxlamhgvcld4hs@4m4cc2ctuuvf>
 <752514AD54FA2A1B+513d6894-b3bf-44f3-bcc1-7d30f2642cc2@linux.spacemit.com> <xukccsqgwmagqq5egx7i4op6nfot3t3lusnaso4pfzcq5h6bfz@adsm5nusnocx>
In-Reply-To: <xukccsqgwmagqq5egx7i4op6nfot3t3lusnaso4pfzcq5h6bfz@adsm5nusnocx>
From: Zong Li <zong.li@sifive.com>
Date: Sat, 7 Feb 2026 10:11:53 +0800
X-Gm-Features: AZwV_Qjm6m6hA8715ry8OfD2Mr5pGoAnS-0dMwS1leYT9MosL-HIb3AQrdVJAok
Message-ID: <CANXhq0rFuvfcYRew3ZDWfNOrrAYo01OqPzJ5rbRZN6eS1t72jA@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] iommu/riscv: Add HPM support for performance monitoring
To: Andrew Jones <andrew.jones@oss.qualcomm.com>
Cc: Lv Zheng <lv.zheng@linux.spacemit.com>, Tomasz Jeznach <tjeznach@rivosinc.com>, 
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>, iommu@lists.linux.dev, 
	linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
	Yaxing Guo <guoyaxing@bosc.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263533-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zong.li@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-0.978];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C0A0010496C
X-Rspamd-Action: no action

On Fri, Feb 6, 2026 at 11:09=E2=80=AFPM Andrew Jones
<andrew.jones@oss.qualcomm.com> wrote:
>
> On Fri, Feb 06, 2026 at 11:42:39AM +0800, Lv Zheng wrote:
> > On 2/5/2026 11:23 PM, Andrew Jones wrote:
> ...
> > > Since Zong Li's patches were already on the list then your serieswoul=
d> at
> > least discuss them in the cover letter, explaining why you've opted
> > > not to adopt them. But, most likely some of the patches can be adopte=
d,
> > > so those should be extracted from Zong Li's work (with authorship
> > > preserved) and based upon in order to respect that prior work.
> > >
> >
> > You can see we have contacted each other in community, and decided to
> > cooperate in this way to honor his contribution. But final decision is
> > left for the community to decide:
> >
> > From Zong Li:
> > >> Of course, if the community would prefer to go your version, I=E2=80=
=99m
> > >> perfectly fine with that as well.
> >
> > We respect all contributions, We'll add the link in cover letter to the
> > follow-up revisions, let me know if anything else should be done to the
> > new revisions.
>
> Just do all the communication before posting, allowing that communication
> to be summarized in the cover letter and in any appropriate commit
> messages so reviewers know what's going on. Also don't forget to CC
> anybody previously involved to ensure they have a chance to chime in.
>
> >
> > --------------------------------------------------------------------
> >
> > And let me describe in details to compare the functionalities and
> > addressed comments between what is provided by Joey and by Zong:
> >
> > https://lore.kernel.org/all/20250115030306.29735-1-zong.li@sifive.com/
> >
> > There is no missing functionalities between the two approaches, I also
> > checked the original Robin's comments, let me describe them in details:
>
> My concern wasn't whether or not Robin's comments were addressed in this
> posting (that's important, but not what I'm talking about). My concern
> was that Zong Li's work wasn't addressed in any way, so appeared to be
> a chance for duplicated efforts. Indeed his reply [1] indicates exactly
> that and even that there is a third patch series being worked
> independently. Please work out who and what patches are going to be
> the focus going forward and describe that decision in the cover letter
> for the next revision. And please don't forget to CC Zong Li and Yaxing
> Guo.
>
> [1] https://lore.kernel.org/all/CANXhq0oi9nE7ffLGsz5j8GnC1UDTD-4bE4cantRj=
W2fXHYrjHA@mail.gmail.com/
>

First of all, I apologize for the delay of the PMU series and any
inconvenience it may have caused. I also really appreciate Andrew for
pointing out the upstream culture and consensus.

My next version (v3 series) is expected to be sent out in the next
couple of days. It will pick up all the suggestions and feedback from
the previous versions. Apart from that, the main structural change is
that the PMU driver has been moved under drivers/perf/, which is
something that has been mentioned repeatedly by several people.

To allow everyone to review the major changes in the next version as
soon as possible, the custom event support will be split into a
separate series. Its overall idea will be similar to a typical
platform driver, where vendor-specific PMU events are defined through
driver data. More details will be described in the v3 cover letter.

Additionally, since I did not follow up the patches from Lv Zheng,
Jingyu Li, or Yaxing, it is very possible that my v3 series may miss
some important features or fixes from their work. If that is the case,
I apologize,  I was not aware that those patches had been posted to
the mailing list, which is also why I did not respond to their v1
patch series in a timely manner. Therefore, I would really appreciate
it if everyone could help review the v3 series and point out any
additional fixes or feature support that I may have missed.

I also really appreciate everyone for always helping to bring us
together and keep the discussions aligned.
Thanks

> Thanks,
> drew

