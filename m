Return-Path: <devicetree+bounces-315581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +vgvJLP4PGrVvAgAu9opvQ
	(envelope-from <devicetree+bounces-315581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:45:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7D06C4599
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:45:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=BUR+hdqC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315581-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315581-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4AFE30D3B2C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1279D37269F;
	Thu, 25 Jun 2026 09:41:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDA937472F
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 09:41:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782380472; cv=none; b=ZB3WWO41Vy7MFwp2/3HjEP5kNXZDR8qC95vcvQY35eO6pKLPLTHVpzmUl7T5Uw++IuqZiKP7xJJHhiOLFX5v5XIrj3v8iTUnZhqoNLMCu5uiptKmFbplr/yLsZvYAPifqiiWMZATM/7Ya2XRDT08zhwuAfGK0hHf1lbb476gqDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782380472; c=relaxed/simple;
	bh=01TQELyIGZMIZ6ifnSQh3g6j84rp/OerX7AwLUwHD48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eLAi0SZAdClziWMI7pMBLOkOt4UqVmBXMIU/1o0pMbmWfh5QvtOIAd+D/TZivUdzuruGPY26o+B6UmsGsH5NtMes9ERYUW1BgAQzTeJMG6CxbdAAqNgJQUMYOl9U0jpsXbgJj2N9lCzXAzYR6r6XKlf8exrEfeC41CL2QFKSmOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BUR+hdqC; arc=none smtp.client-ip=74.125.82.172
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-30bc806fcf8so2506348eec.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 02:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782380464; x=1782985264; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l7XIr/SVC6sMz8goU/VKpbT2rVvzknx033F8HOJiudg=;
        b=BUR+hdqCEOoYDsP7lA3If8EGuaOQJIg4hpeBN+Npwpma3VLFUs/vPNcl8UI/51RKmi
         /vDg5S4jFd2ThLPaKLWzchNVuvmTVCjNGNfv51VGMDkTfUlP6kDQC9xgbSq7hru4fxzf
         50hFWhfz84tnktQPAGO7h3dTkwnErBFdnC16Q9yPFmpJiFZb877g9tsXXTi7kEoiQK8a
         O9CjzTFD16NoS9tUZjvbz0mmdmOcAoPrXIALVXjgJv5THAN7z0gSVDv80f5iIlI9aVwx
         G6bYPo0oUGCtW0a+K+5edsu0Z3pqE8RK6ZXY5ueNIxjt7xG1sVohtfby/ctVLR0gcsqe
         p7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782380464; x=1782985264;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l7XIr/SVC6sMz8goU/VKpbT2rVvzknx033F8HOJiudg=;
        b=Nkses4o4uUQzcA/Kx/UOL5OttwgGQl97xB7S89mMjBzHz0kRP/U6vyRFnfOM2ukzSC
         SmR3QcuofmLRmnosB0BOg1gqexGaL9qL6GKm4/bNtnrbxMcrHvJKzRk4GdzTC10B39AA
         ENJtcyGs0e0RhuUpCrvS5lmKMUC1XfOCOaAEg/90sx6mwwZBv54uCGJcZfPoNW/ZkvXY
         AoU1I84eEOAogXL2hRAeYUGGELJvL630XrGFrAqjQxqLA84O65/P93+wG271hYt7vmUi
         +ros3Z4ZSltqBQFZUw1IExhYsaLpl7pz3Ao/h1ud0RYyp/05eD0lVMaFnZ00cQjhYuKT
         kuJg==
X-Forwarded-Encrypted: i=1; AHgh+RrD5Ktepr9SYDBs6x1ngbGyCdyEt5Ok09/e3BXkLqpS9hvWAv7NQL9EDHDf2hYHIvz49QArh+i73PZm@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc3IqpGNDNMynyARbqtJaAiQo4/X7LsDc7ZzdCV98W1/SR90pA
	DizFSbLYo4dFkNgQMYGclqO2M0oaqeYmRvx2+tTSFTtou423tEviZY5tl8Bcb5nOC08=
X-Gm-Gg: AfdE7cltg4YFVS18HWxDXcVqG97h90mI69FbiR2tDj4DDpGuvyRndKY6Ma8arIjeVkR
	2I4jrqKbQ/65o1xO12IEuwPWsqWLej6XB4hI/Gu4j6PipGeqQnsfziELCVritoR0QQmV/ThQ1kE
	rVqvqEFMM8NxvF0T39gD1zrdTEFHAbVwCHmBZQjJdty6lat/EP3DB/8i2bR0lX1oQO1LOW6UCvy
	ePMxIV3V4xY41UC+urYs1cdvxPlM0ZHCzxrxzb5sHRUg40Ajh1+XK1zbMk7XzATn4mS62vt669x
	OS9Rv4eJS/R7UPMg/aDv7ZKKH8oXCRHPNxTCjbNB8yv9m0KEYioYyGFyVM2vjtFAgxA+HP89Muw
	cbqJrmkzCR53RpJcTwamuAaEuVRXSKDuDtUGqTjbXACi+isJYme08m/DLfMW3WtU+AZt1+1P8nb
	CtUDI3VFi5HuAL
X-Received: by 2002:a05:7301:9f01:b0:2ea:b85c:153d with SMTP id 5a478bee46e88-30c84d435f3mr1984449eec.27.1782380463873;
        Thu, 25 Jun 2026 02:41:03 -0700 (PDT)
Received: from localhost ([122.172.82.94])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c7c52eed6sm6731893eec.9.2026.06.25.02.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 02:41:03 -0700 (PDT)
Date: Thu, 25 Jun 2026 15:11:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, soc@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: st: spear13xx: Drop unused/incorrect usbh0_id
 and usbh1_id
Message-ID: <eckh7zm6qgtnlo6itbq6w5s5hvss2b6pbp23lyoaqpfzixghvb@skswhqwiwoy7>
References: <20260625091355.107054-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260625091355.107054-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315581-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:vireshk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:soc@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,linaro.org:dkim,linaro.org:email,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DE7D06C4599

On 25-06-26, 11:13, Krzysztof Kozlowski wrote:
> "usbh0_id" and "usbh1_id" properties were never documented and never
> used by Linux drivers, thus should be safe to drop to fix dtbs_check
> warnings like:
> 
>   st/spear1310-evb.dtb: usb@e4800000 (st,spear600-ehci): Unevaluated properties are not allowed ('usbh0_id' was unexpected)
>   st/spear1310-evb.dtb: usb@e5800000 (st,spear600-ehci): Unevaluated properties are not allowed ('usbh1_id' was unexpected)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm/boot/dts/st/spear13xx.dtsi | 4 ----
>  1 file changed, 4 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

