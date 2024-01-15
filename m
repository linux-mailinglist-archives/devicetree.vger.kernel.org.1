Return-Path: <devicetree+bounces-31942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B163A82D4C4
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 08:58:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5600C1F218A0
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 07:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22247440A;
	Mon, 15 Jan 2024 07:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VxkT/OF2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F146ABA
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40e76626170so8707425e9.2
        for <devicetree@vger.kernel.org>; Sun, 14 Jan 2024 23:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1705305512; x=1705910312; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2cbksEzYW5FMHFfGVnFvn7FNmL7/xlW3Yq6NnYOcw0M=;
        b=VxkT/OF2oeY7ESgiPHgTNBr8UDrSYWlQDx0jAnuSTmMsyPL4gwn7Ltld8EBM44D6U0
         baXfpqr4UOTGrn+Xm1sPfaY4gZxJE0cUo0tR+vOFzokKFsbP/CMA+m6hEge2DNEECq+H
         72BUUdqxMl57b3RMKCX2zeZI6/WIZfzGusoMXoiBNqXQo11neo2lz018jH09YEcvMhOP
         foZoLyf2KxTblEum1GoDp8KpMPV8cWquYOSH8X1FaHibtvGp+/gPBqRpfz/Eyyh8dKzr
         rP528adDYhXQktOMD7o1Y2pi59jJML6b3TK0YFwYd6hM8B2grL+eSwK5UIRG8RKjGeVO
         LAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705305512; x=1705910312;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2cbksEzYW5FMHFfGVnFvn7FNmL7/xlW3Yq6NnYOcw0M=;
        b=KUgXRUYyvjkuRF/+JYtEcMpLFTfsabgnOmpk3V4lX7mFSpFUSqBjRA/47SMqQEOTBO
         8CrBp34kMtMeotBClbd8TsSTPBuiko/Nd+XDSb7PGJuKi9HB3drpBkInFGs1mBaZIw37
         o6+i8rrjuoLLm9QV+uHQG4TzjN7r6DuTlStQrO6v+cvJCBfKzdY6ixnd7llB/0TEOM9n
         8jkRnMdDz8Bs3WL9YAeDDna0V/o0V7hiUzV6JAxzh5N1xharLxGWFJkQYz5Md6fDlqOs
         LeojKra8WZO4UFy0ehS0rZg6Gg+5oUc8Vy+HyYC1g8dT86a96nu4nAbC0V5HefypR2J7
         ab2w==
X-Gm-Message-State: AOJu0YyAofTsjeuwaRA4OZourCqsUPwYeXyTDYRAz79vjGVYpdADTYDA
	fP8g0+Q5JhTkt0Mu/fZhUJRrIHNFSd9Y7Q==
X-Google-Smtp-Source: AGHT+IH50Uh1Vtg8Mm/CzH27gs85mNt4yquHmdpNorid4AtOdJb3heGUJikTWSd7dGVgyt0sEeKXEg==
X-Received: by 2002:a05:600c:5491:b0:40d:7347:f5e8 with SMTP id iv17-20020a05600c549100b0040d7347f5e8mr2761047wmb.25.1705305512573;
        Sun, 14 Jan 2024 23:58:32 -0800 (PST)
Received: from localhost (abordeaux-655-1-152-60.w90-5.abo.wanadoo.fr. [90.5.9.60])
        by smtp.gmail.com with ESMTPSA id g14-20020a05600c310e00b0040e398f8cafsm14934442wmo.31.2024.01.14.23.58.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jan 2024 23:58:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 15 Jan 2024 08:58:31 +0100
Message-Id: <CYF4COXMY05V.19GSB17F6P6H3@baylibre.com>
From: "Esteban Blanc" <eblanc@baylibre.com>
To: "Nishanth Menon" <nm@ti.com>, "Vignesh Raghavendra" <vigneshr@ti.com>,
 "Tero Kristo" <kristo@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Rob Herring"
 <robh+dt@kernel.org>
Cc: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, "Pierre Gondois"
 <pierre.gondois@arm.com>, "Tony Lindgren" <tony@atomide.com>
Subject: Re: [PATCH 09/16] arm64: dts: ti: k3-j721s2: Add MIT license along
 with GPL-2.0
X-Mailer: aerc 0.15.2
References: <20240110140903.4090946-1-nm@ti.com>
 <20240110140903.4090946-10-nm@ti.com>
In-Reply-To: <20240110140903.4090946-10-nm@ti.com>

On Wed Jan 10, 2024 at 3:08 PM CET, Nishanth Menon wrote:
> Modify license to include dual licensing as GPL-2.0-only OR MIT
> license for SoC and TI evm device tree files. This allows for Linux
> kernel device tree to be used in other Operating System ecosystems
> such as Zephyr or FreeBSD.
>
> While at this, update the GPL-2.0 to be GPL-2.0-only to be in sync
> with latest SPDX conventions (GPL-2.0 is deprecated).
>
> While at this, update the TI copyright year to sync with current year
> to indicate license change (and add it at least for one file which was
> missing TI copyright).
>
> Cc: Esteban Blanc <eblanc@baylibre.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Pierre Gondois <pierre.gondois@arm.com>
> Cc: Tony Lindgren <tony@atomide.com>
>
> Signed-off-by: Nishanth Menon <nm@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts         | 4 ++--
>  arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi               | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts   | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721s2-evm-gesi-exp-board.dtso | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso       | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi               | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi         | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi             | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j721s2-thermal.dtsi            | 5 ++++-
>  arch/arm64/boot/dts/ti/k3-j721s2.dtsi                    | 4 ++--
>  10 files changed, 22 insertions(+), 19 deletions(-)

Acked-by: Esteban Blanc <eblanc@baylibre.com>

Best regards,
Esteban

