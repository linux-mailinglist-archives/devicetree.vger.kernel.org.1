Return-Path: <devicetree+bounces-9974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C802C7CF37B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:04:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4FAE2B20DBE
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 09:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979F616427;
	Thu, 19 Oct 2023 09:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdTMMTOI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1159316416
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 09:04:36 +0000 (UTC)
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CF88129;
	Thu, 19 Oct 2023 02:04:35 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-66d264e67d8so34161256d6.1;
        Thu, 19 Oct 2023 02:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697706274; x=1698311074; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tV/rPK/2j1VojJvVOgd9kGFZP0ncz1ZVYvpMG5KlT7E=;
        b=mdTMMTOImnqPzZ6xzERxgHzoffE3dOF2Z8XzDriyy4OCXW3WrZzRIDuvOuSjduOYLq
         xAuZaAaQ2cq7rpbOn5Lm354mEGi6bCJaQXGPHGUtOwqcHqTjdEEE3CKjKYZmNsIhV/Qk
         VVAxa8N82ITDz/jQUYqdArcDaTyHMGndHAqYRygadS2NE7/XDkB1WxSCHjdmPidiYDyH
         5Bvf01LI/MEhVx53sulsa3nhzwdMo37EFuTk7fj+n6/a1PB9DOntqbaIOKv18LVDuh5N
         cYpfPPj2Xs21yPcl+2zjcj9QxTNJiYFY7j+HQMd1o83y3K6rh4M9w0IzQ0JtXrgh9q4e
         +Nng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697706274; x=1698311074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tV/rPK/2j1VojJvVOgd9kGFZP0ncz1ZVYvpMG5KlT7E=;
        b=tfTSrtu/QAl7RfiugvkpojGaVi7pdV4MeSuA9jQIIBVDwVtLw+VfYXMOOZhBmKNX/+
         GUcDDKAwEbG1PPrggrTxfHb69cUCFE3K2Nj33hBFjTlhcubGj3oKUq3tL/Gsvbh8VgQR
         iAws/thutC671NqzGkSyS7CYWG5CCAvfxarSaMeMalNe2W/+fr4kptJInTUVLWzn8rEx
         gmYhRHU3AbrCeeqd+lM7FokDugJgb/kIor/P1LwdszxfX1FwvStYbAXWusLoYYhaSl5r
         gtEE70CYcPQ2sSMnoB5eYynVM4iCE/7kGCZ/XFjUAM1VUR/lcP0cnv6aHfwZV7UsI77Y
         taOQ==
X-Gm-Message-State: AOJu0YxSPNVPdR5usBI92G6sVaNLnQACysyJ98Lif5OZEGAVDsFxspOd
	VDS129aHq+x8IfjxPmK6OqOiKwzGGs22a8+c9tM=
X-Google-Smtp-Source: AGHT+IHcJ/TYSvI0wciw9VT9ALAlFtcBPxuIxXqSgO4iRmfrBKAfVfBXgWN1LRy3xiFqrabr/G/GZI9zrN2zZpiDYfo=
X-Received: by 2002:a05:6214:21ea:b0:66d:6845:ea2d with SMTP id
 p10-20020a05621421ea00b0066d6845ea2dmr1871765qvj.53.1697706274596; Thu, 19
 Oct 2023 02:04:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018182943.18700-1-ddrokosov@salutedevices.com> <20231018182943.18700-7-ddrokosov@salutedevices.com>
In-Reply-To: <20231018182943.18700-7-ddrokosov@salutedevices.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 19 Oct 2023 12:03:58 +0300
Message-ID: <CAHp75VcysFpaGyhy0Yr3vEFTsLqd-sJfrMp4ces3ga7uAq40_A@mail.gmail.com>
Subject: Re: [PATCH v2 06/11] leds: aw200xx: add delay after software reset
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, kernel@sberdevices.ru, 
	rockosov@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-leds@vger.kernel.org, George Stark <gnstark@salutedevices.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 9:30=E2=80=AFPM Dmitry Rokosov
<ddrokosov@salutedevices.com> wrote:
>
> From: George Stark <gnstark@salutedevices.com>
>
> According to datasheets of aw200xx devices software reset takes at
> least 1 ms so add delay after reset before issuing commands to device.

For the "us" unit you chose "XXXus" style, why is "ms" different?

...

> +       /* according to datasheet software reset takes at least 1 ms */

Ditto.

--=20
With Best Regards,
Andy Shevchenko

