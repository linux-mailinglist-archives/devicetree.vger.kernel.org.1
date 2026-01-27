Return-Path: <devicetree+bounces-260082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8C+OGloMeWnyugEAu9opvQ
	(envelope-from <devicetree+bounces-260082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:04:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D4E9995B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F245D305465D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5529C3218B3;
	Tue, 27 Jan 2026 18:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JZ51jpGc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AFE328257
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540183; cv=none; b=qcbk9yR5Lmvsa/ifYcUsSA+1zjQ/lSZKFutmmL1KVmoBMKEM0QmBZLatD9rcOXfH3huKDHmeyTtHmBaqlggnsfh4/irl99tChNntWMLz0NByXuVr8/glzMofvwH5rLFt16Xbz3aVMHpGjXOD8i7/L25qmh+M6lRzbmPZJkgqlq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540183; c=relaxed/simple;
	bh=XwkACK+iKw7oI/5o/Gv8sfELgLAgj1JR8qRdX4LMvYE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fzypJgBGyCIV65K1lFQvZjXaJeF0xuS1n+H6iR/UlfX6wJaJBM+GfXM0ahSnW3aWgHVWGoWwIP4pJNQ3wHVmdAdlV3rVVpG7S11bkUoZe4PDsjKMeMeDZYll700LxQqmKpEgHp0bQrJBeM3zL/TlYi2ifxPiE8knqN0YDhyj8r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JZ51jpGc; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-65f59501dacso4049047eaf.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769540181; x=1770144981; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ZfqLGIvRpFE/gnKzE3sUmBILX80gzyy9OqTW4jmzZU=;
        b=JZ51jpGc3szhfAHgBxvyTrc6And4yALvw/L2ku3/zaR4wi7WUAg0wh8VCK/ocZYk2x
         0Z3aXpL7fd/QodfgxYwVAHbXsXSFRXdXwdk4ypwtdY30FzxbXUtSjotzPBXiZFT4MaXc
         4z6QlY+qDIfSHn4Pc8q8ny2AZpj+Nwva0+H5akVTl76j+BXMPGgk/L1fsMgPbpjCi4Uw
         shafZBb2W7HZ3AXmh1BB7YpYgOTbFSQbIbe0923pU4OK28WCK5OVgQbYS5VTj5lwf86d
         b5B3SfUAthJQ4TV2k3ZLNLiVlXKhY3GArSSColT1PL7W1yyCcvTNzYX4PcocnUHqVTOQ
         21CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769540181; x=1770144981;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3ZfqLGIvRpFE/gnKzE3sUmBILX80gzyy9OqTW4jmzZU=;
        b=GEsgSnZ+QX+Oinoks/jfS/EJRtwsuQW5QNBX8x5MjJALyXfV/mSsqGHFug8W8BkqIW
         DqUdSkG4oMmIa0PMqF2Ke1QI+ssucSkq5cy/1DyxllbyFC6dxbNjGI5ryZGDx3j5XQIh
         XQTWejCGI1VeXqq97bOqmZEyHjkENxcpFM+EKJb4H6EH6ajByyYzrMoRGgHobzGFnWZV
         PFEjOJmaBoJ4y0Vq6E6rOvdh81or10SH0+UbhRBtNw9eEtSYoUOU81+hPF6YCW7cXsXW
         5jO5Mf/5oyrYjPX2VMsTgFoTQWJEIiNjeKdceZC/ooMisoDOrnBMxNjMdyAxfjWiOC9O
         gmUA==
X-Forwarded-Encrypted: i=1; AJvYcCUImzb3z99OanlRX/nxeTw2UxyKr0dwpiUzqcP//m2B7rxI2abXvHYwCNEq6mFpoMxC7DtIzFb3c0jf@vger.kernel.org
X-Gm-Message-State: AOJu0YyIkHkiRriEBoM/SK/mwkV2qdeUqVy54iTt2JrLYDRKrUGHguOE
	SUjF0GfIIFYh420NacANdm0rwMyvdENnSg7gU33zVNfmDCXpF6oNC+6ziT/Pdf6e
X-Gm-Gg: AZuq6aKq/qaMktvE1WjIBY2ZMxPEXUQaSu4s6X+hI91a3k49EDQYZCNoK3w//lqXT5P
	V+t7RO+sSnpIadjjJ771OorUuzDgi15dJroFeyyHAL9wLLDcYs4O3+p6rVkTjJyxz4p0IYZLwTb
	UV3kuV14gKkT7ZjiZEpvTXV3S9PrUeXPA6ydWm4BXCw49X/mEUsy+Si/yJ9LqPu4myWyIrNO2nR
	SuY/G76oteKSSoyW2LZ0pozz/yuLymTok3j46UCXcORqv1zYpYeLG2Srqd3avt7a/5M9xVdwCXc
	9pnzQBu0ZEnFIB5znP6vE2BIGTTvUpimzF92afojslve58AAHVtyHfGIz0wVM/xVGKyOvqEBUFg
	SuZJ9NlDGiH+R3oV70EBs2S9aEBtUPqI2MHx1PfZhKQFNLLzmhJCXDjKt+NNNHx+0JR0J9JDQJT
	tuXg0GyFgdtFSz4/1y8mOKhcLh
X-Received: by 2002:a05:7300:2382:b0:2b0:4f34:eed6 with SMTP id 5a478bee46e88-2b78d9d75acmr1505750eec.26.1769533958980;
        Tue, 27 Jan 2026 09:12:38 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b79c3aa364sm33692eec.11.2026.01.27.09.12.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 09:12:38 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 27 Jan 2026 09:12:37 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Almog Ben Shaul <almogbs@amazon.com>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	itamark@amazon.com, talel@amazon.com, farbere@amazon.com,
	ayalstei@amazon.com, dwmw@amazon.com
Subject: Re: [PATCH 1/2] dt-bindings: trivial-devices: Add jedec,pmic50x0
Message-ID: <13b492a0-db2e-4e44-b145-cf99f1975fd8@roeck-us.net>
References: <20260121151947.37719-1-almogbs@amazon.com>
 <20260121151947.37719-2-almogbs@amazon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121151947.37719-2-almogbs@amazon.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-260082-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,jedec.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 95D4E9995B
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 03:19:46PM +0000, Almog Ben Shaul wrote:
> Add devicetree binding for JEDEC PMIC50x0 compliant I2C DDR5 PMICs.
> https://www.jedec.org/standards-documents/docs/jesd301-1a03
> 
> Signed-off-by: Almog Ben Shaul <almogbs@amazon.com>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index d0f7dbf15d6f..fb16bd91c76c 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -171,6 +171,8 @@ properties:
>            - isil,isl76682
>              # JEDEC JESD300 (SPD5118) Hub and Serial Presence Detect
>            - jedec,spd5118
> +            # JEDEC PMIC50X0 DDR5 Power Management ICs
> +          - jedec,pmic50x0

This should probably refer to the standard (JEDEC JESD301). Also, I am not
sure if pmic50x0 is appropriate, since the standard refers to pmic5000 and
pmic5010, but does not cover pmic50[2-9]0.

Guenter

>              # Linear Technology LTC2488
>            - lineartechnology,ltc2488
>              # 5 Bit Programmable, Pulse-Width Modulator

