Return-Path: <devicetree+bounces-184262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACBFAD3751
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E6927AC17B
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB43E29B774;
	Tue, 10 Jun 2025 12:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f+oaCdpV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E738F2957C6
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749559551; cv=none; b=pIzMGkurnkEHEpoln+k99iQE5AmImUVg4VG7u+ko4z96fG+lNFww0CcMc0H4cub5FLM9Z2j/Y5omyC8NhLHenn8y/+Qrelu45XJtlWPo+lFP5ZeryHYHDzuDjypuRGkEXd7lS+pjlw8mde5vH5csX5OYiSxOG8E6d6I2W4rCHcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749559551; c=relaxed/simple;
	bh=ECwOYI5b2VaA7h0aRDFK8MLU8vsXKHpJZ5sCzn6LJmg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=umrH8Y5pRkdgnur8TM8gmoVr2i28btb6bK2oNELk7/6gYWvA99mEJHpbGM4uUkmPsietHqsUaaigYK8FhlVDnJUT2s+pKYCC8dbnAmALsn4Eqk7xIG9+q9ZEPtTD9P6+rw/Edr9zfHMinONQ+vZxOjOC/yKJIwYBLt45QFGy4DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f+oaCdpV; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-32a8b569b07so2745681fa.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749559548; x=1750164348; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LqL5XJg3suH9NDZDnjmeajU5avldpvnV7zhk3Tu6UWI=;
        b=f+oaCdpVe/nybhYtBNi9ZZmKu2jVUN+T+gwgtgyHGxJAxcXGuRFGj2pyCOyyrEG9qB
         p5sRe6YJwjhEqMudHfpe1QLOeXdiB34qp/Ln1wjwyOfYghlC0pAFqJLZ8YKlKQu5/n3k
         oNA90HgPrnEbnCy07H7kw4KrXqCsskCL0+YdfXc6zzD84CcsHFQmbFgeC5uTIqESzTZp
         /Zx10HtTWymBLap06vloJ5+HnQssNAXu0cbVlO/F47VJj5nVdM3IPeT3/JRA1++x8VEn
         WrHwftbDEpBGeWZNzPhPxLAErIhDslanRk06/J1ClDRA/tbo9sicr2EwCWNaTAKsx0HJ
         UsWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749559548; x=1750164348;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LqL5XJg3suH9NDZDnjmeajU5avldpvnV7zhk3Tu6UWI=;
        b=LgyQJOAlTJR9f7SiEztJiJa3FW5w+wSq1YN6Kz8atJ3iD9bZPyrKBpXoWuIQFXIQrl
         gv+hb/qBK6KDM8I8Nz0oM/O22tJS95jrHFJXo5XwbI02e+u24XJP1/kjPhdB2CVADXHA
         8TOYvDgvj8zGKM3FQqftfOeMuQMxVV8WHfANDm16e3tnm96AeyLep0dC+tlyXDCDqbw6
         /4JR+lRwJ8n3EOCT4+MDlRsgsJOnKM4NFSITpayy2awNpO53i67aRdBtxB8DGOKq23i+
         ZFB2eWp7R/422s6iUf9YksQVNQ9qlEB293fGKrLDdRCFNf3W5/AIHJnBitvZkSnz+5sA
         JR8A==
X-Forwarded-Encrypted: i=1; AJvYcCVjEl0xVLwiXnk1RUAL8U+Ou6+ViHFicX6Y1DbDCB76o6M5Hl2NPt/jbrQMFDDxzS1fws96N6gqxdjn@vger.kernel.org
X-Gm-Message-State: AOJu0YyWkd19L1Ek38KbHTU0wzp81K+nnLVZQF3fEp340cfSIHRAEofX
	TRjYvAfFaJTJG3+8q3ywPtfSQBBhTEBNZWSWEzKrTAhR0aYjIXGMoKhTYwPn3IXMhIo=
X-Gm-Gg: ASbGncvJYFUJS8C2R97F5nA3lCNlbGWEyOgIwEp0tVTVUiCpofsuTdAayj/Ro4q56PL
	i0AUNNAFZkpvx04fR74lc+yrGTllSFWs3XvfX9WzKkUKvHMSpQ5maG3YV1lYrLb1uPjhkVy1VNW
	8eOnbr2g4gbtKEdUusPgdPqezF48IytMq5VlvONyV+mif2VA48kvOpmRcsDiQ03Kuo5JkDzPvnp
	YgxmbqeWvXP26KSZxRRVhM80AuIdY6PZJRwbkwDrAX54uZl5J+8VSemfMnxdNgROukKzdbDBSng
	jaG8rVMse+2XsXNuL72pzHOJNXK4DhwltUUzLPu64sQEXeD9Oq5JyaKCgxQrkmPqyT4i5Y91J2Z
	X1Nnxy6NUpYGGPYtW2WY/BxMqtXy3mjHbsqYwRib7
X-Google-Smtp-Source: AGHT+IHC9YB6oACnOWDNzo0PuZcLT6T2Ygjbu5Xg/VoumKply1Dlzi216VGH9WxR8L+CkelN5PDO1A==
X-Received: by 2002:a05:651c:221f:b0:32a:8ac3:93fc with SMTP id 38308e7fff4ca-32ae3243c47mr13618631fa.4.1749559547806;
        Tue, 10 Jun 2025 05:45:47 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1b0cb82sm15393731fa.16.2025.06.10.05.45.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 05:45:47 -0700 (PDT)
Message-ID: <3e8f8220-1fad-437e-9fa4-5eb628891110@linaro.org>
Date: Tue, 10 Jun 2025 15:45:46 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnect alphabetically
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
 <a072d00e-df91-420b-9363-424bcdf1ed8e@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <a072d00e-df91-420b-9363-424bcdf1ed8e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/10/25 14:14, Bryan O'Donoghue wrote:
> On 10/06/2025 09:33, Vladimir Zapolskiy wrote:
>> Sort the entries of interconnect and interconnect-names lists in
>> alphabetical order.
>>
>> Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>> Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/
>>
>>    .../devicetree/bindings/media/qcom,x1e80100-camss.yaml | 10 +++++-----
>>    1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
>> index c101e42f22ac..7d4e6ef57bf8 100644
>> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
>> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
>> @@ -100,8 +100,8 @@ properties:
>>        items:
>>          - const: ahb
>>          - const: hf_mnoc
>> -      - const: sf_mnoc
>>          - const: sf_icp_mnoc
>> +      - const: sf_mnoc
>>    
>>      iommus:
>>        maxItems: 8
>> @@ -321,15 +321,15 @@ examples:
>>                                 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
>>                                <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
>>                                 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> -                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
>> -                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>>                                <&mmss_noc MASTER_CAMNOC_ICP QCOM_ICC_TAG_ALWAYS
>> +                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
>>                                 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
>>    
>>                interconnect-names = "ahb",
>>                                     "hf_mnoc",
>> -                                 "sf_mnoc",
>> -                                 "sf_icp_mnoc";
>> +                                 "sf_icp_mnoc",
>> +                                 "sf_mnoc";
>>    
>>                iommus = <&apps_smmu 0x800 0x60>,
>>                         <&apps_smmu 0x860 0x60>,
> 
> How is this a Fixes: ?

I call it the fix to the dt-bindings documentation, then what is this
change, if it's not a fix?..

Anyway, if there is a strong disagreement about if it's a fix or not,
the Fixes tag can be dropped from the change, since it's so secondary.

--
Best wishes,
Vladimir

