Return-Path: <devicetree+bounces-276266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFo7GPoguGmdZQEAu9opvQ
	(envelope-from <devicetree+bounces-276266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:25:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCE729C461
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:25:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2342D310C21C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60D1F3A2577;
	Mon, 16 Mar 2026 15:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jtsz07GN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92893A255F
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 15:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773674165; cv=pass; b=i6sykhRoVM7FvZBh5aJy5YLGMjYf/4qDT7y30vdcQGJa0G0cDGwQKeChistx8Zjj6YriQA/wnzOe9Tza1FZFhtk5zemrRVry/7HACAt7l/CtaT4K4ss5anSo5gzorgUeBG+bttdVweL7vgZ57bSJCvAfSBKeGHfMAcH00spADI0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773674165; c=relaxed/simple;
	bh=SGrKOh6DxyjU+GV0XnOjtJnq9uPykPDANTIFfa61QH4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mFGhyFm/uAwgtxxvEP99K5D16RYucnieuFNxHPSKd1xuYzxQN8o4OD5KvGM4QQje609dVqIYs+15puN+0SunLG1Igm5Ig0F0Pi07/HiMZl58xSFuNWBqNugOxNo4K+q/IzbU8xHS+jwzHedAFVpYyOl9vsjZRDg04KDIaNXpZLA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jtsz07GN; arc=pass smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-38704f70ea3so38660941fa.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:16:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773674162; cv=none;
        d=google.com; s=arc-20240605;
        b=lIwzKx4N7/eJsnDTJnPwAV0ewc3w50oTJLRl61hx0jM1H4Hb2a/Iq/X8W6Vm0bnGex
         itFBUdZ6ghKUaqkJOI8BkHp2FG1MksjT2Lpdkg83fZAuHUiDMufrjmiz/XDnUVPL028/
         v82YUyxFVZphjtxB6YXARgNiqmN+AxoHx7TgqACmmEtPwoXXEat96nYnMDk4zXJrex6g
         yqf0cCd3pw9V4id4ij/sTJybrgDR6zmj27NUAGNOELcDIqbsr5yq4V+7r+vyeyHCocNz
         VqB7bgL1QGlSCLbv4/sWCb99LZRC9A4Pkfov/Dr+KBQFitVYSuvb+Rg7JcJNhq5yumGV
         XcXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aWwOA9SQqzmxmd74/y4xRp+f9Kw/OsZUX40Voc8OPk4=;
        fh=G5F0zSfI+unKd4MTRwQdU0oF8tgJODWwBuWDuRpSQ28=;
        b=js7r0HxuzuNgmgRzknDfe+S9X/BISRHi0VWrUIBypqMzvI5Iw6GGm7nPGjXIWfeqsL
         v1z/gM+tnEQ3q+ZDiVdpS04N1xXwAuB6RpvarMEbwrhIv/fnnxikiDufVH8EJ4S7qKOO
         Ohlc71dsoNXasTJh8Q+PcC6P2duIDQgwd/3oaQEBja2QSh8dvjxaq6x6RxqUxXJDqaWp
         3ljpqn/NWIMGlEcAV2BT1YVjYtE0U9Pop1pvu1euAZWgnoUh7Bb5WjiGPGE7ysoJ3Jo4
         Fx8HaQxosJYOMK5Bc/zJJCWVO4gOrRapzhTGChY2IxzMXeKhAZIj/wNY6zUhcxvkzEfJ
         xGtg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773674162; x=1774278962; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aWwOA9SQqzmxmd74/y4xRp+f9Kw/OsZUX40Voc8OPk4=;
        b=jtsz07GNFeAEXMC6uCu//Kl6N+FETjCtKU3pYIQGECDs/OEavmObeUfyyeV4xJYGAa
         JP3KQ/hR2fIxtUIi4vLy/zrESlImC2KgV8N2BWbuXtqq+lodc+6T3NnuRqHg/36XtRM8
         2jyu9oHE6oP6NpGRlGITsvzGunnEG6OnlOq+XQ97omXL/cGdtiRTfj4Xkypi8XBHzq4g
         hi+9JLBr+Fek8NouPQwdUQ8u72u5DpSMoK9DWQbPZASR7aZOntoPxVGjLJ92dI9D9ZDU
         2sTvLFOCqHr/zBXOFcAZpEH5e95dpF787Uv5voUdcW0ozL5K2Y8iC6mjSxDMc65Hf/5j
         RUfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773674162; x=1774278962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aWwOA9SQqzmxmd74/y4xRp+f9Kw/OsZUX40Voc8OPk4=;
        b=o8WeH8VjlNS0xErgbgF7NtsnRdA2Ze/oXMN0JNCNk4vsJ/n0V6zDASXj/EgPLtUtJn
         ogBxNtmO6RW95FF5yrdhfou73N1qU0AdyUcr7iZTlsid4GEnPbwg7IMhiEvAAS6wcGMe
         2odFyorXCuDMgF+bEzktoF17+PdbZswD7UvprUzmSMYMJp2MOFq4iz/1kTSM9QT/E+vs
         YDZ1rVa4/zJMRHqFd8rMK6CkT3SUdl+SAFFADwWs2KaZBHscYkf98Rqf5LSCgdYCiDqA
         mhBXM5vvJB7RJTjAB+LLulZw9E6VzBjypNTDvvHdlhronMVfhZtYG+chljLUXbVEz6xP
         DBmg==
X-Forwarded-Encrypted: i=1; AJvYcCX49srV8faM5ZS7cHnZjf5HIFYafJ0VKZdoCj47IW/24aipguwSrczoUt+dJcfoBwHAaJWgIMiF/D5M@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/8VY09Oc98S+paUakgWXIYcOByfGuSt+6rVkyzuOcZTbLjoi4
	Oq5px49uavyT7BgPAg/Gmy6k5KMeUkTMFWcM9PkqZP+Ox+Zhs5MwVbIbGqo9trF14uznKYyKXj6
	4D7B6JdXNi0E9WryHIaaiI40dOReMMCsiTKALQODnjirlhgD1mfXKiLI=
X-Gm-Gg: ATEYQzzsLntgnW+fF7SgiJpMSWm9SglEtk5jvEHHSqBpvXdW9FXOkAxJJvMXxj4G4w+
	2R8sOs/goXVy5/Tkj/zl18JbH5SH7kenvMb47EO0wGJz53un+oqFbxYviANR2HFU+tETwYEFOTf
	dZ431QdlEL2fb8GG0BJEH/xgvFgrDVdp4MzGWfDr73qbFxKl6UEqRGTkZ7MIXV2lD2rdoa5FvR3
	I7DjH3c3jrsTRlDrDuk8uI+a9zWkMREUgBvXLx1qRj1LmMDQ2sJPx2749o/D2undgtujI+XvOzH
	/CEiyfoA
X-Received: by 2002:a05:651c:b1f:b0:386:7e61:5de1 with SMTP id
 38308e7fff4ca-38a8930e573mr42245921fa.0.1773674161832; Mon, 16 Mar 2026
 08:16:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-6-fe857d68d698@oss.qualcomm.com>
In-Reply-To: <20260311-ipq5210_boot_to_shell-v1-6-fe857d68d698@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 16 Mar 2026 16:15:24 +0100
X-Gm-Features: AaiRm5153tShsk2TIyyE8TGCBjpaUzTwpROv6h6ltabxhtejv3_1C_1EaRy8Em0
Message-ID: <CAPDyKFq-pyTffu_D_eZAZQo3e=vkO3uhQ_hAjS-s2DY4TmXoXw@mail.gmail.com>
Subject: Re: [PATCH 6/9] dt-bindings: mmc: sdhci-msm: add IPQ5210 compatible
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Linus Walleij <linusw@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Robert Marko <robimarko@gmail.com>, 
	Guru Das Srinagesh <linux@gurudas.dev>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276266-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,pengutronix.de,gmail.com,gurudas.dev,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DDCE729C461
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 11 Mar 2026 at 10:46, Kathiravan Thirumoorthy
<kathiravan.thirumoorthy@oss.qualcomm.com> wrote:
>
> The IPQ5210 supports eMMC with an SDHCI controller. Add the appropriate
> compatible to the documentation.
>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 938be8228d668c87f0be95c63d4d951ebbadd4e4..fd1d5b04e7556903daffe86e455fde11be0dbd9f 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -38,6 +38,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,ipq5018-sdhci
> +              - qcom,ipq5210-sdhci
>                - qcom,ipq5332-sdhci
>                - qcom,ipq5424-sdhci
>                - qcom,ipq6018-sdhci
>
> --
> 2.34.1
>

Applied for next, thanks!

Kind regards
Uffe

