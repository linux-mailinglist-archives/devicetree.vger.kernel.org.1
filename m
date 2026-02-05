Return-Path: <devicetree+bounces-263068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMdhALy0hGk54wMAu9opvQ
	(envelope-from <devicetree+bounces-263068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:18:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 337C9F4836
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0B1F33002500
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C64421EF3;
	Thu,  5 Feb 2026 15:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UPhggMKH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C5E421EEC
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770304692; cv=none; b=eeaHv06w7NlW9tTILzCl3CScY4ZnH9Z37c01wDUv5sYbVnVYWlGwijTsEIUpUsARAGYRYSXjYQXDrgzD/o4NRaYO0EkY1HVtSZxRAlyfwQheelmY2giIy9zIbe86Pg5OhjMLJfgW1sFr95Za6FdHaf1aJOdXreN/fDocKE5956g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770304692; c=relaxed/simple;
	bh=53u9usEC+l3vwBwXF3+Mhp41VYao+L9mFhZ8lf78pks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fxg9cWxiK8rFadzufmxRq7N/+L+r5yu+wxd/NmpRwNriLqzTZYCe5qnG5PnB701Kdd07CF4oWOAHaLNN1flJg2V6bZqVvdo/LVTuBXbeJ+6bZTA/If45UtOMKtSKJqq0Jz/WCjamaYaVnFa6uEaokLMl/B3kowRROOnmIb8Ve1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UPhggMKH; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so15943145e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770304691; x=1770909491; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+Z2JM3rR4cPCO2FOOdwxN1xqlEFiU78ZSmQj8D7T2YE=;
        b=UPhggMKHa5RROxOxD8uo6eC9kywtRzgjXt1Zm4TMxBOx6O9uhUam7oNJVRfs8FWgfI
         FG/XQUyXSTuy8lRISIaO6QsUOH+I3khj6AftmlGCVxpZoMrcOTmCxFGN1iuVa3Luw4Rk
         uxib79KOJWKwFQDy4kFDy2VIH3zkXCCZTxDdDpwEZylh21sUNKdms2+CnhGJq5k2yLqJ
         p7xCARFMGhs3ZMZc9HGpX5CPRiZv/0+6XNU/RDjKscZH9M6uRvASBgpGftvd8LO7cWNI
         pmtJwbgpzZIst8ItaR5jVCClx+cQOP9R/kcWTpGsJofQfS7qsNBkd7HrONRJ3zs1HjK3
         /sQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770304691; x=1770909491;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Z2JM3rR4cPCO2FOOdwxN1xqlEFiU78ZSmQj8D7T2YE=;
        b=Zw0pbCtvz66hTypszOGVeoDiJPD/mSDdthUMfardopzJQxqpCSMptXKG6BBBQt8Y8t
         w1RxilYIF5Cm1O6gWfSL0jPQzSsre0QUVuiGUlLN9Vd8YuphYF+h+hoMAXUGnX4cItzH
         QL92wyCgqfL7pfUZLWVvzRFJcbsen1O0ZCI9jmaIVbzd8QeMF49dlJj/i8Jr5t4zzZ08
         szJ5DoFf4VgcGe9djxpOc48QdRAOed2/t3qPoSBseKI2BGS1i6iMdk7sdZ9nT4xUt5Em
         TEgvR9uMaAcX1d6+oot2Qfi7+LZjJxhtbafiotNMv843PKEoQVOkjGCRzSQfYNgVme0S
         P1Ig==
X-Forwarded-Encrypted: i=1; AJvYcCULqSocEbnsQhXHj5ZKqYgEjbh9RTECrZ1wjyENYIPoR0Xf9fvOWlVzfvtdnbGqICaNMjjnDGkAgMK1@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl2bD5STaKqweVyJ1gMSu57zgiFdjf0o5S9m82vSuiT5DgOTY8
	IHx0ePJvcoGQhRURkzs6wZ6cHxjWb5X2Kwkvnm8AwLumV7B2Ww7T/MnL
X-Gm-Gg: AZuq6aJ7MWjc8RzY4xbUALGAJPQzAveHD0f8q1gGC1Y1ZZ225ml/tunEV+zqDqYhkkZ
	t7cDzeVeA/+FEXh7dM80M3gPAHYhR+kiaoWZ/pL+3Qk5hs5PyXtNrQBBjciHlmtdxMb1EdHB7O9
	RRHQVTvpU6hFQP6EOGExiRtv+i4apNNLoq+o+CMyfZZjTV7iPhfmicn/VoFuf9cOEh+AuSKzNWt
	vct0skUPd5dbWslS9oTMwQ8Yl60bXziy8kdnEq4yPA8sSbNPTykEqX1MFy7yMGuPv/t1uUnbcfA
	ZI9WYFGQrJAVgpjiPeyScoW3oYyXj9tWOrIVs0V5u2FOM5mjH1LfwAQdD3UeweSUPozKMZw0f5c
	bAeFi+TaGukZUHJwbePqUQOXBIT9myAoJG3PdzxBK7n4y+MUTXwxgsswMBa4j8jyawUJSw/mUc1
	5vWOTqnwIld9e3F3HWC1EpICbfKrzM9ZXZ7gSk3UhydhKg/yfCOY+oWlOAmT28k5gFU/8z4zg3k
	g5aQCwnGsw/jPocVcATNXzsbO4cEkDQC+o=
X-Received: by 2002:a05:600c:6290:b0:47e:e91d:73c0 with SMTP id 5b1f17b1804b1-4830e9669b9mr94695125e9.19.1770304690503;
        Thu, 05 Feb 2026 07:18:10 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830fe6a99esm60711595e9.7.2026.02.05.07.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:18:10 -0800 (PST)
Date: Thu, 5 Feb 2026 16:18:07 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
	festevam@gmail.com, alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com, primoz.fiser@norik.com,
	Markus.Niebel@tq-group.com, y.moog@phytec.de, josua@solid-run.com,
	francesco.dolcini@toradex.com, maudspierings@gocontroll.com,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>
Subject: Re: [PATCH v2 0/3] Add support for Variscite DART-MX91 and Sonata
 board
Message-ID: <aYS0r9jxzyh1567Z@Lord-Beerus.station>
References: <20260205100125.9095-1-stefano.r@variscite.com>
 <aYSykvmfuYrJhsR5@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYSykvmfuYrJhsR5@lizhi-Precision-Tower-5810>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263068-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 337C9F4836
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 10:09:06AM -0500, Frank Li wrote:
> 
> where your v2 change log?
> 
> Frank
> >

Hi,

thanks for pointing that out, my mistake.

Would you prefer me to resend the same v2 series with an updated
v2 changelog in the cover letter, or handle it differently?

Best regards,
Stefano

