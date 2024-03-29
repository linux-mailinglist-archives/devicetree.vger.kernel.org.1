Return-Path: <devicetree+bounces-54737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4854589264A
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 22:44:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E37CC28313E
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 21:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 469FE13BC09;
	Fri, 29 Mar 2024 21:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E2jA5cQb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A610779DF
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 21:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711748687; cv=none; b=GdWN/omH1WUnEQjlf9nRb+2T030u1Yk+oXYY20y81jktRyZFKkdYkSkcxCQUcewXIqtGXVXMVDgSFDTVx4l3my/jnCZbn1KxZs+3KYVj/Yi1aIiW3lVhuEUxrk9JUh81dpCfCT7Lw2AS9OYXeRmUTve65IFb60F/zuwUejTxiRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711748687; c=relaxed/simple;
	bh=R0748x8HaAZ6ztcZqMARaww0FvPGRFQrV6Zx2gzOeuY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LJxSctwkIEfYvglsaxmN0hlUvb1+I839yIAnSVHfDwp88yG1bFL8h/dQX2PAdHxHkRIx5V04R9Z+cpqpDwd74rRhyLyiept71+BJfdx+5VoFnVq45p4UMgaqq2g7CvR87E0i1LiXaBBB5obK8AMkyeCXKeHwQmNG4qVNVn00e0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E2jA5cQb; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a4751063318so292105066b.0
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 14:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711748684; x=1712353484; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jMjQQdvnAkpsaPKKclld6kAFP0Qb9Efzjh5DqJYyG9w=;
        b=E2jA5cQb8tZhiJVv3BZ5xi1GSmnqZgvoQgPQHdKJ1nqKWmwm+V1oaEhPD2s4HT4+gE
         5pGMmJnS+kAzxusJuVANHP/HbWJOYKEyXHmAFh7z6v9wa1m4nQ49QapfhAz2rE7WzQI7
         8foIPG4y2/OQV75WN+4Wwa0T1Aux3vq+4esXb3usS4XXU+sDCCcVTFv5XvjIgDoAiPY0
         oiP+puqQGeIyZsNRFKegiw84H0xjZCTuzNSOYOCglTl5sIexX8fQTAlzcYVC8ZFtT3Dp
         SIQQvDvqq9q1EdG0id2EKMkV/6RkrChpDnJ4VQwO1BWaUxE00Np0bqzN8zxwwrWbbhPK
         /Gqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711748684; x=1712353484;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jMjQQdvnAkpsaPKKclld6kAFP0Qb9Efzjh5DqJYyG9w=;
        b=URw26jRLjK2FScwBLJzxG/g+LtI/9S1hrYWj6yASoyYr5mAzu4S7aRspGlZ+oCMJap
         fhSmT34uBuoRsnSYnsT3QU2XfIz0hqWzGfBlCssk3Dk4oWU3+GlwIzgrOZJq83PHM8Qz
         qRtoJM0y5f8VHDYIuA5MF/dtEHkODJoIzJfj6msh7VeJXC9lg9hJvo1ZppBKhqPlozmm
         +RRc/MVkL5njnNMmTuENjECedC8267IzZbZ1SoRykBSIMwWMEIae9UoalS6BLItlAQRO
         Lix44JyXJy1gqnTrdEA/p7VdntaFrT5CV6d0GPies9sn3b47WfnzM8k+vizSuE1JhDMB
         KPTQ==
X-Gm-Message-State: AOJu0YxWTalkP7mQcWENHaGwslEPCjjmO6CvrUokb6vyU47EogfbqsBn
	Rx2c3saHvLam+oUg3jHlmE7sLNbFqexWKviWpved8WAvXklx5FHl5ZbbTD5UhvGseKC2EFqhOjx
	s+Q/GFy3DhWoDLGi7qBWVTY3msOOTJRJEM8tU0g==
X-Google-Smtp-Source: AGHT+IGnzhTMA6HHYVX0olI3Uv+9/awh0ir8pNhdla3RNXl26d+VZIeHZUDWe+RJNRV+KqFpSStgls6l+6RJr8d/fp0=
X-Received: by 2002:a17:906:2847:b0:a4e:ce3:bb8 with SMTP id
 s7-20020a170906284700b00a4e0ce30bb8mr1939897ejc.43.1711748683759; Fri, 29 Mar
 2024 14:44:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328202320.187596-1-gilles.talis@gmail.com>
 <20240328202320.187596-4-gilles.talis@gmail.com> <CAOMZO5D7QG3sbtCe_Y3h1i0b1VaLXCftLSCkjSuXcso+dKij9Q@mail.gmail.com>
In-Reply-To: <CAOMZO5D7QG3sbtCe_Y3h1i0b1VaLXCftLSCkjSuXcso+dKij9Q@mail.gmail.com>
From: Gilles Talis <gilles.talis@gmail.com>
Date: Fri, 29 Mar 2024 17:44:32 -0400
Message-ID: <CAKcgs2wVe_4J-hYoMisoLyRv+roRsFTNXuvFjAP09uEWLOUpHA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: freescale: Add device tree for Emcraft
 Systems NavQ+ Kit
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, robh@kernel.org, shawnguo@kernel.org, 
	alex@voxelbotics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fabio,

Thank you for the review.

Le jeu. 28 mars 2024 =C3=A0 18:55, Fabio Estevam <festevam@gmail.com> a =C3=
=A9crit :
>
> On Thu, Mar 28, 2024 at 5:23=E2=80=AFPM Gilles Talis <gilles.talis@gmail.=
com> wrote:
>
> > +       pinctrl_i2c6: i2c6grp {
> > +               fsl,pins =3D <
> > +                       MX8MP_IOMUXC_UART4_RXD__I2C6_SCL               =
                 0x400001c3
> > +                       MX8MP_IOMUXC_UART4_TXD__I2C6_SDA               =
                 0x400001c3
>
> If i2c6 is not used, you can drop its pinctrl entry.
Got it. Will fix that.
thanks!
Gilles.

