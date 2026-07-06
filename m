Return-Path: <devicetree+bounces-321078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0JjoIxuCS2prSgEAu9opvQ
	(envelope-from <devicetree+bounces-321078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:23:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 135D570F1B2
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 12:23:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=UyfE2W+F;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321078-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321078-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4195E3014376
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 10:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED18302140;
	Mon,  6 Jul 2026 10:23:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97382236E0
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 10:23:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783333399; cv=none; b=mh1kACw7t7LzzGeMNyUeO8js5mL5qNbwt5kibfECkxCi5PKIu9uaAr2WHcGeWX/wt1EQjoUkaWKh+S2RvjEac2mVLMkv4SBs2QhnFSLuf+ce7AmjTb6gk0PBRyhwLFB8juVqilGO2bDGegF8wbmwdCoEed1pxenEyKyok1AGIqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783333399; c=relaxed/simple;
	bh=Iqy3tyoDUG5thE5lCg9oMEFEo35/Eoz6TYzbbn1DjHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gELRl/B2VGG3dldAomLBvnnhY/e401jEIDVyD2gQAyoIXHmGCbcMZMky2YG9sUdejSJrGykgZg81VLUCXvxuaP99G9xiprTIA9HgB5DYFbbpgrS49DYcD2BUjlEpk39spKn18ibx4FovKSmpTIWzLAV3dvtrcxHTUxoz/xfUz5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UyfE2W+F; arc=none smtp.client-ip=209.85.214.179
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2cad225673bso23261295ad.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 03:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783333398; x=1783938198; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EL79Y50FRAVxmnnlJsIkErdepD3FvDl+N7VCboCkaKM=;
        b=UyfE2W+FVy3700E6ggIVqKpn/bvPEEuTnyzkHzdOMfcOvofG2osod8apNfpTT90OGE
         LVsJwuVROTYXH6wR8glwfeE44wn31+TZqluxVUg2wWyQIqPjTldwdqT3U19Ghh8XyO/r
         CbbQ+ch8EfIr+E22QEWWw4OyT1K+ZTstsboacvXZsk7fBSxZv2jauUyynUWC8/tv812z
         MTjXA+tMbDnNsBU2U1T7YydxTQOFXsQWhmzPEnMUYI97jpIu0L9H+lWKQKRp/llzbzNc
         JYFzRkNydQgsorntHnB7Bb+yzSu3AyBOGzHJbaScXvXOongdp0LBVDJmfddzc7i5Mgel
         yUtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783333398; x=1783938198;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EL79Y50FRAVxmnnlJsIkErdepD3FvDl+N7VCboCkaKM=;
        b=puHP+X09ql6hPUDcGtW2aR88QB1h3X+VtXB37IHNNVykJjxdMH3H2iyDyZiB8MFqe2
         vsNgdr2V3ySCh4VpPxyC1LTAZQ1ptl8jhJwaDZAKK+2goalVRqtw9k7xqOxERmmI51Wx
         Tc3tQbpr1d6JWRcj0aMJN4cMkby6RwODyuagNGuxZN2/v1It53wJQ3/t4ZDPfW1CmvmG
         2TtO+KncmP88agxSG5WD7s1sZSxBlkK8XSi1J2lr2G9Uq0LuRIMj3ywYRJ2H+AV4+6hF
         DNXwtSn2oBWjcHXCl/nxJbd2q01Kzx8gWqdtjpjhPuJaz/nXRpc1xEWCtgo1FkaraCoC
         g2Mw==
X-Forwarded-Encrypted: i=1; AHgh+RqA7pya7jPANa/TO1ZH7167KuYM+rx5uCAMfzFaN2zG/IfgCCYzYI4PLwUiP4xZZFXEEC0zGgOTCOba@vger.kernel.org
X-Gm-Message-State: AOJu0YzfWO4UBQjiPfR8XaQuMSncDLuHopuGhm97NE1zgOPd/O2Che4w
	nHLQq/6n+uZaLYSKiMvUEqnxSaXhB+e1A4XstcLJyjCADQ0DYyYLS/JkZF+pRA8wawA=
X-Gm-Gg: AfdE7cld81t3l/o8LNc+Ya0h9RBukxhEvSjLQa3JRHsumUJWTsqFy254cIfN5CEuX8R
	cGl//FSA9U4jmx5Co6h1AKCBRdcy2iIEYCrvHuh/jTa+gY4qbYbYUPFb6f2L1DKFugYB5g8vK2T
	LBnKZpNzsKklgPlF7gmYbOVa1d5332ncBhFua7e6OPilnfBID3E40gnx6jYLYHXtfbH/wKL8uTc
	uppzImH/FMI7P6lT75dFmcy+GTHtiuvFxsMR0zcQPabr2fW4GrhEvgNUbpuuTW9LatLvlX0c26I
	9oUrqx5FWyRIdMvloVpScPvLN8id/HaCnASsB2zZhjNFd5AUh5FBWCvDhe+yx4fJZa6y51Pw+xh
	VicpdCIcnNwp7V57GS4DxNCnQZeWeBO1ogcC0agoNZgYNAJPkf7XzUAWJvhs7D8uDnHtVLIOcOF
	lKQ6JNnOGib1hu9Nox1dK2Eq0=
X-Received: by 2002:a17:902:ea0c:b0:2ca:329:3d96 with SMTP id d9443c01a7336-2cb97e432afmr89665045ad.3.1783333397781;
        Mon, 06 Jul 2026 03:23:17 -0700 (PDT)
Received: from localhost ([122.172.82.94])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b3ececfe4sm61161044c88.8.2026.07.06.03.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 03:23:16 -0700 (PDT)
Date: Mon, 6 Jul 2026 15:53:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, linux-arm-kernel@lists.infradead.org, soc@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: st: spear: Correct indentation
Message-ID: <gbafvant4c4cw5gw5pxrwpjjueroj557i2dor3p53z3jodqimz@cbiztajpiex3>
References: <20260706101823.341230-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260706101823.341230-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321078-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:vireshk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:soc@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,linaro.org:from_mime,linaro.org:email,linaro.org:dkim,cbiztajpiex3:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 135D570F1B2

On 06-07-26, 12:18, Krzysztof Kozlowski wrote:
> Correct spaces or mix of tabs+spaces into proper tab-indented lines.
> No functional impact (same DTB).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Ongoing bigger work for all bindings and DTS with built-in checker (dt-check-style).
> ---
>  arch/arm/boot/dts/st/spear1340-evb.dts | 2 +-
>  arch/arm/boot/dts/st/spear320.dtsi     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

