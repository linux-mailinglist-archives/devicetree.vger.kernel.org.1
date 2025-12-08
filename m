Return-Path: <devicetree+bounces-245278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF8FCAE2A3
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 21:30:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CF533013733
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 20:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC8281E2834;
	Mon,  8 Dec 2025 20:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oDf4WUwg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEC6F9C0
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 20:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765225827; cv=none; b=KAFHsv3jH2ngQ26rOVxlF7SMaH4bqRKUNvyXrWjpZkCWIEFBFqB3Ws/K+83Dwp5quqAHxVNOWGehdRgND6q3S3PFiWwf9GXOcA0Ox/ilFmj9yzQmRmbIOW9doh99e6trJarjmX1s3wv1rOf8M4IsX6Z9zeY15GbbxdJjGAVhEJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765225827; c=relaxed/simple;
	bh=4gTfSSNqg+fvlBo7JqVvlKuZT3uQYmbGh0OanIIst0M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XAhb1j9jh1rbPO61s1pKlTmv6+XDMc3AB+KAfY0VPThzkf8gIh0m0Vv3zdPRZYhfOk1CgR53NyGdBGTD/Pu0mGylceQMPGSmXUGcnF3n4NhEmTJzJtlf8ejCcrv6tQC09E9nV2gv7FVX3pLXNVRB4ao6nD3h/MyiFx4qcvtyMvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oDf4WUwg; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3438d4ae152so4555250a91.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 12:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765225826; x=1765830626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hVqzapAai2jDs56ozffuGy89QQ/pBXghFLoEyD3GTBM=;
        b=oDf4WUwgGJRuZqQ2/CtTrVYwXogogPtF/dAoeHynN5Y5QEfHaq5L0SYMyXWjaHLoHq
         mC9BEjru4ve3V0whQVjf8dXGj9cd260y6U2nEv5A3Q3WWxLv1opnuafIjxRIV+lxwSlE
         +P6wTNrytlI+QrHxV8B2AU6Ae+7IcNFY30uWzpNKSP/PTAKRJWNaDUlJaudLTSgOOwji
         z+ZwG+QVoh2C4Qt/j1nHyr1vqV6ghmale/kW7SjFwYQUhdKjZd8srwhoFj6x+qB+uiNQ
         Z6qPObQWCPr2scQIK9C12ZhYuhK3snSHp9We4KOuzAXnDcipLTCTOADmHQ1EQeEWuIYk
         YieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765225826; x=1765830626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVqzapAai2jDs56ozffuGy89QQ/pBXghFLoEyD3GTBM=;
        b=Jh0ptHMnxGgFJAEzZFrTFN2USy6wjUWoHiM7R0jzbhpDY5L4B2rFoTQWu2JnXNPsAI
         4puh9acCBbkvS+fN6DuNQ11K6wB94NXl2EnH7CwRW2h+RROt8bB+ZJccE28idsQ452c6
         MzAMZ9mGKN65lp6/k8Khu35ljyFAbVGLol2RuB0LhAnx+OO1AaJppYaGsN5mz1NTffpZ
         TDaRuV4Q+/oWRcQoTyVDfUBbkPyrOoDSqbjX7xa/yx+VWFGWfTqijn5PHOmG0jWl8f/p
         5/bV54s3qGMYhG94qHdkz9/EVdra7/9tVBT58ZjeP/+HmhY+I/HAk65by+cnARjV8Z9b
         czrA==
X-Forwarded-Encrypted: i=1; AJvYcCWKF68B+xaE+Tfj4RLSrSfzFicMEcE8fF4WulGbJ4q4W9xkfFFRoQwylD+cBWxlgBCz7IFK52do6zsL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8JjgcVghy89S7IPcdWsO1/7AuZkuApOLlZ/BJQbr45YDo4DsM
	fLo4uXBpBLyX3ZEVRDMcuH73dzKjCQxWtjNBL2H14Yf7ZqDfofqUti5pZ9H8FvjDHd4=
X-Gm-Gg: ASbGncsPYfOYy0AM0+bcenEBhz4y5s1gOlINAcAfuaTtBHHMhiptw5PW6H884jM8x7u
	lyDCQjRhqz/sGxhj4WIYvXsvx6PPvTJINL3mBZIGDXn0cYLHMqbZNrhvCJQM/BTdPMA/ba5OLH2
	lEFc2/6Fsgj6TZp6xal0kdbaRbz8kJDMygvanH2rNcphV8ll4OCEXuE3RaACGI8rIH26tVaajwF
	jcLoJhsmC4C/jIY+Prbrpnc8awD4W/EsAcRPm/4JR3xk9NL1hd+pLyBB23opCd3m0Cx65pR6hKX
	+RtF6wDzCCwaYq48J/J81SFgZuU1RIX3UXNzONF0AUrndqN9q6zPHh85bJoyvMQT+yjPp+p0YGP
	HkbpSoFm2x05eHN3oqMF1at6e0qe5m8w01v+k4THNRg+7Tw9jjr37pvVC0znB1UPqRTYgX/fS2/
	XBUYb5ACyBTryX2AByByK0M+EMNOvObxozm2spTcbebeF9UlKq2GmRazvW8FrtCQ==
X-Google-Smtp-Source: AGHT+IEjP0E9NwWrnpIVACYqpa/sxffjy6AzRkSkorC++ujr05swS59yo9HQ4/sJ5bqizoD9pIsRYQ==
X-Received: by 2002:a17:90b:1c03:b0:34a:e9b:26b1 with SMTP id 98e67ed59e1d1-34a0e9b2796mr3171417a91.26.1765225825562;
        Mon, 08 Dec 2025 12:30:25 -0800 (PST)
Received: from [192.168.0.178] (p96936b06.osaknt01.ap.so-net.ne.jp. [150.147.107.6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a47ab9d1asm92643a91.0.2025.12.08.12.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 12:30:25 -0800 (PST)
Message-ID: <b1894dcf-4c57-449c-8cd5-8a55be780138@linaro.org>
Date: Mon, 8 Dec 2025 20:30:14 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20251130-add-support-for-camss-on-kaanapali-v8-0-143a8265e6e8@oss.qualcomm.com>
 <20251130-add-support-for-camss-on-kaanapali-v8-1-143a8265e6e8@oss.qualcomm.com>
 <f4d29f9b-98ce-4e57-9916-5a37927db2a7@linaro.org>
 <2tvkcuipfaa7cn7goynt6jfzlcxg2d7yvvjqizb6p7sf5oqwuj@drqiyr3khoyf>
 <dc0da45b-165c-455a-8e03-7cdd2d2d2ba0@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <dc0da45b-165c-455a-8e03-7cdd2d2d2ba0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/12/2025 05:41, Vijay Kumar Tumati wrote:
> 
> Hi Bryan, we are addressing the things that makes sense for KNP as well 
> in the next revision. Btw, couple things like a separate CSIPHY DT node 
> and ordering of the resources (that were to be added at the end as you 
> advised), I believe are not relevant for KNP. As for the GDSC names, we 
> preferred the module name and it's GDSC name to be consistent so changed 
> the latter as well to VFE. Hope that's ok. Please let us know if you 
> would suggest any further changes to KNP v9 bindings and we can move 
> forward accordingly.

I think its reasonable to omit the CSIPHY split but the other things - 
clock names, namespace consistency with previous version should be 
maintained.

---
bod

