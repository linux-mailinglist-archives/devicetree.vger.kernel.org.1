Return-Path: <devicetree+bounces-5176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBB97B588E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6D1A71C20837
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 986791DDCB;
	Mon,  2 Oct 2023 16:58:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EBE1CF83
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:58:34 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71899D8
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:58:30 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5333fb34be3so22359557a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 09:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696265908; x=1696870708; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=facSmfJsGsAsq+rykZ/KF/cMYvD2lkq973HpFZImYKI=;
        b=xBQykIaesmrfPjlBsgXSVF6MSN6ItPcLI6GwrMiU1nDijo6x7QmGIscwbIYOW3s/+9
         JR3VU9KX7iq8onNGHvBh+071MX3vBgbCOGxNmLiUI3CYBu/zFWaCQ54squNcZehRy+52
         bV+99cjA6m52qJiGc8srkeN59Q9PnE4+N52YogqGHuD/CEszNdJjUf763uoXZeA0wzs3
         m6DY31BppsK6atYn++16SGuUuh6s8875ZMQaF9rn/bs/wa4W/uEngEB9XIc9mi6cY/DO
         clUa9D7/MU0t+AB8uW45eRWt9WbCX6VFBHnGaX5VU8598Bum/yQEbrnApQOp9pO0xqTy
         0IGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696265908; x=1696870708;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=facSmfJsGsAsq+rykZ/KF/cMYvD2lkq973HpFZImYKI=;
        b=asOVrCHaKL61lr4ej6hFx+wLcy01owtrzN59yhI5ULC/AMBmGIzk75HmCi1WFdSWmo
         pAmA/mUEJCHYYauZjctpO2eFqoUDdmZMEMdtBgkx1izQnotWXxSNZ324L07XxCSHbDlw
         DcTMy1HJpMN8lreUHSh5cA8rNYfboxei0iOkJFQ0Rfy5i5DOG+XFUP+N2BxRmNWhehsH
         KJctpK7ZQcDuHZssBNXVcLLlP77gUVMiPrwBUZUQSn2Zmo+V7zELmvTZ2Q3vcFDNnC7+
         DYgShKY2+TqFOABkEvnYrMt4vXeFPTMin5ONwzJEdQBi+gFT4cDCs0VO25lOQ9t82eEf
         lwgA==
X-Gm-Message-State: AOJu0YxdmbZxh6cjaj7aQhIICafB/xTQxDA4iH8/HXd4r7AA5aCbAMne
	4hrVNeIOfWqvZZ46rGUyq6qhebH5Ob7761NzePJFPA==
X-Google-Smtp-Source: AGHT+IH4U4UmWWwFkhVQ7XVkg+noGoXE0O3GqEQDJBMnj8iiX0hl1ZLoZEEsrGijkmhrJ48540hsp97CzdT/OLdFAOY=
X-Received: by 2002:aa7:cf92:0:b0:533:795d:8c48 with SMTP id
 z18-20020aa7cf92000000b00533795d8c48mr10931884edx.10.1696265908624; Mon, 02
 Oct 2023 09:58:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
 <20230929-ad2s1210-mainline-v3-26-fa4364281745@baylibre.com> <20230930170046.36637e9c@jic23-huawei>
In-Reply-To: <20230930170046.36637e9c@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 2 Oct 2023 11:58:17 -0500
Message-ID: <CAMknhBH4+cUSX_j3-Y0xuTEiZHd3Ke4Zm8FdxLZJwn5gr_d-ug@mail.gmail.com>
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

On Sat, Sep 30, 2023 at 11:00=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Fri, 29 Sep 2023 12:23:31 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
> > From: David Lechner <david@lechnology.com>
> >
> > From: David Lechner <dlechner@baylibre.com>
> >
> > When reading the position and velocity on the AD2S1210, there is also a
> > 3rd byte following the two data bytes that contains the fault flag bits=
.
> > This patch adds support for reading this byte and generating events whe=
n
> > faults occur.
> >
> > The faults are mapped to various channels and event types in order to
> > have a unique event for each fault.
> >
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
>
> Use of x and y modifiers is a little odd.  What was your reasoning?
> Was it just that there was a X_OR_Y modifier?  If so, don't use that!
> It seemed like a good idea at the time, but it's not nice to deal with
> and requires a channel with that modifier to hang the controls off
> + make sure userspace expects that event code.


Regarding the point about "requires a channel with that modifier to
hang the controls off...". Although that comment was about modifiers,
does it also apply in general.

There are several fault events that don't have any configurable
parameters, namely _sine/cosine inputs clipping_ and _velocity exceeds
max tracking rate_. So there won't be any attributes that contain the
event specification for those (e.g. no `events/in_angl0_*`
attributes). It sounds like this would be a problem as well?

Should we consider a IIO_EV_INFO_LABEL so that we can have some sort
of attribute (namely `events/<dir>_<channel spec>_label`) so that
userspace can enumerate expected events for non-configurable events?

