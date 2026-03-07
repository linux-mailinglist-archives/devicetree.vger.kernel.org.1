Return-Path: <devicetree+bounces-272430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJX5ATAkrGlHlwEAu9opvQ
	(envelope-from <devicetree+bounces-272430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 14:12:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A9E22BDB1
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 14:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D4E7130172C5
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 13:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8986F3A1A46;
	Sat,  7 Mar 2026 13:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NJ5dp/pr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218EB3A1A32
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 13:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772889133; cv=pass; b=ViDUIIRrkeAC7XAWLFyZ3Aqh6y7z/ifAVxz51yKU0iafsscMGW3GjAnJtm67HC2JF4SftM16pxYK70TFALGed8kgyG1NbIcILFxGM70dHUl2CSwEc/Bk4goz4JYZlkvSdNq4+91xEm5nHPpbxwXviXUQpq279R30c4pXDtnSJMw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772889133; c=relaxed/simple;
	bh=VIWFI1y5VRLZ373RQL/JnbZVRkgBAGhKPHT1hx5Q3QU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q+y2dLVZmCBr8wAJ0gfB9DhT84LlJZ8GdBmODh8RiYeRKzGuil4oUKrLAEdBQUOzu8fz9UEPIn9A/xMrizow38QvfvWOFOCgOP3nWzMldKIl/TXUJCg1USjdGzPK+QFnwNX6wtGSsH1G4oHxG0dgpRFgSfzG5AeWFBvZ4fJW+sE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NJ5dp/pr; arc=pass smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439c56e822eso4474881f8f.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 05:12:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772889130; cv=none;
        d=google.com; s=arc-20240605;
        b=KZ6MabcN1LSbq1dwNGPXLsCP2ON9/of+jTfZw2nR/yruuokeWu+lb0VlFjUo4TYiiQ
         Pze7y/W1cfOKiGE6kaf6JXLRHk/RxaudFpbvhfg6OWfSlcjXYbIWBCibHwwoxTSJCgMC
         18yQlHkZAsGJmNyZPJqzEs1YuaspmJtlbQp5DFwF9o0h8FLmACMzU+j7lBjCyB5GclW4
         gdhgodIbIjAicIwR8D7FCTcQweGvXrXnps3+G3iIWLT1u3eMatJGssi1UxsAG8Mz8Imi
         tk8kxkd0WFLRc8cRujCz0p1eylGkAzMQWEjTeXLyjqxg46f65A8eJjUUoEG9EP74I4g0
         cZaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jwpJkt0avwp9jkgkDYYA37vOWQ50nBFUmOdRhI9vm4g=;
        fh=xabjgFCr/BUvNLuK90p5XUSAvqqx2BV/5LVONkndVvA=;
        b=bS++6FMCe61wC5Zd22/6IBM7OrgiVCGqKbEAGqcBajir0mYYN1YVJxqJ5w/o39TQXl
         Hkayy9+jNOg47622/0pa2ECDHwGdH5oQJp7bAxJLnByxsfuTWoL5YwyFODOyI2gjz+/d
         aZ8qz9b0ED48NS1tJzoE2f1OwrstoDk4N/0AC5pKIYXBrMBN3VoK9C/Zz7m7GPgjAiow
         CA+szMENCN8r8ezpOUS7oxdAwbYyG16+pXeJIt2VnX89YB6sMMN0La8tEjLrA8SdfWEi
         fQLH5fN9soDnoEHNgtpX++aQSC2xU/ylOy1wuJVf5s0HrDXC1xOkZH2DCCxaMWurXa7r
         bGyw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772889130; x=1773493930; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwpJkt0avwp9jkgkDYYA37vOWQ50nBFUmOdRhI9vm4g=;
        b=NJ5dp/pr8J6GiCRh5o4uhYUrKCGUSZQzU6KQ2fdqE51GxWIADL5d2+iq1PlF4m3iFx
         xPLpX1/++m89Atunk0PZpshSbhUiP7NHGZ3H45uM19lskys4UdlgmxKPvRAIIaZU3i2A
         PM77oNh4Hf28RXz/B9v40eZDsJA1W5vaSuyj1mriAhSpwLvpbnsfrMnZKUVsiXyQ55YI
         YDOLeQNc7p4bA+nZi+TihsGKxuSX3tXrkua8sFEQBpbmDnKjtjYoHi9VTN9QRdngOezK
         9UL/Ndn/QhsCtmsFzhCVKhckESk6MprtmVFXgUyqMqIrmnvb/VHmIMssb/++L0iLcCZx
         Vu7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772889130; x=1773493930;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jwpJkt0avwp9jkgkDYYA37vOWQ50nBFUmOdRhI9vm4g=;
        b=Asr/Rn0XMHNGCZNwIH9rBj0erBX4lGZn8Lcwa2Kx5NEjTqtj1RXMMtVC/Rs3lH6nvY
         sSF/Q50oKEsjg5iDkeCwYNB7Fu3lvumfgx0MTLyiNU1mQ9seibpN//P/sZsVV/O2hqsV
         m0lgLCuD0H8PYWGMNhsA0CngoJvygiRIdhMhBTQAA42I+mOjWmqUY7bEvZKUlLcjO3s1
         4wVXgzxZ8dgGgg2HivZ6x7Q0iHWv9xn9Ayr9Sr2RNZaNcgnM+xk6cvtgoA0X17nUO8XO
         kz7PNAYG8dxD2z7r34rdguWcwg8PNZTIV5vHaee3O9wyA4rURcQqGdPYz8DK/1Yykepw
         nyWA==
X-Forwarded-Encrypted: i=1; AJvYcCUqvOOfQYsfRQ260vDpPP3LT7SmrHHD+U+luuUvNT57GBsy7o39ERPMfDx2zxuBqLCe9lMusMrzpcae@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf95VwMwxwb157YMaV/c0G1mmrAbpdpSYwPVKoBSRvp0en3NSP
	HTZ7qXsXnn1urPZzLR15YJv1e0GDtIFH+Hf4VXIpJdhJx2ku88m7ZCQsEDjNeRJuudoZ/25qhHo
	y7K22F9oP5/m31JEtj6Mzmt4EpVGtdMM=
X-Gm-Gg: ATEYQzxF9yfLW+unZ+qSTitJrPdNV3uUbvG6n/XE6TDtlgIHF01yfWQi4xFOpR+DJtS
	nY6wU5JTw0hhQWdQtDUtCkEx1kLZvZAKCdfVmlebaqGe+erft1wt4HmHCwdf5lQ8d3I+P1/TZA5
	TzJV/BpL8UjKBGPZLXqaHmtd9B8DcVBcLPJDU6DK1O3Z8THhgyW3l2CnOdNA0XSZvO6RmHD19Y4
	0OK2pYpNiJqqG3F6z9rwGYmTJHy3IuYJDcce8sZoZag7HLIrDgTrcl4gTgKof7PJpujapajOud5
	DNb6vRlc
X-Received: by 2002:a05:6000:258a:b0:439:cbb7:3c19 with SMTP id
 ffacd0b85a97d-439da880b24mr9456804f8f.27.1772889130119; Sat, 07 Mar 2026
 05:12:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306133351.31589-1-clamor95@gmail.com> <20260306133351.31589-4-clamor95@gmail.com>
 <20260307-azure-quokka-of-abracadabra-cebde4@quoll>
In-Reply-To: <20260307-azure-quokka-of-abracadabra-cebde4@quoll>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Sat, 7 Mar 2026 15:11:58 +0200
X-Gm-Features: AaiRm52JT8p_3rf_HqGYMWaWzNT7LpzzUhIeETfJmIKaZ646udUvob7af9WUE-w
Message-ID: <CAPVz0n3Qj78B9Ga=p5wixu5umY+uVP=Fs7K3nwix1NT2eNgtrg@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: gpio: trivial-gpio: remove max77620 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: C2A9E22BDB1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272430-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,intel.com,arm.com,samsung.com,bootlin.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

=D1=81=D0=B1, 7 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 14:43 Krzys=
ztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Fri, Mar 06, 2026 at 03:33:48PM +0200, Svyatoslav Ryhel wrote:
> > Binding for MAX77620 GPIO function is covered by the MAX77620 schema. G=
PIO
> > controller function in MAX77620 has no dedicated node and is folded int=
o
> > the parent node itself.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/gpio/trivial-gpio.yaml | 2 --
> >  1 file changed, 2 deletions(-)
>
> This should be squashed with the converting patch for this compatible.
>

Acknowledged. Thank you.

> Best regards,
> Krzysztof
>

