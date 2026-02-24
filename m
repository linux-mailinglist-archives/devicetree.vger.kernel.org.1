Return-Path: <devicetree+bounces-267671-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAq3Lzr4nGlxMQQAu9opvQ
	(envelope-from <devicetree+bounces-267671-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:00:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6F518063F
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 972363012826
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 01:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 548D4239E6C;
	Tue, 24 Feb 2026 01:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OYvRJe/o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F322356BE
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771894836; cv=none; b=mm1rgPa3VHdFXfA/k4GkmiwB7CtClHbK+g6BDQsvdxusiBSRKSBscYOqi0u+PRI7kTPPGiSy37133+Mp4KpsAs0s0PNl4X9QqCvKDZJVflVrKQYjo0K5oTbYWngd3LtZ05CNkqKKgskCflREZ3Xc7VNgE04rRfW3yyoclVa/2f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771894836; c=relaxed/simple;
	bh=5jN52IdsSbjm829LHP1blJIbKJN09jEu6RV1toJJOcQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ptzUV//GYu+CWC3lqK8nKGGKbvx5a47vSJ/oCX7GBbOX8aHYKn3PxKPOsovQC4fdnllgh15A2IX2pX3uWm5os2VwqCwC/fuNbOyBTx3WuUCE/n1OyS11yFS9ykBRH5gVFFE4AkEAEeIgjW9n4z7FKlHYZ/il6knoZf3Lxs1KxtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OYvRJe/o; arc=none smtp.client-ip=74.125.82.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-1271195d2a7so1074624c88.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771894834; x=1772499634; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G2uvQ9O24I15o797RSwZq84+qdPgPwWIChdomW4o10c=;
        b=OYvRJe/o5qp4VM9VgjdIwytYM+B2K8qN6LQW7+63IMEiPl9qabHHmdh3Er3MlUXVrV
         /mRbtOeV0twfv6eU3LkFKGpfmUjZCEO06ImY0+csqXkUARrq4H7KvfbgqX7czmY4FDgB
         yf0Uj5GGvguOlOAOtyBk/YEgt+KFyHgBUEqbm9oN1CqAk+5wYT2hDN+9q3AbhF9+JyQV
         GVcz+rlmrC5mtxsOv6r+OmbmliE4LcmEffL5k0T726WCJhyaZ9oAmfSeezLviR4qr9dd
         yzq7i0Mu+t3/b5ULZ2IdVgFFBBzEgOH0eGz+vG74qJNQ8JlHez5KICHPIiUzOZ/VEVKK
         r9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771894834; x=1772499634;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G2uvQ9O24I15o797RSwZq84+qdPgPwWIChdomW4o10c=;
        b=Z5NXpOPlc75amw+3nUB7qQVv2aRepUnFGRc6XSZ7wrC9rjEu35VwHJ2txfaGgYjfMn
         kKe3aB6pJalW7NDhsWgYh56rD1uOOym678ZwkzkFLpyf6GuN9f/Bw57Mr04tjMCnQ1ay
         Zl9Xg9YfzRn+uAY4dElBGFSQm/SAElEBE34mtS+YM9Ph2BdlKeNWKzYrcNx7vehiCosA
         Zs4j1x6hYeUfr0Rwau+qCN3n3cEZHvOtNokWffPMrjzFEO2ojnqKmGi4QT/CnPEBvUQu
         XZXUA98/9Xk7zes5vl8M5bH0Y/uIvE1qF571I9XiihkNihVqoxfjXGJRYBNJRfmy3Bza
         IdHQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/H9U5uXD7raBVrcGtDQe+xyWMEDAyDOhotmb4Q9etTGJ095TBPzk2uHTaw159RWsKrNdbOIJ3rBTX@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi5yetWVozRWDivfVcXXLvm5VKn8+M0KYiBnR9v2RyU5efpP2E
	aJKjjCozNwDBdWEC2bXEFr29qDbRJvsnLjYNexWSbBFb3UAT7njuiAeh
X-Gm-Gg: AZuq6aLICRofww95iS2T3iLJWI3Y0eCQCHDPxhKdTSRe+Wg6JRV/oFfSQun2M1uUBMN
	422aWW+yuC/gQDga3G3gmNvyTBVYkbr0gKgEJiF8tqfCYuXw7B5n9P8Iu/HbnZFWYgjVFabun4P
	giPceb5qFALxIiAoQJLGYb+v3cvklptjNFHnHV+ytPuw3AWUqUDAibatyjq5n8sl3A2p2uCZYa9
	dhnmXBhmXs1kyMVKoGWyyPTvYBwCMi57CNgDqHKjUbIIi2RVtTxuYUe0efwgMTGMdjjgrNisUDT
	OgdNHlD2fy7TzJcbG1provaANs5LChGzQ3yASwbKF0J2m/3mb7SehBIJkVecaHpWMK9dqT9wVRE
	L7UYBHEC9CDZ1uJ/ETC+Cglp+kqZA3GYiUY72fGMzER67hJJWOkQcE7ilgYMWWhGtCzaJQ+PUaB
	Bo6D1xnwFLmJvU4iR29hSAV/CTAmxzTrN8NRdfee7BFbc6lt0EHrtyWuy0mS/ZsEdYnMWAdQvnh
	gwsDg==
X-Received: by 2002:a05:7022:a91:b0:123:3bba:fc4c with SMTP id a92af1059eb24-1276ad50e28mr4383416c88.38.1771894834231;
        Mon, 23 Feb 2026 17:00:34 -0800 (PST)
Received: from [192.168.68.65] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276afa0bedsm9107517c88.16.2026.02.23.17.00.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 17:00:33 -0800 (PST)
Message-ID: <41b4f4c1-f0c3-4ce7-8267-039bb77ea953@gmail.com>
Date: Mon, 23 Feb 2026 17:00:32 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 beomho.seo@samsung.com, jcsing.lee@samsung.com, linux-input@vger.kernel.org,
 nick.reitemeyer@web.de
References: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
 <532531d2-8f26-4ffa-9355-7821a4d64200@oss.qualcomm.com>
 <1e74b956-a45a-4d3e-b7fa-e4d5dc0390db@gmail.com>
 <97d9d942-236c-4f8a-902e-0ad2ab684a76@oss.qualcomm.com>
 <1ebc2e1b-f1aa-4559-90a0-feb628d5bfe1@gmail.com>
 <aZvPUn2RxUHDahfO@google.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <aZvPUn2RxUHDahfO@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267671-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,vger.kernel.org,samsung.com,web.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guptarud@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DC6F518063F
X-Rspamd-Action: no action


On 2/22/26 19:54, Dmitry Torokhov wrote:
> Hi Rudraksha,
>
> On Thu, Feb 19, 2026 at 08:33:43PM -0800, Rudraksha Gupta wrote:
>> Hello all,
>>
>>
>> Top posting for once (context below).
>>
>> Not too sure what the next steps are to get the tm2 touchkey in. Should I
>> resend the patch, contact someone else that can help provide guidance, or
>> something else?
>>
>>
>> Adding Dmitry Torokhov (official maintainer) and Nick Reitemeyer (person who
>> introduced this variant).
> Sorry, I am not sure what the question is... It seems that you made the
> driver work without any additional changes?

I believe this patch is blocked on Konrad's comment:

 > This driver mentions a register called CYPRESS_MODULE_VER - maybe
it could help confirm the model?


This was in response to me saying that the "coreriver,tc360-touchkey" 
tm2 variant works as is on my device, but I can't tell for sure if this 
is actually the variant that is on my device. There isn't really any 
documentation for how this peripheral works and I was primarily relying 
on others in this thread to provide details to confirm that this is the 
actual variant being used.

If I'm mistaken that this is a blocker, please let me know.


Thanks,
Rudraksha


