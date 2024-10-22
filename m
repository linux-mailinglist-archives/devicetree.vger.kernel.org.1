Return-Path: <devicetree+bounces-114102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D349A9D40
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 10:43:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FF8C28317D
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 08:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CD4317B51B;
	Tue, 22 Oct 2024 08:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="F6++lCn9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2C1178388
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 08:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729586577; cv=none; b=byVP0xmFiWIliQT+rz64asU2BsayFcx1SOkHhTCC+QYl0B8dEUK/kxoaMoS1lGRKbA8Wu6QjB/dfUjCuPIbZ5vLcbgQG6PO4Hw+GLamcBFoD6q03LduWbg5gJEPj2oY76Ubggt4AQMbbLwPO+bakndmgh1IRnmNG1Go1wsOExr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729586577; c=relaxed/simple;
	bh=Eb5cq6rhpvrVx58PTZz7HAj5RGu1n0Lf/stla6XXmuI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=qPMOQNm/O2x7Q1kTrZ5XPGZCuDHZqvIUEgeb+aUe8cqXqoM9l+Az++ZTJyLC4jwGYVcr/Fk9VyuojzjcYQ+3kAfxpetyws4Zl/+Lh3tE9e02cjOFkTDlfDT0L/MP299dBd9mDiCeKq0CJd5eU/jQvLFn6JN3Sb5u4dr0N/iatfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=F6++lCn9; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43161c0068bso39435655e9.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 01:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729586573; x=1730191373; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=1jpnHnQ3gPJsZV3rud6D7V0PkG3eWvAEvUguSu5qf1I=;
        b=F6++lCn9BxSckRtsBnnNu3SVH90ucKKDu1CKtEBCql7EeVGT+IKfwziUMEVYIdSQGU
         anyAisyiuEMZGFOMB0obu+iZJVGMB9C65ebpvoFLBCkcoSVdktpT6QQm4p/kQA/5M7XV
         /AE17pk9aPG+w92rdNQ7hUhOcBOtZ1Lxs1KDATQ3cStiazRAQAalCQ9xYWscBhk8kEdu
         q/p+dTQ3gGgKKQPu/OPv4K6Xo4RpZzy70NoY1wx1sXJtFlN7ZPmec7VhC325d5XSKwUR
         yJvJrmMBc3miL63olEES3W8h+I8UXzcIRkD76zyQTBBz4GjL0QTLEEpaIVyiVKy48zil
         fBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729586573; x=1730191373;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1jpnHnQ3gPJsZV3rud6D7V0PkG3eWvAEvUguSu5qf1I=;
        b=gq8VaorRY/i6Qgv4EPS/m8mjWXuy0nG9v8VXs53PVFxga5oc6NjMR2fVpeLBdPWhl+
         dd1vfiZVAz+DfnSW6Xv07Ph/Vl9AG0UVyicmVjWj9SoKwyCyBGX5X1jtBGxom7JYi2Hz
         g2KEDxPt/Q6p0Fda4YNzDih4/0zdHTkPVMmAeBdv3dRlXJUutNIuOkLAxTJHYeTejlsB
         yVlEVIlqo7watLcXEdJyHbWQoAAx6stuvE20hH+FbmUd18Akq+Z7UUDwgfYgQ7f4cT85
         S7ft8sPvUEk1ZdUcPtmG1/wivfRKzCPbaBRFkxaWaFdQJdP3aIdu/TRTtu4136BhT/u5
         S/oA==
X-Forwarded-Encrypted: i=1; AJvYcCVpQwK75ImM+a63HcaNfMBw10BQN14CgcvE0zhnb83r7iCjwigMzSQ1kaOhIj3Ga7gfDSNMWF+3fEaj@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhy8ME7Y6AjAXLWb+Tih20S7gA/ElpbYDey7hoHddJEQ7MLZnN
	UuN0PgmnhMgMZUUxAJIr6lETZC8vVDJ6Ml2+CvvbzdplG2r39ZdTesbYjRS1OyY=
X-Google-Smtp-Source: AGHT+IHRQTZKw+rsQ6rr0wLIuGP9VOmB5Go8obeenaZUn2sWIynPYNrej4PW0IGYCYtMiZC4z5Keng==
X-Received: by 2002:adf:f452:0:b0:37c:d569:97b with SMTP id ffacd0b85a97d-37ea2174eb6mr8577418f8f.19.1729586573251;
        Tue, 22 Oct 2024 01:42:53 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:ef1c:ae40:1300:20c6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b9bb15sm6114405f8f.99.2024.10.22.01.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 01:42:52 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>
Cc: Conor Dooley <conor+dt@kernel.org>,  <devicetree@vger.kernel.org>,
  Kevin Hilman <khilman@baylibre.com>,  "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>,  <linux-amlogic@lists.infradead.org>,
  <linux-arm-kernel@lists.infradead.org>,  <linux-clk@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  Michael Turquette
 <mturquette@baylibre.com>,  Neil Armstrong <neil.armstrong@linaro.org>,
  Philipp Zabel <p.zabel@pengutronix.de>,  Rob Herring <robh@kernel.org>,
  Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC PATCH v4 1/5] reset: amlogic: add support for A1 SoC in
 auxiliary reset driver
In-Reply-To: <20240913121152.817575-2-jan.dakinevich@salutedevices.com> (Jan
	Dakinevich's message of "Fri, 13 Sep 2024 15:11:48 +0300")
References: <20240913121152.817575-1-jan.dakinevich@salutedevices.com>
	<20240913121152.817575-2-jan.dakinevich@salutedevices.com>
Date: Tue, 22 Oct 2024 10:42:52 +0200
Message-ID: <1jbjzcle9f.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 13 Sep 2024 at 15:11, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:

> Add support for the reset controller present in the audio clock
> controller of A1 SoC families, using the auxiliary bus.
>
> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>

Independent of clock controller. Should be sent separately

> ---
>  drivers/reset/amlogic/reset-meson-aux.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/reset/amlogic/reset-meson-aux.c b/drivers/reset/amlogic/reset-meson-aux.c
> index dd8453001db9..a385c0125836 100644
> --- a/drivers/reset/amlogic/reset-meson-aux.c
> +++ b/drivers/reset/amlogic/reset-meson-aux.c
> @@ -26,6 +26,12 @@ struct meson_reset_adev {
>  #define to_meson_reset_adev(_adev) \
>  	container_of((_adev), struct meson_reset_adev, adev)
>  
> +static const struct meson_reset_param meson_a1_audio_param = {
> +	.reset_ops	= &meson_reset_toggle_ops,
> +	.reset_num	= 32,
> +	.level_offset	= 0x28,
> +};
> +
>  static const struct meson_reset_param meson_g12a_audio_param = {
>  	.reset_ops	= &meson_reset_toggle_ops,
>  	.reset_num	= 26,
> @@ -40,6 +46,9 @@ static const struct meson_reset_param meson_sm1_audio_param = {
>  
>  static const struct auxiliary_device_id meson_reset_aux_ids[] = {
>  	{
> +		.name = "a1-audio-clkc.rst-a1",
> +		.driver_data = (kernel_ulong_t)&meson_a1_audio_param,
> +	}, {
>  		.name = "axg-audio-clkc.rst-g12a",
>  		.driver_data = (kernel_ulong_t)&meson_g12a_audio_param,
>  	}, {

-- 
Jerome

