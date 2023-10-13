Return-Path: <devicetree+bounces-8408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB347C80F3
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:55:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43B6FB20923
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8A710944;
	Fri, 13 Oct 2023 08:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="R+EiyWoP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C9B107A1
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:55:00 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA7B4DC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:54:57 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9ae75ece209so299652166b.3
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697187296; x=1697792096; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E8JKGwUdtfI1UibvU08qy7GVuAI+nB0XIQdzpOpzSSg=;
        b=R+EiyWoP31Irvq7IKhtzusGibou/eRuJMG4YoX+vb8wooHWC1mT/8aONpZU1afd9mX
         wfPndGJRV28Rt93F1Mqv/IF9aHEU/6iO2lvOk3ZNtLwbq/sn6uov0oMwGEwEfujI/aZu
         7ctCGtjfeU2fetAuEwnuu3aDKYbLwyi6R/C6/+9Yb7MwjwQgHhjhuR43v8NBZvvLpVw0
         NmSaFFOKx414YlIEYxToaBZ1/+ium4SezdUgH7aqHm2z2oyAJWJGyOY6nbxqGUtyNsst
         c1UZ+7Eh1uFDTPhCGSwr91AynwvV17NhwmJ8C5snrNQAwQgbzQXleTNg7rTHSXuF5q8c
         m4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697187296; x=1697792096;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E8JKGwUdtfI1UibvU08qy7GVuAI+nB0XIQdzpOpzSSg=;
        b=sdmQAfaQjhXc1E2D0J8M3cv1/iUkzMmkfS/4nHiNdNxt89yuZ47W2J9BfOebgreIPU
         JWk40UKhI1VwndFOToSPKQ8DCwSbc//qpGkaBx4Mu/wNenF9RG5/QZ5uX4VB3hepUsO+
         geY2h6VLOP+wEh4nm0kE9T2V6obHdxuqK+v948K5T7UjX0rN4EO15OtmyBbVDLeVOmjO
         Z4DNN+RExEC5potC9OBeR2eogbAvvFxbfcUK/0eww46k4iNQIcbFVnzeP9/Z0QAEdhVi
         rnmnT0raHfd7YdXITELPEeoi8dLh6jtn1sexQKUiak9yjbHNFUpmvEOUBM/Psav30e+H
         xNSQ==
X-Gm-Message-State: AOJu0YypJxS0/LXAEsHS2RnVQspPolMX0Oud+X2Xm1Cu9HIu0Kbxi2Xv
	4ESPMHPilSZTns4lUk/HObL36A==
X-Google-Smtp-Source: AGHT+IFQW+e6DzHU2VifEKGLahVlTkYJYnI7A6Tsm8CCDJVU+34O2IQjYZBMFJQFchrXoyL66dYLVQ==
X-Received: by 2002:a17:906:23e2:b0:9b9:b12c:133d with SMTP id j2-20020a17090623e200b009b9b12c133dmr19287609ejg.53.1697187296173;
        Fri, 13 Oct 2023 01:54:56 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id oz10-20020a170906cd0a00b009ad8acac02asm12219112ejb.172.2023.10.13.01.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Oct 2023 01:54:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Oct 2023 10:54:55 +0200
Message-Id: <CW76ONZKCJD7.RH8K3GG6ZT9R@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@linaro.org>, "Jonathan Cameron" <jic23@kernel.org>,
 "Lars-Peter Clausen" <lars@metafoo.de>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/4] iio: adc: Add PM7325 PMIC7 ADC bindings
X-Mailer: aerc 0.15.2
References: <20231013-fp5-thermals-v1-0-f14df01922e6@fairphone.com>
 <20231013-fp5-thermals-v1-1-f14df01922e6@fairphone.com>
 <d1c8a6e2-1c12-4b67-bc67-45f0b41a2fef@linaro.org>
In-Reply-To: <d1c8a6e2-1c12-4b67-bc67-45f0b41a2fef@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri Oct 13, 2023 at 10:38 AM CEST, Krzysztof Kozlowski wrote:
> On 13/10/2023 10:09, Luca Weiss wrote:
> > Add the defines for the ADC channels found on the PM7325. The list is
> > taken from downstream msm-5.4 and adjusted for mainline.
>
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching.

Seems very inconsistent (git log --oneline include/dt-bindings/iio/qcom,*)
but I guess this would fit better?

  dt-bindings: iio: adc: Add PM7325 PMIC7 ADC bindings

Will update for v2.

>
> >=20
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  include/dt-bindings/iio/qcom,spmi-adc7-pm7325.h | 69 +++++++++++++++++=
++++++++
> >  1 file changed, 69 insertions(+)
> >=20
> > diff --git a/include/dt-bindings/iio/qcom,spmi-adc7-pm7325.h b/include/=
dt-bindings/iio/qcom,spmi-adc7-pm7325.h
> > new file mode 100644
> > index 000000000000..96908014e09e
> > --- /dev/null
> > +++ b/include/dt-bindings/iio/qcom,spmi-adc7-pm7325.h
> > @@ -0,0 +1,69 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
>
> We expect the bindings to be dual licensed. What was the license of the
> original work?

Yes, just GPL-2.0-only:
https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LA.UM.9.14.1.r1-086=
00-QCM6490.QSSI13.0/include/dt-bindings/iio/qcom%2Cspmi-adc7-pm7325.h

Unfortunately it's the same situation with all the other header files
like this one.

  $ grep SPDX include/dt-bindings/iio/qcom,spmi-adc7-*
  include/dt-bindings/iio/qcom,spmi-adc7-pm8350.h:/* SPDX-License-Identifie=
r: GPL-2.0-only */
  include/dt-bindings/iio/qcom,spmi-adc7-pm8350b.h:/* SPDX-License-Identifi=
er: GPL-2.0-only */
  include/dt-bindings/iio/qcom,spmi-adc7-pmk8350.h:/* SPDX-License-Identifi=
er: GPL-2.0-only */
  include/dt-bindings/iio/qcom,spmi-adc7-pmr735a.h:/* SPDX-License-Identifi=
er: GPL-2.0-only */
  include/dt-bindings/iio/qcom,spmi-adc7-pmr735b.h:/* SPDX-License-Identifi=
er: GPL-2.0-only */

If you know someone at Qualcomm to ask nicely to relicense those (plus
ones that will presumably be added later), that'd be appreciated.

Regards
Luca

>
> > +/*
> > + * Copyright (c) 2020 The Linux Foundation. All rights reserved.
> > + */
>
>
>
> Best regards,
> Krzysztof


