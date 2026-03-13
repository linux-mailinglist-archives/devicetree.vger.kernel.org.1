Return-Path: <devicetree+bounces-275432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOfLKdo7tGmDjQAAu9opvQ
	(envelope-from <devicetree+bounces-275432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:31:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D98C2870CB
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:31:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D253303CC2A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F9D3C6A3B;
	Fri, 13 Mar 2026 16:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l+sIqAwY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2893AE1A8
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773419185; cv=none; b=oKNV4cueCDVaOTJAorCKeF6kyy0INc/wCmBQWKz88iM382iYUjJ9zKbvl5mf0zTtinirwcxl6HhYx87TIYsNNhVeIhKZl5scM0sOGF6Fq9xuJ2m2nLg7FW1JhE3s65YWAYUNN2bQTU36Uzt65jpNAENIg56pvRkqAJi/4KsE5eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773419185; c=relaxed/simple;
	bh=xphBfWYWIwfcxjD6m69trtzT0zhuPOftlxEkUe47TK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jhYNsxL+2Ovl986ghJz4LRYgTvzxo62DK2mzkMxrjr3paKg4g4Xc5eQJqMIb4+p28KXDU3uk0qqkoRMq6RRnti6idcBXS1gOES3Wj9ojaMmDpAcXuh6hguc48yTICyK0N9RIvPwVh1jkTw+rLsEDaT0XGvBuTjzC5kbAyjHrdqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l+sIqAwY; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48534237460so25877215e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773419179; x=1774023979; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uh9FXu+Vcbr/JOV4pFTxbLbMmrJ246ksOjHkBZuDF4I=;
        b=l+sIqAwYzNKW7M01pWfaORPVXbHdp5P0dHEjGBKftBpC4Y79qVZz6lSPolsdEFE2nf
         KczdM+8nJa64eU0LpyGzGzpDCTi9jGhYtc5LXcdvUxDrhwm5C41mrzDWM9RkXHCfIUWn
         D9RML1VU1jAhEjF4J42qLufOEUbhX7vFOmjghgn3a5esANWFredRmNevNyiFneeUz+QX
         LywqyDuJKO3t3QRPogxr9n6PDHmRY7hUaR++mo1cqlmUfTZGfKLE0GnOT+wKi3PLs88r
         2/XdhfC1Ij/3jWKWnai8QkiCRCMBawPu1G90feFNVuhjeI9qN1ZnoXoUELgaS2KGLVIM
         jFFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773419179; x=1774023979;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uh9FXu+Vcbr/JOV4pFTxbLbMmrJ246ksOjHkBZuDF4I=;
        b=oN1MXVmVH2xYO77j1Dt0ISKHrTxQmf0X90e1qbHxHCC1SpDI00LDzvB80tHuQ39HtV
         CTiTdf4YCfU2wXUc5AFyuddpE9CoEaqqoqhV+u9qhMACS3fJbeX1c7qJm5RIsiRa7CdT
         Suyrjm2UrOXIoPnrY5nwL1lGYpONB8EtHq4g/HTElKuBX/Z8wvp5YqoRjA1Eyif+7XTz
         1w7ZNJfv2z/mSlie/xL4/t2U3niD2+yOiD8kfV5XKPR+W0OiTEiYXhvoYnfhkpOetaB1
         WnmSYrF2cY+jbbcJVwaa2VG8hexzqU5Q4Z34LQcgBpLPhOEfi8oubTqXO/t4TKx9QMvm
         89Yg==
X-Forwarded-Encrypted: i=1; AJvYcCUPPKUJnrcnV81OUxA5vBlkFIXjWt4sQ4rU0IrBTSMwNFkF49gr2D44F03d8KS5KXzQu9lYHvZkiwW/@vger.kernel.org
X-Gm-Message-State: AOJu0YxQbo4vnnBOj0Likazoe+gO3v9VLo7U4lbgEN4KbziZgp0ovSdO
	kmPWVScL7fnPysrH+tkhD6WsgEqUHzoXOS4F/3osHsNaO7IwvdPhwUFVeMNSBZ3qpSp+npNfZdc
	B8UhUeeY=
X-Gm-Gg: ATEYQzwydEmfs/NkjE0fviPZyxv4i7LJrRkuit+gqBfRWy5Gx/B7F+O3Ws7DRzKY5Ld
	EGnuhSyyeg0tcziWAaRhpV0bpUPcXlZxL5FWhqb6FCp8GzbpcPZKsAOWWdTnSDqcyb3PyjldD5G
	YUklWa1qpyF38ELjjUdKaEKyC/N2vT/AxJREQsTt6XVuR7yPUu0IotTM9Vf/SmiklYqy+DqgoXp
	+ng5nPwWhpoKgayMB49gdXH76sC4q2grr4ROd9vVvO1J/YsB5m/OCJ517gmy2pjGuk71w0GjpWq
	xrhmc67uWO1LkpuR63RKWD1KVWRU8sz3udc0734IhEJSTtc1mgD3eDZ1jhAR3JalvQRnZ72WDo+
	ZdV+wmfvG+ZfVnCHI/+7Jo0sLMFsSmKqqRKmCZkk4538TtD1aqILc8WA+om233UHYlJeDtjOd6F
	eBxhOih6AXDhvE1I8FORk19mblrRqDA9AeOVIN
X-Received: by 2002:a05:600c:628c:b0:485:3aa1:a7f1 with SMTP id 5b1f17b1804b1-485566c6a59mr61329255e9.7.1773419179118;
        Fri, 13 Mar 2026 09:26:19 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.176.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b5e912fsm588826275e9.2.2026.03.13.09.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 09:26:18 -0700 (PDT)
Message-ID: <aabf9bfa-aa90-411c-b9f6-706f963a5ab0@linaro.org>
Date: Fri, 13 Mar 2026 16:26:16 +0000
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
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <132116be-2964-4b98-be2b-1baae5bfb58e@linaro.org>
 <19e8837b-d711-4d0e-ba9c-e9b2c8330969@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <19e8837b-d711-4d0e-ba9c-e9b2c8330969@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-275432-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 0D98C2870CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 13/03/2026 13:15, Anvesh Jain P wrote:
>> [   27.311768] qcom-hamoa-ec 6-0076: Fan count: 0 Fan Type: 0 Thermistor
>> Mask: 0
>>
>> ?
> Hey Bryan,
> Thanks for trying out the patches. CRDs typically ship with
> very old firmware, and updating them to the latest version
> should allow the thermal information to be populated correctly.

Sure but looking at this we still load happily even with all of these 
values set @ zero.

Fan Count == 0 || Thermistor == 0 => error and probe() fail.

---
bod

