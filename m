Return-Path: <devicetree+bounces-79770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 755B6916CE5
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 17:25:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30D7628A893
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 15:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFADD17082C;
	Tue, 25 Jun 2024 15:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="QQ2kr0y2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DDB16F909
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 15:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719328737; cv=none; b=UX0ZprUEteBB5q7E2tCl7ZeItma5c0+rLXeUSprr5iZLSjvwTGnJdErby25K8bErSRfsTnwKvfdZ5E1YowL2qD6VfFedAa0w7h1mZiWYgFJBBj2I7f0bBUtVGI027jIrxCsKUhLit04VtYgixD4TpGpRlIr2ICYGMTevNFygMBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719328737; c=relaxed/simple;
	bh=mZj8HmgKq4m3YHtNZd94nsGMAQh/YBBmlu+PxcHslvo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fD9zkcJeOYkAuWstB1BgmlWZ00bcZcLgPE1UDpWL872EM7u1XXB30t9iq/gQEqC/AsO1qLdyKoR9a2e7XwAAy6Adg2ai0YNitSjcxEAN+QkE8qqJ0Z1GBDMa3OIjnueMJbamRdcBgndaAKTw+QU828lVN/RRMuTF4P6zSkfbR3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=QQ2kr0y2; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec3f875e68so63481651fa.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 08:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1719328734; x=1719933534; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sx2HYLsaSgIFg2Oa96eeaBmlhRTVUGHBB/hKxCjYNQo=;
        b=QQ2kr0y2cbrgNAeQ2Bj/fNDMO7tt1JPbzbHFf++6QslpTNXii1Gqk0u34mA1/MywBw
         h9Jq3RO4zf0d1T0u6iXii0FTX5CzQaHIzsz1caANAgYdy3t0O+tT25dTd8FDpWODO9ZQ
         OCa5Y2GVEDkUqomfxASVuejXoW/ogjRJ6Qe8tglsqndXlEl9pegnUsWAQZ9y1DwDCMqp
         8d3mVu1tqM4gRitf3PeksMylAq7OaEAp4jEm3g2SkIkMrU0fXxR+LUmgODqRLWpimeWG
         UXnyPkeYRl5cLS0tScGtKDJHki58965yM0+8BryRTi/qn5y0ciaJWTbykfqgjADVU6Wo
         VzsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719328734; x=1719933534;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sx2HYLsaSgIFg2Oa96eeaBmlhRTVUGHBB/hKxCjYNQo=;
        b=OmGiajaWDFaTSi1IdSw+Ds/VZ8Ud8AldjpyOwAKYYynnR2J95G3B/JtSaJ8L/4ZoNp
         dvnv4RWb2bfdnb8ZcsTC3Y2BZhDmvLsEq0oWkFB7wcFv4ZtJu6Q6ZR86IcBuunb9IKa6
         iWxWhaNhMltiuc3ppUGdLnMWyyb4oDQHM6eimfwpoVCGRGFPcfeIdHnKCmo6gDrzhmXa
         pzgVNu3XoBkQZMeqhFVpTFPn+H9MvwHyzy+tcb5sAw8OEG7DTwlkH0G4psxc6cVuXzm9
         RvxUa7C3C4p1GFZ3L4Q7dqoTXUQ4Pal1ocATRrTxzATCV2N00duZtJnTi/T51wKTHf9T
         hTrw==
X-Forwarded-Encrypted: i=1; AJvYcCUK/xrfwqUmA4qaI4qWqfMN8fcm05uO487YpYh32uskNky2cCSUc4+7gRbvFM4DNAlL2LWFJfkgcrOFqqJQX9HE8MMDoIlA98V98A==
X-Gm-Message-State: AOJu0YxDXfyNb/JABrrZz+bnW29SpZFWU4eRbTZz/woY+IST25TgYlxX
	K1tsv76k9JrFlwVyXgnSaEzYUTXo6gjnokHXesjezPTYgrArxiAnfc7Fu6or1QR5f/ACnKVCsqx
	RCnHV/RFiqF2LduY5lUQ93c3tDOD/Q+7Yp4Zc9w==
X-Google-Smtp-Source: AGHT+IGlP6Tm/b40/iLFEbi5fEIe/lDxGDCO4P+RlrzHbY56PKFGIr90owQjEXNXIRqgsr7Lwxg736Z4cGfOwruVrLo=
X-Received: by 2002:a2e:998b:0:b0:2ec:59d8:a7e9 with SMTP id
 38308e7fff4ca-2ec5b3e35b1mr45408841fa.52.1719328734531; Tue, 25 Jun 2024
 08:18:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240625151430.34024-1-brgl@bgdev.pl>
In-Reply-To: <20240625151430.34024-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 25 Jun 2024 17:18:43 +0200
Message-ID: <CAMRc=Mcm94=Fd6LiRpBLD3bWco6KhZ4+T0YPwAmrtNUosM6VEA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] arm64: dts: qcom: sa8775p-ride: support both board variants
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 25, 2024 at 5:14=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Split the current .dts into two: the existing one keeps the name and
> supports revision 2 of the board while patch 2 adds a .dts for revision 3=
.
>
> Changes since v1:
> - add a new compatible for Rev3
>
> Bartosz Golaszewski (3):
>   dt-bindings: arm: qcom: add sa8775p-ride Rev 3
>   arm64: dts: qcom: move common parts for sa8775p-ride variants into a
>     .dtsi
>   arm64: dts: qcom: sa8775p-ride-r3: add new board file
>
>  .../devicetree/bindings/arm/qcom.yaml         |   1 +
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts  |  47 +
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts     | 836 +-----------------
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi    | 814 +++++++++++++++++
>  5 files changed, 885 insertions(+), 814 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
>
> --
> 2.43.0
>

Eeek -ETOOEARLY, please disregard this one, it requires one more
change. Sorry for the noise.

Bartosz

