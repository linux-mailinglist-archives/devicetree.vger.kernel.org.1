Return-Path: <devicetree+bounces-149754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40476A40598
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 06:12:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5C893A815E
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 05:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E1AA1F0E5F;
	Sat, 22 Feb 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nsXw96XF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BE318C0C
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 05:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740201173; cv=none; b=KuDUVYSDwN7W2FYNR81lt24tsTgKMn6WFwzdfrDwNS+bnjU8uohTvt7dZXQHaKdZieryb0dh5bxT6yQXwv49ZJwYHXws1s94ICJY3cxWwgWIfad4JLzOILHCk65Wqwsa4dNH6FM2XWnWYM3vRIViFkuxLyNevlG7AauAAk+Ds5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740201173; c=relaxed/simple;
	bh=E4FIsE6nmLgxpG3V2YuLHeNNdUIktG/4o9yAJdRHopM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BmFRwb3dlfq9pqk/68mClKsgccjQ3jTDi71uF8wZHUg44qKbZ2wcOS/1Jd9lfNeqlGE0IPhdoe9hMuABfbdTpm0wvv7T1SZAlJcdCmR4UcnYe7/HEG4rrx1uMBtkt94Z2bZjb2bmsWAkWi3mYK+o6FQEVjczcif4OMUeYvCmmg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nsXw96XF; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38f2b7ce2f3so2033759f8f.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 21:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740201170; x=1740805970; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6T/KCHf+Ei6zi7zTvWLwzhq48X8JCTZYV766cOvpN9c=;
        b=nsXw96XFm+VtxYL56u+Aelwf9qw39Ko9BKSrEEGmr14DRpl+nGNtna3BVTBbh19Fw+
         zV3MYHad2iRNZJjfShwtRg/NzyQiI3xAaJaq6I4em+GTs7SK/HC95UGHn9CHDkUu4Ne4
         Fk6/QS0IYNk4A66MzjUlH4IyxBETFgVPhPQuJSSQWqTcDinmPxyrjdGk/1TwiY8DSrdT
         /mWOrqqyS85oxsis44d4NNjBUS2MON0uXbneGcsFJCTFUUjYbymYF/Ln6ijVkKFLzUuJ
         +HUoN2eNeej57OqKRUtGnCRK/TIyOMlrDEeLnxRefH/8mu4Cqmc4y+PzBRig64Qyk3Hi
         cyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740201170; x=1740805970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6T/KCHf+Ei6zi7zTvWLwzhq48X8JCTZYV766cOvpN9c=;
        b=kx/iMW1u4fn3CQY+a5RUmht/4pFrOphaUVHJzqZawwyShiUh/4LzM+W7PAh6diU2ab
         K12EPkDkTV6qsrxOGh8DLu57ZsxU0Mx5hZeZ9jqoLS2MnS8/k9BtGNziCAgwbiLtistN
         Udbkgf1n2QXhu7no/mA1FbjX8StsLsxV97f8g4gFROfSDJwzTL9eFa6fp3XEYhi3NvLg
         UQyTdqYxq4g8SLJvKwQe+Tpkn3b9ztnbbEEAdr8gVWkAfDGiibIlHkjxG+tQofmQ/FJw
         Rg1LEg+DpFB/hGVJDhtN8vuW2TrXVELzJ48n2IrXYBUpICO0y9ossbmGlhXUUoJYU2gz
         Y0fw==
X-Forwarded-Encrypted: i=1; AJvYcCXmpwsBplwtKiotwllkosOeR8jymaUaNs0vzE8PUjkD5VmFKIU+ZPK/L5+mKM8VtVmHRg0oHfWTBdli@vger.kernel.org
X-Gm-Message-State: AOJu0YymcUO048PC19ugGahJZ+DaIkLXxi5sL/o9c46BLQCxUKba3Dm6
	L8RTD0zwNsBRkL8c/y0CDhRWGBrfnpIAEeBOnJLgcXNNAFwYaO5UoUyovUKT9chib/tTURXD9Vj
	t4x2Zxp7I8jg+UGaKb8y0HlMWEDI=
X-Gm-Gg: ASbGnct54SyRHMadyAdiQRork8WJrmqADmWw97iY/gkdgDACGfuR0qLE8DuWws8Aztv
	bRIfI1O0fq+LJcXggXC9IRyD9YZHwVKqzqpX1oD7JyAA/aSujxfmDH2i8zJ5Mf6CHo6xHcWee9C
	mVnveSDSzp7xDPVAI9DUPC3bCNewb8LEnYwGenqOM=
X-Google-Smtp-Source: AGHT+IEW6AS6PpfMRepDRzL9ExNcBTNuvf/NS8ymolr77jne2YAUCpK0x5UZBFn7h33SprUxjhKLmpAbB1mx2B78zlE=
X-Received: by 2002:a05:6000:1a86:b0:38a:8906:6b66 with SMTP id
 ffacd0b85a97d-38f708267ffmr5716008f8f.38.1740201169476; Fri, 21 Feb 2025
 21:12:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220041010.3801-1-honyuenkwun@gmail.com> <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com> <20250222043632.GU16911@sventech.com>
In-Reply-To: <20250222043632.GU16911@sventech.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 21 Feb 2025 23:12:38 -0600
X-Gm-Features: AWEUYZmOz5ZgFaqw7x29fs1q8XxuuW6_nHq5zINvZiHD-ka87Z3BCTFNSH7lH2Q
Message-ID: <CALWfF7JWiZnqJCAqCK4-TjVuUTqv96+=u2pC2iNvTbCBOCLuqw@mail.gmail.com>
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 10:36=E2=80=AFPM Johannes Erdfelt <johannes@erdfelt=
.com> wrote:
>
> On Fri, Feb 21, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> > On Fri, Feb 21, 2025 at 5:13=E2=80=AFPM Johannes Erdfelt <johannes@erdf=
elt.com> wrote:
> > > I'll also see if I can give HDMI a test.
> >
> > Please report your results when you do. This is one of the differences
> > from the Orange Pi 5 Max. The HDMI1 pinctrls does not use the default
> > pinctrls like other RK3588 boards (including the Orange Pi 5 Plus).
>
> No luck yet. I do see this message in the kernel logs 8 times at boot:
>
> [   41.552751] rockchip-drm display-subsystem: [drm] *ERROR* failed to
> get pll_hdmiphy0
Oh, I believe you're hitting this.
https://lore.kernel.org/linux-rockchip/0dd48599-448f-4472-9a8a-54b7f0379c13=
@collabora.com/T/#ma4eb427de77b5a4806a2c2b5bef2fc8d4003f801

I included that patchset in the integrate-6.15 branch. I don't have
the problem on the Max because it has both the HDMI0 and HDMI1
enabled. However, with only HDMI1 on the Ultra, it's not handling the
disabled hdptxphy0. A quick hack is to also enable hdptxphy0 also in
the Ultra dts.

>
> I'll confirm with the vendor image that my HDMI setup is correct.
>
> JE
>
Jimmy

