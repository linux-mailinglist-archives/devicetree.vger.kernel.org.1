Return-Path: <devicetree+bounces-44087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 743D385CAD4
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 049262852F8
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D946153BFD;
	Tue, 20 Feb 2024 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fba1YMU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA6C153BE6
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708468714; cv=none; b=KWLs9DQeYsUWTolhOOaqy0Ok4+OUUmLGikiYUUTulWBlWNkxbB9yuIwcifptBhZvEjjJijrdM/Ig6dTYyIDCWgS6JpcS9hFuBYT4ASG6+5vdRfZsVxPrIlRQNmXi1cGO7P2MwS7VpLkBDOT5ovr9b3Lp6I+2MkNuJb7xEJosKPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708468714; c=relaxed/simple;
	bh=yclMuqfVpq6Uo1jCiaeacEaGMBhHwnHW1pMSpxjkkR8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WTlZhXVRpBIP/EKgG8gxC1+h/u2tOpYLB2Lq/wVr6PWJrzzvPk4i2J1JKHiXbQulVo+r1GovBOY4n0b7vQ4ljtxAh7Q8oeJJUzxGgYZjsbp5Hv1ZD3bKCLAOD95GjWD9cg0TJl0BcdTdqzhvKz0gyNAWiRAs2P7aVkSOe70kE8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fba1YMU6; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dcc71031680so4746421276.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708468711; x=1709073511; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tpl1owOrWyjqDOWkdN2xFa6uL/xl0XTw5pHOD078G5M=;
        b=Fba1YMU6OgtSFvF4nGwMzJ0Ahj9a9b0I3qZ6NBPODdqPDHGucWSH9TGTUJEQpJFtf1
         BkbJHMnSaAGTnoVaabe2MZYWROYVchs1UC0dhfCM3BXy8P4wrRflOWtxuOufcMc8daWC
         CDctDCgYcU5jaI3vMu8iGAe9C7wZtYOyQhIm7OJNfGvUG5VJLZT7DLmswCjCTsQorT7r
         SERj1VfysbzRc8L938pjDD0g51oLFV2vtiYJq3g9fAO9mgOEA+42cZMHTBBWcjNXNjSy
         eMlQc3acWMHvwRFDRHWn07LqWANaS60t1csW2jQIwAcQn0ZbDb+ICiv9rwqBJ6e0izwv
         l9Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708468711; x=1709073511;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tpl1owOrWyjqDOWkdN2xFa6uL/xl0XTw5pHOD078G5M=;
        b=FyVokt9CN04/E/YrUuBNrFaa6R9oqu6d+I4EUQUv1QeWlbCCBptk5iubxcFU6PCLtj
         mErnBSfC858RefSXW9AY49GttyazKKIeOC52MIXnGONuBLrU3zRN5FUH5y5pYAkhGmDc
         vvxPT6XGQQlXVXBJTeV8KynOFc9UqNMGksjLIDFfFDkZZFphT/MKOmWCwjsdvY2P1Anq
         IvO5IQ4N3NmlQsvXxWm3ImIH/GAbeR8mqw3t38rC0naLsD6H4anZ/z/mxOkJoCiszY6X
         hOeI5GFYPLzppBtYpEOxK7KZkUBFuBBzkyMXG/DkwUQGnwNpvHz/j6hv2gdaHRuKiZKg
         jO9g==
X-Forwarded-Encrypted: i=1; AJvYcCU9zfcydacwe3/NRPf0IPw0eo0KwpTKaYl/feiExoySbtYejLqihHB4QhfgsOalWqytckSWfC3eNiJ37PBL3wjJhToNSHAueNsurQ==
X-Gm-Message-State: AOJu0YwnslxhqLX5fp/iUdlyey4RW0hup3seejLIgYgul1a6HPtnXmo7
	5wAcXvfAWPAJZwuMFflTb/HCBcOZotRYQx0BphTV1fpEkovat/aHVqfa4utzARoaQ05pVwoBVkp
	RNi1tUDEYigj7L69mai9r05OUR/cL7zFy3FQnVA==
X-Google-Smtp-Source: AGHT+IHu/ijwBwa+JiQvgJls8FPLtF2HDFrmYed6T0djTupJAnR5NQQy8l2L9TNIP0k9znPyUUVhzs2mv/BO8O80DIc=
X-Received: by 2002:a25:4105:0:b0:dcc:b719:4e4f with SMTP id
 o5-20020a254105000000b00dccb7194e4fmr13917052yba.53.1708468711565; Tue, 20
 Feb 2024 14:38:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202-pm4125-typec-v2-0-12771d85700d@linaro.org> <170845186085.159943.14965896524132330811.b4-ty@kernel.org>
In-Reply-To: <170845186085.159943.14965896524132330811.b4-ty@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 00:38:20 +0200
Message-ID: <CAA8EJppkVkY9_yJ8ZpwmP+b9uCM2_-5NRUT=_VHsYpj5K0s+5A@mail.gmail.com>
Subject: Re: (subset) [PATCH v2 0/4] arm64: dts: qcom: qrb2210-rb1: enable
 Type-C support
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 20 Feb 2024 at 19:57, Bjorn Andersson <andersson@kernel.org> wrote:
>
>
> On Fri, 02 Feb 2024 01:55:07 +0200, Dmitry Baryshkov wrote:
> > Reuse Type-C support implemented for the PMI632 PMIC (found on Qualcomm
> > Robotics RB2 platform) and implement Type-C handling for the Qualcomm
> > Robotics RB1 platform.
> >
> > Dependencies: [1]
> >
> > [1] https://lore.kernel.org/linux-arm-msm/20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org/
> >
> > [...]
>
> Applied, thanks!
>
> [3/4] arm64: dts: qcom: pm4125: define USB-C related blocks
>       commit: 46ea59235c4f00bbca6955cf05d7cc0fccde7a64
> [4/4] arm64: dts: qcom: qrb2210-rb1: enable USB-C port handling
>       (no commit info)

This looks worryingly.


-- 
With best wishes
Dmitry

