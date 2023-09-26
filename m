Return-Path: <devicetree+bounces-3392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DFE7AEAE3
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:57:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 45A631C2074D
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C75D5266A5;
	Tue, 26 Sep 2023 10:57:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0D2107B9
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:57:02 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09AD8101
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:57:01 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-59e77e4f707so102444377b3.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695725820; x=1696330620; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+yFxl6n4mvRXw7jluKkJGV+bmvyn5qTXRpdajEZLGg8=;
        b=ChpI1j8sxmf3KQOBXD0J/wN7MflfWR2g0xK6B/hPIEeKvHLqJu6IpdYZbeh1eToyfH
         Mxnd0WD6P79z2PHpzxqsQqmnTbqGE4NGE7LjKAut+Y+Ox9dfachUaXu6zCRacjLfI/o0
         2snFDAPdrq2R+eFCBnPLTo3ETVfBDGagLWhVbbq53x2AcVwa1+/n2SUDZwRZAMjGpTJM
         NXiV54cXYxVcrrXwLVnbnjvCNI3yZK9UhOpKEBeKffHHE0OgjJFxWz3gAJ+oVlksOjpj
         GggF6+skpynBWkcxgwg/wo46dAFNkTWHvZka14eah4Foy1HP2Je1n+JIw/vi+JO6m3jq
         4g6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695725820; x=1696330620;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+yFxl6n4mvRXw7jluKkJGV+bmvyn5qTXRpdajEZLGg8=;
        b=F6WdXFXdcB4/b70CPzV+EDO6uF+qwiZG5oMoXqjg2Jo7t+8BYCm+bivcQZi84BYPWL
         UroKaC/1Xt3isEV/aunGE0I0dUjY/8JEiEWpy+1Ntcae/+XJxZmY5wj0UhUfjYhE0Ib4
         Xvt4dH2hZmD/H8T8/H6LFDKq3XT3uOtNw/V8ismUghWFU2qvU+yN4rDOCrwBhHeyjkii
         TY/en/DmU2c6NRBF4lNf+JQsE2/OX87JjOzDiYpqVNq/OHWtACXIFobUHI64cpHuCtF0
         sJnEWivdbyemhFGJLIn9py9Xk0Oj4yFX6bIAJ+RmvJhLZ9hGM6qN/HJrDq2veLysrkWG
         pffQ==
X-Gm-Message-State: AOJu0YykcNKS00aPO7WC8STLcv0G5KY+xJkc5hMl5H0YmORSYnKveJYv
	mWbRNh4A4vAViRPKTzB5NfXz7DkWTVYKsIEeIagsfg==
X-Google-Smtp-Source: AGHT+IFYMo6vNxLPVaePYEv+Q9UttG4JjxZ7q/TJyEIAvX2UEziDYG32Tt5Dn4ASPYNegMxnHVJlZ6Q0FGbEuRMKJ6Y=
X-Received: by 2002:a81:4f8a:0:b0:578:5e60:dcc9 with SMTP id
 d132-20020a814f8a000000b005785e60dcc9mr9287945ywb.10.1695725820227; Tue, 26
 Sep 2023 03:57:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921-rtc-7301-regwidth-v1-0-1900556181bf@linaro.org>
 <20230921-rtc-7301-regwidth-v1-1-1900556181bf@linaro.org> <20230922-magenta-impending-f5ade19286ae@spud>
In-Reply-To: <20230922-magenta-impending-f5ade19286ae@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 Sep 2023 12:56:48 +0200
Message-ID: <CACRpkdZaGJQp8965YQDspjpSMRCVDYD1eyCb+dhg3SEtRS4a_A@mail.gmail.com>
Subject: Re: [PATCH 1/2] rtc: rtc7301: Rewrite bindings in schema
To: Conor Dooley <conor@kernel.org>
Cc: Alessandro Zummo <a.zummo@towertech.it>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Akinobu Mita <akinobu.mita@gmail.com>, Jose Vasconcellos <jvasco@verizon.net>, linux-rtc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 12:45=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
> On Thu, Sep 21, 2023 at 10:27:42PM +0200, Linus Walleij wrote:

> > This rewrites the Epson RTC7301 bindings to use YAML schema,
> > and adds a property for "reg-io-width" as used in several
> > other bindings to account for different register strides.
>
> It'd probably be good to mention that there is hardware that needs this,
> rather that saying "other bindings use this".

That is an explanation why I call it "reg-io-width", rather than,
say "reg-stride-bytes" as there are other bindings that use this

But I'll mention some hardware, no problem!

Yours,
Linus Walleij

