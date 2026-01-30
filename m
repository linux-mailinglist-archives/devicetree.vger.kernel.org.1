Return-Path: <devicetree+bounces-261121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNdcFQ1tfGkSMgIAu9opvQ
	(envelope-from <devicetree+bounces-261121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:34:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D55ADB8672
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22AB93012C7C
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58A932BF55;
	Fri, 30 Jan 2026 08:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vy3t6jqW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31312DECCB
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769762040; cv=pass; b=Maz8mDT8Alt3mzB8A8EiT48dxZYXkPl5dll+FON0wv0ALIrDwtEsqwVq5aHtkY4bYqV2bBzQdYpN6AU8AtJvk22JxhCKXPG5nzGWYtWSbosN6NovVxvRfrg7T5QAiVpbXsfET8UJr0QxGfQ9Xq58x5eBHuWmgHCh8FSuabi+hGs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769762040; c=relaxed/simple;
	bh=DstjTp6u8Wd7y76xr8vc9Pr66uNL9CypP1+PauCth48=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JQK4mx9ryrYNDylIL6sQ3p1fwhuW242ojMHZRLZyiPmcv9lkjtZZ1/wXFuxmMeAvkoC9CsPAHf/PF1zAeYzn6WdrhVladbGnSiHTJl2yfavel/MNO8bJ7k9niiVlc9O7Z/GYV2j+7g7HjqtC/GvfQZbfOnzbCpicnzgvsd650rQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vy3t6jqW; arc=pass smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-34f2a0c4574so1619647a91.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:33:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769762039; cv=none;
        d=google.com; s=arc-20240605;
        b=BvBN3okOEUgKi49Q4C7KLa6Ctb379T/I6U4ZwpBquwHSpdNDoYQJNnigu4JC2VygM0
         iDy/iQkX8hU4VG8RIValfyARFdps9vSsJn5Nxaxby7XMOY/TJPQfKh9NvU/kmFE94FYj
         vwxQ3l2ytLanByJtEUXRGCeKc+M6P8KkMWEtr3mfJb8fv3WVnVn3c0RxJ72EghlOGR7u
         xCNFF32yDbmQG0GbaZQpSRZmViMgOhCtbPBs12UtBUyPKqR96uGcmxFBgp00Xr9QiGyb
         CxkstxDmq/hgAQPqzPRU/T3jyVWro3LiUmp9k9/avvJMJhN8+hPToxQcdJUm3F+V0nh2
         HMQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DstjTp6u8Wd7y76xr8vc9Pr66uNL9CypP1+PauCth48=;
        fh=A3a3erlfu3LmKzFQY47riZ+Hb5DylF+8MESQLXZJ+7o=;
        b=jQ9+KBQeQ5Trrvf8Z1roK1LrYamOHybWJCHvFvI0MNSmbyQVBO1fsVV0sLMuR99FQ6
         TExxFVFZMjj0T4s8PBLaGDMJzAzgMHKakwkBmsrnCguJm+nskz8peEackt93mEqivAhV
         Cw0pTR3DDGuOJvYkphsuBmoqgqIqUYor5iXhcmnp53PcSV/XicOaK4y6hxkiD80UgmT5
         NXa1k1MYv49OQOKXcpkdJUmiv+I4pY/aqaSW2V+IrM8lj2OHLhGeq6JBYUc925s3QtVG
         pyJlfi4ZkeT10PEeMI+pHH2pnQk/y1jkW25AeYVVs48M7+kHU40r6N19ZCbOwPOvEmM2
         IdaA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769762039; x=1770366839; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DstjTp6u8Wd7y76xr8vc9Pr66uNL9CypP1+PauCth48=;
        b=Vy3t6jqWRf1mM+dZunMvgQeLG68IjGm85kNGHyYKtcjz/5iChM6z4z7Lkjax1p9uLf
         3naK0D63FcnA93i9VJP8z0kT8Z+AhPm15g0clQ7CWv4Q6maNa+DYZ+MPjiOcwkdfXNtL
         5RdzM31ZV/50nOd8dTr8p9/QFspszPM5ln6iWb+rxiQHxsCY+JYEw7hWeahBh3YiCdqG
         ymK5gcdBSMOOhzpOYZt9FjYj/Z/9rx5i26XGHfINHR/VWLOmJkEvFJfLxQJkgd/KuFZz
         16++ddOMyIPUYwxrATL4Sn9rQWLHn0g8HAktqJzLidCH8oTk2G3BBTBpK2OnAGtSxlV+
         xHYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769762039; x=1770366839;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DstjTp6u8Wd7y76xr8vc9Pr66uNL9CypP1+PauCth48=;
        b=uiPpEgVQhwQwCrO2JHS4kg/pFfR1Qb5TZjAzFTTk/nA76vDq5sm8yXH/ZVSgI0nqdK
         Z7AyuEsMa7xdfMFscXb5RjmE71y1vTXYvv9bIkSQOwXzHkjljQa5CJzvJ8TgmMlGZ+CH
         igjocvsUi3FiCLdpBNE36HYbMZvJyB6uicn933WI14vQe7tNjhAcDjyorR5Qfc8TMbl5
         9GsCWlOyB4RMCId0MwSH/P5N1N5wTqplEFs91uZ56Pt7VudAshdmiauaGorm2zm1GF3Q
         OVpi0hZ4ssAhYczdw3dprxB1YtraNwMolMoETtLGKG1tHJB0LnCWi2Gzn+stAm5EOKax
         mWCw==
X-Forwarded-Encrypted: i=1; AJvYcCXr5hGGvaIQ5Ha+LsUimy+Hl2vBHU34VQzzsoFDg+pQxYTEwPgBx1EOcoJ/wLzIyJqJPpavz0460Fsv@vger.kernel.org
X-Gm-Message-State: AOJu0YwepspvqskHo4vj5wNu+vq+OUmjo2pL2xn3UPPNjpHY1rE5ER5f
	YCygMSn/rrrYn8pGknZ8pHQjSFWXlHdjkgAAOxakBO4YABSUXMRU4RbIgWLNCCiS6J8Cc/2XYq1
	JPGw5hi0Q18yQdgGf+OddsvuFwlZRBS0=
X-Gm-Gg: AZuq6aK6Fbo/5dW3uWVn2TI7EH35IxCZ5J1PSBxVD0prd9Kwszw/QltLMs1lJhhzCS1
	ZmQQjsgYF9XRYmJiy8KmeFK6bJKEhNeuaWS3FaEqcNK3e1qJBGd7+CUidKSvhjfoQYi8a9AdB2X
	BoPjVDRyNaExcc/0M4IUbuIzR0qWmz/UVNvKyhJVMm3WvVY2oxvWgHtC/PLnUkAexavieWyP89F
	OFJ+Oj2LUl7YS39gQ3e31CL1aKGydrGkk6Jc9ZCIu9vt81O48ZH92hXOH8Afp3gDA2pj/Fu
X-Received: by 2002:a17:90b:4c48:b0:343:7714:4c9e with SMTP id
 98e67ed59e1d1-3543b2dbfcbmr2065013a91.2.1769762038772; Fri, 30 Jan 2026
 00:33:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
 <20251219-yv5_revise_dts-v3-5-ca1d5a382013@gmail.com> <4441e66d607fe442e392b8a82c134adced03a5dc.camel@codeconstruct.com.au>
In-Reply-To: <4441e66d607fe442e392b8a82c134adced03a5dc.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:33:47 +0800
X-Gm-Features: AZwV_QjbYy8HAFQFUZ1te0gk0l1xAwC-03Aak4VTwnvQbs5Hj8-mYxy6LbRydf0
Message-ID: <CABh9gBe=OcM8ExpEJFYj+cwiohyDRCXrTyeHZqQoyfJAsbmDtg@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] ARM: dts: aspeed: yosemite5: Correct power monitor
 shunt resistor
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Amithash Prasasd <amithash@meta.com>, 
	Kevin Tung <Kevin.Tung@quantatw.com>, Ken Chen <Ken.Chen@quantatw.com>, 
	Leo Yang <Leo-Yang@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261121-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,codeconstruct.com.au:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D55ADB8672
X-Rspamd-Action: no action

On Thu, Jan 8, 2026 at 1:22=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Kevin,
>
> On Fri, 2025-12-19 at 16:09 +0800, Kevin Tung wrote:
> > Correct the shunt resistor value in the DTS with the hardware setting
> > to ensure accurate power and current measurements.
>
> Why were the existing values wrong? Why are the new values correct? Can
> you please add more information here explaining both concerns?
>
> Andrew

Hi Andrew,

Sorry for the late reply. I=E2=80=99ve sent v4 with additional details to
explain the patch better. Thanks.

Kevin

