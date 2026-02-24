Return-Path: <devicetree+bounces-267952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2O4ZEA3DnWmsRwQAu9opvQ
	(envelope-from <devicetree+bounces-267952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:26:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3242188F9E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:26:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EA170301F687
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD853A1E8B;
	Tue, 24 Feb 2026 15:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aN/i+j6a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7481F3A1E71
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771946759; cv=none; b=RimmE3l0kojz0pDuOZ3/D3RDQFvaZyfsHOWsEobAltOPKPXNpIIC3sivaCh2K9QzfXG1F+neUlS2qOL7T4NMetv+w/UYK2F2PyKXNgJFjtvXitWsV2pnkIkwt+YFrHmkWuNB1JAC1tj0t0Ac81yIN4bG6PIDZCLgGl2ACzj7yNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771946759; c=relaxed/simple;
	bh=QnbAFPGFthzvasBmUjYWWjZFAYjww/ilHVXgXGc5JRM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GRQOTIIZyvlu3s5M64Q/+an9sGEI31S0VAyF03dSeL60v169f5JpHbXAWGmphspFAOqhaNUvRVfWEkdB2gFVKtu57SO6Zpy5XNkj0QeTQ9HwRAedopCRLriHuvwMm1FGscTstDYwUMJhVS3HX7V9qXdJXFsX+qqC2NwCMZZqoFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aN/i+j6a; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-1277e072e2dso150440c88.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771946758; x=1772551558; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vrV9BhMxEEs17TmWJHa8CNzBUwr0TwzU8O3qC1THpDI=;
        b=aN/i+j6a5JD5cyFWNNDYDTYXIAOZOhLz+ChjE/yEnqjRkzrNuNwkcbUNECkqJBg1pE
         DFTXvgJkiTnXeZs6X3rsZ9C2BHAbOU567iPIiPwpmFUzp745ZQTOaiq0cSlRYthDDE9c
         Cxsn8h+8onogw4XCMPNJLQJcCiPLBWbnZVobUlOdIx0gm5xIEJUOlthbEWG1AV1IpQan
         1xWpF4GOyaC0cJ42rgsNE37sGPd66fqpT+AACgpPEl5yezMuhtV5vxVqV/Zo8088lF9C
         A0d/3gUDI4jTs8s+q4RwNZTS6FP+rUHkE6Aa44QKSOTGANwBOAH5EgyhFfctmzkHKXKj
         86ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771946758; x=1772551558;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vrV9BhMxEEs17TmWJHa8CNzBUwr0TwzU8O3qC1THpDI=;
        b=ew5gzeZdzLHIsv6xV6U5FCvYT9cr4EiPNs/9anqh2JIptFOL+osaItYgmgMOCWQkBe
         fbynWUiBQEPFrXZ6gjWlz5KVDB/v+zz4iJ2cBo/DMXxpxJg1GFwI6TQGgBVptpDljZ/K
         Op0LLspaLr9b0FWeaBcqTDsGCPP4nxzSXGr4YSW91t2UG9n7qPt8/meg6a48+dzlbEeb
         D7nW0CvTwRTfBxBxgiTaoi7Yt374aBLx/TX0y8K6pAM8/rFCaN5TdagKXGX7QkhAxiO/
         EdNt20YJN7D8/2BN+nM0gGA4aCKt/3TGAgLpC5ukdPYcBNgEYSuTJ3EcV6p4MCJwb2dc
         ryRw==
X-Forwarded-Encrypted: i=1; AJvYcCWbfFO0S+AjyB+YotooLetbBThmFCOzZYaIyxpVNMSOU5p6dXhVNuk+hohPaZJSQ7fJqSaWQoOw/aYV@vger.kernel.org
X-Gm-Message-State: AOJu0YzkFG006n2euCXr9IV368973QCrGQb8eyNr5GUIV062iy8dh2/X
	5uYsyF+Da2mPWuySDGqqobGOlHUh5iMjL9ekmlKlAD7cR6UKXWb7qkbE
X-Gm-Gg: AZuq6aL4UXvD7x3L/LibsDqbiGskqPZu7UwaQCo8sFw4wXjhBgjOoblksJx7aIQmogn
	cJtlIqWcrBW5oVR5Tt7JUqKz74Z2hYU6mTPYT1n+EUu5VUp18waN5DECwdJT2JmFLav5zdiU2l1
	Ul5EXRL6k5rY2BpBMNYbhTySLiB3RFvPIpd+Mx5/nBAEJW31eKToPxvGFZhH/ho5GmUqGUoVjyo
	TjovLSgwLvfTTA7v2dhsulYNevigQP6VIQANqhek0Fyuvfpwg7LpAZK+i3+f/PjGR8IDPhvX3oK
	hRCxjMn6OmpbvijpjW02yemr5m04N4qdO7Egk8lxHALkRSQaUl6sJaIo6AixD5a4reLPdjEeE6b
	I/bynFMxnOkIGkIJYvbcJ+Z2RhCdcGJkf3A0vuwKO5XgBGp6tHKhx8RRO0ZcxQzN9tfvSKVGq6G
	tYImrGOQBHluKywmuaGtqOMflDsg+g2qSC41De
X-Received: by 2002:a05:7022:421:b0:11b:ca88:c4f1 with SMTP id a92af1059eb24-1277f5606afmr123769c88.20.1771946757470;
        Tue, 24 Feb 2026 07:25:57 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af7ae99sm10658338c88.10.2026.02.24.07.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 07:25:56 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 24 Feb 2026 07:25:55 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Michael Walle <mwalle@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-watchdog@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH 3/8] Revert "hwmon: add SMARC-sAM67 support"
Message-ID: <05db17b0-d9f0-478d-bbe6-1efdd9802abc@roeck-us.net>
References: <20260223100459.844967-1-mwalle@kernel.org>
 <20260223100459.844967-4-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223100459.844967-4-mwalle@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267952-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D3242188F9E
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 11:04:48AM +0100, Michael Walle wrote:
> This reverts commit 443b39c82c322c9f3c38bea0389fe927ba00b3b4.
> 
> I was just informed that this product is discontinued (without being
> ever released to the market). Pull the plug and let's not waste any more
> maintainers time.
> 
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Applied. Please let me know if there are any objections.

Guenter

