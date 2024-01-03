Return-Path: <devicetree+bounces-29345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A7A822646
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 02:06:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E43D1C21C09
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 01:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 950627F1;
	Wed,  3 Jan 2024 01:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pbEJszu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C81A1841
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 01:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5e3338663b2so65362437b3.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 17:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704243960; x=1704848760; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NqaBZ5ZyGN0qCrSiZJqfeYkL63UJxOvdkYrMLygBVV8=;
        b=pbEJszu9TRnbuj2T0jlVUZNLpR2OYipzqOFra84fQPpbohcOChmrC2pJVriMkxP0O5
         eNiFkPTAwpeRJgmLRti7o4gRAXWfhpeAx9bVvV9U3+ZYfF9PAFlW08J69E3lwvS1zOQp
         3kTgF9JZU5ze6OJBYEvO8SEA8o2ABbp2V0HOsA/9bKiXNd/MOY34xjXThMU2a7d5j3VH
         bNWOJO9wVpxdlouFe3vALFk/EQcJc36i4aY7cpnz5yJ3Os7QyL7RJeEd/BNEIPRnqeoA
         sygnQOjfGaDoHtwRIIeDrb0MfhvBPbgQcqZtYNW9nvtOTlcSmYBWzIETeWMmKqyWjcUv
         yFLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704243960; x=1704848760;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NqaBZ5ZyGN0qCrSiZJqfeYkL63UJxOvdkYrMLygBVV8=;
        b=AyGfJ3R5GDslJhR9SSV1/1DfEJm0ETveXlP1DP/etdwYbW6jcuNGdvhKm9D7Z0DqfM
         yYZW+N9/HEhD/eY5eTPrZCiRMX0puUN9+Ovvs3DNPBbl5aGJriCcy1xAV6HY173CWmsw
         ickWCkY4V79Hgzk9CLxRO10prO5ECGVfuz8chr8zNdIYC4/7WjvMBsdCPsK8/egEkLLd
         wHDHZdiUJPOIvyDLJOjCmEsQwEGBscBXJDt//ahZxLJA3gmjQY9GHvbt4rquJTnc4iOP
         ynDI8cucocJ5gOW4PIKMA1NlQ3gkYLAQzSCErL+J4b2MYdpJniMLbieIfWRiHhtNdygL
         Rh3Q==
X-Gm-Message-State: AOJu0YwjHFGy1qVU6JgwFvhkTOdHy9JDMwETD4LM7Fmc+oDj31g+2GHk
	tr2/qNW+hgEcwf411wtilREF9BPQ+DYf/nJnnMHIw1RK606zWw==
X-Google-Smtp-Source: AGHT+IEKqzueSGjGhDnn8BV+aSPd2umkf783ItN/kV6MouEmUsL1oIPlhFngZH7krg63ypHVq2+c0Hm+iBfe/lsjcSM=
X-Received: by 2002:a81:99ce:0:b0:5ee:65b3:f3b3 with SMTP id
 q197-20020a8199ce000000b005ee65b3f3b3mr6655357ywg.9.1704243959966; Tue, 02
 Jan 2024 17:05:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org> <20240102-topic-gpu_cooling-v1-4-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-4-fda30c57e353@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Jan 2024 03:05:49 +0200
Message-ID: <CAA8EJprb-vwuz-MBmJ3ThsidPS_P7NSxTnr+rM_Ld3xmKU0xxA@mail.gmail.com>
Subject: Re: [PATCH 04/12] arm64: dts: qcom: sdm845: Hook up GPU cooling device
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jan 2024 at 15:36, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> In order to allow for throttling the GPU, hook up the cooling device
> to the respective thermal zones.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

