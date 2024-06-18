Return-Path: <devicetree+bounces-76964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC4890CAE2
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:02:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C5461F22D9F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F21F214B06C;
	Tue, 18 Jun 2024 11:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jJGxUcBO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A50143898
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 11:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718711670; cv=none; b=m8gCqjta9Q8+PGsBGn85gwgNpFwBjztGllu9AEBZfemurVjip16JReEXb8pCGsHK/ICqp/4Rr+DH/3Zkd3QTej7RsFpMoYAdrNnu8yyX6yrNCSFr6obqUt+aYHO0noDXLk5jh/1ggcGLXwfwI7sHd7UmiQrVHbv7gVldbQOZmbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718711670; c=relaxed/simple;
	bh=HcJujJfkQBTmZ3DibezE+G0B3FO/61FIBdkgOhELaik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eekfOAQzgE7CIrZcHXJcpIZ7iKm0d0GZ2B8+TxeSuvRs1bdREBcivyXhq8vWhnYlzpTOmXZOFKLv2SMwmnotJVoRQDDdkNcqy79T2g0XKn3/5B5rNnEaQLKj5ww++MbMYKxjmtz/lwHoFNLXXBvvMS70sVI9qlNd5Cvb8CzIHwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jJGxUcBO; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ebeefb9a7fso70814811fa.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 04:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718711667; x=1719316467; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2CImRxcj0sqY8tb0uHlqWB1E5GbxaXH/mqYnGe/rFRg=;
        b=jJGxUcBO4BJLlFZ2VQYr4GsK22CJYdzmRMyIXw28mDvvVFWOKRhi8qKECE5fN8Nyy/
         KBqdnBhDODSFqTrOcc/yU9W9nilttEgrDQOFMoRL1y05df7J6At9yTuUGMnXt5PgLFWb
         4oHlqZ+7IeJ0MYfVg0V+eWTTbW7T5SIknzAM0wY6V5rBWno3h0EyxYypLTdd+OnJPaIx
         q/B9b2GyKlQeAMHalHRvhvCRalRnKx4eCHtFbnD8G+GgoHFvbdq0+HNSFrJ66rZANv4T
         V5vxPu2UtGyGOrCgmx/qKSxUOaMPt2nFCqc3N0E6ACIkSBHzjPEy2mxcPGmK/tnbJ5Ry
         HLsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718711667; x=1719316467;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2CImRxcj0sqY8tb0uHlqWB1E5GbxaXH/mqYnGe/rFRg=;
        b=dAEalqLoOEUAirSOj4ukV4wxZBUebNatmfCZObZC67mrjd9Ln9m0L71tih96EnaAXi
         axIY/XOexAlwkIlAYUc5ReZq75ym0quEfDoYg80SpAFPUn5jNAFN/S+LHak6/2sXfnJr
         wxZW48RYkKvzXYFgAHwBrbxLT6Yts6gQMaIDPf6ymuBqqeV/iew1l0qHL71q95xT8Uys
         v7EImmEBujx7+fHgHy3hKbvjB9zdoIadQy8lvM2a4PJegycVZ1HvSob7iXtSj79bhjrS
         AhktJlKX0HGVKDxvHqybxsNjmqq+exc9Mc4IiJ0ffaXl1oX8ez0hPujrZ/zrU/vhLD8+
         R6cw==
X-Forwarded-Encrypted: i=1; AJvYcCUuHnFXizWlAEtI1GMnnz2MeuScDOh+qaWY7LfGr6JMjub3w5cUe6tJDfSwk6YApEZJmHtcto18yAby0SUpsklAPDyWN8XbabUdLg==
X-Gm-Message-State: AOJu0Yy1mOWOu8LkihHfrZVlCTk95ZpQJWCudIyivMTdZqsy/tDw+Gxc
	435ezORdrF8JsEmbt/tRincuwMl26A/yB3f4QbrV4lxC+mtcKhTkGwWyVdSC0H8=
X-Google-Smtp-Source: AGHT+IF7wjYkkQFQakNw3p0WW30S+1nt9H2rjtDlB1CQ5eBznQTvIVTf7VadwyG2ee0wPE771uVkKg==
X-Received: by 2002:a19:e015:0:b0:52c:a483:4cc6 with SMTP id 2adb3069b0e04-52ca6e6dd0emr7014214e87.36.1718711667488;
        Tue, 18 Jun 2024 04:54:27 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2872471sm1500912e87.175.2024.06.18.04.54.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 04:54:27 -0700 (PDT)
Message-ID: <312689d0-3d94-42bb-8359-2e498e09f2ca@linaro.org>
Date: Tue, 18 Jun 2024 13:54:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] ARM: dts: qcom: msm8926-motorola-peregrine: Update
 temperature sensor
To: git@apitzsch.eu, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20240617-peregrine-v2-0-c8835d2da7af@apitzsch.eu>
 <20240617-peregrine-v2-2-c8835d2da7af@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240617-peregrine-v2-2-c8835d2da7af@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 6/17/24 23:22, André Apitzsch via B4 Relay wrote:
> From: André Apitzsch <git@apitzsch.eu>
> 
> Add alert interrupt for the temperature sensor of Motorola Moto G 4G
> (2013), although not used by the driver yet.
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

