Return-Path: <devicetree+bounces-265465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PJALAF1j2kpRAEAu9opvQ
	(envelope-from <devicetree+bounces-265465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 20:01:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A50213915B
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 20:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1BB4E301BBAF
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 19:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB2D427BF7C;
	Fri, 13 Feb 2026 19:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kJjO8WgD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6309423717F
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 19:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771009261; cv=none; b=eKXY4rDmyBZR5YDxcuSqWWguPUpDzMu+4Bq1xV/qeSGdt0PBott2JpRW0gc6i+GP3f15U1Ke+pG1MS0YrgmxRHLcrB1eRZ0TkG+4o4yWfm0gSePzmlfZOTkfbVMKsbi3BvTcUezn7sPmyNDqmVSoK9XZYhAPS/9mv+7zjnCXiwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771009261; c=relaxed/simple;
	bh=5z7j4OzTHPgUpynvi7uFq0cr8kPfrW8/dszklOi3nVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nsDVtH1Gx8Xd6S3racbgbYU+DSnJnv9f/uYFHNANIIvdTbBMI0Tn6CtJ5OJRuZM0hexVNl34dvD4FvpYifoao7eDgJwyJ0McNm1fe6/4yl+ZIHcoH1L/JWe/2pNCwt3yrrmDs+BFvkgOl2FvMldpzxRD9EhkOIcGEWRwpstEiCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kJjO8WgD; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4836d9d54f6so1498425e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771009259; x=1771614059; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sapC28wGLkNp2EIPovx9wYrvEx8pCtzRMVnlm/Q5eK0=;
        b=kJjO8WgDD28p3HGclLhpCFpmNhQzVF1El2ox7h4SyzNGec0padrgCHqtTKW7hwTvvN
         0+EmvQPQ3UpELgKaMAAgFfVg+fGoXH62Tvo/9hNjz8IPwMiwqGlBLYGUoM7jrOKxxJWb
         JbQVpb6TRwXTmEEQKB7ldvkpj2W3fHj1GqgajrSHJ0xVo2NhXaoPGE622eeBgmAvZ5Fr
         kcWytC4zQxBLXLmMutam2Ehx1Ocu9oWlawpu7NRBAnv7I88tRzMPd8euUTtYNr75zzOe
         0YRzU1TUZhkZVgtBXCsdwJp5KOaZ58/hRDU+z+zgsvgYFRgC1ZDBQC+td+PAvHgII9RA
         4ePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771009259; x=1771614059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sapC28wGLkNp2EIPovx9wYrvEx8pCtzRMVnlm/Q5eK0=;
        b=RuBsHgZ5+9JTo6wfHuXzKNGDmvGhmqwyxZuw56KiwLLK8M2begtA7rJSKiuniDgqIm
         v0InHrROKD8fpDiQN7z+7HvWc9F/1dlzAvu+duOyUiB2UnMooG8rqsUb2xBre/Ll0Fdu
         lBQ6v6k99xKQvCUVXyjR7bky0OpPcCRPJePOjONUsmwE729F5KwCpIYV2YztsUELhs0f
         O9Gbke8avvMwze8/Zro1vLEpEQ+DBi7rHSrcZJR5PV2YoKgJjcrDu5Vadvrls301/9VS
         6/dPgmn4eZetqulfdlzU7fiiuOsbcVs2k65/iP2zJ8m5bmmpYTrwV88TI3yhpjcT7bZf
         ltrw==
X-Forwarded-Encrypted: i=1; AJvYcCXLr6foxWa9acFl3JwLBuIpEsXE4rZeaWT7jH++Hqw/Z0/2M5pLwBSwPW4Teh7dPQfC4VYOqaV6o7p7@vger.kernel.org
X-Gm-Message-State: AOJu0YzjQnyn/SuF0zcoW4nPPieO6zBBhpxyj82x4E+e8ikNzzztG71Z
	X0dsRFbF3Gs3b91dt7BE8OLKlwQBSSeXPSFGogztG5OdXHfb+3oHBs6w
X-Gm-Gg: AZuq6aIHJg2nKgiQ9A5aljufGxMLgEUxM7yI2y1wj9mvlOgXM9MA/ltP+foVIY6gN1n
	DCH7OtLqRmGUYWVI2N4hKuuYKcTweSgfExQSmaWO/2TNWKvzFxm+ud1xA/ycZzEE2qEH69qf7AP
	ko7ZgTjwcLU7tt86vosVkFUGr82KTF86+LAN+RVdz6688Cbk6RqgBJMcZgaIGivgpNASYmMQi2u
	LvNu4tDdoVNd1ezMQM7kwka2kiYgzJ4xEAWVrH8BrI14cIA9AV9HkcnXQOnaHNgiwiWDLfVxk0L
	pmcBsoC+IMiWaacN1De8QPQi2N+AB1G4S9v+31eslbr9c1Ke/qJaK1ixhSyDEmWteJI9fC90Dht
	3SRN81QOcUefvttxifhJmTtSdKZA+AE4D1eJm9H7cUqhcO0KoroQb72IR1Vzm9POuHrwKKUDma2
	upHLkmMZtM+j3YkfQA0Ws+wOuEFQ==
X-Received: by 2002:a05:600c:474a:b0:477:7b16:5f97 with SMTP id 5b1f17b1804b1-48370cce47cmr34850165e9.0.1771009258323;
        Fri, 13 Feb 2026 11:00:58 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:34e8:30f1:fec3:9b0c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5b2d1sm8491744f8f.4.2026.02.13.11.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 11:00:57 -0800 (PST)
Date: Fri, 13 Feb 2026 21:00:54 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: Re: (subset) [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP
 control and PIPE3 PHY to DT schema
Message-ID: <20260213190054.ezblztj3blmhtywr@skbuf>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <177021985530.133434.13436195442562231016.b4-ty@kernel.org>
 <f60156a6-58af-4548-9dc3-71c71b822343@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f60156a6-58af-4548-9dc3-71c71b822343@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265465-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1A50213915B
X-Rspamd-Action: no action

Hi Charan,

On Fri, Feb 13, 2026 at 10:06:16PM +0530, Charan Pedumuru wrote:
> On 04-02-2026 21:14, Vinod Koul wrote:
> > 
> > On Fri, 23 Jan 2026 15:39:01 +0000, Charan Pedumuru wrote:
> >> This series converts the old text-based DeviceTree bindings for TI OMAP
> >> Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.
> >>
> >>
> > 
> > Applied, thanks!
> > 
> > [2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
> >       commit: 62c9ff8fc20d23c0dc36be1330734fdafb3e8585
> > [3/3] dt-bindings: phy: ti,control-phy-otghs: convert to DT schema
> >       commit: 7878306d182a1750583a325a29e5ccab9ce0235b
> 
> Hi Vinod,
> 
> You missed to apply the first patch which has DT node pattern changes
> and now this dtb check fails in linux-next as these YAML patches use
> the updated node pattern. I got a report of errors from kernel test
> robot.

If there was any request formulated to Vinod to pick up patch 1, then I
also missed it while reading this series.

Usually, dt-bindings patches are picked up by the subsystem maintainer
while DTS patches are picked up by the platform maintainer. If you know
that there is any dependency then it would greatly help if you could
mention that upfront, or even specify how you expect the patches to be
merged.

In this case, I expect the warnings will get eventually resolved when
Kevin picks up patch 1.

To avoid warnings from being introduced in the first place, you could
have
- requested all patches to be taken through a single tree (requires
  maintainer coordination with ACK from the other one, more complicated
  if the files touched are under heavy development)
- requested a stable tag from the first maintainer, to be pulled in the
  second tree
- send patch 1, wait for a merge window to pass, send patches 2-3

