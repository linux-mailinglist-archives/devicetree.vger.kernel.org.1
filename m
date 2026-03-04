Return-Path: <devicetree+bounces-271215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAk1IS98qGmHuwAAu9opvQ
	(envelope-from <devicetree+bounces-271215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:38:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC382067A2
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 56F8B3027E35
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE9E03D6CC6;
	Wed,  4 Mar 2026 18:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BcqUdW6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95BFA3D6CAE
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772649505; cv=none; b=AylXedo3PnmgW1LM41bCe/UQZ3a7u/BXHjHbMvEIHD/8GtdtUYcdQO/OFfRSuVXPpQPn8J8bWqXiV6YPtgF6udvRz8kHSWZvOCHO0NqWKH29O/Hrg6evnMcoysoVdvii/uwqGD8aaO69HR194SyB/6WTeF7HLkjNmj+/jfVMo6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772649505; c=relaxed/simple;
	bh=EtZU6Qy29bKoCG8coxW5GQ+9safZ+sfraENkCgYN+9Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wu93UgG8d0SKfs0tFc7EhLS0U57bSCeQeEJLkn7m4r1mnfkNjoclTgCntWVJ2DiVlHFCn49hXciebsgCq5v7kmNsZ2sNNEcATWq//4CvlIpS+JVw/c8ShSHAqcpxE/Hd5IBi6yL9Ia7MKCjDM1kyvICPO+3RHgWDxeEYtKEpLv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BcqUdW6T; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-899efe93d4eso49173776d6.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772649503; x=1773254303; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OXSAV6rZIrZFPwARMtOXxpUTW7bMyjqUTP3cXtGDhxc=;
        b=BcqUdW6TSPJcRzs0oxdS58Xud8yd405V7vMOVNcq4sv3fkO94OEDR0rsromy8Bi2oU
         nEXLKkK2ugxcrHX/3i2F+UfijpMNuvBQAkZPK8PmjhTv7p83axyGDwNsj8/pEHYyGrHZ
         hyFX6dCTf2OGSZojldEJcMTppNWBuTyj7Djhya7N5wo7qh5CJduH+81awQaiNmJCE7T4
         UcdS74HLFASTV6oGJuaTuuUkHZgWb1zX5a4L21iWmr0HwInvLdTv7P07ZvUcFnBQzdIr
         /66jeVzZLc+ZJnhyd4q3Qm4fINIdHdRvw0qz34QuNHkFZ8OlfTSAkEj6Y7Dc5elitYso
         Iigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772649503; x=1773254303;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OXSAV6rZIrZFPwARMtOXxpUTW7bMyjqUTP3cXtGDhxc=;
        b=lN6ww8nE57A2vZwkwJRhHYaVjPzCWpszJRUCce5UiD6GukI+kiFaRqBtqFNstKsXKZ
         HoJp50qvCdE+Ic0/m7pR/g1+jWQM96hwx2n20AhZPgB55G/IbQhZXFOH7+MQm9mgX1l3
         Uy2hApLHBn+MFhezLy/ceqQeC1wksrU+hfT80BwWPfYfWIpwbWoAIG13xUY3D4Ox0cVa
         Vrf4K1HAowSUf33EDnCenBxk733xfkiXXjLa4g9WWjwc7UjwethsWAmkWCIqtH3Qrfrg
         clmYpcH/sJsiJiC3V6bRTJmb00fDU1TJxuuXuIXSky3ZZadcGIqUHd1Jm8gnrGwp5IEL
         Zncg==
X-Forwarded-Encrypted: i=1; AJvYcCUCuXZ7AioN92wXWFYN5ZXCka+bsZnIkGBAVDi3D8fqB9Mzm8FAtmX4EJ4dTUzNhJc2YiYTseIpUU+I@vger.kernel.org
X-Gm-Message-State: AOJu0YzddZwB7l0St3ym7bgMTi4Ygx4x0Ow/tk0b51tSi7kkbboAbues
	phrKDhQiZOW3YIAm6zpISKdROnStrZ01FAhvJZMceKZgQDn5cpyayqDa
X-Gm-Gg: ATEYQzwUlJrPKpVV2CCRerw/JigI8TDPQQmShanKDIiSwFl8m0QYOTKM4SAVqyhh8TH
	tgG1i1uzn113Bb/P248D25JTdJpSzUvptRc9Q4u/9W/k2XVHAJXNqiff0qCiEag95tn1dwwoEUJ
	xHKd+RnnnkByTL5XYh8TTKBiMu7agSMQPyCI8m1SuKGPXqmqxWg9YhIuyZ6/Svf3ynt/kjhX1Oi
	TXin99/z2Wc+/SKZ3hSNbsF24Sf+8MMkSNTL9fXIpEJuGeRI3Abx3JHRr0KhXQHpnKs/i3pP781
	HJ2WnWVGzhQPEm6HB9rpsc4Nh2+64vrL6KUbh265Vm2e22kPzbyJYhIdfh+LJ8nASFECf8kyJQ0
	Id4YA96CEp6LWFIR3Dc2nzvTWbamWpY3zKcEdwo6ArCKg9z9YlQ1WfnG5jLwVckNNqfK93a1CZf
	PadGOqNCVXoeYDG0jS2l2qV19XRA==
X-Received: by 2002:a05:6214:2423:b0:89a:18bc:2b27 with SMTP id 6a1803df08f44-89a19d39d01mr37465426d6.65.1772649503522;
        Wed, 04 Mar 2026 10:38:23 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a07f690c1sm50672736d6.44.2026.03.04.10.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:38:22 -0800 (PST)
Date: Wed, 4 Mar 2026 13:38:54 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sdm670: add thermal zones and
 thermal devices
Message-ID: <aah8PmAXnnGraBWt@rdacayan>
References: <20260304014530.27775-1-mailingradian@gmail.com>
 <20260304014530.27775-4-mailingradian@gmail.com>
 <55s2gczljwgtk5rihaq6iu6a2osotruyostrhjawwz7xywlumy@7vjt6vb2kkwt>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55s2gczljwgtk5rihaq6iu6a2osotruyostrhjawwz7xywlumy@7vjt6vb2kkwt>
X-Rspamd-Queue-Id: 1CC382067A2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271215-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 03:55:21AM +0200, Dmitry Baryshkov wrote:
> On Tue, Mar 03, 2026 at 08:45:30PM -0500, Richard Acayan wrote:
> > Add thermal zones to safeguard from overheating to high temperatures,
> > along with the thermal sensors (TSENS) and CPU frequency limits (LMh).
> > The temperatures are very high, but should still be safeguard for
> > devices that do not specify their own thermal zones.
> > 
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sdm670.dtsi | 474 +++++++++++++++++++++++++++
> >  1 file changed, 474 insertions(+)
> > 
> > +
> > +		mem-thermal {
> > +			polling-delay-passive = <250>;
> > +			polling-delay = <1000>;
> > +
> > +			thermal-sensors = <&tsens1 2>;
> > +
> > +			cooling-maps {
> > +				map0 {
> > +					trip = <&mem_alert0>;
> > +					cooling-device = <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> > +							 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> 
> Why is it only cpu6 & 7?

They are supposed to have the highest available power consumption
(implying highest TDP).

> Note, SDM845 doesn't have any cooling maps for
> mem-thermal.

Makes sense, the cooling can be removed.

