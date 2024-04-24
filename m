Return-Path: <devicetree+bounces-62087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEA28AFE13
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 03:55:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E45B81C22F28
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 01:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0CB6DDA0;
	Wed, 24 Apr 2024 01:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hexhyh8x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403748836
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 01:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713923738; cv=none; b=q2jKEFk6Ecghx7e6D+3BKpdyRDf7Yg68okwlDdlD2C2fShZ16Apxjj6YAreEQQ5nX7Dy94pPrFIBqcUym1jlMrYOFzhfSqGzHuVDFzrcdIFZT4eDAkshZYW3ZqCnZrFg7WXEf7OAH7hwkzXIEnlor/k0FFk59CH6uH+dWgHR3Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713923738; c=relaxed/simple;
	bh=dJ8KHPb1K0T0HL7uck76kf0jIQnZoTF13YWbmRrszFQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GFC5DxF7rK3wV7iHWyA0tm42w7xAExBqFS86n4P0eXU9LUI54gNoIBFD0h6eYdHuFSTot+IXPOXUJj0+KlZ1z2ukHvchKTHW3cMCBY0pqjvNLwP0UkWjTzk4TCmlSqeJQcNtzAScjlI3N5f6JE5jREYK6Sp8okyz/qGPlV1jcgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hexhyh8x; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-69b5dae6a64so3885526d6.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 18:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713923735; x=1714528535; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dJ8KHPb1K0T0HL7uck76kf0jIQnZoTF13YWbmRrszFQ=;
        b=hexhyh8xcZ0ZFYkpPp6/AD7cxHlzBUcqwX7d7hlK63qcJbPz+oPMuf2PRnW8iv9Xp/
         A7Zn2RFIC1smf3jZiG/U8FKcyMhNnHzXdsh3t5Jcl5aj8qV9U7yhkIRYisG3D7fO2J6F
         cDEudocpsXjJA0ZJ90aqCVj4Ea7/CgtFGnxWJE/HME5JBOrKDax6zxAPnK1T1VJdknVw
         +5JqPa2fQHuXYAOIiH+pgaxkvJMsOs0OCKKedBeGeW2QAkqxxcbmYQ0g1ODxtdUeaSOZ
         g4zrUmYDUweDqEGqYKZGnLOdrM8jRvnyecRWPM0UGUGXlDI3m44bTdTvmS+CXX+dfIW8
         v0Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713923735; x=1714528535;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dJ8KHPb1K0T0HL7uck76kf0jIQnZoTF13YWbmRrszFQ=;
        b=MOp2XEPqg/ek7rXbFEt/jISvgwSQdwLZut8N8qt0jl7wH5cQb3d8eOARatjuoftI8W
         9ox9P/IgcGVM9cV0oeZ2AjBq2AWv2CoYiNdNdyFHMNWnMtLADd4AUpXF3uV21RKM2Z16
         3hhzSZ4NisGXOPnW/o05QbOyOGsaEQkECBPU0X8bf0kamL7WxasDpWQEWD0BvXEPBfCI
         y2O4Cx1DUcyQXZtyKjqKMk0wR3HPjbXW5Tenq42OQap1dgiiDXfNHLFhV1Ptc4LYNeiI
         ZTTxuB1R/1Y5d4wyFxoDKthng/If75gCZv20FAkoPkIQP3VdPd0AeRSv1Y4BI68Xnt6O
         knvg==
X-Forwarded-Encrypted: i=1; AJvYcCXwojFum0DSlExIGYBxGlszzqt44GASUrWy1QSy3HEjdYhRhPWWgEcE3PGRI+NKSfM2KztHcUxM+TjaEdIhrPxoqaeqxEhNKd1zRQ==
X-Gm-Message-State: AOJu0Yw06CM72ieaH9+OL0mGyDipXBtHgvsp7BU8Nyj01349HP40mu/j
	U9k2ZOg0vwf6tzCIQxSj+yAvbKpCPN2CF8BcIzmy9R0MZpFOEc5gjY4SlOLF2BBkWXDpiv8HnL1
	JRWyxB5S0sZlACB8ZnYXUK/3D0mIgZmJA6wbYiA==
X-Google-Smtp-Source: AGHT+IG8v5tfIrvn8fxObpffuM620VUlRCBGMnFCE00GJ3FwLxmlptq8yaXk3f7Ff5Nt5Z+1L+yQIK3lS+SnBB4wIos=
X-Received: by 2002:a05:6214:f2a:b0:6a0:7f43:eb1 with SMTP id
 iw10-20020a0562140f2a00b006a07f430eb1mr8789131qvb.19.1713923735084; Tue, 23
 Apr 2024 18:55:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422060811.670693-1-xuxinxiong@huaqin.corp-partner.google.com>
 <CAD=FV=WRLLuOkCJeM6RdAb6xLN-cPH+hfWbOv9-LujB-WMGEFw@mail.gmail.com>
 <CAGoogDB-mj8_xu04w3V2ZxOBTWoXcPKrVR1NRt6BFcpjHX3-7Q@mail.gmail.com> <CAD=FV=WwsR9e-ZXJRY11FvdUZ66YPy9vqmY_=sGDw5Wqk1eV3w@mail.gmail.com>
In-Reply-To: <CAD=FV=WwsR9e-ZXJRY11FvdUZ66YPy9vqmY_=sGDw5Wqk1eV3w@mail.gmail.com>
From: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Date: Wed, 24 Apr 2024 09:55:24 +0800
Message-ID: <CAGoogDBCzfKwkAA-VAs3_Cdw_4oFO94mt7yjy47Sp2RAtqtPxA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel-edp: Add panel CSOT MNB601LS1-1
To: Doug Anderson <dianders@chromium.org>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Doug, thank you!
We had reported this info to the CSOT to correct the vendor id.
If they confirm to fix this with the same product ID, we will submit a
patch to fix this.


Doug Anderson <dianders@chromium.org> =E4=BA=8E2024=E5=B9=B44=E6=9C=8824=E6=
=97=A5=E5=91=A8=E4=B8=89 01:01=E5=86=99=E9=81=93=EF=BC=9A
>
> Hi,
>
> On Mon, Apr 22, 2024 at 6:28=E2=80=AFPM Xuxin Xiong
> <xuxinxiong@huaqin.corp-partner.google.com> wrote:
> >
> > Yes, I read the edid from the panels, one is CSO and the other is CSW.
> > The details are as follows, please help check. Thank you!
> >
> >
> > 1. MNC207QS1-1
> > edid-decode (hex):
> > 00 ff ff ff ff ff ff 00 0e 6f 00 12 e7 00 00 00
> > 1e 21 01 04 a5 1b 12 78 03 8a d5 9c 5e 59 90 25
> > 1b 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> > 01 01 01 01 01 01 ae 3f 80 18 71 b0 23 40 30 20
> > 36 00 07 a4 10 00 00 1a 00 00 00 fd 00 28 3c 4b
> > 4b 11 01 0a 20 20 20 20 20 20 00 00 00 fe 00 43
> > 53 4f 54 20 54 39 0a 20 20 20 20 20 00 00 00 fe
> > 00 4d 4e 43 32 30 37 51 53 31 2d 31 0a 20 00 32
> > ----------------
> > Block 0, Base EDID:
> > EDID Structure Version & Revision: 1.4
> > Vendor & Product Identification:
> > Manufacturer: CSO
> > Model: 4608
> > Serial Number: 231
> > Made in: week 30 of 2023
> > Basic Display Parameters & Features:
> > Digital display
> > Bits per primary color channel: 8
> > DisplayPort interface
> > Maximum image size: 27 cm x 18 cm
> > Gamma: 2.20
> > Supported color formats: RGB 4:4:4
> > First detailed timing includes the native pixel format and preferred re=
fresh rate
> > Display is continuous frequency
> > Color Characteristics:
> > Red : 0.6113, 0.3671
> > Green: 0.3496, 0.5644
> > Blue : 0.1474, 0.1064
> > White: 0.3134, 0.3291
> > Established Timings I & II: none
> > Standard Timings: none
> > Detailed Timing Descriptors:
> > DTD 1: 1920x1200 60.000 Hz 8:5 74.100 kHz 163.020 MHz (263 mm x 164 mm)
> > Hfront 48 Hsync 32 Hback 200 Hpol P
> > Vfront 3 Vsync 6 Vback 26 Vpol N
> > Display Range Limits:
> > Monitor ranges (Bare Limits): 40-60 Hz V, 75-75 kHz H, max dotclock 170=
 MHz
> > Alphanumeric Data String: 'CSOT T9'
> > Alphanumeric Data String: 'MNC207QS1-1'
> > Checksum: 0x32
> >
> > 2. MNB601LS1-1
> > edid-decode (hex):
> >
> > 00 ff ff ff ff ff ff 00 0e 77 00 11 00 00 00 00
> > 00 22 01 04 95 1a 0e 78 03 a1 35 9b 5e 58 91 25
> > 1c 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> > 01 01 01 01 01 01 09 1e 56 dc 50 00 28 30 30 20
> > 36 00 00 90 10 00 00 1a 00 00 00 fd 00 28 3c 30
> > 30 08 01 0a 20 20 20 20 20 20 00 00 00 fe 00 43
> > 53 4f 54 20 54 39 0a 20 20 20 20 20 00 00 00 fe
> > 00 4d 4e 42 36 30 31 4c 53 31 2d 31 0a 20 00 37
> > ----------------
> > Block 0, Base EDID:
> > EDID Structure Version & Revision: 1.4
> > Vendor & Product Identification:
> > Manufacturer: CSW
> > Model: 4352
> > Made in: 2024
> > Basic Display Parameters & Features:
> > Digital display
> > Bits per primary color channel: 6
> > DisplayPort interface
> > Maximum image size: 26 cm x 14 cm
> > Gamma: 2.20
> > Supported color formats: RGB 4:4:4
> > First detailed timing includes the native pixel format and preferred re=
fresh rate
> > Display is continuous frequency
> > Color Characteristics:
> > Red : 0.6074, 0.3691
> > Green: 0.3437, 0.5673
> > Blue : 0.1445, 0.1123
> > White: 0.3134, 0.3291
> > Established Timings I & II: none
> > Standard Timings: none
> > Detailed Timing Descriptors:
> > DTD 1: 1366x768 60.001 Hz 683:384 48.480 kHz 76.890 MHz (256 mm x 144 m=
m)
> > Hfront 48 Hsync 32 Hback 140 Hpol P
> > Vfront 3 Vsync 6 Vback 31 Vpol N
> > Display Range Limits:
> > Monitor ranges (Bare Limits): 40-60 Hz V, 48-48 kHz H, max dotclock 80 =
MHz
> > Alphanumeric Data String: 'CSOT T9'
> > Alphanumeric Data String: 'MNB601LS1-1'
> > Checksum: 0x37
>
> OK. This made me look a little deeper. I believe that the three-letter
> code is managed by UEFI and I found:
>
> https://uefi.org/PNP_ID_List
>
> ...as far as I can tell "CSW" is actually correct for CSOT but "CSO"
> was _not_. Looks as if CSO was supposed to be for "California
> Institute of Technology" (Caltech). :(
>
> We're probably OK with the recent work that Hsin-Yi did in commit
> bf201127c1b8 ("drm/panel-edp: Match edp_panels with panel identity")
> to match against the panel name even if Caltech does ship a "CSO"
> 0x1200 in the future since it looks like the string you added matches
> the panel.
>
> That being said, is there any chance that it's not too late and you
> can get CSOT to fix the EDID on "MNC207QS1-1"? Can you also make sure
> that they're aware of this and don't make the same mistake in the
> future?
>
>
> In any case, given this investigation and the EDID I'm going to say
> that the panel you've added here is fine.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> I've pushed your change to drm-misc-next:
>
> a6325ad47bc8 drm/panel-edp: Add panel CSOT MNB601LS1-1
>
> -Doug

