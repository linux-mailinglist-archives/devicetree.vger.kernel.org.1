Return-Path: <devicetree+bounces-54104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 266F488FA80
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B82CF1F25A84
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 08:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC4C54BEA;
	Thu, 28 Mar 2024 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i8meCpGh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F1E381BD
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 08:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711616243; cv=none; b=MLAE8Hd3+ybq5a8QzcyUV4eiVcUNd1UrTuIrgUGnfR1GqhCqnTUnN1reR3DO0UdZlQahJq3Wju/NQ5UEkTTa+s9nvaT1cOX6DD9wBfUMc4TvBJBU9ChvDPK6fAr1wmc0wBA/kxnhvbXLoNOSKJGiQ6ALqNj2wU0r2UzSs5BYTAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711616243; c=relaxed/simple;
	bh=4F3JozY+G9dFPmMVqsIC2mv1plVDgN7zok2F2MfKt6E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GycbSUO0/+ECKWJB/VhT95k0m47wo1E5Yv0cj1VjZR35ODz6EMKH8G1dtum5r0ePSGs6GZ30XkU9PIgFpA2Pcudjsg/VCPdEphj22bnhdqkRvVKH3EqRaZLIOiD0RfpQrzmZrIeB2Qx2MY6W9W31zMcg0eJeB+gSeHZEa5KMsgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i8meCpGh; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-60a15449303so8090947b3.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 01:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711616241; x=1712221041; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4F3JozY+G9dFPmMVqsIC2mv1plVDgN7zok2F2MfKt6E=;
        b=i8meCpGhFn5xCiIILqhnwryOHOOlJrjwaZMRsfKs+/hdnNDugS+2YP4UTDf/j+wQMj
         Bmpg3nV/aBY1ohvz1siMXvgdHv1c7mdN6N+2HOYAVB0KY3hPvyJF38+Q7uGb/nxSguZC
         wAm+TZ4ohQzp9YtvGvygHsKCPov3V2mnGzCr7Wct/LVZm8ddgxmDR1nBUdoTHcKK1/Vo
         oFApd8SgEnfvUga42RmRRMYjj3pgXMjuzkZ/8QSYK4mXoMbfI8nzwlH2B5gf4ryZ2/Hb
         wca1vJCY67aMg+BEROiKoWMzcBexwB5J7AKoAY6hrTa8Xl4bYAWX6Yu5oQatvu81Q0Q9
         lfIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711616241; x=1712221041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4F3JozY+G9dFPmMVqsIC2mv1plVDgN7zok2F2MfKt6E=;
        b=m2SDxzRqEVbLjIk8/lh/sRPu0DBEDmAZfFv9DwjeSryB5IPfNK1eOF59NSz+RIF37k
         /f0RPXpjuoRlTcF0AadVip5Fpc2+J0HXsJJZXx6tLMj2n9Dc+OYlnBbL8vC3sl0Zf4yo
         l/0apX5txm5Fghr82AJK6P4zzfrYBDdqj3LQ0UWVoHhE1e4+KqEn1g8uodGfwr3muH/9
         smU/4casFaUp4FKA8kPA6GxTeOAn2Rtk5d3y3ij9VypaF5JyD9BHMo7BXkDi9bA+Y1OG
         lWBq++NmW5AC7/8rjE+XfMRDxh6361PtsQ03HW47f7xRa2gUQ+DlUE5mWUF/cCgrc6QK
         Yyqw==
X-Forwarded-Encrypted: i=1; AJvYcCVMaG7JxvmNE0TsZmlbzXMDRmmRsSZoLojO1IIkbPkloGPgNqxnXjsxdTkFYME8H9VOb6tfPtn9FNzF3YG90dkWRGOA2v1p+SWZNA==
X-Gm-Message-State: AOJu0Yz7dlBuNPSvnD6eJ2V8EnxZY7N4fVHDKs4KMynmOe4uEfpPBdoY
	MxCHwa9Q97Th59/i2E9j6cxNzjcnjeOYNH7hitj3d4/CuToHpcQyR4uMl9fFJ96yzFnskD2/pQR
	D4BQnlexLgZCvQLNl8uB+lereU91otBF+0/lpwg==
X-Google-Smtp-Source: AGHT+IGKapoSLxpG9GrnNkjIeTSAnIkOLQk1JL/u0vi14kt6WJXVX3bRQ84jY5/TNx6lXuPoBgs2NzIE5E+MDpY0epU=
X-Received: by 2002:a25:1606:0:b0:dc7:4725:56df with SMTP id
 6-20020a251606000000b00dc7472556dfmr1939509ybw.23.1711616241053; Thu, 28 Mar
 2024 01:57:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240312025807.26075-1-quic_tengfan@quicinc.com> <20240312025807.26075-3-quic_tengfan@quicinc.com>
In-Reply-To: <20240312025807.26075-3-quic_tengfan@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Mar 2024 09:57:10 +0100
Message-ID: <CACRpkdb6LbBkt7aSr_B9=xSpJrjaHhR_MNz9g+LYJwhxdUqDWA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: pinctrl: qcom: update functions to
 match with driver
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 12, 2024 at 3:59=E2=80=AFAM Tengfei Fan <quic_tengfan@quicinc.c=
om> wrote:

> Some functions were consolidated in the SM4450 pinctrl driver, but they
> had not been updated in the binding file before the previous SM4450
> pinctrl patch series was merged.
(...)
> Fixes: 7bf8b78f86db ("dt-bindings: pinctrl: qcom: Add SM4450 pinctrl")
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>

Patch applied.

Yours,
Linus Walleij

