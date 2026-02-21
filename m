Return-Path: <devicetree+bounces-267115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM3uKfHdmWmJXAMAu9opvQ
	(envelope-from <devicetree+bounces-267115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 17:31:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6E416D448
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 17:31:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCF85302A6E0
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 16:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4734831AA89;
	Sat, 21 Feb 2026 16:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A0rd/4Yj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E245031AA82
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 16:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771691503; cv=pass; b=I1Kx9xoTnOj76/Ax2SDH1SA8LCRPupkUrfPhfaUUZNtOddRDMjHVgYIvfz9khsV14ZqgOmONZkoW4+cZTMaBUqWTpj5sPxrbhym1Sq0i7AyPgNzrCiAaYRpOwY4+PAbW8pjgiEJ+2sC6uLBUDQgtljNGNBRDXyDlCo5PWYap0MU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771691503; c=relaxed/simple;
	bh=/QwTpvLDh89KEeRUHMnFOPQHg+SZQRqvnKaE5nDuPnY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dMEwJVud0ixO0tvzcBu2h9oNMqqi+sBDwzPohxeDaUH0MeJLgdntZR5TKeRg18Pt4pZWemQN9bK1jlAjzXDIk+X6HYXlzVo/Tv+Gt69Df9h3M1igOAAlMyUaw5E88CgAUlwez/czuaz38cpxzu+EXoeY8tzCh5RQ7igLExPX5C0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A0rd/4Yj; arc=pass smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59e57973dbfso3007657e87.1
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 08:31:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771691500; cv=none;
        d=google.com; s=arc-20240605;
        b=CdQeJIExEsTV9NhcloNEOasJ3Z54roruQ7PYMKlofyNfJRUTxeFD6ImIzRtVmX+e3Y
         kk7ZNxsjp01CJlKx8ParE5EhmlTremoAjJcPWpW/2OzOZxXfzt74Zm/n2+gbANbrZblO
         he6PNl7LByOgWNE+PktznDOR1+DRqLVf0l70omOICYnc/lzjGTKuaBMPFtousnQybpV0
         T6o8Lce9MJ1W7p8zvQkQ3AySeQl5NQcL6CwapNwyxjmTYSqMdUoxq7YrBPtwzC3OsiFT
         jo10iMd+Ke+uhpxyJjC8Hk2sbY8FtHreVD3t7A2bapJrv4F0w6N5jQ8ZVaKATXP4RILB
         j82w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/QwTpvLDh89KEeRUHMnFOPQHg+SZQRqvnKaE5nDuPnY=;
        fh=etsgw/gwWC6A+0rOcb7M50wXYReeRDmhE4LCm6vZ66Y=;
        b=KqazKoNf5YWzbi282BaXZ92e7vvOl3vGJjYUeBMk0K/D0xMNJ0EbGsUaT8xm1sNqKI
         QMim5wtQ6z94suemYQjCVU05/sC5CDMH12t0jR9Y+I5gFByso+wCixk2urB1goX1RvE+
         jm9pKdGHHHgubC+hjgrNojUS9oIcf4vibWH7S/vq/cGS2rmGoMtLeA1SZdnzjxIKoE/5
         oFxI/IjWcaII86OgeDKNQslqIwsUKu2wTOs3LvgBQevBEMvmcYUKhOLRUxr4vp6DCEAl
         TjsY3gBX/CLDGCgzMOEZlMDpwS2G0dOM0TXTLyhSzQwH4iP17p7Sxgv0c+H6WU7APVM4
         GAtQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771691500; x=1772296300; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/QwTpvLDh89KEeRUHMnFOPQHg+SZQRqvnKaE5nDuPnY=;
        b=A0rd/4Yjfq2MeqAVww2pU2BSXefUGQW6cCHx+4Azf2z9IhbH/fLXharw5WJ8PoiXDk
         JKXfOhlId+hZkf98pZpPz2453vkLEeKYv0l30xyQ/RJC8r6A4SakeyEr2qx2JZUWvuuD
         XAiXd4Mh4Af41x9+gjFdQq6FoNKgnqm2v6SIWT27YuIzx9HyKT9dyONDD7QVZUUVhccH
         RZfFvVsasJJ4AY/ATx0xUIAz0oI67Q3LCIvp+piYOFjKgwPtbFTdP72EdSa5gWe9DtQh
         Dj0EsBGnziCiezR43WV6MnuSXKV0+Av3cgLIl586zfKdEIyf/Za0ToM3jr6MyP0yS3rz
         Oxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771691500; x=1772296300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/QwTpvLDh89KEeRUHMnFOPQHg+SZQRqvnKaE5nDuPnY=;
        b=Avxf/F/fRmlrlnbVvdD7ueECOSl3rsZA9t6iiOSVjpFwca1BCXguN/I3OBrbj65lng
         Rl92pJhmK8DgIg+pqVUB+DL/mYtzZ/+7u3VnDmGczq9yYJxHwCmga1ml2SiVjjsaxQjg
         PRlktgBz8XipP46xdvUKCHH83ggLRcSGMsPTjsbUI9HPd+RCT7GiSJyvIWEDIMzrfF49
         zzKVu6zT92egqZieoUbGAz8sgwdFqcWKnmttrKf9+ndfzJXqmWaN9g682NUpNDkOJxNC
         sJmA28TRbBIhqua6xCHMB4flkxpmFCYh3nm2MXJDvu9tlus+PpJm08xTiQ9qiEuI+HY1
         BhYA==
X-Forwarded-Encrypted: i=1; AJvYcCXqiEYzPu/3yyTsf0il295fOEt6vpjhMsxF0+1Ckl6pHjjA/kTAmAowyZDL8rVqW6k/1gL9dUQWp3j1@vger.kernel.org
X-Gm-Message-State: AOJu0YwFH+ANosXIQCgevZDW2QO+c+zJpxEy89OWN16lfYbw4KZSB2is
	99WbYfi1BzhUE5ZgMEwRHdxnNWTJGLeF070Xc7xB2sp6DeygUvRcOqD6PkCBc5okEaZrpDkwt9I
	uLTu53d71bEe80qCF8+p1ixo3UYP9m4U=
X-Gm-Gg: AZuq6aJKduTEDgXemAHfRDicVH6dRivaOzkKfUJTyA0DvCkDv040xyfEtPhWDq6C/cZ
	mb/vUGoqV2LQCieO7cRt2EMAqnUpaUvTA1i1lLHkXvFGfpECCO6Be9/l85u2ibtw5OjDdEeMMre
	e4aUO8CQYcu0M4/RkWR6YcdUCOck23O1weIPy+R5u4dGuOJf1OONx09Vg9zTUeUJfN14CA2R6xk
	Q+bT3SIo6Dbx8ggqGT69qmuwbjeFFGC8Y7mrvhm9183jLe+RmxYiXMoedASeNr5+jfLJt0THByf
	cHw8eD0MnVekUKr5FOxEhoOkbweONdF7OlB4K6rrWI3hfJjRdv2Zs6waFRZ9DL/P8FiM
X-Received: by 2002:a05:6512:a8c:b0:59e:7bcf:a00d with SMTP id
 2adb3069b0e04-5a0ed4bbb30mr1221314e87.7.1771691499721; Sat, 21 Feb 2026
 08:31:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220-ayn-vendor-v1-1-292cbbb682b3@gmail.com> <20260221-proficient-eggplant-salmon-5544cd@quoll>
In-Reply-To: <20260221-proficient-eggplant-salmon-5544cd@quoll>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Sat, 21 Feb 2026 10:31:28 -0600
X-Gm-Features: AaiRm51P4aJUVFbRzfRdNL0uHbuJrqX0vD9ajkoctox_AF1kfK9E43PvifYlnns
Message-ID: <CALHNRZ8JT34J024TvG77LW2vN03q9te+xXmR0e7DMOz3GqouEQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add AYN Technologies
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267115-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,ayntec.com:url]
X-Rspamd-Queue-Id: 0F6E416D448
X-Rspamd-Action: no action

On Sat, Feb 21, 2026 at 4:55=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Feb 20, 2026 at 04:11:11PM -0600, Aaron Kling wrote:
> > From: Xilin Wu <wuxilin123@gmail.com>
> >
> > Add an entry for AYN Technologies (https://www.ayntec.com/)
> >
> > Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> > This was originally submitted as part of the original Odin 2 submission
> > [0], but that series stalled, so submitting this separately. The prefix
> > was renamed to ayntec as per the review comment on that patch.
>
> And why do we want it without the rest? Answering: we don't want unused
> binding and nothing in the commit msg explains other options.

You have told me repeatedly to not do monolithic series that cross
subsystems. So I am working through support for the AYN qcs8550
devices and splitting that into a bunch of different series. Several
of those independently reference this vendor prefix and may progress
in any order, so this needs submitted separately. I am submitting it
early to try to get it in before the rest are ready, so I don't have
to list this as a dependency to all of them.

Aaron

