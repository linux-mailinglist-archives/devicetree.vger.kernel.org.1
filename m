Return-Path: <devicetree+bounces-117855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0A19B81FB
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 18:58:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97D8CB234E1
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 17:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8828F1C7B62;
	Thu, 31 Oct 2024 17:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZA/UIs0C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4BE1B1D63
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730397511; cv=none; b=KqRa5vl5ow0v1DCZyGj0qePsbC+8c4WjlgtgRkgXRC1C9yE/r24YZ5gseYV82QeZrlVKEKFc3AX68s2L0K3XvDni9nUu4fjXsw7zGnftyEsHJOrq6NWLefupta38slcrAmJchEA/g1YkjS08mGpV4IOSarxFeuRfToTVl/RKdFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730397511; c=relaxed/simple;
	bh=GprtLr3+fDuoA1kbr5iV1i1OWpC+hVzEb/dgPxI6zjY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uptoaqqbvfBIQcS+Vc9MHKspwHsAkCBRFpihDqoBexpxdJtimS6SCKUsJNNpgOfCgzyQvjL55+FnzKzOZBWB6GdlxevYOc7yiy2ZvmvVE4JbBiSNOLvdhMrcGuw19GqO4gaX+f0f+kszeT0zBDpsUWfopvVuY268A8vRWaRo2oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZA/UIs0C; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539f2b95775so1336470e87.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 10:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730397505; x=1731002305; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lp+SkhbwfifV7k5hA8ZYEm0WPfNORR7rjsrxe7EFMug=;
        b=ZA/UIs0CJ75GwI1qVdNbiHQ+SlbD9/yNHnMSJS/l2Z3nuQH4xalqfFnWIlcbUHaTjL
         89Stwcu86JTvV7WwbIGapdgs/p2gnekFFZcZsGvxSPwiKyf6NWMVR76s0ZV7k6oslNhI
         hnxLddHxIW2HKsJtI3bPAMPc8q5A5CALWnX+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730397505; x=1731002305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lp+SkhbwfifV7k5hA8ZYEm0WPfNORR7rjsrxe7EFMug=;
        b=QPhanKdIk7XPtMNed9xxvjCv6KR+AOP7B/nMoh8xc2hVchJZpO8ECk0gdp2K0j/Wqo
         G1yai78tQ/C+IboCVplOHWTnzgbRWFg4xcoR049Dmu5RBIEb+gBgUIhxGt8oPN35zwW+
         sHU146Malx75LGH6naTbpCilNy8UeZTiDjDU7SEzAv9tdNrBfHowqdCCUp2AyfbxDvUO
         ViIWLI2fUA3es7Op+7fVoPMix+wIVdf9C3Zl5/wsh4Ow8PVE3PqKMxMFaG98Eyrr/PBH
         7yCiZG5+qga7AhiDlnSF0UejXzfHybhI0SVrGd+3tjoBhm4EdaiL3xAeb4wnRJlo75iN
         eA5w==
X-Forwarded-Encrypted: i=1; AJvYcCUTdexht5S1IfYeuh5JAOqIKcE9L9K8Od1jy3webxZ79PBwZUZWzG9TSd+BtuDM0MRkZPP4edYCERzR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqt44/ej3Y+lFjNzhh6PQrm247oMUYElB8570ZJahE+AaUY0Xa
	R9ZgGY4xsPb++ZiQ9opKigDys0kx6MgGHruFpUcuBUxLmJfJk+3k93cPOK8jWZz2AqD5kV8gWMW
	0N7im
X-Google-Smtp-Source: AGHT+IHKX1pWn9sOseCErIpjoEYyApObpK8J6ZpeAhhS18FwBfK6R6uAuqCcsl5/KiJEBoMZN3igGQ==
X-Received: by 2002:a05:6512:1295:b0:538:9e36:7b6a with SMTP id 2adb3069b0e04-53d65df25a3mr904136e87.32.1730397505441;
        Thu, 31 Oct 2024 10:58:25 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bde3a89sm274924e87.285.2024.10.31.10.58.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 10:58:25 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539f58c68c5so2309925e87.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 10:58:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVOuwQDVI4FMbzZYr/Fa/nb97PhNF4rc4womslQuAeu9uDnLEHro/oEvKLFuB+wtrYDDyCgTnk6X4iD@vger.kernel.org
X-Received: by 2002:a05:6512:605:b0:53b:1508:468d with SMTP id
 2adb3069b0e04-53d65e1686bmr748585e87.54.1730397503175; Thu, 31 Oct 2024
 10:58:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025114642.40793-2-charles.goodix@gmail.com>
 <3ypn62dsgarvmxkmdglugcinxmvpmhdqub2zvkygaonn54odf6@amfgijfcd3l3> <ZyLtYdwoJWx9FsdS@ux-UP-WHL01>
In-Reply-To: <ZyLtYdwoJWx9FsdS@ux-UP-WHL01>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 31 Oct 2024 10:58:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UNKECLn=3VrjsJfA+HTNa9Gag1qw5jOcBvw7=ZtkZEnw@mail.gmail.com>
Message-ID: <CAD=FV=UNKECLn=3VrjsJfA+HTNa9Gag1qw5jOcBvw7=ZtkZEnw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: input: Goodix SPI HID Touchscreen
To: Charles Wang <charles.goodix@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, dmitry.torokhov@gmail.com, hbarnor@chromium.org, 
	conor.dooley@microchip.com, jikos@kernel.org, bentiss@kernel.org, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Oct 30, 2024 at 7:37=E2=80=AFPM Charles Wang <charles.goodix@gmail.=
com> wrote:
>
> > > +  goodix,hid-report-addr:
> >
> > I do not see this patch addressing previous review. Sending something
> > like this as v1 after long discussions also does not help.
> >
> > No, you keep sending the same and the same, without improvements.
> >
>
> I apologize for overlooking the discussions regarding this issue.
>
> I would like to clarify that while the current boards use the same addres=
s,
> but newly designed boards in the future may require different addresses.
>
> Retaining this property would likely offer more flexibility.

I don't feel very strongly about it, but maybe Krzysztof does?
Possibly the path of least resistance would be:

1. You drop the property from the bindings.

2. You hardcode it in the driver to be the normal value.

3. If/when someone actually needs a different value then we can add it
as an optional property in the bindings and fall back to the default
value if the property isn't present.

What do you think? If you feel strongly about keeping the
"hid-report-addr" then you can certainly keep making your case.
However, it's probably best to wait to get agreement from Krzysztof
(or one of the other DT maintainers) before sending your next version
unless you're going to take the "path of least resistance" that I talk
about above.

-Doug

