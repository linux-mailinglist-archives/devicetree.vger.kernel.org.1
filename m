Return-Path: <devicetree+bounces-266303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EL33JkcJlWk2KQIAu9opvQ
	(envelope-from <devicetree+bounces-266303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 01:35:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1716152567
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 01:35:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 040E830107C0
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A041254AF5;
	Wed, 18 Feb 2026 00:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Qkb265rx";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="cHbnzZH1"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447E823EAB4
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 00:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771374916; cv=none; b=OpNdymPqzvIuDtNSgXdcYNGeXEsWZF/qVyn5G/cGQk8RTe069DXNS38QDRc3/WuXsQe3XGMG0LlLcuO1llnLdgWM9+sHjwKTQuxShpNCmoVvU6H9V2OLz9VzBWDBrGPqKY/8U94tlsJi/aZ/VGN/rpH6FrzT01W/RAGpAVoLaCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771374916; c=relaxed/simple;
	bh=qdvgxZcv0ESuBA1Jt7oAm5we9rLZ1s8OEqGJPW/lJcA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SLR3215727PlEPGP1/DiwXR9G2S3uxN1i81LIAWzYFU6W/xEkTDgKXqZzEjrrGGm/7+s8Jdfr5PBONdRqm+x83ZkqJ+iFQSWHMyN61+J+mRx6Zh1H/u0bYXg6FdyZi0UO0t/8EItjMf7AYxAsXpFx8advNFWSlq5UVbdaX1qsqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Qkb265rx; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=cHbnzZH1; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771374914;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2GFKu2pbS4lNbKn6Jz4fUhg2OnmZkDZP9P6vjWAZkDc=;
	b=Qkb265rxBzDOP4OGZNlzl/wdPwfxqkqWpII2D6emQKX+Yl+itLWQftLFRmmBRnjrfGy4ST
	DrTCPmodQPrgeJF3nJxqJlmKB4DW89Od5gfSU5PDpD5yYrDIcPcr1ktVYK7f8mFcPh8wna
	9sjaxzNVw3vct73EH604WA9T63VsH7I=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-252-euvCkg2LP4aW1wSWrmyOYw-1; Tue, 17 Feb 2026 19:35:13 -0500
X-MC-Unique: euvCkg2LP4aW1wSWrmyOYw-1
X-Mimecast-MFC-AGG-ID: euvCkg2LP4aW1wSWrmyOYw_1771374912
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50341fddb89so380476841cf.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771374912; x=1771979712; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2GFKu2pbS4lNbKn6Jz4fUhg2OnmZkDZP9P6vjWAZkDc=;
        b=cHbnzZH1WSqWqtrHWUVvdat7hwMwBx/BDT3756rn4fgaq4WrTTDVLo9RqVRc5hh13o
         4m3cEmlSLtdbA3Qn3QUXHD0OG4iZnhaURTx6Y7kv64BCxd6tVzzY+ZqFjdogkf9wk7B0
         4ArTC/nBK7kO2013zQYvBt9cTiFLF7NUKVtr6qe8cKU75CL09goP9nBPBRcxWsBJAGAQ
         8gGDBeJOxb24G5N69OdAq7idCFvPEqTSm839IGtSVQC5esvpbKJmpEpgWP83Z5YwpHvO
         s8UVzgIwYR3V6qQOm+IL3qulqxiX/QfdW3sF+uiSZ8Fnajn+ZYWuoISQLClEavQa7nf2
         muLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771374912; x=1771979712;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GFKu2pbS4lNbKn6Jz4fUhg2OnmZkDZP9P6vjWAZkDc=;
        b=Fuu3+xOJHJQQk/OB4GATpXC8q6OzRaLSH9AwJf7Oqn74yGj/ogMAGv96Yrj5RgC2dw
         dphZI83Y4AzlZEn/21wOCwgqfu/lKLowaSBNtClGZxCgD7gMQiypMF0QhLwwjTDHmW3/
         xqklz/DYodnJV+7tRBMnJ308qCo3+1gdeT9oImKFsLqPvnD5aNWxszxj2wmRVptR290i
         8oFpMDcyckgeZciktXe8Gq3+gR7oGegLmByNXZ0hBplMjsEo6oWaBX5p8n3SxahcwhjB
         EVZoLRvQQn72Br8zUFRLrBpKqbPo6xmRkl7kGVQaR7vTJkjc1U1WvIMRlqt8dgbNuxZv
         WiBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUh1st4CYzpzCLxQ5pU1qdqSMWGqW9yjnpStvZVY0wOFuvA4McbZZm93Ae/RniiAg/NvWneHCAUmC9S@vger.kernel.org
X-Gm-Message-State: AOJu0YwwU5l6HuzShdowzP7qgH3F8YNZ4JI3eoWcwqhdWHYLOhfGQGZ5
	dxWgH/HiOlcxsdVn8SI0DwGrca4rTg6IAfc114Iq8p3VDV8L/dDQVTikV/7X7HbwP8TO+opWlaZ
	TdGIWjuMK6zAd86n2iSzYYk9ecW6yHN2IJnerQc5n5ZH4IZsIkvwjkS0HTLnfIT8=
X-Gm-Gg: AZuq6aIzNU5/Ggl1ulbvHWO6LIUDZc8ShrEdWTds3nc+tBubwT2eGZ3K8rgGg/F3Hsn
	+qqorZgrCRf4Rl0KPbApXAXJwqErFkXjllmZrdM4HM/sikkjXWoxRpWElaxdxpQcefhP/FDqDQD
	O+KLkLaqXr9xaG571jpb15S68Hi82AMjunQVOSyKHx+EE6XrIA92f7KrHXYM38Uz48y1GqXDStD
	xGIqUy71bZDhbNbZEmVSbOQDBlNiZC4e1au67o6F3dECjUhqDXAhAi242C0nxHrbA/DEiUP2ijU
	P2Mo0Y90rIXnSF8TMqKCMO16bbeguvHykwULLCsHKkeIVUgRG/Y5f8Ztj3CupwROFbo5GHd26Jm
	LpSh4Yp7vB+kgSNmmIM+qe4hBSKfT7auB5wQFyQkWGG17TUfj7fiHzIuE
X-Received: by 2002:a05:622a:1443:b0:502:9abb:c919 with SMTP id d75a77b69052e-506e9153b78mr3429751cf.10.1771374912629;
        Tue, 17 Feb 2026 16:35:12 -0800 (PST)
X-Received: by 2002:a05:622a:1443:b0:502:9abb:c919 with SMTP id d75a77b69052e-506e9153b78mr3429291cf.10.1771374912045;
        Tue, 17 Feb 2026 16:35:12 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cd8aff6sm174993256d6.27.2026.02.17.16.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 16:35:11 -0800 (PST)
Date: Tue, 17 Feb 2026 19:35:09 -0500
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
Message-ID: <aZUJPb2jQIx2evWN@redhat.com>
References: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
 <20260216-atlantis-clocks-v6-3-cb46d6a59c73@oss.tenstorrent.com>
 <aZST4Yywv09u65MP@redhat.com>
 <CAEev2e_XjxD3kHbOxVYwbf0Q0cwEr96dSQ3hWZE9eLdgeXhs4g@mail.gmail.com>
 <aZT4RsGnu1qlZl-l@redhat.com>
 <CAEev2e8hwN1FBR6yMr_NeZrFx3BXNz88RHfHLhSM=GrpExsUyw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEev2e8hwN1FBR6yMr_NeZrFx3BXNz88RHfHLhSM=GrpExsUyw@mail.gmail.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266303-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F1716152567
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 05:29:56PM -0600, Anirudh Srinivasan wrote:
> Hi Brian,
> 
> On Tue, Feb 17, 2026 at 5:22 PM Brian Masney <bmasney@redhat.com> wrote:
> > >
> > > We have a group of gate clocks that have a single enable bit shared
> > > among them (instead of individual enable bits for each clock). We need
> > > to keep track of the number of clocks within a group that have
> > > requested an enable, and only unset the bit if all the clocks are
> > > disabled. share_count is used to keep track of this. It gets updated
> > > by each clock. Hence it's a pointer (and the mutexes around access to
> > > it).
> >
> > The code currently has:
> >
> > struct atlantis_clk_gate_shared_config {
> >         ...
> >         unsigned int *share_count;
> > }
> >
> > That pointer is dereferenced like this in several places:
> >
> >     need_enable = (*gate->config.share_count)++ == 0;
> >
> > I don't see why the pointer is needed. Can you drop the pointer
> > and the dereference like this?
> >
> > struct atlantis_clk_gate_shared_config {
> >         ...
> >         unsigned int share_count;
> > }
> >
> >     need_enable = gate->config.share_count++ == 0;
> >
> 
> In this case, wouldn't each atlantis_clk_gate_shared end up getting
> its own copy of share_count? Which is not what we want. Or maybe I'm
> not quite understanding what you're saying.
> 
> Every time we create a group of these shared gate clks, we create a
> refcnt variable like this and pass the var to all clks that share it.

OK, I see now. Thanks for the explanation.

Brian


