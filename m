Return-Path: <devicetree+bounces-124414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7109D8B31
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 18:19:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A160A163ADF
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76C781B6D0E;
	Mon, 25 Nov 2024 17:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DlVg3I0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C721B6CF0
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 17:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732555166; cv=none; b=Y+U8LVUUh5ie/Vg0k3eZGNfQgx90eAgT1OXf312SYdszrNMzT8mIedd1D+pU+6nAsL+UG3a//fcq0tqGRM9JHOwlgiiaoCgT27i3XhB85/uRxxbGmK5UsVcoyK8RsN8sK7ApQ5bnHHn9UbXi6QupUTbcb6GbeIhuyKEc4PNLPOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732555166; c=relaxed/simple;
	bh=TiUNDOaFRB1I0ZknfKQ4oNwpmZSuTLCus9pbIcS9U6Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AEqVA9RJQkURX6tT9NF6M5odqxy46PgqrczKJtUX+f8Qbb3HEtGSy2++l9ZDsP4HQlU9SlQWxW5+2GvipCnTAmrFqVAcXzIdmMR7JqPclFn3wSApK5rNHTgradgB3J14XLcnm7TguYct40WgHNQpgnjF7oFX+7u2D1rDvWiaU2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DlVg3I0Q; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53dd668c5easo3264737e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 09:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732555160; x=1733159960; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rMzxcC5wsaZiCOOJDSmAWDv3eoVe+TCnixOaVa1nGDY=;
        b=DlVg3I0Q7r/tQ+nxeJtCIKJwAJXjiIZXp7efCGp2LnkNxJOR+2/Td3aw+UkTfGXrEN
         0zgjkGifp+VwtFMNkQRIA0BargQCWnVj8/6oc+FJzJYh/NN8u/S7aebUwOlzNdn9Kf1d
         p3IRVhp1YkUcNC3K1/26ViE1t4fXdH1Pc7Ljo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732555160; x=1733159960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rMzxcC5wsaZiCOOJDSmAWDv3eoVe+TCnixOaVa1nGDY=;
        b=LD85LlKRSi8sUfETspHTHgRvcBxu7sdozx/gAWyGuvRwKIYH94nNT+oc0B4h7QJdmm
         K8Q5i2/jrKjLILErdgdHptxSnq9z7lM9A56oy51GGswn0KQlYpOT3cAMh7Hi0gsvzo3/
         wvGbWp+6zUuqCJOEkUhnDEjGG3naJxTqxYrMRKx8NQbgnhigVkyhMbu52yc8cEK1kgWp
         54wVbdlNPmNEbm/OuSAogF7QaYjrLPHlWAAWIL8L0dgcwXACXJihGbK3PGtB5v1EgGYc
         kckFQkMJBrkSbsr9Jq/S1O9jEc3CKTcv9NiV0OzAC+o64qSNANt+6HBG2u/4H0lbZxjm
         IVYw==
X-Forwarded-Encrypted: i=1; AJvYcCWJkEYUryhKKA+zs63qRhUAiVd0QMck96iMpSOrXwInTe4UI3JmQKRHX264i4HhC/O2H8jClFOHNv6y@vger.kernel.org
X-Gm-Message-State: AOJu0YxoSrbyC4siibkBSvskuYKz4ZwU5LHTwhdQnKvKVpVFe0YzGe80
	hXbuhkQPjZB4ElEspDR0C0sTkUeQERJNY/OHWY+UOdWi+ACCuvUJqi5w6EJIn3SdsRSyfugZEo4
	=
X-Gm-Gg: ASbGncs1M9lOyUgLb8jfh5mr+Y95ws7seKlWjrjda6J6PgsIv0n6YkN22J0Wi6rJf7U
	H5Wjik92Vi00qR+HjLE9u4K09tWsxDP3Bf+hqik+E2Du0Yz7SCCpob0+CqWHoVJnsd80caUoO13
	fvB06Osqwh9i3tg11x3tY9tmfH/uMlRqnMp/kTRwtZzJxATrCTq4wXv7yM6KkSxs31iqRadDELs
	BR65P4XI14N3UpTsjCbfyzsdg6FxXAgVrTzb85BWdpJMMmAhxZI3qXc5nTc0qoffYJW7gfdgZkQ
	gI9GYmy5TfeAZw==
X-Google-Smtp-Source: AGHT+IGwtAt9iMOpsEOWQ0RQUYJIofdgeQ0PsDaaD9DgOfWKJet9awyaIqQQwwGgSo5JWmtGrvKT8w==
X-Received: by 2002:a05:6512:3e22:b0:53d:c741:7d05 with SMTP id 2adb3069b0e04-53de884b5f4mr68385e87.22.1732555159188;
        Mon, 25 Nov 2024 09:19:19 -0800 (PST)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd6cf4a96sm1504296e87.167.2024.11.25.09.19.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 09:19:18 -0800 (PST)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53de101525eso1514171e87.0
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 09:19:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUMoHu2Y+LPWJVOi//hzKFYQkrxswcb9NrV3a4SoZ3+85dbZyjr0y70zQcXB98r3tiag1rZtS5j0f27@vger.kernel.org
X-Received: by 2002:a05:6512:b8e:b0:53d:ced5:e9f3 with SMTP id
 2adb3069b0e04-53de884971dmr59574e87.25.1732555157694; Mon, 25 Nov 2024
 09:19:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241124-asus_qcom_display-v3-0-002b723b1920@hotmail.com> <20241124-asus_qcom_display-v3-1-002b723b1920@hotmail.com>
In-Reply-To: <20241124-asus_qcom_display-v3-1-002b723b1920@hotmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 25 Nov 2024 09:19:06 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XjWT16wC_cpnC-Y5=eSvnj7rXY1z2ENyWZQYDawmjs8g@mail.gmail.com>
Message-ID: <CAD=FV=XjWT16wC_cpnC-Y5=eSvnj7rXY1z2ENyWZQYDawmjs8g@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: panel: samsung,atna56ac03:
 Document ATNA56AC03
To: maud_spierings@hotmail.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 24, 2024 at 2:01=E2=80=AFAM Maud Spierings via B4 Relay
<devnull+maud_spierings.hotmail.com@kernel.org> wrote:
>
> From: Maud Spierings <maud_spierings@hotmail.com>
>
> The Samsung ATNA56AC03 panel is an AMOLED eDP panel.
> It is similar to the ATNA33xc20 except it is larger and has a different
> resolution.
>
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml =
| 2 ++
>  1 file changed, 2 insertions(+)

Pushed just this patch to drm-misc-next:

[1/4] dt-bindings: display: panel: samsung,atna56ac03: Document ATNA56AC03
      commit: b1fe820d03e2e1b89315faf99f1065bdb4146a8f

-Doug

