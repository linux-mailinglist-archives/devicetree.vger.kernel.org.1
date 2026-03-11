Return-Path: <devicetree+bounces-274235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDkgOOmZsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:35:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F452676DE
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:35:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A95E3033FAC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD6B36C0A8;
	Wed, 11 Mar 2026 16:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a75xJ2MA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DC43E0C68
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773246766; cv=pass; b=YGDTuCxfmm27fK/dVEUfxPvOZiW0mtqBrneP1jk9Mq6V6YvFCmNgYUUxK8HJSF7Vrma878TpJ4hoHNc6LOJE2UVgq/jQqUDvYTiYt65hoHG6+yqRrbYcOVBrvEFWtT1T7cwz7Zx6PU+K60CK/aMKRLUI2AXsQEso6XLnSgjtiZM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773246766; c=relaxed/simple;
	bh=xoIx/IeDKxcNVyUw1oo2Va09MhTndz06USTW40+3Rcg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ipPE8nuuAtEq4qsHtnqjycon2lajTa3HMYT7/7XtMZqMtJX42jjUW+clBBDzQyuHaf4YWwliIFy9VFIHXRyCWgIPlnSf3zXx7xrwVCF6Ceb1JOrKka00Y0wLFgdfXBQT+RL4BKL1zzoBaExC6C1ZupUirQHHJ2SyDii/gi4hCi8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a75xJ2MA; arc=pass smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-38a3fd333eeso1013041fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:32:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773246763; cv=none;
        d=google.com; s=arc-20240605;
        b=Wlcn8nXNKY2yUw7pqEeUJBUomEaxfKaooxhn2g2KUWqyGPJX9bYZkS0urXzhZIhgY2
         /cf0/09NEWjkrm0d7JehWIrb7eRtwlsCN+mURYHN7sKEFrVvIc+73fLpESTY765MdG2X
         aRyVaOnRh04hODBdsMTsDnfrbh5ZTVcVEF3pZgYxhvNlwxH4VwRHeyJjXoipMXfFYuiO
         LKrKEjE5/r2jNxfiFUp7lCdC6KFPWbG4hZqH+R59OVLK/XiM5gpBgEW3ZwhRgN+1XCpK
         MaWXIB/tlyxzQvJD9tn0ZKq/vn6gCxv2QUQYQsKacVoJqZqfrwa9SlMEZCHDeT+rHK9X
         Lk8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KfJnFrnSSEVCdyFslZ9Mt3p1y+wlhdyW3iFJCntf1nI=;
        fh=VsfyQyCBevMPmAouXct86yhhYOA8MWlx0IlCFx/Ktc0=;
        b=d8PSy+avjTFANDYyIHshPSn9Y7cAU5PhjclbhS6Cnj4QEf5o0grctwWUvSXNaNDRUI
         dL9/b8MOVjUu43pnQ5mqGFQH9QmnmnL07d9XdCXD1712qE5lRFFDRnyiAnBRb5voN3Ff
         N+wCh3FwMDfmguIAuwEXfk/objpxcdjpTfCHoHQ7WsCc43VuoQkH4G8Voi0uwrEqDD3J
         7KkWusA2Bpkdz5VHDNjXvtv/J4cjMDoKcIE5szvtVE3LbZYnuCneMFtu++oU7MY58nak
         HQDI2tTxQ0BkbwfsMMHUg1bKC9G9MF6TroquRa/V/zfLYk9X6Set6prIQ5N1Mcnsxo2h
         bg5w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773246763; x=1773851563; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KfJnFrnSSEVCdyFslZ9Mt3p1y+wlhdyW3iFJCntf1nI=;
        b=a75xJ2MAPdUuhjH0Gjz+J3jaWuD/33OOAaw1oOtRqQcBPG7VgZDFfdwAwHlvNLUbCb
         yZ0nnfV4pfkk6ryEC3VAROsnBin598m6U1Qb5Uk/DZVuMP7lieVQzA7yxexeIg5udtH3
         boOH4ZQelPDsayAe7Awa/cgli/QOLnMAT0Blthp0Nil/nu7eQnQQ2p6LAGqBqSZobWq/
         3ZYknlfV9QUjwT21JjNnTyHU9s79yu6Q/5U7SLqtqImLMGY1CfScS03Th7cy1vFL1eWM
         LWM3fFL6d4gH9LpvVt+jXTho7AZiOCX88s2uY6xh6rfH0DOQ0ySwtNTaK5G8OsEfoDAH
         wkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773246763; x=1773851563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KfJnFrnSSEVCdyFslZ9Mt3p1y+wlhdyW3iFJCntf1nI=;
        b=i/vy2I+4TV9l6egwSjoe7IwRaUHZb6ZPCTm9dc1J0RHcQ/hjr0CMoULdG+epy4pBxh
         jBT/B7Y7caey9+dplF0x+ZFd9OFTRln53fzHogX7cj01oudXwHaGDM9T2vTEoM9xodo7
         BhQOr8M557H8qtqIhZHPpZZmpH5CJNQG0u8/V6JAee0UE3ivdZs4E4hkMsPFuSOvxXYk
         IOjPTt8rS0X9ZVvvx80bayM/aJ8lb3YsAuVJfERZUix+GnRzJ4mCRLbk44AhJ2VNsv2T
         5kEyEeET0L4TtN7bTV7y3OvZUEohzhoWfYI2juxWDEjZqey0XzTJGXHHxso5jzyqvrtb
         hq2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCog0bSstmrENVGSZAkv0fvMBmE/E5xh7Td+jyfrI10xmxrueLw30QVFUnBB4bMN8NWHey0j/+2n+v@vger.kernel.org
X-Gm-Message-State: AOJu0YwopeMAy+aS1aI5t5xz7z5Ee/Zs0BhkvoWa8oisIVugA99DTOK1
	UIPehUuHD0jp0oA0H7u34jlGj0Lcw0IcTQAOktwU+bBGB/5Tbo+8YUfU7ZZk+8s3iu/hd5IMSwh
	vON16nDjPDj2U1Z2uiplp+I95O0KARm8=
X-Gm-Gg: ATEYQzzw+aXs41ZGiQUMlic3twM9v0zqMQVaQAR7RNOXWGxnndkspiqvBzmVUx0oOWI
	yityWo+TtGUPaRIKvUK6+6aM4yYHMA3jet73VI2kyTB7B8Lm3FA2jmAaLyusdUS8lrxVPWfmf0e
	fxR4yIRa186v5dtEqGD5QHvSeKN7C7l/LJhx1rVbgLEqWXWOvKaqCRFnMmnatP9SXnNfiMSB1qt
	NazhFWT0219FMVOXpn0JFkOqdsvpbZg4ppacssZxUmgB1TEgS/K1WeTfVp7CX86c48TP9W7nyT3
	Xqz3GANf3JUa/TFojB70vz590N+9eXcrjzbC1+gJcSzM27lrsNqzdJ+9v/iYUwFjydxp
X-Received: by 2002:a05:651c:4092:b0:385:c1a2:fb7c with SMTP id
 38308e7fff4ca-38a7287d70amr453961fa.18.1773246762784; Wed, 11 Mar 2026
 09:32:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310-aw88166-fw-v1-0-2777563bb673@gmail.com>
 <20260310-aw88166-fw-v1-1-2777563bb673@gmail.com> <20260311-liberal-reindeer-from-hyperborea-40679f@quoll>
In-Reply-To: <20260311-liberal-reindeer-from-hyperborea-40679f@quoll>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 11 Mar 2026 11:32:31 -0500
X-Gm-Features: AaiRm53JU5eY_8-OuCCtrfUj4i53-fpfBLqYKU0kn2BQ42DRMO-zltOgZD_34Hc
Message-ID: <CALHNRZ9L7gKpO8=KAaFsSAvo3g66v7ZOVLwf7yRHH8o-PxZfQQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: Document firmware-name for awinic,aw88166
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Weidong Wang <wangweidong.a@awinic.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274235-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,awinic.com,perex.cz,suse.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 44F452676DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 8:16=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Mar 10, 2026 at 11:43:04PM -0500, Aaron Kling wrote:
> > The driver currently loads a hardcoded firmware. Allow devices to
> > provide specifically tuned firmware, so the driver can use that instead=
.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/sound/awinic,aw88395.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/awinic,aw88395.yam=
l b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
> > index 994d68c074a9f221576a5bfef6ba125e3e30bfea..e12d030475e24dd11afaa3c=
9af4b53703f25f981 100644
> > --- a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
> > +++ b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
> > @@ -48,6 +48,9 @@ properties:
> >        Flag bit used to keep the phase synchronized in the case of mult=
iple PA
> >      $ref: /schemas/types.yaml#/definitions/flag
> >
> > +  firmware-name:
> > +    maxItems: 1
>
> Duplicated patch. Please work on next or maintainer's tree.

Noted. I was working on -next, but a couple weeks old. Will rebase and
drop this in the next revision.

Aaron

