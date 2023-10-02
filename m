Return-Path: <devicetree+bounces-5169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B95FF7B57FD
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:43:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C8FF11C20843
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13F7D1D52E;
	Mon,  2 Oct 2023 16:43:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CCC1CF85
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:43:34 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDF18D7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:43:31 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5335725cf84so21400940a12.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 09:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696265010; x=1696869810; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x93iIN0fNUqVoRi/c/6JJ+kFUaB/mOrDLlTEcgIl4+M=;
        b=yi328mmjajwyHxqAYIb7cxvfQlP5nsVnr6S7Ekg88z9MMu5fXTEAnoIo3/W1fia/BQ
         2M1i+Hcn9NH11dg061mxWxjZjHjE9F3KxmnmQaault8yt/wuH/VBgDb6ma3vUjR078pC
         J/A1VeSS6qUnJaB5MmTtdckhQUCKTPEey/j6Kgc5zfZDfbXvI1l+GViYL03IjA1RfT5V
         hjTxq2bvZp5xyDlcqgYYGELzZUm9AVVG/6sxqbd8qsM2TM2HXpoKUvvw0jmjnw9GrSyb
         7hJHkEcUK0/89v4RSDo0S0Ca433uzBwyJfp+4sD9ONFRoG8/1Io13MphalwFSMQ3Y6Tf
         A55g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696265010; x=1696869810;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x93iIN0fNUqVoRi/c/6JJ+kFUaB/mOrDLlTEcgIl4+M=;
        b=emkaNC50HAVufPzdLFG4gSq+AyMBRrzhqN09rje5yW3K55Xo15X3diMlh401/PlkcO
         pWEupXXkF50RtUUco9lsdCXQjF5FefkDkC8ECH1d18plwrNDlkSan6oHOEO3zSMeXZzM
         56XIKqlPvEO0fpIDVhtNbOFLpiqm8Kst12/jgSayW6jff8qkAnRcJN1XkKG+7FnI0TOv
         bE/IOYb4+TQAajKAuU5VFNWGwmDv/lIbD+84hizNtKRZB8SyXJc3GTCjpAJqvKpN+3tR
         9JFLTyxBrSN9ZcxvQckej9qPQiTwlcSJQ4ZZK9kuc00Pt0k1JX9TSE5sdvkk6hSK+Vr4
         TBtw==
X-Gm-Message-State: AOJu0Yx/57jwwwi0o1CEwQEcRGSAFZCJtXdZy7uOw37/2sv+bB145ntW
	YnGY0k+WT41nox3gBUBol1C7cbyxuGZ0GGsT2X+EdA==
X-Google-Smtp-Source: AGHT+IHDDMMxoHK1rMkkwfVFldZ+KWxjIjoU9+PtnwHrVewlRhb5UP5vNxEhatM3whdpv4O1/RWIUBsxnkMjfmKqjDE=
X-Received: by 2002:aa7:c157:0:b0:533:4c67:c911 with SMTP id
 r23-20020aa7c157000000b005334c67c911mr11352514edp.19.1696265010143; Mon, 02
 Oct 2023 09:43:30 -0700 (PDT)
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
Date: Mon, 2 Oct 2023 11:43:19 -0500
Message-ID: <CAMknhBE0CfASN9Vb0aZWt4Cebik2cF8QVBaXCvyJy9dNF-PjdA@mail.gmail.com>
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
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
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
>

Yes, I was perhaps getting a bit too creative here (the two inputs
come from transformers mounted 90 degrees apart so measure X and Y
component of an angle). The only reason I did this was to take
advantage of the possibility of an "OR" event to avoid double events
for a single fault bit. We can just go with the double event on the
two different input channels as discussed in "[PATCH v3 22/27]
staging: iio: resolver: ad2s1210: convert LOS threshold to event
attr".

