Return-Path: <devicetree+bounces-100742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDF696EC74
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 09:48:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E007D1F27B4E
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 07:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15AEC14F9FA;
	Fri,  6 Sep 2024 07:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="FwzpELgo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE1E14F124
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 07:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725608688; cv=none; b=tx/GI7q2664+EKcHGaTELlBzaI5+iiCEmViRpdqCDkNF1XdsSyxycMD5rSzFuYMKeoDN5sxvstnw2V9e3O9d3OgqxnHmFvYL2dwa7Al2CfzXEC45foFj0VgwrynqbTlguYhUjJD5wANBN2L0yj4uP0n6VsqBPY3mvxyQhJn0w8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725608688; c=relaxed/simple;
	bh=07b0IMeSMwgMzjCtM2DsBnr3riDLhDHjvKXOx8+lQuQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O8+3eQLdvGwDI0cBfhhUhVepoMXVXw4hDWq5RmKzU6Yzx/a37uKX97An4Lr8+EIpIHBTq0DCUhHkt7OwxUBUBXbrB+CbxLVGxdCP74jTOLJKPZvZme2CAkOvnaTUFrcNzWWHdM9lY0rQ/s0xAX9HRT8bGEAXM+7zk4cjkY30oG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=FwzpELgo; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2f50966c448so20514991fa.2
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 00:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725608685; x=1726213485; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g2iWgb97T7hXzF6zuXBGICV8UKLvinMfR+RbHOd+dQ4=;
        b=FwzpELgoHJC9THi2bUeB2ndw3/6JOEDtdFAJALrB4oexXzw3rdvVi8LhcapOZ/Udvq
         rqP9rF+tp8Lq6rR3C+EZ0xnYjAeiD90B/cqBpnABujIyYUQ/hnuJ3sb16LmNNKsjm37M
         e93Iu6rnKhX6fH9KYD3f/rTs/uo8lTtrilq32E68dE2fwRN7T2PHNTrjbgt42aDlOntz
         lP6prAedjWVPtCPIxwSFOYhHGH93+m6nDwSlFtPcxNCJVHVtSiNRL8y+s3NQAJySKAls
         duYqvWFNMjoy5Bo21iVIPl/l9vEQFJzUg2aEReOh1DlGaES0i29XtimxmhLKte2lCZM8
         J4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725608685; x=1726213485;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g2iWgb97T7hXzF6zuXBGICV8UKLvinMfR+RbHOd+dQ4=;
        b=JFln4DjKlZTVG+Do5VNbhwdV1bsV1zAioKkEmQ3umlQLAxBg5Q5WOgP6jShIsn+zU/
         8rCQIgH18STlkAqcX0DfAwotM2Pu2FtZeUBCUX0EHvSr6toAnWTRTfZHSuopQftvF+aP
         X5BaWAxGzFgWVpiC5RE+uoAjQN+5ZernxGSDntz3lTtGWTahp3JarMVnNCHVpT7w0dbU
         HvmvzmL7zD0vvmlguxTCrlcXZ8m0EA+coAT0mafzLah6T+Qbns6BZTVclyZW6sDLWd0S
         OemQ7ghVIAxHBO1EGpYucdMtTv74hofz+3pN3tHt1YrbOvSfgm2E2KbQYmeeN/pZe1HI
         8Ldw==
X-Forwarded-Encrypted: i=1; AJvYcCWFKRIX/3cq/QrXmklQppvDjXAC2MDy+JfPLaAsBHIO73ilDqGcJVhjr7dRL55y3zoH9RrIxIAf4NKT@vger.kernel.org
X-Gm-Message-State: AOJu0YxMMrY1IFIqgpGCI/5taqA7uktHFYqh36Qm27qV7+gfRCq55WHd
	BUyh5kCb2BU7oE6FTRijLcU1ikeQ1Z2qHcMsxbYNyNThjPM89YuvlFy5FWlK15hGNtKx+qcMPmC
	gd+4dEsh1GU+1TvQMSVpInT7trG4Uho3sL1Ad4mXxsaf3MJXZ744=
X-Google-Smtp-Source: AGHT+IELjdXPrNR2ftHe5XllcZ3pyQfKCzq7O/b2xjHbW9q9Q4+MDzmZTA0vD6TNGPaxV5kp8/BSGDK9jb01VsONIG4=
X-Received: by 2002:a2e:819:0:b0:2f7:4c9d:7a87 with SMTP id
 38308e7fff4ca-2f75232641cmr10706661fa.21.1725608683728; Fri, 06 Sep 2024
 00:44:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814082301.8091-1-brgl@bgdev.pl> <87a5hcyite.fsf@kernel.org>
 <CAMRc=Mcr7E0dxG09_gYPxg57gYAS4j2+-3x9GCS3wOcM46O=NQ@mail.gmail.com>
 <87y146ayrm.fsf@kernel.org> <CAMRc=Mfes+=59WP8dcMsiUApqjsFrY9iVFEdKU6FbTKAFP1k_A@mail.gmail.com>
 <878qw6hs4s.fsf@kernel.org>
In-Reply-To: <878qw6hs4s.fsf@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 6 Sep 2024 09:44:32 +0200
Message-ID: <CAMRc=Mc_Qy6-Rgsw_uOweUXtoiZGMR0D22Ou9nXUJDDdPCZqLw@mail.gmail.com>
Subject: Re: [PATCH net-next v2] dt-bindings: net: ath11k: document the inputs
 of the ath11k on WCN6855
To: Kalle Valo <kvalo@kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2024 at 8:28=E2=80=AFPM Kalle Valo <kvalo@kernel.org> wrote:
>
> Bartosz Golaszewski <brgl@bgdev.pl> writes:
>
> > On Thu, Sep 5, 2024 at 5:47=E2=80=AFPM Kalle Valo <kvalo@kernel.org> wr=
ote:
> >>
> >> Bartosz Golaszewski <brgl@bgdev.pl> writes:
> >>
> >> >> > +  - if:
> >> >> > +      properties:
> >> >> > +        compatible:
> >> >> > +          contains:
> >> >> > +            const: pci17cb,1103
> >> >> > +    then:
> >> >> > +      required:
> >> >> > +        - vddrfacmn-supply
> >> >> > +        - vddaon-supply
> >> >> > +        - vddwlcx-supply
> >> >> > +        - vddwlmx-supply
> >> >> > +        - vddrfa0p8-supply
> >> >> > +        - vddrfa1p2-supply
> >> >> > +        - vddrfa1p8-supply
> >> >> > +        - vddpcie0p9-supply
> >> >> > +        - vddpcie1p8-supply
> >> >>
> >> >> Like we discussed before, shouldn't these supplies be optional as n=
ot
> >> >> all modules need them?
> >> >>
> >> >
> >> > The answer is still the same: the ATH11K inside a WCN6855 does - in
> >> > fact - always need them. The fact that the X13s doesn't define them =
is
> >> > bad representation of HW and I'm fixing it in a subsequent DTS patch=
.
> >>
> >> But, like we discussed earlier, M.2 boards don't need these so I think
> >> this should be optional.
> >>
> >
> > If they are truly dynamic, plug-and-play M.2 boards then they
> > shouldn't need any description in device-tree. If they are M.2 sockets
> > that use custom, vendor-specific pins (like what is the case on
> > sc8280xp-crd and X13s) then the HW they carry needs to be described
> > correctly. We've discussed that before.
>
> Sigh. Please reread the previous discussion. In some cases we need to
> set qcom,ath11k-calibration-variant even for M.2 boards.
>

Maybe instead of posting patronizing comments and forcing me to
reiterate all my previous points, you should reread the discussion as
well?

DT describes hardware and the WNC6855 package is composed of several
modules which we represent as separate DT nodes - currently: PMU,
WLAN, Bluetooth. The WLAN module takes inputs from the PMU so it
*DOES* need the supplies. The fact that you only want to specify the
qcom,ath11k-calibration-variant property is irrelevant because the HW
is what it is. Device-tree source is not a configuration file - it's a
description of hardware.

For upstream - if you're using the WCN6855, you must specify the
inputs for the WLAN module so it's only fair they be described as
"required". For out-of-tree DTS I couldn't care less.

You are not correct saying that "M.2 boards don't need these" because
as a matter of fact: the WLAN module on your M.2 card takes these
inputs from the PMU inside the WCN6855 package.

Bartosz

