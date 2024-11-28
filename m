Return-Path: <devicetree+bounces-125297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 296A79DB80C
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 998B2B21530
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 12:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78E9019F41A;
	Thu, 28 Nov 2024 12:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ymP1yL15"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0117196C7C
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 12:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732798618; cv=none; b=c5yho4SeWbOtPOt17FxPcWs5jB8hOS1la11e8bPF2hTlLr36cPsSZ/CPZAMEuao+EpNrCv6OQ4UMyF+NymDjhHxGPAhANctIc2TEudv10jxEIml5MEn+tJh286Jw070uK9iF9PE6MsTnvXUjZHQKS4WGnxXhfN8MoK/+abSWr9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732798618; c=relaxed/simple;
	bh=wIbCDeRCPipDEj0QLk3Kv6nua3hP/xB+LsLEnGR6CPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lvbGTJ5p/L2MEjVETRNko7YULhIkGRYf+muKYpSam6BxNiUg9Z/+6X6+kVb9Uxi1MxDoY6JXlP7aZVNr7yXEBtFT0DLwLl2eZLhW5m2awkB9wlnniEsDO+mycpXrgpTTSJuXS/2NfsOqKVIsWWcvdh6G4MaqlPyxnfytcyOQCyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ymP1yL15; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53df80eeeedso465203e87.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 04:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732798614; x=1733403414; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1FMqL0Vo9ZTV7oQ44UmQZuGKsEmW6qDjMP/0EBigxW8=;
        b=ymP1yL15gIB03l+eI/nE9vgQYWmjOY4S+YsvbPVvO1Y3tGdbbxUlVjAqW9hHFdnDp+
         jR0hKftPrSzYGv42+UEDgkNoPAGLoj7RR31qq64aLu5KbiI2CW4gks1KrddKMdb85dPu
         hMcZ0pY0phGmHmWGaZ4Q4XACEwlXBRoqurypen/UQX5W8EsyTh73/TkuW1Y0EwiMN1sx
         KOz9F4Q5D96A/i/GAJ4a5vH0OaGwMLPNnbg+vrAhSNmpUSZDzaBEttfMjVGguV1RVLUl
         N48F5yy7sr+LN4JtbPgLhSLn1HXpk7uMtLsbe5GUd3cZEjA8uFPtWVOpq9QeODmE3rlU
         or1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732798614; x=1733403414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1FMqL0Vo9ZTV7oQ44UmQZuGKsEmW6qDjMP/0EBigxW8=;
        b=Hwl8VgStatrlWXGmgOph+QEKfYWcLYd5kVKtlxzJhFPTv07anja3WQ3I7dbF+JVSgI
         Zi213P46vAFCs4Vk73c/d3VlRmiBDGfTJyNV1Qcd6kYJbcqJ88TFUioI+cboMXVJFp0Q
         FqPNs7JcQe8gldQFUDOTe1vSbUgyKpGX9ZEU7M0741Xsep+/ffZPKZZQeT9bAsv2iB5c
         Tzw9vPcYFpEbfk6QD6N0M0l7IDIgqsX7ZeXd63tXAveO9zl/2onKhPq/3wTJKLTaI+U0
         M5HGZiPCDQLGuLJDGVbiX2nK3gOyqkmUv2Q0YT9DJ1RRpoDbjuACcJatUZ5iDDHCh6Pc
         8WNA==
X-Forwarded-Encrypted: i=1; AJvYcCW3fA+fp4DZy8MNcoCaCjV2BOR91wqpzGjTxJWKHTihAfIWeSQwCDK8Wy3juGBUzkreswbud7h5qQfc@vger.kernel.org
X-Gm-Message-State: AOJu0YyMJ3b40lcwrV5SKYpqisyR1fVJU/PLASz8k713sPMa6N/3e4I2
	O4wj0ilhdRpCIfUNpfXPEmsbm7I/RuqD/HQxCjMiY5z0eoijkpyZ7NWy92oiDvA=
X-Gm-Gg: ASbGncueNRr/esWcXn9hzMvikV7BCgnkCB0/SFwSCwjNY7L4ba54N+oktODqN1MZnNO
	p2olchi48ZYKeaEuRhaF6WhVFENZQVsJJgoTe8bdTnV+djw72ExIouCUK8nL4AYdQamdfYXpxqu
	tGGt/bbhsaFhaoyuWhPhktErPFlUN36nVFu2HJ7cY5iK+jAooYVhB95mQdcN7b6JroUvBb5mDkb
	yRUh4fV7ZdLwUExgCjJ2b5jH4VIysc0GlazMGa1UhOcKBmeV/WLdy+/z0BhLy4oqB9ajTb/I4P+
	WfnL7Xh0cZ+4xTwtAG8UnEJpT8YKIQ==
X-Google-Smtp-Source: AGHT+IHd39GNyqtnusbMRvZYgSGa/NnHGVoGq9VkP7PA/yhU8e6l86ZQ3O9anzd1w4QjK9hje9fIPg==
X-Received: by 2002:a05:6512:3181:b0:53d:a4f9:6141 with SMTP id 2adb3069b0e04-53df00d1b1cmr3597761e87.14.1732798613900;
        Thu, 28 Nov 2024 04:56:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df646f27fsm170090e87.157.2024.11.28.04.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 04:56:52 -0800 (PST)
Date: Thu, 28 Nov 2024 14:56:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, 
	kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: qcs8300: Adds SPMI support
Message-ID: <25gvmj5evftgb4bbu3gmaxcs2hvflhrwrzsnhn7pizop7dq7oh@drbk5vvcf7zt>
References: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-0-001c0bed7c67@quicinc.com>
 <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-1-001c0bed7c67@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-1-001c0bed7c67@quicinc.com>

On Thu, Nov 28, 2024 at 05:40:16PM +0800, Tingguo Cheng wrote:
> Add the SPMI bus arbiter(Version:5.2.0) node for QCS8300 SoC
> which connected with PMICs on QCS8300 boards.
> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

