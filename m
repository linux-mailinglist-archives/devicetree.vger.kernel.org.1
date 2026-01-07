Return-Path: <devicetree+bounces-252178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B49CFC083
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:59:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0F953026B24
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFDAF25A2CF;
	Wed,  7 Jan 2026 04:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k4uJpw0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D721DF751
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767761965; cv=none; b=MTOJcJnvSQeWuhJ6oWLBc+cC+MrQfjrx0O//2Blbo+BGAHEoHjbmlsHdyY9nzjjrrLZrr3VogepI1442AOWtLC7xxMSjEjWAldZtJ6pgYlYkrQZhkLBaFdREDors61DlpmeZSEfwH2TeHyox0S86ZPS1efsvyBzOdc7TYtoGSew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767761965; c=relaxed/simple;
	bh=8ayjC1pw1QgU/U+6p7ezCG4vcZstIeW4+HvogWqFNdI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E5R4OVDm8DlOOAUooxak5wW97i+JP9VRiYgvYV5D4K3L//T2vpuxl+1SEOe2zF76DyYCjMiGgk8JgGf8O5xsPHd6JcSYR6Jf8K1Vxx9Dnqk2XYLgZkQo/VHxOB6flDJkawMK1MoSMh98/voB3qttdRYR8la2uwXjJvS7fQbe7eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k4uJpw0n; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-382f10ce137so1588231fa.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767761962; x=1768366762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vpaDww3Ahj2lTPiIw3h+P4X6jy6j4Poz5P8K1VBVmPo=;
        b=k4uJpw0n8AkhYVl2GjBKdNuOLcZ5Ds7p9Sft8uCncZfZBRFLjLOyCp4B47E1XDZ1Dy
         nzefpzQZGFfIibASL00vHAHcyXqpKjAKEFUuKuGO8h3VNNiIo0wrkZctHGmPEkKLqNAi
         4nbMcVqs9aB2+G6Ft1EdAKo7ke3tzTr1RnRBtCByZhEFHJxas+2M1rNixXbeF9HkJK6C
         V0J9b2gYm71QKfPyisOaY7tk1pL2Qx9/2skvZJLMQi/M65OJp0SplbIbeSZWcEGjx7bO
         5cR6CsMFQdEGY9cBGeopSP8i/GTWxjLVJl8uHdAkkrjX8KWUNjWrUIDcGOfc9QyQerX0
         O6YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767761962; x=1768366762;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vpaDww3Ahj2lTPiIw3h+P4X6jy6j4Poz5P8K1VBVmPo=;
        b=LYnnzPLqtqH3HjwVdTZS04AE5EFlp5UOci0OeQRjCbHyQXUYARPPUuvxUjggA51iB4
         MOapF+j19rCDOFaS2zvS34KzVGk4GnvgU5e5Eteag0IOQjseSmHdbCuZKdw6Cjd9qSyG
         7Vf46IyRTNrP5Be4HjeHSFU0qCPv6t9k0+uFFdB75nq5PgeWgB/hJpfXJjid6eNBQOk6
         iO62CqN9nuwkD+3BkssLPeB+PC63nUWkD23zI7uPgMz+NiruxIDSQ2E/rKEZufMIjcbw
         dWvMKce/U5yURqCDqP7BCVFae3+HrPA43/0+jX6t0F2xLmTcGJzylUZb7hXKe33W3MbZ
         aYLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyXmR8iGbwYVF5urTH27HLMIZ5n0SnRdUj9Pcyu20O0R9IDdN1gW2jcZtrWSKuFLc4D1ev1Q0z7D+w@vger.kernel.org
X-Gm-Message-State: AOJu0YzO+LmguuVYqUYOJKLnukmV0IlaBsQY0LlHqK9ilJfi3Tcn3lVr
	lyWD6neKrHP//4PFX7vSI2TdVeYp0XWsSkKJ+O2A9HQCWqXIfGpodHG5uOPubSZMQAA=
X-Gm-Gg: AY/fxX7dMwCVhGg0ioxXK0UZJIyNVN9OJAYO6R3foVqmnICjzkVhhFOubGZrR2mMz9s
	Rz1QPVpWiirJQ9bAFjXDFrvWTtdOie8jwQfKST7RMPuIwoisFDGCva+UVIvMCSxC/IVFOaIOBqj
	wEEELXeJfgUZcSwagZRxp/B8RlFNphcCjLyzmpxSOiWrFxpaYHLOkU1BqK7v3nEgd4xF/1fhVOi
	RUID/0YO1jJ1shWTPWjN9m8AKAejtU9l6h4s1Mjp3aIWuA13i2/yMtlBG1DrpFMKadMcKpBKqu4
	EThLy0OoK7pb2h4fS1qPwLk68HRbSujAEjtbUL7YjxNPx+5GQP1esSmupRtA99rrYD6wLKnjCbJ
	uRi1j/9Iqmk6LAyTv8lHmhNXti2Cud1ax6nZz+PAWJqgGaQs66fG7CRzp/VjXv1mLh79jijXTfz
	eensrIdCr6s/en8vYsEDKO7Og6seVjqxtZseipD4XhHkQtvI8P0HQBxZ6HMNNf99OqHA4IOQ3cF
	3GR
X-Google-Smtp-Source: AGHT+IFaxz9I7SxHKBSLqa991ssFTR2Wj4rTr7PJ83MaGolYYv4zzgp8G4eV7mqAU7xUX3mc+fdLyg==
X-Received: by 2002:a2e:be8c:0:b0:37f:8b25:a327 with SMTP id 38308e7fff4ca-382ff58718cmr2576611fa.0.1767761961920;
        Tue, 06 Jan 2026 20:59:21 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb7c708fsm8961761fa.21.2026.01.06.20.59.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 20:59:20 -0800 (PST)
Message-ID: <6aa9932c-a0d4-47d4-a884-f25b46ae130c@linaro.org>
Date: Wed, 7 Jan 2026 06:59:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] arm64: dts: qcom: sdm670: label the camss ports
 instead of endpoints
To: Richard Acayan <mailingradian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Robert Mader <robert.mader@collabora.com>, Bryan O'Donoghue
 <bod@kernel.org>, David Heidelberg <david@ixit.cz>,
 phone-devel@vger.kernel.org
References: <20260107043044.92485-1-mailingradian@gmail.com>
 <20260107043044.92485-4-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260107043044.92485-4-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/7/26 06:30, Richard Acayan wrote:
> Endpoints cannot be pre-defined since dcf6fb89e6f7 ("media: qcom: camss:
> remove a check for unavailable CAMSS endpoint") was applied, probing all
> endpoint nodes and requiring them to have a remote. There is no sensible
> remote in the SoC devicetree because camera sensors are board-specific.
> 
> The ports are meant to be extended by a board devicetree in order to
> define fully configured endpoints and connect the ports to camera
> sensors. For nodes that are only meaningful if extended, labels are
> usually assigned. Label these ports so they can be extended directly.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/sdm670.dtsi | 18 +++---------------
>   1 file changed, 3 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> index b8a8dcbdfbe3..3eb4eaf7b8d7 100644
> --- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> @@ -1776,28 +1776,16 @@ ports {
>   				#address-cells = <1>;
>   				#size-cells = <0>;
>   
> -				port@0 {
> +				camss_port0: port@0 {
>   					reg = <0>;
> -
> -					camss_endpoint0: endpoint {
> -						status = "disabled";
> -					};
>   				};
>   
> -				port@1 {
> +				camss_port1: port@1 {
>   					reg = <1>;
> -
> -					camss_endpoint1: endpoint {
> -						status = "disabled";
> -					};
>   				};
>   
> -				port@2 {
> +				camss_port2: port@2 {
>   					reg = <2>;
> -
> -					camss_endpoint2: endpoint {
> -						status = "disabled";
> -					};
>   				};
>   			};
>   		};

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

I'd suggest to split this series into two, one for the added driver, another one
for .dts changes with the dependency on the sensor dt binding documentation on
the mailing list.

-- 
Best wishes,
Vladimir

