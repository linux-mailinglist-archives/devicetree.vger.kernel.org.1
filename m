Return-Path: <devicetree+bounces-254752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC3CD1B96A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 23:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 309823002855
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 22:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F64F35BDC2;
	Tue, 13 Jan 2026 22:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QGp0tGmT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB8C352F86
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 22:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768343329; cv=none; b=YFRkd1+YBxemkQD3SV2c/7RoBm+xWN1elfCz938Evql9eYxDJ9g4qxkl3lawAfdSXxsd6jmSFfAtDfcMdIE/CwxCnwoW/UAUe8uYv9i5t4odpfnMXw4BdxV8L7PulW7KTl9XH6iIGtwokKVWYY0r+MBjEKBQp72pbrlsW8nk3pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768343329; c=relaxed/simple;
	bh=NZn7mF1Uh2yzjWRMxoCJBNg1BcB1qNB2lTNBd5v+HmM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u0VMAZr+Mt5ak6Fq20btL3f1fbWEuFUuuZngLB56CmLcTpOFAKehwIEM35/u1tyoVDORZoff+3QnE5hrviS3X1I8iJUA+r/Eerw2BxfkAeR8Xj/ApZTKkil1ty9bLWLpWHUXhcg9LeS99BV9rSC+NXPkwpWmTriXPzNjpTk/5go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QGp0tGmT; arc=none smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-121b251438eso249774c88.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768343327; x=1768948127; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pmmfdk/VKZ1fvQfbgF33VHoYwFfmSOZu5CB3CRtPMbs=;
        b=QGp0tGmTbiaVGJMSeW/xBTMdsT8cR0DDnkUrMTC+296M8J8h8SSU5zDD8lDLD7Gedl
         uonvuN6coHCeQS28/jt5zfYG5LiAQ0xW21lmkDFxju7fR+jtSJv99xZjFzZHtFtSSDyo
         7y+OaI/Y3xaTsT62GdV1C8UZljL0tYXwzozv+ZqG45jGx8SeV1EcJ6j02SPBSM6rbewS
         175iK/BtX5tCQkQ9A85YkTblaGtclmKv4f/SEmlQWh3sif7hxsfJvO3PfxuzTIV2ckvS
         SXYpbLAT7h4xSEdRkVpP92MKKvoYc0m8KFSMf3V35Ufv2gc8StJFxGHlqf5WoqEJZDg1
         YV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768343327; x=1768948127;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pmmfdk/VKZ1fvQfbgF33VHoYwFfmSOZu5CB3CRtPMbs=;
        b=WpHrxYJp8mrV7erg/DXh6Dde8vcEyN0johRZ3QzNYwDvAzOVreEj5CfwmEsdoo71Sp
         L5gV7CRKtSUS/jJVnGkIqbUDsDNC6UPouTfJTs/TVs/2eJIDobymA1+3NQxUFP2BvFgx
         IeDXjmZeU2hKtMTYzL49P+0ub0ve4B+m3XCVhGA+6/y7hlNc91LRJSPcaJRZ/ey1JkHI
         kn61m9U/OSunFf6CoMrvoywyMySy/r2hbnxBMGP3Takwi3Rn0hkDxMQ/nUyYflQXqZNW
         Vtt7IiQ8rxT8bRsj3JkAZ2kxZ4qB+GtVh3JFPwdfAN41KXRZ/6n/9z9pSyuXEXBwWnGx
         5mMg==
X-Forwarded-Encrypted: i=1; AJvYcCVZEjcORpl7S/0i3xDif1e1sCPnYwC33ufx3WKDj5c5O8CWiWeW8KDYoeUSbaND9l3To2FbRWBjtFgB@vger.kernel.org
X-Gm-Message-State: AOJu0YxzVTPzW/7Rq7HvwfcELmBrBAl/T4Le+VBF8BwaAqEiBe29zO/x
	MXYHCPK8qhW8wXlloG9saKkIrtG+lM0pPIsV+WdjBEVAQNDunfsrsqcadFNPg1utk1QOPQ/27hA
	KuYJPxv1rvKaFdvstskqGhmaVwOJRfETZxJ0B
X-Gm-Gg: AY/fxX7oxaa90lGqvFdsKIedFQvXeADU2RoJ/Mso1kZxJyCzrZVwz005SMVWcljOQaz
	4bU6VxI+/E0oOfcZoGzTmXeFuI32H54ube17spNKMc/EwS8wXNE0HgVDrBBj4xbG5kdvB/9EZpi
	oKVhiZbME13S12l8vLvWxBihYfAezkgev8cZ1Z1VC6RcyR/Ad/x1UHPoGdHPLNxHEFuGD4b7sD1
	iS4jQqlHwsiLNX0nehpne7WE4osj2gVqN3qC7BB8Bh3TDtIEjsFnsCWggqWQ+dOi8gk5H5804Ww
	Fvat8fvW
X-Received: by 2002:a05:7022:6284:b0:121:d898:edae with SMTP id
 a92af1059eb24-12336ab1486mr479738c88.24.1768343326543; Tue, 13 Jan 2026
 14:28:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
 <20260111201040.162880-2-anirudhsriniv@gmail.com> <45bdf2a6c0d33dd6ce0fd3cc279ef6edc509a540.camel@codeconstruct.com.au>
 <20260112-whimsical-annoying-fulmar-25e4d9@quoll> <CAJ13v3RKydFK+sP_Cm-HnQjsOJSDyX_dsGs_Yy564V=Wc7tQFw@mail.gmail.com>
 <e97b7a193f8bbfca9ec00037808ad80a5baf9f00.camel@codeconstruct.com.au>
In-Reply-To: <e97b7a193f8bbfca9ec00037808ad80a5baf9f00.camel@codeconstruct.com.au>
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Tue, 13 Jan 2026 16:28:34 -0600
X-Gm-Features: AZwV_Qj3tLQCdlXGc4mVCUHplcJiv-ygH2rDEByc1Cc6_E5RuzTQMstHuy-HUGo
Message-ID: <CAJ13v3QYWRfyivrbP=+hreHuMkYWGPkngW3kJyq6xNVL6YdpgQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asus IPMI card
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew

On Mon, Jan 12, 2026 at 6:57=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Perhaps we could incorporate either of those?
>
>  * asus,e21524-ipmi-expansion-card
>  * asus,ipmi-expansion-card-r1-04
>
> However, they're not without some risk:
>
>    1. It's hard to tell whether E21524 is properly representative
>    2. R1.04 may also problematic as an AST2700-based card will likely
>       restart the numbering and risk a collision
>
> Otherwise, I guess there's:
>
>  * asus,ipmi-expansion-card-ast2600
>

There seem to be multiple revisions of this card. The photos have the
revision number printed on the board and the manuals have the E21XXX
number on them.
R1.01 - E21362 photo [1] manual[2]
R1.04 - E21524 photo [3] manual[4]

Mine is the latter. There seem to be some differences in the layout of
the different headers on the board, but the same set of headers are on
both boards. There is only one fw image on Asus's site, so I guess
they're the same from a sw point of view.

I've linked a screenshot [5] from the webui on the stock fw and it
says that the firmware model is "KOMMANDO". Asus also seems to name
the fw update file for this board KODO1140.ima (KODO is short for
KOMMANDO?, 1140 is the version number).

I looked at other Asus Motherboard onboard BMC fw updates and they
seem to be named <Mobo Model><version>.ima. Example board "Pro WS
W680M" [6], fw update name W680M1121.ima, another example board "Pro
WS W790E" [7], fw update name W7901167.ima

"asus,kommando-ipmi-expansion-card" is a bit long, so maybe we should
go with "asus,kodo-ipmi-expansion-card". SEO for either of the 2 terms
is not very good, but that's not what we're looking for here are we?

[1] https://uk.store.asus.com/media/catalog/product/9/0/90mc0ah0-mvuby0-7.j=
pg
[2] https://manuals.plus/m/8bcc92c2f7a875eda34d546e0e297d339ea55863fea0c6ab=
cf0f338cd26f299d_optim.pdf
[3] https://i.ebayimg.com/images/g/Um8AAeSw27JpOYcU/s-l1600.jpg
[4] https://dlcdnets.asus.com/pub/ASUS/mb/Add-on_card/IPMI_EXPANSION_CARD/E=
21524_IPMI_Card_QSG_V2_WEB.pdf?model=3DIPMI%20EXPANSION%20CARD
[5] https://ibb.co/kg96CsYY
[6] https://www.asus.com/us/motherboards-components/motherboards/workstatio=
n/pro-ws-w680m-ace-se/helpdesk_bios?model2Name=3DPro-WS-W680M-ACE-SE
[7] https://www.asus.com/us/motherboards-components/motherboards/workstatio=
n/pro-ws-w790e-sage-se/helpdesk_bios?model2Name=3DPro-WS-W790E-SAGE-SE

--=20
Regards
Anirudh Srinivasan

