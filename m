Return-Path: <devicetree+bounces-31392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D4B82B090
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 15:24:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7B920B22842
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 14:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B4873C485;
	Thu, 11 Jan 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IE2l8bUF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EFF3D56D
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 14:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5f68e2e1749so45504677b3.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 06:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704983060; x=1705587860; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b5H4wGjXC1DdLzQIpv3zBJ0pf8Lkdr1yQJoU8LqpgzM=;
        b=IE2l8bUFnOXNQ2XZxuG0XbQjk8GeFxKW4secsFddPzhFIgr60ncrkeDIUSgwTjPR2s
         tDK8TV9BhabxrYB35PpOdS+8T406fx9c7IiD5Oy/eaI0hTW0thP5WsvoDPmZtKz5GyJL
         G0i5ULl59GMkvZzjoeo9uqiO6heinnK+Xyh8QA3Sp9TVQ3etAw4m2kkaTA81x4WQy/ao
         TO6S48HJAmMICIc4iTkSAYtf7l0MHzoYeVEdWPEKrkE5FF0q/WAeK0YotaTUpQbbPubS
         lj6IIQ7LLvVp2j1Stc6TNf81s/vzX49fnw2iyL/9j6MTyWOn74ympAg9mt+GevhQ5JXN
         ChGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704983060; x=1705587860;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b5H4wGjXC1DdLzQIpv3zBJ0pf8Lkdr1yQJoU8LqpgzM=;
        b=ZARArVlhiQQkfNh3XND4CrNkRMelAhCrrOKCKFV7PRbokJxZKNH0S0hkDUoooHfdiZ
         OiIjYAeQPa0wZfsjuF5AwazQ1izQLsKj7uTxlXkp/IPY1cJOqXNk7eAmeCK7hjvejLXb
         xdjMf2eB5jZiP1+nDn6XaNNvhozdRnEzaKr9y8OgcOwBNG1vZPXE4INk82zdp6z9L8Dl
         mcd2zyqUdN9zRMjBZ9CLoXpLo88PjPM0gqLHk+I9KGNFM90Vu+rsnEhXLe0NfFsF7sTZ
         31z0Y8JhWltqqB2DgsrI1GqPBtngMULE82Fz80eMGnWzerBlKO4e53oxLD9r71Ko1wH/
         xN8A==
X-Gm-Message-State: AOJu0YzNIPhWjmvhsMjzW14VDYNXm3SmRACT3J5gAIA4O05fbZxqqBEv
	un/i1qUTZR+Z5ODn08Zo283386MayQUlPCX9UgBklEe2k9J5GQ==
X-Google-Smtp-Source: AGHT+IFaYmLOxFxDAbrD29zJ5P+ZteNYH0C8/fah2rkfr0pwnrnR+2kJeW7gA7vd5Qa94LgZL5/dHpczsnOz/Isabo8=
X-Received: by 2002:a81:d845:0:b0:5f8:ddb6:f38 with SMTP id
 n5-20020a81d845000000b005f8ddb60f38mr564900ywl.0.1704983059775; Thu, 11 Jan
 2024 06:24:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240111113146.16011-1-dario.binacchi@amarulasolutions.com> <20240111113146.16011-6-dario.binacchi@amarulasolutions.com>
In-Reply-To: <20240111113146.16011-6-dario.binacchi@amarulasolutions.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 11 Jan 2024 15:24:08 +0100
Message-ID: <CACRpkdbvwmvdv1oH6A2a+BHJ7y0gqAU1O5ZM5grAMnrrMRMdQg@mail.gmail.com>
Subject: Re: [PATCH v7 5/5] ARM: dts: add stm32f769-disco-mb1225-revb03-mb1166-reva09
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-amarula@amarulasolutions.com, 
	Lee Jones <lee@kernel.org>, Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Andre Przywara <andre.przywara@arm.com>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	=?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Michal Simek <michal.simek@amd.com>, 
	Rob Herring <robh+dt@kernel.org>, Sean Nyekjaer <sean@geanix.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 11, 2024 at 12:31=E2=80=AFPM Dario Binacchi
<dario.binacchi@amarulasolutions.com> wrote:

> As reported in the section 8.3 (i. e. Board revision history) of document
> UM2033 (i. e. Discovery kit with STM32F769NI MCU) these are the changes
> related to the board revisions addressed by the patch:
> - Board MB1225 revision B-03:
>   - Memory MICRON MT48LC4M32B2B5-6A replaced by ISSI IS42S32400F-6BL
> - Board MB1166 revision A-09:
>   - LCD FRIDA FRD397B25009-D-CTK replaced by FRIDA FRD400B25025-A-CTK
>
> The patch only adds the DTS support for the new display which belongs to
> to the Novatek NT35510-based panel family.
>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

Looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

