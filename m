Return-Path: <devicetree+bounces-235358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B5FC374C0
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 19:28:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BF4664E6851
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 18:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7D7284686;
	Wed,  5 Nov 2025 18:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EYLfREVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0223C27E056
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 18:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762367238; cv=none; b=FmxENp+U4wXoM0CFLZFHxY2qGeg4zjmuS/ZGDhX25xRFxgNhFHcNSvWJ+LxLZveBuTlK5NccYtQfJU+cYFvui/zasCjuy9ieTKZ8sKPwuC/ar5MMC5vtt+flbqgeEMk2nO9+en/YhFS5/XSsC9Hu71R6tlN/uBmpaKcSgctUQhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762367238; c=relaxed/simple;
	bh=vRBmQB7LGLKabaHHO2oUNoRw1Zqt7X2Bf22UV35XKe4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bjj9/mblkRsFFcFpLASt5Qp5cqXioP/FPts1yynTURMt1bWnRFtZtaPXrPEtHU7S9RbjKuoGkzc5uTTysg53zO6DmAlhE/EUfy4GbUUSY8ft8j7abmnMJ4bkeeH6EqUmuH8/h7QeAWvOSsKXdcWqi18UDjmz7+hvwzp/r7Xr4zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EYLfREVI; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42557c5cedcso112932f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 10:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762367235; x=1762972035; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bbc91cmnOIWb40sR8vO2a7ivblSQNbbG7kvBVDDJucU=;
        b=EYLfREVIgzSjjhRk4eW2dL7l+iygIMepOgtVZqPb8rTK3her47SCHEOdD4MdB61H6X
         tf+GE9jfsVrmyAT/x1qq+9vOZSTJj/Xlm49B03U6KsmQhvG9S+gSThg4TN8bWUWqMNow
         t6T7VWG5fgx5ghVxdqbN85eW7aF/QBoszJ8HsXjdTdhA1pXKwOlKQveVANEyYTPmb620
         q1Kf19bNYRJE+Y9NKyqZUNEZtsUWk6Dz8rgjzF+ueLvNKOYsSuj+zZ2y31B550CPQ2QC
         O2IuetGiGnqfDgjB6afPOlJYFsqF6b2z5OeRHF3CTyZxL9mm6C2fCVy2B8Doev6ZEDVR
         mqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762367235; x=1762972035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bbc91cmnOIWb40sR8vO2a7ivblSQNbbG7kvBVDDJucU=;
        b=PSyXp5ht5qLt+uotfh03QO6xqDhmPAiTrC7GYTbh0lC3zEvlEqIbCYZksGjnEbVatt
         N2BY5tGnglc1PpwJooA1abIdqb1Bpw9J9YwiKZZHTbDRAgH8Whbb/eTpw2y9xx1A1c4V
         eROx9+iL/POK4KU3YFSoLM3Hf+UXMAnqACgeIifpj59wUEHVGyWzIR6OGbaiCm+iyTxp
         8NBQAvUfGnVif5VwgqHjgaV+/n0O66PNvlCPmhggyu1phO5LuRPe41bs3q5Zry3BmtlQ
         lnGLo/NcCyFT6qIFAodWxywkhLMmmgctUApxh/jsJ7PXxwrcvhO+RJttDSNj2LNiZ4wp
         +8cg==
X-Forwarded-Encrypted: i=1; AJvYcCWOk4hofVqN+cIsgm4Ydg2I51Pnu7Becg0AkAIWGmLKAQ0PajJh+sEhRUyThKghqf/aFucXb2hHCfdU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7156b9+AazVCvt5mfjg5P9h+K+d9QR8V4vQYCOGR083/llzZ1
	KpBouYF/mVLtT91iDNMtDkoycbHwvxgWiTPWj0vY4cvI3Y4q/HKJPSV+22CWhhW5VID6lKLxwP9
	9VQZMBrqWI3wdxJYA8rmb8Eq0n4Y5b6w=
X-Gm-Gg: ASbGncs0n1h/nS1e2LmVWpFcoQ0hqbVnjW8sbV87cpRvniwFPt3F8FhEeLJuVOoexvY
	KAp2poLptTUaoVtbIdWkFkHDQS1H795srfKMDR7E6BgxdzhJC8pz0PZzI1IwXeDof56jL3nXYtu
	MH4tSVnSsKSrRRfyn5ztkQKNbtnuCHLpeJ2T3vYOQ6V4K2C06v/PoKAzIkr27YUj5csTzO4cWys
	v1CEU9Q4k/iJEWm6uIH1pOiDNGbkA7qyupzLyRMayy2YRmeaKoweXCNM8DuwpH6gzTEyF5Q/Ab2
	491/ON554Y3KJp249xzN/5X7XBY=
X-Google-Smtp-Source: AGHT+IEWTBghlpzGR140MV37zalzZx95XG9FR6209AD+bKFmXcVea8c+q4MylVOG3MhHL2cMabNwPshiwbP0KAaGMiQ=
X-Received: by 2002:a05:6000:3111:b0:429:c450:8fad with SMTP id
 ffacd0b85a97d-429e3311ab5mr3772138f8f.53.1762367234998; Wed, 05 Nov 2025
 10:27:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com> <20251105051335.17652-4-naoki@radxa.com>
In-Reply-To: <20251105051335.17652-4-naoki@radxa.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 5 Nov 2025 12:27:03 -0600
X-Gm-Features: AWmQ_bnhAYEPFNfM6TJ98WM-ObxtabU9d1JG0HBHmZ60SB08IL3ZfsQM0e0yhic
Message-ID: <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, i@next.chainsx.cn, quentin.schulz@cherry.de, 
	dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn, 
	jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 4, 2025 at 11:14=E2=80=AFPM FUKAUMI Naoki <naoki@radxa.com> wro=
te:
>
> The Radxa CM5 IO Board is an application board for the Radxa CM5.
>
> Specification:

> - 1x microSD card slot

[ snip ]

> +
> +&sdmmc {
> +       bus-width =3D <4>;
> +       cap-mmc-highspeed;
> +       cap-sd-highspeed;
> +       cd-gpios =3D <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> +       disable-wp;
> +       no-sdio;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
> +       sd-uhs-sdr104;
> +       vmmc-supply =3D <&vcc_3v3_s3>;
> +       vqmmc-supply =3D <&vccio_sd_s0>;
> +       status =3D "okay";
> +};

When used as a TF slot, shouldn't there be a "no-mmc" also?
That's how the Rock 5A, 5B, and 5C were defined.

Jimmy

