Return-Path: <devicetree+bounces-4746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E33167B3924
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:50:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4FFFF283EAC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04756666D;
	Fri, 29 Sep 2023 17:49:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D29B66663
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:49:58 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCCBB1BC
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:49:54 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5346b64f17aso9693722a12.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696009793; x=1696614593; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gVb8bc5h6cYCDb4wln/HVuuicIeKALI/2rEiAT/rv2E=;
        b=N3HunwXEULDIWeSDpg2dovjPhxxXVkwKQrZIb5WHl7nNtU40aC1xbj9rmgW+rFHDwk
         JnxSLwB3TRR66HENPjh79s+7UIga1UV54ab7P7gX8aNxy043BBV4vn9m3iDyKkyKtDar
         8XsVsJJUbKwgYRim+jMm194c5VQ5s+N7l9/jfo+T3gau2BksbRC3/Dpdw9hkKdfbFvMC
         e0qXhPk5Ck9m76bCnOMDzpbf8W+4GP4lS6dAa8qy4BT+DyOS8ktBNziJjNnqO03R0Bz0
         w9n6LsnbRqUjyx7shjkL4O/iBRDxJhz3C25gKELqWP8XBKswMZTgDwtiu4hOTI4q2dmB
         9amA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696009793; x=1696614593;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gVb8bc5h6cYCDb4wln/HVuuicIeKALI/2rEiAT/rv2E=;
        b=TJXeAP9/TPUh6Ii66chwKgttn7fzAfTicyPrzs8brxylbcTLOqWTIPXUfX1v0dJUDV
         9elVybGuak4O4clvciTqV1/fVG+tt6gNZU/kj1U8DvWq/oKAIo5tK0SgNGScf09kNBMU
         QMOrdEYZR1pXTkG0c+FxpbxpNEQpIJVkcL8n3fkb/8GwMENe0lu5rQWaGxF4lFIriqL/
         8t9UCQEMsgwwJ5pm/fPlHO6/5nnOfqUCELvKtaQ8TBL4OFVCs68LOYGAIeFVclKWJOPj
         ICg8EtZ/oSPmbIwevS7CULNPxQnaLjBbife16lmbrFziOeWsPCrJhq2IgxALkjUYTYC8
         NdmA==
X-Gm-Message-State: AOJu0Yz2Jv7rr4DfKQ+L461zhUvOfDaUZFozBQxh3R70zpSPWi3QJA1L
	SSXemF0c3ksCLavVni3/F5vez9azdhIB2pQB5d14NA==
X-Google-Smtp-Source: AGHT+IFrazPWKmZQvejWAgHITohOjWY7XIYytqxFwOWTgz5mw+hIEm2IUh28jJx/1qJjE+rTURLQuJJ8e+d0I3x9+LY=
X-Received: by 2002:aa7:c549:0:b0:523:4acb:7f41 with SMTP id
 s9-20020aa7c549000000b005234acb7f41mr4282447edr.14.1696009793077; Fri, 29 Sep
 2023 10:49:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
In-Reply-To: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 29 Sep 2023 12:49:42 -0500
Message-ID: <CAMknhBHLwWuuCDSCBZV1bB1MuqDa5ur4GEY+Yqofvn9MPGRcVg@mail.gmail.com>
Subject: Re: [PATCH v3 00/27] iio: resolver: move ad2s1210 out of staging
To: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>, 
	linux-kernel@vger.kernel.org, Apelete Seketeli <aseketeli@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 12:25=E2=80=AFPM David Lechner <dlechner@baylibre.c=
om> wrote:
>
> From: David Lechner <david@lechnology.com>
>

Ugh, an automated tool picked up my personal email on this for some
reason. This extra From: line can be dropped from any patches that get
picked up on this round. I will make sure to double-check next time.

