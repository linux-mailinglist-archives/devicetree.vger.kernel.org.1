Return-Path: <devicetree+bounces-263363-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MjkIlzrhWlvIQQAu9opvQ
	(envelope-from <devicetree+bounces-263363-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:23:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 59387FE121
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 393EC300DF6C
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 13:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B3353E95B6;
	Fri,  6 Feb 2026 13:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nj1hQ+DH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BA53A7853
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 13:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770384192; cv=none; b=Zrotu2U9LpGPypKwGTZLqEHk2TWhI0Mne3OEiIZuXSrqtHqHq3xIwpZ341AZN3HCRHFnHZysgrATJafUhJa9iFYtEqMvEtcA58iQI2gtkKrRWSpO8r9rvfdy9fUp+i+tVr86ixx5sYnL58so9bXwOL/vjWwS4hadzHXDpNfJim0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770384192; c=relaxed/simple;
	bh=bMN/JRFVQgOWnas7SCu6F46rmxINVt7CufITb68/bTw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CBSM2/p4CEny6iLFlyXN46u7eIyxbOnCz/+dRVhWPXyxGv7+LbOIP6PawpyTbzPvYJ3Es2MYPxLKk1Fkjoa/g5WJTK/dI/a1bjBiD9PDTxOEvoh6KbF+xvSUDSHtfq6WiGhFny1xu5xXIyG44exgbQXwQ7o8N5lCxm4x97V9ZKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nj1hQ+DH; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7cf4a975d2so272372766b.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 05:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770384190; x=1770988990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bMN/JRFVQgOWnas7SCu6F46rmxINVt7CufITb68/bTw=;
        b=Nj1hQ+DH/+m1Leoytf69/OTn6EeKWBOT6ExcnYRyztCBRDGykWgyJudXZoEa3m7HAX
         1RwYf9rmKIeFLsWXvlCaZpxmZIRWS2Dtlrnlt+rE9pSNuLsnZnfFADVYdHplGQrRv/0+
         X/X3ZwkP4FB37qSO48kFXfXv9F7DD8Im33mJKVMUe7CEffyFjaZDxX86KuXbtPtrLlKE
         447XzntFNJDqTLs9Ty/9PaLpDnFvD+NeVCkUNPi/7071zv3BkSXtXhL+0gYEQfzdN25P
         ked+wGqOds3PopoIhXESP+vf2JEKxUcvbK2ouZ8QkdsWwPr1MX2tFNECo0aBJ9PNyXT8
         csFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770384190; x=1770988990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bMN/JRFVQgOWnas7SCu6F46rmxINVt7CufITb68/bTw=;
        b=LSgiuK5K9ySokUhAzB+8DDZ5aO2OjOGlnP5TqLfU0yCf9SLp0CuM/lhWKw1cbq+4xo
         /nEhDczdCCC7ApM9StIQb06Dcy8sIhajvx9/+T37nePMFgHz/GO7NW6EwL85sT3T8WkR
         fEXaTQRphMfHDqSTTmteeHnHXpePz6N9vdqMlEQqWLkP91gMUp+6pPWWAFxgJ1/ZlkSf
         c40OlwYvsuHegOhHuWhEph9+Ltu/nGcbh5yGjNXiHnsmhrpypjLes5pzmi5QCWRmJj0m
         9c5oqWbAxEcYg1GqgwMhnEK/HuHlJSqLl/3rVcy1ZNWMNAAAfB3vQG15AZacBDifMcib
         SIFg==
X-Forwarded-Encrypted: i=1; AJvYcCWFNGNsxF4ZfNKVjw6XKgtV5p+cDtc2c/3MKM3/mM1Mtc4WbVtItl3iFBlVCoQsh2hUVQtcbMnThD9W@vger.kernel.org
X-Gm-Message-State: AOJu0YyeBhqIomZzR2UExt3jVs/Jymlq2xdesGn4ahU2/JfRqAUHsvXa
	XDh4PzEFOV6uKSlFVcVYbaEvuz57ov+sQ4lZAGzW9gIshPCbc/yzCGLS
X-Gm-Gg: AZuq6aLV5zirYVMyY4RG94Qf4C7dVQmR2Vw1tDHcr0DmCTiHG9QYT/DJ8wrD7QY5NHl
	QorabP7V7hZU3wFKZFGnUK6zKFpmmn9JDEkhWIps5TAW95uhHxzFLJKdaHlRAuVcQX/WFWPmgAH
	0awsNaEPxA4JwZkUWGEZxCrTO7KjY5EvTvhu7NMnBSIAoQlBrtg8tomgJXyrrSN0lByhvuLSZpm
	lf1bNUYH9Of1sJfDjbkMNY72CRxDQFibugEsO4S6zh1IN27qrzgNV+xvaGDrEq+cx2gZuWlNui3
	FMf2HTI8thxNNT4CNVwLQYspcIhHK+Urw5N8itm14UTgtalBvMdG0QjtH+hne7r2i8pPZu7v34L
	yGC4xxKz5dzcnOnAV5KzRjKSb5HbUjvNmv3FI/eJzuGPw3MdGTOvGKnOAiWXxDFFrisQE0l3of9
	12e7a+qyR1QOPp
X-Received: by 2002:a17:907:3d50:b0:b8e:2a8a:430d with SMTP id a640c23a62f3a-b8edf22fc44mr143653266b.26.1770384190073;
        Fri, 06 Feb 2026 05:23:10 -0800 (PST)
Received: from [192.168.1.31] ([91.141.197.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda74a52bsm83116966b.14.2026.02.06.05.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 05:23:09 -0800 (PST)
Message-ID: <05af4700-47c9-4bc6-9889-c694f63ce3fa@gmail.com>
Date: Fri, 6 Feb 2026 14:23:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao) DTS
To: David Heidelberg <david@ixit.cz>, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260204115645.1343750-1-zstaseg@gmail.com>
 <20260204115645.1343750-3-zstaseg@gmail.com>
 <365e02e9-eb36-4870-afd4-d337a628794b@ixit.cz>
Content-Language: en-US
From: Stanislav Zaikin <zstaseg@gmail.com>
In-Reply-To: <365e02e9-eb36-4870-afd4-d337a628794b@ixit.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-263363-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,e1000000:email]
X-Rspamd-Queue-Id: 59387FE121
X-Rspamd-Action: no action

On 2/4/26 2:10 PM, David Heidelberg wrote:
> On 04/02/2026 12:56, Stanislav Zaikin wrote:
>> Xiaomi 12 Lite 5G is a handset released in 2022
>>
>> [...]
>>
>> +
>> +        framebuffer0: framebuffer@e1000000 {
>> +            compatible = "simple-framebuffer";
>> +            reg = <0x0 0xe1000000 0x0 (1080 * 2400 * 4)>;
>
> Hello Stanislav.
>
> Use memory-region instead of reg property pointing to framebuffer.
>
> Happy to see the phone progressing towards mainline support!
>
> David

Hello David,

Thank you for the review. I will fix it in v2.

Best regards,
Stanislav

