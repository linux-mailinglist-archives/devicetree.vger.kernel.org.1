Return-Path: <devicetree+bounces-2381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5AB7AAADD
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:55:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 6390D1F21B7C
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 07:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D7319BD9;
	Fri, 22 Sep 2023 07:55:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA8A18C2D
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 07:55:13 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D764F7
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 00:55:10 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9ae75ece209so41485866b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 00:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695369308; x=1695974108; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xo0lap6Lgs4aUClULX8HNoJkpzCnX/7Jsbfgdxnl/pY=;
        b=U40KPtjDZ5oaO5BjIETV5ge09nMGO25IctNP7IsHQ1RRdgr+d5AWtS/eOxi9zPPo9P
         pSaNJFh4AXorjtnS6ssNF8FgMJisx0AD5s/ZgRdBXjgsDAa2rQ4zUmM73IRTnk8e05v9
         QoZFjnHJGlsfI2+Sg8EU/WiDfJ7znOgNPgg4msTJV2SUU99KxQEl3EtVMnJqfDzQ1sn4
         SEdQYPehpYYUpnWyxBZSsYAUaXp5W7flb+1GDokdD84vpx+t2/1IhI1WOCuhFZ1z2rTm
         u4EMBp1npo35emO8jl2kkmb6X/H1FiXtRNcH1obDEPaU0S9lmPQf2anXE6fI5+nfXc9V
         w9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695369308; x=1695974108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xo0lap6Lgs4aUClULX8HNoJkpzCnX/7Jsbfgdxnl/pY=;
        b=UVX+nRiXNtmEGowu8RPlneRCR8Lwv4Emn/uTd90Db5spAOsHI0nLOwxtYu8X509Z8r
         8OT/NhaBbS4KTTXnSrbh2KSEb3p5GbtUyrzApEPFx2HWi+Ci4hOdVZgJ/RvHLUNbAOKy
         U668Nat+edH30iwWTfMaCW+YdKX3aQcuDBuLQxYIJAzCeWRolP4U8IeTh5O8f+E0WmSW
         a92Hcz2PgXooRvLjJdTnZXNfEYioobtnm9D9JFNGLboTJN+2FiU31rAjTnCUdUS5tPjm
         cFnfSJ1GwwIVNba61GbJRUUFEWvX+C10rkfI4pC0CRoyvatv+Bg9CZSvjMBzEd09Q+lt
         qXRA==
X-Gm-Message-State: AOJu0YwUYcCIni7vsk54mmb6LefrzpQpKHcyIYrfmmcEcS2loT1QwZuv
	9rlPMS/hEoX8oisWClT4H+nlhYCRM2f36QImuLTVQZzlrnNodAqlh+BmxRI6
X-Google-Smtp-Source: AGHT+IHSS1vKwEC9knLhqPNk1Y0RB0kqAke1ZsK8aoLkzIhsG+WewxcfwopOZUPCJajquFT5HL9JcQU2cuAIG7Q6jvU=
X-Received: by 2002:a17:906:2009:b0:9a5:c49e:7145 with SMTP id
 9-20020a170906200900b009a5c49e7145mr6718209ejo.69.1695369308485; Fri, 22 Sep
 2023 00:55:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230920170253.203395-1-dlechner@baylibre.com>
 <20230920170253.203395-5-dlechner@baylibre.com> <20230921154514.GA383967-robh@kernel.org>
In-Reply-To: <20230921154514.GA383967-robh@kernel.org>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 22 Sep 2023 09:54:57 +0200
Message-ID: <CAMknhBEVLZYQieKPCCf8QHp7H06Vsdobg_7qGm+MsbL8Kg-VCQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] iio: resolver: add new driver for AD2S1210
To: Rob Herring <robh@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 5:45=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Sep 20, 2023 at 12:02:53PM -0500, David Lechner wrote:
> > This adds a new driver for Analog Devices, Inc. AD2S1210 resolver to
> > digital converter. The driver is based on the staging driver with the
> > following improvements:
> >

...

> > - Use devicetree to specify resolution instead of sysfs attribute.
>
> Why? sysfs allows a user to change at run-time. DT is a firmware
> change. What/who determines the resolution? Unless it's the hardware
> design/designer, it probably doesn't belong in DT.
>

This one is a bit of a gray area since it could be either way. The chip
has two input pins for selecting the resolution. If the hardware
designer decides to connect these to gpios, then they could be changed
at runtime. But if the hardware designer decides to hard-wire these pins
then we need to supply this information via the devicetree.

The choice of the resolution is determined by the physical requirements
of the full system. This device measures rotational position and velocity.
So the main reason to pick something less than the full 16-bit resolution i=
s
if the max rotational speed of whatever is connected is going to be greater
than 125 revolutions per second (assuming 8.192 MHz clock).

