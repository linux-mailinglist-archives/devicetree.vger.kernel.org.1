Return-Path: <devicetree+bounces-40400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A208505AA
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 18:19:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEB6E1C2121F
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 17:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A0A5B1EB;
	Sat, 10 Feb 2024 17:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FHV/hj3K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D445CDEA
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 17:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707585554; cv=none; b=iMMzlzfcobCPHK5RGdp3gY5njlXdeCykBVLVQr10ZXMU41ezwrX2LnfgR/zqNP/jgL6+YOG373p2jqyaQHeaR5WGsf9Iabmu8NJ/zcU8anSlZJBLh7GTPD+n1RVMJYCrmXE7+PGXOcrIusDk8L+p4Llyp18LAMQBFZDOH87rKtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707585554; c=relaxed/simple;
	bh=NYudsIGjRm27pkmw6NfIzTDAlY58kWaMj/QkAiYov4A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cWu1aAcRj9xi0x6XUzZb3BIuwh5lHr/g7avwv00g4Mub6V28C7EoX6hZdTYKpgHLe5PaUmxywdrzGK1QZJ4zxR9DI8mD8l6yj97w5N31JhlY7zykXZHV8rtMkm22OhAblLPjYMj0A3m271+EQuXYH1cGzt/VVOMmq8XQAhqZYLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FHV/hj3K; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a3566c0309fso230581166b.1
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 09:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707585551; x=1708190351; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UPPfoSPtlGq/Vz0zCl0yTdi8JSgrSbydPmzP0jiNjJM=;
        b=FHV/hj3KVFn2TW+vxL0Cb08qRLakb9PQaR5QvIMHACKWybvRnsGtagyk8ShF6Ub0NU
         Pu6wEbWKgYYFJktaUoHe/cVWZubDoCfE4mSEDYMunUWDPuQpvv7f4orxIcgokHNevLAR
         ZOXvXJuyBTdzaALSyEzjANPj+6rLk52dYyoJtLT6e2q0u7KZ1cvsZLMipoCwWv+Qf6T0
         gp/VIYRatSJIizSG54747J9SgMjtNJpKitwMYNUvgPQwYXhazGXA8pGHUPLSi1XzacAp
         fVUTVfkA3SnIcajD2UHzTeGwRqhh0DVHRjKAltlPJW3cTSZPpmef/Hh66l4ZHEHy51lP
         mZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707585551; x=1708190351;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UPPfoSPtlGq/Vz0zCl0yTdi8JSgrSbydPmzP0jiNjJM=;
        b=mNCv37lxXGO/tmBUv2kdzIlzmB1Hegfbj+UDurtdN9uxM4M7/oPu6qzrqchEgJNLyA
         22duMJKR0MBcXj94rO66U+qIo1N/X2lwj1bxXiM+kGbJSJdtnABhF3MCJjWUvQMx51iL
         dSdVWaR81VxgoaLtlTrR8irD2kldidY5kxgG74v9NGB/WE2aUG8UZulL9b1SfK7nNgtX
         b+ORB7ftowvnID6etHz14NlQaGUiHWDnUN9CRlVjcXthqWqSwuftz+npPBTTp1aUW+aL
         qmmBtnHFs9plHuF/Ja6efWBaZjml3uEXjS1EIw1cpH6xp7zw0PjDS8HwbitifXT3DWfY
         XJXg==
X-Forwarded-Encrypted: i=1; AJvYcCVUKttVaY5MX5o8qBdxMPgnMI9MuJSRGut4sAATNBM50CS4zl+fS3aqbnI1aDdEdRvKng5LLahV25HcNYdFu+EhJlcLXjk0STmx3g==
X-Gm-Message-State: AOJu0YyBp9NpMpyLgflmLCgRfnRAo3gfQq2vagjrEO9WaIWSqFtyVbq6
	1N0Wo/IACCSqS6WwHibHric/H6q0PvrMXbOaZfFOGaNnn5m9JXaaPZKmOcODofE=
X-Google-Smtp-Source: AGHT+IGf3lJjgMzTBNliFCNzGITS+DH/YyZWIGQY8pBo91UsuBBfHuCnnxy3Ge1cjbhereUEyz6q3w==
X-Received: by 2002:a17:907:9858:b0:a3c:2146:a0be with SMTP id jj24-20020a170907985800b00a3c2146a0bemr1531701ejc.70.1707585550785;
        Sat, 10 Feb 2024 09:19:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV8EHLrQDnCbtgF7aPp4Tys6b9xyplZflPIlITe2JUzkER/f+TZ3YW+1QuqWab1ZqVx1hWI7gDCToCTtN5IveWnTIYJkgjK/tuD7DbIrM+PlbCrnLZb2ZnxXi5br7FA6Ax/fYDYrlQZu9bEpqxG5O0sulZvU/lnBUdb7W1Tn8rqSGvmcLgAj6jYcMvpWcHks1GSDS7Zt83ulZ0qayIbguRXhhwynGXVjfbWcnsGKf40pKXfpjcpUdknyP3YW63EiKCIA5a9HC2soubhCIC4Vt/vWmbkvCl+26UoxHIKYS3bLhfLjNRui/59vNhfCmE4LNF+bPnNy7tuuQstPRFaf1FNnMB+C8muvUhYzK0ZUIQm4PsqHgAb9OTAyEOgDrE5+xBvVCJmRAodWRemSO3U4RYgkSaJv8xpR9XndMFRZf9Hh4CssNMlKU6mEAFaXkX8DY9JvH6oBfVHS8bh5ocXoNJVlRR7LYv6epgKPfXcPQuW2A==
Received: from [192.168.1.116] (abyl12.neoplus.adsl.tpnet.pl. [83.9.31.12])
        by smtp.gmail.com with ESMTPSA id ps7-20020a170906bf4700b00a3c5fa1052csm64186ejb.138.2024.02.10.09.19.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Feb 2024 09:19:10 -0800 (PST)
Message-ID: <7b1a0b84-4a4a-43a4-8698-d22f883e6318@linaro.org>
Date: Sat, 10 Feb 2024 18:19:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] pmdomain: qcom: rpmpd: Add MSM8974PRO+PMA8084
 power domains
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>,
 =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20240210-msm8974-rpmpd-v2-0-595e2ff80ea1@z3ntu.xyz>
 <20240210-msm8974-rpmpd-v2-3-595e2ff80ea1@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240210-msm8974-rpmpd-v2-3-595e2ff80ea1@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/10/24 17:38, Luca Weiss wrote:
> Add the power domains CX & GFX found on MSM8974 devices that use PMA8084
> instead of the standard PM8841+PM8941 combo.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

