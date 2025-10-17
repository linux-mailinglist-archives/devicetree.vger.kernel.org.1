Return-Path: <devicetree+bounces-228153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B453BE8D8B
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:30:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2DCD1AA3238
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F9983469F3;
	Fri, 17 Oct 2025 13:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sCcbaEbt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCCC330302
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 13:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760707856; cv=none; b=sOadb0TtFvxvcwpt9gqAwRhzjK15PlujLEBMFdTxccNOHecUYznEqDaffmbmUfsepJOh4o1yU6JP9R45WRZew7si9ahaW2eX8OqjgjtMtucBAXgXgQw2WpUl5/OJwRd7uDvz5KWOMjm2V2KEfm4IoUNHGJCvCamuGzT/U+lLkFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760707856; c=relaxed/simple;
	bh=8h4MyfofRRgMJU0FH6oAiG30tlFhnJzpo3CvUEr0yL0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lFZu4xx1QCPkihg44MFVht6J0E/vz51oLqRv3sXLDfhfa/dwWRmHVjbJZxZUvFp750/UimaG0Sldo47e8A0/Pr1ITJ9DD/vvlR2dQbidspUKO/IpYTvFAsd7Z4hM7HSpgEhSOWrQVBEyJSDnaCUsGLt18l0/+FaUHRwu+LvD9JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sCcbaEbt; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-633be3be1e6so3078383d50.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760707854; x=1761312654; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5X7BQeA3rXzmBQbgRKoHIxB7KAjrjMKVEn539LLi6sA=;
        b=sCcbaEbt1EaYifDeeqmx8bRhf4wd2X+XbTj9yzsoLq90Hd23tHHw0ja/Rb23OTTD8w
         epkAXbw48CQU+V7LVOZ0ii3v0uQ9dLoC6IQXX0gJcC8nNqy2DpUEDIESo1291S0KlcGd
         OsBVpK0J5xX4J77q6MUH5FE6zHA/nFHcFwwQZBsoINgy5ifeNW78FJFlEsD6xEmejVkH
         G3hCzpF+zlAHtzjgdiNB8dCumx50NB7b1LLbCuvHFM0TbKl2jwCuv1ZulTcKnuVoP7gH
         C9mSSZPZPs9zsYrTkhL4eYiyhBykY6gilBOWJhKlbMsgYlzoxU877JjlUSQszcCNf92R
         2MXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760707854; x=1761312654;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5X7BQeA3rXzmBQbgRKoHIxB7KAjrjMKVEn539LLi6sA=;
        b=wtLFGSc1WA6URXIB4wi+QoOHKSXdRtJNBerH7+qPMFhUtSWLqCWmSL7tXrsV6gDYAp
         7mkUULDVs48nPzO5942xoTD6eb8UZfkHQUOs/JwTvdIE98Hi4/VcibPZ7OLnuCziXTk9
         /8uiwXBBqHBK/CHxGSxKj582S5GjbG5RWhC9/6TLvz5RtFMPvg//eo2EcTjrzIqNDPvF
         BbTzJcQ6hE3l+p03lnolJ7niVqhJmxIFHzWtn3au3WQCBidzJH9VOVL/Zura6dIApLUB
         Nqu2eLjynRgdvgRRW3xQTMKfIFVu/T9Xi6K12Kj702y8q4pjidrBgazIGVwUGC25FXtJ
         kasQ==
X-Forwarded-Encrypted: i=1; AJvYcCV14PO4h5btTwg8lYQEAcmriobwPfiGxSn6cEyHC8yWYYV2kC792YXVqBi7RXEbUJLGIbDNxViIwCBM@vger.kernel.org
X-Gm-Message-State: AOJu0YzIR1FkycSgVT2NashknI1m80hLrLlHwuD11zJFdnvUPN6qU4NI
	t3woD5BrvOvu3XdalO+jAKzP7GMy3FkmWPL5XJTz1cnjc24RzWRl5xTT9VHdlMq0B3bmuc/o4mh
	9Z5jIMpyEWM68vk6Rbe7Po5tbnkz8wl3vrNNJhAV8jQ==
X-Gm-Gg: ASbGnct97Ub83T9GYX53RLSGnpZ89/aJ0XILZFIZyC8Diqz/Ze/uzZDd7zvq49/Uqge
	gR0RrMWmjqAoavaGfgB6QAkbpOaMSy/2CAzGZPYO2Jke2HeYxUVxJy0+gXyOC2rdMrAa5YNbWjb
	QG3bc7XGBQEdB4GblObQr6KD5FxXAbev5vZZNsjuCP8vhTagyjJOY3giaiumfjyYI+Cgob2oEfR
	55M0vM86kq+bTMBSxjz5X9NYc40E83eXMZ1btedElwpk6o8ARAaNX+W3DxWuME3H4EQUD9f
X-Google-Smtp-Source: AGHT+IFuJjjPUeond6ve2TsWvJpxprVjAj4k4yWkaW70iusJk/wVdKJ5/E78uqC6hlFI+4D6JFSKhgGZ3fDtx8Pb1ws=
X-Received: by 2002:a05:690e:4182:b0:633:a6fa:386b with SMTP id
 956f58d0204a3-63e1617888amr2411139d50.9.1760707853775; Fri, 17 Oct 2025
 06:30:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-sdcard-v1-1-fc54940066f1@oss.qualcomm.com>
In-Reply-To: <20250924-knp-sdcard-v1-1-fc54940066f1@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 17 Oct 2025 15:30:16 +0200
X-Gm-Features: AS18NWDaJ0stRMP0tjdx1D-OEVihvanFSmIUNXsykH9atcloWEZNEl8Qe24908I
Message-ID: <CAPDyKFqMYyo5i2ZVU8SBrD=gbGZMZiwYuOC+MWD0r34UMeNizw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: sdhci-msm: Add Kaanapali compatible
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
	trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com, 
	Manish Pandey <manish.pandey@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 01:34, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>
> From: Manish Pandey <manish.pandey@oss.qualcomm.com>
>
> Document the compatible string for the SDHCI controller on the
> Kaanapali platform.
>
> Signed-off-by: Manish Pandey <manish.pandey@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 594bd174ff21..474afc98c8f6 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -42,6 +42,7 @@ properties:
>                - qcom,ipq5424-sdhci
>                - qcom,ipq6018-sdhci
>                - qcom,ipq9574-sdhci
> +              - qcom,kaanapali-sdhci
>                - qcom,milos-sdhci
>                - qcom,qcm2290-sdhci
>                - qcom,qcs404-sdhci
>
> ---
> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> change-id: 20250917-knp-sdcard-772e77cae9d2
>
> Best regards,
> --
> Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>

