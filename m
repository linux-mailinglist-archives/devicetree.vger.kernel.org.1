Return-Path: <devicetree+bounces-312642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3QuwLep3MWpxkAUAu9opvQ
	(envelope-from <devicetree+bounces-312642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:20:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADBD691F7A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:20:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=e8aGEVfN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312642-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312642-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D601D3230AA8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC274657D0;
	Tue, 16 Jun 2026 16:07:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A72466B4A
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 16:07:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781626052; cv=none; b=ZBiFslVmmmxVEHS9r1yPgTgPP/Er4pZXxBwvYkc8KutfWhmsp/ay/lJuLikxABCrrGKp4x8cO/UqsmxHmUXLS06XSSNHO8/mS7JQ/THg0SrbvAlDa1RtE23AztEi1ubzFRqigS8BlhAgeYuDA8ccigYBOFeoCxwowmRs+96MfI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781626052; c=relaxed/simple;
	bh=b7FoClwm9N7t4yAIOtvve5Rh0DIMrqeK8iWinQN2qKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n9FvuRLmjJy9DmB9Y94r7RqZn2iaxHUb6dZrTpA+lrQdIeFsd+d8YkJjQGxHiXGhaw7RUyYkIKNqW1Sf+zBSA2bT7uXHb04xKbw9TzeWKNc9jKFgptEY3eH51woVBCnptpSM4GF/wJrc4uEhyyl5AHGvluGqABqWl3QlZIHq+e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e8aGEVfN; arc=none smtp.client-ip=209.85.216.49
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-36d98c9b596so3130202a91.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 09:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781626051; x=1782230851; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=67luUYDo366p2kkhhpeEjBFUIoaqUmLTWLZe7WejNmE=;
        b=e8aGEVfN/Vi+PGGxRnhrfDz+zjqv1B0G/ef5/ROeuME+Uh8HrIGsUvkVBdm8JFUdrT
         Uprfxkk/hjXX/3VYFiZfRvIVeABDvuZq+Z07ob/QBhar7ElP+F0ryykrfU1py5NVsfY6
         knKghk4S2e5A001Qj2KiiH57kMeHCPUX72WEllJGTi6Z+EMU2DSaf8gcoqpNmA9tXBHR
         /fbxGBN7S0U75oHxjjTxwihVN6EDxnDaYgL6x0YWFL8MeaR5PWwYMMj0RmV9ryd/3p1D
         RqeTNl5ZMvpe4BgjOxNx8nBdcWUpnGkinLu98lOjAek6HelCKCj7TwIGd/CkYlDuTn2b
         AVwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781626051; x=1782230851;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=67luUYDo366p2kkhhpeEjBFUIoaqUmLTWLZe7WejNmE=;
        b=TX0fTscdHEENPeM+0Htwtw3DuwWPICmuGNlNAZozFsG1Hk9pO5qkeTiqXDqfulK4JY
         TUU0v7A/AT9jsw0HfseRSqKvoHlZglXOEKv2w7HcGZDoUBAGCPGga5cNRi7Bh/QS4Yyf
         qUdMXJznT0ZG4c/2aa+6rPl0cmNNuBe6QZj7FUiSLJnhVvZe5iHjOX+M5qDTh82s2AwP
         IGPWFClQBo9/sG+Q4BgT8Jb3Iju+4meyzK+aIiBc0P5C+cuBj8hQgSLnZVbjdJLyvvsp
         2/14igf2S2tGgDlSxQ3dXWzsEThnvghP0np+MLo7vDa5AyuP6+E196UxbxtJxZNIwXpH
         wxZQ==
X-Forwarded-Encrypted: i=1; AFNElJ8yk7KjYogY5govFqrBfwWmbPIwPJT2RaOo9iqlecGSNJAFrVq6PTboFPSewsct5hzRNRW2J1Eg4G+6@vger.kernel.org
X-Gm-Message-State: AOJu0YyTXRuR4tIBPo6NcP4xvFTzIuBA2TNhcFTK22W2xF6Rrig4IOhb
	jQr1kM8SgcK+eDK1DZnh7VNBS2MZUErUOGTqqgHKYU9W4Hmxz06APjzx
X-Gm-Gg: Acq92OFW+kmYR9nl/sDPzAc5s1y/i5vNcMX2ybjd5SIo6sbak2V5Y8elr2zUYIRZQbe
	o6po5yoYXDDStgXBzx0oSeTnZYMvmalx8yXJNkj7uRAbzB6PVhlnh8hzSZDTf8lFdMzijkQKIdf
	IkNSTMp2vXa9xSiTsjUtcQKJzEQYsIaufyFGgHD2wCaRhyZBX2RPjSISf3tUkpknCk2bCaF2Nzz
	OZQVj1mLu540pJFCFpeGHBzfLVYVuZrco+7oUSL13XXupaxhVGtmtHVwOVBNV86HSljZ7HQb6Ok
	cgiBt1ef3D5rofPsnGXvTUPVL0OT5W/N08U37RtLspeQOni8+/mdwcgTkO/MwNHPavwoSYE+qN6
	gnAsC3YB0nhe9q3Xf7tcOrsH2SA7jOoDhR/wp6AJt57C92HsLDhvKQaDFDKPayAaRuTBR8YMkTX
	m0F7BmPvJosFxgEw8LZRMsFE7kz1jtR56VvbwI
X-Received: by 2002:a17:90b:3943:b0:36d:b818:f848 with SMTP id 98e67ed59e1d1-37c92fb7b4cmr154490a91.5.1781626050618;
        Tue, 16 Jun 2026 09:07:30 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37c953c237csm11132a91.0.2026.06.16.09.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 09:07:30 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 16 Jun 2026 09:07:29 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Potin Lai <potin.lai.pt@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Zev Weiss <zev@bewilderbeest.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Cosmo Chou <cosmo.chou@quantatw.com>,
	Mike Hsieh <Mike_Hsieh@quantatw.com>,
	Potin Lai <potin.lai@quantatw.com>
Subject: Re: [PATCH v3 2/2] hwmon: (pmbus/lm25066) add current limit
 configuration support
Message-ID: <09f0ed53-1ebf-4f1f-b597-b0ef5ece6f74@roeck-us.net>
References: <20260615-lm25066-cl-config-v3-0-decb4f5b0b77@gmail.com>
 <20260615-lm25066-cl-config-v3-2-decb4f5b0b77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260615-lm25066-cl-config-v3-2-decb4f5b0b77@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312642-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:potin.lai.pt@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zev@bewilderbeest.net,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cosmo.chou@quantatw.com,m:Mike_Hsieh@quantatw.com,m:potin.lai@quantatw.com,m:potinlaipt@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,roeck-us.net:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1ADBD691F7A

On Mon, Jun 15, 2026 at 05:49:17PM +0800, Potin Lai wrote:
> Add support for the 'ti,current-range' devicetree property to configure
> the current limit via the DEVICE_SETUP (0xD9) register, overriding the
> physical CL pin setting.
> 
> This configuration is supported on all chips in this driver (LM25066,
> LM5064, LM5066, LM5066i) except LM25056.
> 
> The property values "low" and "high" map to:
> - LM25066: low = 25 mV, high = 46 mV
> - LM5064, LM5066, LM5066i: low = 26 mV, high = 50 mV
> 
> The Bit 4 mapping to High/Low current limit is handled dynamically on
> probe because it is swapped for LM25066 compared to the other supported
> chips.
> 
> Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>

Applied to hwmon-next.

Thanks,
Guenter

