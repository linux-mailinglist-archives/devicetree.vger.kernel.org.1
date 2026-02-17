Return-Path: <devicetree+bounces-266295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGfFCVL4lGktJgIAu9opvQ
	(envelope-from <devicetree+bounces-266295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:22:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC837151DE7
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0268C3003992
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 23:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C6C32DB7BA;
	Tue, 17 Feb 2026 23:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ecwZpaI5";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="RA4wcICz"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1020629D297
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 23:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771370574; cv=none; b=iu9L34rU0bVOPdTokyedKP9VDwid3LhYpKECaI/tn31rZxsQiKbJJ/R/h1zX3jOnKDOtnBUDhyHaO5G64Rm35VWdVUImaNFKCDScUfCWAhmba8olx1BFXf3ZcSAp0QXJp91TFw2eBAXz887J110ps8bURxHV4vcq25AqtFvTrd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771370574; c=relaxed/simple;
	bh=fT2sRGh/Fthzt1N+eQsgIYRWMI25aFYgD6n85ujm+8E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h0xeRBDG4SPzt+QwRvNa6wOS8tUI4fRoqNpRnXsRkPvKTPkrrk4OPa+eholajwiTrG9pvByRzLWbXWxIx3aqLI8uRHahYC3p9WxrsLmNXEtRfZ8RQeoe6Q1QAP2wXCOJo6MkVYcDFDlaZ36hPVYFx4q3S5nDZACcRr3k8tS+dxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ecwZpaI5; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=RA4wcICz; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771370572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pu6xIl0G77mqVnN/koO35p0gUExl94drv061er+Ef0k=;
	b=ecwZpaI5Mm4TTYGeG+jmn90YidJVoJDKooacmRpKn9/On0VAFIG9nY/uGWAbCShEzk2621
	FVoLZtb4Qb6MmJFLHFIwxu+3TdfHxNQho6McQW6f5Sc2wmPjUSGG1FZdftcPwaGXSGDEg3
	gQhfmHFz8Ycb1w1SGgeLGWqKNjzZCN4=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-117-Vlj6g19zNvWU7o6ULecG5Q-1; Tue, 17 Feb 2026 18:22:51 -0500
X-MC-Unique: Vlj6g19zNvWU7o6ULecG5Q-1
X-Mimecast-MFC-AGG-ID: Vlj6g19zNvWU7o6ULecG5Q_1771370570
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3b6b37d8so2915948885a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 15:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771370570; x=1771975370; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pu6xIl0G77mqVnN/koO35p0gUExl94drv061er+Ef0k=;
        b=RA4wcICzmrF0fhmSw5cDWngiWY9UMpR0NULfELJQTnY7L2TYu5LIXCITvf3tsMLKHU
         CTyrC+5ct7T2byup8C0aw0+h9Bddnu/2EoPbe8i66v+xEq8OJ1jUJtpkytEtxECYbGf8
         Vd1tBU2ruz8+nJJHWGpIOq8LIR6BI80r1tmHKaDiqVJ85UNXiI2lfb9ZQS2rpeSGieYw
         sBOTfNjnRHgbSwwNJ+hhmz5ySdtOVw0Pk+h4nE5mh3y3NwV26RJ96FMc9fa3D1yiy/kZ
         xehJDQixcry0efXr8Ay8K3IvMjby6HzJYCUTX3jvUJMtIwN+B8GcMhIo8xMPOqjou7LG
         ClSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771370570; x=1771975370;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pu6xIl0G77mqVnN/koO35p0gUExl94drv061er+Ef0k=;
        b=dE1E7Kp0XY7m6NA2fqfGvXKRtot73c+5zH6IqCqxOI2DDryNqxygeMi9/f98OmI/9A
         UtXqARq89f51pZLWwbhtFvXdq4ZrlZzJ4xGjWrbiiwy8M/CnENBmyKOy+spnvYGBuz3m
         9hgoigThhI9j3+SQow5GfE9jnhyYNRXISspClP4nkSWMT/D5yMqTPYSROv9EXUp3selT
         HaXfNyZxbzdJ6N3zPRJ+I2IdfVEdw33jm8UG3xDMlhCis32TWf461PnrOq03Of4PBqve
         YnUjVJjcUEkGm6oC5VvDg58YWQcM3gEjNDFSiCQaF9P/yDb2nEK1E4ZSbLQ2d+KB4H6P
         Oihg==
X-Forwarded-Encrypted: i=1; AJvYcCXwDq8O5gbvKHtueiZHAvNbs4fCKWHJZv6LUnCGZNf6kN9gT2zbkUsKiF2y9jL+7qdCUeK/iA2OnvVh@vger.kernel.org
X-Gm-Message-State: AOJu0YzJKr5Xmbw3q0rlFEqP1rqYHpImQaQqgxrPAte+7PoaT26z1PhM
	dYWCRWrDHpWwfTxZv4qzqyc/E38lpY9o7uR+sg8nLPO/pU8EVGpXOw3UQZN98YhJslTy57YDr4Y
	9Dk4VDdvnCuCNuKJHGGLafi5PkHvOJ+r6cNfh9wGAuHz2QyRDBrbABejiboD75oY=
X-Gm-Gg: AZuq6aLujujRa2XmifSBNreeGN5hZWpNk8Jy5C4sNnR83ZQ9a8s1biwLFcslb1U4BkM
	ZtwQ5OcbeDKLvf7j+9L549QJvl4TVX2tKiUzOPbtXYQ1ISJl+sEeRNkNp6La0cGgmfSE5i6YmAS
	8qulxTBhhXtAy0s3L8Rik3U4snNarFysz96+K4ki7oKu+9MivvlO+A1pO9xzKgBpePJMpvYx7Nx
	+EeEY9bqkzmS69OaWPCVHgblqAT4tSxKPt9Lri/n5Kad52jbkj4q2OVV4z8927ak1tFCXrXVake
	TUsNVMSog5HwptU828S85N2Q8QdiiNdbjLKtS+v1bArilm7ATpLTqSdmN5Wq/ZT+jsAszh19U0A
	1rn6hrCtoMgw8l5C0ZbfB
X-Received: by 2002:a05:620a:450f:b0:8c6:ae78:f750 with SMTP id af79cd13be357-8cb74029a2dmr17236585a.14.1771370570406;
        Tue, 17 Feb 2026 15:22:50 -0800 (PST)
X-Received: by 2002:a05:620a:450f:b0:8c6:ae78:f750 with SMTP id af79cd13be357-8cb74029a2dmr17232885a.14.1771370569874;
        Tue, 17 Feb 2026 15:22:49 -0800 (PST)
Received: from redhat.com ([2600:382:8113:e835:467d:eb0a:6604:e0dc])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cdd1541sm178290736d6.49.2026.02.17.15.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 15:22:49 -0800 (PST)
Date: Tue, 17 Feb 2026 18:22:46 -0500
From: Brian Masney <bmasney@redhat.com>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	joel@jms.id.au, fustini@kernel.org, mpe@kernel.org,
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com,
	agross@kernel.org, agross@oss.tenstorrent.com
Subject: Re: [PATCH v6 3/3] clk: tenstorrent: Add Atlantis clock controller
 driver
Message-ID: <aZT4RsGnu1qlZl-l@redhat.com>
References: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
 <20260216-atlantis-clocks-v6-3-cb46d6a59c73@oss.tenstorrent.com>
 <aZST4Yywv09u65MP@redhat.com>
 <CAEev2e_XjxD3kHbOxVYwbf0Q0cwEr96dSQ3hWZE9eLdgeXhs4g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEev2e_XjxD3kHbOxVYwbf0Q0cwEr96dSQ3hWZE9eLdgeXhs4g@mail.gmail.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266295-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BC837151DE7
X-Rspamd-Action: no action

Hi Anirudh,

On Tue, Feb 17, 2026 at 05:12:38PM -0600, Anirudh Srinivasan wrote:
> On Tue, Feb 17, 2026 at 10:14 AM Brian Masney <bmasney@redhat.com> wrote:
> > On Mon, Feb 16, 2026 at 04:16:34PM -0600, Anirudh Srinivasan wrote:
> > > Add driver for clock controller in Tenstorrent Atlantis SoC. This version
> > > of the driver coves clocks from RCPU syscon.
> >
> > ...covers clocks..
> 
> Thank you for your comments. I will address the typos and add the
> static modifier for the different variables that you suggested.
> 
> > > +
> > > +struct atlantis_clk_gate_shared_config {
> > > +     u32 reg_offset;
> > > +     u32 enable;
> > > +     unsigned int *share_count;
> >
> > Why is this a pointer? Could this just be a plain unsigned int since
> > all occurrences of this are dereferenced?
> 
> We have a group of gate clocks that have a single enable bit shared
> among them (instead of individual enable bits for each clock). We need
> to keep track of the number of clocks within a group that have
> requested an enable, and only unset the bit if all the clocks are
> disabled. share_count is used to keep track of this. It gets updated
> by each clock. Hence it's a pointer (and the mutexes around access to
> it).

The code currently has:

struct atlantis_clk_gate_shared_config {
	...
	unsigned int *share_count;
}

That pointer is dereferenced like this in several places:

    need_enable = (*gate->config.share_count)++ == 0;

I don't see why the pointer is needed. Can you drop the pointer
and the dereference like this?

struct atlantis_clk_gate_shared_config {
	...
	unsigned int share_count;
}

    need_enable = gate->config.share_count++ == 0;

[ snip ]

> > However, bigger question is if this message should be dropped entirely? If
> > this condition occurs, an error is logged here, and a second message will be
> > logged in atlantis_prcm_probe() below.
> >
> > > +                     return ret;
> > > +             }
> > > +
> > > +             clk_data->hws[common->clkid] = hw;
> > > +     }
> > > +
> > > +     clk_data->num = num_clks;
> > > +
> > > +     ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
> > > +     if (ret)
> > > +             dev_err(dev, "failed to add clock hardware provider (%d)\n",
> > > +                     ret);
> >
> > Should this message also be dropped as well?
> 
> So you're suggesting that we just print a single error message instead
> of multiple. I can change it to be like that.

Yes, and sounds good!

Brian


