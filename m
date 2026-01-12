Return-Path: <devicetree+bounces-253898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F01D12772
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:08:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89009301E5A8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261AF30171A;
	Mon, 12 Jan 2026 12:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="km1upu8c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71463559CD
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768219715; cv=none; b=qQ/Qx4FDBSRxG91zrEWpYxWaTotsq/HUG+xwzFxpowPdKcu0MAZjeSiBM0TKmq4qiklYYNzPZZ/fRFyWxAhogFntL0kjqmqHfR+8RkYOXYWGgggq6Tlwdf3mkl3MLqwMnZ2ui/vWzolwl6iL5Vf9R4beWLABiHb9/LjH9P6jR+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768219715; c=relaxed/simple;
	bh=oXDBiD54nDhDPSl9qGLWo6F/JzpP0JIj6oqpvLcbyyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fso9BVOaXYXXB3M1k/XdJAECYsNjoSIkzlrbiYdogL3HksndV37nrIQ3rJHBXwAF2lP56pXtMV/N6rmFqa4rk63reo5/u2A3BE9yjRkFxav4IzRAqHTgTEa0KEaDO4sslsVm/gY1K45Kn9UHWMNJh/cjNWyIeuV69lFKOLf2vws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=km1upu8c; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42fb5810d39so3262494f8f.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 04:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768219712; x=1768824512; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Frq2FNvpHlVXL9K9cW2q2Tna3UfQNHXR0J95x0vAQA8=;
        b=km1upu8cUJgurKkfaL7BA84qGSIt3XlcBD3CR5T1fH0Ld2bFDQqB4MYqhjPlx4grea
         rZFhvD/iVpWQSEIqTkE7PgNJEcPZaDJy0dcl0w/IvscUfsxNMsRMFjJori8pAIoDRPlI
         8HBbtjhn0bjEKwRYX0C003TGZtElng+ga8L83uLPyG/s3LdQnovE4tRcuzX8MIDIx8+3
         NsZ/IYISuZvFtsvSs2NVRJ12n3QmxWYvax/fqi3gIMXnx65PCJItdws7HfjJyWwXHTHo
         rwMpNpuvKz0SD2K3heu7krkeKNE9ZwdrUtquzaSXW0I0LulADIGORPWCFDFlyuO0wHNd
         zk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768219712; x=1768824512;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Frq2FNvpHlVXL9K9cW2q2Tna3UfQNHXR0J95x0vAQA8=;
        b=VDeb1Gp/TA2p/CilmDtGJWJ9j2xghwzHqo2gQu0WXSxp7eBkf5Sw8dRTuycofIGOmL
         apoCM8eUZ5GTkl1CLOU5V99nygKawCJM0ghxGoeOZDdulQNfzR3qu9JlhUNXaIvguRWS
         /v+C9uaRy6Ut+XWWCnkCqALLfpcXtbWnUm2j18mKV5EP9UGs6jVwxQqf7XhfdnLlgYJF
         KiAffggVoQagj2Nie/er/VlQ3KUq0DiyqYlJnybs/w2/3FANGcQaKxOq/2o0cWrPRgDo
         aLDRdSzNyU2rw6+QrlHXQ7ld1hXOKuYVKuhx2nl5Njg3hFQ8MYSkLoAe6+HOd8vfJ68X
         d9aA==
X-Forwarded-Encrypted: i=1; AJvYcCU5EY9A0FvEF1JgRW6gi/ILlCXIB56TAk5P10leO6ehCP6rZsYVpolhu2/zfI7hHlrL2dqMbLrzUTJh@vger.kernel.org
X-Gm-Message-State: AOJu0YxuK23liUCnZS+SxK5mFBSeYE18xxQPDp9X57BEhWBnR7mkSYov
	Mq1xHXPHvc56CwLdNQqeGn4iCZQCHtmpJSlI5srLv+Kcp3GCdZC9m1LBrsLWhex9GdU=
X-Gm-Gg: AY/fxX5Y8GynUTlxyMGbXcl56Hy7/OjAePENWjw2nXBTiS2RO3GZk91KzN5AohptT5D
	v3VSsoa8qBuNqVxc1OnNxwb8ExRt0Ys+jmFaQbTxMFFt3OVwXWn6/rQGrjxuL7ptAxRO5hbgkSU
	wzqxLISVVP8rnX/QFM7bxWDGvtjlF3s5Rzx8w1RP1LYVlq4d/XKARCC1TEnUL/AzSulMlWjim1D
	yD7z5mTHjxNVIzFvm+5VQtydTsheqRyBNpif3NAU9RMqq1SSbRxbAsWA6n+vDpHY8hAN8qLHYOb
	KbDQ+WiiXwNlPh8p45NN0WyopN6ColHkHISEoxgEFqdPi8g5uaj1pLBvhxiAiLDQJLur2eZ5qV7
	H2sMIqm14fSNnWgihegdZ+5CcYeS3gxpVkf3fjxPxTi4qxEeDdZt0P4vFh18H7jdtHSwTjjg4RZ
	eeP8WQCqtTuZf6MBeHo/eQpbpjMpDKT8VgQET6MugyxqMNCZU3Kn5q
X-Google-Smtp-Source: AGHT+IFdAoVE3LMMfr3WXuJgeaok1n+ZKYXo9Iz2QvBceUMpdDB+n1lzEDB7SDTGntMbA+ArREk/bQ==
X-Received: by 2002:a5d:64e7:0:b0:431:7a0:dbbe with SMTP id ffacd0b85a97d-432c374ffaamr21755981f8f.32.1768219712153;
        Mon, 12 Jan 2026 04:08:32 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm40635361f8f.24.2026.01.12.04.08.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 04:08:31 -0800 (PST)
Message-ID: <8d51760e-c9ed-44a5-873b-d96824d173ad@linaro.org>
Date: Mon, 12 Jan 2026 12:08:30 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/5] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com>
 <20260112-kaanapali-camss-v11-3-81e4f59a5d08@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260112-kaanapali-camss-v11-3-81e4f59a5d08@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/01/2026 09:02, Hangxiang Ma wrote:
>   static const struct parent_dev_ops vfe_parent_dev_ops;
>   
> +static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = { "vdd-csiphy0-0p8", "vdd-csiphy0-1p2" },

The convention in this file so far is to add new entries at the end.

Since you need to v12 this, please do that too.

---
bod

