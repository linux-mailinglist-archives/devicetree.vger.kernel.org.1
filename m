Return-Path: <devicetree+bounces-185811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E48B4AD92F0
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 18:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9B731E3638
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 16:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF1B20E330;
	Fri, 13 Jun 2025 16:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UrXvI2eT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7203B20297D
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 16:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749832732; cv=none; b=CJIXKHk3tgIpOlwr2421w866RltBbWCqsna6oziBm1LFW/ffFfT0EzM47hFwsUfgDUwK2gAH9GCGfWqBre3G8beAqn8NUXGVYOVFT8rkZmlz+OoyrbxkybhrFZG69VJOs0gyw2MyovZ4AQZfbjOzshJ+SMkmpxgMTPqobYz7YCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749832732; c=relaxed/simple;
	bh=z+N8jqjN/nASPdQ0iP1STfKAC3rAtGf71WFeCKFFe4g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H4MkTHxx3ZLajzY0e4di3GSV/j6up5NQUENRdkbs7Dpi5mSu56RiWizJ/zJW18wn5Spq6HOIqyA8Ezk6lc/GDUxDOpXAg8JrxEfC2Y/vWqlqfg3Avx++/cq5GuV7vFyFwQs/JtY0iufHIzMi1oxxYM/enHy0gsPcH8IVVpasezk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UrXvI2eT; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-553237a1931so195452e87.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 09:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749832728; x=1750437528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cYUtT+6UfKx7Gs9aWpbJRe4xmbx/ClKSljdS1pnK8R4=;
        b=UrXvI2eTdCBGACPLTStoFa8xEcUAVUfn08PBuPpbkf1o2OudeK+zyn4d7/uwR1kpr7
         xY05abDosFePjvXdkjq3Z1G9R7cDDO1/abE1MGoIVo2Kynbdwyx9/pzTsXu+6ooDg4Mr
         Yg+OCI+kQyTIK40or6RBfD73KsUYzD8O1Ly5AOG1WDienuUVAS1IrHjr5HztulybFshF
         pSlyU7aFEnuL9ijCTk+5A5sbZ2FCCT1AT3/2XPa1tfqSse98akdr1To7MHDu2qMWjGuu
         WmB/2TxoU74ABPrDg2gMovvypgfejojxyhoY8tHiKbrueSL9dinJMD1dFZMSNF2N0r/e
         cTAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749832728; x=1750437528;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cYUtT+6UfKx7Gs9aWpbJRe4xmbx/ClKSljdS1pnK8R4=;
        b=c0+QMu4RUA+5rPElngt9Ex6nnGhTYgBEsz+iTTCPb6UH3tOYD4dDwhmP0qa0UOmzOT
         fpcdabFb+A8/t2mSbhTW9UAH70F2k168o/n3beYD1dri7A4mq2wMxTtGyU5N1lg3BXg6
         89rfCxadL7fMrCjqccelUp0KiPqVAarEPgwiCfe/Mg4KAEEJuJ9GtNOpN+ygCkWEPVT2
         z2eMZqM4i0+sMqh6vPEl9FuzmOeL8ACUIXwBWg5wZ2zuA3goSV3zGWg28iuxSU00UYOz
         UraiYhO0xyOwkTV3XUGvjvIuzGuqU1h4jNhWqTcjMMWUIfwDy+iun0LTNAI24bdmpbXF
         fVcg==
X-Forwarded-Encrypted: i=1; AJvYcCW0rlIdWt4y4ZfJINqklKFFggWtbhDIlvt4/g7kerApXRoNp0fVeQhcrVQAs0wv8eq7QYFyPKMkmky1@vger.kernel.org
X-Gm-Message-State: AOJu0YzB/27T3V5RYspyZB380IyIDFSTBlQdUxdLhtHFi/DPGJlQSF6O
	vWaaQm20a/y1tsTgL/xIU57oGR9EyX3jyfr40qYHIVb4TYsZevJEzahcoAiQkvEFGCU=
X-Gm-Gg: ASbGnct5JOs5KDjuwxZ9YfLMBN88zDE2/+UE+BhUwQzpMIdu3H7rdDYRU2gH5RYTWRd
	KwH5dlDb7wi1J1vjfMLovBRjaJOc4nA7glmeo6Jfg+7L5TmJLr5z3Qk9kci3CLGNBwd0IAFqw5C
	iWZVTcmh95qqtAPcOZehYJAymjwpljnv34GMiDdZZW9rWT87K7pe7+8EpdKafF2sAK8XNqyoO6m
	jwkLJWrVgh666nSV86l8O+AC79gEt3OJZkKHbVi4cExdQpUrjwMjrbRByeaAMy72UJcvMxUxH3z
	5npoDs1D4lvijBEj56dScfW6759CtgU4JIJSaJYEawJoVPJsKdQqUz6hOJ5xGxM4Ul4YglSzgEJ
	nVgrqmxUUwQuzjWR6AsxQwabdBC4MO53tzHJHppfOuYaOm+zF32I=
X-Google-Smtp-Source: AGHT+IHj662g3SbQNpP4iPqUmNkvYX9U4szpKPW9FX5yhoIuara4ioYwpzJZkOyb7Ebp5gFoz9go2g==
X-Received: by 2002:a05:6512:acf:b0:553:2421:f5e5 with SMTP id 2adb3069b0e04-553af991409mr356267e87.9.1749832728513;
        Fri, 13 Jun 2025 09:38:48 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1fd7aesm494781e87.258.2025.06.13.09.38.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 09:38:48 -0700 (PDT)
Message-ID: <0b94f65a-ec4c-44a1-8021-cbafe6beab31@linaro.org>
Date: Fri, 13 Jun 2025 19:38:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] media: dt-bindings: Add qcom,msm8939-camss
Content-Language: ru-RU
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250613-camss-8x39-vbif-v5-0-a002301a7730@mailoo.org>
 <20250613-camss-8x39-vbif-v5-3-a002301a7730@mailoo.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250613-camss-8x39-vbif-v5-3-a002301a7730@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/13/25 12:33, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> Add bindings for qcom,msm8939-camss in order to support the camera
> subsystem for MSM8939.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

