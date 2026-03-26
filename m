Return-Path: <devicetree+bounces-281004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICNRDDjtxGm+5AQAu9opvQ
	(envelope-from <devicetree+bounces-281004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:24:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E2C331411
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 170B13085E8D
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB8F3A3825;
	Thu, 26 Mar 2026 08:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mf+HWqQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D19396D2E;
	Thu, 26 Mar 2026 08:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774513309; cv=none; b=nwwfijSfYpvC01BjarkB/I/Jvo+FVaIKM015B41AdmZp3TleYRlB7SFnjXwQNoAbWpMotTzv6FDShePYTwxj8ah/k6Wf2SiS08M8zEMju6PWGkNvkL0ms9DXEm2LTXrR7p1XL0PofTd1MhKSq4w0q8vIF5731FJk2EOhlXuGwNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774513309; c=relaxed/simple;
	bh=adtppa/vk1sGjUKkjd3kpGM4pWS77P5aFwmy88T27yM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F+27pXcCqoJMz1vyb0jxXVoPKhg8CMoEaaewHOLNGHdg4jgS+gUrV32SG/t0Nz2qyYlBjHmL5rm95XT07lp7SDxQ11rN8FybPrHhfy0BSjSL7V6/OXOP4enGlxHxrJTViOfWCKFDdOej2gNhd4D6EGJXF0D9sCb/6vQW0kZibu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mf+HWqQ2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CF4CC116C6;
	Thu, 26 Mar 2026 08:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774513308;
	bh=adtppa/vk1sGjUKkjd3kpGM4pWS77P5aFwmy88T27yM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=mf+HWqQ2mJCLQ16JMQxdEWK1rl+UU1SZXn1QZ8oEVMS9bisCjVHfT+WxPFgRNIgWQ
	 +SNHGfMW+FG5VVpNIVU8HfouVR9e7uqBTOucOiKu5YvKbsnxnPy59udqp+BIDYgBPq
	 O4xlDKEuTYnl4ckV3NS9NqQbphZ5qaIgcFSSMit+iyaPDC0bmGi5E2LqjmuZUjn4lE
	 ekHVixIc2NvXN3ifR5H1/BLRJMVcV+wlDApv/KnD5EvvSQpElwk0OMXTDtWtEodUgJ
	 sW0DbIsBH+tdNBDUsDEwrVGs5lhlKF6I/xSMF3ZYJBtUqwbTf87pZ0Vg6C8pI2as5o
	 O8N+YzVALamSg==
Date: Thu, 26 Mar 2026 08:21:42 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Siratul Islam <email@sirat.me>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF
 sensor
Message-ID: <20260326082142.5d0bdfba@jic23-huawei>
In-Reply-To: <20260326-noisy-successful-petrel-ba85ec@quoll>
References: <20260325202005.29822-1-email@sirat.me>
	<20260325202005.29822-2-email@sirat.me>
	<20260326-noisy-successful-petrel-ba85ec@quoll>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281004-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C3E2C331411
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026 08:38:59 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Thu, Mar 26, 2026 at 02:19:41AM +0600, Siratul Islam wrote:
> >    vdd-supply: true
> >  
> > @@ -28,6 +33,18 @@ required:
> >    - compatible
> >    - reg
> >  
> > +# vdd-supply is not made globally required to maintain backwards compatibility
> > +# with existing st,vl53l0x devicetrees that do not specify it.  
> 
> Commit should rather explain that, not code.
That was my suggestion. I'm not that tied to it though so moved to the commit message.
> 
> Anyway, regardless:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Thanks,

J
> 
> Best regards,
> Krzysztof
> 


