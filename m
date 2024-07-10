Return-Path: <devicetree+bounces-84769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C20F692D7B0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:44:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F37A61C210C8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39583195805;
	Wed, 10 Jul 2024 17:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GvjXw2h8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C787C1957E8
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 17:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720633436; cv=none; b=PfTB4mMNJomxNIkdet7AUHWKERxkkvYR+0nm1pXPf9popqaJC+Ko0CYdM62WVwRpsYppadTsRp17GPcI9cASPzoWerInx+G56GcPSQGtKRKvsAhr8M1/xy0MUNXHdLyHYtA34cfbghjh4lwgjSVVCIZIYJprSOjHPouPXEumhlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720633436; c=relaxed/simple;
	bh=Uo4AsETtYXAveM1Xc57Wf8CaUxSqYIgmAdQWMhqNmic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gZAfm5KodXxQitiOZJQzSjIV31nEAjtIwDEs1fd48DZoq7onV82oMmdzBsk+HMMf7wP7eGHnOFPEMXSUq6uVnb1iJEAvAIh1TR51uMuUGobJcUpLz4G0X/PxrUV5CCIhEQfTbL+GKoyHYPpjlTByz0aoPMJQ8rHQKtjGKIo4ahY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GvjXw2h8; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-71871d5e087so4640577a12.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720633429; x=1721238229; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zOdeMjN8zn02u2RJwNFjQMEU7jlojgabQSgPR5kH/Pk=;
        b=GvjXw2h88BLDT4NZnC+V54MS7bHQdK2GW2gFqPnOSev71HWx1aUSRd/KVNQSFaREdo
         qA3giw1GPd26hF2fRLpu2y4pYGBmZ36Ik4TlfuYUl0SC+DRZOQbjAFMqFKsaVxJsmuHa
         rWYAagEMYkaX6S8rZkkvG3683NYsBRgw/+5tU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720633429; x=1721238229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zOdeMjN8zn02u2RJwNFjQMEU7jlojgabQSgPR5kH/Pk=;
        b=JvyFBqVSJI2Ae7eak6GjL8IS16fn5BH1ZPiRQKj26Air5K6E7SYHdtXV7rnjBq4MvO
         gqYOgRg4vu1lxUigK91Pwr3YG51qaw5xLPg/wreWhAZ2mD4tNyJszf1ml34l6cidYCv6
         EXCTFxGrzFShbvHjj2zfqnbzZtlKqVOEJsYwhxT4GwA9AK9IyM54/QFzp1xiRe482dWp
         ayLPJof2i9Sskn3+4O0wcc26yUh4uAlLtAS3vcf6EgpMcfp0EDh+TlbVcMZdn/4k+UT9
         +C7IffSiyFVSPsPIFZBFOQFWt+2HzCSu4HxDie7VaEgVE4ntoFNoHZaI0FSoe11PmbNu
         Au5w==
X-Forwarded-Encrypted: i=1; AJvYcCV2amOxoXS7dkNMYqqXatJHuFtsTEsWjBdMgL+IZuabhSKfKPh66eBh74VYHL90VPRCsSWPME6Mk2feDkY3dcRhmriQ3rKrJTXO2Q==
X-Gm-Message-State: AOJu0YzQOiQIT8wGdVS0lokj46y/OJP2Mevmtr60mM5b8jXZsuJdvMtE
	Q8zRFbEsGENMQDmp5haRTjMinM2DlrE4R+HydBGYLyJJKriuNgqPvQYsI0Njp00Gg+2ZCKxWlAD
	0sA==
X-Google-Smtp-Source: AGHT+IHdVf7I6+1BRn2K/B8fT49nM69C0pp2+sSyPKHtl+CB2hIZF/IN87+7JugFKcLatoVaVkor0A==
X-Received: by 2002:a05:6a20:2588:b0:1c0:bce5:c19c with SMTP id adf61e73a8af0-1c29820b8abmr7718929637.12.1720633429178;
        Wed, 10 Jul 2024 10:43:49 -0700 (PDT)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com. [209.85.214.170])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b4389c372sm4211306b3a.14.2024.07.10.10.43.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 10:43:48 -0700 (PDT)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1f70ec6ff8bso16125ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:43:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVr1NBqQ6WdWGJtJMTWbJVCsPjnhltEbevP9EuGrlTrMdTipMdk21rYxVYmN61Zern5l7geipBJ96ceUo7RmzOxE3ZYW3Qcgz9t0g==
X-Received: by 2002:ac8:7773:0:b0:447:d97f:9765 with SMTP id
 d75a77b69052e-44d0b00f42cmr42181cf.16.1720632956811; Wed, 10 Jul 2024
 10:35:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org> <20240710-x1e80100-crd-backlight-v1-3-eb242311a23e@linaro.org>
In-Reply-To: <20240710-x1e80100-crd-backlight-v1-3-eb242311a23e@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2024 10:35:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X=rL9Jr91BXFX+a=X+SCjYX7vGhztbh9tEUVn9iLViJQ@mail.gmail.com>
Message-ID: <CAD=FV=X=rL9Jr91BXFX+a=X+SCjYX7vGhztbh9tEUVn9iLViJQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] Revert "drm/panel-edp: Add SDC ATNA45AF01"
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
> This reverts commit 8ebb1fc2e69ab8b89a425e402c7bd85e053b7b01.
>
> The panel should be handled through the samsung-atna33xc20 driver for
> correct power up timings. Otherwise the backlight does not work correctly=
.
>
> We have existing users of this panel through the generic "edp-panel"
> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works only
> partially in that configuration: It works after boot but once the screen
> gets disabled it does not turn on again until after reboot. It behaves th=
e
> same way with the default "conservative" timings, so we might as well dro=
p
> the configuration from the panel-edp driver. That way, users with old DTB=
s
> will get a warning and can move to the new driver.
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 2 --
>  1 file changed, 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

