Return-Path: <devicetree+bounces-298719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPM0KeeaCGoGxwMAu9opvQ
	(envelope-from <devicetree+bounces-298719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:27:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3555C96A
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 531923006137
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 16:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681953E5A15;
	Sat, 16 May 2026 16:27:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3023E7BB3;
	Sat, 16 May 2026 16:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778948834; cv=none; b=PNOF7evQUSfYwNhIzp0SrIpgVuerR8tqXFRP4n9NwuF7pJzjWKKmaeLdh4uyOr4NbDWY5RlejeLDbDy3DbifkUwBEggcocH8E/tLknyv1bZlfZr9Qp3irYLLZgpx2hhBOUjJ5pr+u/hCd5PqhEHFd9eLUuMYGtyHTygRoFmvH2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778948834; c=relaxed/simple;
	bh=3zzX8u1bKLqGKt7An3vvd25ZGKsKrmXEQ5rzKQbJWR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EOpXHohYqUlbvrAHVMpuNGa+MnSQETBCL8GsQlBj+z24Y+P7I014JtHgS6v5i9zE/YMixBo5e+VZ3v4xvX3Mx/lkb7jQQoGcoY3mjX+VdT8bkOfJ7GsT+QBROSrj9bpf8MF/hz0O09d2IM96uN0jUYgjCCoWuXY/KlsyTG4y+8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F989C19425;
	Sat, 16 May 2026 16:27:10 +0000 (UTC)
Message-ID: <5dfea4a0-3f10-44e4-8be4-cf011db09016@tuxon.dev>
Date: Sat, 16 May 2026 19:27:08 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] nvmem: lan9662-otp: add support for LAN969x
To: Robert Marko <robert.marko@sartura.hr>, srini@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, horatiu.vultur@microchip.com,
 daniel.machon@microchip.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: luka.perkov@sartura.hr
References: <20260515115954.701155-1-robimarko@gmail.com>
 <20260515115954.701155-2-robimarko@gmail.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260515115954.701155-2-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 43A3555C96A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298719-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid]
X-Rspamd-Action: no action

Hi, Robert,

>   static int lan9662_otp_probe(struct platform_device *pdev)
> @@ -196,6 +194,7 @@ static int lan9662_otp_probe(struct platform_device *pdev)
>   
>   	otp_config.priv = otp;
>   	otp_config.dev = dev;
> +	otp_config.size = (uintptr_t) device_get_match_data(dev);
>   
>   	nvmem = devm_nvmem_register(dev, &otp_config);
>   
> @@ -203,7 +202,14 @@ static int lan9662_otp_probe(struct platform_device *pdev)
>   }
>   
>   static const struct of_device_id lan9662_otp_match[] = {
> -	{ .compatible = "microchip,lan9662-otpc", },
> +	{
> +		.compatible = "microchip,lan9662-otpc",
> +		.data = (const void *) SZ_8K,
> +	},
> +	{
> +		.compatible = "microchip,lan9691-otpc",
> +		.data = (const void *) SZ_16K,
> +	},

Some checks from checkpatch:

[Checkpatch]      CHECK: No space is necessary after a cast
#51: FILE: drivers/nvmem/lan9662-otpc.c:197:
+       otp_config.size = (uintptr_t) device_get_match_data(dev);

CHECK: No space is necessary after a cast
#62: FILE: drivers/nvmem/lan9662-otpc.c:207:
+               .data = (const void *) SZ_8K,

CHECK: No space is necessary after a cast
#66: FILE: drivers/nvmem/lan9662-otpc.c:211:
+               .data = (const void *) SZ_16K,

total: 0 errors, 0 warnings, 3 checks, 44 lines checked

