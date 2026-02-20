Return-Path: <devicetree+bounces-267078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAbUIiDSmGlrNAMAu9opvQ
	(envelope-from <devicetree+bounces-267078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:29:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA03516AFE4
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 22:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A27D3016D31
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 21:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20F8930EF92;
	Fri, 20 Feb 2026 21:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JojnwS6+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB7925FA30
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 21:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771622940; cv=pass; b=IvYPww+ns3g11ayrhb3xyKc93Ozj8Fz05iiC+OyV1lRBLLobas6NQKNZnIOWZBDWqYJquEBGJSejChX/QEwXXTDMLE3PcoFkB6mOKP+AKY971vTwEhR4RH9CSa/jcMwmDam3sEP9/LO2NKjWx0x68GDuwPe5H40vP6fNjCpPOSI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771622940; c=relaxed/simple;
	bh=cCauMR496lFcg+GwWLLg188VsfVYRKDTsZf2Y/Xc0nE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HNET3INyZ7/jY0BGNZLAjwLIdZzY0DPI8tegw/f2Ew20QrnicMMXpDpp/1gGJRv/58TcxRq68mX0/G7NfO87hPG9CEf6eAAdw8OYADb3V0NAv5GmmRuucW26pnbBA0DUGHbNk/Mnpf2bZie970Nq7kck7GyZ6KczkplUIr9k8bI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JojnwS6+; arc=pass smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59e5ea93a1aso2046592e87.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 13:28:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771622937; cv=none;
        d=google.com; s=arc-20240605;
        b=C4Hm/VQil88Nnkljmqph1694ytqFE7uY0cZvI0GFHwoacn08xz840EZ2LuUQBV809U
         e205ZGHeo8YK6TNe6TG20D8kyoyDQgK5/EOJt0MpKNDHuOT4tZThE3tHNSNgrUVVzCPy
         JmYWDav3Vo+7E5+ndmpzrn7zmllCoPd4p66wN5ke/85p9jFRy4tM+T4CZdFmFTsOsK3r
         z1jRtLtRFBv9T6b24vvX40nwu5TyPsEfD53kYKT7d2BO+2gmrlvxaz0nWKAyGvIioHb9
         0Q9inoARIhZdorShN0k6ZVsQBRkPxV0ZMgCnqmxOq7hDMLzQfkMr0GonkQWlwFjbIklT
         9pdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cCauMR496lFcg+GwWLLg188VsfVYRKDTsZf2Y/Xc0nE=;
        fh=NXWGJwO/OfMojoRFD3ZvIXKYQ4amQtIJ+joo9p3/m5s=;
        b=dgTyhJqQLvyaEF7qgxZV9bHPsSCs+li6ovTDeWC0J2uQkfDhreGRxPCZmRlw4sgOyi
         X5mMbeSasaNz7HH2Jw/mYibcuWJhAgDp+QFtSYExAPbdiTeMAt3gt00YBGwumRabcffT
         NUuCoA4OTLwyNimFDVzqKa1UU7nX0xb8LaxcgMm9pfcL09SbZWiNslUwqrjrKdOJ5h1R
         xIQGyTdsj1HyQW11vY9iPwOAAp150AG9CIYUoDNd+mzq7+0BM9o+XU3GPsRslr/FHn/C
         CDsSfBz6JADi/5kO5vb+BBfv/wA2AZu8IYnAzZl632AGs1dof+qshSGi+w2IB9L6LtD1
         c8Yg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771622937; x=1772227737; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cCauMR496lFcg+GwWLLg188VsfVYRKDTsZf2Y/Xc0nE=;
        b=JojnwS6+xmHNlk/zql50W6j2v2bQWpUVV3GQ8b2BgUlgr8CfiABc1CcVwUYPl4yEoJ
         qbTutXraa9bB85XDjDVoT5fLJ1J7c1PFHdy84AwccRC8w6X4kihkdBL7tOE8AOhwJi5Z
         toAI9DbrirD0m326tB7lYYLZnn7nwOpZqoNUytWiSAs5gB92OhK7nZxeGvOEDzSfvQC5
         c9pZcZYfGY7ozQcMk1dpfFhLJfuSlMALTTmcVriDB01+IH5SrYmftUXAdzkZWWJsl+kd
         hTh5pBsueHg2MjkvKtOg/VkBruAoFpnBbJzdqtBM+/MxW8W0RLubw+bQMhXzKDC8qPJq
         aROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771622937; x=1772227737;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cCauMR496lFcg+GwWLLg188VsfVYRKDTsZf2Y/Xc0nE=;
        b=p4VS7WJALCHwMqlagk5XYmU0hmmoX5V5/MnzJ6qmkM5npiH2qV6pZWtb2+71qPg5Pq
         FapHXgNNAxfTJcThyRqhtF8GtfbHnX/0cHhSkmR+k4g/gfOuiej6IWkowSSpy5RvPw2z
         +Zn/+nb5RG0FSrc8QNKMHares6UbqLnc4kaUqq1q3VR275USu/9E7x1TFYu9s3Mt7dPQ
         vjUSd1ARq/MVp58fMeKk79hl8uQ4nhfAegXjkUT3xBBXZWcLLoaP2saBwD3X+S+DJRwS
         K1PkEGKnNzYRQZ1xu1dP5fzjCEj4AQWAKhXNHIQjzKgpY+DcLiOQ5sq9j47FuxDhvXS0
         +EfA==
X-Gm-Message-State: AOJu0Yw36wygeo4NBCUr6BcUuVtx9yiAQXSQJSiAqc2+vi3c+rNCbZfY
	9oUDZ8JOCXz/n+4UnhbEOTst/SDXJF/OUap+um4r4+e+A5qJGag7pQiomG3ydtkAoKG+2pl5J5C
	Wjhy6eeoPzSzEujKWJRq5hFgGWagj54dk3A==
X-Gm-Gg: AZuq6aLlfKLFFmbeeJRn9t7OHSxqplTW/kqwG3O7M00FxuXLbGw7WwBLduBR8zH8jkx
	P0XA/vQgTGsi9FRkA5WiTtmWD2PJQ10Biu8wNl+IbrNWWK3JOu+XFhPSGeUXFf1Rv1K8mWqYmZj
	BKoS1sjyl2AWt0cPGGAV4+eDrh81PCZV2aSPt6sfasZSyyWC2WThpBe+nQHfGTyKU4XiIFd8qrs
	l0piSBcUa/zsvvDP0qILdV/lokDbLo7jgcj/8RnW7avdOOYx3FPxYzIvZtIT3plfz/0Hs828xbk
	5aucZaFJCPXTBBoKNcBUfJxQGCmlXwk6XtssnQ==
X-Received: by 2002:a05:6512:2316:b0:59e:37fc:fb56 with SMTP id
 2adb3069b0e04-5a0ed8a4cfbmr206199e87.25.1771622936453; Fri, 20 Feb 2026
 13:28:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220021353.40554-1-rosenp@gmail.com> <20260220021353.40554-4-rosenp@gmail.com>
 <CACna6ry+K6q_JY84j7OjRWALsUDU87mpAiikF7cpUGDUUYhZJQ@mail.gmail.com> <CAKxU2N_V=VWXtpj3qYcPQ-SOYDyA+wrg9Mb4AZvWMQUDnARVFA@mail.gmail.com>
In-Reply-To: <CAKxU2N_V=VWXtpj3qYcPQ-SOYDyA+wrg9Mb4AZvWMQUDnARVFA@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 20 Feb 2026 22:28:44 +0100
X-Gm-Features: AaiRm52CH-GIQpgAj_Fm01cIzdj6T-W5-pmlyWK26JbIMJLyYzNUxSuOqjs_IWs
Message-ID: <CACna6rxOYo3-G9msjXVyoc0jyJRMjUjMeOac6+-bZvD2MdH4tg@mail.gmail.com>
Subject: Re: [PATCH 3/5] ARM: dts: bcm4709-asus-rt-ac87u: specify switch
To: Rosen Penev <rosenp@gmail.com>
Cc: devicetree@vger.kernel.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"moderated list:BROADCOM BCM5301X ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.01 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267078-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zajec5@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EA03516AFE4
X-Rspamd-Action: no action

pt., 20 lut 2026 o 22:18 Rosen Penev <rosenp@gmail.com> napisa=C5=82(a):
> On Fri, Feb 20, 2026 at 3:18=E2=80=AFAM Rafa=C5=82 Mi=C5=82ecki <zajec5@g=
mail.com> wrote:
> > pt., 20 lut 2026 o 03:14 Rosen Penev <rosenp@gmail.com> napisa=C5=82(a)=
:
> > > bcm-ns.dtsi specifies a default layout that is not correct for the
> > > RT-AC87U. Also allows setting the WAN MAC address properly.
> >
> > How the basic ports info from bcm-ns.dtsi is not correct for RT-AC87U?
> > I don't see you doing any overwriting or /delete-node/. It seems like
> > a standard NS device with BCM53011 and 8 ports (0, 1, 2, 3, 4, 5, 7,
> > 8), three of them connected to no-SoC Ethernet interfaces.
> This comes from a local OpenWrt patch. I just added the nvmem
> definition for WAN.
>
> There's also the addition of labels.

Then I guess someone else didn't try hard enough for proper
description. It happens with downstream code. Sometimes it suffers
from lower quality & hacks.

When submitting for upstream you can improve it though :-) You can
(and rather should) reword commit description so it's accurate.

--=20
Rafa=C5=82

