Return-Path: <devicetree+bounces-138886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CD8A12D17
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:01:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2D0C3A4DA4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7BFE1DB15C;
	Wed, 15 Jan 2025 21:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b8rogVbZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BAA1DACB8
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736974868; cv=none; b=g3uprbWleqn6YcF1pS1VPEg9eU4bTZ1KZaCfO2gAK/I9ZtTwtGRb46VwYN0sIBl2BTQrNkVf3ipKar1kS6c7YXGEgOGI+GaMz53Q7Q0ZryF8GN2EGjUZK8xC1lY4THHb2KjBIHQf/IxvM+ajFIMm0n4Dm/bHzErDqnVsMgKHkkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736974868; c=relaxed/simple;
	bh=Yru/S4SXBY9NO29A74t0YcdN+foUcuveHw4jgqMb01M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bj0YdF2Yxc/pFCHk4NKu6q7AwYuqcTYLtjvXq6B3xRqWzlV/+ZRGBeVUD2D60plH8yQ/KY2whF0RmT8GZIRZGWUewxNJDzQVzMlGec0/VQ0NsifIeqkjrowKyCEiyxvxXM38oxQLeEP9SxS0LtP8IpxqFYcuEUyF+nvlEWznP2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b8rogVbZ; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385e0e224cbso108463f8f.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736974865; x=1737579665; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xzLGGAQlqPStmsjhVya2d8yxZkJH7fx5YrloQvwS7X4=;
        b=b8rogVbZujdxeDJjqYY2JrCwxgIHs63Lsj1U8AtO386vHUn+pbNsh8Yx+uChQySA1H
         A8vjmwf1uQqcNHYEjyTS7DKUK4VJFVQu62ESJV+JhXUqwiBlRLy3XcmV3uHWVPI5QeER
         MA/OstJWBT2Gx17UCX3xHjyMCvOjyEYT5Zcnev1KA0mHDpjgawCa+tpa/6EU1nA7MLAP
         7kRnPRl/TIx1CBnk6e/OScYZc2CTndaYQkCjP25QWnC7kDweCRbFUP1XnMiV5MnHxHGt
         qku1rH3q5YG1IrjATd530fFlnRcbOnyr30L9bOFH8pH0zrVgzk/mQmqqfCRBMaLGMWbg
         gZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736974865; x=1737579665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xzLGGAQlqPStmsjhVya2d8yxZkJH7fx5YrloQvwS7X4=;
        b=QWVwgJHzpIgP38ZZFeFsdeeg+jixJPX/pGdCQLep4vRXnzsUlhsmujl7NZKtZXpMMu
         NdBsOXj2rb1TK3CgS03ejNAO4hsGObSbdVDqyDG1z5dBnyGoa1GZqQOYbj2KOCqk/RkC
         5dWci1EpQG/eA5jDLfLcqLIMnNfsAzNmcXkdi9H/Vs8+LmLAD86VzzUHtXChTu0U7fTI
         bjiJesmqXZ6/PuG6HVGzy7BUwgmm0x2NnoVglPD6VZ5sdoqt8kECHLAjBauySocu2IQ3
         8Gy3eP1GYlz6si+Vz86G+TUX7buOpRp1aeV3EtRDGJYoTrpHpJhzO7RJ0UOzbej/8rAn
         et/g==
X-Forwarded-Encrypted: i=1; AJvYcCUQntE3bnCSh6EVHMBvbxoOOsCkK9rU0pi5NRPT/u7h2Va7sPynv5gitaAa+dNmh5aN0bdL1SKimuu/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv5s0CSSkLOZTqLdOgnQsdS1zJFPGvEEsjLVIUY/DJlvDfH9SK
	aWe8XhCKCwzHXTk/raFhtACvhDLeygVkGEoHRI/0UPwonVS3yAbT7S87BP4w9Ws=
X-Gm-Gg: ASbGncviTFpUG7IaYeGkeEsyaAcK6MWdnP8bKZ7FVQq+5P41WRcn1INNd9pr2KhLpig
	YEj/GC874xTlOTdAxVjkTybDtVTHUzxOE50xFdp4aTohkoh9DbQsSxW/lA2Co4RikpPnP8PO+ke
	F7VRBfQSUwEirRPph1dUrweaGqEHxBHJXRSHv3hVn2APySA9f4cw3B8t961v+geCJfVNNd7R8LS
	SUpjGY/e/UKFTPpDSSi2rR+DBXuIhLEQeMBy4V9jmPs1mxXnNc/+gdOI//eo01+i6spZg==
X-Google-Smtp-Source: AGHT+IHTg22Q+fG9klizKomPZryDwOzxB/InrEh50EdlHpVQwJM10Smqg7fSX+Z4+PMIk0to3OjhDQ==
X-Received: by 2002:adf:c007:0:b0:385:eb8b:3ec6 with SMTP id ffacd0b85a97d-38a872e9356mr18598719f8f.29.1736974864869;
        Wed, 15 Jan 2025 13:01:04 -0800 (PST)
Received: from [192.168.0.35] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7528076sm36591545e9.25.2025.01.15.13.01.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 13:01:03 -0800 (PST)
Message-ID: <238411cd-1bcc-496a-9077-07bb6c4892ec@linaro.org>
Date: Wed, 15 Jan 2025 21:01:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 05/16] media: qcom: camss: csiphy-3ph: Move CSIPHY
 variables to data field inside csiphy struct
To: Laurentiu Tudor <tudor.laurentiu.oss@gmail.com>,
 Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org,
 hverkuil@xs4all.nl
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20250108143733.2761200-1-quic_depengs@quicinc.com>
 <20250108143733.2761200-6-quic_depengs@quicinc.com>
 <79b3e4d6-becf-4bcd-91fa-768b4098d01d@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <79b3e4d6-becf-4bcd-91fa-768b4098d01d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/01/2025 18:01, Laurentiu Tudor wrote:
>> Reviewed-by: default avatarVladimir Zapolskiy 
>> <vladimir.zapolskiy@linaro.org>
> 
> Nit: Something's not right with this tag.
> 
> ---
> Best Regards, Laurentiu

Doh.

@Hans could you possibly drop the "default avatar" when applying ?

---
bod

