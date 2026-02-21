Return-Path: <devicetree+bounces-267141-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JIhLQE6mmmTZwMAu9opvQ
	(envelope-from <devicetree+bounces-267141-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 00:04:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1073A16E331
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 00:04:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 619A3301EA05
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 23:04:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1264433120C;
	Sat, 21 Feb 2026 23:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UTrBQoXj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BEC274FEB
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 23:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771715067; cv=none; b=N3GRgTUSNeImKBINUjeMMuPsjG4ygc5d2FCacpUQx28q6HEThIgEmFMfJBn3cCwOIqaZhXMkAlxqC1k4vNwaA3/X0m493rq6dEgFvnt5hvgsUKhUHwySDhrsvTLWSPd9nqHToG8tVFmT+qnaZtj0q7pLomkzLKt/AsyGcbXxyWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771715067; c=relaxed/simple;
	bh=F4CLIfytilJvnTwA02TvCs0S+RiRZBok6Am728cvIBo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nWtGFKDCiLRwZhq1IrH5DcT7Pg23fsSTnPj2LiMfLglzy06EmHIJXRROoX3xmWCmILJ4POcN699CRBslg6WsBSJEyNiogm69YWL116oC2Ldik7virpjneVOpBU+bkaq25wW+ocd6/Bk/VFFnfpOeyJeedvYhI5g5NdmLhxYfM2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UTrBQoXj; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2baab3137bcso2700146eec.0
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 15:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771715065; x=1772319865; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AgyBxQobX6hLEZu+PS4ltH40DvIKcprpQ8pSAJQ08kQ=;
        b=UTrBQoXj5bZlw7ltscyHYy9b4PsZ9yAy6H9R35Ufl4jyD0q3OBHP3Sbd0GX4bAdHke
         7UW6lWtz5n51bZoZ25ajpnDsCRlktmul8y/MacL/e6bRQ47N+OzKDLS55tMBCU464y+w
         O2s3MZpsJsjxbMxycIYAz3azwfscV42CeTAVS4KlR1xYAWtGDv6zl6FdtwYkNd9YUARz
         9W3J+KvImqY0T9bbBnoNTqseQjY2Aqdd/dCwBlUD1jfYyoDpwAfCXv8E6KdUmNWGiSJh
         AjwB9ty6y7x1ol3iKMks9lRQ3qM9OXxQvh2/Dv8N7uDSijvbw3LuaDwp21XqxRhrBj2L
         GK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771715065; x=1772319865;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AgyBxQobX6hLEZu+PS4ltH40DvIKcprpQ8pSAJQ08kQ=;
        b=eHw8tseIBaG48AjbAGiuEclxIaJeK7qZh4Dk/mJXzMQIV4BZCNRCV2BeXXuzq36HS9
         s8Epmm2ta3M2VZNiJaUGblzxBDfJ77Xh3xnxSy7VHugXB3PsxRO77E6Gbbjzouk/E2Y/
         jJ0lPhoftmciwEytyJPXFs82B7bPvllnnB6nshJfFhKEQYOARRWG/0qtB5hQ2l1z6y4/
         z23ObsMMUKTAcO5ORYRRlKtmHQZJKtM/ZuuwnO+F7X2zkX275SXaRz9DTyAjDxdXkkZ1
         nnqWItJUK9bNGJdl+boKkB1K6R/1j1CygctGDdmvn9x4IkSDlS/+Ecp/Gn9YeLj5zIYH
         waKg==
X-Forwarded-Encrypted: i=1; AJvYcCVC4n+TKsuHB65T3k/xFlMDkLIT/xNHaKtd3jCZoKF7Ln65OYMzcFUjOeSYxXt2FYMtkWvKGU3YJQFq@vger.kernel.org
X-Gm-Message-State: AOJu0YxuStKFodX0OOsDmcdL6ENmcs/UhqAGEpK1JSOMINyxVRB7v0Gx
	RNMyo/O9I1+0gHngYyoSlhhS8nuQ31o+NAgq/dHa9rvZF+TsjYJGDbBj
X-Gm-Gg: AZuq6aJRt/BoH7DFj55Jr8+4opIP2n80KsUcpr193o1VSRgu6KOvVga9zc1oHZwc8DT
	UUFJHgSVyjGCZNa4V+5TmYHjdzeNyVDEDwJHxlx25x3j4qv2iHMetaJT+XCESu4DjJaeVu7gf9x
	+L7X+eFdR/z/ML5Y8DBsxfhxmfOVtJ7XSDPlCTOlBYeI+zCEm81L/y5q3jMS9XdQl7z6EIx4LXB
	4S8zWkCkXunhDm1rf3BpVOmlsPMifY0Ei2vvuZ2DoGH+vPTWCqylUBMNayWa6Qu22fteIzyUFX0
	mP9XxN00+hSXlZ6JYGWVTgOGbFK1yExcmzJwtf6JfaUPjdB/2hZHC9xN6OX352MUnjSIiBInoxk
	1hQXioIBZKilB7YFRUAlCk3q8btL5czAPgmOICn9YichS57ZqQd6/bD2TvGdrByKTDT0FJ2BMcm
	KNrhjS8zEm+OvOdHKoeCP1BbldxmOTqJn+ytiV
X-Received: by 2002:a05:7301:615:b0:2b7:8b4a:15b7 with SMTP id 5a478bee46e88-2bd7bb38617mr1921205eec.16.1771715064847;
        Sat, 21 Feb 2026 15:04:24 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7dbe82desm2224270eec.20.2026.02.21.15.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 15:04:24 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sat, 21 Feb 2026 15:04:23 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Ian Ray <ian.ray@gehealthcare.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bence =?iso-8859-1?B?Q3Pza+Fz?= <bence98@sch.bme.hu>,
	=?utf-8?B?VG9tYcW+?= Zaman <tomaz@mono.si>,
	linux-hwmon@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 3/3] hwmon: (ina2xx) Add support for INA234
Message-ID: <aebd0678-bbcb-41d4-99cb-6116125d72a3@roeck-us.net>
References: <20260220112024.97446-1-ian.ray@gehealthcare.com>
 <20260220112024.97446-4-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260220112024.97446-4-ian.ray@gehealthcare.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267141-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid,bme.hu:email,gehealthcare.com:email]
X-Rspamd-Queue-Id: 1073A16E331
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 01:20:22PM +0200, Ian Ray wrote:
> INA234 is register compatible to INA226 (excepting manufacturer and die
> or device id registers) but has different scaling.
> 
> Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
> Reviewed-by: Bence Csókás <bence98@sch.bme.hu> # v2

Applied.

Thanks,
Guenter

