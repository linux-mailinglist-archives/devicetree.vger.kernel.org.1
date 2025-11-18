Return-Path: <devicetree+bounces-239715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D263C689B6
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:44:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ABF46353389
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889DB306B17;
	Tue, 18 Nov 2025 09:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H2Yv1UIN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8933C2D5940
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458889; cv=none; b=a+7UgR8Lfr6tkJJDzAR8MmOdwCQlpogcFz4SiWXx3H9SfursaIKqsWQFUA9SxsWbGOf2jUyAQbf6PXzDFVZR8PmSHITKE+4ot8N7OYzxHDAjhMEyuxE4RDHIObhah3t0DiL4zYe/6v+U7pF8MGIPWtSTLAD/cBqjeoYPAG9bewM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458889; c=relaxed/simple;
	bh=nakmxTpXhROsCut7CjTH+rY0k2mx1pEXcnbMBfwjAkE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rSK1K0KiBYezsYSNqo6tvgM+MYbrHtPQRnhA5SEaRkflXQg1fACFbNW8C9epn4cZi0/+285YEPS09jaCG483wIqX1T0Fk9ilD6mhqgghVB2FoNXvI1coLd1esmyznXAYPqGmsGuE7Zlzj1Gh04MXR/o7ucU1nRyb6DNxUd1XNJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H2Yv1UIN; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-429c8632fcbso3715521f8f.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 01:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763458886; x=1764063686; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gtnKVLFkBU3sduSzw1o97JWvysAHMmEiAWVYPf3fezk=;
        b=H2Yv1UIN/3LbC+ivIuOuVE1yuZqsGok5HfcKzVIe7jl+KsKZBr4Q+bClm2lO7DUspJ
         9RRjPpX+e4JnZpVu+R4uTfc/QleT3MUkkx1Vyp/R56zbOjoaOPBRlhWVI64hgoukfuHn
         gPR8oMcOwCbEX/61C6uaItwv5h8L8TMCwLyYiVyF3JrFF4iANir94MULcBMAmoB+EyyL
         Q9ui7X60EPXAYbyQ6GVHTUUMnj+4pQ9VOI/G97U9BsoV77ql8t/40jjjKenhFvF2Z9FX
         6EYcNlIi6vAztRFdrQ5MwDs1mwbxt7uvhbfp++ZxPOzMQXN5tkRtjQVq2uZO9y/bsnqv
         qxdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763458886; x=1764063686;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gtnKVLFkBU3sduSzw1o97JWvysAHMmEiAWVYPf3fezk=;
        b=Z/kJ0TZMEuEY9x/gaSnVEbqDsZFoLrsRlGprdk76Isef08uMTnfGtBBbdAlHu1JG5b
         4VVDzohm8Qz7SQtmXMF0l/4emuSTchf/EOESbs0OC31rWXI6qRWtkIeGfokvBRM86S/A
         TpTxGOpSvDroQXHakhdgKJhtpN/M2VKHHCRs3nz/pQoJGWnq13JNGAF5IvCN5z5rH/yX
         XlWI8obh6K1zSkZ69kzKAFGG5GbawNoq6/nM59namRvI1OGjieQNJ1oWJysNAz4NLsMv
         lDn+sLbY6IPMZ248juV4w7abLL/Q5U3gIv8CGejB2u6jFUm5woWcTrbY/1JcrHrZkamx
         CKrw==
X-Forwarded-Encrypted: i=1; AJvYcCUNEWvpSAoZSXFg6Eyz3657V8baJaHNKN3Gi38ZKLeP/s+0h+looY2oKiiM2AVfftzjYFpwxIeWAwrw@vger.kernel.org
X-Gm-Message-State: AOJu0YyIQKiGr4HakOMNH8uxFw9hHGtRsOj67QnTccVDM3g1p2T/ak9S
	mbKcjOT97SG2husD/a66CLuS/tJJHAMftUb7omwLlNnhPruoz22I8jW8GSjpfjcRwqM=
X-Gm-Gg: ASbGnct+mKq1g4j/T/nnzBgJAiP9SsmblnkZzYqN2khfCTOTtg5w+wKS6rFX6xMzddT
	6l9YO1qLR5rg0T0wFVP40EiSFMSO1K4fgeY1yTYN3l45o9MhXxWHPXFbEcGS/MUKBkRzxl5kyEL
	rt1taztenYUE8SUPS96iPbk78lz9V3LrULzG/gihmRCRjI2zxqA2TxSzAPBFaNWhiKbEsy7C0qP
	T54wKCeiiPJSh/lyv7BP15m6b89FDl+0lGh6dhQNv6O7OWSTVWHwNwIF1uQE6YbD7WY8a0uruaY
	9cH26PG0LPZqJwX8c7g9E/guDSK6WU/DeFymo5dXp9c+e2IeANWBaPZ2Q3xP3WD18gblqCc020o
	tPBPvs+QIHv4QKW0vy0eAXDGOP0oXSA0ybDfmIYswNb4R0yMlFcu/uWpIxBecooE/pXiJGrqly2
	Nzo3eMRDsKPVREkPltjHmXah9sVj+3oDOSUWWD9ldvBBoSrIP3wcDVldsKDh5jJOA=
X-Google-Smtp-Source: AGHT+IEx0A12Mrv+XQJGWIZngs9UaDoduZw2cyhd7A56k2LZLTca+iipujhKE4+927JtK5S04+21rQ==
X-Received: by 2002:a5d:5850:0:b0:42b:2a09:2e59 with SMTP id ffacd0b85a97d-42b592c6797mr14785840f8f.0.1763458885861;
        Tue, 18 Nov 2025 01:41:25 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b62dsm31225819f8f.24.2025.11.18.01.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:41:25 -0800 (PST)
Message-ID: <ced2ad99-fe9a-4794-be2f-f8760deed0a1@linaro.org>
Date: Tue, 18 Nov 2025 09:41:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] media: qcom: camss: csid: Add support for CSID
 1080
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-4-1e6038785a8e@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251113-add-support-for-camss-on-kaanapali-v6-4-1e6038785a8e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/11/2025 03:29, Hangxiang Ma wrote:
> +	/* note: for non-RDI path, this should be format->decode_format */
> +	val |= DECODE_FORMAT_PAYLOAD_ONLY << RDI_CFG0_DECODE_FORMAT;
> +	val |= vc << RDI_CFG0_VC;
> +	val |= format->data_type << RDI_CFG0_DT;
> +	writel(val, csid->base + CSID_RDI_CFG0(vc));

Why not just add that code now ?

---
bod

