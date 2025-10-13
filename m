Return-Path: <devicetree+bounces-225817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 63142BD139D
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 04:31:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 499654E37D6
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 02:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F220B27BF6C;
	Mon, 13 Oct 2025 02:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S9yOBkAR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050F61F419B
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760322691; cv=none; b=nqsQf8/RDHb0wUQ+pJxuMEeJNMkFwU3GIkKcvx5hmHAN9sUJrmCfN1ZLCl0L/qR1TldA2HzAojDt3sixD1UZiZ4W3J88UzkJ19661D4I2O9O82VsEWB2sWVNB5fNSFPGXoh9gA8HvWJEBwIZPuRWRMKmO7YX2PFYDD5bYrsqor0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760322691; c=relaxed/simple;
	bh=8LMX8B/zIcsHqXsG/2JSe1Mh/g4Ma3Sm+j6Lsj6JgVE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mNbrIuI+vrtPHSeGsSiAyB+HJBMqnas28m/E0OuPNogGmRnVdlOlN77jP6UIgeh3R1wFdcOeZzWYOnF6cXmhzqVIsgYkLWO/jpW5uLMr+zoXfzeM9dHkEBg2PIgZIlOtZXwvsLPTTLR2H1tMtI51rfhGdBvG01WvJMNhuRrxBic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S9yOBkAR; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-3761e5287c9so34839631fa.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 19:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760322688; x=1760927488; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8LMX8B/zIcsHqXsG/2JSe1Mh/g4Ma3Sm+j6Lsj6JgVE=;
        b=S9yOBkARB90zWhXVdUXOA3ECg7PjU3IjvUxAbx3eMNiINbs8nYix0HMwCWIlpttgp5
         ZLK6UujfF+N0TG9+uqiyfNS573PA+ArgmzW3C8H4uAUe7BBqHt9AxbtKDEOIgzLS0WFp
         2dip7WiiL3tDeF3EE7N9eytRpyKRwhrFqcCN4+Cg/k+2MFHTUn4v6XUc/h+y2JExDyTE
         fWrQwk31KDnaMgrpvt0+upk7uqx6dqD4385KTPmA9h9BhkfPtIiPvNOGA57cZbRauc2t
         pYOl/5oB7i0isyS88oJ5SeaUg94P7GJ4bZOdzpzJnjbNT6HutFM4m10R0So9UP/5UklN
         MHmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760322688; x=1760927488;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8LMX8B/zIcsHqXsG/2JSe1Mh/g4Ma3Sm+j6Lsj6JgVE=;
        b=BBSCkFTv0M9UpgMXeOqO5xQlN8Sbmi0IVSrda4wrCxkk827F042hlFw3OZ20mF5MJ6
         HNkDcIb4SekSacJuh0uErmDhGaK9pHUg4lBGsH60hHjXTkObSbRLcEbixUSzsfkki5Ih
         EBkAMZvCtW7u0ufmdYmb1s8+0EQm91w6GwdEZEgwR+F6e3Yt6vWHUW6l6U3mprNDJSoB
         5bDbc0acTwy/RRvnZ57NbxMCSPhM4uorPmAuw+jn2QblZxngNZnFQDgS4kA5CjqrFjaO
         mTkl3tCaNK0XFGUxzhzLwRIGCjmI0qzfF21oLV4fPNDZRGkTMGGMsmzEyeSQfMyKF3aw
         t5Ow==
X-Forwarded-Encrypted: i=1; AJvYcCXGPMhdm+zrzyNHHwJS4vczHLQkBxmG0FOMVWNwDHR7d49D0mHoDSawMhYZfyDa4fEceEqh9SN4BNin@vger.kernel.org
X-Gm-Message-State: AOJu0YwnTiUCaz9rM30Fc5896XAIkKwk8BlNlqsD8MgMux4vd4bsBwc1
	NtUhL+p370vQjmHobps1A2ZYCts1BY2IV29hFqE2bYDrowS9RLr/HcKtJRROHg3m1nCWlC/LDro
	cOO8ZxvxDrFxJWCTp6cBtOm4ocOGIaTQ=
X-Gm-Gg: ASbGncvAMyUO7PWW6BdSgVB5cukmkhfeTRoXSOIZc44sK/ihkcNk5HfsqWaQTsMiLoY
	2uQA4wL7iXcQZir0UqQ5YXULBYDHC9h1wU0OkWavfsK0spQOjpIKfrwBotNDUG/Qmqz9sc5EINS
	2lijGbl7Vd/Pi5CqbdA4vbSbh5JXpxr2zHgUwJR0YfWEz0xaiAKSYkRTJMAQddPo9dBlCvBkjYS
	3jLNqxdIIQfevFJDqxk6DdKmQ==
X-Google-Smtp-Source: AGHT+IFRT685XkwUNzk5PhXFn6GMYMylCx2gOKDiRDewwcWZ5qj+WmimYT/Kd+PA+8NnMbbozb9K9GIPVdUVubwUVNw=
X-Received: by 2002:a2e:bc8c:0:b0:32b:35e6:bbe8 with SMTP id
 38308e7fff4ca-37609e0bf49mr56094441fa.21.1760322687901; Sun, 12 Oct 2025
 19:31:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250909-tegra186-icc-v2-0-09413724e781@gmail.com>
 <5d7491b1-8f9a-4040-b854-ff0b94bfd24e@kernel.org> <CALHNRZ-okVZ8tzKYa=jqudDu3dZ_Yq1CkeErdcvxi5xJEgJFbg@mail.gmail.com>
 <113725e3-3e82-4921-b045-8d5be3fed8bf@kernel.org>
In-Reply-To: <113725e3-3e82-4921-b045-8d5be3fed8bf@kernel.org>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Sun, 12 Oct 2025 21:31:16 -0500
X-Gm-Features: AS18NWAQiJg9z3LG2V5OdhoyC_61Fi6TbvtfpQle0_MdoVmLu8cof-HknUSef78
Message-ID: <CALHNRZ8r_bg-Pm1ZCoJT9sk++zQcq85R=8N6enL_Vcq=VziNwA@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] Support dynamic EMC frequency scaling on Tegra186/Tegra194
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 12, 2025 at 9:25=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 13/10/2025 04:18, Aaron Kling wrote:
> > On Wed, Oct 8, 2025 at 7:05=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On 09/09/2025 15:21, Aaron Kling via B4 Relay wrote:
> >>> This series borrows the concept used on Tegra234 to scale EMC based o=
n
> >>> CPU frequency and applies it to Tegra186 and Tegra194. Except that th=
e
> >>> bpmp on those archs does not support bandwidth manager, so the scalin=
g
> >>> iteself is handled similar to how Tegra124 currently works.
> >>>
> >>
> >> Nothing improved:
> >> https://lore.kernel.org/all/20250902-glittering-toucan-of-feminism-95f=
d9f@kuoka/
> >
> > The dt changes should go last. The cpufreq and memory pieces can go in
> > either order because the new code won't be used unless the dt pieces
> > activate them.
>
>
> Then cpufreq and memory should never have been part of same patchset.
> Instead of simple command to apply it, maintainers need multiple steps.
> Really, when you send patches, think how this should be handled and how
> much effort this needs on maintainer side.

To be honest, I was expecting all of these to go through the tegra
tree, since all the drivers I touch are owned by the tegra
maintainers. But getting stuff moved through that tree has been like
pulling teeth recently. So Krzysztof, what's the alternative you're
suggesting here?

Aaron

