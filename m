Return-Path: <devicetree+bounces-88466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B70B693DA07
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 22:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DD5C2838C8
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 20:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C21A149C79;
	Fri, 26 Jul 2024 20:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TqiMfGi9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D49F748A
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 20:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722027127; cv=none; b=NEVdaD0EUvPap1YL8DV1bRnvsMqWfj5gFr3cmywMbC+0Nc58DktzyRQlMQb9mmjWy6EXZN2QBUgcL6bBaEzGS1xxTEMPkZm2ADUoHObIeX10Th5DfqWcdy9QA6PA+/pc8lyttIGF9v2M2N81S3SWPoS+zTa/DMXnZQey0cXGr90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722027127; c=relaxed/simple;
	bh=JI5ZgaYoPgocYBo33Z1jABDgbCrXDHkgPxPPgMs9nV8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aRB7hvJwAOs3VFqMh0Gagof7bxAkxOaBx67pe/wMFDVioYVefDbzE0TDKZ3ZZl/qPQr2IzX3zkGvjMUbIbh9Ihc+pFOJvknBlC8LvbkzbzSW/xu8C5rHIDIIfsayjdF2c9C2gI+WdK+3lFplXtgCf+8Q88PuhXQuLlfi4zNq+Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TqiMfGi9; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52efc60a6e6so2536324e87.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 13:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722027123; x=1722631923; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JI5ZgaYoPgocYBo33Z1jABDgbCrXDHkgPxPPgMs9nV8=;
        b=TqiMfGi90LQBATxl7Jc1lrCY7TrNgs31n9x5ELG7BGinZWnm0F7JJ1r02rW8SqSOjU
         cQpuu9u0NoHOV+09AQBQKQdCq8mKQoP6W9bHtYhzAMDHZpQEO5g5HmM6SLeUFfJ/YtD3
         jyw4kPWJouqEQdGBnU8IXBQeaovFG01nP004WT0Pfx+KVGIIXk2/S3GbrXdVLWRlMna8
         RsQ8qppwlKM2D5XdGndUpVJr0ZOA+knD6jQff5qJuf966Z7IMS0DY3JJp3U1ra56INIz
         SpPTGZOfj0xjjsCnFER33mBf7fcvRzlqES1wuWSU3vvE4/jgFn2lgaT58bvbegY58sbm
         J5vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722027123; x=1722631923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JI5ZgaYoPgocYBo33Z1jABDgbCrXDHkgPxPPgMs9nV8=;
        b=ldnUWKfkB76BMEGY4AzlDKybD8pOrHcQKbnf95ExIH/I6Nqk/wO9Ra/9n+VpNAZ3bU
         9M3eix+VqZDT7WSj/Wu0Fjj0QarHwrpZbfTn8vuKMTGQrA8HIkH0TM+7sJlYNEGRjO//
         L6VOcPS4eARZGAwx1+BohqiwO3taStgMj3olkw4labiPXXx8ZjnPe85dIqccvHlxhRaW
         S3f/FXnVmxCKHaoohhoyT+pibfzA5ErJiWyrSEQnFcpBOpqPG6dTXR2jiXb4ddkvMeGn
         qlq6riCFqFxtmEhOqjJlaZjpoDR3DT7dO6X86o3bExRUJMxN1yu16xoHql25Ed3TO56L
         ntOw==
X-Forwarded-Encrypted: i=1; AJvYcCVtERctcF5CNtAcSuSK0QkhEVMROx0gWq9V2TjYy8tZxXm+Q/iAz2ISzFB4vd/GS2xxljDPqOM6rif3KHmKYjI+7iHXeb0JaasttQ==
X-Gm-Message-State: AOJu0YznqwhQ7Wu4iPDiuAN1RVxZa6PJyYWA8U5kg+6AQLaoRGpTG5Le
	vZyQYbNRuymQ/OvEOizQRCJgaCx4JYHYubjXen3IR9AT91nxKhpFvDloXojoP7ChZ9bZNYbMCG+
	/wY4d8U+If7YwiTqjEDEz7fJYumqZ4AcAYLhqZfqyD9AEw+zQE/c=
X-Google-Smtp-Source: AGHT+IH/KQBHFp7cfJBihyPHNXUeZIXrpWHpjT5Yz8yFUhjBSqezUgduigKjzduYz++qkwRoe4y39Ba5yjD6sVnh/bE=
X-Received: by 2002:a05:6512:2c94:b0:52c:9e82:a971 with SMTP id
 2adb3069b0e04-5309b25a25bmr604398e87.7.1722027123520; Fri, 26 Jul 2024
 13:52:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722160022.454226-1-valentin.caron@foss.st.com> <20240722160022.454226-5-valentin.caron@foss.st.com>
In-Reply-To: <20240722160022.454226-5-valentin.caron@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 26 Jul 2024 22:51:51 +0200
Message-ID: <CACRpkdaSb0T3ZH8+oQNHXddSg9gS-u+6-etggqNK36sNR7nN0Q@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] rtc: stm32: add alarm A out feature
To: Valentin Caron <valentin.caron@foss.st.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-rtc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Amelie Delaunay <amelie.delaunay@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 22, 2024 at 6:02=E2=80=AFPM Valentin Caron
<valentin.caron@foss.st.com> wrote:

> STM32 RTC can pulse some SOC pins when an RTC alarm expires.
> This patch adds this functionality for alarm A. The pulse can out on thre=
e
> pins RTC_OUT1, RTC_OUT2, RTC_OUT2_RMP (PC13, PB2, PI8 on stm32mp15)
> (PC13, PB2, PI1 on stm32mp13) (PC13, PF4/PF6, PI8 on stm32mp25).
>
> This patch only adds the functionality for devices which are using
> st,stm32mp1-rtc and st,stm32mp25-rtc compatible.
>
> Add "alarm-a" in pinmux functions.
>
> Signed-off-by: Valentin Caron <valentin.caron@foss.st.com>

Looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

