Return-Path: <devicetree+bounces-247903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C58D5CCC893
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8E748305133A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B43D33C527;
	Thu, 18 Dec 2025 15:33:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0971133AD80
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766071998; cv=none; b=K9dZNmm51hPkUt5wjdQSg86X4wTuI4/te14ZbRZ6u/JKtppcrWHDs7aiYWiFECTa2XYGVqnrt9y+5+c6wthz7FHujqzeHFp02/koxkpUG7Gtvv1/r3CQkZnX4imZOWRyf1/k2dfnc/+WyGAsFt8x5wc+f4DmDU0VW2xZ0u/RySI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766071998; c=relaxed/simple;
	bh=MZFYNuXybRkvVzjEOIC4+EfAayF8myAFp7P6EDOSejQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E9SvsyvqH6nHPmGZIopP0tUfgbc6TfcEQ5IuYRsM4bdyIuJ7OoMpll3zmz0ZAsQCk+L5Knca2DM1gB32BFp4WUQsRb62+v0BKK3LGObbRh0waZ2rvgJxtzbRnfReS5PbAtpglZ3dGkfwNNqGy379iBDgSakNCvmVw44OyKSj/Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7caf5314847so463947a34.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:33:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766071996; x=1766676796;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0dY9hOfw+nsqpN2twCEfuG3WmlvEURTIXg7HZZOHeWk=;
        b=On6taqPfDY85l31FpNlOMl6XUO/0/2/ThVNPWu09RK3M1X/lLdPo0FT8YcX48rHAsH
         gwhcabgZPSVhvePNWyZwwzYaG0Eubfmv4WIz97xnwHYGFLBsB82VTcViaWbwmAOlZZfT
         1WNXn4b/o+tQM6YV2yjCBu/yud57cZtCFwSauWVc3xg9HJDUUvg2LrHozx9MfOSQCoaz
         VXRb51Y0uFs6ShMSywpFmjY47kLKOEAqAC5pVyZiJEOD7A8Diu/5KR+/C9eHcQ6XVNMG
         IwC5uCJ9ElBphMw8DH2FfJAaWubJfv166NR+YH+9m1BhIeE4ePZHRMXt0UvPRhfLyuao
         7TNw==
X-Forwarded-Encrypted: i=1; AJvYcCXPq3q03kwAS1iB3pXCVpTK8tMTCYc2zadJzrBPUDDzhf3FrPRjtOLSM4bqQsPas3jnOYqq/qrEfM3E@vger.kernel.org
X-Gm-Message-State: AOJu0YwTlumVSBFprT5vXD4BIUifo3U/LjzQi2nNTI9qlzUgmjv6ilJm
	+Mv8daIZ6j9AqcnaoLKw6Gf3vThBHUQh7EjmBBWdv7VabuJEEo+9lUvbbZJQ95kO
X-Gm-Gg: AY/fxX4nrN7JOMxlSYOkzS2LcV62bBiRYXniG8wnlnsPINHg3Dv+ZQDYISRBH2BWBPk
	/JsvY55HYZ7Wz5ig5NKBgbToyU+LD25+HPU1TGIZOGN/79RFY2Z3Ya2ThJcsDTkXZDByRRt49oq
	NIVcAPXOfsCzv0J2jpZAP832BK0GaZ5IrdQbZZaWefscb/a9KvKDhGzlcF1zdJb5axNd5rUsSHF
	MxKVU68Qzb5Oi70FkQgeFnR+hvElAT71QyTcAcNkk6EXvTzRYXvgjJdvFtn/2gUVNh+gNlqOqm2
	iVFDwSjm+5pMc9QNSEPI7oedg4+/Rj1XeJGIXDxMpK1rNnDtSPkyu5uLyr92AYxqJUuQ3E8+NwF
	Clwi3d3v0lPxQOUecjNBDjKJMFgqMlmwBn4JHZOYEmKfu0vCMgoEM8jRlOC5Og+tBkSKiogRfwu
	Ah6ZltKqpOkRV0OSPOteHoMjefUXQEc6lxisDN3V268BcTuJKu6Jarz0u/pHip9/M=
X-Google-Smtp-Source: AGHT+IHN/1a6wrDf7C2E9yF76f8ysSDZa5R+w6V/M581WTV2i3eSTKpWgS7Riko8UkmiW4stTPbn2g==
X-Received: by 2002:a05:6830:6ee6:b0:7c7:6626:b586 with SMTP id 46e09a7af769-7cae8369d6dmr8888680a34.25.1766071995757;
        Thu, 18 Dec 2025 07:33:15 -0800 (PST)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com. [209.85.167.175])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc59a7d560sm1805319a34.11.2025.12.18.07.33.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 07:33:15 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-450b3f60c31so390423b6e.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:33:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWJ5anQi57+JrSdipQXJIfodAuhf6it8Ie69XUgM3ozVth2VaBJkIpF4wBJKAGUO6PbjFoqohZhssRw@vger.kernel.org
X-Received: by 2002:a05:6102:644a:b0:5db:f15a:539d with SMTP id
 ada2fe7eead31-5e827475423mr7568578137.7.1766071582885; Thu, 18 Dec 2025
 07:26:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com> <20251218152058.1521806-2-alexander.stein@ew.tq-group.com>
In-Reply-To: <20251218152058.1521806-2-alexander.stein@ew.tq-group.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Dec 2025 16:26:10 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWEJ-eYwUTnotsTVEtKrujYVsEB4kFVjRYh3wXZvyjfGQ@mail.gmail.com>
X-Gm-Features: AQt7F2orA3yT0lOZg8JX_FxOJmakbvS5h-4BSNrnlwxZlZ9eRsbqovvybB3Xhko
Message-ID: <CAMuHMdWEJ-eYwUTnotsTVEtKrujYVsEB4kFVjRYh3wXZvyjfGQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: clk: rs9: add clock-output-names property
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, 
	Roger Quadros <rogerq@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

On Thu, 18 Dec 2025 at 16:21, Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
> Add "clock-output-names" which is a standard property for clock
> providers.

Why? Isn't that property sort of deprecated?

Will be replying to the cover letter next...

> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

