Return-Path: <devicetree+bounces-29344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3466822641
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 02:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EC932849AA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 01:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F8F7E9;
	Wed,  3 Jan 2024 01:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KYlZoSrY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547E34A26
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 01:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5ed10316e22so55134617b3.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 17:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704243939; x=1704848739; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=98A/8V20IKILvDpScKjsN750Bhxoj2OxNg7x93EEq7c=;
        b=KYlZoSrYu3OUzRnxawU4bSey6BsDLszXL9HUn7ZJwdmQZ9eRjGvTQsS1SBp5T+rvq+
         ugpPk0JAUcbEH1Jc2btauWsGJ1YXSU4rw3qHI9NOuchrh+n9hyrsYAPe7s7COxcfKusd
         cLYJVEOz+lZ9eUjW9VLkspzcu1lmY1jfTpuoBiv1HCeVvb/u/tWsDqqv/xhp++7hzl1G
         2t1I5D8NVf1K/mfOWgUWBK2LtX6O0KyhwZo4yCY+mAtDk6EM8JlgCGcCzq+0kH+q7tk3
         bnFGYT8jco6JMvLHGLE354gsOkYPL6uLwj/kdVQaD5iFeJ+mCqHdOJBZCkug8bJ/dpPw
         KsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704243939; x=1704848739;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=98A/8V20IKILvDpScKjsN750Bhxoj2OxNg7x93EEq7c=;
        b=XaFKovct0vYRyRh6bBdhSqh4zSvB7c3e0R5A9yMbYAR0aLZxNEyJExGUPRc3rzFzdu
         vgj1BTM2l8XDHIm9kOx0GgkyQxTfxgG1D0+iKxcsyHLgzG+OiqggH6cenhZ2S2WRmJx8
         FnlKY44rxOcu+8SkjBSejEZWDH2+0/+VjdvAlXkOMywn1/3dCb5YkrdOz+fUKNh1rAVb
         dx3v1J8KD3G+8nV51w5pkbCOEAvRbEGZA5A41QeCUcnhoeB2JOfgYK2s+yvkrIAkgtTt
         kxy5O7SOjtloxbU3xdy/dB8N5LAlyT1bjUnZJI94JsxnX+/mYTUgIFFRZ+2VmEuexKrB
         K/fQ==
X-Gm-Message-State: AOJu0YwFpD9SbgJrrMkrhOi/GS1zAvDcMTeTNbDZFTkzEOkA7dtWG7uT
	KYXF3e8cKabp6QtdWQNO1OnxYEICyuTJO3p4uX+Pa63L/Ob6EA==
X-Google-Smtp-Source: AGHT+IFcKL9veH0L/w0ddt0luEQ/sh0DLIROaWihyParawpIzWGa6wctaGZ2/KRdqcFnYwnA6JHABBgj49z3GfEWanc=
X-Received: by 2002:a0d:c8c7:0:b0:5e3:320b:7c with SMTP id k190-20020a0dc8c7000000b005e3320b007cmr12412275ywd.37.1704243939239;
 Tue, 02 Jan 2024 17:05:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org> <20240102-topic-gpu_cooling-v1-3-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-3-fda30c57e353@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Jan 2024 03:05:28 +0200
Message-ID: <CAA8EJpqjaaC8UeAxBnxsqa7Q7RysUbAVnix+5tc4Ed-OXjvR_g@mail.gmail.com>
Subject: Re: [PATCH 03/12] arm64: dts: qcom: sc8180x: Hook up GPU cooling device
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jan 2024 at 15:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> In order to allow for throttling the GPU, hook up the cooling device
> to the respective thermal zones.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

