Return-Path: <devicetree+bounces-288217-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGwVIBMu4ml22gAAu9opvQ
	(envelope-from <devicetree+bounces-288217-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 14:56:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6F141B60B
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 14:56:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C00D4301779C
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 12:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199DF39A054;
	Fri, 17 Apr 2026 12:56:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90F938A72D;
	Fri, 17 Apr 2026 12:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776430592; cv=none; b=Xf2YHGVFU2NkFsQLjCviSmu5Crp+Gmo5bpDyt7hkNgCWXHLDvfhk3xegusj3r8DV+ySaGv8Ll15+7dwQSKbVooGqHEAEoQ2hIOk2xH3TodoRARkRp2r1j3fCMIUn3Ux9n32a6s7C+AlhNHBCWZvXr66kPSLhn58wKo4oh1qEb58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776430592; c=relaxed/simple;
	bh=agetDUgwIWtm7EQjI73uUR6csriZs7sW2AqxB8H4Myo=;
	h=Date:From:To:CC:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aerGTL/K3Oiav73Of9GP8E4tt1WGsIf5WL6EEEWJo9odP3QJ/HqdLd5O4wbiw8gjrJxw3LnDiymnXDjMtW2AEvOFhJSI7tUwu97uFWpsFqehikiVXAPou4Sdw+xhot8hCAs8H+xunlV/ibPHZs0Kh8YlyDxT+XtbHDk32AxH1XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.224.83])
	by frasgout.his.huawei.com (SkyGuard) with ESMTPS id 4fxvyH0x93zHnGkd;
	Fri, 17 Apr 2026 20:56:07 +0800 (CST)
Received: from dubpeml500005.china.huawei.com (unknown [7.214.145.207])
	by mail.maildlp.com (Postfix) with ESMTPS id 2B40E4057A;
	Fri, 17 Apr 2026 20:56:27 +0800 (CST)
Received: from localhost (10.203.86.132) by dubpeml500005.china.huawei.com
 (7.214.145.207) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 17 Apr
 2026 13:56:26 +0100
Date: Fri, 17 Apr 2026 13:56:24 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
CC: Alexis Czezar Torreno <alexisczezar.torreno@analog.com>, "Lars-Peter
 Clausen" <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>, "David Lechner" <dlechner@baylibre.com>,
	Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>, Andy Shevchenko
	<andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 2/2] iio: dac: ad5706r: Add support for AD5706R DAC
Message-ID: <20260417135624.000030e5@huawei.com>
In-Reply-To: <aeHwwN2sFJBzQ21H@ashevche-desk.local>
References: <20260417-dev_ad5706r-v8-0-ef87dff62b57@analog.com>
	<20260417-dev_ad5706r-v8-2-ef87dff62b57@analog.com>
	<aeHwwN2sFJBzQ21H@ashevche-desk.local>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: lhrpeml500011.china.huawei.com (7.191.174.215) To
 dubpeml500005.china.huawei.com (7.214.145.207)
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[huawei.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-288217-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cameron@huawei.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.480];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huawei.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: AE6F141B60B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 17 Apr 2026 11:35:12 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Fri, Apr 17, 2026 at 04:27:16PM +0800, Alexis Czezar Torreno wrote:
> > Add support for the Analog Devices AD5706R, a 4-channel 16-bit
> > current output digital-to-analog converter with SPI interface.
> > 
> > Features:
> >   - 4 independent DAC channels
> >   - Hardware and software LDAC trigger
> >   - Configurable output range
> >   - PWM-based LDAC control
> >   - Dither and toggle modes
> >   - Dynamically configurable SPI speed  
> 
> ...
> 
> > +#define AD5706R_DAC_RESOLUTION		16
> > +#define AD5706R_DAC_MAX_CODE		GENMASK(15, 0)  
> 
> I know Jonathan asked for this, hence it's comment for him.
> I think that BIT() notation in a form of (BIT(16) - 1) is
> also appropriate here as it gives the relationship to the
> resolution of the given register / bitfield in HW.
> 
> GENMASK() works for me, but it might require an additional
> operation to deduce the above.
> 
> (Note, there is no request to change or resend for you, Alexis. It's just
>  a remark to make Jonathan to think about which one suits better. He might
>  change that whilst applying.)
>
I'm not against that form.  It was more being against bare BIT(16) as that was
1 greater than the maximum value it can take.
However making the relationship explicit would be even better.

#define AD5705_DAC_MAX_CODE	(BIT(AD5706R_DAC_RESOLUTION) - 1)

I might tweak it when picking this up.

