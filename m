Return-Path: <devicetree+bounces-263050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wK/xGy2qhGk14QMAu9opvQ
	(envelope-from <devicetree+bounces-263050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:33:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C720F40D6
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EC89F3019500
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 14:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F60840758B;
	Thu,  5 Feb 2026 14:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FtsXkg+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422403F23C3
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 14:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770301923; cv=none; b=oBBv3ARvCMnpzdh6483feSp4V8eBhDtWYopoHrQw37egDwhjEGVzEPbLQbroEupKO4FHby/tKjlpu2wB6EGZWFFPq7ZnM3NR2FDVYgvV8U4YL9yCVlaXxLFikHHC86UuIT5xB6Eaxa1/x2iUet9jVAg03dTS4RxNCpF4HQ51qQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770301923; c=relaxed/simple;
	bh=KrpVq21uAPBgvMwD5bVVvOvj4m0oV3UgX1RtALao//I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YCai3GnyUvtOjxf0GT2Tk9lPx+mxSH+m9CwcaTUpqxgzR+itm70+eu7+6K5JqimY0YX5II+FzFiTrrcAwS+uIYJs+ArjRUWOVW7ncD9NZBe+bp9HBjSJIdTvX4vpUUwyZUT5Yf5a/YRIWGPyj9ALflJUZtjoDF9JNUWF/W7VlJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FtsXkg+s; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-354a2a7d90fso445078a91.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 06:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770301922; x=1770906722; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PWMAbfW1h3czFpPAr6dxtSn9+/tMTdi7V3empbBhtRA=;
        b=FtsXkg+sNa0qzWzZpm3Ti8pleS/bqFWS+IWo+QERjEk+ellcBkOmpZT3CmEWmGA4HT
         nraZDIVCPqt3Il/Hw0IVbkDiH7xXGQdEEW6z71JFI9GqRevVcTRWBgTQLtWbK1MS5OwZ
         MkDoJA1UD0DB+t8uuUA49Gv4nyo43xe1gunGUhVqqEYMaZfyKYezqNBDLr+wZZH4naHi
         PNnrbwFLSGlfqu0Yv7RWc7oILrjeEtdvfNEZbf/GXCx5VEmnd+vTVa6PvnFpAgsdmp9m
         FcD1EIGWqvQ8RR+M40gTKOSzEnZpiyvK1ONCV/ZzFOL8B6Z8sjk+6glKDqpGwGlA9zSa
         YQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770301922; x=1770906722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PWMAbfW1h3czFpPAr6dxtSn9+/tMTdi7V3empbBhtRA=;
        b=YdmmlLZDJPR4rK7nQbMUcGoSBkMexwnbDOqzsCkLXEnmUZLA/LPx0sKBTL3Ji9zW1D
         zw7JODW5krO55OjOum9xNmerNTeEhixpiVzfoWpgkgme+LoRBvnVED1DIHVgrVvQUwj6
         KXHo3+EgEGzTZjmC5yQulUBTa1BAFl/7EyJRsp2liO6wD4pvZ6nFlieS0Dwn9QhTpHrp
         s2lnS3PTqRtFyH10jfz3ZS7gn1x2AnLI1bxiRCHCsWFsdSt+G5l10EEs1OaGKEbyV2xq
         Ie69neeaZFOiW7r+OUHMPzkrMBnvsD3cFxXe/7LyOSWcOVQu0D/buBpI1t2K2DWLr4rB
         CFHg==
X-Forwarded-Encrypted: i=1; AJvYcCUNy+L1R2JNW8LsIUToHYU0cNUt18Cjr5s3rNIxS/m8LMjDJHI3PgCdyjQthE4zy+oBKZ8XgblJMgQR@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx51Awv9F7lF06LoZf//LUCOZOvdxrhaGnDGRinhbk9KyINLYI
	cA9wxEJbA1CD0czg4xB9gEYLXQ6GPEI0CDDgHliueQ8VE6dTxlk2EU0k
X-Gm-Gg: AZuq6aJsAeZI6hWDA9KrVVXivqS9b89for8uYvWL0jO/L0Wygx5L3+l4xZ4qXJYSR9w
	3E0XjL81Q4UV6NO3ofqM8aiAG8Ll4jLyIqY/upL3W57HZx5KG+fn86wFRN9l80w8804V1bFKvA4
	JorGdjimY3DonDvSjln1DcAb/w/fROLMCo1gIIhjurP491snncFJEVIasLu2x1dxhlu50ElhB26
	Nstzwmntsx0TpT4aX+Th5zCI6Wo/jsNNxe/8lClzHb1hedDKUOXQyWC5CdyPER6o8knkBWTulFX
	TrUcvNZ84ai7X6TJY/OwZG2wMPVrSsL2cjTWAvNP3NdSfb+CR/sUIl9Rqp3mHgDXtoC+7HMCIRQ
	S4JIM3Xsn7WRv94drNc2QdLlpMGnlbtEAo14PfH3iMIJYwYJSoVLTHDd7aCZYwkm55vFiafyi20
	PXnY5QPEOO5AzeHN5HPCFe7fvULMG0lIcSDzY=
X-Received: by 2002:a17:90b:5870:b0:353:5595:3247 with SMTP id 98e67ed59e1d1-354870dd823mr6355651a91.12.1770301922346;
        Thu, 05 Feb 2026 06:32:02 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487726e6bsm2092960a91.6.2026.02.05.06.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 06:32:01 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 5 Feb 2026 06:32:01 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Colin Huang <u8813345@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org, Colin.Huang2@amd.com, Carl.Lee@amd.com,
	Peter.Shen@amd.com
Subject: Re: [PATCH 3/3] docs: hwmon: Add Q54SN120A1 and Q54SW120A7 to index
Message-ID: <a3094382-087d-4167-900d-1f2c587aaa18@roeck-us.net>
References: <20260205-add-q54sn120a1-q54q54sw120a7-v1-0-09061ecacfc7@gmail.com>
 <20260205-add-q54sn120a1-q54q54sw120a7-v1-3-09061ecacfc7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-add-q54sn120a1-q54q54sw120a7-v1-3-09061ecacfc7@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263050-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: 0C720F40D6
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 09:34:37PM +0800, Colin Huang wrote:
> Add the Delta Q54SN120A1 and Q54SW120A7 PMBus modules to the hwmon
> driver index.
> 
> Signed-off-by: Colin Huang <u8813345@gmail.com>
> ---
>  Documentation/hwmon/index.rst | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/hwmon/index.rst b/Documentation/hwmon/index.rst
> index 85d7a686883e..62d6fc0817eb 100644
> --- a/Documentation/hwmon/index.rst
> +++ b/Documentation/hwmon/index.rst
> @@ -216,6 +216,8 @@ Hardware Monitoring Kernel Drivers
>     pxe1610
>     pwm-fan
>     q54sj108a2
> +   q54sn120a1
> +   q54sw120a7

Documentations are for drivers, not for chips. There are no such documentation files.
Add q54sn120a1 and q54sw120a7 to the documentation of the q54sj108a2 driver instead
and drop this patch.

Thanks,
Guenter

>     qnap-mcu-hwmon
>     raspberrypi-hwmon
>     sa67
> 
> -- 
> 2.34.1
> 

