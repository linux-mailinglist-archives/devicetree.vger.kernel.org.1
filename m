Return-Path: <devicetree+bounces-158013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5FDA640A0
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 07:05:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00A5B188E574
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 06:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40BB0215047;
	Mon, 17 Mar 2025 06:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EFsN35dg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79CC2E3373
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 06:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742191548; cv=none; b=Jixfbbiu3Y7e3oXgLrWwexYeejDU9+uwCFaJBSad5wXsDVazeXJ6fvflQTwPAvexLLhPBEyE+pStBv+Kh40gOAFA6rNoLcN7mPALdpvV4qnmNUw3JrO7ATpKeExZbNgQh8W0RdyfKdZZ7J8m9E+YcVDiwcFRDycT4OLw4dwKtHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742191548; c=relaxed/simple;
	bh=G2vibGduTBb4ht3i3PKQRMy9Dmd98eR9I1FTyOeaPLU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mtd33SvKwmKyceVu22KRsdPIynOo3M4cpu80O00qy9/cSSHlow4cD5AxdZnsvx91SARsEhVuEQreK2hRByDSzuNGF1UeL+F5l1y72CY6S4/ahPe6bAWWpVyjaklel/3uPetUuzc4x1emA86K7e0cIvQrIuf/NqkerKfio8n4gDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EFsN35dg; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2ff65d88103so2626864a91.2
        for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 23:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742191546; x=1742796346; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=upw8uAtsaSrMPnUE86VOFztOWYUwfbafLAIdnBxyqLs=;
        b=EFsN35dgnr2o6vUSJkigYRiHu36/zDmuPUW6p9L//TW+DNHwwmZiBtIrPLdRwl8lZH
         v/wHjpxKOrJFCXJK71CYifHA1biWDfrxqLwC3od8LBX/3F6BbBtmd38eGzETqwT16vp+
         imoRg11Z9M1EETvCQWyvYJE2puBUtMPhNAeMzn+1p+KWXKcI5lvX6GZreSJNOIkb/rrY
         XbUhyUfrWamlF3EpF0iuVx9zxcHQA+p9+P2P2D4RbkNAaB17Di3nd01QAgwnYMpOREpw
         mJQCo2qUVHxUZGD07XqCPX0cTo8nXcN593uQluW+rfHj0r7Qw0lgHuVSuylVVZ/BzYgx
         VV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742191546; x=1742796346;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=upw8uAtsaSrMPnUE86VOFztOWYUwfbafLAIdnBxyqLs=;
        b=co5MWIN46KTODVNqlzG/SYSC51VT+A2Wki1Zsfy9Heuo44k9K1EGRBrQFjzA3NtJiv
         Me8nMMnIasduDVWOzmThJ+FPklNh339EKnG8J0MTvok24evq5pSCo7OxOvZ1x41385AM
         GrAAvveeM2scVLm6BP0PmjIeSCqO2IUj/Zm2EA993aW+eCrlyLM7sUf3/EAlk16Y87gU
         45DUY6Leyo3U8PHWy/d+Vz+Vj3O7msRZf4D8775CISja+5XiteWBnjxzOSN9wwc4N/Jl
         ETRjo2TCaJjGm/+saqJ6murShdK99UNkleGau/VYM5yohavoqnw+Ktm+CG+pFK6PKByk
         fBjw==
X-Forwarded-Encrypted: i=1; AJvYcCXyimJ1iDvzd4ESJ+1E79IVcNnMT2V7EtM4ukDzgfmbeWs7JxPjb5AokzwnIVbeXSWZFoNL4Scvznyd@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq2HFNv53MkMMJztV8yUqgINIsWZ+1TkKVpC6CxIZHHuzyKxUh
	My884Hx9IFMo8D5UIskj1NuwSx9rsdulVYF/dEP37lvJpNDSUbJOCZXJWyBjYi0=
X-Gm-Gg: ASbGncuIymIRwX84+uYg8FLR+iHHztHE2wdzIxGNDFDTM490awBocOm+HFtJrU0FAvK
	3pUiaJcchqLF8qw6tjnXXJy4Twz4pxUwpZ+w006cjwKyQhsRw97SyXdUV0TSzjtQH3vXPp6IUzZ
	cUbiLUBOlORQOxeJNpVN6D+uzI4SrHI8W42TQpYyXyvD6cOXMSWAeRB4BghGAhg9ThHmKpDFynZ
	50LSc+zZVVSUn1uLDZ2Zh5KsEhIS+WrJ7/JpUT1/Eoku1+EXFZxv/I9HWJ+GomDgBYPYYxufhfR
	kA1nKsmqDOhg/uz81UUdWvcZWpL+S1FC5jFu1+WUYrVr5Q==
X-Google-Smtp-Source: AGHT+IFtexjCDcyLpMQ7w8Tna8IXMKgR/Z0hgY4wOijyqJA7aak89tOVwk16u6S1c8FJcbWL2KbxKQ==
X-Received: by 2002:a05:6a21:6191:b0:1f5:7862:7f3a with SMTP id adf61e73a8af0-1f5c121e71cmr16343310637.14.1742191546167;
        Sun, 16 Mar 2025 23:05:46 -0700 (PDT)
Received: from localhost ([122.172.84.15])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7371152948fsm6985187b3a.16.2025.03.16.23.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Mar 2025 23:05:45 -0700 (PDT)
Date: Mon, 17 Mar 2025 11:35:43 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] dt-bindings: cpufreq: cpufreq-qcom-hw: Few
 improvements
Message-ID: <20250317060543.ebqshqxngd4mhrcf@vireshk-i7>
References: <20250313-dt-bindings-cpufreq-qcom-epss-v1-0-62b0f96ba888@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250313-dt-bindings-cpufreq-qcom-epss-v1-0-62b0f96ba888@linaro.org>

On 13-03-25, 10:08, Krzysztof Kozlowski wrote:
> Make the cpufreq-epss/hw schema a bit stricter for each variant.
> 
> Best regards,
> Krzysztof
> 
> ---
> Krzysztof Kozlowski (3):
>       dt-bindings: cpufreq: cpufreq-qcom-hw: Add missing constraint for interrupt-names
>       dt-bindings: cpufreq: cpufreq-qcom-hw: Drop redundant minItems:1
>       dt-bindings: cpufreq: cpufreq-qcom-hw: Narrow properties on SDX75, SA8775p and SM8650
> 
>  .../bindings/cpufreq/cpufreq-qcom-hw.yaml          | 33 +++++++++++++++++++---
>  1 file changed, 29 insertions(+), 4 deletions(-)

Applied. Thanks.

-- 
viresh

