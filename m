Return-Path: <devicetree+bounces-232042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E365C13D1C
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D9B94565879
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6DBF3019C3;
	Tue, 28 Oct 2025 09:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i4wEuk65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED53030147E
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761643567; cv=none; b=VtJfDMIJNb99Nifiuksoote2xYKQwFrZo2x8uSg6FRcm65Z0+dHPG87zlKnYcvIIkyydNyYOH0t3cmm2pT1L1wRUMXHzRbB9vXh2SHBLUFtbsbw5pC7o8HK9rq5VGQ94nZCs7vevtbFJN4VTzfk00j9jDcTX15zgb0jM4/UXHJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761643567; c=relaxed/simple;
	bh=G3fa4DEKYJsrbjpYbG8l1S+0+U7oaIpFhApn3v9mVok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RGQZ/4ZEYTQtyJxBlal43k6aR40NzqmfaRDJpFXIKjcX78NFltLtFQ/B8kRMCecWsWMthA0uxrUfHtNbOwOIugiMeRQCf0q1XAaILUnAuM18TC/57iFRwVsvza3VSfb/2YjuWPEkVvoOJLaFUt4L/+0kQ5FjVYzHYoaMwGm63bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i4wEuk65; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-475dd559b0bso41620115e9.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761643564; x=1762248364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6WIhNUyRI0kZl2LUkLnytvQqzIt3iG3+keT/4POrd5A=;
        b=i4wEuk65Uva9JyllG5C3QAYlNH4CN9Ckyf3TnlnzuwawRg/lQIuwBvSboDw89RtB8j
         DrRkpo+XKGbDGzW342mx807zqrdPXxbPl3z150+96RbmE+VMnaxftxuNVg69bmCcKDHi
         b5MQV3sUliY/GOUPsn7/sXQtEs9CwwJEAzWHlzrUFPZW8vF14WGE2emLog1az3rmohVU
         4QC8GTHe2vqw2Oa31KkhnoqLCdx68gXonYBuJFuJG5Nwihqfn8dXj3p4ZH2kMSJ70jFD
         gOpOLdDhOWqGtvUfdawcU1sHQsTLLZaq9w1c7FzAqVU3CLuQgHkt7pn+VjWNOyXIcSTq
         MCQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761643564; x=1762248364;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6WIhNUyRI0kZl2LUkLnytvQqzIt3iG3+keT/4POrd5A=;
        b=eQ7Zpu0L2eq7yczv9lt+roKNQL0A1a/mGidE2ro41BUJUo+vUhZ+HcPnndX8n87Uix
         3rTyTb1XOP+wDnspVnCx65wq7qAUFe2lRFe61/xfgcEeBb+vhbuvoGxMSVgO0J8IKuls
         p9eZYoUkSi+1AZmry6biQMBDLh84Cn5j0248Q9HDffQw9zmLBrog1CNW2xLSzbDyndsw
         px3XUvvpc6Kj6jnmWEQvZvOdmiVXf87zbQpCrBjC/2wl796VDR/cBpdCSfvJswgZ076c
         Oa9PP9gqDvCm/99c6AVAWTDovfijpym9v+s8mvaZ6WX+b8LzCpuerjmX/3LoISML3Tuu
         aelg==
X-Forwarded-Encrypted: i=1; AJvYcCUqDgjGpVPzWfz7NmoWFUs6Ub6s0eWxgwV4u7DvScB60zvvHL6yzoACZEhogfSnoA+dv5zkaO8D7gCF@vger.kernel.org
X-Gm-Message-State: AOJu0YyGSYN2T1Ekn1qWC0wnGGYrZpe1E9mT335FUkd2GI4/Kgm5g6OL
	ZUM2nVlQeM4JAXc0HNoLVUH+MVHYgoSuUrBvGCNXZ7breptXey099j7P9FaMEwLOvvc=
X-Gm-Gg: ASbGncve+6XM0I2lRtUBAJNdWgGh7rPnzW7ypUTZyjOLYVYri9j9350c4kOAnpUOXov
	I/feN5tjZmW5CF0Rs3Vp/8vstjEKoJS5kVqAFdSSCyd0X0fqcXzBKOD25DENI3dbTqPuxl47n5C
	FMDl+YeM2WbPxHYTg3GnUzmF3f79i0g87rjtBq4QN/G8IRFH0dgQfgbWBhDG4IiGaHJxYjUyNIV
	oTiV03b81TOFAnQ6Ig4MuPQCwr/l95KhzOKZvQXmUAWfdeZZANkH6AFbXSA2V92kvpKOvKOFyZy
	kJFKFDMYfwdaMEyayIKt6PhmVBiRgdj7Rs6Rer7RpIjmfgQfWlKBSYAfDmTvyGyAW4w2oB2EwI3
	yF8zdhdKEKpr6kriCQMja8YIGChT1VaObFiO4YDz+lhPY+MtUEl/Nv4T8HP4vJF7k/U9yKE2+y9
	3WhjDAcQyVphXg5KhbCMoA325xkwcXNUeaasCUlEJVe1QhMLlZJTXdJA==
X-Google-Smtp-Source: AGHT+IG7SGjSk8s/DTqkizgYBNEXizsx92+JaKgr3Y3fQprN5gLYg9kJPcLa3kFS/x+7fFwVaMqF7g==
X-Received: by 2002:a05:600c:470b:b0:46e:32a5:bd8d with SMTP id 5b1f17b1804b1-47717df9dc0mr25845305e9.3.1761643564349;
        Tue, 28 Oct 2025 02:26:04 -0700 (PDT)
Received: from [192.168.0.163] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd035dc2sm188343505e9.5.2025.10.28.02.26.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 02:26:03 -0700 (PDT)
Message-ID: <7e7e35f3-82b6-4757-bbcd-38e0e867b184@linaro.org>
Date: Tue, 28 Oct 2025 09:26:02 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] media: qcom: camss: Add SM6350 support
To: Luca Weiss <luca.weiss@fairphone.com>, Bryan O'Donoghue <bod@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251024-sm6350-camss-v1-0-63d626638add@fairphone.com>
 <20251024-sm6350-camss-v1-2-63d626638add@fairphone.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251024-sm6350-camss-v1-2-63d626638add@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/10/2025 13:24, Luca Weiss wrote:
> +		.regulators = { "vdda-0.9", "vdda-1.25" },

I'd like a little bit more consistency with the regulator names.

0p9 1p2 instead of 0.9 and 1.25

---
bod

