Return-Path: <devicetree+bounces-276177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QECiLUIGuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:31:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF0529A6F0
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:31:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BD2A830117E2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A6FF396D2E;
	Mon, 16 Mar 2026 13:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hT2xsFfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A8B3947AB
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773667902; cv=none; b=CuEZFmis1bIEKyfIHJbRuM+7rew348NflOk+qnqKAaAI2kb87/yMsIUcLmgfeqSkQFJmGvHXhBXO5pY5xj0quIpaQ4QTwFDqRcDhONaJ69phvhcryWJHVdkoIP61fN0T8xGqRfCf8F22Kj1F5KEWaaBUz0r+5mN5Z7xd0nHnCVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773667902; c=relaxed/simple;
	bh=aJqQvVAQBWgcK77WFtfzdrvxuw8KdvubRhFHqAKTjKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EZrEX15fJsOE68Jsj+hG3pqJVUV3vGoihmjjiCZ0pSBB67kPg6zK2htz+Sg1hJ0CS6Pm5ryE71ASw6EcL6jqpoxbjHt8pxeid+GTYzMC3K/HlPFCIDfC0sgk+BKx5pJkvPcXTqTDOGyso4Aap8GBSUCPx1Ov4ZRHdxmqXIY3Y6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hT2xsFfY; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-666f73217baso314199a12.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773667899; x=1774272699; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AzHXsmeKQOaISuIJx9Az90TCO71/XOPX65E/uc2ZTBQ=;
        b=hT2xsFfY3JpE1z2IjVXFYF4vMux6kTgpLJj8fVubTIi/233mrpa07a7+mEmqQYsVSj
         yoTSrLDm7EWo1fhU+pwp0DbWrQY7sNPbTBMi+DFazOV58D8aPtHHzSDFQ6NshcU/bOOJ
         juz9rrDOfDz0Zqsp7TGYaie41fnDZIRmRSWVC7v/HH6QmgsAfQKn98vTOAFPXEFfw6kn
         bUZZSJax+7PH9LSFgJnlyLcmro195bkNshFEnXhJ3OlzC7N6JfVOBB1WSQpExbXRfnYD
         hhanmQV9LqR6aaSvHEmlQpVLfS+byw8xeJf+fkjhoYsEYBxUakwHZCouHctGDT9jjkRI
         fFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773667899; x=1774272699;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AzHXsmeKQOaISuIJx9Az90TCO71/XOPX65E/uc2ZTBQ=;
        b=Tcpisiatf3cOSkCHd7u0UiX8zHG7hqpGbMYDCbaJzuV2XF1auKvCQLvKtQl/9ySnEI
         4zaqCDNRk0Lazto3W9mgWeL3/wz2FOOyhT3o+qaPJQivsbnQZbdM255plxNQwAr8dg5+
         BTpzi664a3jPIttpNwvOVvfUedQJ01x6bY00pV3cpQLPQBGL6nF9K4N2kKnzeaSQevq1
         brk5xrHbs3VN1GumXLBgWz7WmXHu3cYPNPixgDVILLL2Dux4QXyRyhbN+rz6VY+vjAIx
         AZqjkwlvxa/pDhY8f8ljsXrEgepE4tkU0tzbKyUHSFqvkmLb5VWISCncoF2OxTk8qoew
         u7gw==
X-Forwarded-Encrypted: i=1; AJvYcCWpkR2e9GPUGu0OKR24rcYEB7dvcfcyaRp0LfG1HAXO/Z694ab3UEQYs+mbWMogbfpeLhitp/dglYto@vger.kernel.org
X-Gm-Message-State: AOJu0YzBtB822cIVnrHE/sdRqdBf6k6j7ScAbhvJHU5VsX8EYssgZXBO
	VMGoOlHIvHUgRwsjjt5cQNh2A/tPZ6qSWvTeZctX63XQVIWjUZiwxVOiwUS1QTSOBs8=
X-Gm-Gg: ATEYQzzZ0RchpayTK7Y5C9bdiYEDeJB0D/sOY2AEbVazHGSnmWBVh3JBtDwH6RqOmzC
	0V2a1eVPDJSsgkhomk6EUPKon2eTHIEv5jSrjNSPEHXR488DtxzMPXvKiqzyrBnkqoU+fU48x25
	H0THZTQ8TmZAFM79fyIgXZhsa5Trw40e9IwP7Tpqd1ncQ04X0PzXGka+PNxhMHnjNZ2jHq+T+uk
	e8GxIzej7KsBG7tiPWMyppbGDDyHrtO6z6E0EcA5BM+nHw12EnezLiGViys38URL9gu2xZHREsE
	gi5NaC4tWQDzhfMIRIRll7QCpQGjx+E47CrCGRNox2ht1qtC+3Q5gJgBzBSP/loXX/zqtGpE/wV
	uKfABd2kZFQajompZ5x0qnM1Y9dttVdLbhspf/u4z3S1WoWMdrecGJEfJHEf8SrKlD8GhtryedE
	MvhuZY34Zdr++M/+QrfPLPxnu0LEAO0xfg5iGm
X-Received: by 2002:a05:6402:2551:b0:664:3344:f9f6 with SMTP id 4fb4d7f45d1cf-66433450781mr6000166a12.8.1773667898857;
        Mon, 16 Mar 2026 06:31:38 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.226.115])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6635088ffadsm5183190a12.21.2026.03.16.06.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 06:31:38 -0700 (PDT)
Message-ID: <f5d7a5e5-d21b-4be4-8fb9-25c108c1d805@linaro.org>
Date: Mon, 16 Mar 2026 13:31:36 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add driver for EC found on Qualcomm reference
 devices
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org,
 Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <132116be-2964-4b98-be2b-1baae5bfb58e@linaro.org>
 <19e8837b-d711-4d0e-ba9c-e9b2c8330969@oss.qualcomm.com>
 <aabf9bfa-aa90-411c-b9f6-706f963a5ab0@linaro.org>
 <azoaku7s3lxgcccc2rrp2bljbvqeitax2bl47k7eemy6uhcr2g@kveqod2tstgk>
 <ca7d675d-139d-4fbd-b57e-5b233a0e2922@linaro.org>
 <bb38d7b7-859d-423a-9837-1b678975bd06@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <bb38d7b7-859d-423a-9837-1b678975bd06@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.intel.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-276177-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5DF0529A6F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 16/03/2026 10:22, Anvesh Jain P wrote:
> We need to keep the driver loaded even if zero fans are reported, as it
> is also responsible for sending suspend/resume notifications to the EC.
> Failing the probe would prevent these PM notifications from reaching the EC.
> 
> Instead, I will add a dev_warn message suggesting a firmware upgrade
> when zero fans are found. Let me know your thoughts.

Sure, say something, it seems very odd to just continue on as if 
everything is grand.

---
bod

