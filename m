Return-Path: <devicetree+bounces-262930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AF0QGs9ihGkK2wMAu9opvQ
	(envelope-from <devicetree+bounces-262930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:28:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 08053F0BAD
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 49CB93037AFE
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DFF93A7F59;
	Thu,  5 Feb 2026 09:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LtPlXx3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170B33A7F4F
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770283450; cv=none; b=Sx94ptUDIr1Q/22dBWb7qrbgW9cHZ+oAw17FhKR+6yeS8iDg27NoChxnxOH0raGZfbE+ZlZftu9ZbXcwq9zfjwdXtSkT5B0dDvgGb/AQbvBc+x/4fgtZkR7Q0SdGvjhlwZhmFar8NsrLn5mXVV52HX9aC4S9vt/7fUvpTUYHZws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770283450; c=relaxed/simple;
	bh=uhvtURHpuu/te5LxBUQMwf5iBL9DYrQRUsB//1jPby4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SEvLNqiKNK5DfeRNovPYtrTQcoLcnlXMrHg9wgOCia2ynAexsFoj6D+WViGJaWDHF0aVsWPORFLrL6Q7o1i1Lwe4aNLSSX5AKTK75UcjitLBH4v7fSATuAFmVkbsCVKxSF/vHYcJbBHz+3tgpAaUux5vaJexihYyodqZUsuo2BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LtPlXx3W; arc=none smtp.client-ip=74.125.82.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2b751c8b6beso987059eec.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770283449; x=1770888249; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WyVJiV8wOgvQp43Xhj2a8xz1BJoTUmIJmHz4yLDxUWE=;
        b=LtPlXx3W2rDQ086jPBYoX6DQbVKqSgbGvWtqQQTKIaphVJAHML5ivY8NYXQiA2KRJd
         lOECYLUDglIMGJpiBZrTiYaU2dpGiSMmpnJyRO1x+n7s0d9PgViZu+VXOa6B5gTl5FzO
         IgwpWC4wNw2/pvqT929O4elcopbP7+YmUlBVN9tUtygGun+Sw6LQbmYTgqOtiQYZ/9ub
         fDufo9pkucaERS6EhkZXY72uvoSMAfEge+2v69m3duwUma67GEHwJjmLWpZeescfUAG7
         5LuvtqfRp01S+Z49rVJmuEuHXqN0h5UhJRnjV166BamcgmwyMJqPRj/IpcimVjFzcLgR
         vKOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770283449; x=1770888249;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WyVJiV8wOgvQp43Xhj2a8xz1BJoTUmIJmHz4yLDxUWE=;
        b=tz3urjTTOAZ8Jcm/FaBK/YoNMK99jQvTVTwbw/3+aincUhjADTHf27DZer7OnGMVvG
         B2vjTN8nnosISO/1iMYzKMFYx66hMbZOiwhJeMd2FvXX42AO5nYANjKc6KfFlzqh/p/V
         5j1vbi/WVIVgb+p6f1sfYaYPllj+rNiXZ+KAaMm5gLcHIq8xxHj1PcpNg67g2Ku7bK2I
         WCI4FfU4wJf4IAPFQnYrKGeWx0l2KmMZnlo25lp51ENWJZzuI4pqZ0Wa2toh43ZizDA7
         UENMKZkJn8yAnGmqc0pEaQpzPWseHBGkhPn9AizBxzUpfwmqVSvYQuY37n7noaopNpeu
         dzPg==
X-Forwarded-Encrypted: i=1; AJvYcCWWcdbL3cs3iIUzG4eK2aGp2gOxA0Q6W7u7o6TlvzSMGYxB0Wv12yF76Q+9LP03Tv+VYu5Oc3ZPqASR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+p7wSDRdKVnc1JoHCF+TpsMXl/JycZLRVWPdWVXgcYvNeB36S
	m503q6OlqIX1XaLfi21QTpt3iI8y6MaobetQK8XkjzI1neUBdbmi487u
X-Gm-Gg: AZuq6aLgAtRkea9PdNTKssegELMBFvl7yAEvOgPMWtjKSoPYpS6vX7+Img6YAtoVFUK
	tutQgBvL0THMJkw7BTPSyVvZbH6SKIgLAoetvdAvaOy3RiuEIsAV+w3IPXlQUV5KVXgh0hBgcM8
	fYmML5yicdPAk80TzahMTqP258dD7GigMIm8mdzjSxVF9pyS+I/I1ftc6iSv+SgVf9wL1qWBX2T
	2HjDK2mlJbuGL8C5DwUfzzTnp2cUeu+GwragkZusPoxijdT5HN8aceKq7iVSasWMocZ7NPw+yxN
	dWVZrOrbFxtVs6fRf3HzN9NdIdwaVJAZ0HCIEXJMG07UfdvYhIYhRpnvRi4tjmUuNlc8K9g5HDZ
	03tLs3RapweO6Y6UivXVlzz5aJ+uSnthRVf/2ibaDemYz76H4VlJIkjrYOp8qSTyWMcNcu6YA6L
	Weq0KV7rEohksEyOcldPCwDA3M8np6kvKfeofHKQG8YQA5aOpFO0SB
X-Received: by 2002:a05:7301:2901:b0:2b8:27ec:b2b9 with SMTP id 5a478bee46e88-2b8460fb170mr1056511eec.20.1770283449049;
        Thu, 05 Feb 2026 01:24:09 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:9a9a:afcc:9a68:2606])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b832e1296dsm3012857eec.4.2026.02.05.01.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 01:24:08 -0800 (PST)
Date: Thu, 5 Feb 2026 01:24:05 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: hvilleneuve@dimonoff.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: input: add GPIO charlieplex keypad
Message-ID: <aYRg2vP4Lfqm61qH@google.com>
References: <20260203155023.536103-1-hugo@hugovil.com>
 <20260203155023.536103-2-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203155023.536103-2-hugo@hugovil.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262930-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 08053F0BAD
X-Rspamd-Action: no action

Hi Hugo,

On Tue, Feb 03, 2026 at 10:49:47AM -0500, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Add DT bindings for GPIO charlieplex keypad.
> 

...

> +  linux,no-autorepeat:
> +    type: boolean
> +    description: Do not enable autorepeat feature.

Let's use standard "autorepeat" property to enable autorepeat when
needed.

> +
> +  gpio-activelow:
> +    type: boolean
> +    description:
> +      Force GPIO polarity to active low.
> +      In the absence of this property GPIOs are treated as active high.

No, the polarity should be encoded in individual GPIOs, not via a
separate property.

Thanks.

-- 
Dmitry

