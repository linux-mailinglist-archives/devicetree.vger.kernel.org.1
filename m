Return-Path: <devicetree+bounces-323771-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qkGyHHmeT2qwlAIAu9opvQ
	(envelope-from <devicetree+bounces-323771-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 15:13:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE82273173C
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 15:13:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=rcReJAEL;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323771-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323771-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FFD43021E8C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 13:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E31D32690D5;
	Thu,  9 Jul 2026 13:10:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D61B25B084
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 13:10:53 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783602654; cv=pass; b=lVpQS/qX6XaJAk3tXx/bhJXA2PHu0RQ73xvwQJ+tsTursY6AaXusGp2eGQvk+A+BrszwIAw1YqOk4acYiSAYkHIXK2o82Qs+h1j7BbRbIzjbS2zozQQVY6F1MU+STaszgSEivd28u4ryRDTHpCVmf7oPp7ayoAKRt+wwcH2fkOs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783602654; c=relaxed/simple;
	bh=jBgIT/3JkSEiSXb9BFVoD2KFzz1etXCmQZo4kJViH8o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FjRK6K5ZY6spy1cfDQI5VXQykOGXR5yNM1adgbewmEZoLNEJtA+B1DXaHjKkQEegmbxoCp1pyhUOI5D+PPvntY5x5OszHuHen4VkpRUy+l7NJvcZyPINSW2iRzwp9SRnHm4VdeEX1tvPlPkSiBoKV5gnDHKlTZy04CQ/HmcxxJ8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rcReJAEL; arc=pass smtp.client-ip=209.85.208.42
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6983f20a8bfso1424871a12.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 06:10:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783602652; cv=none;
        d=google.com; s=arc-20260327;
        b=qXB1apLqPUbC1khA1bys/oH6h+m1FhfmhKyR06Nhf5hkxQsW/HwQfu/Io6fuZ8wl5I
         ueiwK9pOJVDRXGQtarDKkiXhnNbVKC5fzir2XlbeMEnuMTYaM5bo4DASC+XRRy46PMrN
         aMA/Rj4syQTdUFcYX450fZSt2fq0BtToD2O+bMjgkuns5YXVBZHKGMn3KqUnlIXsFqjQ
         bY5OCgQG+HAHOeA+fBn4dCyEZzZH8x3m+OMAEnEOQ06VzZ4QVvVXZ/hgcDEl8xDc+Rrl
         yNZohsO0sCn4+Xv/T/nTyRzEcMogLRukQd6YFWbz4GEyakkFdxngTEtGSSgiS2njk44e
         mNgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U7Kmv08cr/vXN/lQoowvHwCG19gM8kPqiBIx7P0p2BM=;
        fh=S5e2zMjqaF69x8tksWoyTn1/ZBWYL6w2lj1Wfqw4w8c=;
        b=PDDksvJgysMEHv3lW86Cc9oKHhDEGWBxle9Ephpg+CPT6kyTEgtGZzKlSYVWQYueas
         kJWsh7MGwTXG+GLOfMaYIu750mh2ZopbjsCi2jw69Dm78BCmusCo6L+xX0oAWSN29h3P
         Wpi6/xShg83Zxv8iR54gXo46au0/MVbuKkZ/7IwMdhKTZmP9wOM+IzvbXl3w0e/Kbl6b
         tc3QVCsOlKaYKFzvu/vzz+ejHkoonTx/ounEOpoAt2/DxCZGGVxTJ5whTibD+ld9ngA7
         HHJ23JH9UYMqsKLgHktu87NmtuHPIZC9urituMRqeGcLcAxlZiHcvtBP4iWuC54P/o91
         HG3g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783602652; x=1784207452; darn=vger.kernel.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U7Kmv08cr/vXN/lQoowvHwCG19gM8kPqiBIx7P0p2BM=;
        b=rcReJAELE6y53oMZT1b1ksFweKPH+HU9mDua38ryoHZyJV7EsQ9wh3AcS/veuA6xLC
         l1VeAHLI5eiZj5mXg+o7/D8SvG1OVS7VSonT5RDtTDknNccs7tGhVRf4e6BYRSKVUQ6T
         nhGCSQpqYQaTiDA09sUEQPaFbJ3rv6tf90aCpaBXm1qtwbndkEUeYpmqSL9AkeboajDu
         RD7tj5bhMQQUHFcA2KYldn8hmDuHY2y/zzFBr8R1DjA1q9DX+EfMsX8a3m1wfbgi6PX1
         22Bt7omHmCnpYCnGZzkFL9cfViV8HM7csJ94OQzPVTKysA5HfmDsb3ayeZPPV6Lx/bkr
         Vtiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783602652; x=1784207452;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=U7Kmv08cr/vXN/lQoowvHwCG19gM8kPqiBIx7P0p2BM=;
        b=df9FXCHzUF0DY+apZ9Na513g1HjxxVu+9vo7hoUXbiMwGAvJmb7Va55Ymdk7YeC+dM
         ml+hFlPjNBChuj7x9Ogpirti2EFJsJAYDbCPE2Mv8joehitIQ5ew7qxu5kzSt92vWG0u
         +gM+5amOTvQMW9mqR9wOM2KwVvPUMx57QSxZhvVpjj+91QFcK/ecnadXZWlSCot7szXm
         ZpQDYC7YC7ejL8kpoxvZ8r8AVFy0X1l7cRMu1BhC2gK06b9yvr8yHT7iElvMpvtWGa/j
         Ms0959dNJHYpjrOZINbFnWSbelp7SaxJo8MPVjxm/Hb/6LKA8b9S9Z1Q7gFm5EKYaqu6
         HPLA==
X-Forwarded-Encrypted: i=1; AHgh+RrifKJ77PFGWqaBd4eU7CeK0VRm02GT62ROPr7ilhx9wn4B24RxuTb4y39e/QOhMuD8pRyQ2e7HCwUQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxaK3rRWLjKpw97KciG+gzJXZ+CP2QDMhqtp6zSOumgnlxhWFzi
	f/yL2SqGWWJ4bfFgh4PAAnC3V9gtVT13aUVd+ssEq1vBpzJzM1Z69uh+cw6ScaKw7cjBxOVXk4Y
	2w992jYcpXUxFWpflIwTX4U9wVKk5V5yvsWSTKKS96w==
X-Gm-Gg: AfdE7ckdGHuOjFcHyfhs8oTTJToHFbR17exusBK9rcoo3/glpw9KmUxNdZieRfeuXW0
	i/qhYmgaIPJX5QZo6s57G1SU9JTtEE4H8QnmCqPTPCLIVL6F35pZUM/8KulbCK54aKVZc13Or9l
	xe+O3sNUysECckEKYqHOD9yMqwAXIUp7MTIZXTATBgG/itoVv9IlC/DF5Rho1CnnGTWZ9joOlAw
	GzRTPw30H59YUr19GPSQPt/W6jA9vxremCe0PoviDecT6cmDn1lPt89rqj9kuvO0dYxpD5Kzrix
	TD1ih+569X3HRB9a/WrxK6BOhESlwC0=
X-Received: by 2002:a05:6402:3595:b0:69a:a9c1:c33b with SMTP id
 4fb4d7f45d1cf-69ab44aacddmr3005773a12.31.1783602651660; Thu, 09 Jul 2026
 06:10:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260701105731.196618-3-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260701105731.196618-3-krzysztof.kozlowski@oss.qualcomm.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 9 Jul 2026 14:10:40 +0100
X-Gm-Features: AUfX_myQ0gFl-ytrmuBc8dxFLfDYOP7Y9AYpNDt10PW8eTtKc3T-jFh5D_m4h-M
Message-ID: <CADrjBPqGMUOWtm8nGHpkQTRkAHtxtpNi6SuTdE0x61zO0eG3Kg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: samsung: exynos-pmu: Restrict children
 with unevaluatedProperties
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323771-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:alim.akhtar@samsung.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,mail.gmail.com:mid,linaro.org:from_mime,linaro.org:email,linaro.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE82273173C

On Wed, 1 Jul 2026 at 11:57, Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> wrote:
>
> Each schema for a child node should end with either additionalProperties
> or unevaluatedProperties, so add missing one making the schema tighter.
> Defining 'type: object' is on the other hand not necessary when other
> schema is referenced.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  .../devicetree/bindings/soc/samsung/exynos-pmu.yaml         | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
> index 76ce7e98c10f..d124f3ae9fbd 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
> @@ -94,19 +94,19 @@ properties:
>
>    reboot-mode:
>      $ref: /schemas/power/reset/syscon-reboot-mode.yaml
> -    type: object
> +    unevaluatedProperties: false
>      description:
>        Reboot mode to alter bootloader behavior for the next boot
>
>    syscon-poweroff:
>      $ref: /schemas/power/reset/syscon-poweroff.yaml#
> -    type: object
> +    unevaluatedProperties: false
>      description:
>        Node for power off method
>
>    syscon-reboot:
>      $ref: /schemas/power/reset/syscon-reboot.yaml#
> -    type: object
> +    unevaluatedProperties: false
>      description:
>        Node for reboot method
>
> --
> 2.53.0
>

