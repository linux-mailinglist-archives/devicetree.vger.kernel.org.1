Return-Path: <devicetree+bounces-244822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0840CA8F99
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 20:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 889CA316D4FD
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 18:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE3E352F90;
	Fri,  5 Dec 2025 18:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="pjwfeGui"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C4034888F
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 18:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764960519; cv=none; b=JUZzQYHeycc/GsC4z4ebPELsIjW4fchYMM6eQUedidiWA7TqCzJoaOkiWhu3+RLxX2o/eIEONFsohJgtzfIv0Co13kLHqF+/o2RjcLg9JexYg9eoeIfczmnPV0PLoIdahHChkaoEvw7AKcbYJqizYzAL7zsNg0DkZ+SP18Nl/yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764960519; c=relaxed/simple;
	bh=1Q6EcbywE6ObkGLQJKdWlwUFKpn2ScLerpcjwePaETY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EFwreV+hslSuJwHmR+ByvnMCX49ioxEAd1Yc0OCmYOsj6AE7hSrWdlxgQIK1dISgXR49tkyVamLhANcZ/fKpoXtvwgm6aAe1d+U4ia+XV9YyTQN87xmvCiCiu659MWyHWKZFyLOu0EWM6WWoxyY8+dZGDHE0Av2y36ljQAHNYWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=pjwfeGui; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-295548467c7so30307225ad.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 10:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764960514; x=1765565314; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Q6EcbywE6ObkGLQJKdWlwUFKpn2ScLerpcjwePaETY=;
        b=pjwfeGuio6qMcI2rfrjJE5XnNbZk9mW6hMOr1Bg4Ox6cHHRKyffC3SLTGrv4hdCt9Z
         lLI4a+XxtXcOREOQHCX1dqQFp+n23t+b82ftFiEkNre248r2b1VDmX13jqNGyuiSuKPJ
         eqaIJunw1SfClfKngR1n7PRMJMW8xQyJf4uZZukf9IkmBiclAHjz0ncugPaE7PzK4A+U
         DSGQ0ZFmpIMZrWM9VIeJTKFmNKMhsu7qYZQiusYshomMDTCeKStTWEjo1t9mDPR+nUGP
         D+NoB07DL1kOJmPGeqWSQKGc6qV2fb276VTX1Lpi4Hz40rKxE6lquhV5OwpucDVMJLgT
         5Jqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764960514; x=1765565314;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1Q6EcbywE6ObkGLQJKdWlwUFKpn2ScLerpcjwePaETY=;
        b=xVnSFAkcji3JmpgyM8X6GBWQvlLXQKSLawXD8XEwAGAg+0/c1mQzwd00xVKM5J1Hoa
         HLyG6a/geuaMMbNnINhahdAz4BStdniyeoa+/bFdejUmgam0EfDssv+Lz87Pmq6H2CeY
         jTf56ENhGxo7pJfXkpAvpsotBFm1Q1Vpc3LTfanWlemffZ+nHQXaOs1G4V84twISTkqy
         Qdn932DRo+UzMrf4eCyIeOuS5r+0tHRJ5HH/KHqPy1qoh1Ra+x1iel1DXjr6rvEcPeeY
         LZsn7NzL4k8dk8F4/aPmo2se75/ce12yB6K6Hd7rTVVa8B6MQOMBs2CGIVrXRTobedK8
         nBAg==
X-Forwarded-Encrypted: i=1; AJvYcCX+/Q/SAgMNibSYjl9Q8v/StqYsfmgJdGTqJ4diQzlTABgFMaEvNQdjNJq9Etjo9/lmvyeV7+xabiFI@vger.kernel.org
X-Gm-Message-State: AOJu0YxXBjR4GNwJzS47SrrSyLkp8zQP0kfXcF++pMRJiZvRD4Ov0+jy
	KzGQyu/YIqVwSFzVOxa7qk+7FVlyAjJwy2Bn2HA0/rylwICsYPANFQz/mqwfx0M0cYppuJZm6Pj
	Pf/Ts3NfxqSoc6UkpOzofa4ahWhaJtNLHonUYfF3F
X-Gm-Gg: ASbGncuEcd9ugKsyobc0Ot/Sn9JQPN/9+f7eULtP7pt9wQxT1YeFtd1xgsUo8IEsnAv
	RS3Z9x72YkNtcNOOkSX6vKQE8K9DddaEzCsNH3RZveKz5mQPJv8+kygc5ObvrI1iGXwdFbHiZor
	J8gSL7+CYaqoXqqw1d7+bIlhf2ChtVWAN47trDrp8sLqFUVKeAzDnvxLAKPaqj1gJsA0Mo6V65A
	ZgJfoYf+8hSCRlIPbvNERSCIujOdcGeA1VmbgpfSssjTs4sM887UwKFZh5FwhRQqg5TRMZG3IyH
	+jMaIbuEyN127jNWUz6W+2zCMEu2fs9W/V/izQ==
X-Google-Smtp-Source: AGHT+IHPjKxmUgUnc41hN8InTFTUB04ZMTHM8NxbTIHlyyEkurGa6h5cB+riJJxf4O6UOMxvtJ+cStktzfIrQZXN+UY=
X-Received: by 2002:a05:7022:24a4:b0:119:e569:fb9b with SMTP id
 a92af1059eb24-11e031662c8mr92285c88.10.1764960513510; Fri, 05 Dec 2025
 10:48:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com> <20251205-phyb4-v8-1-c59ea80a4458@google.com>
 <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org>
In-Reply-To: <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Fri, 5 Dec 2025 10:47:57 -0800
X-Gm-Features: AWmQ_bmySTT8joxXt75c1w2iUmXVlvf9G0SNEi5yExzmfdZw7r8lYP_ul02mNBU
Message-ID: <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 5, 2025 at 9:13=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 05/12/2025 04:54, Roy Luo wrote:
> > Document the device tree bindings for the USB PHY interfaces integrated
> > with the DWC3 controller on Google Tensor SoCs, starting with G5
> > generation (Laguna). The USB PHY on Tensor G5 includes two integrated
> > Synopsys PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo
> > PHY IP.
> >
> > Due to a complete architectural overhaul in the Google Tensor G5, the
> > existing Samsung/Exynos USB PHY binding for older generations of Google
> > silicons such as gs101 are no longer compatible, necessitating this new
> > device tree binding.
> >
> > Signed-off-by: Roy Luo <royluo@google.com>
>
> Why intentionally dropping the tag? How are you handling this patchset?
> Rewrite every time from scratch?

Hi Krzysztof,

I dropped the tag because a new file is being modified in this version,
Although it's just MAINTAINER file but I thought you might also want
to take a look. I wasn't sure if modifying a new file qualifies as
"substantial" so I erred on the side of caution. I should've called it
out specifically in the change log. Sorry for the inconvenience.

Regards,
Roy Luo

>
> <form letter>
> This is a friendly reminder during the review process.
>
> It looks like you received a tag and forgot to add it.
>
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
> of patchset, under or above your Signed-off-by tag, unless patch changed
> significantly (e.g. new properties added to the DT bindings). Tag is
> "received", when provided in a message replied to you on the mailing
> list. Tools like b4 can help here. However, there's no need to repost
> patches *only* to add the tags. The upstream maintainer will do that for
> tags received on the version they apply.
>
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/s=
ubmitting-patches.rst#L577
>
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
>
> Best regards,
> Krzysztof

