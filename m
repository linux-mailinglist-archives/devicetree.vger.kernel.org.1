Return-Path: <devicetree+bounces-71282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A7E8D63DC
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C184728E3A6
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 164AD17622D;
	Fri, 31 May 2024 13:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ofrguRcc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9685215B574
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 13:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717163728; cv=none; b=nOLaRkVD0jscDeCmeDBay3o8e9H6VW94zPdlc334nSPRTEw/LjP8kWSR5Z1BYRWf2HJYC9k5psr4ha4v1VA+npChaCHu8PPSInuvFcr7Vq8qTsQdtR5NmmCapcHWtTB/2SENyqPjp00Mq9mGZOTXCmleXO/x0QdXk5BxsCRouxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717163728; c=relaxed/simple;
	bh=lyo6DoR1T47qw0s/zUXANvIo/0bRhgyEL2X616cLkSY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tzqERk1sslFCLS4bSkBkseSvq0vmAo4f6LhmmClHD4zrmu8qsi5Bbhf5yW9qVCqIfJRgsXJ29747pOqLcARiK7dN9HWT6jr934alKY3xIL7S4xBxjeAubXhXLsQQz7QHjgrI3sJBfwXnOdeBVimR/2hpZjW/D5VQEi7ESrCBMB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ofrguRcc; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-62a087c3a92so18964007b3.2
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717163725; x=1717768525; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EvPGxkGeh0vxIaaLUFs5DBtrq2Asg0GG93EfMulcPz0=;
        b=ofrguRcciblAfm4RrCmmTUTuU8W+CmhZ7zVcvlnYt0nBmx5bkG5/yX2WaLt+ZUQa+c
         PWSct++9Vb7ZnPq0ciCFgrHH4eBGNDlkEbxFfrWxneW4NjdXsZ0h8B+xgw9V6Xwbtrke
         EeQvZS+jrKvU3ZQjRGIV0CcRQTXsNHH8dVLPypVK2gF1J1iJClYugCYUFV2M0+fqvcNG
         GsFsJ1heAfqYXHm9qHZDec+TpuxduRoqgNb2klCjuHHBWmLP3BLo8zDlb0Hp2mLIvjbZ
         AaDto9GNG727MU8JsK4VfpX0V6vhra+xo4EWyq9kYF0+K5N27sooTZqaUR4swuQiT4y1
         MMag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717163725; x=1717768525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EvPGxkGeh0vxIaaLUFs5DBtrq2Asg0GG93EfMulcPz0=;
        b=s8PdOLQBvU1J7IDnZ3j1xRd8p21w26OohIGFTfEDL7Kz3EcDoEj9GP+i2+rqBW6YGD
         3UqU21Wk6wvGKvxOWml6SJvUyLg5YM79vMIGBngFF/cMe8uXjKj7D/8PPjGqDo7V9/1z
         /YllejrPvUROlSSPgfvEyUjVYEKgxI2bluOoOyYcJRZfrUffAQikILU5PnIb6rL4sH5A
         KZKgqfNDEmTBnST05nM8Wrz/H5F33vypuzi2fzvDyHGUVp8V7Z1ldrhR24C0gm5+65Yb
         K5yCQ25scTHxYJa2t9mKV38Mxk/3GASQ3Zl4Uh44VT0a95NDhYc9RzPxNn5m++4xwLg7
         fOeA==
X-Forwarded-Encrypted: i=1; AJvYcCUSLP4j1ZUVtZOVJfMapG8GS/owwVGpUewSh8QfJeBGiLrcrrQlbnWXug3CER9oPc1U0hn4QiorzT5SaN4CAjZ6SZvznSAxvmKH6A==
X-Gm-Message-State: AOJu0Yz7RUGGtcLTuZTdFvco9rWJnBMT2wr1ENlcNqn2lA1my30osdhV
	nVLrXcAiMFqlmaJjZ6yLKwDjRgJEhRdpJqExWnNUStWMED0FW2hdDdOGIsXDvxHncCSEOFSDIOT
	fvqw5AdKy04kS548pSZuq41JP0ZRd+CTEek3ofA==
X-Google-Smtp-Source: AGHT+IH21erP1jpR2j7HxT5llJ4qEM7NVaKsMbmmXcltTPpcKqkk2KCpxCJIHidQBoSw7GS5eD0GRKTDhNYblCXgoLA=
X-Received: by 2002:a25:ec03:0:b0:de6:d0a:ee3d with SMTP id
 3f1490d57ef6-dfa73c4f79bmr1823379276.30.1717163724634; Fri, 31 May 2024
 06:55:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <8cc61db5-2920-4dd1-8132-5af434fb05b1@freebox.fr>
 <o6wwzb4qblelfpfsrmqhoovjnyvymf42p2ilv4bzn4le3nklbv@kj3qklez7izy>
 <40903165-c965-4c6c-a3bf-104b1088730b@freebox.fr> <CAA8EJppg9ftnQVrZhEO9Ro2Ji6whCgQLaJrr0yCzV-2hF2HEtQ@mail.gmail.com>
 <4940120f-d0bb-4131-a190-e1af0e75b47b@linaro.org>
In-Reply-To: <4940120f-d0bb-4131-a190-e1af0e75b47b@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 31 May 2024 16:55:13 +0300
Message-ID: <CAA8EJpoPed6TJX8kAO7YKMTwpxUKpfW8x40b+GW9owqHv8xhFA@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: msm8998: add HDMI GPIOs
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Bjorn Andersson <andersson@kernel.org>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>, MSM <linux-arm-msm@vger.kernel.org>, 
	DT <devicetree@vger.kernel.org>, Bryan O Donoghue <bryan.odonoghue@linaro.org>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>
Content-Type: text/plain; charset="UTF-8"

On Fri, 31 May 2024 at 15:01, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 30.05.2024 3:06 PM, Dmitry Baryshkov wrote:
>
> [...]
>
> >> +                               power-domains = <&rpmpd MSM8998_VDDCX>;
> >
> > Is it? I don't see this in msm-4.4
>
> Yes, it is. msm-4.4 says VDD_DIG which is &pm8998_s1_level which is CX

Oh, my...

>
> As for the PHY, it's a safe guess to assume it's backed by MX. Maybe
> Jeff could chime in with a confirmation.
>
> Konrad



-- 
With best wishes
Dmitry

