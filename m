Return-Path: <devicetree+bounces-101276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CB6971244
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 10:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2FB21F22CCC
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 08:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B611C1B14F3;
	Mon,  9 Sep 2024 08:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="XOSuezf1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC461B1437
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 08:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725871212; cv=none; b=EwyxdTwxm++Aop33d3XnyTK7sTLbfVfG/18kCmWEXrWTe6A8D3e8BToHWHxKgq99bd7rmLHsPcMcJLAcTV01xP+Wd3bfgwYs3rfQ+M4+/I21fxDKGKzP4SvQqIhkdJoJ5uCcslQBBXi4szvlv2pVK+2GmHl0Pinsfflsdrht7s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725871212; c=relaxed/simple;
	bh=JqpEQh4sBoQwdW0zDyVFx/eKEJAMmdpxYeT1Q3+RaJo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=phE8HFZR+j0n7On/Jy/enuuREAjpafuTaeqY+rmA6btahsa6T0iL00fpSGiGS7EAdN57WZ4uwx8eWnfcsGMgSm5J4JI/1NPiMq8qivcmI8nlzvt2SKdzHNkP+jb6h9UUCwxJxqE+6kLTOK/hda9FdPlDki9qq95HS+K51opS3m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=XOSuezf1; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-20570b42f24so47746235ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 01:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725871210; x=1726476010; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JqpEQh4sBoQwdW0zDyVFx/eKEJAMmdpxYeT1Q3+RaJo=;
        b=XOSuezf1O5ViooZmLJrqkOPuwlshLiQinAi5+oNiVARM4YSXL9T/Y7v2QZ92/VUgEi
         xEevMmqviDauW0ZZqPT9118HQU5bCHQwdJvCB7hZJVBIM/GBIWMUC3RkwYm9rliLKjGt
         nWgwKnFwCYKc7LFvfmQ7440pbezOz/15RVaLCXGOKMcM38AFo7Y6wCOauP3LBpcLLqie
         xZN2hjV31/o1Kox61q7x4TLZv9rhaoXmVwiiXACZ3Qiq9+WcyQlq4/B6CBhJAQGlbHgu
         mj09r8Qan5InwZMVEqkq6jcx79t1vdZiea/Y53xpUtFkoTN90koo8C4vjmZPw1JWX4E2
         eVMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725871210; x=1726476010;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JqpEQh4sBoQwdW0zDyVFx/eKEJAMmdpxYeT1Q3+RaJo=;
        b=RXiMqGZuTtn4jBA6Vg4Kvh3K6p6ni746JeNoJ2VUg3jKLPOVx2XOYIwicEmy4DdzDr
         LgPqO8JTuRmR8eSGugznSHhdH/GjD3BXdce4JYfsjydNdF2VcKPzROTczQWx/bnmXvai
         vQ+39bWvCXZoRZ4B9Nsg1DDkk3nUqXMKXv7vMocoeODJIKao6xPivyprZkmgFFpPk4mK
         QIaOGN8Knwd83w1wsK8ysrc4cJMUKFaz5eLZXaJqUuNk0XIiPCxAv5Usl1b5v5iwjuT5
         ysM0a5bbVR7BUfUybmi3ksq9Ar41yulp5o7mhD/uoKSFzE1ugIz48jCpYSeAMbVvJYst
         MJ9A==
X-Forwarded-Encrypted: i=1; AJvYcCUWk+1yzEktagUHFbi9NlDccUcwKA4IYgWuLK3GGuOXOEgpZNODZt8z8C4XO56LI0y7I8WtcS7ISN74@vger.kernel.org
X-Gm-Message-State: AOJu0YyYWbmJdZzTyw0q0DJWFmah/S9muZVwDZbW0k9Vd+LDTDsIzHTH
	tALjQI/Ppo+cu9vfDq91icY3ZCG/ZGFX73MO913U2KbbSFz+fJHrvGEUdG0xA4u/+ZFKIkEXZNo
	eGanrxu5gIxkFIJzCOjA5o2uWsBtDkDBqSqdabQ==
X-Google-Smtp-Source: AGHT+IGSidNq3jUEQEJSqnWgN99y4SS7Jygw5mSUwYdDDZw3FUVxb/dTY1uPdbhbg6KR4qvmI4iSAuTedjHSYjmyLF8=
X-Received: by 2002:a17:902:e850:b0:205:8212:1f2f with SMTP id
 d9443c01a7336-206f04c7e54mr109327965ad.10.1725871210359; Mon, 09 Sep 2024
 01:40:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814082301.8091-1-brgl@bgdev.pl> <87a5hcyite.fsf@kernel.org>
 <CAMRc=Mcr7E0dxG09_gYPxg57gYAS4j2+-3x9GCS3wOcM46O=NQ@mail.gmail.com>
 <87y146ayrm.fsf@kernel.org> <CAMRc=Mfes+=59WP8dcMsiUApqjsFrY9iVFEdKU6FbTKAFP1k_A@mail.gmail.com>
 <878qw6hs4s.fsf@kernel.org> <CAMRc=Mc_Qy6-Rgsw_uOweUXtoiZGMR0D22Ou9nXUJDDdPCZqLw@mail.gmail.com>
 <1e77b503-36ff-4a97-993b-f87d658c9970@quicinc.com> <CAMRc=Mc9kzC6PLZM2-kmuC-FtzdM8P9e-YRVxWjg28tAc7BRgg@mail.gmail.com>
In-Reply-To: <CAMRc=Mc9kzC6PLZM2-kmuC-FtzdM8P9e-YRVxWjg28tAc7BRgg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 9 Sep 2024 10:39:57 +0200
Message-ID: <CAMRc=Mfk8ukZhG9B8XuMKEO9+AgbGA27F3Wjo-N-EKfOs_b1Cg@mail.gmail.com>
Subject: Re: [PATCH net-next v2] dt-bindings: net: ath11k: document the inputs
 of the ath11k on WCN6855
To: Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 9, 2024 at 10:19=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> On Fri, Sep 6, 2024 at 8:38=E2=80=AFPM Jeff Johnson <quic_jjohnson@quicin=
c.com> wrote:
> >
> > On 9/6/2024 12:44 AM, Bartosz Golaszewski wrote:
> > > For upstream - if you're using the WCN6855, you must specify the
> > > inputs for the WLAN module so it's only fair they be described as
> > > "required". For out-of-tree DTS I couldn't care less.
> > >
> > > You are not correct saying that "M.2 boards don't need these" because
> > > as a matter of fact: the WLAN module on your M.2 card takes these
> > > inputs from the PMU inside the WCN6855 package.
> >
> > Let me start by saying that DT is one area where I'm a newbie, so I hop=
e I can
> > get some education.
> >
> > I'd like to start with an observation: I've used both WCN6855 with ath1=
1k and
> > WCN7850 with ath12k on an x86 laptop without any device tree, so from t=
hat
> > perspective none of the device tree stuff is "required" -- these module=
s "just
> > work".
> >
>
> Yes. This is what I refer to as "fully dynamic" M.2 cards, where the
> card typically has an on-board PMIC that handles the power-up of the
> device, respecting all timings etc. No custom pins are used. You don't
> need device-tree. DT bindings don't concern this case. Even it this
> was an ARM, DT-based platform, you wouldn't need the DT entry.
>
> > However I also realize that when these are installed on Qualcomm ARM pl=
atforms
> > that there are GPIO pins that control things like XO clock, WLAN enable=
 &
> > Bluetooth enable, as well as voltage regulators, and the device is
> > non-functional without those configured, so the device tree items are r=
equired
> > in that environment.
> >
> > So just from that perspective saying something is "required" is confusi=
ng when
> > there are platforms where it isn't required. And perhaps that is what i=
s
> > confusing Kalle as well?
> >
>
> The properties are required IF you have a DT representation. Because
> if you're modeling the physical package, this is what it looks like.
> The one on your "fully dynamic" M.2 card is the same - it also has the
> same internal inputs and outputs but you're not modeling the external
> package in the first place so you don't need to care about them. But
> if you do represent the chipset and not as a black box WCN6855 in its
> entirety but its WLAN, BT and PMU modules separately then it warrants
> making the true inputs of the WLAN module mandatory in the schema.
>
> Please let me know if this is enough of an explanation.
>
> Bart

One more thing to add. You guys worry about existing device-trees,
don't, they will continue to work fine. This change only mandates that
upstream DT sources model the inputs of the WLAN module and it's only
verified by make_dtbs. This doesn't make the code require them.
Whatever works for you now, will keep on working.

Bart

