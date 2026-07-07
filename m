Return-Path: <devicetree+bounces-322195-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RgoLGdohTWpzvgEAu9opvQ
	(envelope-from <devicetree+bounces-322195-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:57:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF0971D908
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:57:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=VoVvfp55;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322195-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322195-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1619031D98DF
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 15:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9753E63A2;
	Tue,  7 Jul 2026 15:49:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F60242DFEB
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 15:49:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783439386; cv=none; b=f3cc2L2JuP89OkQ9NkXSVSuyJZE1akynIIMJajGHoA+I9oVpIyJ/RtxFRJnyLDBlj2i+IPDUr0xFP7RLw7K43YDshL0Zrx50NCEw7Ytrat6Ueur7NCjTSt3Jd6Utl5wxpT4E2DU3z8IdayZ7CwtPk9e5zoG3fHdmxcjBm9Wi5RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783439386; c=relaxed/simple;
	bh=BqX/raJZq/M+26MMxkIWhMYO1ENqNToaygyKe2/Aq0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kPIztDeuRmZnhAxvpKFrebPqoD7Z6ZN5sXD5S4Lmn9iBnEgEWQ23xqRzb4nI8/d7FR8c0fIpYmo32n1uxHQhAdeGcxODmTurwz5BZiNAJrWWqAYvbGlumGZfO6Tci1+n3aZWhJtdG6Hwhs0UNa8Jcl6mKIivsrzCzjf6zz3mUC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VoVvfp55; arc=none smtp.client-ip=209.85.221.45
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-474303f3c72so2611846f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 08:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783439383; x=1784044183; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yoBSGIBvFJoYUlGX0ow4ClOW7y5+xBVzJYsazX/Ju4I=;
        b=VoVvfp55/g7v1m0zkRi9e+J3LCUCLk310UH4aO6cV62pJ25Fao6IGJJUsxs8fZ+7q2
         GYlVgl6axMQpP1DDD/sLudWX+XkqjlRfXlaIlv98ZWjUAozkmd78J70Q8Np7glbxzQ5G
         PRwKUA2HEDAq06fQxk2mSSa4MJk5mizX/LowPJJYrOr/u5xXlWvW2WOXAQuSGvBDlDvX
         W02TqwlDnOjFmdwRNgGfz/JTqjoO4dOloqkeisDBmG/8fumvxokdcGxN/0/B1VMIyglt
         NNkY0is45TT3lxum5edDjz6o+vY5GtYh+pRJac16vl798e6bMBCdmjaK6AA3TaFcq/lS
         6ihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783439383; x=1784044183;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yoBSGIBvFJoYUlGX0ow4ClOW7y5+xBVzJYsazX/Ju4I=;
        b=N1Z5XVso2venAA962gp3bZzHhsn+4R/SlT/kqlj0/aeHT964wZGWR+OZxMmhAM0ed+
         4dq/UMZfks+ye9+jgSXiJjpX+F8RmQ12E58LZ3qE/YnjMhNY7QDt7XY4VpWtYAkVKMG0
         Yc5rUKYLVE1K4klwQUY+T9c1gvsIxca452d9GTa6bB3k1Fx3x6jTdmftKKTUzgQcNaUC
         8hhz5bbDi1izlzOqGR18Cf++OGURvMQ4u4nWoSYwAgmXILyfRt0hK7BJA3T1yE7k2e2z
         yYjt4gB/FXMgZEd1eaSVZ46p4RYoew7Uso3J3xEd/qtN3Ol0B82YQjcWTHjBv3+7WW5G
         pNeA==
X-Forwarded-Encrypted: i=1; AHgh+Rq88L7ar0QSfl4RoFsei+zAefwUMEs3nTNTmCWGiw7BavBwN9vSSVJ+bakWAe/61ZhGMrMoPcXti8Gl@vger.kernel.org
X-Gm-Message-State: AOJu0YySAL3IUCPDjk635kttyzN7zW0Vb7w5SP5tecrbtRNr3SmAICmk
	4LISBvzpvQzOimh8nG6X9cqsO3etXS2/KowHYiBGmpvr2bCYuOxr7+Rc3DmmSV2CTnY=
X-Gm-Gg: AfdE7cmrHTnOI0OceG26VGGkjaL4ViqXVf77AxJG4fk6aU1n+4EbFSGQNDh/WuYxbDP
	IGaZUrrTasjzDu4tk9DbZQ3hFjJ3tU0v3RI8gOBP85OYFiWmOuJumQ5bAymodPryqLHk6GkL0eL
	n0kd8vHlEFHA8p7LyeE1ZOqh1+PyaHj7fNlIuX55Z1tzrpRENsE5Sa5456xYR2DFUo1GTz10HRm
	aa8VZP2JyhJe5DqNvxfdjlKaCmPmdqm4ktBlRjtcpUNjRhc/eKYF0y/LvyTnvLnCF2hZj6oRYbf
	VCBM3oVEdhDj20hVbECqfKmuuBN+HNsq9hwoX/lOvT0tQOmngub6cZopbawVc3YgYHc4owXgRks
	JYu8j6b+jxsWnLVPBcUFChQNUq2DFHEeOzTSwgdq3mlpFPTSwNw0fklmIb2YBAmEVB3Qs1dg6IZ
	vnmFZNE0eLyAprkKbZOUeInKui
X-Received: by 2002:a5d:5089:0:b0:46f:398e:f31 with SMTP id ffacd0b85a97d-47de665b35amr5095812f8f.20.1783439382700;
        Tue, 07 Jul 2026 08:49:42 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.92.41])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa039b0cesm35170317f8f.22.2026.07.07.08.49.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 08:49:42 -0700 (PDT)
Message-ID: <85940a25-4897-4983-a328-89b328fbf1e0@linaro.org>
Date: Tue, 7 Jul 2026 16:49:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add Qualcomm JPEG V4L2 encoder for SM8250
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@nxsw.ie>
Cc: Bryan O'Donoghue <bod.linux@nxsw.ie>,
 "Gjorgji Rosikopulos (Consultant)" <gjorgji.rosikopulos@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Atanas Filipov <atanas.filipov@oss.qualcomm.com>,
 linux-media@vger.kernel.org, loic.poulain@oss.qualcomm.com,
 mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20260706071113.383215-1-atanas.filipov@oss.qualcomm.com>
 <68e59764-5a10-4abc-849c-14ea2d9ef76e@linaro.org>
 <d74d7839-d126-427a-b151-ca895a27a83e@linaro.org>
 <7e36238b-96ac-4269-a6e5-0a6763e437e7@oss.qualcomm.com>
 <4a2c098f-5d46-4339-9b09-e0ace37e4052@nxsw.ie>
 <w6imdnlo3xron3f2cw7fq5jtwcgvyijciddxjftwf46kltjjqx@inipxbghzngc>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <w6imdnlo3xron3f2cw7fq5jtwcgvyijciddxjftwf46kltjjqx@inipxbghzngc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322195-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:bod@nxsw.ie,m:bod.linux@nxsw.ie,m:gjorgji.rosikopulos@oss.qualcomm.com,m:vladimir.zapolskiy@linaro.org,m:atanas.filipov@oss.qualcomm.com,m:linux-media@vger.kernel.org,m:loic.poulain@oss.qualcomm.com,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,linaro.org:from_mime,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AEF0971D908

On 07/07/2026 14:22, Dmitry Baryshkov wrote:
>> * compat="camss-bus"
> You can't change compat. There is no separate "camss bus". We have camss
> block on, say, Hamoa. Or Glymur. Or CoolPlatform. This would mean
> exactly qcom,x1e80100-camss, qcom,glymur-camss, etc.
> 
> Then, a part of that camss device we have all the IFE, PHY, JPEG and
> other blocks. Each of them having a separate compat, etc.
> 
> But, there is no "camss-bus" (okay, there is a camnoc, but it is not
> represented as such in DT).

Well, perhaps we don't churn the compat, or we add a new one.

TBD

---
bod

