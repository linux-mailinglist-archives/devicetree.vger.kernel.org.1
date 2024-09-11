Return-Path: <devicetree+bounces-101999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D360197504A
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:57:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C4E81C22647
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0005185B6F;
	Wed, 11 Sep 2024 10:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="esdDKz+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FDA153BC7
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726052213; cv=none; b=Zf8YqlL3Foe1RdFL+hYg7Eb0m6IzK0aFGY1nmQ2vwHiIQpRf4xuVXq8gMuGss4E7WXtt295GKPE93SxOIPJnv/3SVNMHUD/M9fxezl35QOLE1MGYX1r8QDLQwF2oD6OuIZ9nnNoYcPxfJH6BQR85A/ZKtcHJbl+m8KTTwje+RAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726052213; c=relaxed/simple;
	bh=yMM35HUT7miV6QtJLuFsWwf5iXiMbNclaktulBrMxBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ehC9v0Re7H1qJvr7rsfwnQ8usm59qzsuUUGyvpQCWjNqx8IiSfVkLRdh+G6Dsbp0lmrcMtVpmyW6484B7qZ9yYe7uFxlJMoDn3299ReCEZvWnDGgvdwfwyNM/hT7lvcuvckPCZopet3cPqPJteRYNMR3hCUdk5lWHKB3QEDapIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=esdDKz+F; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5012813249cso1345928e0c.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726052210; x=1726657010; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yMM35HUT7miV6QtJLuFsWwf5iXiMbNclaktulBrMxBI=;
        b=esdDKz+FLLnnv+74bU0OZyTntKH9JmUujHJVdGmj8eiIGqnzdJXUZ/GIi6wzTRdLX3
         rPPBIY0TqziqyApGiPLVnJIzc3aPYvkpBAhYb+P2bgAcLMyWhzfh865WKA310ZQs4/fc
         T7/m82ZXTIV6pmkmxdbFDq4cgl+3u0Fqb3aDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726052210; x=1726657010;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yMM35HUT7miV6QtJLuFsWwf5iXiMbNclaktulBrMxBI=;
        b=RL5+EGFXqiYwrm6ogcvz7Ex2obFlSLq9xVPcki7Nf4RP2U93or+FuFAumrt2P+Gsav
         QRcYNtsNYpasx1c/ulCad+L5T1OjuFF7UEH3XX2wT9VUG7lTvj30wzp7tCM0OJYjwCTp
         tnnwzWv20+rUsy0XXBp7O/eyck/4dDx9efEI9TqeDfVQ3Anpiw1H4vMXFgZW1dxS+qxA
         SJ+bKxDAim9dDD9Cd9Kv770WojH8KKu58s5x4OIbdpvWZ4rhoOB+Sez2tQyJtLMrnaHK
         VwgOJDRQ4cOwsHnoabFKbcnMYQ/QUgDDNCj3SlkRiZp2leJTQERepG0E0cczdwPif0Dz
         XKiQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9+ZRdgpzlWMq4Yt/oSNssL3HBTj+Jgb79JD4yFSJGKdP8S37XLB98y1OiIopxclul2D5ksfRNhM8e@vger.kernel.org
X-Gm-Message-State: AOJu0YypIkrXOMRMWzERxZHJ+qU9wtBebfhFfKT46oQ3RmWEQFhiVZDm
	uuZpYHwjJSnHIdNrAABm1MJ9e4jsHBOVBQmWOndpUYrGNpA8syZ4klmMIanNeoeRWsUw6UjSsTQ
	p1w==
X-Google-Smtp-Source: AGHT+IFOqkuaeF+gK3RTLkXLV/a6daV161Ytbugs4rgCxX7K3xiSgqVmjD0M2MAO0sNADbajjkYFZA==
X-Received: by 2002:a05:6122:1e13:b0:4f6:b610:61bf with SMTP id 71dfb90a1353d-502142358d4mr14469532e0c.8.1726052210146;
        Wed, 11 Sep 2024 03:56:50 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-502f9b1b6dcsm425048e0c.43.2024.09.11.03.56.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 03:56:49 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-49bd27b3507so1845577137.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:56:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXdnuSQBnOm0kP+4Lri81eTI9ptz7AlZoYXO56/rHLPVhg/SPEEEY6p+ltqRzcYSnWF4jPCXEwrGMnJ@vger.kernel.org
X-Received: by 2002:a67:ff82:0:b0:49b:f255:1779 with SMTP id
 ada2fe7eead31-49bf2551aa2mr6702532137.12.1726052208866; Wed, 11 Sep 2024
 03:56:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240909111535.528624-1-fshao@chromium.org> <20240909111535.528624-6-fshao@chromium.org>
 <01020191e0b103c3-00fad6e7-f81f-4a76-a75f-1420574f71df-000000@eu-west-1.amazonses.com>
In-Reply-To: <01020191e0b103c3-00fad6e7-f81f-4a76-a75f-1420574f71df-000000@eu-west-1.amazonses.com>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 11 Sep 2024 18:56:11 +0800
X-Gmail-Original-Message-ID: <CAC=S1ng5+K5Rn7b6XVfm6rcJnBH4Ggm8vybSSeRgDX2tdv-VDw@mail.gmail.com>
Message-ID: <CAC=S1ng5+K5Rn7b6XVfm6rcJnBH4Ggm8vybSSeRgDX2tdv-VDw@mail.gmail.com>
Subject: Re: [PATCH 05/13] arm64: dts: mediatek: mt8188: Add missing GCE clock names
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 11, 2024 at 6:46=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 09/09/24 13:14, Fei Shao ha scritto:
> > Add the missing clock-names property for GCE nodes to fix errors from
> > `make CHECK_DTBS=3Dy mediatek/mt8188-evb.dtb`.
>
> I've sent a patch [1] relaxing the requirement for clock-names in the bin=
ding.
> There's no reason to make clock-names mandatory, as there is and there al=
ways
> will be one single clock for each GCE mailbox - and also the driver is no=
t
> trying to get the clock by name, but rather gets the clock at index 0 any=
way.
>
> Please drop this patch.

Acknowledged. I'll drop this in the next revision.

Thanks,
Fei

