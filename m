Return-Path: <devicetree+bounces-127134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A2E9E4827
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:49:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 564272845FD
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 014CF202C4A;
	Wed,  4 Dec 2024 22:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gJ9Buxxr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AF4202C2E
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733352571; cv=none; b=SjLk7iUWGPHdh9fZG2aQc71xXy7uw016MRzV5vnJuricS4ZMJ1dIfoYn68+k4Gl/S3gA+oBOG5pgb8hKMXznEm8XMIlrWPY/KoebR3lI1/i/t+xxNkCLmYEFMIWmrva8f3BbGldL2caI5STzv6b9RE/FZZg/oTtMA615jiuzoaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733352571; c=relaxed/simple;
	bh=TFhy+fON5EYXB48RBtCSmjPevQfB+1YjtuhEruheq8w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OE6m787+2aElZK7mOJ5Pqla/yLgKV0IjahESoiDXUUE3EDCIhx1MMGp++f+OQlHjHk0BYYnMJaVdA0OcJSHbHzPKwCPwVcqqwHALSd3+9jsVtJ3QamRYMmsvfV7YpeZif1i94U+EOH4jvjJmwuSyksG9pxtxJZ4BYCBt7Xnecyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gJ9Buxxr; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ffc3f2b3a9so2015711fa.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733352565; x=1733957365; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s3NqyklxNKjn7GA1Xiioa4rdBEF1bx3QvQxtDhyi8+k=;
        b=gJ9Buxxr4i+Zh6zHQ84t1zFOu/ew1Y4U7mWy78f/U7w/hx7N8N8W7d/jJG79Dh0xJ8
         6ZeRKcS6YXNTjQf/WbV+IpV8jp+ObWuYrVj1YDZWKlmXyJl0+s2dXyd5a0X46Ci8brFp
         VhMqaetajVFBEXAMLIW1NJ7MjulHdFgN00v+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733352565; x=1733957365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s3NqyklxNKjn7GA1Xiioa4rdBEF1bx3QvQxtDhyi8+k=;
        b=mpIM/qbyFumdL/Zb7LKOFi7Zwk/gqbHOY451HVAhMpsHBidDU7puPJCaalxXTUMWsH
         DuCgXTAfmV+2k2jTRWY5nHZGgTIPksaP8gGW/5ijAJ8PU6eZUYo2ParfdN2Lanmo19Jn
         Z/E4Vck0UO5SElnOp1duhpM/fLMaP95h5WjFisc2hEJAlr88uy8JQ64k0CG3874pE8j3
         iUfBSHLUGGU5wOO2BV/e8r77U65AeauucM63ETZ3ckBYQbxhp2K1qpAQlyOQme/V6gEF
         oLdYULzV2XIzRUS7+c987MDcuhm9PUYJ73so4dBoQXIG9VsTPlmIg1pAhKMVCdYuClur
         wQ3w==
X-Forwarded-Encrypted: i=1; AJvYcCV/1klSJaQ4YpgW1UYdLfuTaiJPflG5OItOTtpR31piZq98fOZq3d+GSac1ShEkD4W16icnOqvWANEI@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv38hHQLnfgJYiRfiz1OQsXXXAXJwr8RxxSmRSirflQCLXu+b6
	sSr7+3LVisPoNJ9bIWRBQMyjJo5FqVYmZzYO/OREWbmE4qoTukxn5uXqa3loKQp3i5c4vgq2KSh
	Y9O28
X-Gm-Gg: ASbGncsiUHCMJxw0WVLOkAwZORHXfUFDu/zagUJqqat2MHz7Mxblg3DJZST0GaEfWM6
	kXRfh/4prJyuw38pdpUbGzafzWHy5G3e+TdWqLbElRQYphlJa3ujLi7QEUrS+PFBkYKIDPcMGKw
	8SBSoOlXJDvS8Da1rlIC0CFz/2gIN7MBY8nqy/WO7/aWuTZMAejrl7yoN/CGD77oSkMSwQM0/hf
	+Ts6FWuSWVHTUT6DxlJu89jo8A6IAjyV0i5SwXPY6vtvOWLW373J77idwTOQWGDPULRlWes5src
	gBqSb3ar30y2QgsOVQ==
X-Google-Smtp-Source: AGHT+IHDKXwK6VsFoXIFpUtMUBaYHEmjk7+AuMEdQtt8/jzmClwqVD5ci/gV6HrYFLVyWGPhGP5B0g==
X-Received: by 2002:a2e:a90a:0:b0:2fa:cdac:8732 with SMTP id 38308e7fff4ca-30009ce0b00mr68693031fa.30.1733352565003;
        Wed, 04 Dec 2024 14:49:25 -0800 (PST)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com. [209.85.208.179])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020d85356sm94221fa.15.2024.12.04.14.49.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 14:49:23 -0800 (PST)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ffdbc0c103so1981001fa.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:49:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWkFkZD3ktQkfdeMUPExrspnj0630lNY+Le1FU1ttD5MMiWGzTx76TOqdPRI4Fq3gvEKzmbEvsEEHgs@vger.kernel.org
X-Received: by 2002:a05:6512:b0a:b0:53d:d44e:fae4 with SMTP id
 2adb3069b0e04-53e12a0687fmr5763487e87.28.1733352563093; Wed, 04 Dec 2024
 14:49:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org> <20241204-topic-misc-dt-fixes-v1-5-6d320b6454e6@linaro.org>
In-Reply-To: <20241204-topic-misc-dt-fixes-v1-5-6d320b6454e6@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 4 Dec 2024 14:49:11 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UKyyp4_BfHwpYLEB-N+-R0P=RVBsUDHHu2gS=Zwi3WmQ@mail.gmail.com>
Message-ID: <CAD=FV=UKyyp4_BfHwpYLEB-N+-R0P=RVBsUDHHu2gS=Zwi3WmQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sc7180: fix psci power domain node names
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 4, 2024 at 2:57=E2=80=AFAM Neil Armstrong <neil.armstrong@linar=
o.org> wrote:
>
> Rename the psci power domain node names to match the bindings.
>
> This Fixes:
> sc7180-acer-aspire1.dts: psci: 'cpu-cluster0', 'cpu0', 'cpu1', 'cpu2', 'c=
pu3', 'cpu4', 'cpu5', 'cpu6', 'cpu7' do not match any of the regexes: '^pow=
er-domain-', 'pinctrl-[0-9]+'
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

