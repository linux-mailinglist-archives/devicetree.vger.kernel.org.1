Return-Path: <devicetree+bounces-178964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78346ABE37B
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:14:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B79E160D36
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:14:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8632D27FB2D;
	Tue, 20 May 2025 19:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rjyEKmom"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987D3BA45
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747768440; cv=none; b=PzoBY/RtHe9ejTwXkwmo+le2Hf03lb50zzzfywMVuHkeSPG8P2U6xP57q3Vehd4Ml7VdqaCPYiMpifv1Sxnddb6g/8wfYPjK2lxzAiJIQa3wyVWLmOP4IURj/BoNsnhEX+4zy+XZOVs7g9osqgm2scCbY6iZqaPFkz6Lm9pwpUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747768440; c=relaxed/simple;
	bh=Gg/5+OCk/JudsRhzmSzNzSjmr7paX/t9QtRcjJ+oG1o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cFDCi4Q5bojU++2j9rg9x8c+knoJc8wDbUc7EddTCoxmCddTivW6hilPyP4WwSdDabW9q8b2b0/r2HBOWjGPfUSIN6X3vwBBWGsYk0JI9jtSKbv+6YIg9DoUArUIFGcI5okppeJX/exFL/JxbpTabOW8iukhkxbLSzPaJAD+kQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rjyEKmom; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-442f9043f56so33248905e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 12:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747768437; x=1748373237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I2ItjY+ppg/pynow7rBGAmh3XSiTvHkJttkVqK8jN38=;
        b=rjyEKmomrbo9OLuE8V3A/iyAW4qPfEdpJpzRZBgxbQgf96I1Q5Ckpcq26xPSMUZ9hi
         KJOB3c5DHS7zMoKbKd2rPmzNg1Grui8zZl86gQJRvz8VGh/pLabYqmHGX9GULd6cy63F
         tmlRNVO8CgFLNKAPPKDemwOf0Dip6i1zDswMSK9fmbTf9Pqg8opklyOtGqcCzERyFl0E
         OGVy9UJib0cF7N9131E2K/0PktyAP6FSv8A1pWLhfOQ00BGOhTLTuxPoAeQo1x2vaC3Y
         7C4dXUKwQcK3rzdXtzk7efdzTwP+4TcETOoF7VnsSXsTiR+/fHsWcAZS98ifUw4gExze
         JOeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747768437; x=1748373237;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I2ItjY+ppg/pynow7rBGAmh3XSiTvHkJttkVqK8jN38=;
        b=PZGaBCsD6xc/x9VePtvIK3+fP06+ZBSK4vNG/3PTsb3LrthCRTTtJ3xQY8/fButVCM
         tFqkYtsb+Ft1a0Vq7QdSUsjo4Ap/y+SwfEcfEIEU7gJxh1bCSLfBbpfvE2Qky5FtNtg7
         /0f/S86LqLZnmZSykAVBVroyY0RAH9amI+oFEArS8WncdZEDEaQ7BD1ZBZN0H5TPnQTs
         FrQViXOzqHDZaJ0r/gxJfJaFRetVzYrwfqSFuy3lf6LvJrsov4th5QcWBWC/Ams4/cEE
         FCQ8CAk40cF8zglFlkBYYZvJqlu5SYJEssaYnWAGVWYQK/f8ysnAk+Mpvcr9PhrcO3nL
         /6fQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOqZfbp+LH2kNSqvakHYPjs3FhHfAHIQ+zI5G+q7t+471tlyP4KyDq26z1GtPOWx7ubwZqwIs5Xrr8@vger.kernel.org
X-Gm-Message-State: AOJu0YwA3kV0FTKVypbzBVquiQ8DpW7v3VVArvPBn7UfMVgM7poSL2wy
	Oa7Un5U5qd+m73DlZpMf8kvP9hRdT9ZLVpHuTwZEVGdVGu8Q7VbeH4WYTlTnrlawKe8=
X-Gm-Gg: ASbGncuTFjWnHW9yJ0O5dx+3pM5zb8DvLxvflJUCdHBq65rTzUE60H8kgnsSwAaIBFA
	9V2fSUOQkggO6KFVQX51Xbi2pZMMkoMeMG2dl109KSWqFijpZdvI+QpanoAQMBqEUSyC0GIZoeH
	biaDijHDRxHvVemHQT0G4BJZOrkEtFS/aZtXs7Qy41M7XM5zKGmTN3JE2tqT6vqiIlbl2VV2qgg
	/qDoVHnG83qZNSQcveV48qQXbySpEt9J99/uxExNFPfXBOurTyVAnGwLeHubfz+lwPOKKBpWNUm
	nqWwh9bP1dviXFaFxxxRNwKFp5q2giVq1f34c0JaMInsAdRcrA2XaYJLqvknXCaTfKCxA5a+FZC
	G3JLIAVQ3v6gBOhnLhTb8zPpDKEU=
X-Google-Smtp-Source: AGHT+IGcrcIy9jaEUMKlVB1MmWkeb0LtHs9wFmRKy8FWnDAUbDIjQBgUB938Lg+/2PJo87PETkuX7g==
X-Received: by 2002:a05:600c:c0d2:20b0:43c:f597:d589 with SMTP id 5b1f17b1804b1-442fda2e7d3mr96042025e9.27.1747768436961;
        Tue, 20 May 2025 12:13:56 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f6f0554fsm40830215e9.9.2025.05.20.12.13.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 12:13:56 -0700 (PDT)
Message-ID: <f658468d-1780-4995-b9df-96dc0203e045@linaro.org>
Date: Tue, 20 May 2025 20:13:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] media: qcom: camss: Add support for MSM8939
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250520-camss-8x39-vbif-v1-0-a12cd6006af9@mailoo.org>
 <20250520-camss-8x39-vbif-v1-2-a12cd6006af9@mailoo.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250520-camss-8x39-vbif-v1-2-a12cd6006af9@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/05/2025 19:39, Vincent Knecht via B4 Relay wrote:
> +static const struct camss_subdev_resources csiphy_res_8x39[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = {},

Regulators should be declared with the PHY not the CSID.

---
bod

