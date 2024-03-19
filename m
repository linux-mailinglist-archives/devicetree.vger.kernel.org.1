Return-Path: <devicetree+bounces-51701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D04EA880195
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 60679B2337F
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A637182C8E;
	Tue, 19 Mar 2024 16:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lF4Ir/Fw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6BA82884
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864680; cv=none; b=X0UgJYFtLvPTelZBA9rovz4avjd/E256dm/ZG5Pirvt1ux0M+z/U4k5kodrPB1PUx+UXE+osFsfmKhZfqSmJ3Z+ZH42Zuo3styZp9afc8Aak3BE5RBnO7NLtLUqXmBeQUyx9tD1EYSPKeSeMR9iQSNdBHS3kpQYyKfwktCcoc74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864680; c=relaxed/simple;
	bh=rYjMj7ePgUflQEILg5XkDq3SlXHXtDYoYHvIrr8ecTI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L5SY7ovZpyzI/9JVo//9lc8mmUAJvb9TAml9cnde8D17vPJepF5hBfxS0ITtO9M0xPmDEU6/n5GRxFAGpndfWHgdncCQI9a1yVweW2ZN3W4ShsdAMzHYQ+Ug4PNzfflXfxMalJBw9vk6rbxjh/yJcjE//jCgTB4GmmyWHDzZAkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lF4Ir/Fw; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-789fb1f80f5so161486385a.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710864673; x=1711469473; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=riAPw+X1m6DmK1tPVpYKEJDjgOP8E/jPhgqRZJ5EE70=;
        b=lF4Ir/FwKWl4PUdieCSv+Zv7EdBjdE+sm/bOgiFIEBq5uCwDsryMcKLQ5m0lf7Hk9x
         l66LD2jd8mIMh6/xNRfvq9dlEe0VU9q8jwypVLz5u+G8y9ewoyWFuqhCBT50atSE6ij5
         uPGRX0ra4yj+53w58X70+UgmxIDJwAzLiHaRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864673; x=1711469473;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=riAPw+X1m6DmK1tPVpYKEJDjgOP8E/jPhgqRZJ5EE70=;
        b=ECUKsZaly/t7gehehmvLiBrQ8YPzBCRZ68uIa5lfVDxyeUEDGKnVqCAb25mh6UlcFE
         A3TQQ1mhAuvj2Q/WbEnmYu5ReQ5MBF0k4f46kSyGeKJnRZ+dVzy2i1Uj5FtsseXhdJFo
         /9TmR3kJ9NY1ya+DT/aDFVMAdlt0AhRoZD2O61J3c5qro9KFDQVK/OdaHpCngCLmIcnP
         GriD+E+7uUaT1dnfsQVDK/GEx68th1f+HeXIUODLeNL6qAROyZp+c1U7/p74t+95Jh6W
         P6k5Kow5nG+Zo5ONTTnn4KO7Ist+0/BW0a+0Y0zkaB7yZWsRxfZawV0qy91S/59eIy6f
         b7jg==
X-Forwarded-Encrypted: i=1; AJvYcCUIzwJYO3b7ltHYPuDDnp/fj6h22HNZrJ1VOih0PeVorCnF43PEfvts75sumQ/odEUTjJgSSrfv+kSwglH8up3q3du9T7ob2+QHpg==
X-Gm-Message-State: AOJu0Yy0mrWaU+DlkfQxiwm7I5bwGP9MZVJKCvYY32l5/Z/LvlfX+eGh
	KUfZZxZ2F25UZNlspHzbqfIyDfdg/vmMWsfF3pMQgc4eh+R723HBgQK1/wFGG1/l/JRQ+zuyeDk
	=
X-Google-Smtp-Source: AGHT+IEvTuhkh2K1NkAB6XdDvGBd+fGAXLlKjeq0tPbr8jH0AaE/ot1kfwKhvt9vL5p8ZbnDbPNG8w==
X-Received: by 2002:a05:620a:2915:b0:78a:1c9d:42f0 with SMTP id m21-20020a05620a291500b0078a1c9d42f0mr634975qkp.39.1710864672987;
        Tue, 19 Mar 2024 09:11:12 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id x6-20020ae9e646000000b00789f3c50914sm2807657qkl.33.2024.03.19.09.11.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 09:11:11 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-428405a0205so374331cf.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:11:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVo1KyP9oK0AyqSJO84upORfQSYRDMHOFTc3U2Dkqws7x3QdUdTd4WqOHQsE5Yd5L58ZqFiLUXJHSlWkSR6oC7OLcxtABN7mAEJUQ==
X-Received: by 2002:ac8:7c44:0:b0:430:bcaa:187 with SMTP id
 o4-20020ac87c44000000b00430bcaa0187mr392494qtv.18.1710864671219; Tue, 19 Mar
 2024 09:11:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319152926.1288-1-johan+linaro@kernel.org> <20240319152926.1288-6-johan+linaro@kernel.org>
In-Reply-To: <20240319152926.1288-6-johan+linaro@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 Mar 2024 09:10:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ut0pOAFxD5KELqK+_bkaKOBaYWTth0aVgO5LmMKraPyg@mail.gmail.com>
Message-ID: <CAD=FV=Ut0pOAFxD5KELqK+_bkaKOBaYWTth0aVgO5LmMKraPyg@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: sc7180-trogdor: mark bluetooth
 address as broken
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Johan Hedberg <johan.hedberg@gmail.com>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Matthias Kaehlcke <mka@chromium.org>, 
	Rocky Liao <quic_rjliao@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Rob Clark <robdclark@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 19, 2024 at 8:29=E2=80=AFAM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:
>
> Several Qualcomm Bluetooth controllers lack persistent storage for the
> device address and instead one can be provided by the boot firmware
> using the 'local-bd-address' devicetree property.
>
> The Bluetooth bindings clearly states that the address should be
> specified in little-endian order, but due to a long-standing bug in the
> Qualcomm driver which reversed the address some boot firmware has been
> providing the address in big-endian order instead.
>
> The boot firmware in SC7180 Trogdor Chromebooks is known to be affected
> so mark the 'local-bd-address' property as broken to maintain backwards
> compatibility with older firmware when fixing the underlying driver bug.
>
> Note that ChromeOS always updates the kernel and devicetree in lockstep
> so that there is no need to handle backwards compatibility with older
> devicetrees.
>
> Fixes: 7ec3e67307f8 ("arm64: dts: qcom: sc7180-trogdor: add initial trogd=
or and lazor dt")
> Cc: stable@vger.kernel.org      # 5.10
> Cc: Rob Clark <robdclark@chromium.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Assuming DT bindings folks Ack the binding, this looks fine to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

