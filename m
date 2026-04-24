Return-Path: <devicetree+bounces-290097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCOTCgiN62lAOQAAu9opvQ
	(envelope-from <devicetree+bounces-290097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 17:32:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F3C460CAE
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 17:32:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5122E301AF6C
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 15:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D109E3A5E98;
	Fri, 24 Apr 2026 15:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fks5Jd4b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B883B95FF
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 15:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777044716; cv=none; b=bJgcZVZYIJB8z6E0+ifZOArkmfFO0pkzyV5vkAshOKuURJ9UFJr3ogMRPOHoeKrbF6KbYUsr1L+fbtm4uLutrRO5gerMuXPC9YOgkQGwmUbJ0UviKACoQYUqmbw5mL00z086pYR59lNU0OrsRqADdqOe8HGF0xs1GXDumbIhg1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777044716; c=relaxed/simple;
	bh=otD7jQdcDLxaXX/SFvmfgLVOCJ6x6Ljebj6G+BBXCTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YJ/wYr8MyMRQHelSi+hgZUDSHgg3twSIPfzbYnFqrnNk8UJOmDo1OzA5IBrVw8T3Wy5Dfl5JSQ5o74tafx/+pWq6X+DCMwUMcq3VSVeidBmmD+blMvJM/aoNisjPyquQgLOdIzKFd321bfwuRvZ+CJFi4LevQSoZojdchcDNmR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fks5Jd4b; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2d868d014a5so7809902eec.1
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 08:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777044714; x=1777649514; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3J8fVdyPxB0m2xHleeQEB0k0imM/1ZciMz1C7VyY1IU=;
        b=fks5Jd4b5wx5wDPU3rJvoFnDM2ZhAbwDdNjF7ljO+ZS4UEYddxsmPVeEqgnpoqkZbr
         PRW967WbdROt/JdZr5JtZZPs1WtZ93XmMP2EMnr/alflntSKpptGgZkNHoWBMe/Zzpj7
         GKJG+iL73h4QyolE4p815wrIC79TNWH1R99Vemw4T1+GXIL8wQp2Kbd1UiVq9o99PNV4
         Gk9vexxrmaUYNqjxrc/rpU0K1godWNP/pt4BRaBDFUxeEBJDYKuI5nGp3UPB9e0xtN5N
         gDWCXLFgkAhjKaQbe1mB4EbXYAFG8pVGwQ0/4igiOeanSK0fMK4b2ET9cR0OLgzC+ncZ
         2+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777044714; x=1777649514;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3J8fVdyPxB0m2xHleeQEB0k0imM/1ZciMz1C7VyY1IU=;
        b=lDNzsQ1Tukrw2wXLqDVsog/zQKZqG6i5eOaSIIhafszDjeUPco2nH3H6FUB2xgZyG2
         ykkrWzgRM+851byUwLNwFvnX75jNL1/N6pD5PLKQYZf1itJjxsh+MexV7Vxcfzqrl8NE
         /dNajUFxmmBxaNwJKQv0WrmDFtddPBa5gWTfdz5GJmAtlH4akvhVdvMHsrK/20nYxLfo
         tvf2IO+hbkapdAbxXIUJ0PR9ZoEkrRmA1GqPtgc8VKCJaXxzHEP6YeuKDp+HNuxACE/M
         QmM1hXRgFLMlW+Cb9//4FLcZ++AtzbiAluU8nQp27VrEHVsa6Sft2XKtyZiaC3ZczSfN
         vNSQ==
X-Forwarded-Encrypted: i=1; AFNElJ/OgcHGhwJwK6qqXMFp6C/hgqYQmZgW3u46T3XGqGl28Mt08Wky6BwdMOiW2VkJJPh9dMuSL/s+kGlY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyca/YQ7ak3pibYbNnZntLjDLLrep4QzbYmPdHIoCDYtGhQAlVk
	FtGShZlPhstgXbACvqeYsUR7QBgKsDZ6WSan6x4Pgnivizs/q0LvkWh2
X-Gm-Gg: AeBDieu39dC+traN4d0xtQZINiv4mPsK9opmLw8jrMzHNL0fTGwAxzpynAY5Aj3FLG9
	idPW1v5x+oeDNmUIXWnG4dKP7NYcGTbdxWsmrZx/j0HAcrtToo34o7ZwQYoQnOXk+s/p3pb6ZLa
	aEfeXXzu242h9ffyTCi2HM7E7l10DaOc/VcNvnjlZCLPGtdBV73abM2fDj+A1sKuio6WW6UPoHl
	Yk//Jev5WxUfg1jR8v/TKXdkzhLXuwqet3wF6WNckulh7nsWU7S7e5Cb0hqjpHz8gR1lpXH+3+M
	cxxhDuOMd5NNY67yKUOIMnSkjrafD8LI36i5sn7thLkKXp5KznoxKxDlgtDn3wbsN+ByWcC1f6p
	CAeEIeBpSxGarsf8HrXDHxQq/3ftgqJaXCVAI4AKuwsMN8y58XVteryL+q3A9IDk+Eu8AesO/oy
	Lp3NKo3vins+bglUdjfJeOXaaMZNJ32iHgBdWqJBB4DCxEPcx29gurnjg+khrfCZCYOgHLO0l0u
	94=
X-Received: by 2002:a05:7300:b905:b0:2dd:5641:f01 with SMTP id 5a478bee46e88-2e479110b4emr18033448eec.28.1777044713716;
        Fri, 24 Apr 2026 08:31:53 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:f405:91aa:7e5f:f595])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2e539fa5c86sm38983450eec.1.2026.04.24.08.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 08:31:53 -0700 (PDT)
Date: Fri, 24 Apr 2026 08:31:50 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] Input: isa1200 - new driver for Imagis ISA1200
Message-ID: <aeuMn2w3kSUl-wxF@google.com>
References: <20260424071305.89503-1-clamor95@gmail.com>
 <20260424071305.89503-3-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260424071305.89503-3-clamor95@gmail.com>
X-Rspamd-Queue-Id: 80F3C460CAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-290097-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]

On Fri, Apr 24, 2026 at 10:13:05AM +0300, Svyatoslav Ryhel wrote:
> From: Linus Walleij <linusw@kernel.org>
> 
> The ISA1200 is a haptic feedback unit from Imagis Technology using two
> motors for haptic feedback in mobile phones. Used in many mobile devices
> c. 2012 including Samsung Galxy S Advance GT-I9070 (Janice), Samsung Beam
> GT-I8350 (Gavini), LG Optimus 4X P880 and LG Optimus Vu P895.
> 
> The exact datasheet for the ISA1200 is not available; all data was modeled
> based on available downstream kernel sources for various devices and
> fragments of information scattered across the internet.
> 
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> Co-developed-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>

There are a bunch of valid sashiko comments, please address them:

https://sashiko.dev/#/patchset/20260424071305.89503-1-clamor95%40gmail.com

Thanks.

-- 
Dmitry

