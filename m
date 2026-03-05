Return-Path: <devicetree+bounces-271440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJ76LHlJqWlZ3wAAu9opvQ
	(envelope-from <devicetree+bounces-271440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:14:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3939920E193
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0A7B30470D4
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF90375F8E;
	Thu,  5 Mar 2026 09:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="No4s+tKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61E5372ED5
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701734; cv=none; b=TcQYU6bIiFmcHkchMSmAR4qs37CHv4mnbC9ykQdMbtOu5WKqbrTDt/lNhPScnhVJzccCqaf2rp0FqwDrxyObCgZN+drFfzxAQMeptuz66lnm24j499bRx5TPDP9amMvCeHV9/N1i5+KHsyM+1d4Hb5e14npLpRGPsnrUmIuNzYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701734; c=relaxed/simple;
	bh=WD/1Fuhw7kTyLzZf1oRx5KLWdjeZPVoCTn3YWmum8Yc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aSNDGZgL9b8KyCA+GrL/4sFVjD2vLY2kHdFgwc3DM/D4R0GJm9JpzhTXfAMsa7O7hVLwWHPyQUmKIE7joo+kLYxzLlRno4A221sY9CUan1U2CqfVyOQWO3dspUhf7x8FGDsqg6q+zQYffITVbf7+a9fsagIVtviKT9SnHWtojqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=No4s+tKo; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso70604355e9.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772701731; x=1773306531; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HdgzADYdSTQF3KpHo8SgQF1RTtf2xICHD/S64SaK5OA=;
        b=No4s+tKow5nqquHs/O3gkgVs4ghgFfPhMhjUxzzZWADmCPj8+rMAXnI/k75yiEj/Wx
         RIatEkuI0ROnOgrvIO9u3mM55nXccGhm57WYqQQtlJwGUAtvQ0Nzbg+KR+bAomc/QcaV
         YGrEji30VFMtpyFalyT3i+6w9mtHiW7PvkZ6K53/biA/qhqFSXFwvcdnWyNbUvSbyHQF
         HhdNVNNKO9Q2yCA6XA58rgCL78DNDil+MLO9xaHSA+ROpp5PBDCzqZ59fmIgLFWnqaEc
         VwzCzRTzNaQoYsC9J0gnHFggJJ8jZo+s9nBKUyD9xBC2YlH4f6Ry5mOBXMD6M39TVkIx
         JCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701731; x=1773306531;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HdgzADYdSTQF3KpHo8SgQF1RTtf2xICHD/S64SaK5OA=;
        b=rgsi4rc6Pyuuwrvlrq5/L3y89YBmTO9W6oPfzFKLmTefC+aGrNmRBLdVHA3jRDKhxp
         GbGmqNxIrVNJaZvhws+G3IieRFKG6yaPJLBbaCwp9KGjsGLAWxdjssvvYYczwg6VzgUl
         D9q+/0vxpaz+4L7DgAPGw4aAFaZS/dA+OcvjgyFRs5OmDTO1ggfe9ZMdjche0IoboN0a
         35zDdPf004EFKoBHZz5Z5pGU/lHGaXZ38j8CBUp6vcxuQ989i3st7BDsUWgG0OotoueT
         5qKFLokoINwEYbNlt77jluO5FrVQTf7UVTbsGeN0bMoRPsIw25ObeZjwZqzzpbztQW12
         Rz/A==
X-Forwarded-Encrypted: i=1; AJvYcCVO6cEVlWWeaLziBvuG1Be4LSnx5tsW9Rj3tD9aRrh7IJVWj+S1D7fvKSwigK1s6hSEnEt2HTBCou2G@vger.kernel.org
X-Gm-Message-State: AOJu0Yyujb3c4NWHIOhCVoHohYsx060bESJe+cZZrpctJpAZLf5n6t3k
	yJrlpjhbLyi7iJsusNB/tACMlTYgSNk8m5TKmuJxHmYMMIarZZZizY5H
X-Gm-Gg: ATEYQzyAbxUXCGbQ7NtRNb0uOEr71sMLvfnZ2ALhT14Jsqr2lcZY19zM8/G3ehkpP7y
	dK88l6DmcQSgMBWfvRnjRA/bqy+afn7Qo7D8IpGeF6oM68dnmRVHTGezhfuUSv6kFXNdzlUXE4G
	rirdYoYSTFbl6hTdfB2ZLPHxcWew5KUAJAfqI3zkxjCyqYXUhaCR6R7oHrxKQf1GENVA0LslYYe
	gXEnfbanJ2PjsZxanOlo2FaugsZqLhzZBW3VrTpnXSEWjWC/clxiys8Nkihvk//7eDjhYfHr0Hr
	6qe/PoTVf0nGUQzj7JLADMQacNplOvp2Xxqw3hK239OtY/mp40BdrFLJyu4V5bedXmqzG7Ml2tX
	D2DXrfEl1cCx7Hcyc4JzWzZL6jeN2CjMfj30NeVbchIn6M6MIumumPS4WU338Pkom4uxO/XFbAX
	gv34GNDqEH8NuSISjd0gBYGqFp4CTezvRwcJQcjmmGGpxbvqNW7l2jZlLENYyAOxKNZa8hYn+AO
	pRYfkRIM5lJd4B+x9uOGB/eb9/grNCaJG/GgLt2KVa/6dg1t4ddhimR0z+g0SuepGifYDB8VA==
X-Received: by 2002:a05:600c:c173:b0:483:acd9:bd18 with SMTP id 5b1f17b1804b1-4851983b401mr89134325e9.1.1772701730851;
        Thu, 05 Mar 2026 01:08:50 -0800 (PST)
Received: from franzs-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fb33815sm52248885e9.12.2026.03.05.01.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:08:50 -0800 (PST)
Date: Thu, 5 Mar 2026 10:08:49 +0100
From: Franz Schnyder <fra.schnyder@gmail.com>
To: ming.qian@oss.nxp.com
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl, nicolas@ndufresne.ca, 
	benjamin.gaignard@collabora.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, sebastian.fricke@collabora.com, shawnguo@kernel.org, 
	ulf.hansson@linaro.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, m.felsch@pengutronix.de, fra.schnyder@gmail.com, 
	linux-imx@nxp.com, l.stach@pengutronix.de, Frank.li@nxp.com, peng.fan@nxp.com, 
	eagle.zhou@nxp.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] media: verisilicon: Fix kernel panic due to __initconst
 misuse
Message-ID: <cq7xvy74ore4wqkdarf2p7tgksrmfdaysajqga5ymrdkklwa7p@nrbu52d4gxe3>
References: <20260305080354.639-1-ming.qian@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305080354.639-1-ming.qian@oss.nxp.com>
X-Rspamd-Queue-Id: 3939920E193
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271440-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,xs4all.nl,ndufresne.ca,collabora.com,pengutronix.de,linaro.org,gmail.com,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fraschnyder@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email,toradex.com:email]
X-Rspamd-Action: no action

Hi,

On Thu, Mar 05, 2026 at 04:03:52PM +0800, ming.qian@oss.nxp.com wrote:
> From: Ming Qian <ming.qian@oss.nxp.com>
> 
> Fix a kernel panic when probing the driver as a module:
> 
>   Unable to handle kernel paging request at virtual address
>   ffffd9c18eb05000
>   of_find_matching_node_and_match+0x5c/0x1a0
>   hantro_probe+0x2f4/0x7d0 [hantro_vpu]
> 
> The imx8mq_vpu_shared_resources array is referenced by variant
> structures through their shared_devices field. When built as a
> module, __initconst causes this data to be freed after module
> init, but it's later accessed during probe, causing a page fault.
> 
> Use __initconst_or_module to keep the data available when built
> as a module while still allowing it to be freed when built-in.

Thanks for the fix. I tested it on our Verdin iMX8MP hardware.

Tested-by: Franz Schnyder <franz.schnyder@toradex.com>

Kind regards,
Franz

