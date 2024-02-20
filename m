Return-Path: <devicetree+bounces-44088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CE785CADD
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85B621C20CF5
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B70C15443F;
	Tue, 20 Feb 2024 22:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AJ8roU4E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89952154430
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708468846; cv=none; b=KwZPa+j+4a4k9h1V2wvp8bDN0HY86QRPm/ZMcnVS4Xz1MI+5JA9khG6Xw+6NHkT/kDfpsOM48GFOnuwpkqWnt9/dBaqaUqT2cLJC8EKfBGnmghpIGclUOLLC+S7Rj8JR9NqQECEKOj7GqL8aCbCpJBAohQ6Pm1xLLwnrd0kaYOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708468846; c=relaxed/simple;
	bh=qqa0KvriwB1v8Bj7pTBYPvZ+DPDnOmT8Yxi6uMiKXwY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qB+SpJehC7M1Pzem5u0yi5DNq6bXCBPJeGflpojWSJEbmFNA54ROhZnYGl/5grSpx73Y+Y0gV0pU33m4Uu7v5E4ANOK+zdrkKawd/58HUdfOAt5lekX3yLAqqkSziYauuUkTRfIow8mY0IK3L1WtTJjNvZyQmBxw0VAdoQ6ngko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AJ8roU4E; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6080a3eecd4so40395807b3.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708468843; x=1709073643; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MmwuqZ+SRwcH0WhEWSC1fUHglZZfWWDUa+m2OJY8rik=;
        b=AJ8roU4EID6WpClvCwPxjcgXaCaWQnxpcmKDB4L147zDSKMdn1ItToPD/hISY1rbt5
         FTulxBHFMkmZu24v6Sw1IyLFvNF1f2xDxw18vhiKeH6XtxPjzhSKCKbAnGckJvEB3Xfi
         1SWD2XrbZXptZKcgZpMOePkmu9F2jt0hqEk3uFyVtTxpwAOE8j4YQ1YK/y+DPjC0A7Z8
         PesWtTZ0yN5RU+bh86bpOyAZhKqdUuQiPIt5eBoSf5uYloDe7wxribjFCZlW6VboXnxD
         37BCx1kjTZsolU3WLawjuchbt144tpbCK41upSk9vS/nsInw6bXxn8TNURj3Hga2b2i+
         myLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708468843; x=1709073643;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MmwuqZ+SRwcH0WhEWSC1fUHglZZfWWDUa+m2OJY8rik=;
        b=MT4Je1lnsj0Cknujg7zLYdIPslxr3J0UZ+kbWTeElUIO9mysQTaDm6EBc3I2qsZz8i
         FrJITdA7I5ZFz5WRyoYmOMC+1exRogEgyNHJdPlrgSwBUIJ5vgrRvbC4K43yRfetX5sf
         zfYqMge+ybYVJpzYin8HyMou7iHp3gG++FuRmoL/EeQRrg20FKXOvSBTv/BZQWzALxB/
         mibg8llSODICnVkCyYzakcqYwM+do6zQofpB21+r27l6RrDDKjwu2JE2rAr+sdjQw97h
         K+w7H/sD2Ey/n17ggEFK35uygs/nJ7HtyrrnYLPOKfaodZ21sjPLUaZ7HjmdyMG9D5fJ
         qoeA==
X-Forwarded-Encrypted: i=1; AJvYcCXCWwS6qO/Uyx8UqifL4TBFOvjqBEPkwRprJjjWBQLrh24xwjFHc9yOkW0C6fAvq72ip4+5Bz0wvkBi8ikLMNkpAbbTcJohDGFQcQ==
X-Gm-Message-State: AOJu0Yz/jSxPoMLaLj5rqoggyOelpm7nioNSrJGe1EEHYN2Z4oQTKArw
	qZx42F2VU83Q8grSFOKv4piEARNMSm6YTeOZrQfE8pMYhD/iPz/qot89Sxx1hZyOFs6KjAnlpW2
	xI3ouQX1IE0tAgMk3p/kH0i/zshxBXdho4OzcXw==
X-Google-Smtp-Source: AGHT+IECKOxvwNIHjH+q3UCKrD0cIZc/Wky7bvQz0uKvXaoNUSqNSg4CHepJRR3O8AFfyFDZjhCR5X9cScX1yRPWYQg=
X-Received: by 2002:a81:b71b:0:b0:604:3ee2:f258 with SMTP id
 v27-20020a81b71b000000b006043ee2f258mr15118384ywh.45.1708468843468; Tue, 20
 Feb 2024 14:40:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202-pm4125-typec-v2-0-12771d85700d@linaro.org>
In-Reply-To: <20240202-pm4125-typec-v2-0-12771d85700d@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 00:40:32 +0200
Message-ID: <CAA8EJpoUHi8FDAKa+LO+2t7fXxXaFYhXAJzkUUPs_uJH9pvZWw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: dts: qcom: qrb2210-rb1: enable Type-C support
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 2 Feb 2024 at 01:55, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Reuse Type-C support implemented for the PMI632 PMIC (found on Qualcomm
> Robotics RB2 platform) and implement Type-C handling for the Qualcomm
> Robotics RB1 platform.
>
> Dependencies: [1]
>
> [1] https://lore.kernel.org/linux-arm-msm/20240130-pmi632-typec-v3-0-b05fe44f0a51@linaro.org/
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Changes in v2:
> - Removed unnecessary conditional expansion, covered by existing compat
>   string (Krzysztof)
> - Link to v1: https://lore.kernel.org/r/20240130-pm4125-typec-v1-0-e8d0097e2991@linaro.org
>
> ---
> Dmitry Baryshkov (4):
>       dt-bindings: regulator: qcom,usb-vbus-regulator: add support for PM4125
>       dt-bindings: usb: qcom,pmic-typec: add support for the PM4125 block
>       arm64: dts: qcom: pm4125: define USB-C related blocks
>       arm64: dts: qcom: qrb2210-rb1: enable USB-C port handling

Mark, Greg, granted that the dependency has landed, could you please
pick up patches 1 and 2 correspondingly.



-- 
With best wishes
Dmitry

