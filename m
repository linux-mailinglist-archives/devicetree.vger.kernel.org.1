Return-Path: <devicetree+bounces-271733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDC+MgH3qWk/IwEAu9opvQ
	(envelope-from <devicetree+bounces-271733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:34:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B03E421886B
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 22:34:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4944A3014A08
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 21:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F07935DA6E;
	Thu,  5 Mar 2026 21:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cxSGlYft"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5C3354AE3
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 21:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772746492; cv=none; b=KmL8tobePKlGmYcSyXbCQBFfwQQ1xwZPVwju/9RxVF4kYJgOFv/FW42/uAaoU3lyht3jB2HTi4v5Cve0ZF8qixrQG2zCxn8zX7HEPBor6C+x86OywL0cX9gmWPBQSOuywWnsWMrNaBBfIs/EI0BbnjTk7vH6/r6kRN63kzYKZ1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772746492; c=relaxed/simple;
	bh=we1ZBBjFteLr9bgO+Lax1g9QldZe0sSWMHfxffSETjw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QQG6rZXnUauJbfKuQr/BeTFzhlhRTgQCO1xsLnLTaWzLM/OLDLJfZqVJrRWMKsDipF6mQPJ3xpioxZuoSNEXhWMKOrabNO5V+2SPjqU/IHt7iMnnw62nNyIsAa9SeuUxZmA1wNh2NcCMgKGWMIFCixoEEEPzhEIgPVUJXOk6URc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cxSGlYft; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2bdd40d3c61so7112507eec.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 13:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772746490; x=1773351290; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pSsd5bKDZzrvqGFN4Dck6xWTQJmjnOdB6I5ka+LcKGg=;
        b=cxSGlYft7I/188dEaMTyNCN8PLTGBbzKhiscWi73TYDM/EBkSou3MVFDdKK9UU+DhO
         r06GeTAY9Q0T+OIUFCRE4895HK1M+o3idyHLm2SdROks3UvwshYwZ8xRYZKCneyFKnWi
         eOl3weCOwi9PjEOG/66Y2MeVQk/JCLkgynm8WJkkaLet46EUp/e/2PY/fGzzKUv0itAU
         qTP5wzLc82v12tQke6TBTdjGCG49MdmmfZinUOEw0Fg2S+Y685S6RkBagUA11vdmKe1k
         QsixhuITw1iTHsdkW+AWsEsXxu8ZWwxkDfOgHA2lozPvKvzGRZ7xVmjBqIk1pkfRh9dl
         hSGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772746490; x=1773351290;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pSsd5bKDZzrvqGFN4Dck6xWTQJmjnOdB6I5ka+LcKGg=;
        b=jbKlO7zdp7VwWJgDAIdGIoj1vXCdFBRTg/4wiDZb3PliqfiMZLiR4QFvpT1hfKe6P+
         4VGlcEIj5iDqIuVPahzX+epy+MOLkxv+EYnXlOIg53FsO1zImh2wpqYvsVbxTvcs7B3W
         LgamilvZIsy2pyBuHvIve5Ya0da7jryvnmasVUPGpD81MsFiwUN4b4eCAFIMl5MVuWQZ
         he7WgrQOOBucjzsm029qwJunk9hjwL6z+7lrZTkpvmsuVgmEjGkM1kQzDTo+6HDXpD8H
         +GhqUld+7QODdKDmOKpO28i+G1JFjaNIxN8DkYFY0kPeBld0EmZ0YdASpa7kd3A0nkbB
         Ap9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUMbDRoMfjlIDKriIlb23t5puv+1kHKrcjJgMDae8Ez7n6axdnDRaKEathuLRJXAG19BrFWe6p0A7yC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzdn1K7QfvvgkvCX/DeRc4i1KFlgqAepdjR/zDYpkSEULkvmJN
	eQpLga3g7mnZK4CJLbIAt3LX/dZOiTzL9eeXJdIUFqYrgbg6lFy/SLKL
X-Gm-Gg: ATEYQzwy5NoTsQvepDIy9GgqvklFoQr2G+2xKiT0w1w8v6byuB3g79qBB3EFlr1m0wt
	ihlPGOhe88v9wt2lKYMEw5CCEU0PSnVxekzW10FeY9N0Aktcnk+iiSmWNUf0R+Z+vyHZzybTRZM
	f9MePi0/oLFtSJzokxJPomoexKagTUVRJSKRDX0wuISv2kstOt+bIVckNy5NY8ZsKOY/vPi6QMV
	LJde1L5AsvEWXKHRVf1jdAhzOql5nLLamS2zPEqztRmKAkxAsLaOlbaHysr6QHm45i0DAp3dvrQ
	ru3mh5tg2W5dbZlCkYoKk9UKwmZwmyKVAXtqyUleYMt/Uc4HyT8Sli8HvBWFDUdRFzsHnxe3lN4
	87XlaTY29qv6PcnK2xzH618Eg+B0Y78fZnmKbXg1RAlJO1/jmDvxSZD9za78NKJXAaihsJa6Meq
	fUfrM9phT/MW4u42HJSbg+L/FP7cY9lZBS/lA0
X-Received: by 2002:a05:7300:148a:b0:2ba:75f5:72a2 with SMTP id 5a478bee46e88-2be30fcf975mr3249419eec.2.1772746489738;
        Thu, 05 Mar 2026 13:34:49 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdfba0df2fsm14573249eec.7.2026.03.05.13.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 13:34:49 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 5 Mar 2026 13:34:48 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rahul Tanwar <rtanwar@maxlinear.com>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: moortec,mr75203: adapt
 multipleOf for T-Head TH1520
Message-ID: <de1e20d8-2d0c-4eec-978f-2293c1ebac8e@roeck-us.net>
References: <20260305144044.44208-1-zhengxingda@iscas.ac.cn>
 <20260305144044.44208-2-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305144044.44208-2-zhengxingda@iscas.ac.cn>
X-Rspamd-Queue-Id: B03E421886B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271733-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,roeck-us.net:mid]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 10:40:43PM +0800, Icenowy Zheng wrote:
> The G and J coefficients provided by T-Head TH1520 manual (which calls
> them A and C coefficients and calls H coefficient in the binding as B)
> has the 1/100 degree Celsius bit (the values are 42.74 and -0.16
> correspondingly), however the binding currently only allows cofficients
> as precise as 100 milli-Celsius (1/10 degree Celsius).
> 
> Change the multipleOf value of these two cofficients to 10 (in the unit
> of milli-Celsius) to satisfy the need of TH1520.
> 
AI feedback:

This isn't a bug, but there are a few typos in the commit message:
- "cofficients" should be "coefficients"
- "correspondingly" should be "respectively"
- "has" should be "have" (referring to "The G and J coefficients")
Additionally, "has the 1/100 degree Celsius bit" is slightly confusing and
might be clearer as "have 1/100 degree Celsius precision".

Please fix.

Thanks,
Guenter

