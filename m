Return-Path: <devicetree+bounces-69401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E3A8CFC67
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 11:04:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E276280E8E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 09:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC73433C8;
	Mon, 27 May 2024 09:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bByaUwWV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A281917BCD
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 09:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716800639; cv=none; b=tHgYOP0PSQtp4k+LS6Wx5WObndR1EAQ4WOid7B3TV+2XhAJESiRGBpo9DWpC7c3VGvYvWHCj6igkxZmhWWd/UcuKCfaJSJOyexofFTG1oqGJLY5qxsRLn20n6M0IGI21XZcNbHzaJOqc+xJcPIFWL03cfTn8wk+UDRx6uTb/VwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716800639; c=relaxed/simple;
	bh=MT3ZONeoapzyN8hpwkdM1iFb3iu2eoHLOneP8dxgSZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fRbmWQ1lUxmr5MFRhaDVIRbkCeRHJpF8bzP2ap0COUnT6WPxJhN7XjTsoikv+ZOa2y+8Z3YF/OyViS/uCGN1AnB4gWSG7mPHAG3KOwD/MqbU/mHC9ZQpG4gNQhX+HpKpMsVqsXZQDIxYJ5P5AWeiNC0QsS07nyc+61N6BdlqSI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bByaUwWV; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e9819a630fso2522351fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 02:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800636; x=1717405436; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+P9IQVeAKU8YP5Umu3/OB5rNdrOaLbrSfDANTzH/n4w=;
        b=bByaUwWVo8nWPdtFeX2eILtt4az4QUFmM6UyVAc3ld5RVEIeyH5sad+7drt4hBeD6o
         AvFsu91Jt6RRkaS2amFcKiG8zjKboz/Ioctzi0AtoM96SXdtKvzQXVZZJfGVJHghsF+J
         6L+P+RYDNV2UtdMz0CHgwinxBDSZiXu6S8s/0gbsct3vBRAM7USmkXVUiATBb1+MUJTS
         Sysk/uk097wJnSYV07ZWY0uu8nFq5QMehZxxoTGsWKiX2PLdAgk9RbSko5QMDn/7u3oB
         g3yiy1WLliOnTKOuYvbtGjGYWsuzvOUwC48oRIX2duyTPoFvzsFUr4T5BnfECA5Wof5P
         3uGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800636; x=1717405436;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+P9IQVeAKU8YP5Umu3/OB5rNdrOaLbrSfDANTzH/n4w=;
        b=L1c8ETO02vWeiKG5eUB7nrqjrivRES4byXQ11cUEGu22yjEK/zjNSmyWQi1Vljz6kT
         XCMUjlRtD2qapEXdOK9nTG3tnczXpFca/6LeOOWyf9tV9/u/gAmCVMxbx8hWWqj9/AHR
         X+j4FflncZ2ucs7LEDJ3LhWkV6Y8M1Pw+C77QiRz9X7W1n5xH1xLC6D0uf/E4VdY0ZD3
         +8ytfqEn7ZobUC6kBSzr8CsFmAAvyeYjzzsA/PShDEky73yXmW6ATo4i01eMXXikabim
         cOf1ldXWpEgJdTbKf18e0MotWuNlb75m3w//0VD8G0KD5/Z08BOK1+yOgiYMpqgDLeM1
         z0LQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNwjg7cNT94F/U7LzIEwiN1L/eWOUZpbQ8qYv2jiI/Wk7t34M7HRq9YO12CJ+rAI/rafV89KeW3CsFUgBW5KxqY7s3phogNL80SA==
X-Gm-Message-State: AOJu0YwBNU6R2x+Xiz8Pg67gMT6cN4umpcETHbuc2BlhMeO9pbbPfL3x
	8alcBi6f3FqBl+uo79JFpemfCqoZ8mbjEhoARqxYjQgeIIUyLImzEJETHSITj1JoIaypWDNDHua
	O
X-Google-Smtp-Source: AGHT+IFSIRBZY5UUvVqC7AbRXTn4/cnPe0/rkpDn4INXGjR1SuB2c6YmfJXPM8TzGBvFS7pme2o2JA==
X-Received: by 2002:a2e:a304:0:b0:2e1:a504:f9ec with SMTP id 38308e7fff4ca-2e95b0c1546mr70702991fa.23.1716800635921;
        Mon, 27 May 2024 02:03:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcd7c20sm18945631fa.33.2024.05.27.02.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:03:55 -0700 (PDT)
Date: Mon, 27 May 2024 12:03:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom-sm8650: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
Message-ID: <jpuafbuz7apsdcgscgvcvupnmeav7hvmsezsbxh7asbhxyb73c@nrafhki5vgnu>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-6-a03e68d7b8fc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-6-a03e68d7b8fc@linaro.org>

On Mon, May 27, 2024 at 10:42:38AM +0200, Neil Armstrong wrote:
> Allow up to 4 lanes for the DisplayPort link from the PHY to the Controller
> and allow mode-switch events to the QMP Combo PHY.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 3 ++-
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 

After rebase,


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

