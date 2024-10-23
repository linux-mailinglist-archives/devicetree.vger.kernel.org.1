Return-Path: <devicetree+bounces-114680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 496AC9AC729
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 11:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00C261F2207A
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 09:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15D721A0AFA;
	Wed, 23 Oct 2024 09:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DXzXUCLn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C1A1A0AF0
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729677351; cv=none; b=exmgYzsDzwOsOjQczNBaGGOd8YoPdx0MSbQ5NY/OE0jjp2kHxdFi5qv9b7DlnHJRil1a8XvtW1IR+cRXnpTD0VnK3TSo1fd8fu0xtxR7j6Q/L05stdOcy+4TYbm0XEYlZIkSeMSDk4qvpmu0nuBYXQHkxMlXRrc1O6OZaS1dVv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729677351; c=relaxed/simple;
	bh=mPjbajRR4bOoqdpLgYZ8XbSz5ySdKuEORFF5va6CWng=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l8MMwy/Xca+9u/f/2nzBzLi/3Zl3BCnTnFdtcz76/DI+cCpFraNdOCwfbrJL+q87pU89rhyWAAlgAagwWXVkVMQsDwpC0vpoZWI64Ik11nnd1MnySKFBWqvhrMphlJS6djBpRiu0ua8R6SOym8RmAS724yPUziqG5Auz6UOhRN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DXzXUCLn; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-539f1292a9bso8050596e87.2
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 02:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729677347; x=1730282147; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPjbajRR4bOoqdpLgYZ8XbSz5ySdKuEORFF5va6CWng=;
        b=DXzXUCLnJTkTe/GWL9Jk/5T4yROxkixMnEE8AlG82vsRfOnob17U/eCPgooK2f1mA+
         BPnS9UMrE2URCQDGKXqimW2762tWT6HW5i5Rnk4HintbOHIGdrzzj/+Hx/KIpeWQeTvq
         EFZwExx1gIbHjdV0aedoXhq3BklPmtfDU9nEZs3R0YIZHG3vfY+msTiSlrsa2vKDe4AW
         JZCYqBwKyTssWwJCp0VeI6q6P3KVHAGG7jDo+Q4Ax/C4o7PjwAeDESoxC9D0si0C9+XL
         iBk+5RN38XZgmJty19im58YjBxKpxXov2Ub6I+/6O2+5eEukqIRqaOHHb0snj+Ijsvae
         ctBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729677347; x=1730282147;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mPjbajRR4bOoqdpLgYZ8XbSz5ySdKuEORFF5va6CWng=;
        b=xMO9GXicG7zJhNzYi479zl8y06jWdWL0Hufw59gYar/phMw2hhQ7kVpo1pu3HiQlD5
         9Gvh/Xv4Da3wK0T7Qoxbaov2JdhYDzTH4Eo9HAt7woUnxLhDnNq2bGM9/0Xq60AS9Ei+
         MDFGxQrc8viAT+wJ1e1oXEyvBrA3QWOgvLBhNg1/mDqqs5VfWozZKTUMaFm77sP2rSwb
         nKElv/wtFw768g4s1NOCU8SBnW5HA5JpXiDj7gf4bSHh+0aU9cRxo7gq8mNZlF8mwY8v
         v5zIEkF6Pj2IaUtAT+m2Ijhhk4rrh4xFFa4FOugbiGAF9jKwlYk0a1gnTHpwtMwzFJaX
         Do+g==
X-Forwarded-Encrypted: i=1; AJvYcCVCaDjGrgiabi/Y45wHJSA82pVs7dNWXlkPjjfxUmJPG043icMKodoPUvI9oE99/S5+y9Gm/zc9m/1L@vger.kernel.org
X-Gm-Message-State: AOJu0YzP4yy0n/RMjA8a4EG1ZvJQXbVKWhrnLlNmhi08sdeqaKd4eUq/
	zl48zjtBjFECG9ahyszwlM3yFiEQtxnDcsGf3VQU+SlBREbZANYoEwqb9TGzxwRPtOXCDwFk6/+
	60gOnejZKaQVlGjvK0KBumGxuSFbou2NVbB5m0A==
X-Google-Smtp-Source: AGHT+IFolzLkC+hFN1J3gwCoJ6YWqJKWTBQDu86gMLl5LAGSfGYrnPJgVActrb1HJVkCYcI4kIlnf6HXC+/7svXA1PM=
X-Received: by 2002:a05:6512:e99:b0:539:dca9:19a2 with SMTP id
 2adb3069b0e04-53b1a355155mr926169e87.39.1729677347558; Wed, 23 Oct 2024
 02:55:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017211241.170861-1-marex@denx.de>
In-Reply-To: <20241017211241.170861-1-marex@denx.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Oct 2024 11:55:36 +0200
Message-ID: <CACRpkdYxerBV1sZ7KpOcO9_nwaLd1b+EKpttD2DW7zJx5ikUWg@mail.gmail.com>
Subject: Re: [PATCH v3 01/12] dt-bindings: pinctrl: fsl,imx6ul-pinctrl:
 Convert i.MX35/5x/6 to YAML
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, Conor Dooley <conor+dt@kernel.org>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Stefan Wahren <wahrenst@gmx.net>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	kernel@dh-electronics.com, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 17, 2024 at 11:13=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:

> The IOMUXC controller description is almost identical on i.MX35/5x/6 SoCs=
,
> except for the configuration bits which differ across SoCs. Rename the
> fsl,imx6ul-pinctrl.yaml to fsl,imx35-pinctrl.yaml, fill in compatible
> strings for the other SoCs and fill in the various bits into desciption.
> This way, i.MX35/5x/6 series SoCs can all be converted to DT schema.
> Remove the old text DT bindings description.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Marek Vasut <marex@denx.de>

This patch (1/12) applied to the pin control tree.
I expect the rest of the patches to be applied to the SoC tree
soon so we don't end up with too many warnings.

Yours,
Linus Walleij

