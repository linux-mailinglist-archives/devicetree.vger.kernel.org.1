Return-Path: <devicetree+bounces-265024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8G8NC0q1jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:11:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 931C712CE28
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8533F3037923
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180EB344DA2;
	Thu, 12 Feb 2026 11:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUGZtgnw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99FD344D89
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770894661; cv=none; b=c1dQwq3g5bfEpR8UgvPbP1j1ajv+/A7EdAFFRdS4qJn425TdlR9sBIMr+AFWAsGi4frMmit0obnY1krYJPnwLaC9Ko3ZRNfIbb2CYrKmlEu2h1yR3EQ5oqfy/I8hVxdYLMvG9tlhBz02cv6zrSMFhk9UIiMRWkEfdbiwvLcWDco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770894661; c=relaxed/simple;
	bh=ziVBPZ/AwEVOdSr4+dpQ2YI80b7X5OiEw/eDokHFSG8=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aikTnu6Cmrnl2mbP5tAXOKAjAA7IhpDOu6jX8ZP3HfE5Fkwr7osWBQWk0CuIdgggiq3afBnyLFjFop7I0KOV4UmOobkhOdRbKADD0REPnRpHyWZ77mSWjUfeIRl6cnz2RA0G2NVOpE668xiCOJ21XcpWCGqMdFsHHwtUq1iUP1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUGZtgnw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7A95C2BCAF
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770894660;
	bh=ziVBPZ/AwEVOdSr4+dpQ2YI80b7X5OiEw/eDokHFSG8=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=kUGZtgnwKc/pOVtcXCIUVRmm4KfI/9GxG1BovJsAN3gqFfDa/qWyUHOtp8H/ce3gw
	 jsYNHKVBdV6Src/I14+QS4tkgzdNlQl0xC6PP2qHd6OHoWlPH8T6b9NO9pS8ojR6Zo
	 vEooxh02i/8riPwEtTiXsB9yn+GsBHkq9s2ZYZXi2K0683O8czmqYjCb8ADuObYLKm
	 Gp5hWX4f6MwDcW1Y/23WS4YUrcc1jlT1DWYQHqHB+IDGacykNbrM8QKWEHPY7Et9TO
	 JF+7nDtHnHZe63BGjdLdzhE9ZWpQSar6W7eH1bG6KIlGpKcwBLMXYrwJAp+do5zRSp
	 v4HbJSf2NsREA==
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59e64657f0cso773675e87.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 03:11:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXiitZzEaYbuKT05tSiCv4f+ivY+8ZFGs9UUQHe9T+7fVcOr7+hWpi6CDJ7f82r+c5UmOUIYUwghG8v@vger.kernel.org
X-Gm-Message-State: AOJu0YwqP3IGEwQLOz74Z+IVIKEb3h/IWKE9fGGy/R84519ClrWqGuWO
	JdjEz3BCzUq/AKOihVhg03aSkEA6+tVzP2MckQ6DO4zEwIgiIFQX8EhaAPaSfbkjphS/6vpefFL
	AmDXqhYeGnYoRNBd9TaoLmqOLL80MPKLOz65OkM/swQ==
X-Received: by 2002:a05:6512:b84:b0:59e:429:932a with SMTP id
 2adb3069b0e04-59e640136cbmr707293e87.1.1770894659241; Thu, 12 Feb 2026
 03:10:59 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 12 Feb 2026 03:10:57 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 12 Feb 2026 03:10:57 -0800
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260212110905.52842-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212110905.52842-2-krzysztof.kozlowski@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 03:10:57 -0800
X-Gmail-Original-Message-ID: <CAMRc=Me14BeYBgy5_bNk+2riQzGhfTu_5nQhU1R8sXMbO5s8TQ@mail.gmail.com>
X-Gm-Features: AZwV_QiAycFds9iMkmUPOhoVO2zFeB4G1sWGDSofcF9fjoUL-ss16-faE7AV7jE
Message-ID: <CAMRc=Me14BeYBgy5_bNk+2riQzGhfTu_5nQhU1R8sXMbO5s8TQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: gpio-delay: Use Alexander's email
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,mail.gmail.com:mid,qualcomm.com:email,tq-group.com:email];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-265024-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 931C712CE28
X-Rspamd-Action: no action

On Thu, 12 Feb 2026 12:09:06 +0100, Krzysztof Kozlowski
<krzysztof.kozlowski@oss.qualcomm.com> said:
> Group/anonymous mailboxes are not accepted for bindings maintainers, so
> switch from such linux @TQ mailbox to Alexander's email.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-delay.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-delay.yaml b/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
> index 1cebc4058e27..b99ceff6c5f6 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: GPIO delay controller
>
>  maintainers:
> -  - Alexander Stein <linux@ew.tq-group.com>
> +  - Alexander Stein <alexander.stein@ew.tq-group.com>
>
>  description: |
>    This binding describes an electrical setup where setting an GPIO output
> --
> 2.51.0
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

