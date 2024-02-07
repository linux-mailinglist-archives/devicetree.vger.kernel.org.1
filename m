Return-Path: <devicetree+bounces-39398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A31E84C80D
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 10:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F30B1C252DA
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 09:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E15423773;
	Wed,  7 Feb 2024 09:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nr/LWBr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA8525558
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 09:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707299705; cv=none; b=Vd3jz54EVfYjTE7K4TB9EQ5ENRxhIRuzu9uXJ+PzntAm0RCBU3Sk4xFlixIZf697IyeF83yOkR23twgSf3QxiLIBGH5CDUHpwhhOjuf9qO0cufpWXyzthGoDAGV0sQ1U6ZhdXQ/d+x5m5D8I97t1ryGM4C+nOOG+I9Uc5fXxEPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707299705; c=relaxed/simple;
	bh=W0qMbCmeAVZPhJb+iYTwPmigfCpsBuM3I+cALhPa1L8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ewvkIakSHQ//iEwVcs2R92HDgr3nEmUOwcs4cil5v037ZYxXx1t+8n5G/xVbmCm+FBt7ZGlDfVZnYLLPlp1XzLt/EVAGnUMW466+7nfy1dJgkk37S3d+pg6wj0IhXvuMX37tyHDYUNoJH7VDpodavBbr4HD5aU9pvRM0xOHszIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nr/LWBr9; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-604983ea984so1359037b3.1
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 01:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707299701; x=1707904501; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RicxNNPMrKiw67Y7TzIkhzw6IPlh0lXHADdsE21F4B4=;
        b=Nr/LWBr9yuOhURHxyQXzgiHkQCCYrp4lCuS6j3PIdAvJ2tfIys+JNkDPcQ6JRQi0QY
         0Mwca/kBKF16eJdbbzN0DZC6YmBi9dVgCmyjZhxGcLX7Unix+npcEfcEI45fpy99w881
         ITZO9Edm2ommzqMF7Z3n5D1s67zbH4FVymmXMC6cYX+9hk42BhDSx/IPQ4VENEAP0SIh
         Jbw+ihPBEZnktex+bhzckPpQrmugUOZyKrPCiTLsXmDrHRKX6RC76aWU6KLMlbaFXm7K
         nwU51mlumZFbMdloQuc2nrimhCWybsMxeayIYgi1/OMpxXAyavt21bvvksGpWmGxAFER
         Un7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707299701; x=1707904501;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RicxNNPMrKiw67Y7TzIkhzw6IPlh0lXHADdsE21F4B4=;
        b=Wdvs4U7cLo5YXefl/OCB6UMxiM9weP+dVtMTaBvzHHmyo9FHLFYJPoxPDFnmPm2u+4
         MzN3fyai1/ZQdWlB1r11rsZIrH2alu5glHLKQAbTUbhw8GLevzQ1XL3zXTempPaavBCy
         fVz1IQsqIjC5y3dmye580ez7totqvGXafwh32YE5T0onjpb60gTFefI0ymcbW5xYyr4R
         Kxn/MNAwZPcQXmPG72G7mWyokHeYiyTCI12iKSUfNYdx8pSvOk5UrmBa/QY2B8aG+7fj
         YSMFpeZurY4GtYx/SveZate7/LZ5rGhy+86t7Z34yDLrcdJXcMmZtCVEcqNN1sDnC12D
         upbQ==
X-Gm-Message-State: AOJu0YxdQ3iGCi5XV95mzrwB04cgyIrY1YhxPl3WfMUpaCzcyQJMZpX2
	ASFZRQvl5MKvInVWIAoX60ucLH8zFJ6PQDgFMKYWJff1+q3MVTXmbEbu6AttvfWhJtwVzCLRPp9
	TY+1GViMx8gpPzsG3IqUOBAtg5onTR5Lr11R5Ow==
X-Google-Smtp-Source: AGHT+IH2OCszgIyWLV9aSBN/6A9BrqUCrx0IXJZ6guPUfoxlYrbqi1ZwGlFpu/0nklPKspZSURkiAJyVsyKd8MNkFGQ=
X-Received: by 2002:a0d:d6ca:0:b0:602:cd33:5339 with SMTP id
 y193-20020a0dd6ca000000b00602cd335339mr3707239ywd.5.1707299701285; Wed, 07
 Feb 2024 01:55:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org> <20240130-pmi632-typec-v3-3-b05fe44f0a51@linaro.org>
In-Reply-To: <20240130-pmi632-typec-v3-3-b05fe44f0a51@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 7 Feb 2024 11:54:50 +0200
Message-ID: <CAA8EJpqhfWsmUxwmBLtdtx-aFOmTo24erdNfRyz2ymi_y=yidw@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	Luca Weiss <luca.weiss@fairphone.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Jan 2024 at 21:33, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The PMI632 PMIC support Type-C port handling, but lacks USB
> PowerDelivery support. The TCPM requires all callbacks to be provided
> by the implementation. Implement a special, 'stub' Qcom PD PHY
> implementation to enable the PMI632 support.
>
> Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Tested-by: Luca Weiss <luca.weiss@fairphone.com> # sdm632-fairphone-fp3
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Heikki, Gunter, Gret, is there anything left on my side to get these patches in?

> ---
>  drivers/usb/typec/tcpm/qcom/Makefile               |  3 +-
>  drivers/usb/typec/tcpm/qcom/qcom_pmic_typec.c      | 30 ++++++--
>  .../usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy.h    |  2 +
>  .../typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c   | 80 ++++++++++++++++++++++
>  4 files changed, 107 insertions(+), 8 deletions(-)

-- 
With best wishes
Dmitry

