Return-Path: <devicetree+bounces-220385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF24B95568
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 11:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C876C3B2EE3
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 09:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5572320CBF;
	Tue, 23 Sep 2025 09:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="haF24h/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9892320CA4
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 09:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758621345; cv=none; b=ntpRu6lzeN0Q7N0xEglxOPk22JJcR77ZYTivyvPyDtBx/rxgmGqIdZYgyWulb9o2JjESw/uD0tnmfEscpVApbQpNWsP/e7R2DW1FVhUjkX5gNRmIN6hzl3ZIaA59xes8f1tb3v8jXA3bMmw6xkPIBLqB3PT+z01ieTbDfg9Lg9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758621345; c=relaxed/simple;
	bh=e5NOGt0T1QOZxsKIPNmxZjkQ42IMvdnLCXJEh6LT0RM=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=JyLXFzqOJsPbL+eINubGFDVj4nBeKwtgyAvBaBc5lX0VxEXa4SpCoFo6d/jwz2EZiEK6jv0Gr17AjRWkSuo/8nUbeRoYTcZKV67sBSUuiprKd37Yf9hQQR5Wbz1BGeHbt0JDPSRNjDrM+JORD8qWCNdTIetIPfh7jz21lkXHc+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=haF24h/w; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-62fca01f0d9so7253593a12.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 02:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758621342; x=1759226142; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rJ4iR0ikwChD7GAZnfT4r7240QnDqgcDQ/DHGsIuO5k=;
        b=haF24h/wrJPNnq2IKcLfxamIIVmyfAVz3ySeeAziwS96OL1SeDhCIiqlWF4E2eueiU
         LZ5vfILTwTTJ1dO5nZ695CDsD9TcarihFxjCNVZoN/0Hg1p/KZp3RtTg3mBoGFqvLps8
         ynI+pIUhDGeN7hRVvGDpJ2rrD49kkb2sLEdnV6ZXa1ot+QLkkK6uwsOnmmMlMKeQBRhf
         D67J3hRYOEtpm0x06YWsPhuTCdDDJtcdxZcF5QRV9Y0f00uEAlaY9Dq5VhAe/q/qfic2
         XarCYdkmAmP+trDiAHj5wC6oqYBOxwi8e4Z8SZhW98xkhA3fE4UnWWZGbcW4yD8tG+DQ
         ZOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758621342; x=1759226142;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rJ4iR0ikwChD7GAZnfT4r7240QnDqgcDQ/DHGsIuO5k=;
        b=Lav4TQOeRNIp3N+2mCTUlCJfYUMcytVXTdUTmunoJUe2ZfMfeJG91qmKePa9+Vh5ll
         MXPp63RtQs4itK5LtDDfVGx+yOEn2JQ+Not1WQsVrTHRfpJr4UorZToaVGc78U98aNfW
         6PgWC9nkV2VyiZE003BLmMFbaNlRcpFO8dSD+zKeaeVUMaW88ynyHeHfEKpuWolVAgeF
         4xw3/epMzNqGFN1uyvAz6SLx1SiBT1y4DoM46IlQFfwKCnZ6W55S+BL0VAYn0jjBHQDr
         RNqIIyAopUMbuRLidgia/RiFsOVrYNqHdmsqRJxS2enpRQXdHFH+ovN9s5dC1A3hxNlS
         K22A==
X-Forwarded-Encrypted: i=1; AJvYcCUD8gPiz2AdZVRokcw3ufGtmaCtj6LYhAY2a+9vcjFaLGiMyc/iNixpncSrT1eew+EuYuALjhGWG46Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyLlj5k1afXnWeX9CogOIm+tq6bWYTJ9W52xIc7FNgZbVf8x1FH
	OEFmPIM44rCQxvKDhLQk4PH47xZXBx7MoAHCXtXHuXgx1+seM21+lCBsBgQ8LPSazHs=
X-Gm-Gg: ASbGncuV19kD7elaHs+HRT1IHYqE0xy9Z/ppOj8K3oAlQanjweRG7wkKOhqR6rIWsCX
	lwgEtqMf9Q9PfMAhFRH48XtZsVgS8oFdAhO2zj4WU/EUUhCyvzKOf4fSH3myLGeQpSacGifUw2s
	qGP1Xr2wh7GCZKC9LIzxmZVwqmjqO+eazS7Ro1hIOKyKrkPP9GQ2MUvgQRJ01bWLKI1apOTsBeq
	+vuPa6s0Ncem/C/WAo4R0SRVgPvd8jTGwltIkSSk8Rc6Pc9sbMvMf+Ch6+yq0pb7fDQUvceilQW
	2oNdosAi2uVl7obNVXHNOke+OcJ8gZZ3IgyRNhLexMcxUQdx/iKGhjDorrOnLbvNSl5nVcNI7zb
	28TT2OUYOD8uXaNX9JwT2YjeLnlB4H728J3uBmLVBQgbqZkFkgDLYEWkDqtvWzjCji7d8
X-Google-Smtp-Source: AGHT+IF4qTxhg5Hb9sQ/tJAzBa4Ees7FfG50FOAI9GBuf35fyxLYwKPlFRuv+uHkCbA78L9NSJbk0w==
X-Received: by 2002:a05:6402:4389:b0:634:4e0:8360 with SMTP id 4fb4d7f45d1cf-6346779a012mr1708846a12.2.1758621342052;
        Tue, 23 Sep 2025 02:55:42 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa5cfa6f2sm10771105a12.6.2025.09.23.02.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 02:55:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 23 Sep 2025 11:55:41 +0200
Message-Id: <DD038IVOWESM.24X3EZZXH3UE@fairphone.com>
To: "Pavel Machek" <pavel@ucw.cz>, <barnabas.czeman@mainlining.org>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Stephan Gerhold" <stephan@gerhold.net>,
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, "Linus Walleij"
 <linus.walleij@linaro.org>, "Lee Jones" <lee@kernel.org>, "Joerg Roedel"
 <joro@8bytes.org>, "Will Deacon" <will@kernel.org>, "Robin Murphy"
 <robin.murphy@arm.com>, "Konrad Dybcio" <konradybcio@kernel.org>, "Sean
 Paul" <sean@poorly.run>, "Abhinav Kumar" <quic_abhinavk@quicinc.com>,
 "Marijn Suijten" <marijn.suijten@somainline.org>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Adam Skladowski" <a_skl39@protonmail.com>, "Sireesh
 Kodali" <sireeshkodali@protonmail.com>, "Rob Clark"
 <robin.clark@oss.qualcomm.com>, "Abhinav Kumar" <abhinav.kumar@linux.dev>,
 "Jessica Zhang" <jessica.zhang@oss.qualcomm.com>, "Srinivas Kandagatla"
 <srini@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
 <iommu@lists.linux.dev>, <dri-devel@lists.freedesktop.org>,
 <freedreno@lists.freedesktop.org>, <phone-devel@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <linux@mainlining.org>, "Konrad
 Dybcio" <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 6/6] arm64: dts: qcom: Add Xiaomi Redmi 3S
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250831-msm8937-v7-0-232a9fb19ab7@mainlining.org>
 <20250831-msm8937-v7-6-232a9fb19ab7@mainlining.org>
 <aNGLPdmOyh/pfroq@duo.ucw.cz>
 <97ee369f6ffbe42c72c57ebd72887b23@mainlining.org>
 <aNJKniJ46YuUsbQ+@duo.ucw.cz>
In-Reply-To: <aNJKniJ46YuUsbQ+@duo.ucw.cz>

Hi Pavel and Barnabas,

On Tue Sep 23, 2025 at 9:22 AM CEST, Pavel Machek wrote:
> Hi!
>> > Hi!
>> >=20
>> > > +	led-controller@45 {
>> > > +		compatible =3D "awinic,aw2013";
>> > > +		reg =3D <0x45>;
>> > > +		#address-cells =3D <1>;
>> > > +		#size-cells =3D <0>;
>> > > +
>> > > +		vcc-supply =3D <&pm8937_l10>;
>> > > +		vio-supply =3D <&pm8937_l5>;
>> > > +
>> > > +		led@0 {
>> > > +			reg =3D <0>;
>> > > +			function =3D LED_FUNCTION_STATUS;
>> > > +			led-max-microamp =3D <5000>;
>> > > +			color =3D <LED_COLOR_ID_RED>;
>> > > +		};
>> > > +
>> > > +		led@1 {
>> > > +			reg =3D <1>;
>> > > +			function =3D LED_FUNCTION_STATUS;
>> > > +			led-max-microamp =3D <5000>;
>> > > +			color =3D <LED_COLOR_ID_GREEN>;
>> > > +		};
>> > > +
>> > > +		led@2 {
>> > > +			reg =3D <2>;
>> > > +			function =3D LED_FUNCTION_STATUS;
>> > > +			led-max-microamp =3D <5000>;
>> > > +			color =3D <LED_COLOR_ID_BLUE>;
>> > > +		};
>> > > +	};
>> > > +};
>> >=20
>> > That's single, 3-color LED, right? Please see LED multicolor support.
>> As far as i know aw2013 driver does not have multicolor support.
>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree=
/Documentation/devicetree/bindings/leds/leds-aw2013.yaml
>
> I believe that needs to be fixed before more bugs are added on top to
> work around that problem...
>
> ...and before that bug is cemented in the ABI.

Honestly I don't think it's reasonable to expect people contributing dts
to then first start patching existing LED drivers and adding support for
x y or z to it, and block dts addition on that.

At least in postmarketOS the user space components we have (e.g.
feedbackd) detect the LED things (and most others) automatically since
various devices have various different setups. So once/if aw2013 gets
multicolor support, the dts can be updated without problems.

Sure, maybe today changing something on the N900 which would change
sysfs paths is not the best idea because people will probably have 10+
years of random shell scripts lying around, but nowadays we usually have
better ways of abstraction that can handle that.

Regards
Luca

>
> Best regards,
> 								Pavel


