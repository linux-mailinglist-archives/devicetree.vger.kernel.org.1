Return-Path: <devicetree+bounces-128238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF1F9E827E
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 23:24:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8457F2816ED
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 22:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F2911547E3;
	Sat,  7 Dec 2024 22:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B40OcDl9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920DF126BF9
	for <devicetree@vger.kernel.org>; Sat,  7 Dec 2024 22:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733610283; cv=none; b=k6NhZ3sEXYsGuAAYs+tT73roRcl87w7P54pW8h55xlFLlp9A+Hd4sNs6e1RxiThpVr/rz/LutxDMH7atZPxXTgFUc/RCKmdRBzrRJuURgi+GYfINDrpwJZmAqg+be3CikoGnKYx86Vyl4/uu+mwpebeQZ/t5LMrj6itBsfGeN7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733610283; c=relaxed/simple;
	bh=ORKkPR3lCS13tjEXw3DRFksTzLOWpRmU5eCFSQ7CQbY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CC6GgxRRIjxLRsGq0DVQZ3GlQKyYcX+etEN3JUryFQIHRycmnevogSnZJP/vdSqTtMLAr2looxzYFY4GvPUNOCELSt0RAdGtsFtYgtfwEWz5+IC/G0pjZ5tbQfiHyJqCCwD2rBDMUE7I2qiV801aSTAjWwB1jRLpAJDSm91E2U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B40OcDl9; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-29e70c9dc72so1832529fac.0
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 14:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733610280; x=1734215080; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bS1hvfaKylLHS7jj/oKkEYDNADp1T2afpk8Swl56rFM=;
        b=B40OcDl9ZyeCAwFzoFVCUw1K0L/Kbncn/NS+O4lcMdkGe/PBKXyE2ML5Y5p7xdDH0d
         MZXXuj35YDrZlj7XgLuUeP8ho/qiww21KKrQsjJIKdNxEKVvjovI/NoNfKil3UvZoK4M
         B3kkobgAO0reOoQKeKfOsa3qYhRuyIFP11CNFynxidlLMZ0iaRgdx3ajZ0QKkItQhTTw
         BzdyU9V4BEz4g3hTU00KJrI1Q443UTo0PtG3/l9fIGGBBazPG+NX3s6M3Joio6BI1oWG
         K7wkP2Y8RmoJf+lRnZmdW63uuFttcpNMmYi/3388Td1D5qXsIIKzTVuZlWjM6c7ZcNjB
         yb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733610280; x=1734215080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bS1hvfaKylLHS7jj/oKkEYDNADp1T2afpk8Swl56rFM=;
        b=ckqV+YmkxV/mP2R2g+2+zfvziNMiRCQmFJYHAKNZ1Vlv5IOs1hdLa4nhf+wsbN5LMC
         z7o4i/OfFkildn1GE7+5ScWukLwTzYCkc3BiSq1R1/E9S2Q2ahnLo+3YbN6LGKojZvGS
         QHAq6Wmfv9iWZVXgnzbVwFa8+oj7E3j6gYZUDo28VgWSNuh2SCPnVern4l9X5tJT6Fcu
         ex2tzjmVN0zwCh0ogmd13/LALXCz4qX6fTlBocYf1KmgAIt6GK/fuAW7cz3Xr1AycGW2
         TXdi+3xs94VVRtzQQpjDStvENEAI6oQVUitSatx61OKMt5OL9R26BZejrx9VTWq/4OLH
         ZU2A==
X-Forwarded-Encrypted: i=1; AJvYcCUCk4WQJlPXeW53zRzZGgKQgevv0UD+NI3ByuBxyhh7TsVguZYPcse3ZQbzzSArAbodwPw903TMxnGx@vger.kernel.org
X-Gm-Message-State: AOJu0YxhMXyDV6amjQyAutgqvkfG/uwEOWCuFFt4rXpu3yjdvPZlfhgI
	BrSwffPDbDbl74saMxP+20omfncdFhBbrqgNixcHvG/GEf/ZYCDY0HXFG6Vr1hQReDC2ZH3MswW
	SpugjeeeKq15+WZPlkEqj4QZ5fq8SP5hBD0UtzA==
X-Gm-Gg: ASbGncunGkLGuYBC5sZPyqHj6YqtRIerTPoqPHifB4p3rsYh1VMgTJdFflx3HY+jniu
	miyb+dwSRvWlAg/frOUrgJM9YeUZ2LeM=
X-Google-Smtp-Source: AGHT+IH7dpjGK8nTZ9EvDFkMr9yeFM4lyfcPUg1SR244FGu9JUs01IRhEHCG1lRzya39HH/6fRYzq1Ljlzi0KVwXmPY=
X-Received: by 2002:a05:6871:216:b0:29e:74a0:e03f with SMTP id
 586e51a60fabf-29f73330a9bmr4017020fac.24.1733610280730; Sat, 07 Dec 2024
 14:24:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
 <20241203-gs101-phy-lanes-orientation-dts-v2-4-1412783a6b01@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-4-1412783a6b01@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 7 Dec 2024 22:24:30 +0000
Message-ID: <CADrjBPpC-qo22ZH1s=KoRgnnj6g90N6ADvU=HkRPJmwOBYAXoA@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: exynos: gs101-oriole: enable Maxim
 max77759 TCPCi
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Dec 2024 at 12:40, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> On Pixel 6 (and Pro), a max77759 companion PMIC for USB Type-C
> applications is used, which contains four functional blocks (at
> distinct I2C addresses):
>   * top (including GPIO)
>   * charger
>   * fuel gauge
>   * TCPCi
>
> While in the same package, TCPCi and Fuel Gauge have separate I2C
> addresses, interrupt lines and interrupt status registers and can be
> treated independently.
>
> The TCPCi is required to detect and handle connector orientation in
> Pixel's USB PHY driver, and to configure the USB controller's role
> (host vs device).
>
> This change adds the TCPCi part as it can be independent and doesn't
> need a top-level MFD.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>

Notes on testing:

Verified that type-c orientation notifications are sent to usb phy
driver and that Pixel is enumerated as a USB device with both cable
orientations

[..]

