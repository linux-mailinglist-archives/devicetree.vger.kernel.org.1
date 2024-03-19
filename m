Return-Path: <devicetree+bounces-51700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB2288018B
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1647B283FB9
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B128681AB3;
	Tue, 19 Mar 2024 16:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ACZj6wQt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE838174B
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864658; cv=none; b=O84oVBDy/yujAvoXqAuBWt786lWKQ4dd5tnxLwP07T4ihjU002hNjPTTWFLNFvzqaz/0Zacinaxkd1+1XAvOvHfjXOx2eU1SoFmCApH3twZBVShKgc38lZL4yP6saGPF4140faCuGdnE8A/3hw5BhBDYDzZOmv1QbJpmyFvjRiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864658; c=relaxed/simple;
	bh=fKSF8pzEMf4QAy0lGBTclAV9vz3vznJXW70/aPT4oU4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DwwQYxm50+OT0Vt2Y1IsHwCSOlHxpfO2fAgP5BXLLMLRbXPLcjZQ970R3Xnip5KuujJNt18xeg32ZUCRaL0UmkScsPBNDjojLGTWc7qIzW/JyHTnGtIGrnm4C+BE3ehdLk8Xj3tJ0dJP/vK+GDMmdE7A1v4EEYyEFnDdlryXkB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ACZj6wQt; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-220ee7342ddso2182647fac.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710864655; x=1711469455; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UfOND8/B1sy+/Pxonj2Y99N5MbJN54ZzelPtBRESoQk=;
        b=ACZj6wQtlMqTdVwXJum25tZRyuTmVxudPJltxtfEhZK9w65jlcpxig4KYeJUtoeFgF
         fLS4tnuZt17nLYG13RJlYstBIryk1v/GM8GEHTpV9O2sAObgfcpkOuSh/aITtaDYXGLt
         pGFCXiWp+qujniZRuX4XcsKVxNgWy5auPjltg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864655; x=1711469455;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UfOND8/B1sy+/Pxonj2Y99N5MbJN54ZzelPtBRESoQk=;
        b=wI9RXy/Q8RPElyNzo4g9ZjQM8iU669P0v4cbPQY9NaZL43h4bypoiff6C1QZdI7Nlk
         N7DySUczH4QGuK5iO9g6x9Aes21FYL0DwqZHQQDnMEtK8HYK7hfguJOKqFEhlOIF5jOT
         SK46uouu6OcKEomFz+Cu45Z3jvJsAsCodaLUni6eVAUHcZEDBmfeDgDTgYBsPhIVjJcM
         a6a8E1nMVYMTNAe78yU1fTMIrBeKclUXkPCWZDVOXy8UBra3Nr2Xp1laZE8oxlOafaIV
         /H7FZFp4JTf73qbzxRuFsLqRS0by9CdQmZxImzM6BTmXuwr2I4T2CA5vPzjDeXsrVPG/
         Whrg==
X-Forwarded-Encrypted: i=1; AJvYcCVZjViR28p9m175MURV3PhUJ9GBcnke58pziz6YeAb0Tvgkb1eObPydw88JrkNHqZZceyWjuWYHWOtcd0sUWAo0d6OhwZag3iQxOw==
X-Gm-Message-State: AOJu0YxykTegp4uHsPNgba3v4JEj3bZ7R226A2E9XqDDSUswV3qmg8RW
	D5Pc7hvYwJaQirmTmKDEdU9M/alsnhYWL7DVB4fEG8KmerrNE7524RqkZ7xxzicOhNb1qrLmpi4
	=
X-Google-Smtp-Source: AGHT+IF4b+cWSar8kqsIIfH2nzmcij+tBkaJL6/lZOwfJJGEAS/zRmv/GuVPfUDt0eFtRF0ClyQjwg==
X-Received: by 2002:a05:6870:168c:b0:21f:9f09:b0de with SMTP id j12-20020a056870168c00b0021f9f09b0demr16000923oae.41.1710864655035;
        Tue, 19 Mar 2024 09:10:55 -0700 (PDT)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com. [209.85.160.182])
        by smtp.gmail.com with ESMTPSA id pn4-20020a056214130400b006961c1d2b6fsm2520730qvb.80.2024.03.19.09.10.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 09:10:54 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-430e1e06e75so435041cf.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:10:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVbz8Wo4KQyrUYSOcVSSl/yLXzD2AXDPic90WOWRJ8JI8iU4mm3mwENPJhn41/vEUrMmS0ynlJyr27fuUcD7SZcnMtAR7XFsuBmnA==
X-Received: by 2002:a05:622a:1648:b0:430:e26f:4bfb with SMTP id
 y8-20020a05622a164800b00430e26f4bfbmr262803qtj.19.1710864653792; Tue, 19 Mar
 2024 09:10:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319152926.1288-1-johan+linaro@kernel.org> <20240319152926.1288-4-johan+linaro@kernel.org>
In-Reply-To: <20240319152926.1288-4-johan+linaro@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 Mar 2024 09:10:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WqwY07fMV-TuO8QMRnk555BJYEysv4urcugsELufHr4A@mail.gmail.com>
Message-ID: <CAD=FV=WqwY07fMV-TuO8QMRnk555BJYEysv4urcugsELufHr4A@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] Bluetooth: qca: fix device-address endianness
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
	Nikita Travkin <nikita@trvn.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 19, 2024 at 8:30=E2=80=AFAM Johan Hovold <johan+linaro@kernel.o=
rg> wrote:
>
> The WCN6855 firmware on the Lenovo ThinkPad X13s expects the Bluetooth
> device address in big-endian order when setting it using the
> EDL_WRITE_BD_ADDR_OPCODE command.
>
> Presumably, this is the case for all non-ROME devices which all use the
> EDL_WRITE_BD_ADDR_OPCODE command for this (unlike the ROME devices which
> use a different command and expect the address in little-endian order).
>
> Reverse the little-endian address before setting it to make sure that
> the address can be configured using tools like btmgmt or using the
> 'local-bd-address' devicetree property.
>
> Note that this can potentially break systems with boot firmware which
> has started relying on the broken behaviour and is incorrectly passing
> the address via devicetree in big-endian order.
>
> Fixes: 5c0a1001c8be ("Bluetooth: hci_qca: Add helper to set device addres=
s")
> Cc: stable@vger.kernel.org      # 5.1
> Cc: Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Tested-by: Nikita Travkin <nikita@trvn.ru> # sc7180
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/bluetooth/btqca.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Personally, I'd prefer it if you didn't break bisectability with your
series. As it is, if someone applies just the first 3 patches they'll
end up with broken Bluetooth.

IMO the order should be:
1. Binding (currently patch #1)
2. Trogdor dt patch, which won't hurt on its own (currently patch #5)
3. Bluetooth subsystem patch handling the quirk (currently patch #2)
4. Qualcomm change to fix the endianness and handle the quirk squashed
into 1 patch (currently patch #3 + #4)

...and the patch that changes the Qualcomm driver should make it
obvious that it depends on the trogdor DT patch in the change
description.

With patches #3 and #4 combined, feel free to add my Reviewed-by tag
as both patches look fine to me.

-Doug

