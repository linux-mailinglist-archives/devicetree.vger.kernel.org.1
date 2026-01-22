Return-Path: <devicetree+bounces-258161-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKx3OCttcWkPHAAAu9opvQ
	(envelope-from <devicetree+bounces-258161-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:19:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C98175FE25
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:19:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 93DA9361429
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A99652857EA;
	Thu, 22 Jan 2026 00:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OkYowEi2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FD427F759
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 00:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769041182; cv=none; b=fZzcD6TYsiyaLiPEcQyuywQnerm9VAroENOOUczg9Z2zkY7vVt57o6w5lk/OFI1j1RYTo8DYfo4Tp0nckP8SJDyKEHRDUCQcNT6urkM4uKRr+ExNV1RtmGirTQW4QtQrtmBQkKxeRBAcz4ESqIZc6GpGVCGFH5RKxeXn9JDf0qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769041182; c=relaxed/simple;
	bh=toFRl0nd/GnmbDTIg/IXBPzUTdQ0PWBRGTaZB3JomAg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HaUpsO9bTmNHPduS4liYGWf/vIq/QTrqE2M11P8VOTg09zvHqxDvWjLbCs9gYQntWUFqVPsaCPxz18DJb1r5gIc2FyMb319S5WxD91XyGcbtyIK1cyvY8xdzwO9c1DpMX6tRysne6XHY+KHO5QToPHBXSrNcbaRiz443rCDWyEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OkYowEi2; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b70abe3417so874843eec.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769041178; x=1769645978; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=my6oNj5dhoGNuHaCENdjfn2I7AS92QIvBlynj8gDnII=;
        b=OkYowEi21T/3wSOHMXcAWui3W89xbyktEDWBId1C7MqtYwKgxWayncCvcKuD/Nh1G6
         islSIRm+nDo0m0/DX0WxElMr+cL8bGoZRJh7Eh3S3+cMqmwQN4TmEJ2+lJJ2KqXOBYE2
         +WyX1jM/5Id7+6ir1peS/Te+EBlKTqz7J+224ZFxJijt2EHrVsLy1gI0kmjfGiH4vvaH
         TcgqxCgofRloR0PWpUr3HvCnxHh6XWVTip3Lbfp3n5g7A+ftg0X5w0kcXy/NRnRS7Pp1
         zhXCmJxhg6rFQYYRb/GZ0vdAQeT0bhHof/chG3z89rId2QOKJuiYz2oenoHnXnTdS7Qr
         B8Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769041178; x=1769645978;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=my6oNj5dhoGNuHaCENdjfn2I7AS92QIvBlynj8gDnII=;
        b=cMk8AfpnZiprPtNjkxrFmtAe1wyn/IQKIZKePa17IT1TImzf3NlDR9W5n7kFHuLjMy
         tOcYqmujKot9Q/AX2YXwlVJ6XFa1m7mYCRtWCk1vaTzVFy/IdwjPJJGfqbAGxCJDk/OC
         0mMBOlfungVd4NG/oGgOPkOG0QuUNC2S55DZWNb/CzSkmji+bsqI0IaPlolu4hDaQSH2
         KbXkm+tqvglyhQD95psOlrBgpfJqYMdBHgcU8gf/JWPvihQ36w0aMsPiWd4F47DeBq+h
         XWu/qqSTJm69+NlXzgjRsfbb+/6UXAUOT6obvF79HFpHVmLbcb/BU2+9awRAqL2GqjxQ
         v10g==
X-Forwarded-Encrypted: i=1; AJvYcCWvSFc52xk+zYawnOewtAWw+UnjCsHZcnNlRJa9N2UeSD7IUevy1PCPEoygQbazN4TV0RbNtXkH5d+W@vger.kernel.org
X-Gm-Message-State: AOJu0YzpYpVCVXDVLIeWsSb8jq5AFK89RT9z3qWX3cWAVtJU8V97hHGw
	Z9hjwxQMMeF3+aq5vyvaOL4IujWIc4TI1pCb382gqBj2QFfATmnydXn3
X-Gm-Gg: AZuq6aLJLkVd3+fvJaHvw+HW7L3hSazwQ8+nOsLr/1U9SG2OPT4cGFRVk4+UYhVANAh
	RHB1AObAZFEW4utgHAHAx8uhuUh0w+55WdS9xEitatxHP0OX/f6aEvzyk4CLVZNpYR99QxaRcBF
	CCGkpPdU2pn2EQ1Vg6GcyAvB1H15H9II3m/AjtIvx3f7anpU9TDSd0VKF+l8s3SjijfylHUekIi
	sITP5QU47YJ2fAXcCrB0NSK2f/0bns0YaznBFzQKfR8XA3SR6luvIqGQPUmGQg4vxwkAxxfOc3u
	dXsnNzdpNsrgNLk6Egyt6UIup7MOf3aQ9CpFCwPElnampQMOeOrZp/+NCoRCpR8BX2ui6Mzbyrq
	KqLQfyitIKfYk9IqdefgLWPkpubKnhC+poJntqXS4dpoYPhbkeQZMO/IA2IExhc9cx7MjNa0YiA
	d7fiT2L8aFHTLN/A+L0hHrGVF9Ht66BW1XJqFj8nSvXSGiMsL0DMEz
X-Received: by 2002:a05:7300:7490:b0:2b7:2616:2dd7 with SMTP id 5a478bee46e88-2b72616353bmr713722eec.40.1769041177042;
        Wed, 21 Jan 2026 16:19:37 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:abb8:3a31:328a:3594])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b70d7f729bsm7107682eec.16.2026.01.21.16.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 16:19:36 -0800 (PST)
Date: Wed, 21 Jan 2026 16:19:33 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-input@vger.kernel.org, Frank Li <Frank.Li@nxp.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Conor Dooley <conor+dt@kernel.org>, 
	Job Noorman <job@noorman.info>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: touchscreen: trivial-touch: Drop
 'interrupts' requirement for old Ilitek
Message-ID: <kzt3myrtfigzvtuw62eqts5tjfwvlueuzifk7dsm5jvawztsle@5wyzecmltldb>
References: <20260121230736.114623-1-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121230736.114623-1-marek.vasut+renesas@mailbox.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258161-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: C98175FE25
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 12:06:46AM +0100, Marek Vasut wrote:
> The old Ilitek touch controllers V3 and V6 can operate without
> interrupt line, in polling mode. Drop the 'interrupts' property
> requirement for those four controllers. To avoid overloading the
> trivial-touch, fork the old Ilitek V3/V6 touch controller binding
> into separate document.
> 
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Applied the lot, thank you.

-- 
Dmitry

