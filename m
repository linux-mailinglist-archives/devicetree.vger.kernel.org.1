Return-Path: <devicetree+bounces-312630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GjyvEit1MWpCjwUAu9opvQ
	(envelope-from <devicetree+bounces-312630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:09:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E5D691BBD
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:09:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Atz5OOMX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312630-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312630-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 32B7230FAF2E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58FAB472794;
	Tue, 16 Jun 2026 15:58:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4FA466B59
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 15:58:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781625490; cv=none; b=Zzwg49f6/HobTcvs7WTtaD9wh+LthU+IPmuT+GBjEGkC8FCJ9zKb86MW23RgxTY3so0BL3ejYxRr1jyyYZkXbPEv9Yz0+fPUf+U2CRaMEMWEiBlDWMYumDMlyu80J7HLU9o6ZW1uqwxoW6Dd3UOf27nQgIINOqJgbvBocd+R9eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781625490; c=relaxed/simple;
	bh=UPUTkSUeFk9JQeZdN+9Z3ErwNhCOF6+E9sYhpJYC5LY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jNnynMIfd+eN4qDFdD23wOS1SWLj4LYOvN15sMsdToRwrC3BwT4Jt7fbYcdhCAS+7nio9U4xf7suKtU5H5FSF9gPv4I5ziAzzJd+ftWZUDKKiVc27BY2Gz9ThIO5zlXaGKg/BY1YXsh2csEccKYIjn0IiLsr8RodmkdyMClcy4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Atz5OOMX; arc=none smtp.client-ip=209.85.210.170
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-8419ab3a297so2142268b3a.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 08:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781625488; x=1782230288; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sNzZT7KE4X5nEh+XCCxZ3PI0TIseL8zd9TDLpDj5TUw=;
        b=Atz5OOMXxdAcx6Bx7uPbVhhss2EraRqLAnHXCN+OD0n5pEVdctLOntmcvc5Wu3WNew
         0/P2VsDIgz3qAf2MWG7/a0aZmqGC7XAGwolE4iLI3g7L9u7syA/6O9GOnmNsRgs4avuP
         aeQhipJjiTDxf7vvkOk0c4iWmvFXTChJMhU8Qdi66XTDKcVskXO/xtBSLnZgojARw8w9
         PuPx2emfZlOHse9kQCdXi4hZTtwXMeuFcGyJ8LAm5TcNNKdzFlYnmE1sIG1ohtYM5RDL
         bJBnmp2o4qXcbqevWvGm/wK/8KtOBfSwDHJ8MbM9BKd2U69MJq+526lgThdiZlbFMF7C
         DS0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781625488; x=1782230288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sNzZT7KE4X5nEh+XCCxZ3PI0TIseL8zd9TDLpDj5TUw=;
        b=oCOLpcAdjmIsTjBZBxvvPNQEVVOUuW6fN0ovd5znOHJ7y8aLWkClv+pwpuC+yjFKAT
         E1Oj8vuaoCeMWR4DOTqlaKGfQrK/qQYepXcaun+RITop8Ez6M7OyJRoIX+XrB8XxWUv6
         5kurKhxuj2Rp5U5Gm8J9m/CHM6RuOBvrMCi2A3Nu2VlbLbAx2s7TWJjkzsQPaVbPXR7j
         OwY7QAk7+XfWAfJgjNGSo13f5ezowrbwIineSWz1+NTcyFrC+4xr5G3KQa+WzZB8aVkW
         6cuA8j4wRN0wwdUPMYylf8+GkGd1qQDz/TeCVSx5m8I6TB7U3RFshOvVUFk7vsDRjZfC
         8EzQ==
X-Forwarded-Encrypted: i=1; AFNElJ9tUspLt/cKBihA73iWOBx0g99/zis5QzbAKSeARKzaqCpJ1HpW25IB5MbQKhSPsi/8uhxCj2ezsY9E@vger.kernel.org
X-Gm-Message-State: AOJu0YzQFoCB6mCVNrauiyHaR4CgOdSr589Nd2ami0EmA/9MES4404DP
	nxdFtqaS6lBVkRwOs8l3p9qCJtJwNVihcGamzaZ3PXh2J1j1ula+NV/8
X-Gm-Gg: Acq92OGK+W+68XWVzFS/WXFFRVVrv/1iFu0d72LtEa/lbhF7L4/3Odjx3ZAcKo9leb7
	xR6RcIhb71IxWOh5XTWf33dle5o4tN4zMCR9Ux7KBHmG/wb/VuwhO24BWykAorRD6oxSLnpkrlT
	q2pOXApE4hEZlHnjJ/FojonPuB3p4krNFizfAioIK/rZg7285hh3ebVaOQ0ft6uFX7KXGWWYADs
	Rvc0JurTFDzG87TndxPyvUcrlC0V9DhWYk5zcTCA9/Bliy/jzJTdlVBHuLOU/04zyekqq3S2JrI
	pD9VdSKBKD8EW2CcvkMwE4e/TcZoxBo1nBVRwtQnBQtJ5jgJe9dU5dmpve/6wDwDMhARpwf7ir7
	tQv8Gc0BuWpPzdVnOy8hvA+l3PbxKaDvd5Z8oPGfKo1p2wm2T5053tz3+1/MKHYsVxQ8UtjykOd
	V6P6vcQa3iymiq3PZjsI5+gJxnIzSL1jtXZmVj
X-Received: by 2002:a05:6a00:1c86:b0:839:9ad:ee31 with SMTP id d2e1a72fcca58-8451539cb35mr4267441b3a.8.1781625488374;
        Tue, 16 Jun 2026 08:58:08 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434ac9c474sm12423557b3a.2.2026.06.16.08.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 08:58:07 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 16 Jun 2026 08:58:07 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Martino Facchin <m.facchin@arduino.cc>
Subject: Re: [PATCH v2 1/3] dt-bindings: hwmon: ina2xx: add ina232 compatible
Message-ID: <eda65f40-5f62-4719-a4b4-63fc7e462fff@roeck-us.net>
References: <20260611-monza-ina232-v2-0-e4375ce652d0@oss.qualcomm.com>
 <20260611-monza-ina232-v2-1-e4375ce652d0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260611-monza-ina232-v2-1-e4375ce652d0@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312630-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:krzk@kernel.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:m.facchin@arduino.cc,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,arduino.cc:email,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4E5D691BBD

On Thu, Jun 11, 2026 at 04:05:24PM +0200, Loic Poulain wrote:
> From: Martino Facchin <m.facchin@arduino.cc>
> 
> The INA232 is a current/power monitor from Texas Instruments sharing
> the same register map as the other INA2xx.
> 
> Signed-off-by: Martino Facchin <m.facchin@arduino.cc>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Applied to hwmon-next. The branch will be updated after the commit window
closes.

Thanks,
Guenter

