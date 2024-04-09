Return-Path: <devicetree+bounces-57545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8B989DD7D
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 17:01:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 869C428958C
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4A8130E4A;
	Tue,  9 Apr 2024 15:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SGD/92gL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9F7130AF9
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 15:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712674839; cv=none; b=QR4goWoceS67iKcv3ENyzvsnVFUWFoz8bXjV/fs9xRENXaVQNb9Uc+lO0wi/mHxXyPw2OGlT7WwJUfKjGqt/FCqcN0S9hTjG1frMRq09X0MTIxyrur7ng1fsoGoLbS2R/nBNZsKQ/VSxfkMTA9/CzfulgWm68ivfYrkjY3GqA5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712674839; c=relaxed/simple;
	bh=qItj2QD9lAb71zQHuCbigKkildQRgrro60WwdGPxFY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BDMSmM/iGzitUkqOfoQvRSZ6347/zznLdKGxonc/uM5/BsB9q1e9CzlOFaTMUPkinwZJM4+Avs+cRkAGJKSBFAh8FfgmbyebTS7Ur0StczEfEkY4hfJMHY9AiAX/43axzPCy2zpOSygVvtRR2t/irSk3wQ4tHg0W1oJFI/ocQ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SGD/92gL; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-516dbc36918so4030276e87.0
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 08:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712674836; x=1713279636; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=crTB/gy+FeOZ86NhZBPcpLgT33Zu4oRIi6sok1xfkbU=;
        b=SGD/92gL+364sAt+iJpFPMIBwsaV2erLYnNkfT6rBgH1UaPEgWfb2ZHzCq2fnaTD/E
         JokkWRCDiyRRfGw0lFyyt2DMQ3C2j/RR/tFm4F3uUg2dDWCAoTpi5CJeg8UKyzUpBSDe
         yddsgOMT7CzMJtnLPvrXK8Mc0G3ozVmTsfR2fOy5VIuHP3t+2PxWnu3+IZCcklW/WFGJ
         uJUYJcGQCG1sBnyxwF+35ewD+x1yY2FCVRSZ0iq+Yn++vVkt5YIGFFMC0Oid2k7XZycD
         ZzgOWNUGQB/Ho64ICKC1V5tJh0AlEwU2KIC1iUXwf+Bx5kO3JkOKuHRkJYd3nRo2ZXs7
         VWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712674836; x=1713279636;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=crTB/gy+FeOZ86NhZBPcpLgT33Zu4oRIi6sok1xfkbU=;
        b=Wti40W2vlF7AXm8+eZ6wchmFr6lZi555riJ8ETG74iyuD/sgxzSzA+17zKpwuAIlV0
         TPpLMxcK4n5yA1LWLisevJxCh5Xm7XQTwi2o6Qis+bclL5ICMso92nz+9ywxPeUrgOuN
         VUn8E8Pr0go3dhihz5WCuxJInbd2cEMLo0pxsH12yoxrFeFeZoxSgblGVKUNrVvvmFmS
         gl1h5EXAObtTBs8uDkY4GJEu526EA1eQyoySOtzc7ZFZrn4d24fGqQ4cfcgGHEQYFowW
         w+JgKJlRmK1OiD2+sScYGHP8J+OywEz5wMpdN+BGvt3f7l/gQ8ztxcrpN8hIw8iAq9sa
         uDAw==
X-Forwarded-Encrypted: i=1; AJvYcCV4DbYwLac1aN0AZZqgqvyvc+6PtYL6TZgPhhZauTqnkZw4UqWLWPAOcTEK1P4HVNOn/23K53ObBujRevGuh1Fna/EtR0+pczL5cQ==
X-Gm-Message-State: AOJu0YzINbL90TU8VilWvqEXzW8R5oV0rySVt8ezSr37fgM7SgwZkgms
	wAGgqgIpvJmGMJsfoNCttSmO5nTam+fuY670vz2Rk5n1scfwc0JGrtsOAv0/Y74=
X-Google-Smtp-Source: AGHT+IEmRv/Pa2RYL2i3ImdZiqU+iEXqagtRJ1iqSlGE6rpYrqyXkdCbHIxXJWw5YwmiVjfoN9DeHQ==
X-Received: by 2002:ac2:539c:0:b0:515:9185:652f with SMTP id g28-20020ac2539c000000b005159185652fmr7371004lfh.33.1712674836028;
        Tue, 09 Apr 2024 08:00:36 -0700 (PDT)
Received: from [172.30.205.99] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f9-20020a193809000000b00516aff23fc1sm1607617lfa.138.2024.04.09.08.00.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 08:00:35 -0700 (PDT)
Message-ID: <d9b2abe9-0a9f-459a-a91d-2377866fb826@linaro.org>
Date: Tue, 9 Apr 2024 17:00:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sm8450-hdk: add USB-C
 orientation GPIO
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240409-hdk-orientation-gpios-v2-0-658efd993987@linaro.org>
 <20240409-hdk-orientation-gpios-v2-3-658efd993987@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240409-hdk-orientation-gpios-v2-3-658efd993987@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/9/24 16:28, Dmitry Baryshkov wrote:
> Define the USB-C orientation GPIO so that the USB-C port orientation is
> known without having to resort to the altmode notifications.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

