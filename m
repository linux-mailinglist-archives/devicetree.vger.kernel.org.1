Return-Path: <devicetree+bounces-264894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKUAKCJCjWkK0gAAu9opvQ
	(envelope-from <devicetree+bounces-264894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:59:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F090F12996A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52CCE302F249
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C43224AE8;
	Thu, 12 Feb 2026 02:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="APYMAsQo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889D82222C0
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770865181; cv=pass; b=e9EcthxYtkGuhojiCGu6aIPsoT+FvR0U7h2f+LDQIZAf8WEhFHjlPzssgRhyAbmrd05TPnqfCeFo8NWCj35jMDjgyUqHnJoHgXVjMPSxaOCzCy6Z2LsxX9sVGTGvpSJtHFfTfG3RHNZv0dmp/wMnGabhxRcRmtVDPYG2SiIO4Kg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770865181; c=relaxed/simple;
	bh=x9a2hZ52SmberyGno3xnZYEkBEKYMXD7eSMO2SI9Yig=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fwA6NOzB+V2OCE5mXKyRLQCq9nGhpL6Y5NtjXY3gwaKMuHmifOBbKB6vOsKTjGztFRW29iBEvtNqlLcHHVeQwsD+pR8BNVtIy0uzp+y3PigE0SceYV2fnXS8sCLvWbNlToQQA9QlSnwtWm9FQy2EpkrEOGmRGOIi6iITcLWrU/E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=APYMAsQo; arc=pass smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a9296b3926so16097045ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 18:59:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770865180; cv=none;
        d=google.com; s=arc-20240605;
        b=e3Oqo5TbzpeLB4sB2W09BREtNjsfzVAU/P1+OzoTTaC+08wwTTApY1IjS16X+HCwdJ
         KeSZw/a84XL0O0eLi/63KfBK2rRQjftQRZOYyx+gE0qDBekqEq66IyzWvToGcAgyE83l
         t3RgLcIPJ+euTX1B3Rky4ElQOPJL1SNLUHN9Yhz2HeGs0kfqeTVsPjc+KqWp9j8KNY3o
         aUdC6U3YJJej2rgXgdbKOvzRJSNhNxQFmRCZ2cnFI+zgjWwRKzwADfTZ41SgLcx8es/J
         dQAspsU/ioEz/VRu/ENpKKRTu/ViL57BzxIE+/r/nc7Np8tDilUolkHy5oYNpDfeSTiS
         4l7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tviEcHcVwOtLn+XYr3KdxbUUmkmcPdARSTxnGt4x3FY=;
        fh=qAUpDTgU+7kNTB2VBu6LDlRlCcMiadKUGfKzq1+WFr0=;
        b=OMRfpOxq2PvadIIC5XDTcN0O1sCRkQ4bJqcJ69cKV4onu0GH3eq6h7VbhmGJKfB1nA
         D2ZQCGrJNZTQWBGxwS2a+vqbjVKceAgp4bSO2XybBhb9DX5Aafn2qgT8Pzcr6BH1eec2
         ypl6tjFxou2l9z6gP1lA05jGDeIWv69wqwZ4crs8FfAKl8lm2T2um3pyaiBuLg7/NBZw
         NbLCI5ccveOSX9i4m1e9/4GVcGixBR0XV1wR3rDn6xVpffxiMRyxBRk4sD6kEyILeV4m
         wG7Jl7TUsUdJbgf2F8gkvwQIZC5lUOD3xG3cssw0yDizqOTwLXTQuVcyDIU0ySm6/IMw
         BAag==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770865180; x=1771469980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tviEcHcVwOtLn+XYr3KdxbUUmkmcPdARSTxnGt4x3FY=;
        b=APYMAsQoRaTEG+h2BRbRWFWYg5Z8XfTKafM/a2bDv+iwxL7G5RM7ZIwxR/CTMJaShu
         BmJ5LsBtXNCJUEd/ZDRlPAysQwXOo2/uxoezVpkG3aq2S0CkvUsHZKCJpSvxWUxY2XJ+
         yVr3xAu2G5LgyRmcJ0+2LyF5VTGu3B4eGkt3VYgnqKto6ZPt3HGz+teAGN9B8VRCaYgS
         3Zvy/h/2LuIFqpyGwPA1U50FRToe6NUuZLX9XiKbf19G0TFXfszMHUHahABNjZjsPZ5+
         zQpK485bXoMTmDMZLSxHCREKu4evlwJ/1nJFM57uyWbWErILVE2kmsHLptJrwLWOYgZB
         c89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770865180; x=1771469980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tviEcHcVwOtLn+XYr3KdxbUUmkmcPdARSTxnGt4x3FY=;
        b=oTD5FcXuuErWtC6M2E3afBIPjFB2ljiJSEmKCitxFq1Z95tkZJhOyQwaps9V+X2+O1
         Nz5C720LHxWvYuwFC3J/wkov6fVWj8ayKEQe2fj6/ARbHrvsxnzpUEVHb/b7l0IvpBx4
         r5EzC8f3fqIzy7X89Ycp6UbgJd/j9KftDDYf/8qv9RzT+ESRUD2sfpioKNkculEJcfaP
         mx2x9ECtJA8LaGfEnO+xpjzVYnNlpqzKtkc900Oa2ZbYKVJP30rpGMu1/srZZGWEpCpi
         rDHikcyFNX8eUb7TtXh/8ejCMYYBdBLRSOGsntGnnvfFSRdvIq8kdBmOTqy+4FGVJlq7
         PuTA==
X-Forwarded-Encrypted: i=1; AJvYcCUCF3z/PDJNz30r4W1ZDQMgnwo+U8YDzIsVcFcW0ECkH8OMlG05hKK1RoQSHPnn0/1DYoylk39/R84T@vger.kernel.org
X-Gm-Message-State: AOJu0YwkhnchTR+LkDFv3bEMBKbDBsHE5qpfc4hlD65UUZ6XKOHIMJVN
	iKdGIa+/Qcpa7ge7ryNapxKp2xbqRSgGChUK3j3HAdpNW5uAKtfkv7RkirYD4UT/tcoFOxMblJg
	Vl12udqLe+WxBUPkh1xMR6Z7ISW2m1jE=
X-Gm-Gg: AZuq6aKEUXE7ANGPnO/p3meaCbb8gQg+LRJ+7KGKpkWGpagDtTY5kvXjTFT9c3sQZ3f
	yBhNrPEt8GQlPFOyhRaX10SYq+LLBuqx3H6DoQT3RSAnvE6ICp908pC0p3K04HqPoHNQADixhdg
	mYoN7IT1hxpGqatYOFCpvSRyb709LCwfFUwmMWD1OrVLi26BuxrXoJHi+dZjznP5grfkbN/HdZ5
	mGhuBRBdIcOqAq3+fTJ/LSUzYgTkdweGdTTEof7ViRktSNoZnEI+z7HaIM4dVP4IA9brhtRh5wL
	rWbLVSM=
X-Received: by 2002:a17:903:178e:b0:2aa:f7a2:25a5 with SMTP id
 d9443c01a7336-2ab3b2b39ccmr9288495ad.60.1770865179884; Wed, 11 Feb 2026
 18:59:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
 <20260211093527.2892297-2-shengjiu.wang@nxp.com> <20260211215346.GA3958740-robh@kernel.org>
 <CAA+D8AOTgp9Oi3puOdZv4oYTHGBVHtgbBRV-U10hzMJMpQbBJQ@mail.gmail.com> <CAL_Jsq+8j7bc4_GPdx+-8_HMTT=WyO8aiF+uwV-CgLMrCtsP3A@mail.gmail.com>
In-Reply-To: <CAL_Jsq+8j7bc4_GPdx+-8_HMTT=WyO8aiF+uwV-CgLMrCtsP3A@mail.gmail.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 12 Feb 2026 10:59:25 +0800
X-Gm-Features: AZwV_QilGiOPADPc2TJFKuim16af3Oz7rjsy26r-4g6qjq00vNVltbWgFl_0ovI
Message-ID: <CAA+D8APsagF=Mxavnp8Aso5C1voUKA954b==ViQ17SnBfJbYAw@mail.gmail.com>
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: asahi-kasei,ak4458: set unevaluatedProperties:false
To: Rob Herring <robh@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, perex@perex.cz, 
	tiwai@suse.com, ckeepax@opensource.cirrus.com, 
	andriy.shevchenko@linux.intel.com, nichen@iscas.ac.cn, 
	kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264894-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F090F12996A
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 10:38=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Wed, Feb 11, 2026 at 7:44=E2=80=AFPM Shengjiu Wang <shengjiu.wang@gmai=
l.com> wrote:
> >
> > On Thu, Feb 12, 2026 at 5:53=E2=80=AFAM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Wed, Feb 11, 2026 at 05:35:25PM +0800, Shengjiu Wang wrote:
> > > > When including the dai-common.yaml, should use unevaluatedPropertie=
s:false
> > > > according to writing-bindings.rst.
> > >
> > > Generally true, but not always. Do you have an actual problem? The on=
ly
> > > possible problem is you want to use "sound-name-prefix" property.
> > > Otherwise, you don't need this.
> >
> > Yes, I want to use "sound-name-prefix" and "#sound-dai-cells".
>
> Then please say that in the commit message. It's not really a fix
> unless "sound-name-prefix" was already used.

Yes,  v2 has been sent.
Thanks.

Best regards
Shengjiu Wang
>
> Rob

