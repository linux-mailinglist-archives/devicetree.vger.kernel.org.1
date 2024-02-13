Return-Path: <devicetree+bounces-41196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C258852B92
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0250B239BA
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC17A18C1A;
	Tue, 13 Feb 2024 08:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oaRbXUHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285F92261A
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707814024; cv=none; b=nf3YmO0qRJ+Nz0v3AKLqiS8AbMx3BBwS3Hz6DfGS5KMqrZ7S5E9ZMhTMeGy4dh9hQpLJ9OR8OhlHDUKRx43+j6+LYJLUTvoZ1138ibmrmkaHbWhZ5YKbrKveHcUk9nrGe0L2Hm9uIMHh+SbMbCU0JVq+4j2H5wqpWO7i5BXAETs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707814024; c=relaxed/simple;
	bh=2cuQrRHVGcWfh39M8jUML+qmGE6F/UQTXYTXU1snfS4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OR4vJoF42CariCNIJzMzNQ0nPIlmgRsB+pgm2RrJ3GCBYhiujEVAAoZxm/yRW+axbzRLTbEqiwZrH27I/r40BkthZEST/VSHFE8UA8gKKITMh5Ljf/dNLaaf7sDJured/SmKalDZKKBzLeZY1qiodf+tsj/t+435H9AYWIp/yQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oaRbXUHU; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dcbf82cdf05so1001477276.2
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707814022; x=1708418822; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2cuQrRHVGcWfh39M8jUML+qmGE6F/UQTXYTXU1snfS4=;
        b=oaRbXUHUWbgLTtGnGtj98Wy838xfLDEkPlHLQj45Ba3JaeZHgw/EPk81+J2oKF7mYP
         DCh0mN/PEFHHSsjSe+3R092O7ZK3Ak/ike7Wy00fNm68/BzprChY4G4OL8Ds724/aCkI
         2BMagwv/l2A8nZDuZUpaJWxw7JChLyFrFu98qRCCmBJ5+G9EylvZaRW4N0eDecEU1AXf
         EsN2k6mFHJ5mlXXlyy3RWn9Y5d1hbaWJ78Uxn+7PtiHXZLFEah+00XpNa1y/HMj4xZgJ
         AXnOVQfGfdc0q/+9QVr4xaeLmFTKigPsNojAvMLB8sYgRrK0cWA9oiknpvDeInyQwUwl
         iaAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707814022; x=1708418822;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2cuQrRHVGcWfh39M8jUML+qmGE6F/UQTXYTXU1snfS4=;
        b=X03QV5SP7lmptBQBIHuVwG4FXr0pLx9LTx5FTiszOaIel4fozLaOPQTtZtkWMRyANi
         bQn10ZYs8uDaU5StQvcKLcR0s941K6nISArVF4IhqnSpPz+9bLdh9ijU+qWgEbtnG5Js
         BU0sm/Pn7pvO2MJBDkq1tkqVd5u8PaAESln+BzFofvDdXQhLvr4VJNfvsOWvqa6bCQA5
         Tz0Nkmz5uEMkPUDudb/+zTUhQmH3pgHIu8ZCEg+hfFWsFDe4UjjAt8zMPBj4H183v3z8
         peYAh2enFWlhybHqcQyfoO2iYI7WO8vXlmr/1pC/oywAk0wAuOdeiH4/FmGc7eGpglHH
         e9lg==
X-Forwarded-Encrypted: i=1; AJvYcCWbTEcdr/05zwcYd1Zvm4hx9E0j1p8bhRJuRhyG5KTYPKs2fRe8LSvkDG6QoLT3YPrR3dvEVFcf7OOiFIjb4mo5OorD+k2M4R18Sg==
X-Gm-Message-State: AOJu0YxZp2JJICFpxZ/TbrgbxD2fI0jmX7mUdLK41c4M2OY5MYvC+I9p
	LPrJPC2SVF54nfyH25LuGMrr6H0ID90PnIi90q/0L00heOrLrRH4Ba6XYCy8TJm2yfhVYXgYKcS
	/BA/elq27dkkH3ZvusMeJ0dKyy/7l0jjrjU7lXQ==
X-Google-Smtp-Source: AGHT+IFRZG5n++fAlPdmu+eyqxVBk49aoGoRp+I6MM/Om+FCfXmCNP1OwSYuG71bW545yrJ84k7ogl9bJKstYF+w/0E=
X-Received: by 2002:a5b:910:0:b0:dc7:4610:3791 with SMTP id
 a16-20020a5b0910000000b00dc746103791mr8332489ybq.44.1707814022204; Tue, 13
 Feb 2024 00:47:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240213010347.1075251-1-sre@kernel.org> <20240213010347.1075251-2-sre@kernel.org>
In-Reply-To: <20240213010347.1075251-2-sre@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 Feb 2024 09:46:51 +0100
Message-ID: <CACRpkdZ1VwU1xpf8Fe7qNn-WEfUGsNjWD3jFK0+5LxgxNtu+gA@mail.gmail.com>
Subject: Re: [PATCH v2 01/17] dt-bindings: pinctrl: fsl,imx6ul-pinctrl:
 convert to YAML
To: Sebastian Reichel <sre@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	NXP Linux Team <linux-imx@nxp.com>, Dong Aisheng <aisheng.dong@nxp.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Mark Brown <broonie@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 13, 2024 at 2:03=E2=80=AFAM Sebastian Reichel <sre@kernel.org> =
wrote:

> Convert i.MX6UL pinctrl bindings to YAML.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

