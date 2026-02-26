Return-Path: <devicetree+bounces-268733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG6+JUEcoGmzfgQAu9opvQ
	(envelope-from <devicetree+bounces-268733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:11:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 145C01A410A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 951343037904
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FA03A1E9B;
	Thu, 26 Feb 2026 10:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nPu8Of5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1233A1E6A
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 10:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772100509; cv=none; b=GgdFOdKCuhzd4YM+C7DlWTovCpZ1i9Q8xCkskOq6fzqwhUIiSOns4jkRpzJC3V6yao1DTf7nHmgP9hOIPtZIgh3ZQlCWEydDZNSPdCFud0l6UPHN2XOGk/jvMfsDEqJEwwO4cvqkl+DUMMR4LW6QOKPlO3V5+Ziav1acs8Be0pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772100509; c=relaxed/simple;
	bh=5BydSFyv63pr6fLSHNLqeB8iNMXd77Csp2c4cg18zbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fq/LEtUxNDKVWbT35ybdqfJZW75jaPIrFp4PC8v0/pr+ofXSKSrPgVALkjwaVFNHUO5NEOopZcvdccFzBP/XMvTcDs30wmICdz6qpBxUZAa3o5kyOfhjzhGvWIjbmMgfjt/sr3Mk+y4MmA2XlFGwno9RSasgsAxSpi3RLfgbnI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nPu8Of5e; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4806bf39419so13166745e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 02:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772100505; x=1772705305; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZlBAnP3xiYRcvgAvPoJGYcuSE9c0eE9Ha62LiFhWaSw=;
        b=nPu8Of5eB/etogKwjs9UeCWUqoQ45oguUwHX0PX7YSE4mZA4X8quA+IRmUvmIU5im4
         +oS1W/NjW/hmY/7nsh/g+AxaprhhMAlBgaS6ei/S2LByH2dzXeErZE0sFzC09ibog2kI
         kcEyxAw6DjytvJNP8ifXzoGU+N/3KNSN6rlEhwH6rsgtGlI1EWiobuD8q7ultaw3O0cK
         x+fdYHXfqMcuQYjRBZ602Nlul7S/aF2HYrZHr16XPMFuz67YGPO1ypuZ87KFBBdiGy0W
         VM9AHjDXKI83nAR83/7XCNxgLdEHqRu9i7MIjX3thHX0q2G2jWY8ruDF3ZBfFGDWufDL
         b+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772100505; x=1772705305;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZlBAnP3xiYRcvgAvPoJGYcuSE9c0eE9Ha62LiFhWaSw=;
        b=LoHEh7yqX/KFSuaffzuPKmdPVQ2aO/8BNcozIm/Hsg7Rav9PijiMHR+ISBDRbw4Mg7
         tYH+5z5Pg4HvotZ35Ayh1EhHHsrEfa+ntGDTeB+o512/tQ88VLlI8AQE/RkJrscVI+Bf
         zJ6N7iANtbmH9IIqv1qs05VKlVuxsQIRy8oueAb8jlCzv2Hbb+Qi2JV4YSrp5kKWwsv/
         57TNvPUjbXXZnWh/lmk01frGtuw73v7r/UUlWbtfhpYmFq2366bt6N4GbYjhtiENWmdz
         50nWo4IGi+xrUT4Bay4nyyjkKWGjux65b8BSWR8D/T2twAZmw0xNfHmXsK1OWLQd/EHU
         LGOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvdRihE4fhU0CKmgk737cG7Ut1T0n703lfBobtFs0sbDkf9Q38Qorpz2ehJInqCgVF4KegiJkuDOaI@vger.kernel.org
X-Gm-Message-State: AOJu0YzfzCI1TqQYqVNWOnUWwaYODTUIZdzTqmMwWQfVDJV1i5cM8+xk
	c2NayIwZNjE4W58sRglGm/8VQOQwc07fO0Zt5BG15vvrDba6+XmireAIh1en+g9eDyI=
X-Gm-Gg: ATEYQzxEFZ9SAaLi8CAqHygaEGRLCGg2RvpMVzh1gsnozkfAR3QVVLoQj8YzgRmJ8OS
	bzZGkYtJq3waM1KBIDD+WbCIXXiV6T0uWqcOO6M5uQJXEpPHAGolaOgirSfd36vcFqSFD1yQfmb
	CHPY7PWU7RMSJAJ5/99GJRIx+tYOlSiTFf9AU6xRwmiIRyNCnFbexpx2PAeXzwzh1o5VTtfdBWw
	RM32Kf0ZbUd07NO+DmF8gHDGnv0TmBl5CBCKh6oGlzv40wpeVYOHM45Pliinn/sLOhRXKr8lWIw
	pfj9OLozUO/g+4iXrpZppIi7nSnnbbGH6Hbk4xcxHYNNLWXcA6sp/k44AcTF8VTxZFHCtxUVwiW
	QlEbZaEBO5DWu1GhX74iDT3o2Ahgcb6ARK/Dm+UhzhkVFVKaDtBQPv2Cjxcunc58aDckyxeN02A
	Zi84m7J8T1ZLrR47GQxD12D9fKOOklhwZXtkhr8cHwFuh4mc4oAYzSpLwV6897/THU
X-Received: by 2002:a05:600c:8b71:b0:483:7ea3:3de3 with SMTP id 5b1f17b1804b1-483c33c3606mr39636555e9.2.1772100504681;
        Thu, 26 Feb 2026 02:08:24 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b3471asm38233635e9.3.2026.02.26.02.08.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 02:08:24 -0800 (PST)
Message-ID: <7174a290-6aad-4e0b-a626-ac560037a702@linaro.org>
Date: Thu, 26 Feb 2026 10:08:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v2 1/5] media: dt-bindings: Add CAMSS device for
 SM8750
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20260119-add-support-for-camss-on-sm8750-v2-0-3e06583a0a81@oss.qualcomm.com>
 <20260119-add-support-for-camss-on-sm8750-v2-1-3e06583a0a81@oss.qualcomm.com>
 <033dcec7-edf0-4c3b-a6ce-14a61d0a0b24@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <033dcec7-edf0-4c3b-a6ce-14a61d0a0b24@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268733-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,gmail.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 145C01A410A
X-Rspamd-Action: no action

On 26/02/2026 09:59, Krzysztof Kozlowski wrote:
> One single node or split CSI PHY,
> because you cannot take the first option but then six months later send
> complete revamp of the ABI.
> 
> So please decide and answer, e.g. by taking this patch, that you
> understand above and THIS will be your fixed ABI.

Please split it up. There are good hardware reasons to do that.

---
bod

