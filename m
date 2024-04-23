Return-Path: <devicetree+bounces-61956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EC08AF3C8
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 18:22:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D22681C2338E
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 16:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2DAA13CF91;
	Tue, 23 Apr 2024 16:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VjLlekDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8D113BACF
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 16:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713889341; cv=none; b=tPjksRmMuJ9aX1gtiYERsUHLcPzXz0Nr7lN4YRKBZ4EPODTbULNamoCOfxTCsfKpmy083hd+tnIQWPB7rpfEgw8JaszGW/QmTETuCBQS6AbA7tWn57pfIHgxE6/Y4/g4y3hzaM62MK43Np3kNiURHouhqx3qAomFphzfcxOKi5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713889341; c=relaxed/simple;
	bh=zO79EE5lca96y5tk1jBN2RNddNarlFD6LibZvjCWZN8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KqzsWJ7FMb4dVkaauWIV2HV6HWaZqY2z4R4ALdoXx3gR91OPvp1KL1H+OJ67S0FBxUJF8xguJx8V3kFLRgDFbEdQggTYU7UhjaPxwbotb+1IxZ4MZDJA+qsNkjeBk3CcGj1fz/EXIR9xtCMzUn8pePWJYyy2RRr0GggMaM2VPoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VjLlekDd; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51acb95b892so5021964e87.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 09:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713889337; x=1714494137; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rryQLukNGX6bltbPu3dT4IMJ7VdkGWG4t49Lq/kGVaM=;
        b=VjLlekDdLPh3AoMfFCjl7qtwNdQsBLEeD1eFpRAqxuiqwgvYAO4S3NR9hGfu8NPqXa
         S15rXRJ0MIGEWxkpM0S3SwSXq+mbFPPRKk4KxeACIA1R6dVhZJV+ih4KXGPhzyk8CpZW
         MJuqLZAhlYvg4TSe9GEGX3EvHH9yiAC4UFGeXcDY2tsGPQ1iY5CVvVu1Ad4MnkcdksIx
         lCobJZiTeTacDMPJtB7tvQ0DR7+FIcDhN6AnUo5otGLIDzaP44DVAuOTEsMIi2kx3l4G
         L5D6+sTUCQq2UUusriZtRvLihrwHr4TnjHcPzUyYiqtbO0ID581fFn2UZrpQF2ymvNwm
         yTig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713889337; x=1714494137;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rryQLukNGX6bltbPu3dT4IMJ7VdkGWG4t49Lq/kGVaM=;
        b=O7oZiN0L7KL1U/oEm5/r2Wgk63aEs1tQfr/jeqtby3f0fjoIdq66tIh6wCnjhs/nYj
         v7sssZudlvpm4WyxzOc9KxGXH1/oecAvaaoynxOXtFhXr8tkXZu0PiXKr37bqSsd8q79
         3nW0U6vx72I08321p9J8Y1Ex2A/rcvzpoVsVb9QYiSd4X9SuklgsV+5I+xGDzcKF6fFH
         oyhAHiTuv5HSFExAjCBAML4LTU7GJNKLedmJLAQS9kB5WZms1WInp7ELRsJqe6WttkuH
         hZ6sBltYAHamH5YvO04nCkTXhdjiwBhOEFs7UvWiYFB+Z1gwTsM4jX1D6lPcOC49hQw5
         Nrww==
X-Forwarded-Encrypted: i=1; AJvYcCWbUVWm66TrAFyo1e3+VWTIvV0Epcp4y5vLJrbWwioMQqDtpWnsgQM7q5PjVFVqLqBM4pKa/KubE+kac7W2l7HSej42h5TyiOyziQ==
X-Gm-Message-State: AOJu0YzGvzreCXZCmYjI6YGVBhEfwJhI08HUMEfUjRiNENi8ObkkxN7g
	NPgFsR4pDvKQAsQheE4HCcT+AkNR5gVsfneZMAX2ZZdri8/BzPcK0ENwH+2ehd8=
X-Google-Smtp-Source: AGHT+IH3nmHnEwYavp+3AF85hgClGpBGLwqG5/uE47MnsvBC78Cj0bT1r9wjIUlQwfxrbFen9V+3jQ==
X-Received: by 2002:ac2:4143:0:b0:515:a8c9:6e99 with SMTP id c3-20020ac24143000000b00515a8c96e99mr26825lfi.5.1713889337192;
        Tue, 23 Apr 2024 09:22:17 -0700 (PDT)
Received: from [172.30.205.0] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u21-20020ac24c35000000b0051b246caaddsm745480lfq.259.2024.04.23.09.22.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 09:22:16 -0700 (PDT)
Message-ID: <808243c7-bc27-46d8-8dc6-ce7932931e01@linaro.org>
Date: Tue, 23 Apr 2024 18:22:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: dma: Drop unused QCom hidma binding
To: "Rob Herring (Arm)" <robh@kernel.org>, Sinan Kaya <okaya@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240423161413.481670-1-robh@kernel.org>
 <20240423161413.481670-2-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240423161413.481670-2-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/23/24 18:14, Rob Herring (Arm) wrote:
> The QCom hidma binding was used on a defunct QCom server platform which
> mainly used ACPI. DT support in the Linux driver has been broken since
> 2018, so it seems this binding is unused and can be dropped.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

