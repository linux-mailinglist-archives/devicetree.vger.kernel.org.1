Return-Path: <devicetree+bounces-266519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMhWH+ASlmkDZwIAu9opvQ
	(envelope-from <devicetree+bounces-266519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 20:28:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E665D1590CF
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 20:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5252D302A52D
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B2F347BDB;
	Wed, 18 Feb 2026 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="K03eMUDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1B9346A05
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 19:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771442896; cv=none; b=j8NvHT4mmDfr55ZQ0G8OUyG/+MUwz9aYu/4zyw0YJiWYYAzG/vsZv9b5bVYsAmhaO9ll8gJ9vb/MuIDSRrTJAhD/BQ40eRTmDMGCNBzL/BoIytEWOH2DAvCr4yNlyaip1fDpoRxSkP6dhgHqDFQlfc2nibn1r2fotgex5pjSsXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771442896; c=relaxed/simple;
	bh=KCT7Tp+ZxXSkoxqSjXqGupm3sDHuPZyckCR4M53Ap7A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Fr/0YLQ2nSAUE+lLbKxVrrAVVaKM5cqDgsDWn6APmu/cgZxh8DLLp2ocLWtigUwR9oCmdcAr5fEMwvXNbeAxc3/OrFHbPLUyoVQfhbMOco81jdpcPV1cLW0O1t4ym2nZOf6BrklZkGcfMckE2Nw34Erut/SaXcFOX+g1hfT6f6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=K03eMUDd; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso1741825e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 11:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771442892; x=1772047692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7FCYIJj0Xz3DNfT5NA4cBOMj1BDhbRNIp0uYNdaHJvk=;
        b=K03eMUDdvjFUXgFMgCFjCpBJwP5TI8/qDvlJIXHJ4hOWcEH83/f0e2+YQjpfautoh3
         RexqRuhf44rheQbatfLg0O+iTNTaz6h+OWeuDqi5oDEqyX/aClHJ94EpcRJSvTbWoQpd
         hiDK1EJlYEuICPB7Gbr0lNxGo0ZmJHtuITHExlaR95ZxEM71ZK/xwG8+LLqKs5SXwnXT
         wGeufIcVKxY4y28HPs8IegE/cZc08gcHRNS6tHHKaRJC6a03uFxmJPfWbbc8cVKhHgBp
         W62YJ07JTCfADkSKu1QbAX4hPdvHrl5KRyM4suyI8eC4eTGGQEZGwPZ/QOUdBrobHF/w
         NWIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771442892; x=1772047692;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7FCYIJj0Xz3DNfT5NA4cBOMj1BDhbRNIp0uYNdaHJvk=;
        b=t1XmRH2oORACRUMP5+uMAuhTKXFELVlqB8kEOGi/6T3iMb4Ctst/13scM3aImNR9+k
         8hOKcgzrcgJAZogUuYFJu8hv0NioYN11RjU80z9FzVemhJ+smeoqCz71pwzhW7jhFWYB
         m6dE+AfqRZaNfryBgIV0T36Uy/usDc9Mot288eLArcRSqKxooRbINV61KNsCZzYYvpOd
         w7pxY/TkwAaXsh5PUcfS/Mjv14awfZmyTUE+b2mx3cmOC7HMMSr2/XMZi7m/XXzz/uvb
         1c4Z3erlrgluWbNuSx0pQkSXeb0PevWzY1ZFglbcQVb5WFF40KrRIGNkcCJt00Ylcctr
         mSnA==
X-Forwarded-Encrypted: i=1; AJvYcCV7Ua16+oZTX+ADe1HRHg01scOm+WPaQ2CU8wRX3d3w8xP68f/AFU4lhtRP1OKiJttOGFV9BPrNp3td@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9uyEvo0GBJkNvuFFeKadiRbrw7Gf0A5ipNDf1Hf6d96NkcNaG
	Y7OjY0PueAxPzy84tuK5heUBKfZQq9CVEvSx/QP6kw0TQs6OBXSqxrOZE5EVbpiU8S0=
X-Gm-Gg: AZuq6aL3S37qOisb3xOvy64g8c6u9r9ikS/SqZOU4aZ847cnFZhA4D7EqHr/ae3V4L3
	nNqgHHqQBWbbq/iMPEZpmbWuzQpaO2HjJ7oyDrgXj8GV4AySBgJF5PEys/d23KNLLA5WuN0WKo4
	N3V/h53Tj5NIv0QME3V4SPA/KBjbJ5r/LSHUl/A6wvZFGEIV82M8Az6AdAokw2Nbxs3AMb4yD+w
	PW0jUvPrVcczbo989N7v7YUcPg1EJ96jsSsmfIPxE7QaKJLQDbjSZWjcIjQVZ8Xmbu4makYrUnM
	YQBWabpdrsfrKYzxfOY+FGYu/z+vWCnMFbc/NFRcR7xHSDMmyz0hWfAd2LpQccHV49jhpnflDTL
	6CafDoCbLCWLphs1mNNuKF2f+aqTymajua9fnrr785RRht1x4OWD1cWm+ybjalbzQylE2goFIew
	lJzjATesx982hftSM5OyYMng==
X-Received: by 2002:a05:600c:3b13:b0:483:3d42:d04f with SMTP id 5b1f17b1804b1-48398af1ef9mr53949695e9.37.1771442891970;
        Wed, 18 Feb 2026 11:28:11 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:cf71:8cf8:56bb:5790])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4839e7f9d1asm818125e9.3.2026.02.18.11.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 11:28:11 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ronald Claveau <linux-kernel-dev@aliel.fr>,
  linux-amlogic@lists.infradead.org,  Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  linux-clk@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: clk: meson: Add Amlogic T7 fix pll
 support
In-Reply-To: <594f4fcc-ad88-4969-b9e5-98061fd5b73c@kernel.org> (Krzysztof
	Kozlowski's message of "Wed, 18 Feb 2026 20:17:53 +0100")
References: <20260218101709.35450-1-linux-kernel-dev@aliel.fr>
	<20260218105611.36216-1-linux-kernel-dev@aliel.fr>
	<594f4fcc-ad88-4969-b9e5-98061fd5b73c@kernel.org>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Wed, 18 Feb 2026 20:28:10 +0100
Message-ID: <1j8qcp6ed1.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266519-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E665D1590CF
X-Rspamd-Action: no action

On mer. 18 f=C3=A9vr. 2026 at 20:17, Krzysztof Kozlowski <krzk@kernel.org> =
wrote:

> On 18/02/2026 11:56, Ronald Claveau wrote:
>> Add PLL for the clock controller of the Amlogic T7 SoC family.
>>=20
>> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
>> ---
>>  include/dt-bindings/clock/amlogic,t7-pll-clkc.h | 16 ++++++++++++++++
>>  1 file changed, 16 insertions(+)
>
> So you ignored my comments?
>
> And that's v2, not v1. You sent v1 and GOT the comments.

I think this was still v1 and if you look at timestamps, Patch 1 was sent
before your first reply, then there is lot of time between the different
patches - probably done manually  ... at patch 6 (the one you've
commented fist) was sent twice.

I think there is no malice here, just first time contribution with a few
mistakes ;)

>
> Best regards,
> Krzysztof
>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic

--=20
Jerome

