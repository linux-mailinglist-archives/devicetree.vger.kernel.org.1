Return-Path: <devicetree+bounces-5153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 897617B5716
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 9A700B20B83
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B121DA23;
	Mon,  2 Oct 2023 16:09:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FC61D6BE
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:09:26 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0934294
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:09:24 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-52fe27898e9so23258944a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 09:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696262962; x=1696867762; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvcS4k60SiYin2IuqPChFBTYjG7PvZn5VhPIg+Hqi40=;
        b=JVCA5WSQ3q3Rm6fabULBbJVRjB73DvKwoYvWLe9xXUaLXqlD345g4blEiLYXhnM4iI
         KbKZ6B0JSxRZoj65/YPwLsXkKEmV/Q5rTEdM9klldTEH2CgPdnFd2PcUb0hElEJGt3iJ
         tKXaMHk6db681dN8PkXVWDbKeCQuUZgwVr/wudd77BE3I/dCb2qxxrqf0t7wzqNntrg1
         uP9vnBX9oKLWz+QbTS1HwqZYfM4kDetZa/STSsOciUC25cS9WL+CSEbzYy3slISrFsuM
         k8OXxEIDU7/HZzJwdefMpnLy3oF9NBYedVKbFYPG0CVkJndmhopZKADsIQgsTBqdDl82
         dtSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696262962; x=1696867762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rvcS4k60SiYin2IuqPChFBTYjG7PvZn5VhPIg+Hqi40=;
        b=r3ivg8Sxju1c3sjOwuXH6t0K9AsduRmEgynHjCHHPQM+EVredtP19yzhyszshrr3id
         1lGem+U3SQZ/GgD/7z76lQTSmF/eB4Mbg2yBbiVW8tPBkAk/29RFd2PrbeBMZwIU2OO4
         qIE4Rq55283EJ90yw02ST5WnsQdy+NScMdacV0Mi49OXhg23aNKOi1+2/h9QkFxdX+aU
         cvDJTKfclDlSmk17jnMCh0wIhQzw+RsIHk+9aY1RRZzzhnv6sZ8I4CiVEymSfN3tW/C4
         i6SsNImGILnO121l9SMe1/C9GCtuDc1hW9pDBRa93VBEmQHQN/aPGtEFvyW4Jve1r0e3
         iAog==
X-Gm-Message-State: AOJu0YyQTHIWCVhyF829TcglgvcU/GLtMal2B8NtETW0VOsEfthQAkpl
	ycuAVoyy3G3GcVtrJR54AAH6vJHFbROrvvIOT7+Dkw==
X-Google-Smtp-Source: AGHT+IGyK+JVMEa1oJv7JXbe9a1iudhE0A9YYgOaQ6viM6YWtllJ+ds+jBI2VPpJJm6BYqbzrjaOUBXtWKX9kd051Ig=
X-Received: by 2002:aa7:c1d9:0:b0:530:a0a9:ee36 with SMTP id
 d25-20020aa7c1d9000000b00530a0a9ee36mr10463704edp.38.1696262962483; Mon, 02
 Oct 2023 09:09:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
 <20230929-ad2s1210-mainline-v3-22-fa4364281745@baylibre.com> <20230930164251.5c07723c@jic23-huawei>
In-Reply-To: <20230930164251.5c07723c@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 2 Oct 2023 11:09:11 -0500
Message-ID: <CAMknhBFKSqXvgOeRjGAOfURzndmxmCffdU6MUirEmfzKqwM_Kg@mail.gmail.com>
Subject: Re: [PATCH v3 22/27] staging: iio: resolver: ad2s1210: convert LOS
 threshold to event attr
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Sep 30, 2023 at 10:42=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Fri, 29 Sep 2023 12:23:27 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
> > From: David Lechner <david@lechnology.com>
> >
> > From: David Lechner <dlechner@baylibre.com>
> >
> > The AD2S1210 has a programmable threshold for the loss of signal (LOS)
> > fault. This fault is triggered when either the sine or cosine input
> > falls below the threshold voltage.
> >
> > This patch converts the custom device LOS threshold attribute to an
> > event falling edge threshold attribute on a new monitor signal channel.
> > The monitor signal is an internal signal that combines the amplitudes
> > of the sine and cosine inputs as well as the current angle and position
> > output. This signal is used to detect faults in the input signals.
>
> Hmm. Looking forwards, I'm less sure that we should be shoving all these
> error conditions onto one channel. Fundamentally we have
> sine and cosine inputs. I think we should treat those as separate channel=
s
> and include a third differential channel between them.

At first, I did consider a differential channel as you suggested in
v2. However, the datasheet is quite clear that the LOS and DOS faults
(and only those faults) come from a signal it calls the "monitor
signal". This signal is defined as:

    Monitor =3D A1 * sin(theta)  * sin(phi) + A2 * cos(theta) * cos(phi)

where A1 * sin(theta) is the the sine input, A2 * cos(theta) is the
cosine input and phi is the position output. So mathematically
speaking, there is no signal that is the difference between the two
inputs. (See "Theory of Operation" section in the datasheet.)

But if we want to hide these internal details and don't care about a
strict definition of "differential", then what is suggested below
seems fine.

>
> So this one becomes a double event (you need to signal it on both
> cosine and sine channels).  The DOS overange is similar.
> The DOS mismatch is a threshold on the differential channel giving
>
> events/in_altvoltage0_thresh_falling_value
> events/in_altvoltage1_thresh_falling_value (these match)
> events/in_altvoltage0_thresh_rising_value
> events/in_altvoltage1_thresh_rising_value (matches previous which is fine=
)
> events/in_altvoltage1-altvoltage0_mag_rising_value
>
> Does that work here?  Avoids smashing different types of signals together=
.
> We could even do the LOT as differential between two angle channels
> (tracking one and measured one) but meh that's getting complex.>
> Note this will rely on channel labels to make the above make any sense at=
 all.

I think this could be OK - I think what matters most is having some
documentation that maps the faults and registers on the chip to the
iio names. Where would the sine/cosine clipping fault fit in though? I
got a bit too creative and used X_OR_Y to differentiate it (see
discussion in "staging: iio: resolver: ad2s1210: implement fault
events"). Strictly speaking, it should probably be a type: threshold,
direction: either event on both the sine and cosine input channels
(another double event) since it occurs if either of the signal exceeds
the power or ground rail voltage. But we already have threshold rising
and threshold falling on these channels with a different meaning. I
guess it could call it magnitude instead of a threshold?

