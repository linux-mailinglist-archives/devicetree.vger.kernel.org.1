Return-Path: <devicetree+bounces-262401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KB+PC+pVgmntSQMAu9opvQ
	(envelope-from <devicetree+bounces-262401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:09:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EACDE5DC
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:09:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AFAC4300A589
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 20:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA065368294;
	Tue,  3 Feb 2026 20:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EKCY9pny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589DC316193
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 20:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770149348; cv=none; b=hRtRecfCAeUw6kOgnBUDpPgjzXaYBKKP2uePvMUFQuK2EQSp+8O0OugmHMyiEsBy0sU66dmA1rBXJSQP+BoJDDlQog9QDGtjdSUjxo/vU4cQp/kB8DdMKGr1JLqp+abo+2db/KMEhXuo7cWW8EO1Ishinl+AspQovRWVgiI4USE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770149348; c=relaxed/simple;
	bh=KXmsqY+Yl9J6VC7C3sRoq5iSnXOF93yU2uJPTfo6GLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NKX34qDfr38FyvzcoEgskh8F+hj9RsvHj3ATRkHyD8jMSMm0nNTmsViyETK6Tt7Pr77WAb7PwWOgtR0rOn09XbUpwgRarK5mZldK5HM6OXFD5kwKWcsJAM3igLl7MyEtxzf9wYI0wfzKDDXZnNJnQLLsFTzD9+0TKdfOEsPr6Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EKCY9pny; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-34c3259da34so12350a91.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770149347; x=1770754147; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tVQhqA97aNi4iwum9p1p2SwQkrduofkl+pPHMaPCBPM=;
        b=EKCY9pnyCnAXESn4UGgZ0nOZG3kiGfVHstEsfYvE+ptMkDRD0QcgRAvJcp+kvb1W3J
         TOrIqLUFES/nwzzvD9shzWxNQih0TBfeaikD4e5Tmxu1xq+SB999q/RMNHokk5p2DhiX
         oVqf5mpnxZiA4Pbrb9TIRo3cEeaH7+rAjdDGZQDBhUj3JETIUQtt/Log1qiMUrsOcO07
         ci3HaCooruZFdSV82+E82fB8i3rU4s5w/CpLo4afUSWBKSS/v+VBCLYkdt0Yj6nM+44C
         qTG+BfjFU6alalAY3c56cYC3Ms6taxhVZ5SMWlX8PPxWybqrQRNXGdY80gBms/Gcw5u4
         JGEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770149347; x=1770754147;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tVQhqA97aNi4iwum9p1p2SwQkrduofkl+pPHMaPCBPM=;
        b=LaotackaBW38iAP9z6VF0aT3l98i1QML/JH6DdNB3TPaVcxp9NoYoFhsv0c+En228A
         nUoHU51gDgFsnXy08yxdBwdbdnWuHvA4u8xr38LM/wuIEph/EG3mFVOfNbx6OORvhQBZ
         PFKmwyedFt7XgyRJO3ypC16yahnmhnwlsiNLzk6RM+6MGQIAhtj8Exobud5qcfA4vSxf
         JZAWBueMYpjb1wZRJV/qJUoZ53/NW20Nja7QrncDlhFH39COn2WiMzDXSQt/BOo4JDtL
         NmyHTJ4vYuZxu8EMv5F+72XK0iON9XRaHsROhU+2tB3w0Kgt/6s1iSJgogJIvIno+Qc7
         yXBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWE7QB1+iix6U4Asz243DKUQ9w9pOJT7x2CSRkf5mCewxK56M7JwUBQMTCoD0WI3t3UFdhtgSm6rPDh@vger.kernel.org
X-Gm-Message-State: AOJu0YxJtHxTYXyd5mOqlo6kcrlXOdLQjpnoutm+EooXa0i0CuynlYT4
	VCTCIgCSZ9c5oD1SMkqEySg3A4bQsykWU+qLbvauWJDY3J6+lhcXBPWG
X-Gm-Gg: AZuq6aJD1gHdBIJtSFURWPO2HSM5DauzyCmi290ItTRo1WVr+mUb5y3n81bPhoZJ/Hj
	s2At3qrIa97PT61LvqmSSGl2A6tm5y/wgbtDZFpq/Xa0CNXRPt1pV+eBcHjP/WGW1xiKRnhHg02
	AQwy6uoTguj7C+ilgyYiK3U9yR8eVgPmXUKc7d7OZEKgaKnDO1xeNrmarsePIqU93d296X4IUGW
	XSW6ApBIcuUxO8dmOUyty4YvDpZJpio4uz55Qib2DOT0jyMjVoiUr5cKn2fdI5kbdLLBXNsF3Fr
	DPAM/R6t00KNR7UELM1iG/h+DskV9hVi5F5r1ioC4kppYlZHbCg3BR1EfQdxmCypmOOYXyfFQDB
	FS5LeSNG9LXgeNDX/KEBI/UQVPaZ9duB1jvWS7clHpvb411YPrueFWvdyKbrO/oBvVh64nQ3gtF
	6yesxyc6qgAnUJOmpMGt/w4e/yLxSwECFjW+E=
X-Received: by 2002:a17:90b:4c51:b0:32d:f352:f764 with SMTP id 98e67ed59e1d1-354870b1e6dmr395651a91.2.1770149346689;
        Tue, 03 Feb 2026 12:09:06 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35485b77664sm479374a91.0.2026.02.03.12.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 12:09:06 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 3 Feb 2026 12:09:05 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: victor.duicu@microchip.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, marius.cristea@microchip.com,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v3 2/2] hwmon: add support for MCP998X
Message-ID: <fb5fcb40-1cce-4de8-83a9-c8a7f308505f@roeck-us.net>
References: <20260127151823.9728-1-victor.duicu@microchip.com>
 <20260127151823.9728-3-victor.duicu@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127151823.9728-3-victor.duicu@microchip.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-262401-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,microchip.com:email,roeck-us.net:mid]
X-Rspamd-Queue-Id: 51EACDE5DC
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 05:18:22PM +0200, victor.duicu@microchip.com wrote:
> From: Victor Duicu <victor.duicu@microchip.com>
> 
> This is the driver for Microchip MCP998X/33 and MCP998XD/33D
> Multichannel Automotive Temperature Monitor Family.
> 
> Signed-off-by: Victor Duicu <victor.duicu@microchip.com>
> ---

More feedback, with compliments from Gemini :-).

[ ... ]

> +	case hwmon_temp:
> +		switch (attr) {
> +		case hwmon_temp_max:
> +			if (channel)
> +				addr = MCP9982_EXT_HIGH_LIMIT_ADDR(channel);
> +			else
> +				addr = MCP9982_INTERNAL_HIGH_LIMIT_ADDR;
> +
> +			return ret = mcp9982_write_limit(priv, addr, val);

Pointless assignment to ret.

Thanks,
Guenter

