Return-Path: <devicetree+bounces-29350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D65822657
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 02:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F11EC284A76
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 01:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B7981C;
	Wed,  3 Jan 2024 01:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bAVBo8bt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876D8171C4
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 01:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5e734d6cbe4so78099507b3.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 17:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704244066; x=1704848866; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=35dNUpEGdR0voSwa/oaqyC6xwJnRqPPHt0JIWQIJZ8k=;
        b=bAVBo8btJ+78amdZAdfKMyAkzL2z3S20K/kKgo5PCDg0z0M8pTZEt4BJV3LxXz/tEM
         P20MkQaixnotTxx+cH9PCDKrgA+faWoXpS50qawJmEEXnPXgbLoujVqfnAHXIMoLXLcw
         MzAslgTNLLeF5Zx1ErwO+SDjzuY6K/7TDDURLFl6BcCHAJMZns/ZyW/3bD2SoJBMPqYa
         M+I255QDkNsNuDz2X8ooSKfzefFfFU0zCcikxhbjHXnDn0v9Z9iKjL5kdqRsJHdlyyrC
         MQPCt/kk5Zb9CcNLEBDzOFDJOqHQOLqgrF6XGF+a6g/lJLZN9T76XC4Ujw3DhHEzQUyV
         IymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704244066; x=1704848866;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=35dNUpEGdR0voSwa/oaqyC6xwJnRqPPHt0JIWQIJZ8k=;
        b=fpaL6xsXMjb8TspM9JvtCVvxcTNJRKMh4zLqSb4J0YON/PPXutS+H77m0Z5Ep3cDQb
         1jRYPNInfu9hj5m0Jo9hRIRtIEc1bkxCaiR5StJFikETjHMgk1rVV4bJq4p0cAcO0yP2
         5YGQwkoenF4XE7wyuvVqydbFCYcDN1TNAo1WIBQ6uqZsVWhz6jwHh10HrXdr/jk7Y/aS
         25atWr3UtBJw16bWhNiot8m/YLP11+ijgdH270Qt2+Sz1rg57IZQCcG8vkPFvGQMvmyH
         SNg+QLsw8rVIeQI5w6eLb8I7wxYGYzj+B++hQIr422Ipu6ILOC0ZWztflVccd+o6+ftH
         sDWw==
X-Gm-Message-State: AOJu0YwI0UeOA+dc6agKrS51alksvqHJj/ZGWfekNXJJjMPlOvaYz29m
	kw5GJXze467cFwx1I4arFAUlct5iGXe0i6VAoGNnufcynGGH5w==
X-Google-Smtp-Source: AGHT+IGZegfu6lorsuid+Vmcqw49DDaXeSQatFEr1HuphlfHrKEjWjgjYPuQDtXrth2b2eVEauQ2/BU4th6XV1l9R7Q=
X-Received: by 2002:a0d:d945:0:b0:5e7:6f9c:b194 with SMTP id
 b66-20020a0dd945000000b005e76f9cb194mr11759932ywe.15.1704244066648; Tue, 02
 Jan 2024 17:07:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org> <20240102-topic-gpu_cooling-v1-9-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-9-fda30c57e353@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 3 Jan 2024 03:07:35 +0200
Message-ID: <CAA8EJpqyhckdohmAy-2ptYUKF0JJAm-pYdAtbvT8k6LkRw6Prg@mail.gmail.com>
Subject: Re: [PATCH 09/12] arm64: dts: qcom: sm8350: Hook up GPU cooling device
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jan 2024 at 15:37, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> In order to allow for throttling the GPU, hook up the cooling device
> to the respective thermal zones. Also, update the trip point label
> to be more telling, while at it.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

