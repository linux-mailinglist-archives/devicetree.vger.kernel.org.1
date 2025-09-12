Return-Path: <devicetree+bounces-216288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 434C5B54438
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:53:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3B04480AA1
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48CFD2D3735;
	Fri, 12 Sep 2025 07:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NJN9zvHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849BD2D373D
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757663597; cv=none; b=lOfgMyqwMKGggmKLpKRiByoJJYMjFA3xEbrQ1zfNxX6eCQwy6LVfy9t+lBfjy0jjWkwFV/sLheamwYEv3oSsKy8pwP4kJpGCjNlIa6OHkZJfg2Of3uMQEdJY7QeqOaBidu7ml0ybMN6DrLDh79a6ILDcg5kxjTI9jj0bZDDDXrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757663597; c=relaxed/simple;
	bh=KmnrwXxFVTyqeJax/M1CvcptZS8VcmME3XGZYUosOfk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RiouLLdo2oD9G2CuyvZsCxxA7FAMRw4TpKVbhPJR/uZYm0GOJUI66P8iedVmrtlK9N7NnIqfL12bAxkY0EtwQbFRpBVh/w+cpkSGC0kXTkyMEqMqwmNDxXx7ma/88141s9ZJLq/oxid95sWGy606nzFy+v02HIgGzMHv2AyxYks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NJN9zvHC; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-32de7a2ea77so387547a91.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 00:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757663595; x=1758268395; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WPVEoJq4lZB4Q+ClZZ7rVrl01+42g7VGexqFei2zMq4=;
        b=NJN9zvHCI0rMS7i0So5JOubNDaRDVJaelL/TSqkyMtmO6pYlgGzJ/ho1DsciZmDOCu
         sBgf9+SzehaymKaPlJA3yEKhkoF9xaUAMuwtfYjhcW7ico7KH3/FofIYvI5B8XW0b05X
         Cf52FZY4aaJso8g86WmZIXccDkA8rXFFlV434TkRKtYhrsMbz5Snb058ZQXkp8M4YsJN
         qEd/Nz6gbGHqe35OSa+/EQt8pmTD7BR9YxbnlAcI9QdWWyq7aS5GWXbTJymCfXtHFvGB
         M3TDJ5KZbiRG+L4l/qWZ+8bwNweoEe7N66j9xhBfgjbmtYMyYua9ulImD7mnT5hthFTZ
         TSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757663595; x=1758268395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPVEoJq4lZB4Q+ClZZ7rVrl01+42g7VGexqFei2zMq4=;
        b=Rt+g7KFD2QToW7wyftbeDFWsQpMhLb/PMZBSJ+5yR97fkGRXo016BHosG7UzclwOPz
         wrDZg3RS/PyAEjVj73easg9TtBqYexSIs5Ra5gHAE9FvWCoGWtPFAEMHEM6Q2VAll74X
         SHKBSlQex9UPOwXclXMOkovvyqusXcUQBvgowX6pfDRYWDJu46KEGgTvO6XaOBVZXySO
         hzoKFeXwwfiMwloLKlXwc21k7DKBHAp12EkoUuyJmrE21EWMm9tll/uLozxbXEEQM3PN
         vmMQZEiXZcmbjzb+eCvqXY7Veqhaiqpd2PvDqNyZjPDofTZEv9dcFzLAIsDLr46/MIbj
         JqTw==
X-Forwarded-Encrypted: i=1; AJvYcCUB4g/DuWSXdGWkRT6gXlpdeXByHTrt8MG9pH8Vw+t0B6dW6n1h2mXzmjKZXJzu17K4UTeXKGyNXrLY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzp15jAUW7yUu+a5+8AtXnST5DJW9v+Dpyt9rt2WzsxWyaCkJ1
	yTOPho/PkZt138c8br6bRb/9nXCmZehCepcfI3clrgqDZkL1ZiVzI7Qk+2FdPHiCbNDTdeQaxgx
	r39OeC0/L+fF3CLeFAiEb08RQagR03IU=
X-Gm-Gg: ASbGncvpdxnj/awMHcAAPMIc4FmIy6UjMBjja112pV1/NI0qzxiffgVz6kkdI5WTzt9
	bwlKNhJzfAZ+0sjNkq+MrUEoUPKBxd8vl/YhVlcRwLJ78kc9wcdYOaQ+yfHiIrszGSzo6zSOelR
	vTuf4880FNi5O31d257aaY+O3d4vRnv5fbRZ1OPLsd3aW4fxM0MJWcz/EZnbFt0EBZ5C2qxg35D
	O18bz1E7iLhgTSHgX941CcQ5kULJ0redPm8ZZxR2iThOXiUWHTCDIjl/WISlS8/SQOhcjsVOkvV
	iJef/A==
X-Google-Smtp-Source: AGHT+IHjaXpGwRD0lHUERiNLmlKyrv8p9sgk+fYPVPKSQWtdYw+o31Znr8yn5mkyebZ20Xrqe1axXHWRJ5k5VACv1FA=
X-Received: by 2002:a17:90a:d88b:b0:32b:8b8d:c2c6 with SMTP id
 98e67ed59e1d1-32de4edd59cmr2043182a91.14.1757663594654; Fri, 12 Sep 2025
 00:53:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250910030301.1368372-1-linchengming884@gmail.com>
 <20250910030301.1368372-2-linchengming884@gmail.com> <87wm66d67k.fsf@bootlin.com>
 <CAAyq3SbXiPUjZE7OCAe1=uw4h82bFN7DSU4bLx1dhKe_XFtu=w@mail.gmail.com>
 <878qilbes9.fsf@bootlin.com> <CAAyq3SZUToRjWVgAX_=We7cMFjVjuGLvFYBSpOG=M_e_MD6aeQ@mail.gmail.com>
 <87wm659jol.fsf@bootlin.com>
In-Reply-To: <87wm659jol.fsf@bootlin.com>
From: Cheng Ming Lin <linchengming884@gmail.com>
Date: Fri, 12 Sep 2025 15:50:09 +0800
X-Gm-Features: Ac12FXzBpLGFEkjGEeEqqA7bS1jH-WatFOOBqSaHNTA4DxcerAMlS41-xnYkM5Q
Message-ID: <CAAyq3SaiVyh9Sr_Qj9h8kQ0ZRRVHjk=VRV5sHueeYjNmz2UW3Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: spi-nand: Add
 enable-randomizer-otp property
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: richard@nod.at, vigneshr@ti.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, tudor.ambarus@linaro.org, mmkurbanov@salutedevices.com, 
	Takahiro.Kuwano@infineon.com, pratyush@kernel.org, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, alvinzhou@mxic.com.tw, 
	Cheng Ming Lin <chengminglin@mxic.com.tw>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Miquel,

Miquel Raynal <miquel.raynal@bootlin.com> =E6=96=BC 2025=E5=B9=B49=E6=9C=88=
11=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=889:57=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> Hi,
>
> >> >> This is a NAND wide feature, so we should probably add a prefix, su=
ch as
> >> >> "nand,".
> >> >>
> >> >> Now, what about this "otp" suffix? Many (if not all) chips have a
> >> >> volatile setting for that. About the naming, "otp" often reflects t=
o the
> >> >> OTP area, which is not what you imply here, as you want to insist
> >> >> (rightfully) on the fact that this feature cannot be disabled.
> >> >
> >> > Yes, my intention is that once the randomizer feature is enabled, it
> >> > should not be disabled again.
> >>
> >> I believe the motivation behind this choice is incorrect and does not
> >> fit such an OS as Linux. We want to give the system administrator the
> >> choice to select and unselect features as it sees fit. So if there is =
a
> >> volatile way to enable something, we should go for it and we will pay
> >> the extra penalty of a set_feature() (or whatever) command after each
> >> boot. Making this type of change permanent makes development and
> >> debugging much more painful. There are plenty of configurations that w=
e
> >> refuse to apply with non volatile configurations. In general, stateful
> >> modes are problematic if they are kept after a reboot and we try our
> >> best to avoid them.
> >>
> >> Once this feature is enabled, for the lifetime of "a product", it does
> >> not make sense to disable it indeed. And the DT must remain correct, i=
f
> >> it is changed in a non compatible way, that's the administrator
> >> responsibility.
> >>
> >> So are there ways to enable this feature in a way that returns to the
> >> default state after a reset?
> >
> > Thank you for the detailed feedback. I understand and agree with the
> > principle of favoring volatile configurations to give administrators
> > more control and simplify debugging.
> >
> > Yes, it is possible to enable this feature in a way that it returns
> > to the default state after a reset.
> >
> > We can use the standard set_feature command to set the RANDEN bit to 1,
> > which enables the randomizer. This configuration is volatile and will
> > not persist through a power cycle. The feature will remain disabled by
> > default on each boot unless it is explicitly enabled again.
> >
> > I will update the patch to implement this volatile approach.
>
> I would be in favour of implementing this method. Hence, no more OTP
> constraint to express in the binding either.

I wonder if we could still go with two approaches.

For Macronix we may add a DT property in macronix.c to decide whether
to use a set feature operation or the special OTP program operations.

>
> >> > You are correct that this bit does not
> >> > belong to the OTP area, but rather to the v2 volatile register. The =
v2
> >> > volatile register has a default value that can be changed through a
> >> > special OTP configuration register program operation. Regarding the
> >> > "otp" suffix, I will remove it to avoid misunderstanding.
> >> >
> >> >>
> >> >> Also, this is a per-chip configuration, while I would have welcomed=
 a
> >> >> per-partition configuration. I can easily imagine two cases:
> >> >>
> >> >> - The boot ROM, for longevity purposes, expects the first blocks
> >> >>   containing the bootloader to be scrambled. However the rest of th=
e
> >> >>   system does not really care and disables randomization.
> >> >>
> >> >> - The boot ROM is not capable of de-scrambling, however the rest of=
 the
> >> >>   system relies on the (probably) more robust scrambling feature.
> >> >>
> >> >> In both cases a chip wide variable is not relevant.
> >> >
> >> > The scrambling and descrambling are handled by the NAND flash hardwa=
re
> >> > itself. Therefore, the boot ROM does not need to support a descrambl=
ing
> >> > feature.
> >> >
> >> > In the case of Macronix parts, the randomizer is controlled through =
a
> >> > configuration register, and once it is enabled it covers the entire =
chip
> >> > (main and/or spare depending on the randopt bit). There is no hardwa=
re
> >> > mechanism to enable it only on certain ranges.
> >>
> >> After thinking once again, I am no longer aligned with myself from the
> >> past. This is perhaps too Macronix specific in the end and if it is a
> >> fully transparent feature, then why not.
> >>
> >> Are there any ways we can read the raw data (unscrambled) once
> >> scrambling has been enabled? (I mean, without changing the user defaul=
t
> >> OTP state). Maybe one big difference with the raw NAND world that need=
s
> >> to be taken into account is that the chip itself always return
> >> unscrambled data, hence we probably do not care much, from a Linux
> >> perspective.
> >
> > Unfortunately, there is no way to do this. If a user decides to use the
> > randomizer feature, they must enable it before programming the user OTP
> > area. If the randomizer is not enabled before the user OTP is programme=
d,
> > any subsequent reads will result in corrupted data.
> >
> > Marconix raw NAND chip itself does not always return unscrambled data.
> >
> > The ability to read unscrambled data is dependent on whether the
> > randomizer feature was enabled and configured correctly. When the
> > randomizer is turned on, the chip's internal hardware automatically
> > handles the unscrambling process. If the feature is not enabled, the
> > data read from the memory will be the raw, scrambled information, which
> > is unusable without the correct key and algorithm. In other words, the
> > chip only returns unscrambled data if randomizer feature is enabled.
>
> That is interesting and might be useful. In Linux we will enable the
> scrambler if the data property is enabled before we get to play with the
> OTP anyway, so hopefully people will get it right.
>
> Regarding the property name, it is going to be a per SPI NAND chip
> property. I am still not sure whether we should make this prop generic
> or not. Perhaps the safest approach is to keep it vendor specific, but
> the concept of scrambling internal data for longevity purposes is common
> enough to deserve a nand- prefix. Although it's gonna be like ECC
> engines, we'll need to decide which part of the system handles the
> scrambling (software, hardware on host or chip itself) and whether it is
> enabled per-chip or per-partition when that's possible.
>
> I am open to suggestions.

I also think we may consider moving the randomizer support into the NAND
layer, not just SPI-NAND, since Macronix ONFI NAND devices also support
randomizer. And I agree it would be similar to ECC engines, where the
scrambling of data can be determined by software, hardware on the host,
or by the chip itself.

>
> Thanks,
> Miqu=C3=A8l

Thanks,
Cheng Ming Lin

