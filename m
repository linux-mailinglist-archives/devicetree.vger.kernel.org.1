Return-Path: <devicetree+bounces-78780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C32309135A6
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 20:38:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F4F2B23113
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 18:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45C9F39851;
	Sat, 22 Jun 2024 18:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nbZ35PAH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B30383AC
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 18:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719081490; cv=none; b=N68Y+dkrN6GFgJntxei6V5sOKqAoMuLhL8piPson/ysTFdu7nLNyEk/SQJLQtlPRVWGQAIQRu/liArqCjJKDBfRcgaavezQEvuMa1PidNqpTy6VRIqaqHLxaolMYo4b9OhyHL9CXad3PyRAbE0ItKxDDbXOXzsLHtpXYSIBcfeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719081490; c=relaxed/simple;
	bh=XprxxKi4nH3ux1IldwjlVV6pMOzZgnnTZu083kyco3A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XHwnylJ1LfmO1uO8+dGH9CyiyNU2eGoK2tMiEPZzcKjeQavIDsZYgfaYeyj7/rt4z7H6IJd/zkc9b9Q5w8fMjQFm4JCZvMReOTgr5kErH7q97Plnpk4JqAQl2nJOwh50YF5pTP45V+JcBKHZ5cxUaq6Y0jaQBzAoWq0E+QNpacM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nbZ35PAH; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52cd6784aa4so1817598e87.3
        for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 11:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719081487; x=1719686287; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p4RGUKMXR6U/kfqJgLddn64F4Sj74iOHtksTWWn76wo=;
        b=nbZ35PAHjYh1pVnNRBfOakFBRiqLLYfj/mqz7McCqrbkNpXyqc2wgS5TslH9FkTnhR
         3vwDBiNL2bCOQPPcPQlXkpn/nogkvu711eIZ1F1CBmmCWDqPdIJiaQY3L8PNiJjfLjym
         8ZT3vy53Td2PQwbUztBKn4csEiYmc70WPRoRA5wcaOtEMt3BDh091mDtMcu3oyT/IPbv
         eGyF/peohLZvrojl5d7jVpR0T2F2TcIEfi7H+tmuiyqXMswF5rY135uxkVIM37ZWf1Gs
         8d8DQ9w3v5HwqIRJd3j5veQz+efu4Ky6lSthPZhzEX4W5FAip4A1OyobPr9Vr5BIFN6l
         W2Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719081487; x=1719686287;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p4RGUKMXR6U/kfqJgLddn64F4Sj74iOHtksTWWn76wo=;
        b=P3QMxESaHYy2YTw2xJuZA1p6E1i/k8BatR5VR6epRGQV/jAoEAlImQdVD0fC9XT18a
         ZpHSY/5Tnp6OrBqyUZlMc3ezKSnzU73G/rYSNCzWxsgIPBEHz6MxFTJUiXuNujHDnTA+
         8/B6rwsJj5qLlxN7LsYR5OCYXjqJVt4IFLhhKD60RmNyaezaiAzfUBhR+IL1bdUFCmLR
         rcjs8iguk3xg/fZVKDehOvyMZru7WoMjwUVWo7geglVQSgN7irKW+vB4iU/3u5fRx5o3
         3lv3LoDGv2w63sNwhCCipMPVmGsVLyrW/FqdsYjerQZUaryAwtStNx9x/b8Wi/oPPU3n
         vLUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5cN4twwDplvtLfJkOEDL0EHNwsh6EhBVZ0VAEEG08Df6297gBxdaw2Ft3Wp48ajTykcRfAaXfjPeXed9rV9wQZmCk/+lje02QmA==
X-Gm-Message-State: AOJu0Yy/8jpM/ATlwmI92D3Hz/gfK6MUi6SmfRV3CEsBqvnuaPCgPheR
	C3ZAahRXi5YqK1G3IOHcSfm3uZngYmKxyaTY5XiwnRPeNI02mTh4kUvq06Hv1/o=
X-Google-Smtp-Source: AGHT+IHsxhrNhIR65HoPxmCkVQzWKS4RrwSOq9plmThcSZXJPsQejQltbmjT9lWjcBGQ3Wlzdvyp9A==
X-Received: by 2002:ac2:4a89:0:b0:52c:e09c:b747 with SMTP id 2adb3069b0e04-52ce18345b1mr268182e87.27.1719081486595;
        Sat, 22 Jun 2024 11:38:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ce16e61f9sm64317e87.261.2024.06.22.11.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jun 2024 11:38:06 -0700 (PDT)
Date: Sat, 22 Jun 2024 21:38:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, alexey.klimov@linaro.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/2] pinctrl: qcom: add sm4250 lpi pinctrl
Message-ID: <qmerqhj3d7xhmt2tz7ijnqlv5anxb2l7eqdonsnv32o3jn7pri@dai6qc42dqd7>
References: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>

On Sat, Jun 22, 2024 at 05:49:29PM GMT, Srinivas Kandagatla wrote:
> Add support for sm4250 lpi pinctrl.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
> Changes in v4:
> - update dt binding coding style
> - Link to v3: https://lore.kernel.org/r/20240612-sm4250-lpi-v3-0-a8dce28f20a2@linaro.org

Please keep previous changelog entries too.

> 
> ---
> Srinivas Kandagatla (2):
>       dt-bindings: pinctrl: qcom: Add SM4250 pinctrl
>       pinctrl: qcom: Introduce SM4250 LPI pinctrl driver
> 
>  .../pinctrl/qcom,sm4250-lpass-lpi-pinctrl.yaml     | 118 +++++++++++
>  drivers/pinctrl/qcom/Kconfig                       |   9 +
>  drivers/pinctrl/qcom/Makefile                      |   1 +
>  drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c    | 236 +++++++++++++++++++++
>  4 files changed, 364 insertions(+)
> ---
> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
> change-id: 20240612-sm4250-lpi-b1ab26b3b050
> 
> Best regards,
> -- 
> Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 

-- 
With best wishes
Dmitry

