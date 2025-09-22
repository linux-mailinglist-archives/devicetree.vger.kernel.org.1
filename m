Return-Path: <devicetree+bounces-220002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBCCB912F4
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 14:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1F9542155A
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 12:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BFA41A9FB7;
	Mon, 22 Sep 2025 12:46:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697C03081C1
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 12:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758545181; cv=none; b=BIUCZnr5rxi5/q1pHR3KqgtvaRFv46RcL7qJRgDgO3aZlknsdpRr3m86dAmBLCcZ1iElXOGZOFylzjZkenP+CeCoeOJ68ARiacXb0mgqSpwg91cqD9thCEtVTtQRp1WiQPqioR0HlDe3jkzX0Jj6s6I79yAqwA/YC3jvAfo1Htc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758545181; c=relaxed/simple;
	bh=LalxEdf2CLHD+3/DoosjP7R0lybr3lNihZe4lb2nS2I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i89WTvwvcDtOfb7XnWtqjrw0e3pixd9sUpmEmyWwKop8KamtdZVS3V19k0FrGXOZdakCtCGeWEcozNoaRfthEbJ0x5+NJDlAsymV4QYBEWOoOpYA3piclpTp3Jyym5h2pFCeelNL0xpC334AzXmdx56XnJE2gb7HL2EVfjPNlCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-8e8163d94bbso2508318241.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 05:46:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758545178; x=1759149978;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t5J4VRvr1gr76F3lInaspOR1L44Cm4laCA28EiGvaXI=;
        b=JocxhXcdE5IUArW6/Bgl6vyim3yx4UKRJf6gvUfjgVWlLCNfW1zg1yJ+3DRf3lieA/
         58CzpNDCpqomuMCTriVtQL8pCqp45vzZvX+Teyd+zF3sY8ZPk/JRfeeOLILqnR82mZS0
         wJOZwVHbxqJvjgILrzOHy/vBXaOf1kRwarhka64nj3WAYa5S6pbpWerWLAhBKQQhXdwG
         LUT+GfxRrWjCs2yCLT0nDQ2cvQ42JjZ2SiK2i6ZYj5/iqsbjx5t4BIDUPnFcm75Vhyvs
         eQXp7dM9YQLEYQKBBTQGcdNmQkCmyspiPPq0LklKSigFNlt8XEv8snweLavy+NTrpk9M
         oJ3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4++xSRiOsC6y4om988JtRwo8N2B5OCsCQVfkp5/9sz41fIC5q2VjlCmeQ7pJ4VVlp77iqL+XT+oiQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwAbaN6LYiCvgyeSq9Ez++M6zHKnucgMx0xVenwAGFK0JQ5XGKx
	T+huqXCbFSgccSiKBYHSDhNWHIpwTgA9yww/M2pxP9jkSWMC48iXvQ4qG5Szg3zI
X-Gm-Gg: ASbGnctu6cnY2OF++3pnMRWni2oukCQRsuEHALC0NyuZjjf7KEeUtzjkVP3VuYsdWNT
	Ym0lKYxQjSEfrcEZ2YIP6wQxWPVK27Bhx6bEdMfUPi+ASYLEJ+5oPc0k7h9fhLqNc0uIEfTrb5I
	dxkj9gUj5KUiKpnOxV7ayvk0HLsWAr1jw1f/PPha4AbVJpGU69bkBCgZZmQrqfzSVEcHJVSkMdv
	aICP54ThNLB2R2rq6/I+Qnl6+c7nZFoajV7cSOI21e7gw06gSWWD30pIYxJHx70sauM7Wfr46Yn
	QwZJ0UQVaxKihy7LKnCY3tXpRlLmRdVRTdfehOfnOYEP+2ce41Oh2ce513ofoSBL984uvtk17lg
	nEwUsSAf1nTotKvUG3iNqOcZ/KeRAg+RZ2MbtAM3aJcG8AIwJ0v59bG8PwzId
X-Google-Smtp-Source: AGHT+IHJ7b404HFUCaE+hg9SMaSe+sMx9GxmHHP2b6ln1tEApy+og9yBRTI+AbjnbGJlJPGYrgH+IA==
X-Received: by 2002:a05:6102:3fa8:b0:534:cfe0:f86c with SMTP id ada2fe7eead31-588e4de4f32mr4461905137.15.1758545178027;
        Mon, 22 Sep 2025 05:46:18 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-59c0c715bdbsm1508950137.8.2025.09.22.05.46.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 05:46:17 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-557a2ba1e65so3690356137.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 05:46:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUiA+osd4z6ZLjVSMDwNogsdybUQ+DGyaETeZB2UuJpFcED1ygT9aNNksQ2nwuPVT6UFpy+d75jIISp@vger.kernel.org
X-Received: by 2002:a05:6102:3911:b0:5a1:ad18:4a52 with SMTP id
 ada2fe7eead31-5a1ad1854a9mr1056291137.12.1758545177149; Mon, 22 Sep 2025
 05:46:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250920064428.5544-8-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250920064428.5544-8-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Sep 2025 14:46:05 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVONJVkvBj_AYZxkCZ1Fhr95HGSMNbQa-nn6+NmZc-R-g@mail.gmail.com>
X-Gm-Features: AS18NWC3NFwLCTMrNfKZ2H-zizbHeBjjhWejGJ6R4dTa1H9iB4dRfBDjP3fzvZE
Message-ID: <CAMuHMdVONJVkvBj_AYZxkCZ1Fhr95HGSMNbQa-nn6+NmZc-R-g@mail.gmail.com>
Subject: Re: [RFC PATCH 0/6] arm64: dts: renesas: add SWDT
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Sat, 20 Sept 2025 at 08:44, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> I forgot over the years why we did not enable the SWDT on R-Car Gen3+.
> The reason is that it is used by the firmware on Renesas boards.
> However, this was not documented. So, based on a previous discussion
> with Geert, here is an RFC how this documentation could look like:
>
> * add the complete node to the SoC DTSI (here only R-Car H3, M3*)
> * mark the node as "reserved" for the relevant boards
>   (firmware should have done that(tm))
>
> If this approach is acceptable, I'd handle the other SoCs, too, of
> course. Looking forward to comments! Passes dtbs_check here BTW.
>
> Wolfram Sang (6):
>   arm64: dts: renesas: r8a77951: add SWDT node
>   arm64: dts: renesas: r8a77960: add SWDT node
>   arm64: dts: renesas: r8a77961: add SWDT node
>   arm64: dts: renesas: r8a77965: add SWDT node
>   arm64: dts: renesas: salvator-common: mark SWDT as reserved
>   arm64: dts: renesas: ulcb: mark SWDT as reserved

Thanks for your series!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

