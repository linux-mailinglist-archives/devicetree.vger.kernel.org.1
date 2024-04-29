Return-Path: <devicetree+bounces-63623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0E78B5A67
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:46:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71D8E280EDA
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89AE47441A;
	Mon, 29 Apr 2024 13:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="uS5jUxoh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BBD2C69C
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714398377; cv=none; b=bLYZeMvWlQ1ovwUhS+8xQFX5CTLse23JiklrqXunwgsUrUe5EHFsKOk7vNxYIsju7XUD/1zXJqKr/w3WFm0hAfWUyrsxqHjq31pl+E5sCqSbN008gAoCtqHtfTAAsnDET3SUVd3ObY4v3oUishpjNjPsqQtw/5c8bq58G+dLQPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714398377; c=relaxed/simple;
	bh=yOM6x4ip7qhIJTmNKPRKsHvmpY33g0qufiDZxMoO6ps=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pk0bBdrScUELWaDWJic8U6oMlD6UT3+oqwwY0C4ZwTw1oO+YnwBFsX3jt8li1KcV1mXSMnPzNjVJH2W8I3MzMsQXQNZbcWGSQRVYVPxushmo4iS/EPPYqLre4Zeut2ApoPnxz+dDHJWDv1yHjbEz7PrydBH/LIfGrDjkfFRv72s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=uS5jUxoh; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9CF9B3F6E6
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1714398373;
	bh=h6mJvCJK1Jea7r50yUqQ7vE5+7yhc8VviIpbBrR7hhY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=uS5jUxohJWzfK3EwyqhQCmG1dV0U5QqpU5C3Atiw/U1wO2BBZ8GMW7pss8h3MTCYX
	 lU9nSWGsNpUuccehcDc5ljkyiZOwQElGVud9woNi/jVFXHdTx3TP2FT5xy1x7hRIlx
	 yCEnL116w6UA/9iSjD7oJdv563V6QgfwPA7FSH3Cx19u0fjUOzagZp5mqybIAOPQ0M
	 rYISwG5hrQ0Jh0mzpC6spAHiD2tQNg3j5lw1NDF49F9tOzJ3n9JUcswkrUI6mFpdOP
	 KHogZy4qTlU+IMRcmQ+Qwz1tba09bXnBzqGPou7YRA9UR4oM1Af2kCzErEU6FkUcsY
	 W7ZOBLnxgUf2g==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-439755d2ca9so65063841cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 06:46:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714398372; x=1715003172;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h6mJvCJK1Jea7r50yUqQ7vE5+7yhc8VviIpbBrR7hhY=;
        b=kRqhIAWDpActrwiO4O4qQ8ePR0V+tbRyhUFivrqv+SV78Frp/akZAhyq7zUBjhBRUv
         KNQ0i0Oi0H3c1j+hXs5v2TZPHqyk+nvt8gPLd8xVsuj13lHHBL5K1SZCoCTDYjSwdOjd
         xjJQGuFGQ3WMIIoRCnPoxT5ftENEyS4wo8inrdeEUgakM9NYRCEyK8dh3pcSTeITskTO
         7JVdN24kVnoFSw9VHo8dXBfEFm/G8IbWzCyHxb5kgB5c64VMVlSHurpdVAt/j8ZRcWfI
         koNIQr/IwIpdK4hS+dSVQbYcgEVz4UIPJcyFqyOv+4Vlp2Y5YTBWlQQ5b616LNGJYO35
         L72w==
X-Forwarded-Encrypted: i=1; AJvYcCUeuQRMiltB0Vj8LvJlWgW+sjZo4VFAZ83hTG/2EdGXx4u3tcAFUoTwbIuaVlHkiJQEgpzrxbEMvnAze8hX4yp30ah5XbwR4qNJNw==
X-Gm-Message-State: AOJu0Yyna3P/w2cBSpsGMQdjruLFwN7qjxu5UOHc9Rq1y4fQcm/mjqWO
	JSwjoI7KizpwFVCPVGlJ/jxtbmhsmHGOGVS7s8A/X3z25703XRsbMak3wOG6u2Aeac+T12o8Wh0
	Pt1RMSus2C9XGZdQTL9vjHDVHwz95doo5KRnFdaChvnqn7sfrAw78k5d0H+UhSZ+uMU3HXiRNF3
	i/ob0qlNee0w0p4pvWDGw/g9O+YGXSSoPcF2xUygwImND23tLQhw==
X-Received: by 2002:a05:622a:18a3:b0:43b:7:6b42 with SMTP id v35-20020a05622a18a300b0043b00076b42mr1868773qtc.46.1714398372612;
        Mon, 29 Apr 2024 06:46:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIlDbe7IDabCj+xHEpXMlCy+uSz6SBjFMnmfn0odAlBGQ9fDFSnW9gobHhiUN+TFENPPlf8J74IM1KUJt/YOY=
X-Received: by 2002:a05:622a:18a3:b0:43b:7:6b42 with SMTP id
 v35-20020a05622a18a300b0043b00076b42mr1868758qtc.46.1714398372378; Mon, 29
 Apr 2024 06:46:12 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 29 Apr 2024 08:46:12 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240429001317.432-6-jszhang@kernel.org>
References: <20240429001317.432-1-jszhang@kernel.org> <20240429001317.432-6-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 29 Apr 2024 08:46:12 -0500
Message-ID: <CAJM55Z-aoe-whriE4_MuHxtTB2OfFSaatLW_6Beg50+vrNSg6w@mail.gmail.com>
Subject: Re: [PATCH v4 5/8] riscv: dts: starfive: visionfive 2: add tf cd-gpios
To: Jisheng Zhang <jszhang@kernel.org>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Emil Renner Berthing <kernel@esmil.dk>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> Per VisionFive 2 1.2B, and 1.3A boards' SCH, GPIO 41 is used as
> card detect. So add "cd-gpios" property for this.
>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index 910c07bd4af9..b6030d63459d 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -303,7 +303,7 @@ &mmc1 {
>  	bus-width = <4>;
>  	no-sdio;
>  	no-mmc;
> -	broken-cd;
> +	cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;

nit if you need to respin this anyway: i know the properties are already not
sorted, but i'd prefer to not add more properties out of order.

In any case
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>


>  	cap-sd-highspeed;
>  	post-power-on-delay-ms = <200>;
>  	pinctrl-names = "default";
> --
> 2.43.0
>

