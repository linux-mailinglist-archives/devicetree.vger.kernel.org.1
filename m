Return-Path: <devicetree+bounces-154386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D62A4FE96
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 13:26:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9FF33AB0F1
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 12:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E5B24500E;
	Wed,  5 Mar 2025 12:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WJpM4fkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADFF242914
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 12:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741177577; cv=none; b=LWOctHDHjUgcRmdMgk5X96468uTDH5LKJ20Q2OEaGkcHrPMS87Ph2TIH/f/vmAkHfzJx2D92TfGg4R1DUYkirc+/Ftd392aOpBJ/33TeJZvS6BO/qZiPk4vPH/FNbEHR1L7nqkTIkdKEpVHfFq+NmwBjaQYIdwlb9NsYp500uWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741177577; c=relaxed/simple;
	bh=NLJh9QnkP2DtwoSmm+aiCcTaA3T/tGoQoU/ppMYWXus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LnJFJRAfM/B3lUnKfDYpIk8ZzyH15I7nOqk1Qa58MCx0l7dVP01z23HaEP8RkNWCp+vgCnjR1mken6rF2bcapDk/H6P6WL/+9JjEXyuGobDcrfPrarMM3vuWi8IxK78kbK9SjlvpcCohi5BsUIVbAUpMpJOffgiLEwWHe8nqz9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WJpM4fkH; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso72130365e9.1
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 04:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741177573; x=1741782373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b6Rt50X7SkRvElgQbm7PK5W+Oj4QTSo0gp6TU9EySbo=;
        b=WJpM4fkHwjiP9kfflF0ifTNAJ0N+TGaeKV75Slv4ZhO2Z9bWTVH284MAeWdTY+zpch
         kp2LCT6829SmryB9CTUI6jJqApNflfvjOKf9fol6EiHtIgQH7NHMSKLXJ9YrNC1m5efb
         7fVKhIPfHcWL6VBpRD3efouP2IqPIreCRoe1jEZYzN3Rf0HPxoz846RXFaMw+7jcfUh5
         pwgDti7SOBC1svoUdvgruRDA/J5H3ZfbAXO+13sC2kAW5maRCvqxooL3/lQrx+O/z3k9
         soJqEwm32VGlNzDO+bCiaaC6MzQooW8HOp0VCMzZDCXU8EFaqBNKh7lu3hH74krSoguL
         u0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741177573; x=1741782373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b6Rt50X7SkRvElgQbm7PK5W+Oj4QTSo0gp6TU9EySbo=;
        b=lF3GkztpXpKWQFupHpfs4nNR4jCXrMp+hY+/iwM7EpN4bvlXJsQgI1D7vAy/tg2o/c
         yc+f6PTI24QDhSDNYJ8kzNk4W/Gu4OdH+GUfs0en2XaDALDT2uuoG2pRbAM03nPCOepN
         clmDy8CSSI3CibAOauw3R+wshyo3QcCmmmRtf/ykOkJzK0d+vfZnXs/ZJqcWVCTr0G+B
         pfrDHxZry5lGqLCQs+R0uc3uXl2dS+3efMOkVqP6H6aeWPmEdMwJkV7tT1mbdjjdr5j6
         qHFuRrdRy8dtTC4qoj3K2AxqGwy5RAxwOWDuNFm1RaYwI896RwR3d8BuAY3yBsUEldgE
         vPoA==
X-Forwarded-Encrypted: i=1; AJvYcCV2+NdYyA/heVhLgwjTtlbGfqkuHquT7czeua+TQ4/JTMDsop80pGbMvkwU5KPw7RNhgIGIYRYU8FI+@vger.kernel.org
X-Gm-Message-State: AOJu0YzFPAT2b7Llqxe9XKt9CDoAu2J1JuGH1atoWwD+9c3gGiht0+kI
	IvbBwQuv4PWfdN/sHrOaj7QEJSzkH8AnXz2XDbSjmVJoQYbBWY2M2+4gSiMcG/4=
X-Gm-Gg: ASbGncsLAbXzYyu85t7IkCiCZjKYsq37r3GHfRZDFYzM7fp1rslHqDq2IHrfk0lPNR4
	9+X5u662rdX1mzn+D4tVzRyxFkx55vGIHHffHdGelvngjGpNvJGkCznKfohJSznvh140VBuQRyx
	FIDJxyPihTIPVns/leQdzvYR6xQ0WAjvNsBHR3kPouirHm+6eO8qG+1Z8603In8asiKi26Kkxj+
	RW55bLe3MZqOIR++fLJQwjlsbcIcl+O9/uz5ki2zUerVf2rgZBTXxUI+moA7131DOPUqwreJEX0
	ai4J7k9GsDVcsA6HR+Y11uMJploXN5YIlAI+D9D7p2GN+xKRgKuOibgHYBWcfBHKnm0tNJxgfl9
	X2uvesxHibg==
X-Google-Smtp-Source: AGHT+IFjDxd6p8WpkU8mEAcZkTMlxy1k8FZzR1EKtfrH7oGcu7GdsRm3iDCgI5fb4lflozIDyl7Lfw==
X-Received: by 2002:a05:6000:1845:b0:390:d61c:c777 with SMTP id ffacd0b85a97d-3911f7beb2bmr2613296f8f.46.1741177573347;
        Wed, 05 Mar 2025 04:26:13 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844913sm21209948f8f.66.2025.03.05.04.26.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 04:26:12 -0800 (PST)
Message-ID: <2e956745-7a3d-497d-8789-4e3d3c8be78b@linaro.org>
Date: Wed, 5 Mar 2025 12:26:12 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: drop video decoder and
 encoder nodes
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250303-b4-media-v2-1-893651a4b1c7@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250303-b4-media-v2-1-893651a4b1c7@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2025 12:37, Vikash Garodia wrote:
> Decoder and encoder nodes are already deprecated from bindings. Update
> the venus node to align with bindings. The nodes were deprecated with
> commit 459997e8990d9 ("media: dt-bindings: qcom-venus: Deprecate
> video-decoder and video-encoder where applicable") and is part of
> v6.14-rc1 and onwards.
> 
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
> Changes in v2:
> - Add history in commit message about the deprecated nodes.
> - Link to v1: https://lore.kernel.org/r/20250303-b4-media-v1-1-ddc5c81cc2b3@quicinc.com
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 8 --------
>   1 file changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 0f2caf36910b65c398c9e03800a8ce0a8a1f8fc7..31abb2b9555f37ecc9c7753509e95acd57acf015 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -4301,14 +4301,6 @@ venus: video-codec@aa00000 {
>   
>   			status = "disabled";
>   
> -			video-decoder {
> -				compatible = "venus-decoder";
> -			};
> -
> -			video-encoder {
> -				compatible = "venus-encoder";
> -			};
> -
>   			venus_opp_table: opp-table {
>   				compatible = "operating-points-v2";
>   
> 
> ---
> base-commit: d98e9213a768a3cc3a99f5e1abe09ad3baff2104
> change-id: 20250303-b4-media-79ff0738b9cf
> 
> Best regards,
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

