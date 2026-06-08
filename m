Return-Path: <devicetree+bounces-308246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oXeaBQ2sJmq1awIAu9opvQ
	(envelope-from <devicetree+bounces-308246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:48:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFFB655D81
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:48:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=sN0IjegV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308246-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308246-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70EF4300615E
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 11:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1664036B048;
	Mon,  8 Jun 2026 11:41:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6259368264
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 11:41:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780918910; cv=none; b=bPjq4oD45s48Es79u4NUck56bIU1zzRT8qthSkdfGmGB6y8a23JSFwDsDnNYXKkRV50SOaMY7ZZujmLaTCEoZMaToQrXZsbASWJp9Yclcay7fzDRKjTNr5K3Kv3Yjr8UPugw6XzigfJFf/1uQsn/SpYtbDUGPIdv7yLl9z4nNoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780918910; c=relaxed/simple;
	bh=1M1RcBRd4la/fLxNsDGz3QeC1KhXloFpR5ofR1BWNrk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kAc8Vfy3Il3UWIwAgP3M0/fshIhGAeH5ipoyUBsV2YFPNLbY02ooJkFpMembmx8wExLtk+ZLmKqQ/bkq8kXMAvetGDfG1ITmHZHrDtvxskjloz8NeUBjkhYGG9WpEIych8krfqfPHx5TDSw0SumgMUUYOvfXM6aLiGOqxa+xmbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=sN0IjegV; arc=none smtp.client-ip=209.85.216.45
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-36da151a152so2893685a91.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 04:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780918908; x=1781523708; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1M1RcBRd4la/fLxNsDGz3QeC1KhXloFpR5ofR1BWNrk=;
        b=sN0IjegVRrRw/BfpBmA79sm0fUlQujg99Paz9zErA3EtuhJv7M9cJUlCnXKw66c6p9
         MuDf30S8v5rq3d2iT+1pqBy3p9pqD1v47pJYTly+3NZMgGsnaJ7dtQU0xL3o9L7hbx0y
         c1WhA5Tvxr/JhojfYrZ7ncCdZuo2B9b8PEiLwrtGbjQbk8oc0UXxvzVdf336w25kXHfo
         UVbK9NWSIP9BTdIvh3WVRqO6MVpE5+oHRLSpYtm/QHeJgpbHxzjQvDo6mG0BqwBrKrLC
         LrEfjtfZ4JmgPugXtiZCIrahaZEz5zBDvUfImslEpKgwbCzdeUJpaWUC8zJc9Ry8DM7P
         ZFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780918908; x=1781523708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1M1RcBRd4la/fLxNsDGz3QeC1KhXloFpR5ofR1BWNrk=;
        b=HhZBtfizELrA0wNjeQRK9NNI117C2yYUS0NXkMLYlRwzOvCBzuTT8GrpssCL67bXWP
         N7AQWgd9p9oIyiWjH5Ro9Bk3SuJrNvfei4zXgNToKaGP2sQVb/2pX5LstGaLf7CvadEg
         2QpnScph+80V4TZNodSjy7f+5gJTbZbVqZdqEZ1vNs7VIafmPv8wGitQqPxU3FkiDNI5
         nKo5kPAsrvH3c6qlRSyoXB445QxgohBfnnG5w3ndpQvGLkD1h38oL2Q/jXgx3nKNiv3O
         lKOvQkMxiGIdqCqp5dfLi4LLVHij0nV/r2XezEnVr+/0VlHePz32I4nJmoNMMcpWaRaC
         5axQ==
X-Forwarded-Encrypted: i=1; AFNElJ91mqRFAev4VTd7WwIP2HH5lnastyk1UP/W8RoaDi+NEap6Xfd4TYWqO26ySU9Iw8NCX65TRdBiRnJu@vger.kernel.org
X-Gm-Message-State: AOJu0YyRCmbwPgnEeXEOtflCal7O6IfqQ71q17SG//BGVtRqaS1apdYB
	yFhMfxFbPgJuQaMNLBonDaeFpfbLGQXEKQdEAuJvVxcJF2x6AZPIFc/WDlx0lw==
X-Gm-Gg: Acq92OGupptDEo4XqVGqK9asi+3wKzUcJLMl3ZMoIyRqe22+m43F0XpYrpr2aMYmspl
	ANTrR3bgKmjQotxpGeNod0qCUG+f+x40wm+yDV4bUo4kndJA9B6hc2pBntG8Sd03G5VCu2tFfkh
	ytoN9+wpgSuQQ3T8zqgxBN4zu3EtVaS9gUV9JcI85VuTEU9PwMZBZVfTXzimV2lCF3XlMHhYpO4
	UKpzndkn3n1OiR0g+wyFJeQpieKX7rBUh2jpkMqyvYTgnKtEu4GHbdYeElo7f5YEaxSCJhMI9YP
	oE6XP57QCDEZIpmrhml9EE+bJu6Vlk/rJALeOil1ty8XIS89sLRMywilvEO96pzT2JvxhauHemd
	Y6Mt5/oFHojDfwrSvf8gdpx4UBqADx1iiBfoUbm8MbK7X6ya1BzTIyVvoUrQSNuUhays1TNdsoR
	U5khJP3rugKogsJG1TRksKnghhd+jMTB32xxGSnvm4sgTIA8A8RONSsLKUHzmltj/Yl+jbmNo6Y
	Pg9JIHCS70sGA==
X-Received: by 2002:a17:90b:280c:b0:36d:70c8:3a1 with SMTP id 98e67ed59e1d1-370f0480fb5mr16381695a91.13.1780918907971;
        Mon, 08 Jun 2026 04:41:47 -0700 (PDT)
Received: from [172.19.1.42] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3712fcb3a9fsm7074534a91.0.2026.06.08.04.41.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 04:41:45 -0700 (PDT)
Message-ID: <c8df1abc-5764-4ff5-9229-f3ac9bd73a6e@gmail.com>
Date: Mon, 8 Jun 2026 19:41:38 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: nuvoton,ma35d1-qspi: Add Nuvoton
 MA35D1 QSPI
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, cwweng@nuvoton.com
References: <20260608025009.1504971-1-cwweng@nuvoton.com>
 <20260608025009.1504971-2-cwweng@nuvoton.com>
 <20260608-aquatic-alluring-asp-b5fcb6@quoll>
Content-Language: en-US
From: Chi-Wen Weng <cwweng.linux@gmail.com>
In-Reply-To: <20260608-aquatic-alluring-asp-b5fcb6@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308246-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nuvoton.com:email,checkpatch.pl:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EFFB655D81

Hi Krzysztof,

Thanks for pointing this out.

I will fix the DCO mismatch in the next version by making the commit
author and Signed-off-by consistent, and I will also make sure the
send-email From address does not conflict with them.

I will rerun both checkpatch.pl and checkpatch.pl --strict on the full
patch series before sending v3.

Best regards,
Chi-Wen

Krzysztof Kozlowski 於 2026/6/8 下午 06:02 寫道:
> On Mon, Jun 08, 2026 at 10:50:08AM +0800, Chi-Wen Weng wrote:
>> Add a devicetree binding for the Quad SPI controller found in
>> Nuvoton MA35D1 SoCs.
>>
>> The controller supports SPI memory devices such as SPI NOR and SPI NAND
>> flashes. It has one register range, one clock input and one reset line,
>> and supports up to two chip selects.
>>
>> Signed-off-by: Chi-Wen Weng <cwweng@nuvoton.com>
> DCO mismatch.
>
> Please run scripts/checkpatch.pl on the patches and fix reported
> warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
> patches and (probably) fix more warnings. Some warnings can be ignored,
> especially from --strict run, but the code here looks like it needs a
> fix. Feel free to get in touch if the warning is not clear.
>
> Best regards,
> Krzysztof
>

