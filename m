Return-Path: <devicetree+bounces-167777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74590A8B915
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 14:30:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 783CF7A6998
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 12:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C409423A6;
	Wed, 16 Apr 2025 12:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rbVhYiyh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8250F4C91
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 12:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744806635; cv=none; b=JdUnD4vpVyV8URTjNUYx4RruCPL3DAt+IjQQvSzIttXeAQ6x54QlRwxv2JkAVd42QVlCLVjIoB8p21Um5dqwi3+kRPnY7AWtHhwwJw7dmQI4NbT6T+HMaNDbHT8nTmZNmCMvIjyv5mbt0v3Jzl+MOCBtSrde26hYOafYLFnGU9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744806635; c=relaxed/simple;
	bh=7Gy1XVsPqVy3jE8rob90X3GhP46KcENk/TqZx1KA2ao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z8zBB8wgwk7MYT4SICp1SQLkamWtescLiYnJ2pNyqbo9eajN0ehGIciNxlqU1KlOIuZT/JNZ4hQB3i2zNrXA8rRiclJ0fRVCJjJqQUgQ2kMIYVZcuWou4kDVLPusrU/JFwA2gvdC7qV252NY9nQaPVZeRYGhY6A1pk/8isgIO6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rbVhYiyh; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cfe574976so45689925e9.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 05:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744806631; x=1745411431; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=thGiGMIGVkipYVBXzz8o4Lh3YcuPkNg0CxEG2aMR7f0=;
        b=rbVhYiyh5mrD6Iw0iz1g/9OiDFoXhg5jm5Z4399iuP6IMg5Tujq/Ce9g4xY3bIaVBb
         gcEZOCBrvx5FxxUI/Gh8lqzAIvHf9FItHZZ6TgpAT9D4/guzuJYiJ6LFMobgmYAA5CUT
         9c1wJoqWX6dJr4y1CQ41KC51lF79xhNAZz+vsi3DxDUzUWZVwpUdTbN1L/N/RyIbJvnS
         GmSm6F2uYxW27lpbyUASYi8UnsNvkEYi8v7i0OIqkjzHnLvkwJZWQe+tRXpjVFuc1cFG
         Xtnbyts4AgxYjGmqOFmPBxwuB4yedZbSROHFfcqQ3T49o8cr6KzbrbFvEuuuxoAiNH9D
         dFAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744806631; x=1745411431;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=thGiGMIGVkipYVBXzz8o4Lh3YcuPkNg0CxEG2aMR7f0=;
        b=rNP3qU3rCrcPKd9f0uPqNku5JAQpPcLa7PuDqWG1jIr0IuSSq2YiiN6p4fvJwX559v
         zOiXwJa7e7sAWtwwTl3t7Hh06Ztgmku/WNn4iOxNgU7SayYAfzCpgJgyYw83lLnU9Afz
         PLVAkA4fpUJ6sLnIs3SJE+Nuw9bn0sRyhFK2akE+WSaoQH/9RPPpoSo3BIOYjcXaoCdD
         5wjnfS3AV5TUtxBljiyKqjG7RJS/pbo95SIPKKYc70kTz+60GLI+Mrcn6NsLFuz9Z7rW
         zr+fdfDlsj698KLoI3095PWO1R/+QXUL0vZGytRjbuJrdBKh3FiOuBYZ4AOF+sCIFQBQ
         ELQQ==
X-Forwarded-Encrypted: i=1; AJvYcCV487yiZ7CZkl2qjYwYfzLuVvct95+qBVwLFR+M+nkBr6v1CMUZVo36zov4cJdvNYS9K3ULT4hcVcPw@vger.kernel.org
X-Gm-Message-State: AOJu0YxLHi1thKjwTMehSZfk/8Jef3ATREMOA+PkJ633uaF3pn0TnXub
	m/6b0MYEyoyfdVA0F0JbuTb+KqrOIHW9rZgJf5pqNFRJeqhtpWNIsvGO4JkKPpM=
X-Gm-Gg: ASbGncvn0QY6lhx5cXXHNlCHHikkOWnpxkwC7aWl/TXED2uSqRDh068wJiOKKQrV3VN
	bN44OZUfD+H6YFD2mEQ+BhS/kPrmkUUyKse2itmwIDAp+YD1to9q5Ywp20uNttJ/rBCtXAvD0ex
	pjtI8QA0kUkGmJU8pUNpyV80OzNZx/RDWXKdK6EsuaAiM50VD3bXaU7GRXD5nZzBzVKlYO1U9fy
	hhJRyEpoeEHCcqKYvvrZOp5LFz0H4DN3k6BlzrrCdIYEAJZsfVMRS649y2Bq4lyklllW0IGohx9
	BOkqc7qS5QtfPnxTiO9lrCM10bzXipy/1ELTPh/RP889XPbE0bE1Nez24q+R5YgYwQxaZ0qxWZl
	S71VswA==
X-Google-Smtp-Source: AGHT+IFV0ZUT9ojBwHgcXFzd6sA+i/GEKN9pAQWxVGmSBZdhA5mXH0KdaL62ftj/T9v6Ry/7NbUk5Q==
X-Received: by 2002:a05:600c:350f:b0:43d:7588:66a5 with SMTP id 5b1f17b1804b1-4405d6cc4damr18163555e9.31.1744806630866;
        Wed, 16 Apr 2025 05:30:30 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4405b4c8188sm20161775e9.5.2025.04.16.05.30.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 05:30:30 -0700 (PDT)
Message-ID: <3483e6d2-23f7-40e8-a56d-d7419b808290@linaro.org>
Date: Wed, 16 Apr 2025 13:30:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] media: qcom: camss: Add support for TFE (Spectra 340)
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, bryan.odonoghue@linaro.org,
 rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <yD7X4MYItg2wLMb5iPs1JXadfzhFB7wSFqo_hFbs6K72VbLmTtoOrnwcLJrP4WBvndDUd2eklJl3R4GRWLbl6Q==@protonmail.internalid>
 <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/04/2025 13:09, Loic Poulain wrote:
> Add support for TFE (Thin Front End) found in QCM2290.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Maybe I didn't receive but missing cover-letter for me.

In v2 could you please give an example of how you have tested in your 
cover letter, if not already done so.

---
bod

