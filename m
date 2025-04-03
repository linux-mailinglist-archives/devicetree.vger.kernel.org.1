Return-Path: <devicetree+bounces-162758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A69A79C2D
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:38:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 424033B4742
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 06:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F2E1C5D77;
	Thu,  3 Apr 2025 06:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="n2xxLicc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BC71BD9C6
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 06:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743662107; cv=none; b=le4nZSc4rSjiUnBg5jnesOwYK54ybHBi0e1Q4ogEdy3NiNnkbJI8imdsh84EoiM4V16DPURJxKLoicAW0beYBtWoVDAyUc3EWdqM2/7qq6kcOPfjzfHny8FMXf2IcTNeknrbSUrgkgRgzT6YLifv5ttk6I2rlZVv77wmvrbXTvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743662107; c=relaxed/simple;
	bh=1JsCMyMtHNZEI+5vuESB4ZV9tP0Yf/T5eFYH1f3W3iQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nrzAvXZZ2lhDUhBZ+Lz7qfbuMAKE5vixX6+OB6t1CdUWR3454C1YrpIHqN0S1IP80zqvZ6TnI8sLBYZxEXonYQ73KKlkOIXO57jaj4ocy0jF0ihPGLEZbJlPhPEQzmo1EPaWUjX+7mc+8Fi4aiWyJluz/X5a6aTvIS7X6dNeM1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=n2xxLicc; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30db1bc464dso4892141fa.0
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 23:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1743662103; x=1744266903; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PwVbis7FD5WGTE3kHS18ntG8BxtaZlcsMBrF4lyJnN0=;
        b=n2xxLiccuG8vsJ5RIDzmY5zehOua4Gobkrpe/P4f6ij0V7hQglsX1Eucwu+2udMBtK
         ewVERc5J1qlJOevE6gGfmdEcvFNR5KThK1dVZJcV/yR6vu9FVrvlnDWWKjcnTqmWxot0
         B/nMo56A5UiOeY00bjKachIgRw0UZuhqzhOV6TbqVLEygbcZrSsrziGPfw46tNdtSLZ1
         J9a965UZS7mpTARf3+9zCuc/XsAF1xyYsgpcxE5dRG4lOl/EFA0/98ODiaUQGDFIG3dJ
         9cjAdTnb+xaG3O9P3aHLZLt88JXO8sbW7yUTuyBaAgeisL3nOtDmb0dUpPbbX2tb7HBP
         VNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743662103; x=1744266903;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PwVbis7FD5WGTE3kHS18ntG8BxtaZlcsMBrF4lyJnN0=;
        b=gVO2LEB/uaZM5WfaQk+BDuXnscNp15fNIcdweuI+eUNh8gQaLromb36gLEPTuWmQe1
         SEqXyflWGL3ZGYjf1G0RJJvOhOQfPnToZ6YUkXoUvQIBW8SpA2fh3Tgm/S1gEIQpHAmL
         065/t/OrMdzoNrefez3gadf7wqLlIPQH5n0v/98HHFah2xwrsHp0XK6hDRFM88lKWV/I
         d5GtOkmbbfmIhhyQ28IHy6WJ7Yacqx6uLo9fPwOuAIiL/anK7GT7wVS6AG1HBOIqGKlW
         YRREXub6P0ylgOaW2EXM9O8ScvKKVPhXcuXgXwNDaqaSCnIhYNskOw9oAI+zqPFJJpHH
         NVYA==
X-Forwarded-Encrypted: i=1; AJvYcCXim9X9w73C0nqhKN8PJ4Q1ppK+oCIYDbSNMYnCwOaLQJ2nRw4gpaxhypmyrljb2gBqgLcJAEGlcaxv@vger.kernel.org
X-Gm-Message-State: AOJu0YyxFWNQoeyj5SDI88ElJn7fTx8XWMsQ+NRzfEOSYmwME0Dyf8Yh
	m+v1CpYIllNCY3GwHyVsCUApG4qWOG1RUeDWR65QimDXpfEiAqX+WHD7lZNZKPXXh7HjssGmNZ2
	3ATthfjz78HdoILIluhCNqR6J9t/GMLbiTCqdHg==
X-Gm-Gg: ASbGncvdaqIelWxxaA1I5xhA7sslLsxMfdYlBC9kVWSOcNR8InOgdASoKID+3JK0WJV
	YCrLqejbHenp4dNL5H71haCYEO9qINlFvBYU83/LgM/M/FS4jcpFv9fg0BPON8KhgZA6wHMTXdq
	xnKipfEdcFkrzOICKou7Z/OjxGdYoP4y0xx1NrbUePuqS5iBvSajLjafxxjR42r2XM4Zs=
X-Google-Smtp-Source: AGHT+IEPn2huBHKsqDAGWpve5sAjpBNBnpMsrd2sYo/j2hYHK0dJ1WibZs+8/GvHbHlhvGsJDnxEjzhVpbqKnYaGX7E=
X-Received: by 2002:a05:651c:144b:b0:30b:b987:b676 with SMTP id
 38308e7fff4ca-30ef90cd023mr19356701fa.2.1743662103234; Wed, 02 Apr 2025
 23:35:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403060836.2602361-1-mubin.sayyed@amd.com>
In-Reply-To: <20250403060836.2602361-1-mubin.sayyed@amd.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 3 Apr 2025 08:34:52 +0200
X-Gm-Features: AQ5f1Jo8XE_rqZUxS52BXanujb5HYu0Iq_OMLm_FELFmKt0f3v36UDRWRst9x2c
Message-ID: <CAMRc=Mc2DKnc1AM2WSApZtwOKCFGNZ9WF6LzzkECaV91R5w-iQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: xilinx: Remove myself from maintainership
To: Mubin Sayyed <mubin.sayyed@amd.com>
Cc: dlemoal@kernel.org, cassel@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linus.walleij@linaro.org, michal.simek@amd.com, 
	p.zabel@pengutronix.de, gregkh@linuxfoundation.org, 
	radhey.shyam.pandey@amd.com, linux-ide@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-usb@vger.kernel.org, git@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 3, 2025 at 8:09=E2=80=AFAM Mubin Sayyed <mubin.sayyed@amd.com> =
wrote:
>
> As I am leaving AMD and will no longer be maintaining
> these platform drivers, so removing myself from maintainership.
>
> Signed-off-by: Mubin Sayyed <mubin.sayyed@amd.com>
> ---
>  Documentation/devicetree/bindings/ata/ceva,ahci-1v84.yaml        | 1 -
>  .../devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml       | 1 -

For GPIO:

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

>  Documentation/devicetree/bindings/reset/xlnx,zynqmp-reset.yaml   | 1 -
>  Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml           | 1 -
>  Documentation/devicetree/bindings/usb/microchip,usb5744.yaml     | 1 -
>  Documentation/devicetree/bindings/usb/xlnx,usb2.yaml             | 1 -
>  6 files changed, 6 deletions(-)
>

