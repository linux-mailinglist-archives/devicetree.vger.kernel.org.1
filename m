Return-Path: <devicetree+bounces-47160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD5386C546
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:32:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7259B25D4B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281325916C;
	Thu, 29 Feb 2024 09:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZJ6+A7rz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A0A5B690
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199120; cv=none; b=fqyES0JcQyVkNJGCQnDW6lAFC3t+JJuzwJXY/GxSoFphadBqCjNcAjjQx51QdKnMmrxyBCvqDd3OKJeuFFyK/4+xtOkxunHkqltLLLPES+DdyfrIDzc9Kpt+JAOJ6NlBt2B8v9AUNPbRzC9e59sS5OPCMmOfHanTqEh5JIRGYCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199120; c=relaxed/simple;
	bh=opo7mQZWVYpVDdRyNsHJ8IMcbJUuM71Avs91Rn6IfU8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AtFaKazo2tjANmzrHibllgeUtPF6ACX13OSUsuXQxmiIsUmTsB+1zRZB61kck557gokrjN2ixiSlZ797k/22qR0jtgxvzKUP+KYz8sg0g809VWYvs5+6RV/ze1JFrewaBPu3VXwZOD/qyN5qoScOqSTp28oAzub9mZYlq9SHLIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZJ6+A7rz; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-607c5679842so7340647b3.2
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199117; x=1709803917; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=opo7mQZWVYpVDdRyNsHJ8IMcbJUuM71Avs91Rn6IfU8=;
        b=ZJ6+A7rzobmaN2J7fsUOYkME9qyeXF7N/DXobsyAzbvaGxu5/BRhUlWg2FP/jZd/OO
         PnDvFYW8vRLMaawZgCN80i6aiRs+Pg8H27HhR1v3D6lYJ7Ed1Gu+Dn3/ZHO7ohiQv/DM
         +B4o+uv5AtDOsqKozZnp/o+ua1HLgvsDkADAQ+2cUzccgzpgyW1GuDZ3JaCnEZQB9x/S
         kbZRnMxIxe4AtQ0SPzQ7tToYkAXAKu3Zh2BsfFIOTqOlwm0u/0szLDpb7yvZ14Rq1EBm
         5kMxLLtbun2MgmUljcHrB03TQ9JtQOH1JGclUCAILyhoDLS/Ht/vmdWtxVyWh5gl/7BE
         69hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199117; x=1709803917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=opo7mQZWVYpVDdRyNsHJ8IMcbJUuM71Avs91Rn6IfU8=;
        b=pxnVU4+N8eSWHcaa1mAy6KX4tGYgokLU40YRw1uKHjJLPCF13ps74n8GsdBXPsvi8+
         V14BHwNIChkINlawVmn9+q+JAMI65ER+Q1ufEI1zjLqq0+EGHzFxVTBrvdgmv5n3gP7R
         ckQtPp/wuDzbl9DCtwm9vTRL9S0ITcE6Xb4vsERaosirvilv5skiHyGWsa1soYlpiCuz
         OCFydnzCdehpmeP6sQry9OlLr1Y5S4k4HXaaCdnIbV1qiRn6uNE3LAtAaMBAKcARwqvF
         gZsc7cMIfooj6crIGPmnPrxbOICzlt9Dy1kd/W7mNBI11ZnibmziT3fTUpVd4ZKyJ/hF
         PvnQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6Y6qxwRhhVdvfZySIGdyh73caTTjFK234XwRkcaz/DLY1/FpA3Ak73gaB2bbhHOB3dtUdf9lAGmg2/JkwWH+41K9TY3BrELVlkA==
X-Gm-Message-State: AOJu0YzIDwvyW0WHdwSrfWwP0mjDSH5YijKQ5BiAx2lIy9BlO84XsyzF
	SpVlMnAOWVP2EEgKaLTBY0w0hKw9zq6Hp2qsy7kgx5UxmMcgb6AByJ//pR1rPTCScw9MWF2yhoE
	l5jhoTXnXBghxFgZloht7c55vAai8lExstI16qA==
X-Google-Smtp-Source: AGHT+IGNRvaOnTQfEEnOfUNmrrYTBcCW+lJEHgHZjPZ4w/d3EVPHcV3t0qD/I7wrRi4Jiume9znp9nxiaMzhZIyXCqg=
X-Received: by 2002:a25:e444:0:b0:dc6:57d0:ac9 with SMTP id
 b65-20020a25e444000000b00dc657d00ac9mr1830420ybh.6.1709199117653; Thu, 29 Feb
 2024 01:31:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-18-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-18-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:31:46 +0100
Message-ID: <CACRpkdaeVXAiVO3mukbtGMNRVAQcJKK7d8OQq1SnTfb8F16B5g@mail.gmail.com>
Subject: Re: [PATCH v2 18/30] gpio: nomadik: use devres version of clk_get*()
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Replace call to clk_get() by call to devm_clk_get(). Allow automatic
> cleanup of the clock in case of probe error.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

