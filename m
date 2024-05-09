Return-Path: <devicetree+bounces-66033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3B28C1023
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 15:09:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC7321C2092A
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 13:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029EE14C592;
	Thu,  9 May 2024 13:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="VjTlr5tm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6054C12F37C
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 13:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715260195; cv=none; b=OuGUZquF2WDwZSoI93XgbhZk5AGzPWh9oRxtsjWjx3jTVYIQPjy49UPeasS8L4WDRnPNPJu9TvUh5ZdTaNxiZlh57ktAPSHWZIb6Q4OMbCIw5nQAIFOTQTs0XuMzPJVURHQEUoQGf6cUDzQKkglgpv/lJ1QhyZD4SDssKV5+ksE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715260195; c=relaxed/simple;
	bh=/2fF/U3Z7PezOWTE5bhHrvAmlH2qvb4NRDFXCcVuKn8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RD8F+kkq4myoN8hnQRpIHMza2eSMkIIZcFCXMd2XAeEJdEHQQH2vJkg7TIDga5rR11jbMCvFRXHeA87pcMabUepqQr+E2HqczO4qRxwmVVU7/5p9lpnM7+8Jm6HkGIQp6rX8M1nDLaAUhIhXWv1bbgGnlxKjQD7lnakowiookaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=VjTlr5tm; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-51f40b5e059so916121e87.0
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 06:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1715260192; x=1715864992; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rjcbv/XOMrp8i6C8+I4UYZ+VlFPUeDdAPCf2dJU4itU=;
        b=VjTlr5tmkSJsfKfOjM14wYUy9lOqJxun3hhMfhfZATajFsYHHXPI337+a0PD8Iq1Ku
         3MybsepJeJxsoExRA4NLFP+UIRrYWX7CBvjPPTNq6lLKthgO3N7poafMySUS2oExF+b9
         Nqtn/bbufDLL2NxB2BrRSSU54G5jY8kP8MW/7vqkQGBbd1nlBx4p/8ouIrH3mEm8JC2S
         5fxIusC+V0Adt94jLWgrC2SjEZ3stRs5mWElyWWKmglp2KxiQzJ+5IQlz+QSY7vbAYLI
         T28Qh9LLGMRQg0zUhvcaFLCqJdk0CHyRKmJAuC+WRdStKGYNjK0cC5shjfsxAqJdo5hM
         JUQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715260192; x=1715864992;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rjcbv/XOMrp8i6C8+I4UYZ+VlFPUeDdAPCf2dJU4itU=;
        b=ui3LR2KezpQ0DllrdSwo8xsn7I75p10XIyMA0uX4ZWbdHC86Ymmj9iyDUSSyPgzPuC
         2Q7xLV6cDJ7cBzMcmXlKx0NGREvPtyFR1TpGnmzLHeX41f0yjd/zOPaDISr6dMC4Vdbc
         HNugTYlaS2bynFktoHwfsIsbsMMatzap33TMh2f507S5FRTA/k5I1lHXxGhUHdz/6fju
         sCRlzocG4fFPnDaSgVMJ7t7mIxoBq+/bK8qC2JIuOPvbwhEb2xcgUm0kSSbzIFpJ9izz
         45M44Tro4Hy5GtlLGBu2/nAcJTefIdr2DLLS1cZetQFnRJdR57f6QsWMqeIf8VY58V5Y
         mHQg==
X-Forwarded-Encrypted: i=1; AJvYcCWkwvg370dUQ6autBIFFAaChw8P2n9bphRZKN7+VZPf1qSp+jDLtekuJqm907U6HT8zFEe3NwRg8zUVJkg+Afu+51bVmXENjBHQZA==
X-Gm-Message-State: AOJu0YzHQiQ9mqVjby4nsBC4+r8Kou7SNp9oIOwZTWCWBoBSAAlN4vSH
	AsQxYvWxeH7wxkGInh9RcvQhV0WE6ZrFfiRzLqnn7ludOyXmcAsjbK81g4zm2O/X7ZxyLk5p4EE
	ZvIyBImv1T7VLK0b33kPbrfbmDIfl9b22/Iyigv76F758ctLz
X-Google-Smtp-Source: AGHT+IEpJlR5h7UDquPspWdgEA69rWukyGIDC5h1omtSQdQBKa/5ADlI4KFKOrwM0BJ/+Cr5u1yDz91SAFWv1jlBCEM=
X-Received: by 2002:a19:f00b:0:b0:51e:18c5:c3e3 with SMTP id
 2adb3069b0e04-5217c5665ddmr3092600e87.26.1715260192645; Thu, 09 May 2024
 06:09:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240509104813.216655-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240509104813.216655-1-krzysztof.kozlowski@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 9 May 2024 15:09:41 +0200
Message-ID: <CAMRc=MezrXs5MYDnRvbWWskWJv0eCtQ8VsUu2mD=Bq=VxLHqHQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ti: align panel timings node name with dtschema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>, 
	Tony Lindgren <tony@atomide.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 9, 2024 at 12:48=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> DT schema expects panel timings node to follow certain pattern,
> dtbs_check warnings:
>
>   am335x-pdu001.dtb: display-timings: '240x320p16' does not match any of =
the regexes: '^timing', 'pinctrl-[0-9]+'
>
> Linux drivers do not care about node name, so this should not have
> effect on Linux.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/ti/davinci/da850-evm.dts    | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-guardian.dts | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-pdu001.dts   | 2 +-
>  arch/arm/boot/dts/ti/omap/am335x-pepper.dts   | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/ti/davinci/da850-evm.dts b/arch/arm/boot/d=
ts/ti/davinci/da850-evm.dts
> index 6c5936278e75..1f5cd35f8b74 100644
> --- a/arch/arm/boot/dts/ti/davinci/da850-evm.dts
> +++ b/arch/arm/boot/dts/ti/davinci/da850-evm.dts
> @@ -65,7 +65,7 @@ panel-info {
>
>                 display-timings {
>                         native-mode =3D <&timing0>;
> -                       timing0: 480x272 {
> +                       timing0: timing-480x272 {
>                                 clock-frequency =3D <9000000>;
>                                 hactive =3D <480>;
>                                 vactive =3D <272>;

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org> # For DaVinc=
i

