Return-Path: <devicetree+bounces-77971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5726F910904
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 16:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 875E11C20F73
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 14:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7CA1AED25;
	Thu, 20 Jun 2024 14:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mj4qRAQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F346A1AE878
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 14:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718895180; cv=none; b=rRVL9UmieFitzqu/jdDFRPoPtgBQTapiQ8iLhnvSsGtc577JjBFOpV1hzrdw8hXfkUXsLANtjtF1yv1FbHewuK89Nn/WsNiv6Hr/+g8lpCAGUNkqnvpMKpq9d0wc2va/hQgWQVbZukFghMkZb9oPeggd+SPOgHJsPq9Z8mJHqlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718895180; c=relaxed/simple;
	bh=cOjlLG7J6uNFSBufcYc1U6uO2TdqNqn9wVWkYk95jjo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M7C8HzC5mD/wIZ2qI6aN01+Z7eGs2nwfHHJm1u53RraXt+XWwSFzE4bujkKp3W9pcli6g86mBHB7zXHZqAiC78ozveIE7pcE3vzS4FS/LhjgpdpkXyFb8XccnTa+9BJluQHrzOWGlyrIzMDHfNh0Szu9lDUO245aASnWcQpa0ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mj4qRAQJ; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-63036fa87dbso8243387b3.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 07:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718895178; x=1719499978; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qCNEYn05yS9gykrfyaJDjrazGTz47gbZUOuJaEqz7AQ=;
        b=Mj4qRAQJ2Wx5lLhhpLxAQFkU3cYGQB2F6Hum+kp+9EhQTIRbkIt6eMTyMUPKeaqnTv
         0Dd0hxRQpRJ0ayAaZFEWNqJKf+v+6czaYyhkSKePJBD0erUSKj5ENB5otFFOMYnxeMTe
         SxsMkigkfuVbHFswgLVP+91M9n89kGcDi3MgN3vUwqm0jho665jzA2zxEX2BaEv8IHNs
         Kn5QkS2DFyISLU8KfPYx9lBxByYvfdPwEmqU04PjFL0Cff4CWv4/dGZPlacA0zVoEvbo
         hxH51qFUSAlIbgWay8sdMtxzKzyPFt3ZWMb3kdp53iz8E1C1O1hdYmAe2kgxN/TSMXlO
         En0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718895178; x=1719499978;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qCNEYn05yS9gykrfyaJDjrazGTz47gbZUOuJaEqz7AQ=;
        b=k54S2tfWG++tVLF61723t6cBmZ89/RAMc0dFJszhNbXgv5SG0iHV3SKYbwD+Zl7RWI
         uRNk9mdwMgQcNWk4i6pwmMUSG2bPEjC4QDSC8R/jSUnvV4I04jQ742K4F27iuLtl12wk
         gLXgTkz1UaS2dBy+ks7yz7B3WccUbcqLO/Rp/qu5D8pKw4cATMOBHH/63cnJxz0rdkMG
         I1LDkZS82bLJ6X8Sai9G2k5zgQrvpcWc9ivRwyLNmCNDMUc90UQVU0eo1hXMgE/Bh8Kg
         gZ8DUW64RBFN+dIvGJN/HzqRiOlYGukWJWSXfABZACe7dEfYGWqN0bz61+fXtDbLsPIC
         WRFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHwljSb96cKWtpxFlcfmRBmCYIH10/n8JVpolmGVUM+O3sdXsi9napRmHUslIOP/rHfvrJLmhuABJhIbc1k6pXwQg7PFhOxXq7SA==
X-Gm-Message-State: AOJu0YzVuEv26cmbqHSOuCP6TYFr0O1CRcFJ4C6qYNFJbNRp42qKz/FA
	DZMbgKZtc2Dhj23EeL5amn1ODgna4fr1N8dytHZ9LWolWGikRKNq1BY5a9/8miO8U/LAc816FOK
	sQxSDaq2jDEroO3QsKECFskYLBRJ0tGuqdsR30Yy2KARiQXJW
X-Google-Smtp-Source: AGHT+IF40pdsLHGJGXsUitmodarquEe+C+A7BtlyIVzKzW3fRxNf20I0BvEb3GK+3HmTvwvssyu3em+pUpOJ1efXyLE=
X-Received: by 2002:a81:e30d:0:b0:61b:e61e:8988 with SMTP id
 00721157ae682-63949fecfc4mr58602707b3.18.1718895177927; Thu, 20 Jun 2024
 07:52:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240612075829.18241-1-brgl@bgdev.pl> <171889385052.4585.15983645082672209436.git-patchwork-notify@kernel.org>
 <8d6af7e2-76f8-4daa-a751-a1abe29af103@kernel.org> <CABBYNZJ5z91HExR-dkwrEPoF1pEGbkAP0X6tpftEGz-kd7vdsw@mail.gmail.com>
In-Reply-To: <CABBYNZJ5z91HExR-dkwrEPoF1pEGbkAP0X6tpftEGz-kd7vdsw@mail.gmail.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Thu, 20 Jun 2024 16:52:46 +0200
Message-ID: <CACMJSevy9w9L3c9fmbZcwO2BdmtJiQmHBTqJSiSXUs-fcmEqAQ@mail.gmail.com>
Subject: Re: [GIT PULL] Immutable tag between the Bluetooth and pwrseq
 branches for v6.11-rc1
To: Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, patchwork-bot+bluetooth@kernel.org, 
	Bartosz Golaszewski <brgl@bgdev.pl>, marcel@holtmann.org, krzk+dt@kernel.org, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 20 Jun 2024 at 16:44, Luiz Augusto von Dentz
<luiz.dentz@gmail.com> wrote:
>
> Hi Krzysztof,
>
> On Thu, Jun 20, 2024 at 10:35=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >
> > On 20/06/2024 16:30, patchwork-bot+bluetooth@kernel.org wrote:
> > > Hello:
> > >
> > > This pull request was applied to bluetooth/bluetooth-next.git (master=
)
> > > by Luiz Augusto von Dentz <luiz.von.dentz@intel.com>:
> > >
> > > On Wed, 12 Jun 2024 09:58:29 +0200 you wrote:
> > >> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > >>
> > >> Hi Marcel, Luiz,
> > >>
> > >> Please pull the following power sequencing changes into the Bluetoot=
h tree
> > >> before applying the hci_qca patches I sent separately.
> > >>
> > >> [...]
> > >
> > > Here is the summary with links:
> > >   - [GIT,PULL] Immutable tag between the Bluetooth and pwrseq branche=
s for v6.11-rc1
> > >     https://git.kernel.org/bluetooth/bluetooth-next/c/4c318a2187f8
> >
> >
> > Luiz,
> >
> > This pulls looks wrong. Are you sure you have correct base? The diffsta=
t
> > suggests you are merging into rc2, not rc3. This will be confusing in
> > merge commit. It is much safer, including possible feedback from Linus,
> > if you use exactly the same base.
>
> So you are saying I need to rebase? I usually only rebase when it
> comes the time to do a pull-request using net-next as a base since
> that is where bluetooth-next normally lands.
>

Technically you're all set - you pulled rc3 together with my tag. But
if you pulled rc3 separately and then my tag, the merge commit for the
latter would look much cleaner.

And for the record: you don't need to rebase anything. Does net-next
require you to? That would be weird. I assume they also are based on
one of the RC tags. You almost never should rebase on top of an rc,
instead you merge it into your branch and send the PR starting from
the latest rc tag. Git is smart and will figure it out. You may be
afraid you'll "lose" some commits because you will not see it in the
immediate git log. That's true, they will be buried underneath the
pile of Merge commits from upstream, but worry not: git will always
find all commits missing from upstream when you do `git request-pull`.

Bart

> > Best regards,
> > Krzysztof
> >
>
>
> --
> Luiz Augusto von Dentz

