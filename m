Return-Path: <devicetree+bounces-64710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CC08BA840
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 10:02:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 951EFB220C3
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 08:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 329141487E9;
	Fri,  3 May 2024 08:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AgOQFL2n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26B2147C7F
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 08:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714723362; cv=none; b=i7Gfi3GMkvim+OG9ZCbpSuXnuDl3yLOMh0INgf1hyD6Mr/HlJHE107GWi9wvb8yIdoUgqhn+z5MM63rGCip753uTAgtKS49YgLHxCR/oCgPpA4vh4JhJmQHZEtAagCs4xdYehZAFnIHoLMvEHXML+/l7CyrUjsRO0WeiLBCPRs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714723362; c=relaxed/simple;
	bh=5l4XlUqBqhwI1SMm61YkCiHT0P7gnVKiEtpLpYImolk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lpltvluyxQ9BkQj9J0w+37WzXemxEjIn3trCcnSBqL1ndhcuRLl/GynQqOrW+bSS7J2IXqh+znwlGGwpk3Q1qra2Qqh47bP7yingujmtn6zU2q3MeWI4Wy/cNozBjfVf9BGyWqQTd9VeEkaxCbQaBCQ7F3uvLmOP0rYWqTRc4l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AgOQFL2n; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-de603e3072dso5518205276.1
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 01:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714723360; x=1715328160; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5l4XlUqBqhwI1SMm61YkCiHT0P7gnVKiEtpLpYImolk=;
        b=AgOQFL2n8HJb33NBV3bFuTdAE7ZoyDI+zgrOBQlb3h1dvRFFdaqiDiif5JEhrgn7dX
         uv5SL4ToGaN1HoSXcr+tioZVNuxt1tUM77HoeVZsQOSMdSurj2J5TjKdpwt1njLZ3ryv
         hPWHFiVmvdwvRFos4xbzo0JJOMHBpYxmFnklNCGLEiL1z5gQ1eMJ+iTBC1QaYLkEgjbJ
         WIZqB6RMgyFlW/XBizJ0YtJIu3vYuFdm+O2OlcuBvVqryU7ASNOG7lwV0Kt8/pZ7HxRU
         uWBl0C7uAs5oxfSviilTHDNbRhRlFyhcXOdeNYEqQ07cLk1Ic4+88/hluVraHKmj8EYv
         EQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714723360; x=1715328160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5l4XlUqBqhwI1SMm61YkCiHT0P7gnVKiEtpLpYImolk=;
        b=BordRS0zwVIB4tMCgZ8OgJHXj7kFK4g+NE4j7B6OEt9M7N1befIF3rwNFLnzXatKwY
         n4PJjPvG5mHOjpVxRfcf2wIxGm4ZHkaqMkMaOSBVVhhcLT3azyCFGCS5DjsXzmOy2zqb
         tsXbl60OfRlnkJOumb99BaI4rd4GYJ1Mstp5awho8XaaEloh4DlcihBqeJEF/4GguvDD
         0O4DVHZclCR7T70RD/IfGQStWB99wNYQtdKPcR0pJaAVfsANcXHqNWDhJNRRuAjcFAyr
         5LuhiOxaZdEgYXGZTKLYlxaM6w5zFTz+8xwq4mJr/tOD7A4v+nqjwwANQS2b46+Kv1N6
         f7BA==
X-Forwarded-Encrypted: i=1; AJvYcCUqkyz3VVDlrP0gUO8fU+7b4WK1XY/b+lcpWHeTHrvd7SIpiPfY2egstx7bbYoBzKm+SugYOCPgFgCzVZttJ8gw4adC/OueUCERPA==
X-Gm-Message-State: AOJu0YyWKl1M6Wm4we3P8b5hXP76fJy8GO5RukyrBFBv/hwUrflKDfPl
	D+grYply3uZoDzTqkR31riAueaiavIZOumnNWVtoyuJr9s1n5uui6J3toAUU77nUbeECW31N7OF
	LW4GgSXoyZw8l31AkW9ZjB1liEdvScj8n5brIWQ==
X-Google-Smtp-Source: AGHT+IGCUHlRRDycxKRVNSSdC7EJzLJSHjj9gaqFw9fOINQkvak2OuBO2rLIuQiE5A/AOn4mnItlVreNPQH0nkrNqSQ=
X-Received: by 2002:a05:6902:2011:b0:dcf:2cfe:c82e with SMTP id
 dh17-20020a056902201100b00dcf2cfec82emr2350328ybb.55.1714723359842; Fri, 03
 May 2024 01:02:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240425185603.3295450-1-quic_amelende@quicinc.com>
In-Reply-To: <20240425185603.3295450-1-quic_amelende@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 3 May 2024 10:02:29 +0200
Message-ID: <CACRpkdZgrBfzLxKtCHcyxUjw2peiUw43+HC8wZEZcXubKF6DwQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,pmic-gpio: Fix "comptaible"
 typo for PMIH0108
To: Anjelique Melendez <quic_amelende@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 25, 2024 at 8:56=E2=80=AFPM Anjelique Melendez
<quic_amelende@quicinc.com> wrote:

> Fix "comptaible" typo in if schema for qcom,pmih0108-gpio.
>
> Fixes: 6acc46f8c065 ("dt-bindings: pinctrl: qcom,pmic-gpio: Add PMIH0108 =
and PMD8028 support")
> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>

Patch applied!

Yours,
Linus Walleij

