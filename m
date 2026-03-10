Return-Path: <devicetree+bounces-273606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIntFvU0sGnRhAIAu9opvQ
	(envelope-from <devicetree+bounces-273606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:12:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B79253069
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:12:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6B8DF306E6C8
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6C23090CB;
	Tue, 10 Mar 2026 15:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P+l92y1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093012DE6FF
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773155383; cv=none; b=CGWtYQfqkkmwx5uns5AuEVJhsVLYL4z/Qe8YMATESOCH6GhsDgowsazrZKusSMfgWhAEWiMsh7tPflV0W8RfwlwlXwKLg/ShUAdoz2aqn/kTWMo5f8qP1tZjaltE8k1CzrYQ7Dp03E/brC8QuH2Pgsd4r8rkLJRlBpQ8o+8NcgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773155383; c=relaxed/simple;
	bh=srX5SO/ZuhMG3t3wGj0gGmgrawMXBFHPfths1dXPFg0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VgDvTVhAeaZv3GpWXqYo/dkCmGFY0EGb/j/AguymHYyW6IthSFmZzI2fmV55PkO7Rl3vaXS9YRyWYU3yeRu1PMBBNCA3AH3rXzJWZe7KG9/282t8f7iFVAm18Phcff3rhxomPwmqsTumO5XEtPbTsAi95oCXu4fSxT3UDDtjjmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P+l92y1O; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-359832fc558so7653518a91.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773155381; x=1773760181; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Mj9BS/i+0Cnv4b38mlO8gz3Wkd76Iaa/CrSPSLBAT4=;
        b=P+l92y1OKQZSnm8pdhmIi+OWXuLk8PTJ66W6pmxPyMnqtZ7NQfiCwoyIbWrWYQtIKi
         204zYzHwkparOtOkWlSfv/a9xR1ZdzATzsCYfc+kXe1RwSiu3nGq3Jpv3SBjPIbxk3wa
         rr0WF+pEBOlY5V6QPLqj90vFHCKa5PG8jhL7mgkWDMCuOTMIGoa6e2d2fhpgeWPuOWth
         MWhqBwsvt1HtTqZCAM7lVXadyVKeEBBFbhXt43XO3843hFedy0LAXrKo9b7CzqlDSBCH
         3Qmt7znkwn4ghSMfWr8XI+4ShF8X0MD9qzc3ZisdWTqIli3vaIaPGIPJZOSl02SpGT61
         GS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773155381; x=1773760181;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Mj9BS/i+0Cnv4b38mlO8gz3Wkd76Iaa/CrSPSLBAT4=;
        b=d6QPabDK65ArMA6pEAsFJdZ9Yqx+12yJ1PliVimD9JAo7f+R+otRvmBoX8QxDSCzMC
         9b7+/NfDA67add5DjMNqduWI+iluCQL0NTSUXbQEgNDfNBHmd6KLLUaRqQuDWruOd1fM
         wRy6V0f9PsX2McqCZ3YNOaIE3XnUWajWB454uiN89zpBdD1FEOnoWRB2qPj+ykO+Zmwf
         Y1CjMpiwEzsczJhbjR2lIKlnb++U4ThC8nG++pEQY15CQOpUNdIxfrOK80MWRY9MO+gA
         H/LD7FON7HVXLeDKNhgp1OUTsEfJsVnzJd5yn1FoKIm28tqpGj7D8lvF6WOwh0hOyb/B
         Pd/g==
X-Forwarded-Encrypted: i=1; AJvYcCXYVuzdpOBt41Yui/3EvKc/wGZzCS+I41svuPkbpf1yzJIySpo/SRZDOFjZLKjLQ4RicoMZJR5Zw1w9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/4Vbo5kGoZHRdjI0duNVpvmc1u8ZUuIGgWGNpNDpof/dFRb7x
	ZAz34GtzWxseBpI3fZ+w2zT9wNiyme3bwBQxNlTQUigPAhuxnuS9v9NM
X-Gm-Gg: ATEYQzwp4bVmTBsZEhJ45mJej/2BA2ghNTABCZpjiqgAqkE8PK+TpqCdcEOTsuQCVf5
	gc1bj2KfvyYTKDx7TI8Xtj/t3GADRpPZG809VzN/uVNH5Nx2fZqjsJc7FPvBayXZM3QLs4b1PM1
	6GcNV1EAkJjRxqQiAW9g9b8ul8FCZEw+pYvIfEwWfJYTFf0Zlp7mOKUz/CnrEVhE0+PvuClpJJC
	Q1Ae6htD7nsacXOUAnR++o48Q3rZ69FJAXb1tw7defBWXNHT7fIcjZV+lxAwEi0ZmMCk4j1jl1R
	cbfJ6kbceZqIJ4OaUi2SR0aEhQZ32axz6pJNU7JT3HKbifmez/atSFBILpg+eEcQUbkcHYkAPW4
	OwXmtHE7p+1SCQU5T/W5sxdDtHscIde1KFuqQjoT7KC+DeAVmcDV1/CG6F183/sidJAcrSuuKsB
	mUcDX8gnl+RFrrvFGzYDTZ74ttgwRr6LJiv1T9y2TV+S/WX4ekKWX+s7yt70mxoRQSVZ7J/BWxm
	JmMKO8G
X-Received: by 2002:a17:90b:3dcc:b0:359:8d95:4a4f with SMTP id 98e67ed59e1d1-359be34abc9mr13065777a91.32.1773155381203;
        Tue, 10 Mar 2026 08:09:41 -0700 (PDT)
Received: from ?IPV6:2401:4900:88c9:af93:8149:1d0:8df0:b0ab? ([2401:4900:88c9:af93:8149:1d0:8df0:b0ab])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359f088e3casm3411101a91.11.2026.03.10.08.09.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 08:09:40 -0700 (PDT)
Message-ID: <218070f6-4876-45dc-adae-53400519d6de@gmail.com>
Date: Tue, 10 Mar 2026 20:39:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: mtd: st,spear600-smi: convert to DT
 schema
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra
 <vigneshr@ti.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260225-spear-v2-1-021bcb670601@gmail.com>
 <87bjgxoy2p.fsf@bootlin.com>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <87bjgxoy2p.fsf@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 02B79253069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273606-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action


On 09-03-2026 20:21, Miquel Raynal wrote:
> Hello Akhila,
>
> On 25/02/2026 at 15:02:50 GMT, Akhila YS <akhilayalmati@gmail.com> wrote:
>
>> Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
>> Controller binding to YAML format.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> Gasp :-) Good to see that you actually did fix the issues. Thanks for
> doing that. But you've been sending a v2 for a patch that has already
> landed in Torvalds' tree. In this case, there are only 2 possibilities:
> - sending a revert of the former patch and then this one
> - sending fixes like I did
> In no case we can just apply this one as-is.
>
> As it's been reviewed already by Rob, I'll take the 3 fixes that I
> proposed.


Okay, sure not an issue miquel.

>
> [...]
>
>> +  clock-rate:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: Functional clock rate of the SMI controller in Hz.
> This clock property (which I did not address in my series) is apparently
> not used anywhere upstream. This is a very legacy property, and my
> feeling is that it has not been useful for quite some time already (due
> to the CCF being able to provide a proper clock tree now). Hence we have
> two choices: considering that it does not need to be described at all in
> the yaml bindings because it is (very) deprecated property, we might
> want to just drop it off. Otherwise you may send a patch specifically
> for this addition, however in this case you need to flag it deprecated,
> I believe.


Okay.

>
> Thanks,
> Miquèl

-- 
Best Regards,
Akhila.


