Return-Path: <devicetree+bounces-6585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF427BBE3C
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 20:00:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96CDF281E12
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E184934CCB;
	Fri,  6 Oct 2023 18:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WiBC/fm9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFF7347D1
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 18:00:25 +0000 (UTC)
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7491B6;
	Fri,  6 Oct 2023 11:00:22 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1dd1714b9b6so1550128fac.0;
        Fri, 06 Oct 2023 11:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696615222; x=1697220022; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RDr+imkOTNbKOnDVnnk/Zt9fwW96PBDFIIGHTQX0KZQ=;
        b=WiBC/fm9bMP+uSxNUwLYiXGKzB/OT6DFgQp5Fd4A6/Gb9hkgoa8a3DyyFFRgxQXZTY
         p0kVQ2u2GYwqKu5b+d9YkoXRpV8VxpBDifmjW8MRR1Y4a8ZxoMbwGcwqEblm+hgwTfGG
         zs6/Z85CGHhF8kpIgyHbIxnuthmelYdiJvqflTF+Ln5OunhC2jOWyfyhR7iTrbABa9UL
         HnQPCZQPhWyqYcpsYrg24QGl32oBYDv2NJiVFDahNt9177YAYlGv6lSnw0toKV/pnUpp
         P1+hqv8iVDVOOW0pX80ivZVE7z8ZwF0MQyipcpkAcljWPEiNSiJ7yLepV3XBiahmAoZM
         64qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696615222; x=1697220022;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RDr+imkOTNbKOnDVnnk/Zt9fwW96PBDFIIGHTQX0KZQ=;
        b=R2tPwmC1yagzr0OsdJM76gg5GGR/6tT4MLXBX1ys3xKu3SGUYeaLhqxK2J+F/FrH/w
         dqd0RGaZA18D8zloQKp3QX2k1QPMbxTf9QU1k+RbAvbdFVaxrYw1o8cIZVr9C+fNAjrd
         eHvRER7LHEDfsqWHSyHQkkJmbfdaOBkrWlbyftoGlExFeelKzvWLRzccRbF15iFKpnqV
         hd5dNYaHDZr+YzEy8SyTySl/v4LKmwmT3kFNtx0MIAFQQyOtEPUp4tw36UKPd2G33FX3
         aqNJVDkUjecvL0UTIJ0g13NtjV+z6IbDfCG9iQXcC9NV4aYOtuDEs6zQrwzSdcOlCd0D
         I3GQ==
X-Gm-Message-State: AOJu0YzQbZaa0kNnGOBvnSAncOf53ySOm2Kjff52GirIMtd6VVpuiCB1
	rnu/kshNBhVr7bfaoFvawaISXpE1aoDDkuy/kVA=
X-Google-Smtp-Source: AGHT+IEBV/AD5PE3xQaskQXScnhUVgWpf0pmDPaxYkRhZBl1ggIEBCdStAWG3NdKhGHYrTUsZ8JGREJnb5TMOvXC+fo=
X-Received: by 2002:a05:6870:527:b0:1c5:56f:ac08 with SMTP id
 j39-20020a056870052700b001c5056fac08mr10326580oao.12.1696615222155; Fri, 06
 Oct 2023 11:00:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231006160437.15627-1-ddrokosov@salutedevices.com> <20231006160437.15627-6-ddrokosov@salutedevices.com>
In-Reply-To: <20231006160437.15627-6-ddrokosov@salutedevices.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 6 Oct 2023 20:59:46 +0300
Message-ID: <CAHp75VeWwzg1spSvQ1tNmC7zVN1FLOjcpRGZsoL-49Di02pn0g@mail.gmail.com>
Subject: Re: [PATCH v1 05/11] leds: aw200xx: calculate dts property
 display_rows in driver
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, kernel@sberdevices.ru, 
	rockosov@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-leds@vger.kernel.org, George Stark <gnstark@salutedevices.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 6, 2023 at 7:05=E2=80=AFPM Dmitry Rokosov
<ddrokosov@salutedevices.com> wrote:
>
> From: George Stark <gnstark@salutedevices.com>
>
> Get rid of device tree property "awinic,display-rows" and calculate it
> in driver using led definition nodes. display-row actually means number
> of current switches and depends on how leds are connected to the device.

So, how do we know that there will be no regressions on the systems
where this property is used in production?

...

> +               if (max_source < source)
> +                       max_source =3D source;

max()  (will need minmax.h)?


--=20
With Best Regards,
Andy Shevchenko

