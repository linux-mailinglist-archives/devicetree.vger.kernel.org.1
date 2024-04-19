Return-Path: <devicetree+bounces-60905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9E78AAF34
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:20:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AFCB5B22BF0
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538838624B;
	Fri, 19 Apr 2024 13:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gyxpWJ7D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D089D127B72
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713532821; cv=none; b=parbPtechLUFB3o65+3xAakOJjnc+cNm+DWl83CVlDX4NllKS/XIk4ES0pj7SkXkx/nPyd4tUSFergi0GryCsj8of1CRWevX8l7DFMPXnMPvuXQ3yxSBqljuBIPKwpgirDCVOfUR3Sp3Sbipsp44M9jNcgInL/Gq6TTasD8rjDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713532821; c=relaxed/simple;
	bh=ukqNim2wR4zF3yUVwL5ebSYvcGgLz6CYpTrNBxxNrNU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zp6yN/vtAkbOOJe3TGtWSMe0ScoVJ8FcWcM4ICtXlGB8I8Y3Azfwnqt4OqLa1XL1YU1MgFH04JmlIX4CsvIXdJyfonVKqeki3sn12HWv1ow6BnNS6CXs99Se3P8WVlOvhEVYrEmOM1nNQJ/8/PlnzcmVaF8eIiTnNyEsABso4wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gyxpWJ7D; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-de45dba15feso2171207276.3
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713532819; x=1714137619; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ukqNim2wR4zF3yUVwL5ebSYvcGgLz6CYpTrNBxxNrNU=;
        b=gyxpWJ7DQoONgUIXaVXhsNH+4a//S2TMpfKpHA8nOBSsAifOpd9YXMcffjOfiKsQzC
         mUtuuhBBe/tauEnU2uRBZkwY8uw5l28Fp/MwFBYQ7VSv4DVK5yGJcfFEKb5aKCEBeTyE
         P+TtlJCHE+zynCGlX6X5WyZlZyebnHSYyjRz3UChIjxSKz0pHf/G3pvo3CKGcdHzUYHZ
         zs8AO1E6klEYdRYLJe9TPgsv8OTzW7eCczq8mhdMx14eYv1xEaFNf2jyDhWousRhbHTO
         CnJHfcwm8eysEdPujMC/a2nDuRTMLric+lDJOllwkxuL4kEoc8pbj0TOd+oCIRnhbkjG
         ZAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713532819; x=1714137619;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ukqNim2wR4zF3yUVwL5ebSYvcGgLz6CYpTrNBxxNrNU=;
        b=SBUAqwuQ4Gw5J7RZ77JSewt0Uu+0qtbcMzftByujdWIMqS+fySMn3o3IrQ+nBXNxQw
         Kq7YBJ2WbbxOYtTxwnow5KtT8P7P1oobUreUKnjXy6W1xPL3NvgLoiV1GAYTlAP+Rhlo
         Y/sNHJ0wkr1nLFkzc6ynQgKhgc9BD7xAn40y7grUsUqGRsyH3ZcJOIBzpTgF9leU4wo4
         kpdG3NlIBJFQIRy37Cr+XjdGpnHPyt/5fI/BNU4vmh9O9xB0W7NwRdgLVy6+F88yjRXE
         hYaroXFcylGu3GgpLG4nLO3IZ7Pm03Ca8MNcgbtHlhNKSABrRzleJVV3RXIrNJbyDy+X
         AbUg==
X-Forwarded-Encrypted: i=1; AJvYcCV6+Bj+aGUTJDzwfIiyX7Pe5SvhOE5Xi6zoJ/p+OkFK9lN7hD0q+FkOqRmf0D/v+b4S6s3B5V+fAFw3muwBobMxBdfMPpBIKQEPfA==
X-Gm-Message-State: AOJu0YwHQ1U8vPTu1npQVB+fmokPzxAIW2TdMtmsGoUxaSebJMG1IbzJ
	cEtRIeK5/Xh3gtVS2CrlAUFmfy7ZZhwaKXqtj8YNbmjL2SEMkFtZ7vtJnJUnlWXODmdE+mvpAqM
	I3k3OkoVsh4Y2DOJ5EcI0LmKcUPlVUhC0077m3A==
X-Google-Smtp-Source: AGHT+IEI8D+Rjptnk9iY+KnYSSwY8zcUnaRQkQica2+cfdRoT6xlKYqfZKkb6nl1YXf4Kgi4R3V+bGAEnQx8Wp+MmB0=
X-Received: by 2002:a25:acdc:0:b0:dc7:4460:878a with SMTP id
 x28-20020a25acdc000000b00dc74460878amr1977072ybd.3.1713532818807; Fri, 19 Apr
 2024 06:20:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240418-pinctrl-scmi-v11-0-499dca9864a7@nxp.com>
In-Reply-To: <20240418-pinctrl-scmi-v11-0-499dca9864a7@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 19 Apr 2024 15:20:08 +0200
Message-ID: <CACRpkdbswetf2Tr6H216nxb8XKX8evyiWiVcsK5E=inqBUUVng@mail.gmail.com>
Subject: Re: [PATCH v11 0/4] firmware: arm_scmi: Add SCMI v3.2 pincontrol
 protocol basic support
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>, 
	Dhruva Gole <d-gole@ti.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>, Oleksii Moisieiev <oleksii_moisieiev@epam.com>, 
	Andy Shevchenko <andy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 3:24=E2=80=AFAM Peng Fan (OSS) <peng.fan@oss.nxp.co=
m> wrote:

> Per Sudeep's reply in v10,
> "This series looks good overall. Since it has pinctrl driver, I need Linu=
s
> to ack/agree to pick the whole series up or I can ack them so that Linus
> can take the whole series. Either way it is fine for me."
>
> v11 is just minor update per Andy to patch 4 and Andy's R-b applied.
>
> Hope v11 is good for you to pick up.
>
> Linus, would you ack or this patchset go through your tree?

Since most of it is in firmware rather than pinctrl I suppose
the best is to merge it in the firmware or SoC tree, so:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

