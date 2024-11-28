Return-Path: <devicetree+bounces-125295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3046C9DB7F4
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA7AE280EFF
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 12:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E9519D092;
	Thu, 28 Nov 2024 12:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vG/FNAVb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465031974FE
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 12:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732798461; cv=none; b=aaAddakWvebUSZ7ZsLENROVmiQqJyrwWiQq62653HK9z0Fpjk1s+sHt8LDSxyj4emLxZEb841R6D/SCsIFI43xrGfAaS8hi/eAUTnbOh0lOYQv9KjFYjpjdjhNLNR7VzP4ABpGdPCJRSHRKdGLWgZWDUlvKani8yAtYHurBLcGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732798461; c=relaxed/simple;
	bh=JbK666IvR99GAgHTs8lLb3xdOQ6oiiw7jTESJQOpgg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Czqi1sub+8RdS9IKY+E8u/QNjWzV/jERmyh7nCb45YAnjA/X+5RilhGWnzJ2cr7kgPJtKekDbPKH0JSRCEAIu5hI0l+eeAbJnZ+PwmsMLz0jmTdfv2sIVk9MRasPr+3qzEerfh4DTNtDvkK3RMVHPe1uesBecJ7rbPjvaxvaKkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vG/FNAVb; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38232c6311fso529360f8f.3
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 04:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732798458; x=1733403258; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VNkrh/sDtdbdwO6uUAVnsS4BZrJy5eiLU2ygKncvgJ8=;
        b=vG/FNAVbw8Sniz0ttdG9eZGHe17NTX7BHRDX+yVLt+HOoff2WBEvdPDWmqab2Kh6Qo
         lESqtmTeimJbtQn7tqnUD7W7iDd7WtV1s/xWOltqW9Wi8rdsM8+5pwHK+o41AxpCQ1Bb
         tzN9ez6B70laESS64J7/PqkLX3Qi5MUaKQCIFdH89Wo3g4oQTzD55lkauW4netO1ahv4
         e8imtW6g3TwRX9AWq2POOkeVarBi6lAsZ6OmquRtXIjvLsV+as/uX+BAjwVr3ixWJoe8
         LiHBk1EVS0sD88QTzHuiUbVk3DnSbcHXwDYN6uTlBAPVvc83ccRjcif2RizxShn+TpmA
         xUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732798458; x=1733403258;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VNkrh/sDtdbdwO6uUAVnsS4BZrJy5eiLU2ygKncvgJ8=;
        b=iB0RxVB+mOT8tTiypyomeD1fsfjfURa9ElY3U8a8CuUHBq8lLSbhvPQYPnb/CMqKJL
         m9Fl/zRvRlsGn/qJXrm2XBJHGzmaJyjcq1SWV2ukXtHE9wpcodsM68i12ntf5dnVLzF9
         X8mpvMGSM/bXcCnw2SCIQeLiwkdpr+eDAlPJUJayff+I4iJlpMnrUtouPUuVRBSt7qBQ
         zvMbNqVXJci5EkqgvgF7C+RX8j+A9Caq31S/X1t/AamMVmmFIhVGUdYZ0RLaAVInY/jy
         8ibk0nDUMbPwhpARNz1v4xKzabzm1WJbyine8bae4oXFDWs+7A7ehvwRBt6V9U4Be+8K
         vCcA==
X-Forwarded-Encrypted: i=1; AJvYcCUKU4orDbTvWhWxY4hE9EhZ6mOBou2MNsdc+UlefwePv476hbhdfTVbv38S0dnSv0W6qrMVJqL5ez82@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/kPbWSJeFnjeIQhOj9V2vnovZGfBOJyDfbQZcUjY3Qty+m4SM
	7MFmFKHMr24zd09zt9Way33hqb1imSExzLqMzQ/t4nXDHC+I9j5hTAfInHkIBWY=
X-Gm-Gg: ASbGncvLn8Zv37Y0fhjFXTORP4vBOWJFRfadKlulo7cOiukubZ5PTB5eXBWRleHgvcw
	0Om6ju8PTC6uAkJSLOTSJqQVzrueTw1+p/gRjFq+yUgwE8fv3I2C6yjYGJC7uzoqqO9Yq3V3Lk2
	Gj/csnUco4vLgfKrvlre35td/WILc1LC542HMw/Tc3PH5QlPA11nYltWJ942few7PQMNHEw12rW
	pUm9Gw/ZbZl8Wb+R6JguKCWuzSHQUE2DkK4GH7HEVl2ZwZ8yAn6nfTQNLJB/Ug=
X-Google-Smtp-Source: AGHT+IH/SWChFnFdYH46d0Zm8lHs8Z6HYuLx9vKVGjOt42Hf8xNwi4grsDUVNndAg0+gl115y3EyBw==
X-Received: by 2002:a05:6000:1867:b0:382:50a7:beef with SMTP id ffacd0b85a97d-385c6ebda1emr6295771f8f.24.1732798457708;
        Thu, 28 Nov 2024 04:54:17 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa74ea95sm53021065e9.5.2024.11.28.04.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 04:54:17 -0800 (PST)
Message-ID: <71dd9aec-e2b4-4323-aeb6-53f2491005b3@linaro.org>
Date: Thu, 28 Nov 2024 12:54:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] media: venus: Add support for static video
 encoder/decoder declarations
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: quic_renjiang@quicinc.com, quic_vnagar@quicinc.com,
 quic_dikshita@quicinc.com, konradybcio@kernel.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>, devicetree@vger.kernel.org
References: <20241127-media-staging-24-11-25-rb3-hw-compat-string-v2-0-c010fd45f7ff@linaro.org>
 <20241127-media-staging-24-11-25-rb3-hw-compat-string-v2-1-c010fd45f7ff@linaro.org>
 <ad906baa-a93f-42c4-bbe5-968fa939c653@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ad906baa-a93f-42c4-bbe5-968fa939c653@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/11/2024 09:02, Vladimir Zapolskiy wrote:
>> +    np = of_changeset_create_node(ocs, dev->of_node, node_name);
>> +    if (!np) {
>> +        dev_err(dev, "Unable to create new node\n");
>> +        return -ENODEV;
> 
> Leaked reference to np.

I don't believe that's a leak, because you only release np when it is 
non-NULL.

>> +    }
>> +
>> +    ret = of_changeset_add_prop_string(ocs, np, "compatible", compat);
>> +    if (ret)
>> +        dev_err(dev, "unable to add %s\n", compat);
>> +
>> +    of_node_put(np); 

Which we do here.

However, I think I have missed a of_changeset_destroy(ocs); on the error 
path.

@ref drivers/pci/of.c::of_pci_make_dev_node()

---
bod


