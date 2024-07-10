Return-Path: <devicetree+bounces-84768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF21892D78D
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:36:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22978B277C8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92880194C6B;
	Wed, 10 Jul 2024 17:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nGpVb0/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02198191F8E
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 17:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720632959; cv=none; b=lsvqNwgsytnPRpGraJ4Fv8Nbig+G3WZwdcRWS2rRKI1vsIhRSvI+tTh46Xh9Jp03wiVrovlOyyS4ce5xu9IOGCMuFMm6AqdviEfVgV4ni48dAEHF6DPm1uBDHRdyll32bA+yNN1oOFOJtjtmKwRsHfbct8lkWjZqKM4eSmr08XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720632959; c=relaxed/simple;
	bh=JvlYBD4fzcDp97Xg4Q6bsG021KVmSIAGfMUuM50hu78=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J99AegsPjWCRHHuuMqpGppgFKSW3/lRSfiieVf6jxjsPVziwR7N/oMa7YYqUcK2qttsnJKM1ywPYpEKfzLhZ4H2G9bdGK3TKbgBPH86LrLbV6hPgfFI9w52ca6vTDA+Sw9cHJJqJqJmWQ3JTQwHM1qkCCIV2o8t8y2+fpbrYgaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nGpVb0/t; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-79f178e62d1so1763085a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720632954; x=1721237754; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=crXHuoCnWWxv6iDdm0t07OpWrmAQmRLaORcG897D/1M=;
        b=nGpVb0/tsVXbQ+yGJGB2q81eFfee2nAVw8vUWy+8SdV0zhBzXMSgJ8hpCeMt5N+jA1
         jrQmGsu1TXAePYl1Fd1q64Zbc7f6GWNmhZEsQCqXTiwWJE0txlTpN1SE2tiV4s3iCteQ
         PKJ2Gm3ZY+xXjVKACd3nIlJ1rHL3GjUUd8s5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720632954; x=1721237754;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=crXHuoCnWWxv6iDdm0t07OpWrmAQmRLaORcG897D/1M=;
        b=Fg9xdATK5LKL6MrhnJjjRiecxeu0pJUiXashGAzDERrA4A7u2NA++l2bRAOCRvqSoX
         JoE8CZdO8tngy7pYTudQNN2z9VqKloVMRQ3a4A47Pse8DeFm22eaXAoDjSHXEqMoq7BY
         47UdlhgBho2CpSEYQVvmNHdD6lvgbD0zKPX3NhwA7ZMjLjCAIc/RSyfjaZq01y3mtkPT
         EZZiH7BoNTIhvEmlhOqe/Rpv3YlYaNEIhGRme8iZ0e7a0Ixdw15vZo+vusXRw107OMHy
         GXG9NVy/0D1j9A6bTpBUIxCCzc2eV3VYtl6v3BCCXbGgVdWBeXPihsajOUpBXWuBmB3U
         vfNA==
X-Forwarded-Encrypted: i=1; AJvYcCUkr6leub8KX+v3pXWHunom11CrlRpl2JPEMzMV45kh3CXReT/DRca1dH6D1K7khbpb4ooV8sviDRKpySwGmVbuU/3wQ2LQhwSwzg==
X-Gm-Message-State: AOJu0YxmTFPfdMYrp1Z0uoRGFVRChw++VCyIl+KuVXTjHlQo+bFNbxn2
	+hEeTjQlk/qErzVEBYci8VfzQaGT5BX+8gIwNsUPUTjRYHwmOQe3swnulgQFaGLihvVrXLfWlWQ
	pTw==
X-Google-Smtp-Source: AGHT+IFUFf9W3GJxy4X3xrwc3Y1Bz2f+x5B3S0cAlNw2QUnYnmVlStzcUUlzpETB6NvYiB960KSF+g==
X-Received: by 2002:a05:620a:1993:b0:79e:fc12:c4e4 with SMTP id af79cd13be357-79f19a1e34emr802350785a.28.1720632954415;
        Wed, 10 Jul 2024 10:35:54 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-447f9b58da4sm22406151cf.48.2024.07.10.10.35.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 10:35:53 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-447f8aa87bfso29971cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:35:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUYgC9PoTbAvRTV4DKR8pXnF95P5Fzks4froHxahCUcJNXr0FQYPajaWM+uJRKxuIE4WlMrPsWU/bKbfjsjpp3QF+mIsoZIGn9mQQ==
X-Received: by 2002:a05:622a:7604:b0:447:f5de:bd18 with SMTP id
 d75a77b69052e-44b191f6ac5mr3688571cf.9.1720632951079; Wed, 10 Jul 2024
 10:35:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org> <20240710-x1e80100-crd-backlight-v1-2-eb242311a23e@linaro.org>
In-Reply-To: <20240710-x1e80100-crd-backlight-v1-2-eb242311a23e@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2024 10:35:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X5rJUNq_QUBf7WMrof+9rh9Jhb5zoqK=Y6jqUUi2Nt3g@mail.gmail.com>
Message-ID: <CAD=FV=X5rJUNq_QUBf7WMrof+9rh9Jhb5zoqK=Y6jqUUi2Nt3g@mail.gmail.com>
Subject: Re: [PATCH 2/5] drm/panel: samsung-atna33xc20: Add compatible for ATNA45AF01
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2024 at 10:05=E2=80=AFAM Stephan Gerhold
<stephan.gerhold@linaro.org> wrote:
>
> The Samsung ATNA45AF01 panel needs exactly the same non-standard power
> sequence as the Samsung ATNA33XC20 panel for backlight to work properly.
> Add the new "samsung,atna45af01" compatible to the driver to make it hand=
le
> these panels as well.
>
> While ATNA45AF01 would also work with "samsung,atna33xc20" as a fallback
> compatible, the original submission of the compatible in commit
> 4bfe6c8f7c23 ("drm/panel-simple: Add Samsung ATNA33XC20") had the timings
> and resolution hardcoded. These would not work for ATNA45AF01.
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  drivers/gpu/drm/panel/panel-samsung-atna33xc20.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-samsung-atna33xc20.c b/drivers/g=
pu/drm/panel/panel-samsung-atna33xc20.c
> index 9a482a744b8c..fd56fd02df87 100644
> --- a/drivers/gpu/drm/panel/panel-samsung-atna33xc20.c
> +++ b/drivers/gpu/drm/panel/panel-samsung-atna33xc20.c
> @@ -333,6 +333,7 @@ static void atana33xc20_remove(struct dp_aux_ep_devic=
e *aux_ep)
>
>  static const struct of_device_id atana33xc20_dt_match[] =3D {
>         { .compatible =3D "samsung,atna33xc20", },
> +       { .compatible =3D "samsung,atna45af01", },

As per my response to patch #1, you don't need this change at all if
you just add a fallback compatible. Later if there is anything special
we need to do for this panel we can match against it, but right now
there is no need.


-Doug

