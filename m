Return-Path: <devicetree+bounces-109199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5EE9958F0
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:09:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F2BB1C2186A
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E41F3215F53;
	Tue,  8 Oct 2024 21:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PY5ekdy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8FD1FA257
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 21:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728421792; cv=none; b=sMVnDhRzdAOUJuZFQmPb7zElBnNErx7VUdgLzCX/tW+GOmmf2b44j8hfQaLbuqgkt1n3XEYRLxVF+a81Ai/3YwZUV4ETkoIum3vzv3JKvpl4CAxROXwy8bOyn9ZoG2tJp2iUIJ1BCGsWNmFR4AiS5bmQk5TyItHc1fQyePN9kqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728421792; c=relaxed/simple;
	bh=hyWIP5eJKGtUp3spZH1Jx+5Ok2/SdHxINGcAzxM1fEg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HhawnlhgvYKwh/jYFtPgi9Od0nSzJhoaXEsHtY0JVKincKFDv/xry/RCtyVPQk8hCUkoOfyuSkHkUKFBXf9yLnWZsc70AmRB1Z+k+C+yG5ZhLScL/9aWyx0KGuzmWrXqbI5nrSQ+jH8itCTgG9/oMmMaTDwxhwDHhyyj1CumpNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PY5ekdy4; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a995ec65c35so35557166b.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 14:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728421789; x=1729026589; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qxjO03/VKF1ZdXNHu0b4MwlOXd+MaamBCo+HahwR+pM=;
        b=PY5ekdy41T9aR9KQtUqBELBOi6WB8tSR6nNMmMnSu4/uzZABjxb3s9xtwndmrQxQGD
         YdIgvKqJppqPJCUwU+rKYozHpGEhO46JBbOKFpuLWRe2axEhWJ8GGxKNooxqn9SWaXE6
         iTQpv8QtLJf+MjAv2AQSJsZ6BgWDXmQlAx9a5sMpmyiTVAjRNq4G+j+woAQgXcQRugX0
         jTlgD7gsDWnnllGLnno1U+A0wrPyeglx7zt4Nam20k3nqKJ0HREwGmGra7jUNxMpeJxS
         iZqHgjqVipZ5r99ahcCyBdbfgb6qkqjuGi4Mdvz0aFTv00Mm2hnxSA+YK/nv21ySfR2W
         KUVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728421789; x=1729026589;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxjO03/VKF1ZdXNHu0b4MwlOXd+MaamBCo+HahwR+pM=;
        b=mlylQU1CF297RdvBINSkeyHL1CWf08Z8Bysxe3Uhj6vtFEttS1KQzvSOusu6zWEqWl
         KQuR4eTN2INKtpJFVMQeQkFwdSuebSDhVPRvzPgR5s/+1TyJJf6u3ujkP6A3i/0NNYNn
         Y2cllGu+XjriWIUa2OcQeSOSmhyEN0f6dEKngzLPWhC4so4+Fvoua7HppNcJOje4h8XH
         Ufae1j85fGqlpDLVY4+LryPSQ8Q3pLeL6m8PpdyUEeEEB/iZweiMFiFCsnFqbO9VYm7K
         wRnps1UI5Tynm+YpGWH1jHY16a20c0gwjwMMuNim4juqq98VAQidG7oWzA5VTdcq5K7B
         sS3g==
X-Forwarded-Encrypted: i=1; AJvYcCW0btauNJ2bqzXXj/z55JGGb7kY/94GXbBVPnZKoG6lL7IeupXaigqITfF0rHaDZ4iLUjFA3eWSawrm@vger.kernel.org
X-Gm-Message-State: AOJu0YztyP4d6OgKOezRIlTux2o4qmZK+6WobCz6wzPjYfIlb4oy6IT5
	gZNM+7kXf/elCtlwZ/+ejIyBZGnjr0iATjsJ+6H2JuZhnNRqm33UPPVzsVkCFbjzuDbrsBR95u6
	g9EaI2xbQ71sPPUFt78KxqoNKoRvkTjrTeo7Ctw==
X-Google-Smtp-Source: AGHT+IHuRG726U2Y6ZtAy1CX+xs4xcXsSCC/YjD4M9T74lVo8+Q7BfO44Qpxr38KfN/hQc1yWSyhN88MwVK11A8TaW4=
X-Received: by 2002:a17:907:7e99:b0:a98:f44d:a198 with SMTP id
 a640c23a62f3a-a998b138451mr47590066b.1.1728421789412; Tue, 08 Oct 2024
 14:09:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241003211139.9296-1-alex.vinarskis@gmail.com> <20241003211139.9296-4-alex.vinarskis@gmail.com>
In-Reply-To: <20241003211139.9296-4-alex.vinarskis@gmail.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Tue, 8 Oct 2024 23:09:38 +0200
Message-ID: <CAEvtbuv1OUekj5=fzafJKby6jBiZ6BzgT4TrrihDNdiQQM_vQQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: Add support for X1-based Dell
 XPS 13 9345
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, robdclark@gmail.com, 
	peterdekraker@umito.nl, Bryan.Kemp@dell.com, tudor.laurentiu.oss@gmail.com
Content-Type: text/plain; charset="UTF-8"

Hello Aleksandrs,

[Again in plain text]

On Thu, 3 Oct 2024 at 23:13, Aleksandrs Vinarskis
<alex.vinarskis@gmail.com> wrote:
>
> Initial support for Dell XPS 9345 13" 2024 (Codenamed 'Tributo') based
> on X1E80100.
>
> Working:
> * Touchpad
> * Keyboard (only post suspend&resume, i2c-hid patch required [1])
> * Touchscreen
> * eDP (low-res IPS, OLED) with brightness control
> * NVME
> * USB Type-C ports in USB2/USB3 (one orientation)
> * WiFi
> * GPU/aDSP/cDSP firmware loading (requires binaries from Windows)
> * Lid switch
> * Sleep/suspend, nothing visibly broken on resume
>
> Not working:
> * Speakers (WIP, pin guessing, x4 WSA8845)
> * Microphones (WIP, pin guessing, dual array)
> * Fingerprint Reader (WIP, USB MP with ptn3222)
> * USB as DP/USB3 (WIP, PS8830 based)
> * Camera (Likely OV01A10)
> * EC over i2c
>
> Should be working, but cannot be tested due to lack of hw:
> * higher res IPS panel
>
> [1] https://lore.kernel.org/all/20240925100303.9112-1-alex.vinarskis@gmail.com/
>
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../dts/qcom/x1e80100-dell-xps13-9345.dts     | 863 ++++++++++++++++++
>  2 files changed, 864 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts

Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org>

regards
Stefan Schmidt

