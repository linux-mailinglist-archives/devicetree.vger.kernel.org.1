Return-Path: <devicetree+bounces-18243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3207F5CEB
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:52:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC1FB28198E
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E6A2207F;
	Thu, 23 Nov 2023 10:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AhUOw1xd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E9C8D67;
	Thu, 23 Nov 2023 02:52:40 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6cba45eeaf6so185640b3a.1;
        Thu, 23 Nov 2023 02:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700736759; x=1701341559; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nkePtrNuruXmd4CBUnZv9iSf3c++8/vF/GaVL8IUodI=;
        b=AhUOw1xdVJzUMyFPnNovb6adKV2siiyuc7OVooNviH0mrreVZ1Tb+PETq8t3B5G3e/
         ijAugzBnyTdZ2pW2X72qv0+DxmsQYd5CPNZHRwcoLH6ozBi65GGfanyjypBdzJZALwzt
         tWRP4uNMxV4hdZ62jo9zWNdx4mLG4VHoL75GRWThjBEqQDHFDl1TKh41Vt+9HKCbgNH4
         wKRUKihPjlIYuiNsPooXQVWA0Qg0JljjmFZChG7OmAaTMccMnuoJeechfV6yu8fjtibh
         UNG+nT/3STKy+r1+eCs4mjl8dRNXmyghRcPGf934sk5c0p7/zCcNGpRkFvJDMbe6+tjr
         FFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700736759; x=1701341559;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nkePtrNuruXmd4CBUnZv9iSf3c++8/vF/GaVL8IUodI=;
        b=wOqZ1fxQpIFjRnCe4vFYe6Dc9cpllDG2FoTDNh5iIwgtNzFpTQgJPKWHAm1cHPfm5p
         DIbWxRrDCZ8BsYhRAqjDDSoPwAieorj+gLvJt6SjpO0eYT3KFXsw5uWwjqe7sFOt9Cv8
         4Gj6z+oRpT2+St9Tu1cLpEU5sq7XlJyOKXz++sAevxCO7W7LGYd8EIRJKEevn4NrwrSY
         4OohG3kumTK+I5Yr6/7gT/e2NRsS7D4wJ5yw2eK7Bghn+a5hqbBVcx79iQ/Ee4LDM3wr
         vRQh3JO7EQCSSJ/GeZsyUUmx2lRUgw70eBw9aYr8ibbsgMI4qLqOXxAcHixINRhkuO4N
         XdfQ==
X-Gm-Message-State: AOJu0YxNV2//HqckN8CyiZb/p2CDLxUGvoFEjxpayR1Yw9Hb3BiVTN1s
	W7PA/reOEF9QrFqzgSQY3N5GmdmJk44nlRHNyl6yuhAy
X-Google-Smtp-Source: AGHT+IGlzqduhpVaTVgbiGUjI+xeIT+elH0cWBjuFr1bOqmX4DtEGJbfjntHWAyTaG3DDPu2iy+oZ99oRoSF0peWKwA=
X-Received: by 2002:a05:6a20:3c92:b0:18b:1f5d:b105 with SMTP id
 b18-20020a056a203c9200b0018b1f5db105mr6279100pzj.6.1700736759489; Thu, 23 Nov
 2023 02:52:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231123104812.13906-1-francesco@dolcini.it>
In-Reply-To: <20231123104812.13906-1-francesco@dolcini.it>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 23 Nov 2023 07:52:27 -0300
Message-ID: <CAOMZO5A53XFbRBp6QXWoDVBr=J347_riO1wWgPLxczT3JcuwQA@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: imx8-apalis: set wifi regulator to always-on
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, 
	Stefan Eichenberger <stefan.eichenberger@toradex.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Francesco Dolcini <francesco.dolcini@toradex.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Francesco,

On Thu, Nov 23, 2023 at 7:48=E2=80=AFAM Francesco Dolcini <francesco@dolcin=
i.it> wrote:
>
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
>
> Make sure that the wifi regulator is always on. The wifi driver itself
> puts the wifi module into suspend mode. If we cut the power the driver
> will crash when resuming from suspend.
>
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

I think this one deserves a Fixes tag.

