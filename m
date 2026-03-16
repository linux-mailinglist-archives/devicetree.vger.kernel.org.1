Return-Path: <devicetree+bounces-276211-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JTYOLgRuGmIYgEAu9opvQ
	(envelope-from <devicetree+bounces-276211-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:20:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F294B29B3A8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5CE94301D48F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D63B39C00C;
	Mon, 16 Mar 2026 14:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="krqUtzhB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EBB39BFF5
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773670495; cv=none; b=nmcI4m5lH6U10HC7zseOteGtBtHzoBrZnHobaIGvpD/psGJkvmYwihEYaKYsVOqV22FR2ldthsJEyYW1azwV25CvyeSPKN2F5fbxj6kGIEefkv+5isXNQG2nNVyqZ1kbj7UNVFc03bWVr0S3bZFRp4rZ1shl3TsD4qDDDyMyt5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773670495; c=relaxed/simple;
	bh=2SsySyOvIxZk0ksyBwxfVHA6GpVP4WghID+G+yR6Y1Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B/cKpIIB5RDpq9OWwLtGGo3YSb84LfvnJ5tRXE46Qv5k9jvACSLPxTXmN7fSYVfa5tRbP7KL1LEEIRkyFQUlXz50m6Kf/YOz2s3AXAZ2uQSzyY7NMk3kKdvXAndIv7TKZ99iqbYHzSpHwuuwX0/WT1YOmVVwqi6jLpSWTgH50xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=krqUtzhB; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2c0d36f3888so112185eec.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773670492; x=1774275292; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=v1M5A/zUiJZxosfSFmbMxi4SlAjt6MS/qTaLhxg1gbs=;
        b=krqUtzhBP2Foihgc1OKvJJywI5kBVVeqRdh0lPYoHtCrOUeSfAArj9VOZv2HGuLL6j
         pP5cPmXTPPNuS5KAtBkhuEsDOUPWAatLvs2BSH3Q3O94XTJ3+dJ/4EnL4jKTjBRDkVO0
         r6NYy+9b8T8+nVmO2opS7/4zMYF3n9Z/GPAO/O3Ep3YcLTjx+9+j6F2lw43hj8bYxIBR
         UGvmDczOtE6wpinTSv5uDQaJF8g82I5bkjkWGLQAey+ufDffjL5ZM2kvxM5nU3XnHMmm
         4mfZWfM66e+D1DqczRz3RdFYktk0dr0pXcZgyS0nU46azHrdLrcGN7uHF5/mfiQv44AO
         N01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773670492; x=1774275292;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v1M5A/zUiJZxosfSFmbMxi4SlAjt6MS/qTaLhxg1gbs=;
        b=rq7K+4HCq5LK1fmPwskMNp+DPdNLQYQ0klBOHZevTk6lCFuFEXKQBuihCzIhouwAY7
         xr8FZ8GFtn16kMPpy4LKTyFEZT48XQpNa2c07HuOLH3UGBLkhZJ5gbas4xMTGRwtz1ah
         8yY5B3AXzeLBw1005Us2PaH2jTgj684IZvL0S/5iWSdmf0M4MyjMBtk/mOuZ28WQGQNK
         o+pgenNJNmOe2EUe+TBN5LAL7MMO368CyNWDibrLHutrpUSXvb6FFA2KKSBnHRZFuCgY
         YlVcpY3Zn84tiEWSDKoLcjALtGdyqwS6mo7Yi0wx6sBAHFlHYmH1lAX86G9dAuk3/8b4
         bkLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL4hzJGRkuG5TVcewcyGpQEeujsU+F7osk76TARwqqTAAc0fTOgGqZ/Xz42oNicEoWrbRx4a5xG8+U@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7JEsjUErK3IGu+foWmWBintzqaeL9Y16vs/uqlGLOkFRyHEfU
	yGEUaVwEYoGbwmtmeP8y63s4oKKnIiXPQ+izpRkjAcEXTvH6Tw1QVZom
X-Gm-Gg: ATEYQzyocQXXR56J1iM5DsswEQFFw+QCbajA75dZZfsNbHLM0MwdxvaxYzxbb9tf2/S
	j3HgyrAeckJ82TQ+naIYeIWIHVlOtKbV/3iyuX+pDB1VTxQh0PREEvFHcJ3o9s3vcA659/gwWyW
	g8qXPtfSs00py9IcaES+ZxM48U905sRXNNadZqCraV3tO2+SqUU3v9FIk8DIGA40e/PzFc+FrQs
	6TqR24FEtwpMXesDfoxBGCLEs2AZl+vY6jrQiw3EPpS9EbeBlFqheZsY0Brphqw6y5TZIUAqIrB
	0/fzxf3rOXNcK0/+v/Bbk8+drsdmgNlgLLV+mf93PtQn8puR+8//p0L56eAIjRZYKpJNo3YdCNs
	c5pUwkGSFK9edIVeLDP4RjzW9wMQj+n9OFC4rtFV36E/sqayhRQC5f/3LXnxTcx9dAQNlgc0D6F
	P3VYFiYSc7lRKBywqoK6a1gygrCXpDduudA4VguoPSnliJCRgkD8COsnm/ujOsD/HC/A4DeWkJc
	IpP760QFR0=
X-Received: by 2002:a05:693c:3945:b0:2ba:6b3a:7696 with SMTP id 5a478bee46e88-2bea53a9e2cmr4877318eec.8.1773670491758;
        Mon, 16 Mar 2026 07:14:51 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab525c5fsm14462273eec.22.2026.03.16.07.14.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 07:14:51 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <85660b25-a936-44f0-95b2-3c90d559efc3@roeck-us.net>
Date: Mon, 16 Mar 2026 07:14:49 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: watchdog: rockchip: Add RV1103B
 compatible
To: Fabio Estevam <festevam@gmail.com>
Cc: wim@linux-watchdog.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de,
 Fabio Estevam <festevam@nabladev.com>
References: <20260310002040.417424-1-festevam@gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260310002040.417424-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276211-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nabladev.com:email,roeck-us.net:email,roeck-us.net:mid]
X-Rspamd-Queue-Id: F294B29B3A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/9/26 17:20, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The RV1103B watchdog is compatible with the existing DesignWare Watchdog
> binding. Add the rockchip,rv1103b-wdt compatible string.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changes since v1:
> - Fixed a typo in the devicetree mailing list address.
> 
>   Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index 609e98cdaaff..141c72909b15 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -33,6 +33,7 @@ properties:
>                 - rockchip,rk3568-wdt
>                 - rockchip,rk3576-wdt
>                 - rockchip,rk3588-wdt
> +              - rockchip,rv1103b-wdt
>                 - rockchip,rv1108-wdt
>                 - rockchip,rv1126-wdt
>             - const: snps,dw-wdt


