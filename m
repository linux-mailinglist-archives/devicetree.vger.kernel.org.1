Return-Path: <devicetree+bounces-104160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5DA97D66D
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 15:45:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14A2A1F25BE1
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 13:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B733017A5BE;
	Fri, 20 Sep 2024 13:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Dx6zclKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9249517995E
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 13:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726839910; cv=none; b=DRTVTNsZTbwejUfbLNpFstkz9YbTdlxFCVgSE2WIu4Vppwae7+WFjdRgLEV9QYYNeUsYJZi22EEzIDcU25YJm4N7jyfIojH7cA+xTpCEyV+eCbW6ecrTDgdDhsGBgPHTSuB0RHeQWvZMPbClh6dKL9EOzramw0OSJLomMt85qpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726839910; c=relaxed/simple;
	bh=gDN/sgBuhIM3JVUFXVcLakscRVbrc1kau7V11AQd7YE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FVH9Gja/QGAEIb9Kl5NP89uXsheqacvlIoxfoSP8lnN51i458W6x14ylp9emsoGOEDJZ4WEV8YFCIPhCqqAgaC8x4egHg8qAgm1w5RB1EA1JFDgFsshbko5AB9pHHWJ5l2DZPAnQBI/tumOVtiHYS9qWgbgwqhf1D5Ev67Q+aLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Dx6zclKJ; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e1d0e74f484so1834710276.2
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 06:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726839907; x=1727444707; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TdvJ+kr1RTk5qIQIrIC2yclK5Px3xgR1ScHS8srLiXw=;
        b=Dx6zclKJ3rT3xDoek6YfZ7qdF4/D3AD7RrFuwZRU3e+5IZH1BGasPwFVlJILH3uRKV
         cPZDAwjDKxaK2jkrDJOr7Bdy/pi09qjt3dZz954N6VtvvMRTgLk7EBxyOuXNIKMXroVl
         NPwUCRdWUw7y4aJ1pIhtHQ5pCK07i4cjDAAiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726839907; x=1727444707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TdvJ+kr1RTk5qIQIrIC2yclK5Px3xgR1ScHS8srLiXw=;
        b=epqZ338T/6ytvOvXKv7EXeREl2FGVYaA8Af9EBterriN9/mxB81bMCw1sIeoxdWYss
         Z6HgM6KLGujCs9788ZrArjeDkvXXoSo3KrV8vBWk1ovguPQLahkC/DgC+VyX0GnEIGyU
         WMDwOVrIOlFpmQz9HY8juXmFckmiC7qzlugPbfyUa6EEcdtzjWFpgnzC0QcgPK1TrPdA
         q9VV+d6rJSWSQk0saN45HrOQfln8bAH78pBomoxbwqnbQ7OR40Xr/FdNpavHSglf1fXo
         NKXv1YEKPhuc0Y4QP4BEXRxkjSYZeKYi7o6FpS6k2PQuVWFWJihs+Mi9z78+O2Pl9EFD
         cvug==
X-Forwarded-Encrypted: i=1; AJvYcCWlyA78y7KegpQ1AiL823G1Jqw2u/ZTRLAYu3DB+ESC0X0L85qYtaV3Cv3zhTi6l1ot10zlaYJvD02D@vger.kernel.org
X-Gm-Message-State: AOJu0YxiGS0FQMmDN5tZS2iHwfFpIeHsyr1OstgjaBtmf7SOel7/Ubj1
	+28gVoBhreIu+2Dfha8zWwLkXb/GjkIaul5gmsa7VqO9+TaSHK8rD12ALutkeHeE339eqzVDNHq
	ZVw==
X-Google-Smtp-Source: AGHT+IFn74Qa+m8bkxhR48qW/lZztTGRiyeU2D7ByOyJZQS07OkCHtwXXp82nUVo2bH077AGVydGmw==
X-Received: by 2002:a05:6902:18d1:b0:e1d:2cc2:b16b with SMTP id 3f1490d57ef6-e2252fbb784mr2497890276.38.1726839906606;
        Fri, 20 Sep 2024 06:45:06 -0700 (PDT)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e1dc13808dasm2582666276.50.2024.09.20.06.45.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2024 06:45:05 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e0875f1e9edso1835187276.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 06:45:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWnyzW+uYiAxpcGzuHUb8qU9amHnDOWDVn8k7akbVB2s35saBI7izDNmOud344gydkghCohWe5QKYfW@vger.kernel.org
X-Received: by 2002:a05:6902:2b05:b0:e20:2245:6fa2 with SMTP id
 3f1490d57ef6-e2252f54996mr1772372276.29.1726839904812; Fri, 20 Sep 2024
 06:45:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919-topic-apps_smmu_coherent-v1-0-5b3a8662403d@quicinc.com> <20240919-topic-apps_smmu_coherent-v1-2-5b3a8662403d@quicinc.com>
In-Reply-To: <20240919-topic-apps_smmu_coherent-v1-2-5b3a8662403d@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 20 Sep 2024 06:44:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xrbe1NO+trk1SJ30gHm5jLFjd0bAeG3H46gD+vNFZa1w@mail.gmail.com>
Message-ID: <CAD=FV=Xrbe1NO+trk1SJ30gHm5jLFjd0bAeG3H46gD+vNFZa1w@mail.gmail.com>
Subject: Re: [PATCH RFC 02/11] arm64: dts: qcom: sc7180: Affirm IDR0.CCTW on apps_smmu
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <quic_kdybcio@quicinc.com>, Rob Clark <robdclark@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 18, 2024 at 3:58=E2=80=AFPM 'Konrad Dybcio' via
cros-qcom-dts-watchers <cros-qcom-dts-watchers@chromium.org> wrote:
>
> From: Konrad Dybcio <quic_kdybcio@quicinc.com>
>
> On RPMh-based SoCs, the APPS SMMU advertizes support for cache-coherent

FWIW, the "RPMh-based" confused me a bit. This isn't really related to
RPMh, right? I think you're just using "RPMh-based" to establish a
point in time and that Qualcomm added RPMh in the same generation of
SoCs that they added cache-coherent pagetable walk?


> pagetable walk via the IDR0 register. This however is not respected by
> the arm-smmu driver unless dma-coherent is set.
>
> Mark the node as dma-coherent to ensure this (and other) implementations
> take this coherency into account.
>
> Signed-off-by: Konrad Dybcio <quic_kdybcio@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 1 +
>  1 file changed, 1 insertion(+)

I remotely booted this on sc7180-trogdor-lazor. Since I'm working
remotely at the moment I can't check the screen, but I can at least
confirm that nothing seemed to go boom. I can also confirm that
without your patch I see:

[    1.580607] arm-smmu 15000000.iommu:         non-coherent table walk
[    1.580612] arm-smmu 15000000.iommu:         (IDR0.CTTW overridden
by FW configuration)

...and after your patch I see:

[    1.569350] arm-smmu 15000000.iommu:         coherent table walk

Thus:

Tested-by: Douglas Anderson <dianders@chromium.org>

I'm curious: can this also be turned on for the Adreno SMMU also?
dmesg still has this after your patch (which makes sense since your
patch didn't touch the Adreno SMMU):

[    2.423521] arm-smmu 5040000.iommu:  non-coherent table walk
[    2.423526] arm-smmu 5040000.iommu:  (IDR0.CTTW overridden by FW
configuration)

-Doug

