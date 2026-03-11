Return-Path: <devicetree+bounces-274344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDcyDqDjsWksGwAAu9opvQ
	(envelope-from <devicetree+bounces-274344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:50:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8F226A924
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 492AC304B83D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 21:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF7434D3BF;
	Wed, 11 Mar 2026 21:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ft83guEs";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="lhC2TzYF"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3233029B200
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773265816; cv=none; b=f2t7C0yUA4MYkQQkZYX2NPu52k8zbdKyNYvT/Xw1fjbTlB2N4qZbZp3tKF3HNA3VgsASfM/1sPEkEskUhsLKzwGU88eQQTdaryt+QqqBP/6Z29RP086VAQl1N3rD+AUIMg2PGP8J/hKphmmieb6n40vQeqbkEUxU/wW5EdLV0nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773265816; c=relaxed/simple;
	bh=nUDluusk/uDGZ8oHjMwCbcwuRMtWi9qzMZ+YsH6si/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PjR1CMA4ZmBnRAntDnugG9cL2qrOcuoNeeogavA80Yj2qu+FWvH8RXUyCFWySUOnQrXGw0Sdh7/FWbBz6EeaRZ/AdoN4wNu4lViWBfjGNX8k/IYtI07cInY1Ue3WomJ5DeyAS+z22YhzcjXgHwZ5rzlg020bJQhXsfe8KHuX3Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Ft83guEs; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=lhC2TzYF; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773265814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=iG1sK9K8o9dl9Vde3v0efNWoYZtYHoBdU4iIKqn1yc8=;
	b=Ft83guEsoXZ43bJO5UGbdUkydmGt9QIQyhdpHASbte0qal5xycJGcNqqy/0ZjEG3rDUm0W
	32OTzr7zfP/I+DR/LxbU+tt6JuQuVPhSWSd/5uHLS6xRSmvibK7fYNrEa/OH8782Mb/Ftj
	e3V4V6cLjuolVKVtbinHeEFYSbtj1Sk=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-609-gH7wizfrMG2xmTt_ET00bg-1; Wed, 11 Mar 2026 17:50:12 -0400
X-MC-Unique: gH7wizfrMG2xmTt_ET00bg-1
X-Mimecast-MFC-AGG-ID: gH7wizfrMG2xmTt_ET00bg_1773265812
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd98d96382so52574985a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773265812; x=1773870612; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iG1sK9K8o9dl9Vde3v0efNWoYZtYHoBdU4iIKqn1yc8=;
        b=lhC2TzYFzJa0Olv+maLTO7IHRURLGBtxyQwBS4Pe960fTXKOW4/6zqeXc2ITV5/o4k
         //jSoVsMnmxQ21SN1uwNwU3TXFDwkYNCrJ8A0YtXCKsh5e2K5jdvet11IToD1EzYPlX4
         D75HwFnt+jlgD+exqsaaFkDynSlj6w+2Zo0oUC92JM+YkzL8Oyb2/nQDo6RZQFznmgu3
         /9zrodZZL99umRlBKSLxL7MyAvfIx9koP4/4My7g/vUh70GiTVjQU7MVPTrOBY+3o+eB
         MbztcftD4uKcdW1BKc8/GW/Nd0weTKJWCCbljVb6R8nquPT/6UnTzUqhb3tw/FMWfqno
         Izjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773265812; x=1773870612;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iG1sK9K8o9dl9Vde3v0efNWoYZtYHoBdU4iIKqn1yc8=;
        b=rKowaPrgTtf0fn6fLPb1nMgvWBISwt/lQaJQUql3edmFKIG7DTs6DQudqMyEMPqcMu
         gSBiamUmdUpuFUcu0xXsG7gxBfSCmpnKRvo1gQL7/V1fGQ1OL+Om3BbNIIu+fr9Nvgry
         ua/40U96HhbNBNxoF+cT0m03RJPOwzR7aoRlNrV/FIBo24WHvvlCAJRr/STFlWwa7fXb
         AKOPgjdtTn0CpdMBymMJ+/GufDfssuqgQA7Zi0jEO8T/FrCE35qpUWK9xSWakacYD688
         Bp96z+m7F/y8kkuxCCOIyHPHBetLZhEyiWo9L9YgzsjrqrHnHsJLfugAza8HKbT3kwnb
         2lxg==
X-Forwarded-Encrypted: i=1; AJvYcCU7MCConseEhq0iscngYkkBBhN1A1sAehTaOX9qfoQALjcAKQ/XOHTde4n4HHQqAyERP5B9Jg3/rQVT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx59tkpT8Ew68ckFT0BzXSTXhFqnd7ITu4XO+NutaZfNaji8j+F
	y8+DI7PYr6ioybPvMQXg+8IZc6DEkuKEzlWXXv2VVwW8vroYaBYF/Z49xJy6KlIYc36LaWkUy1Q
	OyyGmVQLLY6gScAN8MWtaYQNl0CqB3UTTgHQyECGCbhufZWmez+eHQH4bfTnBGvo=
X-Gm-Gg: ATEYQzy2k6WNkJM1zmFhqP6blSDmLthAm0HZS+7YM57AhD0nQRFjdDpNK1fuNOAJFXO
	jBGVdXjQc/I7HYGwrp9tPVWrTed1nhRZinDoGgAyfMzs8VO7QGK7DqEZ1Li4v/bQRXZO3BlYkvV
	oJ35vQZHzB0PwO8KhgymWGU8OIr5d+eyJSiDLeyLQU9jL6uO25oeJ64AiA4zRb+fG4zvu2EzSJF
	vxt7guGLuBO8R5ydZuGlyHbI3y5C46sc/KMYU54fEX9gvxQrouOB6Prx84zpkXIplg3gjanRRL0
	iIS2PvaVOj+5Aknco7RKibrVf83a/3A9qw2auKKM9GmB8177vvzt7mWdF9NKilaEaL+WDYcqGui
	PCl64ewqqb2yZo88fNLQ=
X-Received: by 2002:a05:620a:44d1:b0:8cd:a071:9aae with SMTP id af79cd13be357-8cda1a8a3b2mr581380385a.78.1773265812356;
        Wed, 11 Mar 2026 14:50:12 -0700 (PDT)
X-Received: by 2002:a05:620a:44d1:b0:8cd:a071:9aae with SMTP id af79cd13be357-8cda1a8a3b2mr581376885a.78.1773265811916;
        Wed, 11 Mar 2026 14:50:11 -0700 (PDT)
Received: from redhat.com ([2600:382:7708:94f:6bbc:89e9:5b48:3a11])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda1eab31dsm211687585a.0.2026.03.11.14.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 14:50:11 -0700 (PDT)
Date: Wed, 11 Mar 2026 17:50:08 -0400
From: Brian Masney <bmasney@redhat.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Sebin Francis <sebin.francis@ti.com>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, arm-scmi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v8 4/6] clk: Add KUnit tests for assigned-clock-sscs
Message-ID: <abHjkMXPK0fXcdrO@redhat.com>
References: <20260302-clk-ssc-v7-1-v8-0-2356443a7e4c@nxp.com>
 <20260302-clk-ssc-v7-1-v8-4-2356443a7e4c@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302-clk-ssc-v7-1-v8-4-2356443a7e4c@nxp.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274344-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: CE8F226A924
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Peng,

On Mon, Mar 02, 2026 at 11:01:18PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Spread spectrum configuration is part of clock frequency settings,
> and its behavior can be validated similarly to assigned clock rates.
> 
> Extend the existing KUnit tests for assigned-clock-rates to cover
> assigned-clock-sscs by reusing the test framework. Add new test
> device trees:
>   - kunit_clk_assigned_sscs_null.dtso
>   - kunit_clk_assigned_sscs_null_consumer.dtso
>   - kunit_clk_assigned_sscs_without.dtso
>   - kunit_clk_assigned_sscs_without_consumer.dtso
>   - kunit_clk_assigned_sscs_zero.dtso
>   - kunit_clk_assigned_sscs_zero_consumer.dtso
> 
> These tests cover various invalid configurations of assigned-clock-sscs,
> ensuring robustness and consistent error handling, similar to the coverage
> provided for assigned-clock-rates.
> 
> Co-developed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Brian Masney <bmasney@redhat.com>
> Reviewed-by: Sebin Francis <sebin.francis@ti.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

I'm collecting up patches for Stephen for a git pull. I wanted to
include this series, however I see that the clk kunit tests fail.

[17:34:44] ================= clk_assigned_sscs_skips  =================
[17:34:44] [FAILED] provider missing assigned-clocks
[17:34:44] # clk_assigned_sscs_skips: ASSERTION FAILED at drivers/clk/clk_test.c:3218
[17:34:44] Expected 0 == of_clk_set_defaults(consumer, false), but
[17:34:44]     of_clk_set_defaults(consumer, false) == -2 (0xfffffffffffffffe)
[17:34:44] [FAILED] consumer missing assigned-clocks
[17:34:44] [PASSED] provider assigned-clock-sscs of zero
[17:34:44] [PASSED] consumer assigned-clock-sscs of zero
[17:34:44] # clk_assigned_sscs_skips: ASSERTION FAILED at drivers/clk/clk_test.c:3194
[17:34:44] Expected 0 == of_clk_add_hw_provider_kunit(test, np, of_clk_hw_simple_get, &ctx->clk0.hw), but
[17:34:44]     of_clk_add_hw_provider_kunit(test, np, of_clk_hw_simple_get, &ctx->clk0.hw) == -2 (0xfffffffffffffffe)
[17:34:44] [FAILED] provider assigned-clocks null phandle
[17:34:44] # clk_assigned_sscs_skips: ASSERTION FAILED at drivers/clk/clk_test.c:3218
[17:34:44] Expected 0 == of_clk_set_defaults(consumer, false), but
[17:34:44]     of_clk_set_defaults(consumer, false) == -2 (0xfffffffffffffffe)
[17:34:44] [FAILED] provider assigned-clocks null phandle
[17:34:44] # clk_assigned_sscs_skips: ASSERTION FAILED at drivers/clk/clk_test.c:3194
[17:34:44] Expected 0 == of_clk_add_hw_provider_kunit(test, np, of_clk_hw_simple_get, &ctx->clk0.hw), but
[17:34:44]     of_clk_add_hw_provider_kunit(test, np, of_clk_hw_simple_get, &ctx->clk0.hw) == -2 (0xfffffffffffffffe)
[17:34:44] # clk_assigned_sscs_skips: pass:2 fail:4 skip:0 total:6
[17:34:44] ============= [FAILED] clk_assigned_sscs_skips =============
[17:34:44]     # module: clk_test
[17:34:44] # clk_assigned_rates: pass:3 fail:1 skip:0 total:4
[17:34:44] # Totals: pass:16 fail:4 skip:0 total:20
[17:34:44] =============== [FAILED] clk_assigned_rates ================

Can you look into this? I didn't look in detail, but should the tests be
updated to expect -ENOENT in some cases, such as 'consumer missing
assigned-clocks'?

Brian


