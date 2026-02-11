Return-Path: <devicetree+bounces-264819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJhTLJPWjGm+tgAAu9opvQ
	(envelope-from <devicetree+bounces-264819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:20:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5623712720E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 20:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 83B0830041DC
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 19:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55057309DCF;
	Wed, 11 Feb 2026 19:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XA4qx6kd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9FD1A0B15
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 19:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770837648; cv=none; b=GcvgXdxqfV5b5ApB/T9Xfm5h99sB4CyAo9pzuNB9ytgulDCD5IWQ3b95o3oydkmOWwDURwGQcXSjGaIc8YLrXw+BdVlYNM44oVZ2E4abqeWv5BfAdkYPXCyVc6ePEO5aCwm7G78jeTVZ/o9eWLvCrOfXeXuCdzfMMoc8ywOHlis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770837648; c=relaxed/simple;
	bh=N7jtro5oSJN1JKozY7l0/NLT0gx83PLmC0myZcZeqW0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fv1b1U265voE5DzKRYOk7Uor4928kZWBvjdlJMAGVf3xtd+YCRA8d7FSGejMZLhxfoD6C8udZXehn0RNBS9wWtz+11OGJ1CBOO2YNRFPS4n4g4X7n42cgNYO9Ph4wUtscRl7YAknWwB959SbBwvoWJEdt8pDzHISAz63XsRSAJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XA4qx6kd; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8c533228383so149225385a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770837646; x=1771442446; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hnjm98atgKsIzfRxPyb/8amThvi/ub+kK9XVY2KgknI=;
        b=XA4qx6kdzGxpYbNm808+tcFQvxoWXgCxbzFAmbhfsLXxu4IoLCVkXR0HA3EzqeSc6Z
         YbGV1AGtjiIB3xoJUxWhbsveNcpHRHhzQRQdjBwBEobTxueMPwujR5+F9xfOkaQ7xrcr
         koLV5cf38Rk49Bl9VzI5xu2RJsMRqIenjVBaZyRR22WZdkh1Djrfw8tq8sqOTfpkxUgJ
         zOUUCwxWMlDP1P8fbooRXk/4BFpEGdpo7OpNZ3yV0PvfpNJ2uHV8Oy8+X7hGBhTSYzxH
         Shc3LBXFgkhICyoHP7afbQF6yV61g8piw1eSFgNSLMEHJBfeqIS9J8dLmNJyTCSdGPFS
         9e/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770837646; x=1771442446;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hnjm98atgKsIzfRxPyb/8amThvi/ub+kK9XVY2KgknI=;
        b=NhByUC5TQBGB6lVIvE4VlvelSq38PXLQ5TXGxFDhpXhUcIfUDxJx/CIsoae38F8Ukn
         G1akeAu1xCU+7Z28bl+0iTHjhQPus1vWh3VsFYxDk40l4Z6RtKJYJa15JIy5Nq3uPZq/
         bqoy9j+pSLtTo+vXOqCxRMeTuk+IPbQztlGftEre2DWeKITdD1lOMCEwKg9wkHseeHCe
         Rxy5gwxrkybooUOc+yFDxobPeMIMWFXtYstvd8+Mv95yDVTBf86feVBw+H+27wQxnXLx
         EFpWDZVpQoiyzf3YFT7k6kd1KLrdrX5SJmLeXaPNMMYyNl/dzLwZRY2/6a5/x+0HMMSR
         pYbw==
X-Forwarded-Encrypted: i=1; AJvYcCVUjsPRp9+Lnc41NF4tAh5EbnKjV+U9J+VG0MjumZu7Ivy0hzYh3V2b5t/Oq83EYzVaKHIuY0G18IgO@vger.kernel.org
X-Gm-Message-State: AOJu0YxfJicx9wmzMDcWhNFGWlqNNHPxPImG7bft0Ga7tzTiyF7jPi5m
	XTOzuiap5fH+FtgMZijc0GbAFm4fbwi1WuoxNtydTC6nJbWgxm/errMh
X-Gm-Gg: AZuq6aLN0s9XI3BKbLrpiK4r3XI810Lp0JW5HgQefiDxU3P7qQIOqFe7FLXglrBeQtq
	3Ea2UVI6Yrx+lXSqGORleYLVR8Hdg1MYb0xnw4J6/O6/EA2jA3xSSLbrGlkaoEtvOBfx/xOY6jQ
	u7Z85HOV24XV181nPrOporIhiFB0j0KPqpghpqgsJQjmDkzSrYq4hfCZV6/rsARMIyW/jBKFGQm
	Ys58aH7/AFh3PHiay3i7YqqwrVlrKXsAJ+odupZzEUVe29wtys9yoc85PpR+TI+iKlhw8B+FTdj
	N1VKeR2q+m+LC6An0Oege+w3u/1uhpWF2Wc6WCHPN58so2Ohiu5QeTBW3T25TPwMDCkIeNOeq8p
	YI7Ql+xqXD63NHjg+Bg4A3sZdvfuTBAohbTCzuMLxgEW1yMY5SAPk292gqGi/5R8S1H6al5d8mo
	Vlsa+iQiCo3zxAOGwUqADtp64UpGcVYnxeltVg
X-Received: by 2002:a05:620a:4892:b0:8c5:2ce6:dae with SMTP id af79cd13be357-8cb3308ed3bmr48912085a.29.1770837645889;
        Wed, 11 Feb 2026 11:20:45 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b1f8185sm180521985a.36.2026.02.11.11.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 11:20:45 -0800 (PST)
Date: Wed, 11 Feb 2026 14:21:12 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] soc: qcom: llcc: Add configuration data for SDM670
Message-ID: <aYzWqFybymwd17Dx@rdacayan>
References: <20260210021957.13357-1-mailingradian@gmail.com>
 <20260210021957.13357-3-mailingradian@gmail.com>
 <026ce34c-c880-4832-a791-656fb245a495@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <026ce34c-c880-4832-a791-656fb245a495@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264819-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5623712720E
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:27:40AM +0100, Konrad Dybcio wrote:
> On 2/10/26 3:19 AM, Richard Acayan wrote:
> > Add system cache table and configs for the SDM670 SoC.
> > 
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> 
> I have a clone of some msm-4.9 on my ssd and it roughly matches this
> patch
> 
> However
> 
> In docs, I see a version with only CPU_SS, MODEM and MMUHWT left
> (your settings here seem to match), dated later than the last commit
> to llcc-sdm670.c in that downstream kernel clone..
> 
> Because this SoC seems to only have 512KiB of LLC in total, it may
> be that it was found in testing for that configuration to have a
> better perf profile
> 
> Could you please give it a shot and check if you see any immediate
> gains/losses?

I don't notice a difference outside the margin of error. The Unixbench
workload reported 4550.4 with all configs, and 4550.9 with only
LLCC_CPUSS, LLCC_MDM, and LLCC_MMUHWT. My 15-second workload on
Hexagon/CDSP was half a second faster when commenting out the cache use
cases.

I don't see better startup times either.

