Return-Path: <devicetree+bounces-230011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70210BFEE5B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A14A3A8C4D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 02:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE1C207DE2;
	Thu, 23 Oct 2025 02:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b="JeOKP1jW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1239B8460
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761186066; cv=none; b=c7wnreSJTXc536K+KONXpSbQwv1SmKOcc0P32IiBYiASOLMiZxkv08zxI0meP4W7xvIbSaMZpBT5HVJDFUgi1JQijuV9ii//9KYG07ZOg8JvNhJ4uEc+I5waIWCk9NhU5hBscfYwFbzXumI3TZ+QDykgcTwTx6w4CDhhlGcvMHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761186066; c=relaxed/simple;
	bh=R427Dmu3YODNR2POQX9bpNnQmIqw5THl/CmnS0STWbw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aSLKMrKAM1HVtl3+9j1GyjNUfCCWzZgD9G2mv0I3wGrCqFaUYJdWrNnGPLiJxWZZLKJ/DckYLGou5UXax6ad4Pln6l8p8mQgi4Q82Heazrrz39RMBAog1NVQll0AzcbL1za7sT50Lf2/76DYuRcSx1N17GfhwVdOZiOJPon5+xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com; spf=pass smtp.mailfrom=arista.com; dkim=pass (2048-bit key) header.d=arista.com header.i=@arista.com header.b=JeOKP1jW; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=arista.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arista.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-3c9a2fa38c1so111150fac.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 19:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arista.com; s=google; t=1761186064; x=1761790864; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R427Dmu3YODNR2POQX9bpNnQmIqw5THl/CmnS0STWbw=;
        b=JeOKP1jWkH3Q5sVlxkuytJ1976e3xdzNC7Buj5tcUiBp57HIu2pKPbyzNRpNpxglyt
         Xqt5s1ManbIWm75OI6p2fElNN9SjRuDsA8PklE6icmGCympivWXgtiX68QTSjuUQBY+t
         mpJrH54gY5c2NF8ieLSBXGedp8LqLDra2QQ87+VUm7G6IJcSeiAZiiM2kcdtbybXYovQ
         5ZGLAJzudMdyDsoi3dDZwHzG1OcqQyMv68sABuW1JwFz6h7PtEtexNH5q3xO2ja+KC4R
         TKhm2dSA/hIS1O5rH5Pzitn4ZwUvJUAr9Q9XEFhV+oNCF+q3lAOQTA32E1c7pGM2Mt7a
         zoZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761186064; x=1761790864;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R427Dmu3YODNR2POQX9bpNnQmIqw5THl/CmnS0STWbw=;
        b=bcv1jKsAVD4mP5zjSCUgRGyYwJxiy/7f3i8rM7YFmyIBLXWDnejsNwucQ/1JzCHbnQ
         QYhEYUcVcWE6cc/ZrbrBZLjuPzyQJguIBz/BXm0UCZ/aiRl+kDMkq/K8iUW7WQwh1//I
         Ni2c/AUFSM5Pr32AkxaiJ8joWvrYE/HzB67z5MQ/U5pkJ7giBAeCEVgMPrKan56GwmKC
         Uptlxvj1QUMnLNU3lr5tUuj91c+iiEPkj2z/cSfumqKJdZH5/PfLyiIE/zIsiNe8G5d9
         pYFArDl4AnXaj9fixDNcAAaAPPY3Y8iKVkLqO+qtZffw9mNRFRbdgCXmTJ4ya7cYdT1J
         OOsw==
X-Forwarded-Encrypted: i=1; AJvYcCWhI9eGKNEf56VPFMXTieNyg2CZXuR7lIBZL3kXp48Mc4DGDXbEd63eRmRXgHU80SBHgkhfgfuU04QU@vger.kernel.org
X-Gm-Message-State: AOJu0YwFGxvlIP5ddd9WeaUhVHvBaTuXkIlmbPlzgi3Y7pulIDLF7CqD
	fCOPsYFjK8ly49Ge45JPB6EPUTUiZrLuabP6Vx56OY2QlS67iiSgNtEt/3wR7xy6/47ZSuAuGrW
	n/gDMFu/++YeVMVZHCddZ1kTDhOrxoHQPBnoPjwsSXdLu+7KbdDe5W9Q2
X-Gm-Gg: ASbGncvSHJtmNcje0Cfoch03UVpWkQZTARTcMFO/FIz2+aYr++FljmSUmih1+jloFD5
	wYWk/DV1JlXW36u/kUn08g/Bi6Otf6TgNZKrBMHTAip3weubgToDZ8bAIaMCeZNULUCl2IE2E3l
	xtDhIwNo1hxSYBJ8q/s4DSCO3/IJUUYYwELEDEd914r/fWqNkXWgF8uBxh1fzrb4iUKg+BLB5HP
	DYPko617VRR0k9FDF6UkDgPluYVaC5yjxoCrVUB0Ip+BflucK75EshI7aIEi3kzyycMcN6ZHhyK
	0f54NfNnY/Ih4mRoT3F5r58mBam44Q==
X-Google-Smtp-Source: AGHT+IHmRLKymahTzphWXAcebUY/vioCOyMVmnPrpkx+yuxscWkWBl0sW3ZAInJO76yoYP2ATwjD1Umq93FfkvRAowM=
X-Received: by 2002:a05:6870:648f:b0:341:33fb:81fe with SMTP id
 586e51a60fabf-3cd88b3151emr2212186fac.4.1761186064007; Wed, 22 Oct 2025
 19:21:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <0f006338-e69b-4b3f-b91f-0cc683544011@kernel.org>
 <20251022114527.618908-1-adriana@arista.com> <20251022201953.GA206947-robh@kernel.org>
In-Reply-To: <20251022201953.GA206947-robh@kernel.org>
From: Adriana Nicolae <adriana@arista.com>
Date: Thu, 23 Oct 2025 05:20:53 +0300
X-Gm-Features: AS18NWAnX3tdmQK4mY34lhn-vtbSOeSxTP9A7wJ8Ju2u0pZ_JzhEiwf9-6ikOXI
Message-ID: <CAERbo5z6BzHqQxXdxPxmxE_eDR7GGGbt3A8kB0gQiWFBE-28Ug@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] DMI: Scan for DMI table from DTS info
To: Rob Herring <robh@kernel.org>
Cc: krzk@kernel.org, jdelvare@suse.com, frowand.list@gmail.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, vasilykh@arista.com, 
	arm.ebbr-discuss@arm.com, boot-architecture@lists.linaro.org, 
	linux-efi@vger.kernel.org, uefi-discuss@lists.uefi.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 22, 2025 at 11:19=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Wed, Oct 22, 2025 at 04:45:25AM -0700, adriana wrote:
> > Some bootloaders like U-boot, particularly for the ARM architecture,
> > provide SMBIOS/DMI tables at a specific memory address. However, these
> > systems often do not boot using a full UEFI environment, which means th=
e
> > kernel's standard EFI DMI scanner cannot find these tables.
>
> I thought u-boot is a pretty complete UEFI implementation now. If
> there's standard way for UEFI to provide this, then that's what we
> should be using. I know supporting this has been discussed in context of
> EBBR spec, but no one involved in that has been CC'ed here.

Regarding the use of UEFI, the non UEFI boot is used on Broadcom iProc whic=
h
boots initially into a Hardware Security Module which validates U-boot and =
then
loads it. This specific path does not utilize U-Boot's UEFI
implementation or the
standard UEFI boot services to pass tables like SMBIOS.

Because there's no UEFI configuration table available in this boot mode, we=
 need
an alternative mechanism to pass the SMBIOS table address to the kernel. Th=
e
/chosen node seemed like the most straightforward way for the bootloader to
communicate this non-discoverable information.

I wasn't aware of the EBBR discussions covering this. I've added the
boot-architecture and arm.ebbr-discuss lists to the Cc. If there's a prefer=
red
EBBR-compliant way to handle this for non-UEFI boots, I'm happy to adapt
the approach.

>
> > This series adds support for the kernel to find these tables by
> > reading properties from the Device Tree /chosen node. The bootloader
> > can specify the physical addresses using "linux,smbios-table" and
> > "linux,smbios3-table".
>
> /chosen node entries go in chosen.yaml schema in dtschema repository.
> But first, I need to see some agreement this is how we want to support
> this.
>
> Rob

Adriana

