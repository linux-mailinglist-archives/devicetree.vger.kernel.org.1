Return-Path: <devicetree+bounces-8365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D40EE7C7DC4
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:35:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C0441F207C4
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 06:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3080715A1;
	Fri, 13 Oct 2023 06:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="fm4Dbls/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897A2110C
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 06:35:40 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE87EBF
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 23:35:33 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-53d9f001b35so2980065a12.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 23:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697178932; x=1697783732; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mw7d2rWqkx84mECPA0MX5FELEn+q0S5ND1l7U6MlW1M=;
        b=fm4Dbls/0njpq32LVctJfLhPqWi0yJ2J3EF7WOVckfgZlax20krmmVv5gg2VZIZt8H
         NhlzC3+gxZ2F6XK/5uapNx04onfXTOVBbcfWS0WW+lINoVpDBp+TI3u7ug5XFIKcbB+a
         UKvJinKavIL30e8Os1gt2Bav1/RsUt6iMBb6p1zUx+w5bEYJmBu/LsSgW7HzEQBceEpp
         odky8UsJHB1frVNKCUg8W9NBNp55gWD6j/JsaZt8dHP/qzvK6CqzdyeiGZk0D3cBBYPq
         h5vwJWeCb/PR/u0o9aRa2ZQZ0Yqg68m774t9QkukPBLVRqBv8mRQ2v6HLJA2YRmUOfvW
         4nkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697178932; x=1697783732;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mw7d2rWqkx84mECPA0MX5FELEn+q0S5ND1l7U6MlW1M=;
        b=bdgDi2y4ahbQfAB8V86dpqN6RFpApkPBlTLnh1C0NqgT5H5LnC2xHHZcSe9UlZkTIW
         7JwG0rFe9ymRcFyHaGspH7sAdgDRQwpuM8RT9ywj52lZy2aZRt25GOVGfOTFJ0Z5jwBE
         /PIHJJ1UWgHBQPYOuMYi03K1MTumFxUl/taNXOAQ5kZXPzSLZlywE+3ArMBVJxnD95lG
         W6QJNp7IMmzuA8kS56MWR5vnefGoNKkyihzJsSQS2BxDOCg8a3tMsjA4ZnsSgdMv0fbR
         i9YX78sKp1KJ7UQPsaNXxOoFXK2VDiCVQu/lGVpV0RqIJ6s3aCIrNk53TOdUe6ZGjP2T
         BKjw==
X-Gm-Message-State: AOJu0YzaQ+CZEsu/yuSfxtcF4RsWnmwEebhlIuMFAIIxkzaKMfmcH2Fr
	JEfF101iUALN7gp1Q4gUolU89bKDFge9I/DvtIlBXw==
X-Google-Smtp-Source: AGHT+IGbjKov6XXZ6PjO42kk5Nimru0P7r6dHP1nYYD+Mxr/9oWhoDfATrLUq4GyB5DEQmuF+pYfpw==
X-Received: by 2002:a17:906:20d8:b0:9b9:f990:c701 with SMTP id c24-20020a17090620d800b009b9f990c701mr17557436ejc.52.1697178932152;
        Thu, 12 Oct 2023 23:35:32 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id u13-20020a1709060b0d00b009ad87d1be17sm11920164ejg.22.2023.10.12.23.35.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 23:35:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Oct 2023 08:35:31 +0200
Message-Id: <CW73PXH7OBDG.22PGA47PJR8T2@fairphone.com>
Subject: Re: [PATCH v5 0/7] Add support for LUT PPG
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Anjelique Melendez" <quic_amelende@quicinc.com>, <pavel@ucw.cz>,
 <lee@kernel.org>, <thierry.reding@gmail.com>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <agross@kernel.org>, <andersson@kernel.org>
Cc: <konrad.dybcio@linaro.org>, <u.kleine-koenig@pengutronix.de>,
 <quic_subbaram@quicinc.com>, <quic_gurus@quicinc.com>,
 <linux-leds@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-pwm@vger.kernel.org>, <kernel@quicinc.com>
X-Mailer: aerc 0.15.2
References: <20230929003901.15086-1-quic_amelende@quicinc.com>
 <CVX5ZUGU9BVE.2TA819U1AI6BZ@otso>
 <a2781978-2081-f4cb-dfe3-0489860dab8e@quicinc.com>
In-Reply-To: <a2781978-2081-f4cb-dfe3-0489860dab8e@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu Oct 12, 2023 at 11:50 PM CEST, Anjelique Melendez wrote:
>
>
> On 10/1/2023 7:15 AM, Luca Weiss wrote:
> > On Fri Sep 29, 2023 at 2:38 AM CEST, Anjelique Melendez wrote:
> >> In certain PMICs, LUT pattern and LPG configuration is stored in SDAM
> >> modules instead of LUT peripheral. This feature is called PPG.
> >>
> >> This change series adds support for PPG. Thanks!
> [..]
> >>
> >> Tested-by: Luca Weiss <luca.weiss@fairphone.com> # sdm632-fairphone-fp=
3 (pmi632)
> >=20
> > Hi Anjelique,
> >=20
> > Actually I've retested this now on PMI632 (and also realized that my
> > previous tests weren't correct and wasn't actually using hw_pattern).
> >=20
> > Using the following commands (after boot) I'm expecting to get a
> > 500ms on 500ms off blinking pattern between white (255 255 255) and off
> > (0 0 0).
> >=20
> >   echo pattern > /sys/class/leds/rgb:status/trigger
> >   echo -1 > /sys/class/leds/rgb:status/repeat
> >=20
> >   echo "255 255 255" > /sys/class/leds/rgb:status/multi_intensity
> >   echo "255 500 255 0 0 500 0 0" > /sys/class/leds/rgb:status/hw_patter=
n
> >=20
> > What I actually see is it blinking between cyan (0 255 255) and red (25=
5
> > 0 0).
> > At some point after playing with many patterns I got it to actually
> > cycle between white and off, but I couldn't reproduce this again (or I
> > didn't try hard enough).
> >=20
> >=20
> > But with this example it correctly blinks red on-off.
> >=20
> >   echo "255 0 0" > /sys/class/leds/rgb:status/multi_intensity
> >   echo "255 500 255 0 0 500 0 0" > /sys/class/leds/rgb:status/hw_patter=
n
> >=20
> > With "0 255 0" and "0 0 255" the other colors also work fine, it's just
> > the combinations that seem somewhat broken.
> >=20
> > Regards
> > Luca
> >=20
> >=20
> Hi Luca,
>
> Thanks for testing again and the feedback!
> Looks like for multicolor devices there is a small concurrency issue with
> enabling pattern at the same time for all the led channels. This could be
> why you observed your device blinking between red (255 0 0) and cyan (0 2=
55 255),
> instead of seeing all channels (255 255 255) blink.
> The fix I'm planing to include in the next series is is to disable the mu=
lticolor led
> channels first, then configure all channels, and finally re-enable channe=
ls
> so that pattern is triggered at the same time for each all of the channel=
s.

Sounds reasonable I think!

>
> I am currently testing with pm8350c device so if you are able to test nex=
t series
> on pmi632 it would be very appreciated!

Will do, thanks for fixing it up!

Regards
Luca

>
> Thanks,
> Anjelique


