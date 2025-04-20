Return-Path: <devicetree+bounces-168842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5C7A94894
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 19:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F6C316F98A
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 17:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C8C920B807;
	Sun, 20 Apr 2025 17:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BaiHKNce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA341E991A
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 17:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745170989; cv=none; b=mWEci6R+ZxX3oMXGw8ziCi260QWlYVzIG9hNvlj4V5NSjFJ+VkiDDMylHWakB/Qw0y53UVjIJqIAju1n2xaved7Ou709oHz2pk8g/hYSWJQBmt9tG8O/SBAXkAO577a1o+X411OkVuKxc7u9h5s0wdTjn3W10bPBTXx/9DmKM/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745170989; c=relaxed/simple;
	bh=OT8hAojKfGBI25DAq0ChA/nI2wFKnqPVqTBHSwlWrro=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lnFBXRzwVldJG8onTFatqTxMBR6dCCJ5fVD8c2nnQeDFzKIHD/anUMkrulRGhFvdSPtuBD6xIC32hgPvqUEsOLbTix1ORR8fyAHxNTFntCFiQgVCYw0iihpGQsbB4IQ5u/bf/m4gdq3KKpZCDHzUNNhD9h/rw+LuZltfVxzCC4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BaiHKNce; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5f63ac6ef0fso2326906a12.1
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 10:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745170985; x=1745775785; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=94OI61Qmw868CLwlFK0a6ayGGnbK7PL1vRKgwcsJ6K8=;
        b=BaiHKNcesIdiGYXMMQmdNu+GeDu4kRWgptDYj2mARa1pfrewtJKN29VVCL471TuLR5
         p5EzxvhuWud/2MzZ/aLgoSAv4ij1YZakoDpD1cNWDnetia/3ITgRNtvnhpl+WXplbzh9
         THtOCtV4hrRqXDN5JQPs+VwShJHjAsLaDnoNBIQOg1QUihEVixnP6FxL397Eoz+MpAN8
         1WFa5BS1uzI8JYRZXpcnKe6RetqaaFekppbl4WYbQt2Sv5La7fWNHA9JJ5e3KYwZmWi4
         ReD/F66YdA/cgBL+DN/4pDJ4jb96BODVdkJBGsjHC1y1A36q29bz5YaEXC0e9WAoxg54
         Qmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745170985; x=1745775785;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=94OI61Qmw868CLwlFK0a6ayGGnbK7PL1vRKgwcsJ6K8=;
        b=q416Wa9In3sZ0Cx45Dirk9dpWkaHBYdqnmSg7Rw8Wi9y18LjA3OFKYGKGO2CZpYYaO
         +WskJ6KKyY8Uc2JWIUqpc3lJg0ZzfmdDsh5KcnouUZru0kslKnyWrJh/ll0T1Vis5i7G
         RgAg5SQ65tpNk5Q9ltTRWk1Kt2IzXDfz/ez8S98xBFtwezvXelSQDD075o734leLuQyi
         9x1cajlhjYR19D1JkoRRlWXhMhAPLXf+DFgzjZ59HhqeAdS0DZYc8ww3YwEiN9Ib9Gae
         KhKYJ7Txvt/wkJtRixcDFfXkDf4Uj3q+yoK12NgFSpVxOpqB5ZXoQNuhEen8kJrdZc9u
         +66g==
X-Forwarded-Encrypted: i=1; AJvYcCXK13/Wui57mOYuO6JXDGp/cVtBvc2QQAA+kR6qoZPiSeJMNSgB4Bd76gryVOiRK4wau5Mbi9/OKTPX@vger.kernel.org
X-Gm-Message-State: AOJu0YyzKzFDM4OSTi9M4mezvjQVRFteGgT16YygLrDzSFf9/iHh2dja
	XEi2VaigTIfw2yrwmKBrbLTbszpaIcLTF4BHYSEMOZwGrej2WpL7cipqm4fUvfTIB82Ht3yPsm8
	oXmTmk23jYQjj528T7Q982gEpqbg=
X-Gm-Gg: ASbGncujDuxtQIGP3AHmTCUXs50sXZ/6pqksHuj1LDEpjcKcj+SKUiT7s8TsLcKMRM6
	GYjdaQIciw2Pe653ZMaostZRKz2M3xGRA67IcbVN8QfySB/iTgqAQDS9XLO4GZDijLE6U+3kQiK
	/03cHncTeTXaSdy9OG88SkPOkiJBD4+lqH0FpqGQdmQYa2f9fWYHsdSq0=
X-Google-Smtp-Source: AGHT+IGm/qhW7RxxGqgE9TkxiPozSlJRJuNqpTAlw8fbvhCQ/C7aEOmO2pE3XGjnDP+M+WAyZpU48wYHvTvZagWzwlQ=
X-Received: by 2002:a05:6402:1d4e:b0:5ee:498:7898 with SMTP id
 4fb4d7f45d1cf-5f628594334mr8047875a12.17.1745170984482; Sun, 20 Apr 2025
 10:43:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250419160051.677485-1-pbrobinson@gmail.com> <20250419160051.677485-3-pbrobinson@gmail.com>
 <5dd7825c9fcc83764fbb4b0b53704152@manjaro.org> <CALeDE9Nyt7Di2_u-Vf=6OCAg-6wmbz75Cs_MCfZrk6upbD9nZw@mail.gmail.com>
 <e111f8b9f499a158af5fad1942951e0f@manjaro.org>
In-Reply-To: <e111f8b9f499a158af5fad1942951e0f@manjaro.org>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Sun, 20 Apr 2025 18:42:53 +0100
X-Gm-Features: ATxdqUFjSHoMqdkC-Lh3e-QRl--9tH_9W7-UzywjrWL3LtvJJouCNr-dcednj7E
Message-ID: <CALeDE9MXE24mdxPNTMYroZG4Wa60bAGCJ-3rFNgpoB3U9JkEyQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Sun, 20 Apr 2025 at 18:17, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Hello Peter,
>
> On 2025-04-20 11:33, Peter Robinson wrote:
> >> > This adds all the pin mappings on the WiFi/BT header on
> >> > the SoPine baseboard/A64-LTS. They're disabled by default
> >> > as the modules don't ship by default. This includes, where
> >> > they haven't been already, UART1 for BT and mmc1 for WiFi.
> >>
> >> The patch subject should be improved a bit, to include
> >> "Baseboard" as well.  Having just "SoPine" is a bit too
> >> vague, and it should actually be written as "SOPINE"
> >> at all places in the prose.
> >
> > It literally has baseboard in the second line of the description.
>
> True, but the patch subject should also contain "Baseboard",
> because SOPINE is a system on module, and the SOPINE Baseboard
> turns it into an SBC that actually has the add-on headers that
> the patch addresses.  I hope it makes sense.

I mean it's pretty clear from the file that is being patched, I think
you're splitting hairs here, but I've already updated it in v4

