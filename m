Return-Path: <devicetree+bounces-262633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOtrK2U+g2kPkQMAu9opvQ
	(envelope-from <devicetree+bounces-262633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:41:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 273D7E5EDE
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:41:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BE8D300F17F
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 12:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9B673F077F;
	Wed,  4 Feb 2026 12:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XgxOCnFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943643F0775
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 12:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770208856; cv=pass; b=dAArl0KGyrII7ReoWiALe3ZwwtEy+5lZu2TBA3fN3Px2BBzEkN0Hvj2kANa/KO9FO/SJBO7q51SXHzn3SUvDjsItJU2fzp749q1hZ5A5EbHZddMom/Mf/kij6x1kUgCMNjofROkelfmwBgh5+JouykHjfIgpCRO3OIqXcn9AO5k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770208856; c=relaxed/simple;
	bh=VVoqN1cbo7saKNRizaznTRjcFiDowh+PjgHqkK04EXg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pMjgyLBvYhvICc8QtOpRWrZGHo1GmsyBxaPALhImlHdKNRwpHS0JqpABqGY+kMpbD6ItpPXxRn8RF3dTAOn0DY+kBUF+aTQN2oPbO+5tOMOuRJxZ+Dt+fKMbgi5AdoG1YdpY4cjFX+6N+mdABNFG9oJHDzJJ8TGFemoUQfOZOIE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XgxOCnFp; arc=pass smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4359a16a400so5990260f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 04:40:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770208855; cv=none;
        d=google.com; s=arc-20240605;
        b=CJWYhGn+YyLdEL1PeiQ6KahNlQTjx7gvNcHzLdeUc03hd8YBpOkSBHaJq/QSv2M3aS
         NxjzNguBE7DjTuBAkxRjJ2tXkBf1RKeguphDq93CDra3zXVtkLlekREWRmM32IY3TyCg
         QgoAtL5BEH1h8q3wJ80M9+BU0II4N20XizlL/puic+7zj0jGdaacq3I3TpqNj+NaPXdA
         NDjLGIaJFT09yqHURBIZ7eHrDx+16iaWR9xKMeNtk4c4FVyRUKOVPgZn5SIi/yyiUiB4
         wxDH5Epqqdqj9z/gDkC8EtBzF5C7wDO/E8SndoxYHN5lFur0z67LIZ4EkO1TfN3PVjgI
         5FEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m/zIsfoECBdgIZPuFNRz333Sc6yOkWK7EWk2qzyAS08=;
        fh=o55i7XY4Jqj0aNTMvKPy5m/VtD00Ueo62afOXswOuWs=;
        b=B33vfVVygQ0riFXRGuqFXjD9cN+tzSA64QnZJgvX5I+NLYMkAkTkPKXUekMI/TM2Na
         tV+5fH4D8wgE6qRTF2/rTaIHGIC6JxIN8LL9Yu28qcx091k5dEntEIprq/nYyj72Qot2
         epFjB6OiVhVX1fDxn8LssHEnpDY5rNbBN0HeA7KTM7oKW/k/8EHlqrIjTlI/s9SiA1tB
         odBMLUguEAavQyuhLr/RJBU0V6aW0bzMPPyBGzbzyw+iGCtDFc+b4eqLSME0lPlhGQY2
         m1Ti8NYo/c2AI9fY1A77GD/eBQ3e9bMeF+u5soETJHnwcX5M29VJofkm+4bnoS7yLGXZ
         X0vQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770208855; x=1770813655; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/zIsfoECBdgIZPuFNRz333Sc6yOkWK7EWk2qzyAS08=;
        b=XgxOCnFpLIcB14A1aqEtxqTxGYRcjFq2R+iF1g/G5VUZLLl4achDnCyhdFu/2VotNv
         LY9MiT9k8Wicu+tPAzFZyowDFRtmAbjsOAcqM66SIJZhT4kJEd29ilyOsreQ/H5f6XQs
         /cc3ApU/IfhiZYMgbwF7uCnjd9/t5aA43XjucmuSNE6UkG+Gy8ClfhS4JX0CADP/YNP2
         uXEd6w/MNVVlDGqklHl/H5uCrmyGfGJHw4ETON6HTPIbv2OjvZVm1xaiXmsYs31a5XTU
         IPDe0+IG98N/866vOVNahnRtXxTavtQxwwO+xalzKfes4S37JBAiS6WdbUj++rcS9CaS
         pRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770208855; x=1770813655;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m/zIsfoECBdgIZPuFNRz333Sc6yOkWK7EWk2qzyAS08=;
        b=UDRkfkBs70lqtjwP7vNFyH5HZdWxrOf8x3gu38cRUzPfMORE6G0X0GC9PUdeaeizWQ
         mhEXQxSbm4Nc6huORMuu68aUDuqZjjYd5PUTHcv0BHxGXqQhj2Jk/BZeJU2ZUYVojbNz
         ZaBNPPHWGHlEdO/Y6GHEdQ+TvLuGFcDQ0KQoA6TELMfr368/xCawfo36IPWxkiluofJN
         Om/RJOjEX36DvKWpXHKtsiy7QhC4fT9veCVTuCEIPKKxNd9WVSUuafImtsn7UdVXBvpb
         67314XeqrElQW0imNGJjZx/MD8i0ZH120XgP2Slg865eO0Qway2UDMe/GdLLiiECP1iV
         tsvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqtQmf7QqTrQpuHZtk4f7q0Q+pFsP+If024von3BB0K/yxMV1HLt9cHDC4898zBYrW/PYDhNrGnzTd@vger.kernel.org
X-Gm-Message-State: AOJu0YzMQao1DvawIOewNshpUAxOWwfPL28TwTlzWsHA9Z41u7rJBwzw
	AoLjsn6tZir/CNi2hRcDYEY3aj9BqeRguHN8sVZUfPIO8GvzF82JSgWOUVrBqlp72W0hAxnSZR9
	Txf4UpxUvvDM/V7XRYMTFavNWgS3WFOQ=
X-Gm-Gg: AZuq6aI2B5Jyi9sXNcNfmzkp40tWMnL2La2Gg3Dc+mMzc1kckf3yvsg9LyCE4ctKE73
	Rq7/KSitrLGF7o/7W8y5NNyaswxJORGtk+9h2uSe/Y3W3AqI6Qoac2fvkO6Tm3LS60lQEUVTubk
	Ni8R4AHJEpPoULiUQQ6/OhIlz9jgXzH741VWiagUrliw8GGzT4X7XWxY/EM7O8dOc+oTabOQTnb
	lMgDHxx0z9DdtP/7pmUUoEvMP79Fm0I88T/AmaFKuPJG3AIRGdtrSYcDt7I41jPPrg9BUDH
X-Received: by 2002:a05:6000:238a:b0:431:38f:8bc4 with SMTP id
 ffacd0b85a97d-4361805fbf4mr4039864f8f.61.1770208854743; Wed, 04 Feb 2026
 04:40:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260201104343.79231-1-clamor95@gmail.com> <20260201104343.79231-3-clamor95@gmail.com>
 <2026020350-unrevised-humming-7a42@gregkh> <CAPVz0n35NkEXjur-oJhW6Yxwme_KMLdYCnRAtjHEWSPEVrSUXQ@mail.gmail.com>
 <2026020346-ashamed-campfire-b483@gregkh> <CAPVz0n2HmLwdif5ry+y56LB8Gpwh2o9_gJ7K2jhcZVR=rPgfPA@mail.gmail.com>
 <2026020314-humbling-mobility-c24a@gregkh> <CAPVz0n0TMOCYnMiVUZ7xx-1SqrXuaVCOY-o4-x9L=f-xSMDj8g@mail.gmail.com>
 <2026020347-mushy-lunar-d12d@gregkh>
In-Reply-To: <2026020347-mushy-lunar-d12d@gregkh>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Wed, 4 Feb 2026 14:40:43 +0200
X-Gm-Features: AZwV_Qgnx8Hqpc3gLtz5e76GzgExX_xLHyQNYXgz5FpI0RojQ_lqa8cEDXcBX9o
Message-ID: <CAPVz0n0jrRxPQD-g7Pq-koDTW1Wr_FxNZc-SmY2-eE71dfei+Q@mail.gmail.com>
Subject: Re: [PATCH v1 2/9] misc: Support Asus Transformer's EC access device
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Sebastian Reichel <sre@kernel.org>, 
	=?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262633-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arndb.de,rere.qmqm.pl,agorria.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,linuxfoundation.org:email]
X-Rspamd-Queue-Id: 273D7E5EDE
X-Rspamd-Action: no action

=D0=B2=D1=82, 3 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 18:58 Greg =
Kroah-Hartman <gregkh@linuxfoundation.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Tue, Feb 03, 2026 at 06:50:01PM +0200, Svyatoslav Ryhel wrote:
> > > debugfs allows you to do much much more than simple stuff like
> > > BIN_ATTR_RW().  Go wild there, but don't put debugging stuff in sysfs=
,
> > > that is NOT what it is there for at all, but rather, that is exactly
> > > what debugfs is for.
> > >
> >
> > I am removing said stuff from sysfs, that is not what I am asking.
> > Debugs does not allow to upload register values in a form of binary
> > block. It allows only dumping via debugfs_create_blob or
> > debugfs_create_regset32 but not writing. If you know examples of
> > reading and writing register sets as binary data, please point me to
> > it.
>
> You can easily write your own given that debugfs allows you to use what
> ever file operations you want to use for a file.  Why not just use that?
>
> > I am asking if it is possible only to preserve dockram_read/write
> > functions in the code, without exposing it to sysfs.
>
> Why would you want to do that?
>

Nevermind, everything is good. I have figured it out hopefully.

> confused,
>
> greg k-h

