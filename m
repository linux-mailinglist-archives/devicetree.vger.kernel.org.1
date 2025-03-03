Return-Path: <devicetree+bounces-153532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DFEA4CF78
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 00:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E4F63ACAF9
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 23:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF5D1F3D56;
	Mon,  3 Mar 2025 23:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uwOkxCHK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAE01F3BA4
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 23:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741045926; cv=none; b=kJX6Zr7Se7q0FfcV0O04VJUR0csOCClRV9y5u5wECaAV4G9juy+8jYKnKYUcr3qZQWHxSGApyy0RdaFn90WdyoAq8F5r7rVoESd5k9rpb6qYflJxboZyWtfYEjEl4VmYwBROHlDDHKRYYR6TXQAdvPLqC0sy/N1CcosovkqeAlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741045926; c=relaxed/simple;
	bh=oIoGneK3UeGIUTIlDf4KvKMqAMpwSNXiYhvuFQnjiiU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fkDFtRUPOQXjahjuAN3WvosUFmYAJ5rX7+Vf+rjw3W3TYujfdb/UckUOoALIKyQoCbh6PxK0n3Wy6ilAi0npsKa1PfMizHQTjwfQ5oofybQ5YBhvZ1lUG4y4cRkXe/ez80oNn9pPz/hy6Wf9FUt4Ubn2eC/R2WPgyH/lpyo0ARg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uwOkxCHK; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30ba5cccc19so26132161fa.1
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 15:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741045922; x=1741650722; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2n5w8pShYE8jYi0hvqZwRKlhrBdNHQSTgdC19YmKRiQ=;
        b=uwOkxCHK04UPTqEcQ6DU1M39Ye2IkIm6I7G5M0mdQ66JtrxfEWYP/RZ3AW9J3GQ1f8
         4Lj45jA/hEq6ySFSP1Pb+nrodlS3B4GN9Cq+vrB5mb8DQFiCJINlBVeHb7TrRqRqEkkd
         3hxzXeSd/HMAt3vNxcpgHRg2uBXYAtmxSR7mHRM7lgnHMAdgCN6Pu0P+9iP5J3/Jk/lw
         CZta1w6+gWKKn6Dw/z483XOJeFnqGN4o5LgrjsYjkj25x09iEsBXN1SSAklEYtzjj597
         zXKstTTN1AJO88Bo5Em/eXxQIAMGx6Ktfcgi491mnppi++ZS7qltjNN9xbpf5tllgb83
         X2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741045922; x=1741650722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2n5w8pShYE8jYi0hvqZwRKlhrBdNHQSTgdC19YmKRiQ=;
        b=axxUNAAh3jMTuTd7cK6vrPJMEjM2uCZfw552XQpfyoYxF9TxOQKifc0rznuvZM1wV4
         ZGjSVTkYIvTSJdIy+rSFlpNIi1NusAq+rTERnJJnRBJqTsrn360X4gOQNkVQjuPbkiKV
         ungDhw0rhnWs7PChVHuW8YIaI5H4dvuJg5T8NgcZxR2khqMcZcLPsoXi+sJImODy+zZI
         X532xQS4mxQf2CZW/qzzV3rt/i2mFLKdHIHfRPtB18VrnPi/TdlgwaGHV7ywfX992Na4
         rRIMJoH7HtdO/LZhTAT8u+JscTPlI/oslaRUyVn32vudILtfy41zbNbQhYJlI86j6BL7
         Cg5A==
X-Forwarded-Encrypted: i=1; AJvYcCUb+76imbc2DhwYB7XPri0os9vD8iU91WKeBe4Q1Vc5xJohNHhWH3EPrc4AhmypaCZjNzhqwwhNuo5d@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7uTU//vi3d41u2BlqCXPuGM007ilJ64SbCwkR5Zt6Ask0pvQy
	d/duM4Z1NKgaRa6UtG56a0PdRMu/hC/J7DUkCm7bRHSHSGjkQ52GbosU3RHgnIc=
X-Gm-Gg: ASbGncumVAHkeLq+yRKhrUgKzv6O8HkmVsOf5E3LL4U4RlJIky9F01tVnBrWMGV0Q7F
	A7lm8tWp+utObMEcIIdu1+EZS/AbSgrQ38AqvgKzvaQqbCI7Gbg45pAntlIr9sUsQ7Re61nFWCQ
	lLSzoyZdaCkM7bDZids5C3oLgHfaU/e24T5RWn4ldO90kMscPmyIGwjcuzTsi+74nkv7wphWiiX
	adRV6+cUOv69FMT19febzhzWX0ZeUw4tiVFVo4NqcJDqgHXGNwwUap2EdKFWbPrfbb/8DzGQ5W4
	PhEAAAur5QPX7OAK1XNvPIPyd0KhKhX9etvsa2x1h5YfB6Y1sh7DyQNG22Trel3V/OoDaPi58Kb
	VWBPlgyIYb/1pR1fiML2hR2PC
X-Google-Smtp-Source: AGHT+IG3xHqjP7zA+YAYgWJyZt0k8hzZjqRHbgURZmqSE3LkmE73kUYMjjbwKv1sJmuR3k/fg7H/Qg==
X-Received: by 2002:a2e:be8e:0:b0:30b:bfca:bbe3 with SMTP id 38308e7fff4ca-30bbfcac3ffmr16343571fa.6.1741045922539;
        Mon, 03 Mar 2025 15:52:02 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bc7b379f6sm2108401fa.19.2025.03.03.15.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 15:52:01 -0800 (PST)
Date: Tue, 4 Mar 2025 01:51:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clock: qcom: sm8450-camcc: Allow to
 specify two power domains
Message-ID: <4uuvboq5yfvdbqxd2oreu4bxfqyqegzl5uahgchw7wzlkyduyh@spjzrsef5flg>
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-2-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303225521.1780611-2-vladimir.zapolskiy@linaro.org>

On Tue, Mar 04, 2025 at 12:55:20AM +0200, Vladimir Zapolskiy wrote:
> During the tests it was unveiled and later it was confirmed that SM8550
> Camera Clock Controller shall enable both MXC and MMCX power domains.
> 
> Since power-domains property is not specific to MMCX anymore, its
> description is removed.
> 
> Fixes: 9cbc64745fc6 ("dt-bindings: clock: qcom: Add SM8550 camera clock controller")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  .../devicetree/bindings/clock/qcom,sm8450-camcc.yaml          | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> index 9e79f8fec437..d7fc9e5a2d20 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> @@ -37,9 +37,7 @@ properties:
>        - description: Sleep clock source
>  
>    power-domains:
> -    maxItems: 1
> -    description:
> -      A phandle and PM domain specifier for the MMCX power domain.
> +    maxItems: 2

items:
 - description: foo
 - description: bar

Also, don't we need power-domain-names now?

>  
>    required-opps:
>      maxItems: 1
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

