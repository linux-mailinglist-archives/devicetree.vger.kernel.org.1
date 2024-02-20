Return-Path: <devicetree+bounces-43712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 871FF85B409
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 08:31:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B0FEB22993
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 07:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E46225B663;
	Tue, 20 Feb 2024 07:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=northern.tech header.i=@northern.tech header.b="ZEkcR4lx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243C35B661
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 07:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708414256; cv=none; b=FfSfKvCMdzwCu5Vx3YxLNAlaHOpKkGSXg93sNKcALE+hPXc7SEi8cX3YCbgZb4M0E3Hj+Kp1a1pL0Vib/EkwJRHL15Q6sQqEXS0VpRFF4ivLGj4QPsBcID/aOFd6fkDSTRmTVe6Hn90gaRTMxIKGpszfB82hgyzPvSQ3FE66F/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708414256; c=relaxed/simple;
	bh=byQMZB6yOsK2F8J7yVXxve/DOqrouOKGfoytBZdyRDE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LRsHReiOdrh/TAoxptiBgTvzYd3HEp9L5/WEB1p3ztui4mq0ob/CVCMLR6jRhPGWwBDUIW+70xPylyA24diNiPWumXnIctnDOUUigzQGcKyNt3yyXR30RVbT0guXvfXNJEYj4Fu277HwB5kp5XbvSczQGErVoy69HA8pe8sLTTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=northern.tech; spf=pass smtp.mailfrom=northern.tech; dkim=pass (2048-bit key) header.d=northern.tech header.i=@northern.tech header.b=ZEkcR4lx; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=northern.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=northern.tech
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-512c4442095so470410e87.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 23:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=northern.tech; s=google; t=1708414253; x=1709019053; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=byQMZB6yOsK2F8J7yVXxve/DOqrouOKGfoytBZdyRDE=;
        b=ZEkcR4lxUb6wmBERb7hsD7dFMyDl2SnIYvPxg3R1gRtaYESYhEY2w5AV31ZgllqPA+
         ybmPWL/HBf4zqLSTPkwGrmkEk4LX/LcNNs65oKDqhbl+G6R19GAFCVF3caVyqWOc5Lj7
         UYorIkCp/pT1oWlGJ9Yab0cnm6Iw1jYHdfnrs/2DKGKwv3No+9CUaP0FI+Iqb8RxzMAK
         jGyD8p/ClAeT71Fvbp/QgbbJlU4LGTcOpSWCxoleVnWbiY8gwZb1QuhP9apIT2B0YRXz
         lSj5YD6zoPG5pL4WaGJB+Mfm+XPl0YDJMP111jdSS1dVcPtMNP/jKJYOUCUjtmFj9p2b
         PsmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708414253; x=1709019053;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=byQMZB6yOsK2F8J7yVXxve/DOqrouOKGfoytBZdyRDE=;
        b=B/f3heTsM7PA9Gn2KOuE5ql3+qZd0hF5QmG8/supE5SxdPsB2l7qZJn6NS4l/ui+Fa
         4akUHcuEVmFSixAN1/mlGdDsXsAR8DpkqsszacZSt2L9Daf6jPpffNxDvIrXGWS43mH/
         PKRI2HTT13Z99L/IZqFuJ9/57WS60ebbkQxjKgJ0aF/Avch/CirHE0wNYIvEcNCklKTc
         rEG9ufCTfSAdfQK6H4wfhY79L2NQ56ynSc3yKRvq2kJlU6z+j2CbpGLuyBYqPqN+g/ih
         ciDgtHXHomkxGslJRhmWODFCLi2UDk/ewvpvpbH2+HHlSnSQq0uA7pmVranl3qehAYI4
         Ikxw==
X-Forwarded-Encrypted: i=1; AJvYcCWAZkRYTZWMOSUATEVNbRzUwCXYEMrxDBaKDO+tGTDsyiBdpvdeaYPE59Q5+/zzHsj1mefL1zuOPUYYCF1TRUxmlND0cquVgD73mg==
X-Gm-Message-State: AOJu0Yww0Y8uaSXXK1CbSksWqehG/3kwKvmhx/fK7Ly9q48bX5P1z+kP
	NhDFi7r2NO0raRrXedHZZ/ouQ3MiV2T1S8Zjn7MfLh1iYLy582NEPmXnf80isDcdfUt9DXlhO9N
	uoln/+PkW/+at+jpBoZl79lxs5PuR9axAfCplZksPpKZ/GwnIyYkK9cB5F48+glnMETOmmxze0f
	ET7Cdfc0wN7VEOecjcLogPA1E=
X-Google-Smtp-Source: AGHT+IFOKYH09y5iol3m1TkiUV+SqBmVC7mMi+48KfGZJAWBq1cqVKXihViQz4dI6LGklctgAdCdlEkS8tRTzXNnAjo=
X-Received: by 2002:ac2:4e0b:0:b0:512:b3f9:6ef3 with SMTP id
 e11-20020ac24e0b000000b00512b3f96ef3mr3610667lfr.47.1708414253207; Mon, 19
 Feb 2024 23:30:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240209112807.1345164-2-ole.orhagen@northern.tech> <CACRpkda=b-uZmSfqRLkkC6Lp-JbSoi+YZpwhVn9-RMOPxiXszA@mail.gmail.com>
In-Reply-To: <CACRpkda=b-uZmSfqRLkkC6Lp-JbSoi+YZpwhVn9-RMOPxiXszA@mail.gmail.com>
From: Ole Orhagen <ole.orhagen@northern.tech>
Date: Tue, 20 Feb 2024 08:30:42 +0100
Message-ID: <CAD5A3CvRNpAibArAZg11TdfKP62V9Eeb9ccUhiQwWLiGKgk+Sw@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: vexpress: Set stdout-path to serial0 in the
 chosen node
To: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, ole@orhagen.no, 
	kristian.amlie@northern.tech, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Andre Przywara <andre.przywara@arm.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Shawn Guo <shawnguo@kernel.org>, 
	Peter Rosin <peda@axentia.se>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 9, 2024 at 2:02=E2=80=AFPM Linus Walleij <linus.walleij@linaro.=
org> wrote:
>
> On Fri, Feb 9, 2024 at 12:29=E2=80=AFPM Ole P. Orhagen
> <ole.orhagen@northern.tech> wrote:
>
> > Specify v2m_serial0 as the device for boot console output through the
> > stdout-path in the chosen node.
> >
> > Signed-off-by: Ole P. Orhagen <ole.orhagen@northern.tech>
>
> It's also the right way to do it.
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> Sudeep: are you queueing Vexpress DTS changes or do you want me
> to handle it with other Versatile-ish ARM DTS stuff?
>
> Yours,
> Linus Walleij


Is there anything else I need to do here, or can I consider this a
valid handoff and forget about it?

Yours,
Ole P.

