Return-Path: <devicetree+bounces-176745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E454DAB55FA
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 15:25:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17FA94A5A2C
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 13:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37412918F3;
	Tue, 13 May 2025 13:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i/2LWdbn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81ABE290BCD
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747142735; cv=none; b=Q64maVG7M0F/YIv/ds8EMwehgPKJUGJtBthoReKi91tbXYRflzl+Z2THJu/8SI5Kx4XI2Fwrm0+4XAG+QLT2dbS1badfN4DuIoUW0G6hOihZOp/IW5AHDh5ppx8h458BivBFC8p3q1g1VUR0w7XLaPPwx4TfXhT4jNIVN0yv2KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747142735; c=relaxed/simple;
	bh=vr6jWP48yxMylfuZaQtdjlPFLP+Sk0yvaEXfr4dRZmY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZTCari7OfFkicWci8BOB86JxmrTFbp1+EeYHY5X4RHZcp7Fa0alUjQ/IWpTLBO7xsQQmdlmEHQb2z24m0BCp4Js6+pU6X0lHNDOsZt1YD++b8UDebtWYe21iCBiGgHT1WB0GvvvlsJM4uAwZaQJRQVs6fLagugIAALBSnFPiCKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i/2LWdbn; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54fcb7e3474so3837018e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 06:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747142732; x=1747747532; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vr6jWP48yxMylfuZaQtdjlPFLP+Sk0yvaEXfr4dRZmY=;
        b=i/2LWdbnAflcM5SZ41RLSj7y1Jw7DUynh9ewjfOfjYRPaRzQWgcJvKHN5Cft4SL2rM
         zgGqZTiZkoEvBQURAWM3ZRTSa8hWb3EaCUcZGXm79YVpJ/Vt8d+mkTdtZDywVu5Dhxxb
         dTrbjFccTfPvtRuWQ0nozj0ulwV2vS8T8cV3y2W5IWH7NiiVHHDnLYNKWTsI/tIuWI6r
         eI3/7CP0EHm6xCNt2e4PAj2c50WpQOzptxqDavL84fVNlDXn+gSJIFWX/hHf5sORnv3z
         DFIAot4XvhnAL0D8N4mfLEVdW880gkr2bhaPwDJWD/KwjC0CgIM7me7D5d9cd/gudOtc
         QlEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747142732; x=1747747532;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vr6jWP48yxMylfuZaQtdjlPFLP+Sk0yvaEXfr4dRZmY=;
        b=ewQ55ZsHfJjnisjtpWZdrKg2tfyjdROkdDkqsVFWqlPJGvWZPXVngIjnCzz6ngri4y
         Eq5Pq+xCAFlQeH5cQWy2LI0el04gog8oK5GJFh9qj8QF9N0trNFmTk1JjWAzmJkalSCA
         ZO2tvCuLoiJcd1+fns/EgFSfyXwE1Vy1VnKZpQcVOfs7CCEQZOeNSFZQqFBRSxu9KUfZ
         S/akGBo3jXj7qhYmItPJmDPEtMz4lOufm8k16+jfov3aAOlreZp0wWYASAm2TjfmINwU
         6VesnEcbo5x/3c6oPJLdQzHTENXl2q+nsv9G79p+8fkexep/UbhVwpkq6MtQI/G2L3Qh
         GfbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGn8KMebi1aaJHnEz3mmgOZYs8KF/f0rilY+GZtWTtZyCxgSGQuHsXKGUVnK94W2Q1igzihmjFQpu9@vger.kernel.org
X-Gm-Message-State: AOJu0YwwXUSYjrgJsnexeSMJcSWrkNz2BYrG2ClnP89p0bcCVcN6L9rk
	dTVqLWFw72ekJFrV6i5TcVwESq4VIF4yfKE/cK63F1PN/9uMnMLARKuLbaqvKF5Mc6xLdeMIiaK
	kZ5DqJoW9pv84UPeEtczh17ZhFWXA2YnZUWCc8w==
X-Gm-Gg: ASbGnctT+0j/i6mnvM8XyMHdVubiImz4gQnn5gcWzqyqBY3CPjekn4hAdJdLa36F4bV
	P6snSZ51WJI8rR6vulay+o2KIlLwF0NX2uJtzMIo4A+l6Uuq/hhnMyOPV9fDYV9Owj48c5wrx0h
	RAKtb5f+QJudEtBW0Gh+7qhe/Mzef9KbrS
X-Google-Smtp-Source: AGHT+IE0uPHvi59GKQReP0FS4yIDYcDcoiE56BNfoi9s0ZtA39+qwHxI+HlYyMOtM6ESsG8BIrjV3tSi2Mg5STR1bXk=
X-Received: by 2002:a05:6512:4201:b0:54b:f33:cc16 with SMTP id
 2adb3069b0e04-54fc67bf61dmr5906057e87.16.1747142731593; Tue, 13 May 2025
 06:25:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250429-tegra186-pinctrl-v1-0-722c7c42394e@gmail.com> <20250429-tegra186-pinctrl-v1-2-722c7c42394e@gmail.com>
In-Reply-To: <20250429-tegra186-pinctrl-v1-2-722c7c42394e@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 May 2025 15:25:20 +0200
X-Gm-Features: AX0GCFsgSRMFDJQegzrwRWIt-rIi0vhgKArb-MEwIUl7eEY9iod1pr2LmbxZAks
Message-ID: <CACRpkdYyaTaXcz2zdM-13vXvc2JKXKk75=XS9VELDRaDA6=R=Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: gpio: tegra186: Add gpio-ranges
To: webgeek1234@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 29, 2025 at 11:33=E2=80=AFPM Aaron Kling via B4 Relay
<devnull+webgeek1234.gmail.com@kernel.org> wrote:

> From: Aaron Kling <webgeek1234@gmail.com>
>
> Add optional gpio-ranges property.
>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

