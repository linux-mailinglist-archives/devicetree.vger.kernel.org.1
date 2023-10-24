Return-Path: <devicetree+bounces-11242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B84DC7D4E43
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D8002817DD
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CE5B1804A;
	Tue, 24 Oct 2023 10:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zd5lP/sX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C835CBE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 10:52:09 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C245D109
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 03:52:07 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5a7c95b8d14so41462717b3.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 03:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698144727; x=1698749527; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ByymKernzbt7l2A1qflNQoCJCAiaYl24vxzOmzj3yAc=;
        b=Zd5lP/sXC75EiIvr2ffUWi6wB0HRiVU/GYXEbrKB15tS3Mp5En2zqZhFNayCkmcNPW
         uAHNGNKsG5wdYc3yoxSJROLEqeYB4yQK9tzFU0QjUpddTexI7+ajKFZgHJbQTHjjV/ZI
         2llVWBpqUHfgD/8fZeUD1+2RJLDEqb1N4IWYeIoL4fGF/kKdiyqp1vbMPMjw6fK/ebvv
         i2ClR15E2AQObTTnfFU3leIhaTYFBQ6rHUPFRR1SRjy5Z8O4f+rYH8JYpZLrlGlfkjpy
         OzY0mV315C3sMtOnm9D0OJ4Q0kNIjMubXIziLj82Tg43wFZbzn4l8V/8Mp0pjTcwYO0L
         UZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698144727; x=1698749527;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ByymKernzbt7l2A1qflNQoCJCAiaYl24vxzOmzj3yAc=;
        b=WEyhY2gSOC9jSt8M1E+Sv6S9w2vYUfPVwyakwGNBGzD4W4Q2TnDZ1Fp+iJ35LGyOfi
         w3UH9Yq8vPwRq8aG6a8fRlYAE692LTYkd18NldgRSuG2xxM/UFMTt8BXT9IcHLF04Hvv
         2Bc+a7KM7SZpXoLeCYSindXcF/+VOLxsO1mJuR5O12rSv7PlY31MySdyXYIEBotaHFGk
         bLJvRtCsQ3GPOiZBsbgPL8unYa0rICyaruwbOYeApKBsrqx5C94kW624y3GjxCZ7tcKb
         3WqTi2bAEvJkw1vnDOHisrHzrJ1qc4ebtK0gmCUrSZz2mciYJPHJol7lylgy9fjROwBX
         orDw==
X-Gm-Message-State: AOJu0Yz54Ef1SZPWWfkhj9gh7MQU7utu8PIr7zev2rdhAZsDVB+G2Rkt
	v6JqgEq+5K2GnT38olVHOEMwph8IlyP0mtW+skwbuE3c/H+1piVV
X-Google-Smtp-Source: AGHT+IFo/3QgV0KZOi/gmvirPkbINOiDhalcXKuhYUP+qSnmfjX/7XWUmuor40d93j1eqXJDHRoLEpe+HKTeMqXFZ7E=
X-Received: by 2002:a05:690c:dcd:b0:59f:69ab:22f2 with SMTP id
 db13-20020a05690c0dcd00b0059f69ab22f2mr13575017ywb.40.1698144727007; Tue, 24
 Oct 2023 03:52:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231014133823.14088-1-otto.pflueger@abscue.de>
In-Reply-To: <20231014133823.14088-1-otto.pflueger@abscue.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 24 Oct 2023 12:51:31 +0200
Message-ID: <CAPDyKFpuQmyG9_Hr2XeMx2axYmNMKfr8WsXtvvq-GJPDTQ0vaw@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] pmdomain: qcom: rpmpd: Add MSM8917 and similar SoCs
To: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 14 Oct 2023 at 15:38, Otto Pfl=C3=BCger <otto.pflueger@abscue.de> w=
rote:
>
> Add RPM power domain definitions for the Qualcomm MSM8917, MSM8937 and
> QM215 SoCs. These SoCs all have the same power domains (VDDCX and VDDMX
> in voltage level mode), but different regulators are needed for QM215
> because it is used with a PM8916 PMIC instead of a PM8937 PMIC.
>
> ---
> Changes in v4:
> - Rebase on latest next as of 2023-10-14 with new SM7150 compatible
> - Add missing Reviewed-by (if there were no changes to rebase on, I
>   would have simply resent the patch)
> Changes in v3:
> - Sort compatibles in device tree binding documentation (suggested by
>   Krzysztof)
> - Rebase on latest next with genpd subsystem renamed to pmdomain
> Changes in v2:
> - Fix typo in patch description: VDDMD -> VDDMX
> - Split MSM8917 and QM215 changes (suggested by Konrad)
> - Remove redundant qcom,msm8937-rpmpd entry from rpmpd_match_table
>   and use a fallback compatible instead (suggested by Konrad)
>
> Otto Pfl=C3=BCger (3):
>   dt-bindings: power: rpmpd: Add MSM8917, MSM8937 and QM215
>   pmdomain: qcom: rpmpd: Add MSM8917 power domains
>   pmdomain: qcom: rpmpd: Add QM215 power domains
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml | 81 +++++++++--------
>  drivers/pmdomain/qcom/rpmpd.c                 | 91 +++++++++++++++++++
>  include/dt-bindings/power/qcom-rpmpd.h        | 21 +++++
>  3 files changed, 156 insertions(+), 37 deletions(-)
>
>

Applied for next, thanks!

Kind regards
Uffe

