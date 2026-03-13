Return-Path: <devicetree+bounces-275319-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DAIGBEjtGl7hwAAu9opvQ
	(envelope-from <devicetree+bounces-275319-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:45:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2AB2853DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 97BC6303D481
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C61B37F75F;
	Fri, 13 Mar 2026 14:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="RCaFmftu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF90C399355;
	Fri, 13 Mar 2026 14:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773411411; cv=none; b=nzaLNQketZxm6Ut0tqET7PymYgtnS3ZoIyeT6JQUoO49Mgu5jCqDhurIir/a+3asqCal3yhqZOBiosqe/hTNLIEvvDnpFFUeyUrojvWI4CpJcs37Kjk7OV7K7Nywc7lVrIFmtRtpAGi8HV30fcwXdpBBmXzRv+/vMXFobzpPAm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773411411; c=relaxed/simple;
	bh=hizkWQcLQlP09XYKbRjVlEohQDr8BcTgZ2yrtw/VB0c=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WZcZLH/ejTbEW+eFVRDnZEDQ0UBkxXPMi9TUFrmqVejK2NjRpfalmWZvzXtXl01xP5X6Jpio5xtwwU7e4pw3x///j4ndbhDywR4SsCa0Xs9Kn0iRx7NxobTysH+NyM/3KGmdiaUKXXo0Knh+0bbfmYFK2/dREYqbN70beuSdRss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=RCaFmftu; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=QST6sI7sni8u9hEYGbPoYRuI7LarkNP2zu//hzs6jko=; b=RCaFmftu5KPdpguutFHifb4OkZ
	BqizKIn+4pFjUopJ/53iSy54wwgcnTqZlQh2NqIMG7s72WS4p4zwXJCeqtWl676Pq+M/Mftjm2Fcb
	jQQ6j9DPQ60cl/iHXmKwIweMQ8u5EcUdfWay+LzJ/mZgVcC44HXVSh+/xcBnXwbqLjGUp3xUW6Zvd
	ZAuuTHCXo6uTUThmDbLqEhCPvS5AQWIiEoWQBq1OusHkLOvZKuqJj8gQx1rUpwmT4sYY+1+IO+WwB
	J38lsgUuHo0jTCUGpynijfcM/dV0uDhg+FbX2xgB5HJdbsJqFv6/N4Hz79OXhqm/0vs0egsReTR38
	/mQR5O8Q==;
Date: Fri, 13 Mar 2026 15:16:43 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Mark Brown <broonie@kernel.org>
Cc: Robby Cai <robby.cai@nxp.com>, lgirdwood@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/2] dt-bindings: regulator: fp9931: Make vin-supply
 property as required
Message-ID: <20260313151643.7e6a5805@kemnade.info>
In-Reply-To: <0b9d0512-1164-4178-9bd3-4a3a7505fe1a@sirena.org.uk>
References: <20260313133102.2749890-1-robby.cai@nxp.com>
	<20260313133102.2749890-2-robby.cai@nxp.com>
	<0b9d0512-1164-4178-9bd3-4a3a7505fe1a@sirena.org.uk>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275319-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,vger.kernel.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kemnade.info:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,kemnade.info:dkim,kemnade.info:mid]
X-Rspamd-Queue-Id: 5C2AB2853DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 13:33:36 +0000
Mark Brown <broonie@kernel.org> wrote:

> On Fri, Mar 13, 2026 at 09:31:01PM +0800, Robby Cai wrote:
> > The FP9931 requires a vin power supply to operate, so mark vin-supply as
> > a required property in the binding.  
> 
> Please submit patches using subject lines reflecting the style for the
> subsystem, this makes it easier for people to identify relevant patches.
> Look at what existing commits in the area you're changing are doing and
> make sure your subject lines visually resemble what they're doing.
> There's no need to resubmit to fix this alone.

in short words (but manually typed, so time-consuming):
s/dt-bindings: regulator:/regulator: dt-bindings:/

Since I once have misunderstood that text block myself:
- this sounds like you are talking about the subject line as a whole
  and not only the prefix.

- Looking at common practice:
   git log  --pretty=format:%s  -- Documentation/devicetree/bindings/regulator/ | sed 's/^\([^:]*\):\([^:]*\):.*/\1:\2/'  | grep binding | head -n 100 | sort | uniq -c
   shows (besides random other stuff) around 70% "regulator: dt-bindings" and 30% "dt-bindings: regulator"
   so chances are that people might see a bunch of "dt-bindings: regulator" (happened to me once)
   if they do not invest time in doing proper statistic, I hove once thought: my prefix is right,
   so lets try to adjust the wording.

- for an unbiased reader, reading
  Documentation/devicetree/bindings/submitting-patches.rst helps

Maybe that helps to reduce some unnecessary churn in the future

Regards,
Andreas

