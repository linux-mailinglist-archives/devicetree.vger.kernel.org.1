Return-Path: <devicetree+bounces-46394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E65386916B
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 14:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1654A1F21C56
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 13:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78F6813AA5C;
	Tue, 27 Feb 2024 13:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tvsnowVK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC3013AA46
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 13:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709039501; cv=none; b=FGhyJqaDh8Dhi5xow169fiYYDBRvy1FDptg2kk20owPlVXuxspDOqFjZvLwmyU1rO13wnV1NfesDLh9uZqqQSc/uItbot9IDQOaXnHmbCr7IXxdc9+puwkqVaLsUsirbZZIjiMVsbqgLxRyzq8Kne0KSXqvCrs//V+GbIM7VCyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709039501; c=relaxed/simple;
	bh=bAZ3iM58OJ/c+sYIqOEGYcO2YI1AZnqpgNdLdjXcmvg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sqRDkNbCNOwZLY24GxmqJdn2KwzWMGWi3w/4XGo8H0SLFYUErtl1Cq8Oq3r+HXM1VG+O6xY8c3MGwcRVVIiy/b2nOYjCz+IklhdTw02xVR2tGMjxI0G4dcffWyxELMxH+2QYwrPeeZch0SXIZKGieqDJqS+O9lyaJuHllHs84H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tvsnowVK; arc=none smtp.client-ip=209.85.166.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-7c796072dafso181904839f.0
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 05:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709039499; x=1709644299; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=udo8bD1gQZ0TgNyTOs65mIj8/NeIRI7TPXyi6M/72Q4=;
        b=tvsnowVK+HdQ/3oyJsC+yItPc89cXzDqP0xkfENlrJci+0g3TmzU6Ayir/FDTZUfrI
         8fArkCp2LIIlIKgszr2sUpfVtinWm6wfiUAq33Gpya8d+d8cQZTm8s34g2ExuvuEd6lU
         TSVRMF076NIUSwQoZPInIH1kELkiCxdvcHOvyIMHjjwd4E67K0mSiWG2G5ET1CvINVs0
         ZelU7nOBzfxSXEQA9TMWdkor7aBDmOQ0wOVnbZ42nId2hMORIED159uH/kDXObTafSJ7
         kybSfEPnRr5rqhnoPU5xhERt68jrSuuWKNFL8fzOZft19paTlx29N+gd7B3A5fMdyzYJ
         9+hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709039499; x=1709644299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=udo8bD1gQZ0TgNyTOs65mIj8/NeIRI7TPXyi6M/72Q4=;
        b=WQ50jVf5gAhQsPCyxc2Qtc0GTm5gjXqXZdc8cNlw05lXUcTbnpHJoyt+K72IpFLYX+
         IEHZg5QD11lajYyiz9J0y0kD5W7RfcT+X/ANMsOTudPcYkZhecVdJRwYyyLCNiAC3erP
         I9uXee83f7OpyQlx7jHZdCEUB7VhDqauTCUjWadMgkUxGl7io12aT0RptavIGhI2gNpd
         O4nS387wvEmSBKt5KoeH/1wEmnF+tJhQHJ8G8Qmy+CEQDy8MtNoTec6qwyh9g436YheD
         P3TVXezMkQPZ45mW2nFleKORiRHDg85OqQoXXtTOHw5dfoPIN95sLZXYeyt7B1bNxySZ
         JhrA==
X-Forwarded-Encrypted: i=1; AJvYcCXTq8MUof/rGP5QYmZAsPV4cwFjN9X2r6bPo6k+Vm+q1vFBguBI04oHnSvAb7vuZrUu7G8pw9z9+vT/nhW7BuQ2uRXt4dpbB4Pplg==
X-Gm-Message-State: AOJu0YwW2NlZMvCk9gn5nR+qKNbPhuVHqt7c1DY7RW2bKmvkT8DFWGDD
	kCL6qTO5jTxDv15uk3Xr/YGWoGQULjxVXNgwoOQUumdviZCycce8sR/lChV5hnQNRmM/rBDuNa/
	Ge4IzqJ8eGTNcGp+/TerXf0GCCFqDEvuS4BHL
X-Google-Smtp-Source: AGHT+IEbvZWYzJhRl38v/+RURp8VhVb+sc2/zv8znFskRMA/IxEBLb5NyDAoUgrrhIG+yRmDNWyZC23b3qgda22u2K8=
X-Received: by 2002:a05:6602:14c7:b0:7c7:e2c5:569e with SMTP id
 b7-20020a05660214c700b007c7e2c5569emr2368172iow.7.1709039499002; Tue, 27 Feb
 2024 05:11:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com> <20240221160215.484151-9-panikiel@google.com>
 <13aeb2ff-72f4-49d9-b65e-ddc31569a936@linaro.org> <CAM5zL5q0oKoTMR0jSwYVAChCOJ9iKYPRFiU1vH4qDqhHALKz4w@mail.gmail.com>
 <e1fd8cbd-060b-4d15-8256-6d8dbba545da@linaro.org> <CAM5zL5qxBM1xQ__t86gxUKMy8O3BzoCe_vTFxxsqFq7mw4-8EQ@mail.gmail.com>
 <890afb05-1b19-47b2-bfd8-5f6de0caeda3@linaro.org>
In-Reply-To: <890afb05-1b19-47b2-bfd8-5f6de0caeda3@linaro.org>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Tue, 27 Feb 2024 14:11:27 +0100
Message-ID: <CAM5zL5rs4JyFznnWDLZP_2jwnX+yc+OwwOijGZGsQK+WtpiWKA@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] media: dt-bindings: Add Intel Displayport RX IP
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, chromeos-krk-upstreaming@google.com, 
	ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 26, 2024 at 6:29=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/02/2024 13:43, Pawe=C5=82 Anikiel wrote:
> >>>>> +  intel,max-stream-count:
> >>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>>>> +    description: Max stream count configuration parameter
> >>>>> +
> >>>>> +  port:
> >>>>> +    $ref: /schemas/graph.yaml#/properties/port
> >>>>> +    description: SST main link
> >>>>
> >>>> I don't understand why you have both port and ports. Shouldn't this =
be
> >>>> under ports?
> >>>
> >>> I put both so that you can use the shorter port property when the
> >>> device only has one port (i.e. no MST support). It would work fine
> >>> without it. If you think that's unnecessary, I can remove it (and use
> >>> the ports property even if there is only one).
> >>
> >> No, it is fine, but then you need allOf: which will restrict to only o=
ne
> >> of them: either port or ports.
> >
> > There already is an allOf below that says that ports is required for
> > MST support and port is required otherwise. Isn't this enough?
>
> Add both port and ports and see if it is enough.

Ok, I see. I tried and this seems to work:

oneOf:
  - required:
      - port
  - required:
      - ports

And that would make the if/else with port and ports below not needed.
What do you think?

