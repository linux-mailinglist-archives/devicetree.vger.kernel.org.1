Return-Path: <devicetree+bounces-21970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EF2805E31
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:57:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 167E9B20EAE
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEEA267E8D;
	Tue,  5 Dec 2023 18:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HzdBN6M2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67A8CC6;
	Tue,  5 Dec 2023 10:57:28 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d03f90b0cbso11355095ad.1;
        Tue, 05 Dec 2023 10:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701802648; x=1702407448; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tevZ8UT2m5FuLuMDQ9ysXxP+PUvVdIyb8mMOrUfUXmE=;
        b=HzdBN6M29X5ZCHyZgWomWjLpaVR9snQaoRscmLKa4KzF0SZUlEKDjSJrAAwVr98gBc
         bbSZUjg5lVD3tKrilZlLgS/vykPvSdlLdv4zY5a/7Bh9dRz7DPOvipMkt+/NQ1lzyCGb
         g0wfXZy6FE1f+TbehGDvm+UXPrlA58iuLk4OT5McvZGvPB8whksTIL0WTVGSkbmxL52n
         q6NkAZJLbD/m4+Xx/tfdXzLK0AMPyaJr6ROTSEjdtJ+3S6WOdDRdcEYwwW3E3a/G2VA4
         RRykU41X3hRUiEDzmH+k4B0i7X+jp1AMzCsStk05YPth2mjuyg7Nm3dNNlvza30n/CeZ
         fqIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701802648; x=1702407448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tevZ8UT2m5FuLuMDQ9ysXxP+PUvVdIyb8mMOrUfUXmE=;
        b=SNfKu7e8uH5fsjbTaWNnWk4T+LYgTDy9gvSTY7s1e+o4m5o1AtB49CM1S3uJmYPKVu
         DVu40z1MVzdZ1W68KuyqW2JX7fHMnM1OaT5Luehdwwsm6ABGsO4Cda1IPI172cWZc7Oh
         Gx7YPJd86uwfCPIHVxroogkBU0Kh8sKmnlGSBvrUmGuCusBOWXuAXcp/p11PlbTMFoi/
         7j/EDcYZRVGh79O0oDUskWMkTISCGfqxIqwb8fQqvz+vqqwI0juDmortU7FyUrM79NkP
         AMacgesz8pWrBsxd9XZGkHw1k0US5VfWcj5JkXj71gl5NfCbATUAhduktoCWf1r2H3DV
         K+JA==
X-Gm-Message-State: AOJu0Yy5i9rkaYy1Gpvekvm/YwHRJV4e5BeEX3Nqrgeup4PN6FbS+U02
	IO/xGeAPrdcS/Biuxypy0sfDCNIwymaEKAj+m6E=
X-Google-Smtp-Source: AGHT+IEc7ie+iZwnxI8QRTTNI16dcqfV0yF8NX/A4xD6jvv/ItHDeZ+zdy4uH7nahij/EoLO4oKI2AgP6VqIaHfHPRk=
X-Received: by 2002:a17:90a:a10f:b0:286:4055:63e0 with SMTP id
 s15-20020a17090aa10f00b00286405563e0mr16091799pjp.0.1701802647829; Tue, 05
 Dec 2023 10:57:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231205182241.2550284-1-tharvey@gateworks.com>
In-Reply-To: <20231205182241.2550284-1-tharvey@gateworks.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 5 Dec 2023 15:57:16 -0300
Message-ID: <CAOMZO5AWsytgARbfMdva31Yo3nB=BkjfkhQiXHY=nmWUGe3-DQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice-gw7: Fix pci sub-nodes
To: Tim Harvey <tharvey@gateworks.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tim,

On Tue, Dec 5, 2023 at 3:22=E2=80=AFPM Tim Harvey <tharvey@gateworks.com> w=
rote:
>
> Several schema warnings were fixed in commit
> d61c5068729a ("arm64: dts: imx8mm-venice-gw7: Fix pci sub-nodes")
> however the node names and the ethernet NIC node were not quite correct.
>
> Fix the node names as the ethernet device should have a node name of
> 'ethernet' and remove the device_type, #address-cells, #size-cells, and
> ranges properties that should only be on busses/bridges.

I sent this one to address the remaining issues:

https://lore.kernel.org/linux-devicetree/20231130225242.988336-1-festevam@g=
mail.com/

