Return-Path: <devicetree+bounces-219221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 813B9B88A53
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 11:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A8E616148B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 918AF1A9F96;
	Fri, 19 Sep 2025 09:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="xE2vwJN9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4177082D
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758275365; cv=none; b=XicABI6eiQ4d3j3N16plUyrRPqTmsFsvEvxPJIEb2Ug/4I/v9UTAnbenoE2fOHQ+HP/aEd+0T0cyn2Tvd3TiqcQqslyc8UBWeBhht4g8z7yE5/yrRZndIs7M+5BQHPTvUbmVAUAFyICeE/ZiUw8RkEydXqzuMD+N/w/JcH0pKiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758275365; c=relaxed/simple;
	bh=Tz2BYFvF/M11ZKfSqaimmGgmE3eUTJYVaFA8dA+tDN4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=uQNw7JEpZNvaZhte3WZ05CwS3znz1aYtDPHPLUlobc7vmhPmVuwaA8FRpIYo9PUht4GyDT6J51msnNNiIsS0igwspoEhAfHY8LUGYxgn8bQVyjovcVpPRMK1sPN4a8t6vPu6SewK4k4dVMZlj6dyZNwf5l5gPO6Y7ULq4VTlrDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=xE2vwJN9; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b03fa5c5a89so170083066b.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 02:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758275362; x=1758880162; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bF+fr97ZY8gnHTqJgWFCrdHRcSxw9tzCQyJHijmyQXA=;
        b=xE2vwJN95mzyOnC4ZTWV9laCOyOgDXALTW4Ju5t4ko0uYUIb+zqCaiTtOgB1K6qHB8
         IEMj5rHwV9JWQPg3FjvudGXjmU3qLOVgvx4TStrLDAUabmdYW0Z0THb9idND5yR3xGm/
         YvMxXgKgDXpF02D8n+avVYJ60nyi48ZK5+kKb9JYQtTMtDNrWBMG4nk0gY26gLNUxnZX
         UCE9MqU4MNaiNkHVXsiSVQI8z1FNK6TskgFVIwdhqUSZB/y1LBKGoWfo8AgQeRwFPAKX
         iU/Ay8ydvAm3WRR1hI4vPizEXX5b+Sj1hxv2ex99uAySEApJHvXMS2kRh8PSuD1ugjKR
         Auqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758275362; x=1758880162;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bF+fr97ZY8gnHTqJgWFCrdHRcSxw9tzCQyJHijmyQXA=;
        b=Bu2q4dQkvZO0y2QrvuGZSYoR8TRbEE1eyhifeuIWNLpbY8Fubv3NcokeCAQ5+WlJeM
         C1m2SiqY9mRv6+j9WT71upBF0QhkHoCzVQpTn+DkRO8y76U8Swlp1zXe0aMOpCV6n2Gq
         duWklAMRkdK0+tiLtyjCLGb11dz4xgJ3VZE7YCs8sdP9Jk8v+h3HgycLmQX0fin/mX0O
         2377FAUpBPrtpRXSY/rFukt7inyWchO5QWOhTUR/xvx7KZn4qVGPhvhujvkWgN9v/V37
         QfB5YiP9RoDmpmKPyHJzUwDiQPFWtHFLu8/jx6OwbrBC3iU6olfQPUlKZcHnLqhivLXL
         vK7w==
X-Forwarded-Encrypted: i=1; AJvYcCXpHgMy84haZ/pPHaputlIoAPU5kH2EraOiutqK4e4P0szHtD7pD4R4VpYQojcJPEkEOraDrH4ffGqd@vger.kernel.org
X-Gm-Message-State: AOJu0YzEjZ12UmckL4iQH6QrnW98FFKtETzTS+yEc7w06Oyk+G+pJI8+
	PTBHgdapCA1H9yjAruuXK5m8FkZcCTz1n6satzGmQ5u7QGkHSwxYgixzRuvyVboVonw=
X-Gm-Gg: ASbGnctlEyq0KqYV+0NBR2gBRHRw/rKkKTq9X0BLjD28VLd+heksqjuH72KIeKAmQSU
	1sXUPvIw9fhYgt9eoIf2JP0in2Ri18hqVWNAzqxfXwdz+Bx6zevvrw8Pnhgu4pzqK0ySqY5UZNK
	uYeMQW6GRzoTbzQ0QwUjeAcSvVryUKVjA/AC2OuW3eY5/QI+GO6p0Zm+ZNS8Snu/YrRpgqtrVEL
	qhRfk8QKK0FCST6P86V7iOfvba2QWkgWzKIzM4w1pvHCeI36EYA1Yo3pyXmGlA+4gUE0cz+vKiI
	agdPyE/T9gfau2YA40v9zmaDuMK/H0iGYjsozqplwh2QeKsbXVYZ+8y/zn9SQ819AqUNNFJI35U
	76tHxo24nCTbVr60l7ST+RzgpV085YpKqdduEgmZHyXFluoJStY6wmFYTm5I3g29CtMpg
X-Google-Smtp-Source: AGHT+IEFBu6jYd3DaMItgC8kjB1GxQEyOVsDZz2UShssNFNRiR0gE56ikyqcHlsjZ4qckWKtQlZbDg==
X-Received: by 2002:a17:907:7292:b0:b0c:4ff9:5c77 with SMTP id a640c23a62f3a-b24f6f91688mr289081966b.54.1758275361898;
        Fri, 19 Sep 2025 02:49:21 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b26e36ae75dsm15882366b.8.2025.09.19.02.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 02:49:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 19 Sep 2025 11:49:20 +0200
Message-Id: <DCWOLHPCYG3X.32KTGBE4SYMDV@fairphone.com>
Cc: "Vincent Knecht" <vincent.knecht@mailoo.org>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: msm8916: Add missing MDSS reset
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Stephan Gerhold" <stephan.gerhold@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
 <20250915-msm8916-resets-v1-1-a5c705df0c45@linaro.org>
In-Reply-To: <20250915-msm8916-resets-v1-1-a5c705df0c45@linaro.org>

Hi Stephan,

On Mon Sep 15, 2025 at 3:28 PM CEST, Stephan Gerhold wrote:
> On most MSM8916 devices (aside from the DragonBoard 410c), the bootloader
> already initializes the display to show the boot splash screen. In this
> situation, MDSS is already configured and left running when starting Linu=
x.
> To avoid side effects from the bootloader configuration, the MDSS reset c=
an
> be specified in the device tree to start again with a clean hardware stat=
e.
>
> The reset for MDSS is currently missing in msm8916.dtsi, which causes
> errors when the MDSS driver tries to re-initialize the registers:
>
>  dsi_err_worker: status=3D6
>  dsi_err_worker: status=3D6
>  dsi_err_worker: status=3D6
>  ...
>
> It turns out that we have always indirectly worked around this by buildin=
g
> the MDSS driver as a module. Before v6.17, the power domain was temporari=
ly
> turned off until the module was loaded, long enough to clear the register
> contents. In v6.17, power domains are not turned off during boot until
> sync_state() happens, so this is no longer working. Even before v6.17 thi=
s
> resulted in broken behavior, but notably only when the MDSS driver was
> built-in instead of a module.

Do you have a link to the patch that causes this behavior? I've tried
looking through the git log for drivers/gpu/drm/msm/ but couldn't find
anything that looks relevant.

FWIW a similar change to this was also necessary for sc7280 (as done by
Bjorn) and for sm6350 (will send the patches very soon).

And happily enough for me, with v6.17 and that reset, a long-standing
issue on sm7225-fairphone-fp4 has been resolved that the display init
seems to somehow fail the first time after bootup, with the screen
needing to be turned off once and back on to work. I traced this back
to some power domain behavior as well back then.

> "mdss_gdsc needs to be off before mdss/dpu probe, this can happen with
> genpd_power_off_unused but not guaranteed"

Anyways, I'm hoping this is not just a coincidence it works now but
will stay working on my device. Just the reset in the past didn't seem
to affect anything.

Regards
Luca

>
> Cc: stable@vger.kernel.org
> Fixes: 305410ffd1b2 ("arm64: dts: msm8916: Add display support")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/=
qcom/msm8916.dtsi
> index b50c7e6e0bfcd35ab4f8b84aeabe214fd60e8d7c..de0c10b54c86c7795b7a0d1ec=
d80652e60e117b6 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -1562,6 +1562,8 @@ mdss: display-subsystem@1a00000 {
> =20
>  			interrupts =3D <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> =20
> +			resets =3D <&gcc GCC_MDSS_BCR>;
> +
>  			interrupt-controller;
>  			#interrupt-cells =3D <1>;
> =20


