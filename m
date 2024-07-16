Return-Path: <devicetree+bounces-86076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF2A9324C3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 13:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF47AB238D5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 11:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24D7E199221;
	Tue, 16 Jul 2024 11:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PcfEHm8E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9541991BB
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 11:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721128467; cv=none; b=fix6mry0RZ7W70/vF5Vmy8B2i1fCvanhSiUhTuRgTq6jWSHdzMj6cetLT47bKrzz1iyrlo2fQW/r7VwDh6uc9fkWIiGn2Dj8ZryXEYzhalbd+PMDR9AiCFveBboiqCE85NQm4qASBWJDgrxoET6p8w+aUBnHyTYKNO8NO0W7AMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721128467; c=relaxed/simple;
	bh=uSU/7FRcOsd+KxgKnvrUWf7fdIpaa2zZXRFytICH0Xg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UGCs/atlzaybomWRG156KmnK6fJAS2ohF7fMqrh7nn2980dhgA2B+TsuIPC76bg6TBqoU4ztoXa7bi0I+VoJnZM/S1kO22X4ijmvjWa+WkoQlkcFH1Mi+6QU0wassqDwLTZZvGu52c0/0p4BU2yWWAEzwUZrYRqcPzZQYSdvYyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PcfEHm8E; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52e9f788e7bso6395862e87.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 04:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721128464; x=1721733264; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=85f26GaihuywFHrHhUzvUmoac6GcFjyo3+D5MhFAkAc=;
        b=PcfEHm8EigLUCtBZzphB8HFityMYSgKECA65Tz39HrOf7FInWmemOgOYlmPwpXJVrE
         di1K4H+xT5MH3ieKCqcBj2yMicr2Xn6PzYkGTP5wrTShOzABRzJ/3cYnUPE6GMoupztH
         L57taCz+J5u6Rp/Cwaq7Af0Kmc9935i3MiXbw202JKARitM6fEYjDvffdrs72N+ww7zL
         twaIaaB06y1zn8uIMoSSEUvoGtfqmhPL19J9aznBDKbthrioFFR4dqIVYE7CA/CYTnzb
         XIq+xvG0fzxSSFTM3by3FhjMMmfRmucRAbn9waxBp5YoxM1NKO+saqVDg1YAyj5bDFKF
         uaKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721128464; x=1721733264;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=85f26GaihuywFHrHhUzvUmoac6GcFjyo3+D5MhFAkAc=;
        b=A2NGM6/1etbi2L8+wYyyEh6+8dVZOvLUECMJkdlRH1YlxjpfNRMVxss/Qj+QoNoeGs
         GN+NXpj8GVUGMxslr4DAX5qNgEUoqGt6kC3alczW2poonExXZSuFRYlryLLe7hvbOZL8
         BmFozGfykm3PfRjBqITMDDM+jEpV5t3fXs+S6RUlN6ZnwknIVdrfzJCorHzrYpx5/ff3
         VubNsIGF2MWed2yRF/uXQVDze0yElWt0t39F2mKvNvUC6HxSMKVv+ifyno5suVmvWZmr
         83bBwy7HxHMDZeA3qaMyslhKqMYQHJ+QwYe3MY5s/B/w5N2CFl3douNQ9XLUia9dhQvS
         +0Gg==
X-Forwarded-Encrypted: i=1; AJvYcCV274or7/a1r1g2IC02GeRJRxng4wO3zxLpHuOr0JIwJL34I6iXgdblzRBwV5SaMS4+4uyySR2zFg36GBs/UNh5FbvaGn60chxpvA==
X-Gm-Message-State: AOJu0YwatjCVYbVf3h/JPv5zJFieUMbl+i1Aztkm9SIz6eOh13vx0N6v
	b+GYRoZ+DOl5LfUKLaImOlcMvm8L68o2xIid4gR0xrpumLxrYRgaOx9+vrMPoKM=
X-Google-Smtp-Source: AGHT+IFQIqSG9+GMvlee2xBU5TyMBzdPzC8eUN9VYPN9K9+xtbawhMMv+6NZ61ZiZWul45/PpPGmEw==
X-Received: by 2002:a05:6512:39d4:b0:52c:d8c7:49ce with SMTP id 2adb3069b0e04-52edef1df2cmr1238456e87.22.1721128463615;
        Tue, 16 Jul 2024 04:14:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed24f32a6sm1132866e87.67.2024.07.16.04.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 04:14:23 -0700 (PDT)
Date: Tue, 16 Jul 2024 14:14:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8650-hdk: use the PMU to power
 up bluetooth
Message-ID: <vpwioxy6aw4xp6d45stftprsqo7rwqe3c66qs3h6ecrzi5sutv@kacd47ux2ozk>
References: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-0-67b3755edf6a@linaro.org>
 <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-1-67b3755edf6a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240716-topic-sm8x50-upstream-use-pmu-to-power-up-bt-v1-1-67b3755edf6a@linaro.org>

On Tue, Jul 16, 2024 at 11:45:10AM GMT, Neil Armstrong wrote:
> Change the HW model in sm8650-hdk.dts to a one closer to reality - where
> the WLAN and Bluetooth modules of the WCN7850 are powered by the PMU
> inside the package.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 26 +++++++++-----------------
>  1 file changed, 9 insertions(+), 17 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

