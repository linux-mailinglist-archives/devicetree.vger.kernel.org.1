Return-Path: <devicetree+bounces-256234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFF7D37AFD
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 18:59:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9436930CD381
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377DD34D92C;
	Fri, 16 Jan 2026 17:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nbkn3YVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF8E2C21F4
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768585884; cv=none; b=lyc1G4ZrJyxqWQFJDpQVKiQwrVN/TAlesFEWzcO1K2QEYdJwl/ObXV2g9nD/DyNPOCAHIskls5TptqPNJmIGP2KDZIY8D30DzQ3la/y62f95HwArfbUD+mla6hlkTw0jjTVu9MdHJQkUt86wcnXz2v1dkyf+CrTV0BAWOJPbZL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768585884; c=relaxed/simple;
	bh=nv5rtAReGpoV803unDvpYbEUl/QCehWqG8euAV+CHCs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MkjvftEvYFD1NAoHMduoQfql0eTpAyHe0iWKfa7bM558Jc3kessqx2e9ENS5bDOgH7YMdE+CBMCF0PVYe1e/c6RT25YtkfJc+o7pKKycWkj+MIxFFNxZ1ORk2EwwP55MLyQnCHZxAeRe8GiJmjdvJbJqFA9x4/7qz/s+PXYMWpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nbkn3YVS; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-64b7318f1b0so3634026a12.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768585881; x=1769190681; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=t+f9X0ca+9K+KN+ouHkTy41XPStpAzUEe61gXgOIJlE=;
        b=Nbkn3YVSi58WLlKpyaTTiG0SN1nX2zcX9yg0i1fOmqubKbBH59urDOgizW5YFwC9Us
         uhaDtMUyquTrRFEMHWP5ukJtGex7PrznMhHclzdS/3vjVzAdPlb6Xib6vFjwP6MfZdD2
         uvPswYRSIttpkmq4zuiPrNI5xqq3XMMDZVrncqSveo2ylPOWRcagvCt2gf5JLkjTdVTd
         If6+Cq0q5gWu9WI9S4KEfruywTzMrY5oCBIsRSZAgqs4jv/zUdMMR+fQFp9err7tB/Xc
         mzxlM5cRbgdERGzsvSxbwhRLsID0yjSkhnAx9iZPYRza2gLpqSnbC+Wf4SUpTyUwXSeL
         7x0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768585881; x=1769190681;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t+f9X0ca+9K+KN+ouHkTy41XPStpAzUEe61gXgOIJlE=;
        b=fdW/P88KwACnkLHZQTxRQtMtrsafGeLYhWgcT5cYn26pZBpzy3bOD2MYqIesZnZgNE
         sXyWG6QKbubNwWNsHDHhSHn38OpO5A0CJGisZx8cpOwSD+dNvT9VyQZ0j8nrazua2yNi
         1sZWXOHB6cQ4cAV1vwbG2oOynmbvAzq3Csz4DKTtOwUZBPUU1myta6DWDP+n+A0jqaCI
         DbdrGfJzKRFZ1AS03dqwyIbQa7exMGMJJlDaMHa2fSqTJmiMaVS+6pnb0HMRxMxI6OU6
         6B8McRo69Wqzr85YyT2zG5Q3dfpr3GgdIyJlLrtpIU1sNbpGOT1ajLZQjJLRtHVUchGn
         h/ww==
X-Forwarded-Encrypted: i=1; AJvYcCUrLZfzHHXpReFFkq6+tBqUk+H4Z8oTQc//f6dN0zwpd7TnZPAsjqIt+IoUC4P6OmjnsszPytrSKPau@vger.kernel.org
X-Gm-Message-State: AOJu0YwYTZZBM3NoAzA6JASKP007V6oVP7mZSJuIMuAMrWwHxgwMWBIW
	7PoXH3FvfYg9DI1Y/N+7V/fg7dhOMglc5JgPX5GMVNstmGno4dvQgW/szKiC5MrYZIq1aNcW6xz
	sccLHr8c70rHlkyu6TjPPeF4qZVgB1qHSJdq+G0AOhg==
X-Gm-Gg: AY/fxX5iCotXDeNSSvZt6d1fxEP3uUC0XbCSAOvLsYaZ+dPu3ugTucXZKk3UOpZYc2L
	Wty6PcFaHMjWgdI8NBLZK8obRFxaWGz1SrwRdKhWOKa53WSFmLsJCBz0j6mICNs+HIpsfkVPUW8
	LblQytVZrMWgYhmg0diLadIk2TnVhftz0HYeSsvwJuEvrM1XKrKu5IH8R7sceeZLbTQU8EUOH9V
	TjkNPxJOf5Cdyobno/VT4YOhgQw1GW6TWCHcnUBJBWaD0PfNjjxvjzVhQWTTE6IusnCzs0UpAPp
	ud9bo4ycgXYhISNGN3sCK6aquEe7tTMMz+yjbbZ+
X-Received: by 2002:a05:6402:524d:b0:649:cec1:6cf1 with SMTP id
 4fb4d7f45d1cf-654ac00290emr2575856a12.0.1768585881040; Fri, 16 Jan 2026
 09:51:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116172915.99811-2-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260116172915.99811-2-krzysztof.kozlowski@oss.qualcomm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 16 Jan 2026 10:51:10 -0700
X-Gm-Features: AZwV_QhtJIlvC8lax7reCIuuwunpA2-9R9Z6379FfXEQO74d5fi8ERBctyrcGDE
Message-ID: <CANLsYkzU8YDv_PzSMjj3+zAg-js8Yo8uFWotzzz2r_nYDK3M_Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mediatek: Replace Tinghan Shen in maintainers
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-remoteproc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 16 Jan 2026 at 10:29, Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
>
> Emails to Tinghan Shen bounce permanently with "550 Relaying mail to
> tinghan.shen@mediatek.com is not allowed (in reply to RCPT TO command)",
> so switch to AngeloGioacchino Del Regno - Mediatek SoC platform
> maintainer.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml | 2 +-
>  Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml b/Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml
> index 88575da1e6d5..508b8c2f13a2 100644
> --- a/Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml
> +++ b/Documentation/devicetree/bindings/dsp/mediatek,mt8186-dsp.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: MediaTek mt8186 DSP core
>
>  maintainers:
> -  - Tinghan Shen <tinghan.shen@mediatek.com>
> +  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>
>  description: |
>    MediaTek mt8186 SoC contains a DSP core used for
> diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> index 179c98b33b4d..bdbb12118da4 100644
> --- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Mediatek SCP
>
>  maintainers:
> -  - Tinghan Shen <tinghan.shen@mediatek.com>
> +  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>
>  description:
>    This binding provides support for ARM Cortex M4 Co-processor found on some

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> --
> 2.51.0
>

