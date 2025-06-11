Return-Path: <devicetree+bounces-184630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED0AAD4C88
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 09:24:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDDA93A8520
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 07:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713E722D9E0;
	Wed, 11 Jun 2025 07:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YkM+KI4u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AA423185C
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 07:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749626662; cv=none; b=By//T5ekhZqrCk15xqos6PCn0VAOgnzIybkaKjvwqHp0zRa32FFuf8bZOsCyE9qUr9rMSpE4U5H5SB20eOO7537FjXDfqp2EXNyNx75j6Rt6pzeoStkc6dPNui4DFQY2XXP8jUoFhytpzl9wU3H8FBl45/5S7iduIGC75NukRkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749626662; c=relaxed/simple;
	bh=PGUyVlhX1XR9OTUnYBDGGzM3RbZZVXmvnLfsA3dNE2w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LFnONF85MtHh8pFU6co4ceedS1QSlStuPkFR4XGfsLcmsE8T5jusitt4sIqltD/zyNfaXTs+Be4lY3nAXvHQGd+2dkGVV/VPGFIKRcWltSIHdhflrwfBpyAFCkIw9VOouDO7ofUtTr4s9TVzzlk0N2WBIJfpNMn/HMGMUEmRIkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YkM+KI4u; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-55365c63fa5so5487841e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 00:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749626658; x=1750231458; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RV68OruDfKfv4QIgxDKru8eModLCKW8eRWNWyOrjUwA=;
        b=YkM+KI4ujX2PEDIa/yTvwz/f3XLPcArJqrMf8PyJ5z1R0mtUHPvui4+VLD2lvKAhx0
         89p1HS65EmcNwIiIqVa/0B5RHciBFQKjZhIlen57oDjfT/cy/W/TVQcxqd1N03QCr3/9
         ar9uhEfRhQm4Qlei5ftP3uyNF7G6UlzAHNQy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749626658; x=1750231458;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RV68OruDfKfv4QIgxDKru8eModLCKW8eRWNWyOrjUwA=;
        b=ut6YVsteNb9F/8Lx7cK5B1UQkny0E2737ILtTbvog3r9/1i23luISealLtEmdmxlv0
         7EL1oIw+AiNBsWzmAr3FtVQe9AFsgBdzJ5b7rawRR+owesYcdOxCIprncYjIilhDWY6x
         JgICuAH2/DqYMOkhC+ePAvjkoc73QDzvD7zugw01dOnSx545aJdP2rIsqsRVdP4TG2ns
         cF+gqLuDaeZ19Rq6HTjZelMS9E4UiDUNrAEJTYu2rvAyaEc37YmgBDkkrGvccuaKIxME
         W8hg7vmSNPhC2mwNEw4MRyuzT95VV1YMnnbTtXjq/LxmA4qMbcmVckUG44hsc3Pgom1y
         HcUA==
X-Forwarded-Encrypted: i=1; AJvYcCWlu/Ha1Oy++hU+itYxRDfurZHYN47Elp1tXXcHEm+1Ef8XGKbEN+D5mqLWraFyH8dCYREdJoZe66ce@vger.kernel.org
X-Gm-Message-State: AOJu0YyerbeSt7J41G9T3GFL3Ohg3Dl9yTwIVriFZ47XLUSxuXAtjD9J
	oqIaUU3rLAn1XtIsg5yzBkHXtG//FK3whEFFGwPY4tRbq5WpefA1O5bHI4+fhdbBxSCR/+bDzCn
	6fhg=
X-Gm-Gg: ASbGncsfQ6QvB+9u1eIZ+xBPkdCW8Xl6jLNeKcE2GkgiTtdLaAIOIQLi9XcXZMSTPYJ
	hpJ0wsy5J2yWRQYEUCxQPE4Zy5RfeL+JkW68IIEfWscXcSvwzOZIFZ7meNSl6tbT+SkxtYrOqah
	YYgux7qdWFR2DcxnkF7ndJ3lf4gsxAxC7Vf90kYRJjWv0enOpzV+q1+8PqOYsWbkjd4NZ3tzdIc
	D2X+QXcdhn98WrVkzrpveQzcR9JJSBv/SsPoT6+f7HLR8JvU17XXbpxUew+ndYhA3gq9wmGYeWX
	EvTSDftpGNJZgeo3J6ET0kADWTAcy4SnR+toqLOJkO0W8gZX52Ke/u368Et5sPxqVseaTqjH7Y+
	b204dvCrZa1lFOKhpQNOq7MxM
X-Google-Smtp-Source: AGHT+IHYg3LZ0qQwlSvNRreZo1uDLB00LHSICdGKtkn4XAbKTJIS2AbNGe0cRUh6LISlgnGsDPhvng==
X-Received: by 2002:a05:6512:2214:b0:553:2f25:3b46 with SMTP id 2adb3069b0e04-5539d4e5977mr369526e87.57.1749626658148;
        Wed, 11 Jun 2025 00:24:18 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553676d03c2sm1862401e87.18.2025.06.11.00.24.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jun 2025 00:24:17 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-551fc6d4a76so6816530e87.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 00:24:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXjpufzRXNDxXPdL2nJHAFITqO5KFeUXGzD3Y8GD3emMXGUeWTxVnwSlgmXHQAo64oh2prp3vR7zD5V@vger.kernel.org
X-Received: by 2002:a05:6512:b90:b0:553:279b:c55d with SMTP id
 2adb3069b0e04-5539d4df2c2mr387737e87.45.1749626657224; Wed, 11 Jun 2025
 00:24:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CANiDSCvB5yytOgvk1QC812x4zOBn5Z4_C5wqUnV+2hSQXKM54g@mail.gmail.com>
 <a2efd2e3-bab8-43ba-a236-aa5052bc35c7@kernel.org> <CANiDSCs0xp_PsKmyNpY3zHh9xuvJEgYXysB2wyLEZOL_+4Lokw@mail.gmail.com>
 <afe90a1f-ac43-46bf-b5bd-723a214a6a2b@kernel.org>
In-Reply-To: <afe90a1f-ac43-46bf-b5bd-723a214a6a2b@kernel.org>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Wed, 11 Jun 2025 09:24:04 +0200
X-Gmail-Original-Message-ID: <CANiDSCv6+PUK+wq1c0vhJEddrB1jWYwBot2nRpbtB1uSW_3FCw@mail.gmail.com>
X-Gm-Features: AX0GCFt0YgF2UZedphBdYoPfhsVNYuPisN1TjPDsnLm4YZAvjR__Dtl0PBnAi5A
Message-ID: <CANiDSCv6+PUK+wq1c0vhJEddrB1jWYwBot2nRpbtB1uSW_3FCw@mail.gmail.com>
Subject: Re: 6.16rc1 dts-bindings check fails
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 11 Jun 2025 at 09:11, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 11/06/2025 09:06, Ricardo Ribalda wrote:
> > Hi Krzysztof
> >
> > On Wed, 11 Jun 2025 at 08:41, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On 10/06/2025 18:11, Ricardo Ribalda wrote:
> >>> Hi
> >>>
> >>> Media-CI is reporting some dts binding errors:
> >>
> >> Every builder of linux-next sees this, it's not specific to media.
> >>
> >>>
> >>> /builds/linux-media/users/ribalda/Documentation/devicetree/bindings/crypto/marvell,orion-crypto.yaml:
> >>> properties:reg-names:items:1: 'deprecated' is not one of ['const',
> >>> 'description', 'enum', 'not', 'pattern']
> >>> from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
> >>> /builds/linux-media/users/ribalda/Documentation/devicetree/bindings/pci/marvell,armada8k-pcie.example.dtb:
> >>> pcie@f2600000: interrupts: [[0], [32], [4]] is too long
> >>> from schema $id: http://devicetree.org/schemas/pci/marvell,armada8k-pcie.yaml#
> >>>
> >>> When I test your  for-next tree I have the same issue:
> >>> https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/log/Documentation/devicetree/bindings/crypto?h=for-next
> >>>
> >>> They do not affect media drivers so right now I am just ignoring them,
> >>> but I wanted to know if they are under your radar.
> >>>
> >> You need to update your dtschema.
> >
> > I was using the dtschema from pip.
>
> Latest from pip, so June, does not have these warnings. I think you
> still use May.

Looks like pip was released  yesterday:
https://pypi.org/project/dtschema/#history

The image was created on monday, so yes I was using may.


>
> >
> > If I use the version from git, There are other issues as well:
> >
> > $ python3 -m venv venv
> > $ . venv/bin/activate
> > $  pip3 install
> > git+https://github.com/devicetree-org/dt-schema.git@master yamllint
> > $ make dt_binding_check
> >
> > /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/net/snps,dwmac.yaml:
> > mac-mode: missing type definition
>
> This is old.
>
> > /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/regulator/infineon,ir38060.yaml:
> > maintainers:0: 'Not Me.' does not match '@'
> >         from schema $id: http://devicetree.org/meta-schemas/base.yaml#
> > /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml:
> >         Error in referenced schema matching $id:
> > http://devicetree.org/schemas/power/reset/syscon-reboot.yaml
> >         Tried these paths (check schema $id if path is wrong):
> >         /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindingspower/reset/syscon-reboot.yaml
> >         /usr/local/google/home/ribalda/work/linux/venv/lib/python3.12/site-packages/dtschema/schemas/power/reset/syscon-reboot.yaml
> >
> > /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/pinctrl/xlnx,versal-pinctrl.yaml:
> > allOf: Missing additionalProperties/unevaluatedProperties constraint
> >
> > /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-rtc.yaml:
> >         Error in referenced schema matching $id:
> > http://devicetree.org/schemas/rtc/rtc.yaml
> >         Tried these paths (check schema $id if path is wrong):
> >         /usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/soc/rtc/rtc.yaml
> >         /usr/local/google/home/ribalda/work/linux/venv/lib/python3.12/site-packages/dtschema/schemas/rtc/rtc.yaml
>
>
> These are known:
> https://gitlab.com/robherring/linux-dt/-/jobs/10290125099
> https://krzk.eu/#/builders/117/builds/613/steps/11/logs/warnings__2_

ok. I will add them to the ignore list for now.

Thanks!

>
> >
> > Is there a doc besides
> > https://www.kernel.org/doc/Documentation/devicetree/writing-schema.md
> > that I can follow to set up media-ci properly?
>
>
> To update dtschema? No clue, I just run pipx upgrade. Works for me, but
> depends on your OS/packaging.
>
>
> Best regards,
> Krzysztof



-- 
Ricardo Ribalda

