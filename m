Return-Path: <devicetree+bounces-29348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1645B82264E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 02:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6A2F1F23141
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 01:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 998DD806;
	Wed,  3 Jan 2024 01:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rLc+TXMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42590A56
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 01:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dbe6b3d9becso1621233276.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 17:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704244038; x=1704848838; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/aQkSyDYxxyXtIdGLkdKsn9wKth1Zkt3JY0iTBjudx0=;
        b=rLc+TXMCi22bHG05GUv5LNEfl8oLokEwUn64fq4BQzPmYJeWKJtkUUs8y7aqafYBNW
         ekFHmTPhtIgY18f+saV/LojaIBypKDUydRCiR+OJkKbJ207VNS42xZmNRu2faBD7tIBW
         RB6Ov9wO4F9ZjRliHDXL8FQxf9OCvUZm4StlRaj2hXItUGqlnoWnS8JYAQIq5X6AKDUQ
         RF61dPquKrhuZZ9IIV9hQ1Is+7FxYIB1aHNRWXg+N+0IiHeuoFvXnLtX6bOVqP8J1VY3
         YLFmNzrn5PunOXHSIF6SydqQzP34sF887OhDJ8rmknsaFzTM/MfoAfwh/3WV7V+4bwVq
         HbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704244038; x=1704848838;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/aQkSyDYxxyXtIdGLkdKsn9wKth1Zkt3JY0iTBjudx0=;
        b=lbgu8UmLHhg5US9kVLt27qRsXonSKU4a+k+KiR10pEf0ALS7Q4gVVtn+fK/SIqrxdA
         S468Hf+1uQ3+AKyn2tWr2GfmxIaCdaZgTh2VBjgsXjIgYwax8xHDorKNPENduEols72k
         K8LvlmFp3qGfq4fEyab4CTy3+lmEz56ET4s8odKGmH0iwhnKHV+gh5E4/jqpf++uhOQj
         3aVJWIXbZQ/mVgW72N4dnj/nvUABE7YV/D7GZJleBsBP8XChoCVI3ZvyD/gW4IY5ecH9
         Qk0FYwF2V5o/zLKXW2aksfBpmxHyG/mBjNg8CHamZc3kKWkL6oSJGkB4t6lZQD9hpX1A
         qUJg==
X-Gm-Message-State: AOJu0Yw3vdO4BRoP4Bnglr42OTAteS6dXL/I3rexahckD8nfx+doJD4D
	vUQnljnruhKefxp2gkBeHOLmxmXeSWILZ/yKfMRakjPIkS8ODA==
X-Google-Smtp-Source: AGHT+IGiVby7LcOjIosGewlO9dNoyK+Yp9nIz7apC4eQYqamH4I8t0vCfs1MCJh06UKB8MxboGNJyKwFtkFHHecx9YQ=
X-Received: by 2002:a25:ade6:0:b0:dbc:c56f:465e with SMTP id
 d38-20020a25ade6000000b00dbcc56f465emr9667737ybe.3.1704244038183; Tue, 02 Jan
 2024 17:07:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org> <20240102-topic-gpu_cooling-v1-7-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-7-fda30c57e353@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Jan 2024 03:07:07 +0200
Message-ID: <CAA8EJpq5VZd=sH6yK1WgRHqN=FteZkYsuiXXeq7Q+GcHqyQM8Q@mail.gmail.com>
Subject: Re: [PATCH 07/12] arm64: dts: qcom: sm8150: Hook up GPU cooling device
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jan 2024 at 15:36, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> In order to allow for throttling the GPU, hook up the cooling device
> to the respective thermal zones. Also, update the trip point label
> to be more telling, while at it.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

