Return-Path: <devicetree+bounces-20544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D7A7FFFC0
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 00:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD7551C20C28
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 23:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1C854FBB;
	Thu, 30 Nov 2023 23:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="P0w3vrmZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B65D10E4
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:54:52 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c9d63d28b1so5999081fa.1
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701388491; x=1701993291; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sGO8mAdrAqhDRxrlrd1/sOrvK17UXFpdyDtQDEFr48s=;
        b=P0w3vrmZ/OBgZk9VnvkxG4/ZliZvrM8ERpyZfmVJKGBmM0tfKXgDxFmE5gH8Ht22Id
         S3vGIHzsLFBxxfAuzBPmoPiSJN6XutpKQFsSnFA8F/TJLS8HKVFcQ+ObIOUlA7g2jaPs
         MKEt2e59vzN9ezXrHBIXIz3PHN9rxLxs2wsxaZP4fXlpqv/PYHvOm+crQe5Y9wxQoFrd
         Juyf3ayyw1z/ZgcXRTa2meWQPqkjrcgQbcMhIrz/vm4pBAL7yFlPy/V+Ae1rcJERCia6
         mDSxhFMmCL5O+b1Ml3PfpzqgdGhEM9S0W+yiIMIZRHCRwCIg188JRqibz4A78+t2YG8H
         +oUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701388491; x=1701993291;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sGO8mAdrAqhDRxrlrd1/sOrvK17UXFpdyDtQDEFr48s=;
        b=qWo6EaQx+8fzfGXzkOhNlcnPt+b/wOZUEwEsyW/80DzHBmODtHYrE4Jupgsfm5VdH7
         TdfHU/qgUlc3+9VtZxMtOpKbQYfULDr9/YIZ4w8VgYbIknFuDM/xTEGoJ8Exg4BBwAcC
         NaZ1j7Fa9qLtAeLO3iFSUaRBXwptACYH2LWG+ZhR6usA3raesG2t8e2VAMa7+WJYX4CJ
         8FuuCIQgk7D81nHgZ1h9iheYVXUO+WhcVpWhqgqXWwD58DQhYzolr6fpumTxXAl81TFp
         lhzMOb528zMEp6pPL1F+jUNPYrp406HIl4+QFEzZSaffGHuTSNmo6eELPIMr2rBIk3Ja
         i+GQ==
X-Gm-Message-State: AOJu0YyFAdzvn3JAwbUnQldGARPg2GaF6h5KHyKl5aBW5953H8Agh5jc
	uGquRMWyAncj9cPgZi9sGl6iM+FUdobiwkPDawAYxg==
X-Google-Smtp-Source: AGHT+IEDwWrg5ORWAu7cojx2auj03EsJ4gxI7RF6HouCxhjtKTlwjmweO6WdaOgqE9ObA1y9cBqoCf7+CnqtwPLTmwg=
X-Received: by 2002:a2e:5cc4:0:b0:2c9:c50c:a9c1 with SMTP id
 q187-20020a2e5cc4000000b002c9c50ca9c1mr203763ljb.6.1701388490692; Thu, 30 Nov
 2023 15:54:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231121-dev-iio-backend-v1-0-6a3d542eba35@analog.com>
In-Reply-To: <20231121-dev-iio-backend-v1-0-6a3d542eba35@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 30 Nov 2023 17:54:39 -0600
Message-ID: <CAMknhBH0pF_+z_JqWGscELBmAEDyxLAtgQ-j3=6P2MeFXnzhWQ@mail.gmail.com>
Subject: Re: [PATCH 00/12] iio: add new backend framework
To: nuno.sa@analog.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org, Olivier MOYSAN <olivier.moysan@foss.st.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 21, 2023 at 4:17=E2=80=AFAM Nuno Sa via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> Hi all,
>
> This is a Framework to handle complex IIO aggregate devices.
>
> The typical architecture is to have one device as the frontend device whi=
ch
> can be "linked" against one or multiple backend devices. All the IIO and
> userspace interface is expected to be registers/managed by the frontend
> device which will callback into the backends when needed (to get/set
> some configuration that it does not directly control).
>
> The basic framework interface is pretty simple:
>  - Backends should register themselves with @devm_iio_backend_register()
>  - Frontend devices should get backends with @devm_iio_backend_get()
>
> (typical provider - consumer stuff)
>

The "typical provider - consumer stuff" seems pretty straight forward
for finding and connecting two different devices, but the definition
of what is a frontend and what is a backend seems a bit nebulous. It
would be nice to seem some example devicetree to be able to get a
better picture of how this will be used in practices (links to the the
hardware docs for those examples would be nice too).

In addition to the backend ops given in this series, what are some
other expected ops that could be added in the future? Do we need some
kind of spec to say "I need a backend with feature X and feature Y" or
"I need a backend with compatible string" rather than just "I need a
generic backend"?

