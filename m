Return-Path: <devicetree+bounces-135068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C11A89FF9D0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 14:26:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5FA947A10F9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 13:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 548931AC43A;
	Thu,  2 Jan 2025 13:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="vd8P5m5O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE767DA9C
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 13:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735824354; cv=none; b=eREAI8xAqMwLFJ6h3cDpgCuxrA6d8g7mAz5P1ZTItQ0X+qY7+e6GeHXM62QHBRAEpAddXlyCPrjo/y5F9nTHRuxhSDUPwAkhgBlXP2kzvzGMSWa10gk4mPk4YSCHPmbYxb2CquQ5aDrCTW1scZXPe4OgaE2TvwvVJxDTUfewe+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735824354; c=relaxed/simple;
	bh=YEpe1q2tQm9tdQr6988TVf8LjlUO2ANQN2ZhrsNH/c4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VutYJY73u6JpBA2XcWv5Y8Mfks87fEzv2ZWbQOm1s3EB5qzogJGeq617Q7bXeXRAILGg+ibjC+pYVdlgrWo+HzcrvNdTP78BWMeJuAGgVq0Yq/P/IVjBQiZgGv5oggK4UnLphxeYlwIWgK/GGAklmt+PEgd9VzxBqq8ThJ16KPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=vd8P5m5O; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3003c0c43c0so131682361fa.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 05:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1735824351; x=1736429151; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YEpe1q2tQm9tdQr6988TVf8LjlUO2ANQN2ZhrsNH/c4=;
        b=vd8P5m5Onfo0nSFGKy6WqpKZiOFJMgbejTkXwKSiALAeJS1cPrF5rTE71jfVSkZlsN
         g/G4xjIBALIUQr13bOS92QtU72Cfyg1hcAYqpqagcy8EIm9hy5hLK2kmAi4j18Jq7P2n
         b1R6L5mq/uFlSdCjOX4tbBQhLaycKQMOL0E8qyWaP8MI6gUrZro9HziP9uuHyzHVzwUb
         +Hz8ylN6e493mFuVu5ubLwxM+UTCdonLKNiKel7bvy922mSaoKbnRqJaDYBP3FY8SAN/
         uHTwEMPHmGUr7Bc1vJr6+T3rUJYGdILbB9Yma0PRuO1/IeJYlqJVwR65Pw44dzGIky3N
         +myQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735824351; x=1736429151;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YEpe1q2tQm9tdQr6988TVf8LjlUO2ANQN2ZhrsNH/c4=;
        b=nQeIDV4cj8dQqWzB3vZgFdX6pe2OveSBxxhfrZBrVeUPqTT7E29MjBi/wWDFzEnyT2
         W6hpjHrjSRpHkG+TthB7o0kWjZvhm3G3Lk3Z0I2qWX9pVNFz4yDPXh8pv50XIQ2yclM2
         worxcG8O+m7LgDB4h5RjRSkCbiNxWzAhyUaQOLam94G0hzzUuAeoo0/8lBioJOSnbYk3
         SJCdGm4Fnk1XPdncOLC3SrOHD8N8T+NYUrt5Rvupf3uRjqzzQT8DnRwvcXXJHtJZQdY/
         9tANOHmi8nYQ/ALAGuPMz18T/IgA5B46igguAf12+4ZHOz4UBcxSjHarY4F8DZrSj6su
         vUzw==
X-Forwarded-Encrypted: i=1; AJvYcCX/eFe9fISt+cK68AfPAoYAnOLzSqr4+oJERvIsA05IU4p/fe72xVGEqx5xmjkHVS2jCgaG5F32slzA@vger.kernel.org
X-Gm-Message-State: AOJu0YwP3aQeC/dkxdoif/RmnY5jjK75SiQ9Sifp2QALslyjunLd1+lr
	qXAhd3e811mmXft3wit4FVaNmaD03FwlRl83AMhBHKMg4hPWqhUXmBwzpG/lwvt8yU3i4eGvZLg
	X6yde/RiyG5EblMOnBuCl7/m2uJKwDjdtsqREMw==
X-Gm-Gg: ASbGncsPu42NlzbrcHzpX0y1ysp6sPtMZnH/lKi3JPTEO4dWfhhxjvQKebOwVhjHo78
	hLJOTwCqa2K/DuBTJdi5X/TM02Xl751JIjDBromAjODAuIN9Mk0NcGHWG6eoGQ6N6bVflBg==
X-Google-Smtp-Source: AGHT+IEysF2mY2XiXvDTkzxGwr3UJavqG3cYQlBv96BwKn6kKflLqP0T+eeoPY8qtl3yTEuaKujkiTjcnZZzA5W/bxw=
X-Received: by 2002:a05:6512:b0f:b0:540:20a9:9ab5 with SMTP id
 2adb3069b0e04-5422956bcfamr11186552e87.50.1735824350864; Thu, 02 Jan 2025
 05:25:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241231-pci-pwrctrl-slot-v2-0-6a15088ba541@linaro.org> <20241231-pci-pwrctrl-slot-v2-1-6a15088ba541@linaro.org>
In-Reply-To: <20241231-pci-pwrctrl-slot-v2-1-6a15088ba541@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 2 Jan 2025 14:25:40 +0100
Message-ID: <CAMRc=Me+Wq1oOSjisVY+J4KaJaRsEdgTOMfznH5yruUREEhGoA@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] regulator: Guard of_regulator_bulk_get_all() with CONFIG_OF
To: manivannan.sadhasivam@linaro.org
Cc: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Qiang Yu <quic_qianyu@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 31, 2024 at 10:44=E2=80=AFAM Manivannan Sadhasivam via B4 Relay
<devnull+manivannan.sadhasivam.linaro.org@kernel.org> wrote:
>
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
> Since the definition is in drivers/regulator/of_regulator.c and compiled
> only if CONFIG_OF is enabled, building the consumer driver without
> CONFIG_OF and with CONFIG_REGULATOR will result in below build error:
>
> ERROR: modpost: "of_regulator_bulk_get_all" [drivers/pci/pwrctrl/pci-pwrc=
tl-slot.ko] undefined!
>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202412181640.12Iufkvd-lkp@i=
ntel.com/
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

