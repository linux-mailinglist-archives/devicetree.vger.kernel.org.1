Return-Path: <devicetree+bounces-286422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HOlEiGw2GljgwgAu9opvQ
	(envelope-from <devicetree+bounces-286422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:09:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5F83D3C61
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:09:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AACE83038A5F
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 08:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21233328E6;
	Fri, 10 Apr 2026 08:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="w211sklA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6F0274B23;
	Fri, 10 Apr 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775808235; cv=none; b=c5R4N+i9cYOXeX/D7EB3zgR7d2YhNbfFFIJ6U76Rz/2t5rPwheV19nahl/pkJD992uF9IvrUBRNTcNBmyS2A4FL3v70fe9uudMZoSMXQs/a4He9dQBI4Y/JcIB2O2ch8g/c9znYePJxo4RVeGTwtBBeB/q//qFNlfUi9Y2Cmbgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775808235; c=relaxed/simple;
	bh=GqVja/wYMr+GIx1XTa/Um3CGRHwOCAW2GPX9x16qv54=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EKqLnsuCpIQOMrxQcckepGgOrHpKt9fJoE3Ln2kbCiluhjcwD9fSQhGecSHB4aAVJLpyQ2/CHJKKyK+d9mpg+1XskjzGMgf+OjmJCAruVADRFsm9+0Y2BV0nmcejVPKVQW4+HWKALu8cCh6HCeQ89AOV59+jxxs3NWxeRteMrQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=w211sklA; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (unknown [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id C5D47C5C1A4;
	Fri, 10 Apr 2026 08:04:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9392B6042F;
	Fri, 10 Apr 2026 08:03:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 26727104501FC;
	Fri, 10 Apr 2026 10:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775808214; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=+FK7vpYb+MDnT94F6A494bLVe1AhIg54zS2mn/Kup+E=;
	b=w211sklA1zi8mjJf+Nq2ofIkIM33NpCLnA2TeOjxlwtYuE4NUFT+FDK+bLsvWiiuDPmsN1
	glZSJDu7TwEpI3KnPRuB7fuLIhB8z6W5TtBleutuN0i3Gs56IcrQ0u2aKgB27261K5ifmo
	UV6zXhaloQ0mKeB5q5AE7Zc/o3ScrJGQJeZ505ZmlRjuaez35WrWrh8wrCm/d8T/HA3hUA
	M4c4IUGF/LCgICOkwuz87mkRjKp4tXa6SG7Fvak0Qk8BOmoQLbyr633s87mzqScNMLAj8L
	q2TMX48icEqjKWR/wiUk8FnAvqWyHg9kMdtbZbyAvpUJ9Msj3khwtME9tMcztg==
Date: Fri, 10 Apr 2026 10:03:30 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Saravana Kannan <saravanak@kernel.org>, Jaroslav
 Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christophe Leroy
 <christophe.leroy@csgroup.eu>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: Add support for the GPIOs driven
 amplifier
Message-ID: <20260410100330.1fc4b97b@bootlin.com>
In-Reply-To: <383635c6-0417-4333-aa9c-9056437d4a5f@sirena.org.uk>
References: <20260330101610.57942-1-herve.codina@bootlin.com>
	<20260330101610.57942-3-herve.codina@bootlin.com>
	<20260408122901.GA42727-robh@kernel.org>
	<20260408190932.0ab936b0@bootlin.com>
	<CAL_JsqK4SHQS6MciQpLSrGWo2knqs7-eB3yoAv2J54bSfW-Lxg@mail.gmail.com>
	<383635c6-0417-4333-aa9c-9056437d4a5f@sirena.org.uk>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org,csgroup.eu,bootlin.com];
	TAGGED_FROM(0.00)[bounces-286422-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Queue-Id: BE5F83D3C61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Mark, Rob,

On Thu, 9 Apr 2026 16:26:25 +0100
Mark Brown <broonie@kernel.org> wrote:

> > > I didn't want to set a particular limit related to the number of GPIOs
> > > used for thje gain value. Of course 2^32 is obviously a lot.  
> 
> > > What do you think about 16 for maxItems?  
> 
> > What is the most you are aware of? Take that and double it.  
> 
> > Seems to me 256 levels would be way more than a human ear could distinguish.  
> 
> There's plenty of gain controls with way more than 256 bits of
> resolution, though I'm not aware of any that are configured via GPIO.
> The step size and absolute values you want can vary dramatically
> depending on application, possibly in the same system (eg, a DAC that
> can be connected to both headphones or speakers) so you often end up
> making practical adjustments in a small subset of the available range
> but that subset can vary a lot for the same part.

Mark, do you think that max 16 GPIOs could be an acceptable limit?

IMHO, this value is large enough to be used as the limit.

> 
> > I guess my point was that really we could deprecate simple-amplifier
> > binding because this one can handle it and more. But I'm not
> > suggesting we do that yet.  
> 
> That's my thinking.

Fine for me to, at the end, deprecate the simple-amplifier.


