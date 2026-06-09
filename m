Return-Path: <devicetree+bounces-309035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hxQtK/YSKGoI9gIAu9opvQ
	(envelope-from <devicetree+bounces-309035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:19:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CEA66078D
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:19:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ReuqD2bm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309035-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309035-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F27A6306A172
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 13:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ADA838F932;
	Tue,  9 Jun 2026 13:14:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC94421F10
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 13:14:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781010871; cv=none; b=izLj6msB7WWu9sNzMpvQ6apIU0/thZ2/ZlL+X7OBYW3KmdFFKPaYstpj+QVMx6amZ43genLhqgDQdlCZy/7Ag1moDB6xh0qe9Jx2M3Hq4F5ChVWNFNjUoHbD3ri0sWEs7o8/28+egtqa8NRlKpTSARwBSB9tPc/YrIhMIdwsqZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781010871; c=relaxed/simple;
	bh=2Hn+kM/vBl5Y+oGy2tUn6XoBN0Urk2DCaa4LHKLj2vI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PAxoVt1n4JPd75kJJADQP7RDh6c29ywQv92sS6HvKVnmR4LhwV/HN1r3hes8a0LmD1FzUrEzhby3K0rfKgHWRf4qdu+M7WJggBnu1Riso7ljqzbo83lzABQ7hf1y/jxyhUzCqXtMNDEVPRPzRavp29Ag46T3P4vshq9SCLwms/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ReuqD2bm; arc=none smtp.client-ip=209.85.214.179
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2c27fc587ebso9160185ad.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 06:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781010869; x=1781615669; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4XpF88ssB7OGQIU0/2BYnkpklMaNApzKBPoVuDN5kZk=;
        b=ReuqD2bmIKxAdxVmEgoI+aeuj0T01y2FQxNI6lsjd0HJu8mrikuPb84IR2/lKdcI+v
         nMqeGm44+v/Q+5T0YykUCzZkTTOVQH/EQLNGZnBaqNJbwWxn94yWu7yN52gC6mB+ww8k
         jIv9QsH5yjQVZDB0pp6HSE+32hLi+C7f2mRghaPCi+NgBBL3dpWuTDFiivwlkrA+Azka
         xlShR6cr6+xBFvWO2d5F1ID4EG+1rZ63zperdIDq21QwOpHJDf3sACr0yQHUp0+orY40
         KagUR72420XRxAYQSDIQT/GB6z3DywT+/IHPQW4UGNp2Ibnj2+7R63fYTkdshpZIW4oe
         86gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781010869; x=1781615669;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4XpF88ssB7OGQIU0/2BYnkpklMaNApzKBPoVuDN5kZk=;
        b=fdC4Wz24WmFsgFOyLPdzYzLhOx+2bjfbPCvZHxW79tf/2NiAlchjbr43YHeP2T2BQW
         TOTHlB/5CrgSw1nEh/HBzwRrqy69ZLg0phPvBH0XRgaez+vA1h6d2nT3MAM0dIAs2vR7
         r3MlEaTOuUIYY0h9C2ZQU1O0McECl45wZ9uSmUlpA82RFx4PqachKB0YO24+fgC2Caf1
         Cy/hCsFJLt/UVEM0bxVK7F4aosTT+dm9MZEunpOJ3I+ssKT+lVJly3mHCRHSUL8Eb+fe
         xmqXtUgIiGeySKvy8eC2zWzfjNKaD3dlXZR0DWLtllrblkTcC9+z2SNNVHXeus8bbTd1
         Nhbg==
X-Forwarded-Encrypted: i=1; AFNElJ/O9HgMnryvL5Lt+xLLy7RgeDrIvPNbekdhIvGPTmQMAjhAjQHRsNExBJIAUuAarrKeJAxvO3mLmhLm@vger.kernel.org
X-Gm-Message-State: AOJu0YzIQP9sS7IggWro6U/xd8jg5R6R/Yv40uV95xgvTTxY+D0PBfRm
	zZZd4FL+CTqe6vUZhEQ5moa1tAFRn9lo4ORjlrh3LsWtKR0egFvpuGsC
X-Gm-Gg: Acq92OE2NQ/KvxWTODm/lCd5rUqYfPVQekkecjQ7rBoYbRc2GkRedrVx+JX5HRaVMrP
	gEF1S5wL/cCdG7Fcw57MiF/dPkcBrQF23ijxJYbRo/q1VaMnA8bU6RBOv4Zh9FhwcdZcQ+1WiIh
	8dffCNUvW4XAodyXFYqyGhaebSeofC+LHpyGJJ5js5x+cTAyBrrS3EIOxkrQfapBN3ACyjHsrhh
	9eG4SIbCZDbtXU6x41kWhnj503HtOH7o2G2qjcsKktX3+17V9moP7SnP5MBC4hrdM7s8ZTqZF6U
	QtHI2drwC5t/DTZxHLTWk9dCZyzUSBIPFn/g3R3ycgvKzVmqK1MUP9MKgK6kauuK3Bv9VsFhB1Z
	Hx9ILplo9SQN5tI45iQbdnPYz4kUlf6553JFyz4Np4pC7Bt/wy1wqyIh/7kc0EwzudoKz7nf9cI
	YYsYA2/5bYS5VaJdAwqdHJLE178kEzGhCtzL/aalS1+WkVLII=
X-Received: by 2002:a17:902:cf11:b0:2c1:ea95:8297 with SMTP id d9443c01a7336-2c1ea958447mr240566365ad.7.1781010869431;
        Tue, 09 Jun 2026 06:14:29 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d1e5sm201467585ad.12.2026.06.09.06.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 06:14:29 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 9 Jun 2026 06:14:28 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: ASHISH YADAV <ashishyadav78@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: Re: [PATCH v5 2/3] hwmon:(pmbus/xdp720) Add support for efuse xdp730
Message-ID: <a3622473-dd54-4b06-9b02-bd3fc590b1b7@roeck-us.net>
References: <20260609072231.15486-1-Ashish.Yadav@infineon.com>
 <20260609072231.15486-3-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260609072231.15486-3-Ashish.Yadav@infineon.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309035-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ashishyadav78@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ashish.yadav@infineon.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,roeck-us.net:mid,roeck-us.net:from_mime,infineon.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11CEA66078D

On Tue, Jun 09, 2026 at 12:52:30PM +0530, ASHISH YADAV wrote:
> From: Ashish Yadav <ashish.yadav@infineon.com>
> 
> Adds support for the Infineon XDP730 Digital eFuse Controller by
> updating the existing XDP720 driver.
> 
> Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>

Applied.

Thanks,
Guenter

