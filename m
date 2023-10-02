Return-Path: <devicetree+bounces-5225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A05AA7B5A77
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:50:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4FA33281A69
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A311F16A;
	Mon,  2 Oct 2023 18:50:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D247E1EA8C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:50:07 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59938B8
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:50:04 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-538575a38ffso26483a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696272603; x=1696877403; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lci7aE9Nr12rnsuBj8lxjXGwqKY+F3Jq4/Wt3MfIP2I=;
        b=O38wsdmxtsyna4oOXPYL4H+Twdm/qOzAHz9KQdyr4mqdZm+XuEjlfGkoeVFVJcNc5K
         prA2f9hvBEW4j2GmaGH+mZkZEuZ7vT4tUN2PxFMO2zFWEE78UN/L9tZd8yFrHysdI8bT
         Sjc3V/qlMwZ1PRlCe0NqqX9v5qQTmI5EF7BTNqXre8YISVLhtQpO6aIJMkmfwql5Lm16
         NmqVf4qF0BgshIbmiVXajOgmlD8yV61dL7MA9kXd2at14bpFxY5a5eLR8VLZ09cUemol
         lNY/6flNkYKFezBSqltNp1tBut2dhfOiKHBPJyr93qOwO1KVDXkS3sua5eKiEcvtVpi6
         eqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696272603; x=1696877403;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lci7aE9Nr12rnsuBj8lxjXGwqKY+F3Jq4/Wt3MfIP2I=;
        b=HqjiGTtgNW9M8KQUcRPsBV9oebgnSUw6mRJrg3JTZjuJyYYoCueuUn4Z5yq2dgF3qE
         ZJTknh1iPDIiJ9TB7nqUNI3phBflEv12CJDd3QC3jco34laPmN5yQ5QGi5XIXTx6uSJr
         RnVlJMW98858NUjyUqUPfsPn1vJq+VxMJ4Av7kFwHYAilQDKz9CUUUwy6PC7w7n8eS7Z
         JpQ0632wbW28l1BzgMXXgF9m4x9fmc0HjcqOPoAoZKdHQZQ5vckz7uaqkcER7MzuXq45
         xTV1Lq2t0TLGRjaiR0VhHi72ks0CMlcfZ7PhnLjntUU8SX1/HPg4ujRw4pdTn9EvLpDg
         lH4w==
X-Gm-Message-State: AOJu0Ywt8LHa10eQrLTTEdKPNG138OaQ56++uxoBeDDwAEVg09L9to1R
	akcyA4j5ACBaiZB/Quy6E35caGozqVND05a6nfjh1g==
X-Google-Smtp-Source: AGHT+IGL+kcb6ZIi1pHexQ8Fkm4S3zA9EjTyFErM4ZJzlSAeQCJ0yHHY0K9LT47stqhw9jK05IhHUx7c6c+C9uoQT4Y=
X-Received: by 2002:a05:6402:1a28:b0:531:1241:3e98 with SMTP id
 be8-20020a0564021a2800b0053112413e98mr9957195edb.9.1696272602654; Mon, 02 Oct
 2023 11:50:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
 <20230929-ad2s1210-mainline-v3-26-fa4364281745@baylibre.com>
 <20230930170046.36637e9c@jic23-huawei> <CAMknhBH4+cUSX_j3-Y0xuTEiZHd3Ke4Zm8FdxLZJwn5gr_d-ug@mail.gmail.com>
In-Reply-To: <CAMknhBH4+cUSX_j3-Y0xuTEiZHd3Ke4Zm8FdxLZJwn5gr_d-ug@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 2 Oct 2023 13:49:51 -0500
Message-ID: <CAMknhBGFpYx3oYqJgVgKZpoeANmVmXtUn+V3VnAW7woc7ytTow@mail.gmail.com>
Subject: Re: [PATCH v3 26/27] staging: iio: resolver: ad2s1210: implement
 fault events
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

On Mon, Oct 2, 2023 at 11:58=E2=80=AFAM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> On Sat, Sep 30, 2023 at 11:00=E2=80=AFAM Jonathan Cameron <jic23@kernel.o=
rg> wrote:
> >
> > On Fri, 29 Sep 2023 12:23:31 -0500
> > David Lechner <dlechner@baylibre.com> wrote:
> >
> > > From: David Lechner <david@lechnology.com>
> > >
> > > From: David Lechner <dlechner@baylibre.com>
> > >
> > > When reading the position and velocity on the AD2S1210, there is also=
 a
> > > 3rd byte following the two data bytes that contains the fault flag bi=
ts.
> > > This patch adds support for reading this byte and generating events w=
hen
> > > faults occur.
> > >
> > > The faults are mapped to various channels and event types in order to
> > > have a unique event for each fault.
> > >
> > > Signed-off-by: David Lechner <dlechner@baylibre.com>
> >
> > Use of x and y modifiers is a little odd.  What was your reasoning?
> > Was it just that there was a X_OR_Y modifier?  If so, don't use that!
> > It seemed like a good idea at the time, but it's not nice to deal with
> > and requires a channel with that modifier to hang the controls off
> > + make sure userspace expects that event code.
>
>
> Regarding the point about "requires a channel with that modifier to
> hang the controls off...". Although that comment was about modifiers,
> does it also apply in general.
>
> There are several fault events that don't have any configurable
> parameters, namely _sine/cosine inputs clipping_ and _velocity exceeds
> max tracking rate_. So there won't be any attributes that contain the
> event specification for those (e.g. no `events/in_angl0_*`
> attributes). It sounds like this would be a problem as well?
>
> Should we consider a IIO_EV_INFO_LABEL so that we can have some sort
> of attribute (namely `events/<dir>_<channel spec>_label`) so that
> userspace can enumerate expected events for non-configurable events?

Well, I didn't think that all the way through before I hit send.
IIO_EV_INFO_LABEL is clearly not the right way to implement a
`events/*_label` attribute, but however we consider going about it,
the point of adding such an attribute was the main idea.

