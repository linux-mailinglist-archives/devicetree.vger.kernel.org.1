Return-Path: <devicetree+bounces-25000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE631811E65
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 532E7B20C5E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A33D67B52;
	Wed, 13 Dec 2023 19:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E0X+B/ox"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C767B2
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 11:13:42 -0800 (PST)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5913b73b53eso1369156eaf.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 11:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702494821; x=1703099621; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eoasIn7ZWnWThH0PLf9u8EiK7T+LlQqn1Vvx2nlonP4=;
        b=E0X+B/oxPvxfM6DIOvgp5aNszau4clZ7/loIOGUT5vofzEAHDc9jr/rce6YD1UFR1S
         aK08BgJCmZdSdnoxnQyzdg7XbhYcPzzm/g3S8VDQnvDinID1R74oduw6LM3ohFFuynvg
         nMZg4blmZWVTf9Jrna2n0WSLU+G25fW3LF5y5vXgqmQ7x3RFLcbIeYnznhHEhKUIORhh
         urgOOdS2GXt8smq6757k/j+laJK4ssKcmEPqeyf7qpXofuuPzasC4FbGjjk//psPWn29
         ft9gWLq9EO9UaYr+au4ORGblWx+I2JvMgxf1WzK8sl+XcdrHZlCyoHXrMdbS61ShLhMk
         L6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702494821; x=1703099621;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eoasIn7ZWnWThH0PLf9u8EiK7T+LlQqn1Vvx2nlonP4=;
        b=oAxC9A4zFcC+sVqeGHcV6dcnUEBTedAumRkwMvHYBocwk3Ymd/PUmosjYiAdtfuZaD
         46AHGt1sxB9gm0ncUom6M+2zJKDlQn0M1HRwumVIm4duNUkWfe0oShRwf0/4SSdXbRw5
         Zk0tSQKG19yziDRnQi7y9+7I5TRcu2zaGkR6eXV+9h25sp75UDBZo1qqlzLSIBB1TrjS
         YYO/SSMV2JEirvroa/GHEsB3x2vrMPcsxOvtH9QUtTClRHXMA9uKoRu47nfqvPZifA4U
         SKQy5uLDQ63sKINjrMR64BuDiyxfbKUFpHtgfEDasi8OhD2OtmXctjsWQe+Ur4vfIWsj
         ynfA==
X-Gm-Message-State: AOJu0YziqpAta+39+cnTSel0FRJDHL4vzwVH/s3Ooh9OAV4zgA5r9y77
	YqtbZ1oQQ/0WOAVfOr7AFABIXxTW1M8XWX7yc1uUoA==
X-Google-Smtp-Source: AGHT+IH4+myfhe9Yt7eO0yu5pPXNu0R/7YLBoZZEMIElJzsamITcWtE6zUFIGooST9U4bGH3ubAkBPh6S/8Kq9R6VJ8=
X-Received: by 2002:a05:6358:cb25:b0:170:7dca:9798 with SMTP id
 gr37-20020a056358cb2500b001707dca9798mr6354481rwb.10.1702494821571; Wed, 13
 Dec 2023 11:13:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231211162331.435900-1-peter.griffin@linaro.org>
 <CGME20231211162434epcas5p485e7b2edbb02a1b6ea04ff5cc758f5db@epcas5p4.samsung.com>
 <20231211162331.435900-12-peter.griffin@linaro.org> <017401da2de2$400ec6e0$c02c54a0$@samsung.com>
In-Reply-To: <017401da2de2$400ec6e0$c02c54a0$@samsung.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 13 Dec 2023 19:13:30 +0000
Message-ID: <CADrjBPoFu8azjZ65RGqae6HSCCoHQuhcBHNO_Fo0nVsE9pYGaA@mail.gmail.com>
Subject: Re: [PATCH v7 11/16] watchdog: s3c2410_wdt: Update QUIRK macros to
 use BIT macro
To: Alim Akhtar <alim.akhtar@samsung.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, semen.protsenko@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Alim,

Thanks for your reviews.

On Wed, 13 Dec 2023 at 16:34, Alim Akhtar <alim.akhtar@samsung.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Peter Griffin <peter.griffin@linaro.org>
> > Sent: Monday, December 11, 2023 9:53 PM
> > To: robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
> > mturquette@baylibre.com; conor+dt@kernel.org; sboyd@kernel.org;
> > tomasz.figa@gmail.com; s.nawrocki@samsung.com; linus.walleij@linaro.org;
> > wim@linux-watchdog.org; linux@roeck-us.net; catalin.marinas@arm.com;
> > will@kernel.org; arnd@arndb.de; olof@lixom.net;
> > gregkh@linuxfoundation.org; jirislaby@kernel.org;
> > cw00.choi@samsung.com; alim.akhtar@samsung.com
> > Cc: peter.griffin@linaro.org; tudor.ambarus@linaro.org;
> > andre.draszik@linaro.org; semen.protsenko@linaro.org;
> > saravanak@google.com; willmcvicker@google.com; soc@kernel.org;
> > devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > samsung-soc@vger.kernel.org; linux-clk@vger.kernel.org; linux-
> > gpio@vger.kernel.org; linux-watchdog@vger.kernel.org; kernel-
> > team@android.com; linux-serial@vger.kernel.org
> > Subject: [PATCH v7 11/16] watchdog: s3c2410_wdt: Update QUIRK macros to
> > use BIT macro
> >
> > Update the remaining QUIRK macros to use the BIT macro.
> >
> Ah! I see you have change use BIT here, so you can squash this patch to
> patch 10/16 or
> Move BIT change from patch 10/16 to this patch. Either way is fine.

I actually kept them separate deliberately to avoid conflating adding
of the DBGACK quirk with cleanup of the driver to use BIT macro.

As such one patch adds the QUIRK and only updates the macros that were
touched by that patch (to avoid the --strict warnings), and the second
patch cleans up the rest of the macros to use BIT macro for
consistency.

regards,

Peter

