Return-Path: <devicetree+bounces-275460-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPU9ApdFtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275460-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:12:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A52BB287E94
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E1F9303011F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92CF23C9447;
	Fri, 13 Mar 2026 17:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hb5yq5us"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA843B636D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773421516; cv=none; b=pELdow2QIykS+XJIDVMrH11Zkl/ZItwOVWMoQ/TidGxE1CtevAQyVVJ1kDxc72Z/NFmDX+2seSrqSl2K2pz/hMMs8VLBMlBTUPl43xMh5e5OSsij1VM6VyazQLr/IljmEoAROH186uOR1y5WgH1LddyXc1OwBoKRkvhyjKe3VuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773421516; c=relaxed/simple;
	bh=0l1WReIp+IXtP5rjc92yCromqx8LCGpVTHfRGoor7Ho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pZ5RfyHcHA5XtWW5qoJmAM3eeXqD+6aG08OLTvydylZwOXd6jA3I1C5vp7CMArsX0f0g2zAsxWUY2juyLX0tspI7b+Kvwz4f9xpe9obLc/3vj+CBBlmKfDx+MdIPZiNHWKlG8MvUoFZGWQOXnlwiX3vmchr0DSWLaNPLJp10HOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hb5yq5us; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439c9bdc1eeso2444111f8f.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773421513; x=1774026313; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SqK4MWNrO8rqxWDIz9KeUr6nx3Y9Q/ulNkMGXJyHS+4=;
        b=Hb5yq5ussfVbt/jTtCJBfEEgA8lO3LVHAvnzxcKML+kjC3IVovV4TKCRFEVhh2fPH3
         p1RcWi3KO49VO5HpxPWn4EDdt4bqM0FOqvfOHbNR/ulVal/UlvYzx6TUtNNLFViOfY4l
         xMri0w+FGiRpKChe77MqAy3ya9Cuw9k7kNwhxw2tVH0KdsgZ2psoh0F5/L4qV3XVZ7GM
         0TYwrErd41NkjOs4kEk3Yj9gySZ0VtAdmAiRdCMz9I69jBjvv6rYK+AH/u9SO9Vqg+7J
         MOjMIOOT8vwL2u6Aiq6YuDtjty6fgtBwn0R5mFIMFnwc9LwU4eNA6dfBWGjPoVgeOvYN
         Q4vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773421513; x=1774026313;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SqK4MWNrO8rqxWDIz9KeUr6nx3Y9Q/ulNkMGXJyHS+4=;
        b=d/WXrcb9/ROjttfn04YOrcLks3PlazbZ4cBsz4Yx2Q40bvraWh31dDkaQHXMy8Qcki
         plzN62ceQKTQ5SnDge7AixE5kiF58BZzMM4//uZXxtKwDSx16DdKekM+lQ/DD1oE11Ld
         ajnEHE4elcfXJ8iG8K+LTpT4xe4RJXFxQIzurXUzIzmM6Dfvmp2jClIqkpq+dDz1tmvN
         qbC34bVUWbZOwsZgGUkCBftYcxz8mKhk9PpNKDSCwuqSxkWT5IZSMljjrR51HL78WMSZ
         xuAPtimHmW8TdnQ5Kk3h64sg94Wpl39fSHIsg5gLwHkwFpxPxB+5y5lir5NWarCShGOn
         3ECQ==
X-Gm-Message-State: AOJu0YzuPqkYu3WPcUHHwrfWQbdUJ1mQ3xdJJi49y8wX6sp2hHr7L3xZ
	e3qQAv2A54kT5pOvzPr6GGnJoYqEd1t0ITV/dnWMbsHYiPG7Dddd4Zfh
X-Gm-Gg: ATEYQzzoA6DSvs4gAwDsn36lNb0fIJj0/8l1gj8fP/RiuOZULGxGMAt8S/8YJ3z/shl
	DiwLZV8Gjj0vr0hdwmhSkuBjRdKKDzDtui572YOdxwVsc19Ti6k/4fCetbpFVixMY27wF/okGo8
	YhTYMudqcjmmQZK+zOdFGxOVtNCMMXCpGYS8DWQI9AKAWWtxd2nJ6u/yN/EXsr7yushGK0rjEiT
	EdKcbzqMiKXiED9+RXrllGyFFjCypScdgZrfReh1On8Tb8oXv+AweCGHszOkuyM01pmwOAIKbnM
	V/+qKmDMn/E8cMSyOPa0cot9Uj04elkGLLcRbCvEpYdt8l3HYbI7Zio7d0wo6Wrmpgnk3gmPtgI
	VqAGNcp0l2PCoBH0FA3Er/6tz6k3EUOjON0N1Us6preijFM4lJq2LFyk6sO3u0TsAlD3Xg/Bmva
	wHi1XHR4azWT18XU0g2HCpAagKYUUZz3cBGaE8xa7Ez8jFhlhIh7+UALMgRVCohayqAbdjfaoXV
	7W/+tfhvhmtOWkOqwcxYnkrVZKxWaWhOQOqd3T8E6lHEw==
X-Received: by 2002:a05:6000:1866:b0:439:ba69:101d with SMTP id ffacd0b85a97d-43a04d79003mr8013170f8f.1.1773421513225;
        Fri, 13 Mar 2026 10:05:13 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43a03cfd18fsm10531876f8f.36.2026.03.13.10.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 10:05:12 -0700 (PDT)
Date: Fri, 13 Mar 2026 18:05:09 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v3 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT with variants
Message-ID: <abRDxRK_GFYwmAGE@Lord-Beerus.station>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
 <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772898346.git.stefano.radaelli21@gmail.com>
 <CAOMZO5C+USp34WQ9ap+N9ha6EgU7JgsYkRsLEW=ZdizbkMQvPA@mail.gmail.com>
 <abQ_d9fGarNobYdo@Lord-Beerus.station>
 <CAOMZO5BnuGc8sddmfhKJhFgWa+K2gExeRN5097794j48+Dw-AQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5BnuGc8sddmfhKJhFgWa+K2gExeRN5097794j48+Dw-AQ@mail.gmail.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275460-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Lord-Beerus.station:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A52BB287E94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Fabio,

On Fri, Mar 13, 2026 at 01:52:31PM -0300, Fabio Estevam wrote:
> On Fri, Mar 13, 2026 at 1:46 PM Stefano Radaelli
> <stefano.radaelli21@gmail.com> wrote:
> 
> > Correct. It is not included anywhere at the moment.
> > The Symphony evaluation board uses the IW61x configuration.
> > The imx8mm-var-som-wifi-brcm-legacy.dtsi file is kept as a separate include
> > so that carrier boards using the legacy Broadcom-based SOM revision can
> > include it if needed.
> 
> Then imx8mm-var-som-wifi-brcm-legacy.dtsi is dead code. Nothing includes it.
> 
> I don't think we want a dead dts in the tree.
> 
> IW612 has not been upstreamed, right?
> 
> People using the Broadcom Wi-Fi on the old board may still want to
> continue using it.
> 
> Please don't break it.


Thanks for the feedback!

I might have misunderstood the best approach here. The reason I split the
WiFi/BT configuration into separate dtsi files was to follow the direction
discussed in the previous revision, where we decided to keep support for the
legacy Broadcom-based SOM while moving the configuration out of the
device tree, giving the support for both modules revisions.

However, I see your point that if it is not referenced anywhere it becomes
dead code:
Would it make sense to add a legacy Symphony DTS that includes the Broadcom
configuration, in addition to the current Symphony DTS that uses the IW61x?
This way the existing boards would keep working while the default board
description reflects the currently produced hardware.

Or if you have any other suggestion, I'd be happy to follow it!

Best regards,
Stefano

