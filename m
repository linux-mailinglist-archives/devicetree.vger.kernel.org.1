Return-Path: <devicetree+bounces-261772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCL3CGuEgGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:03:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B630BCB6AB
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 12:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0EC1F3005A87
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 11:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FB3C35B143;
	Mon,  2 Feb 2026 11:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mrGkKRxx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC2935B159
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 11:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770030183; cv=none; b=QKDFH97SjqbzqRvYOPKkLfwRgq7V0xD059APPRTaFTl2qnaCK7ZJY8C0VZ8zYYWRV3VOsfnW/uDknbIA+N8MylYchY5wBI/cYXt6xh0FuYEQCBfxlzfNi6hSK0WeSlLqQNF9gcWe8PHx3tJizsaGLcpu5iPEpKetW22DmPV8hoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770030183; c=relaxed/simple;
	bh=tmCdY+062riUvvzl7Xs4sCeTnT045XiXZmjso2IZW5k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=btf9jOYjEjysQsnN8VX/9XV47dH2V313BHafNbn9kD5qNr+jtd0wXCYf1CxFL6Tbnl3eILAxh0JoCw3TamScfIZw+RJE8YYn0T8uDu36aLhDE6Dv2S0uUfbzCqirYxf3jiEOMHg/6UgKFB/8vc2ZsLNMbnhsmf3ddT4okzJcvdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mrGkKRxx; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-82318b640beso2339461b3a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 03:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770030181; x=1770634981; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BXhH8zrVylWsesycxP40bSnYIiTHShVUT+eNMfYxJ/I=;
        b=mrGkKRxxLB2C2cazcR+WFkJhzNGLg7bSLNhhXwH+cPIfZ2egx97vaKEycNnW2JhVXg
         OJQvnbZt7JWYP/OE4N6U04+p8mMRHiDNFR6or9PeDa5Cb6TDhKoKyptT8JSnlsYSZws8
         OUZr6gj2qiUP2VZ7hDO9vYOSswotE0XZPzSt68dncWxxg8gug0ZIapvrlCVUjfTeKFyl
         C5WbNq08kogqpr47k1B+e53Ij10XA7g2dHrL8WgCnwDAVIHgrfFTasCa7sDoUi1RfG9R
         CPMIu8QJofA6L++EMBg31aE6CJ+VcDRU2eanTZsVFFeVZNQNM2wPIftIZfpgykJUnLoH
         cYCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770030181; x=1770634981;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BXhH8zrVylWsesycxP40bSnYIiTHShVUT+eNMfYxJ/I=;
        b=klK8Uw0X60UKZcyCoyKAOlsjbTNegIpBhvA+xSX5p2iHcP4PyrU6zysD06bY2bwYDJ
         FtE4TRKCRjMPxBFyX22v5OCzI8Jhp3aDWCKjDevB1yRTk1r3qPKYno45iSwWBjSqWGgI
         Mm3iXpPmJ55n6VwNmvxJL5tUgCHEeiMRwqjxUAX5SmJQM+uTPdnGP89VvIK45j4dR//X
         62bSSx4HeleIzSCH/M99o+PLK16sR61VjFQpJMh7HxaLaJRnqkk4yFca/A7Vz8SXdqKe
         SQIXR1fJuST4U/rkCArW6MJtBOxK2hZXQMwhHOqk/a+r+k0zZTQtpAjE+mJflz6BEHEQ
         x4YA==
X-Gm-Message-State: AOJu0YzSh0EvC6zN7i1mIWZqZ5Ls48aii60W7ri6QoSIfkTjBKA7CqVy
	9uOjCuh2B2w4o3EwR4ZniFhEN3dfRDCO4nvBJp0oXyjG4EfFCcAJwmJb
X-Gm-Gg: AZuq6aLIWAOr7rUwHmqTtlBNFb3DQP7Ftlg755H5QWZMjR998QnYurgZhu9ShzzTpCz
	mj5CasRMPv2tpr5oHNkseNOAoqZ+jO99P/5IYylGUmgRnwnFmMgwo1Yq5i/ufYxWRoIghH9P/H+
	ZZPu7XuPC2UAe2M3PPAupODFMGAgW4c3TQqSNQcZ3h1+AV7XXef2jzm57sWntJpelD7L44muyJ0
	pMZWaACgvSvRngmou/68xdhYNmHfxTNdu6eUEL9nIFg3P0duwRXmabI08HOufPgfpsMtWQceS3y
	FTCozg/c2jeUORRd3LkK0ilbJJUC6o1dIKwLfhMZSF5Svpt41xX+qhuHiKszmPNnjeewZunZou8
	l13k+b1RPmi9mpFx+vPTkKobgsxLPKlioiiVCd0GBpSCDLt7jQRAJBaLma3po4+TV9TwxcgYQLe
	WCsJsz7XunsjQXxRXUQ3UB66xByc6IuqLA6rk=
X-Received: by 2002:a05:6a20:2d13:b0:35f:4e9d:d28b with SMTP id adf61e73a8af0-392e001cbc7mr10045124637.18.1770030181079;
        Mon, 02 Feb 2026 03:03:01 -0800 (PST)
Received: from [192.168.1.7] ([115.99.252.105])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4154fcsm141359955ad.36.2026.02.02.03.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 03:03:00 -0800 (PST)
Message-ID: <c7468b03-9acf-41e9-a441-96ed5d891e96@gmail.com>
Date: Mon, 2 Feb 2026 16:32:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: usb: atmel,at91sam9g45-ehci: convert to
 DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Herve Codina
 <herve.codina@bootlin.com>, linux-usb@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>
References: <20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com>
 <20260201-atmel-usb-v1-2-d1a3e93003f1@gmail.com>
 <176994942956.410099.10343293169382130437.robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <176994942956.410099.10343293169382130437.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261772-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B630BCB6AB
X-Rspamd-Action: no action



On 01-02-2026 18:07, Rob Herring (Arm) wrote:
> 
> On Sun, 01 Feb 2026 11:34:21 +0000, Charan Pedumuru wrote:
>> Convert Atmel AT91SAM9G45 EHCI USB Host Controller
>> binding to DT schema.
>> Changes during conversion:
>> - Include "usb-ehci" as a fallback compatible to allow atmel EHCI
>>   driver matching.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../bindings/usb/atmel,at91sam9g45-ehci.yaml       | 71 ++++++++++++++++++++++
>>  1 file changed, 71 insertions(+)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Warning: Duplicate compatible "usb-ehci" found in schemas matching "$id":
> 	http://devicetree.org/schemas/usb/atmel,at91sam9g45-ehci.yaml
> 	http://devicetree.org/schemas/usb/generic-ehci.yaml#
> Warning: Duplicate compatible "atmel,at91sam9g45-ehci" found in schemas matching "$id":
> 	http://devicetree.org/schemas/usb/atmel,at91sam9g45-ehci.yaml
> 	http://devicetree.org/schemas/usb/generic-ehci.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/usb/atmel,at91sam9g45-ehci.example.dtb: usb@500000 (atmel,at91sam9g45-ehci): Unevaluated properties are not allowed ('clock-names' was unexpected)
> 	from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml

Hi Rob,
Isn't it pointing to the other schema ID which was not defined by me? Can I have your suggestion on changing the compatible name to other name to resolve this error? I ran dt_check in my machine on the latest version and I don't see any error there.

> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.kernel.org/project/devicetree/patch/20260201-atmel-usb-v1-2-d1a3e93003f1@gmail.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 

-- 
Best Regards,
Charan.


