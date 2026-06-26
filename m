Return-Path: <devicetree+bounces-315922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 47CZDikQPmqT/QgAu9opvQ
	(envelope-from <devicetree+bounces-315922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 07:37:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE236CA6BF
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 07:37:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=K4OtvwYE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315922-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315922-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B617303C3D7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 05:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7948A3C5845;
	Fri, 26 Jun 2026 05:37:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427B53C5526
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 05:37:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782452256; cv=none; b=jzRRTV/C9W4wnxLYVkhawFzz97N2XauwH0wJyk8/qzf5GIei67u1M0Mv1JTzEcIBf2oKP/XyvK11mw0J3X+MyfHvIspQQJzPK33a3ON9jSGWbHRfMro7flPdrQKk6mC2BaJ9P2y7FM3s7tP4UcLkeRjczyiTZSddjn7MEdNQvtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782452256; c=relaxed/simple;
	bh=DaIliwXZnq+xhC6xHv4wSGHImwOEOkUrH0LZfBOCFhQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Agcqe6y+EQLd02g2IhXh6BCuycwWf/3sW2w6XvHaOBTmU3WNDMTxbQKTt3CehyvCyqvz0pbkNw2cJfJAYZ2rJSJJ+g2WYScFJpEMnB/Y6sj9qIQR+wWFIwYkyMS/SOScBRzvEy8CKe6T4WiLWTc3eM2cAqzoT/+bi6A6ANPmNik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K4OtvwYE; arc=none smtp.client-ip=74.125.82.41
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-139aaba3522so423712c88.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 22:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782452253; x=1783057053; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KO+dGl8JOZI5P4Y+BNYLE/H+0UT+mgOt+djr4eqcLp0=;
        b=K4OtvwYEUVHFNHV3ogyYU4n7Au2r/1gOwxi+1XO4J5y7mohBUggnsWyZPz0x8tMCAE
         iy1o4T+1IV+DfIGtnR+hv5R+OSJkdZlRb8Bz0nHWFenN868s2qcoD0WlIlKHa4Tni2WU
         ov1LonlYeXY+Kh0BOAZ75uRl/D+WN1sgFlAIFFJkDWZa0t5Y8gI8fhhi8rM1qerRchad
         prncmAUyWm032gKWJhrjEhGIJ6nTQft5iVm1hF1WO4dEWWg9sr71m4rh8jMlmWUhGrJw
         vHrVUbjwsmSnEiF3AAJQJPEZAYqFLOEfjXBuy4YT8ag5GOnqoFHKiR86N/qluum3QLzS
         /LKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782452253; x=1783057053;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KO+dGl8JOZI5P4Y+BNYLE/H+0UT+mgOt+djr4eqcLp0=;
        b=h6w5bsQtar3GWz8cPYQJ4WrQINELQKZu+l+QbKdpO8ZnJsOkmDaEuwwDIXSLQiWsr2
         o7xsyuicAsydKSBekTsxQMgDt0MgZ5jEuaNC58znq54xRAbS2tCzdnvjxtophAxdmi+5
         90seT+Thq7IuLYEyZLk/+O3zo3z8z3el5U+i3/5CX+A/nuPRaoYprYm3F7WvEgZ/fHJX
         Wz53eUj3T4halHWkEyCBacRiTPtlU0/8uX9uph+0ck95jsZ+VYQyYvqRE+dln97tnaSQ
         ckLM5eTIY4TRy8LGClZN6gaynIFu8YribSZr38f2aFMkFYu7htniRD5uPY+8o0ipgGXG
         o5TQ==
X-Forwarded-Encrypted: i=1; AFNElJ+9R6H79Vqmzxwj3wKlGhitm/iVOjU4Jq68ZSrO5BxL7YcpgHLhTPisAdt38A+AzrCGAfzc1vmYcUh3@vger.kernel.org
X-Gm-Message-State: AOJu0YyI6ccmZZgSOGj+/4o6Cp9e0Ghwg4XLP844Rnz7rYJxSgKkaOtH
	uEyByy+ftt5gp9v7v+P1BS5Bpd200EMEDe7CxUJno/vJuW94EkN89CrQ
X-Gm-Gg: AfdE7clNj53g8QsHTf907h1kJ6x1fgIe1eyjT5iZ4Bx030juB8vSKaV8EsfHnraWXva
	Q6r3WGpI0tZA+ycDj6U9GSZSNLfdQXLgr1eAcLAuS11JfY4/SzBo/ywV2kxk/CdutpV5T3dmkKc
	LRMDiSRaX1StKcTS8To3oA5md93FnZ3vQSckb20YbRZ/d/pghswFwryFYxxd9QrCV4YKLhaNhN+
	zPyCPHEeLx5U3heGKNunr/QcH3dGoIL5QWoDYDsSq/14ExURcs7ju5sbq33TGKiCPLTnK7rEn1i
	pUURmrVyN9hODWHNsKgvJasMIF3M9i/HELiac6+P4carr20LlcOk8d0sRheSJJkkHNy1vvWPWwT
	LMKEzTd9giICKkpio5vGDL5Op0sKFIZw2MdC6ul0GZvrV/c+4V7KpxD9bHfV5hPIVIy5/rUUo/C
	R4N5Vn72bFqzB9SiXpJaAmWJF8mjsH+SLgrYsK5gZTNg7HuNaA8RMW+Q==
X-Received: by 2002:a05:7022:120:b0:137:edae:540e with SMTP id a92af1059eb24-139db95a6e7mr4536991c88.6.1782452253331;
        Thu, 25 Jun 2026 22:37:33 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a474:bf4a:4966:8d97])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d912197bsm22472462c88.15.2026.06.25.22.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 22:37:32 -0700 (PDT)
Date: Thu, 25 Jun 2026 22:37:29 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: david@ixit.cz
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"Jason A. Donenfeld" <Jason@zx2c4.com>, Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
	Vincent Huang <vincent.huang@tw.synaptics.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, phone-devel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: input: syna,rmi4: Document
 syna,rmi4-s3706b
Message-ID: <aj4QEL9o94PityxA@google.com>
References: <20260523-synaptics-rmi4-dt-v2-0-0645122babdc@ixit.cz>
 <20260523-synaptics-rmi4-dt-v2-1-0645122babdc@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260523-synaptics-rmi4-dt-v2-1-0645122babdc@ixit.cz>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-315922-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:david@ixit.cz,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Jason@zx2c4.com,m:matthias.schiffer@ew.tq-group.com,m:vincent.huang@tw.synaptics.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:phone-devel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DE236CA6BF

On Sat, May 23, 2026 at 11:45:34AM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Mostly irrelevant for authentic Synaptics touchscreens, but very important
> for applying workarounds to cheap TS knockoffs.
> 
> These knockoffs work well with the downstream driver, and since the user
> has no way to distinguish them, later in this patch set, we introduce
> workarounds to ensure they function as well as possible.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Applied, thank you.

-- 
Dmitry

