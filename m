Return-Path: <devicetree+bounces-5482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FB07B6719
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:03:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E6E60281660
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6E76210E3;
	Tue,  3 Oct 2023 11:03:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B4F20B36
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:03:11 +0000 (UTC)
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29A919B;
	Tue,  3 Oct 2023 04:03:10 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3af608eb34bso436899b6e.1;
        Tue, 03 Oct 2023 04:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696330989; x=1696935789; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BlhDUWxa5k2cP3CneIqAHRN00JvoWYoExgGGriubkr4=;
        b=StEDi2VBz1c4vVJW6ExHuggOl5+n2lg1mLYY3AmeNQsWVMQlD5AUbI3h4lmXbE8F4Z
         fs+kwAv2HcHM/Gr1pfUGMrDfnVV2DznHPBX8kNeYHGQIHt801HJVgb5bZTydc3RMdNLl
         pkG0cZFUtMq8DidWe37OutRzmaZb6tnQPe1XO2DZzw5ExMIOT89W5R6eTWgppy7TP9PC
         SGRRmVuKsADj4zxCj72ZHxqBg+k/S2qibERHW1NOX7Ys3faxsVSsY8Fg8Xu9NqNpEvEA
         rXdiVs7GGyixlJwbCeTIFnFmZWmL/BLfxNJs9qet9wiKORuEx1NeoOkifJGoxNKEhLIg
         LnaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696330989; x=1696935789;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BlhDUWxa5k2cP3CneIqAHRN00JvoWYoExgGGriubkr4=;
        b=ZnPAEeTIPxwju4dejGap1dFSF5SvNG1KF9cD7LxbwNV43zX91Pj77L/JWk0E+mMsDS
         VEU+AUiYpA4x13TMv4AZtMUWbSG2D/DnDdnTUmyYPTZ8gnJKX1NuQOdWfNPEZbSQuPm/
         lk5Xf7HCe0Vb/82dPBSlRd1smZb1DOzsQ1P/8TfPUDXwolOIJWyBoKKQB6rdeb44xMt1
         Hu8JWO4oPS7YG4U3zut1PTd79CIxXT823al0QAUX+3D4GbfhKy74HVu2Ls7+Z7KklcJC
         AWWfkWMjLVkSJjRvrFcxNWxbfV5N20V/+MpbLhJFbwZs+ntVzmIU3Hzu+U//6uQFjs/+
         XUtw==
X-Gm-Message-State: AOJu0YwRo3146WbMR9LFifeKG54+kZQnDxHTYQWwy7dqQSAppwJLyo8u
	VyJqrIuUHvmppFQ4IKzhTQMz26G6oCk/cvmNVdst4l+QIsc=
X-Google-Smtp-Source: AGHT+IF56VMZflejzY1WAepaIF82R6vkI1MVPlIj3f+3Vj+uPbhXMyJR468o7S10EvrrBqeQiLUzuZ1Jop1xZa427vw=
X-Received: by 2002:a54:4783:0:b0:3a7:1e3e:7f97 with SMTP id
 o3-20020a544783000000b003a71e3e7f97mr14427774oic.4.1696330989258; Tue, 03 Oct
 2023 04:03:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230928125443.615006-1-mitrutzceclan@gmail.com>
 <20230928125443.615006-2-mitrutzceclan@gmail.com> <20230930150531.083c51d4@jic23-huawei>
 <c52afe87-eaa0-eb7f-090f-b22aec95e49d@gmail.com> <ZRvwrDcT770sJXkd@smile.fi.intel.com>
 <303d2869-2273-f643-e8ff-e27675f929dc@gmail.com>
In-Reply-To: <303d2869-2273-f643-e8ff-e27675f929dc@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 3 Oct 2023 14:02:33 +0300
Message-ID: <CAHp75Veu3Dewg9QR30bXs_2Too1b0FBR5Vze+AXXd9rX4dE1Xw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: adc: ad7173: add AD7173 driver
To: Ceclan Dumitru-Ioan <mitrutzceclan@gmail.com>
Cc: Andy Shevchenko <andy@kernel.org>, Jonathan Cameron <jic23@kernel.org>, linus.walleij@linaro.org, 
	brgl@bgdev.pl, linux-gpio@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Walle <michael@walle.cc>, Arnd Bergmann <arnd@arndb.de>, ChiaEn Wu <chiaen_wu@richtek.com>, 
	Niklas Schnelle <schnelle@linux.ibm.com>, =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
	Mike Looijmans <mike.looijmans@topic.nl>, Haibo Chen <haibo.chen@nxp.com>, 
	Hugo Villeneuve <hvilleneuve@dimonoff.com>, Ceclan Dumitru <dumitru.ceclan@analog.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 3, 2023 at 1:57=E2=80=AFPM Ceclan Dumitru-Ioan
<mitrutzceclan@gmail.com> wrote:
> On 10/3/23 13:45, Andy Shevchenko wrote:
> > On Tue, Oct 03, 2023 at 01:33:36PM +0300, Ceclan Dumitru-Ioan wrote:
> >> On 9/30/23 17:05, Jonathan Cameron wrote:
> >>> On Thu, 28 Sep 2023 15:54:43 +0300
> >>> Dumitru Ceclan <mitrutzceclan@gmail.com> wrote>> +config AD7173

...

> >>>> +  select GPIO_REGMAP
> >>> If you are selecting it, why does it have if guards in the driver.
> >>> I prefer the select here, so drop this if guards.
> >> From what i checked, selecting GPIO_REGMAP does not select GPIOLIB but=
 only REGMAP.
> >>
> >> Also, in the thread from V1 Arnd Bergmann suggested:
> >>      " I think the best way to handle these is to remove both
> >>       the 'select' and the #ifdef in the driver and instead use
> >>       'if (IS_ENABLED(CONFIG_GPIOLIB))' to handle optional gpio
> >>       providers in the code. "
> > Why not simply to be dependent on GPIOLIB like other drivers do in this=
 folder?
>
> I followed the suggestion given by Arnd. The full argument:
>
> "From a Kconfig perspective, any user-visible symbol ideally only uses
> 'depends on', while hidden symbols usually use 'select'.
>
> For the GPIOLIB symbol specifically, we have a mix of both, but the
> overall usage is that gpio consumers only use 'depends on',
> while some of the providers use 'select'. This risks causing build
> breakage from a dependency loop when combined with other symbols
> that have the same problem (e.g. I2C), but it tends to work out
> as long as a strong hierarchy is kept. In particular, using 'select'
> from an arch/*/Kconfig platform option is generally harmless as
> long as those don't depend on anything else.
>
> The new driver is a gpio provider and at least ad4130 and
> ad5592r uses 'select' here, but then again ad74115 and
> ad74113 use 'depends on' and ads7950 uses neither.
>
> I think the best way to handle these is to remove both
> the 'select' and the #ifdef in the driver and instead use
> 'if (IS_ENABLED(CONFIG_GPIOLIB))' to handle optional gpio
> providers in the code."
>
> I do not have a lot of experience with this subject.
> As such, if you consider the argument invalid, mention it and i will
> change to 'depends on'.

I see, I would ask GPIOLIB maintainers about this.
I don't know if there is any plan to fix this through the entire
kernel and which way has been chosen for that.


--=20
With Best Regards,
Andy Shevchenko

