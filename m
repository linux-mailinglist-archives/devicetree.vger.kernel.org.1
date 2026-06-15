Return-Path: <devicetree+bounces-312089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ushBGRMsMGrGPQUAu9opvQ
	(envelope-from <devicetree+bounces-312089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:45:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5029688819
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:45:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=J85ALLo4;
	dkim=pass header.d=redhat.com header.s=google header.b=SRXWYeak;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312089-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312089-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 513843035D56
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2421640B6F4;
	Mon, 15 Jun 2026 16:40:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5C540BCB4
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 16:40:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781541659; cv=none; b=QQL4GeGqYfxDXPkuX7ZmhcoPAIgGfWL4MyGiYDbt2+bLjJS0goLKFpM5EpTDmGN2kcgQat8/dY+27Z900IEYrwJHJmgI8EQvEjrTpv2fkmplE/DBZbZSmqjj5EFM0i7NRRQc/bE9L8U9j23HrWRIS7J2vOIrEbbXapXvrw7mPFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781541659; c=relaxed/simple;
	bh=sgFYe03AdqAI3bmcuoDq5yghX+BkC5mlsAqcpIEve6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=om9KAA9BtLkHWUxCUh/gj6ytJgKWu7Q6Wx5qtzFA9EwVGbb29cHAiwjEEyHkonD297FYYG2Z3CmgVae9Svy6b6ABoU0gO7ZNQWS2et6lJQ4p0jBKhTzTEHpIILLrpiGNdlP/t4yccxLBw7VgIR6Sx9ZJkU05vsSTJlzYXRHNQ/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=J85ALLo4; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=SRXWYeak; arc=none smtp.client-ip=170.10.133.124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1781541656;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fYiGHVY1xpFWEX6h4yQg4Y2KYAiZFnPKyRrFWVlw2cc=;
	b=J85ALLo4faKw76QB72rwn6Gavb3VM7BHvdMdPjszgLNlN9dpBoTpO/9ZCi/q/ss+BXtSfV
	lRxOGxCyb0qTYOqFy+xWzNlLaVpdiZKaANt0W5oc+yjcXy9bRSGJU4ak0Kk5wIO7GjP9nH
	kDGHhue9UMe2nI6qpjG2hH1Hf1mIuHA=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-140-ojOlhgJ-PK-l1VYlMoCsQQ-1; Mon, 15 Jun 2026 12:40:53 -0400
X-MC-Unique: ojOlhgJ-PK-l1VYlMoCsQQ-1
X-Mimecast-MFC-AGG-ID: ojOlhgJ-PK-l1VYlMoCsQQ_1781541653
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-915f6ff639aso1013430585a.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 09:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1781541653; x=1782146453; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fYiGHVY1xpFWEX6h4yQg4Y2KYAiZFnPKyRrFWVlw2cc=;
        b=SRXWYeak+v7j0jqiJ7b51gxeOtyaapgR1CtatxokgXbwiO6AvPUMg/tTPHn9XZEVFM
         VeScC+cq6DNqMcqxPTSipShRQ1QaGCMnjl1Dw3on9Qt9BrTICGvndLIbuTuq6JuJg6+3
         dvUssKANX1zRu8zTcGu0N03aFVzEoYBSg+SbueM1Rgs0XpVR3czA6KTNEwoqkD6B66vk
         bJ6QhWYV7xuJiUyRJl/ez0B2xyORC3xDMWjCnEwdoFtM3cXVx5HnxhWTvDsMC1K7et45
         akJS5DFP25ns3/ie5OYrrZxiwQmnrQOiRA4OvVLsdwcmP4P3NhdmcH/VXtVEbTMcPCJR
         wRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781541653; x=1782146453;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fYiGHVY1xpFWEX6h4yQg4Y2KYAiZFnPKyRrFWVlw2cc=;
        b=jhPOdRF3LJ0cnxEH75tQteUdDuu0UVeZ6Y/OO8e3N9fNcSHrSRPAXXbs2iABxBx50F
         QpaS9ez4rQiAnIK4x0rNe/p9wheJIO5hoP80B8H2euFsIU0ZuQT1ESB1yIUB8ijPtYwp
         QxU8mhdvLEe0sDGLkRqo0/EMvawhNaHY8Fyt1GVdSHkHAIInkQwPmFH0w6VFE+W5IsWP
         0ucIxpdC4DfPD2ZqH0myq56XxhDgFH732GAaL9kTqGLljRwC6ghGd9h7z9Xg2GImhZ7b
         +22rRtaTo1NFGUZPnKaqPEjejqfM0QDdNKDwo7DxYb3rLg7Y5KKiBiokOMd6SJ4rNuxm
         WCew==
X-Forwarded-Encrypted: i=1; AFNElJ8wNyE8DPUY6SEqg41EO+ALsEtg8JH/EYgopj60JMWpmWlAprU4HShYNYDRmepOymDCJuC7B0p2tsfd@vger.kernel.org
X-Gm-Message-State: AOJu0YyjwryfZ1sTim0N5sdG2hwYFTeQf2aQmbGHhaqXUPLh9d+NYBvA
	XgWZro+Cv+RNf7+pTEy0y/XpnCgmUTDHIg0xns2Pl5Y5hxKzns8TQirjnevbkSleLAXvzhabOtb
	F6Y0+dYcGjU9hT0oCEQjYXUjyGVRPCxzsWGaTTbHjQCdEBafY4hT39TyhWrcq/Po=
X-Gm-Gg: Acq92OG/3tYEsxudVxLPLv95GQCW+gLbFmDv/ShlOO+D9xmM09BC/tNO/+kmWflmYW+
	wwy+bt/CY6Gz876uXXRRHkB2nIa30xkT0g0c/oHR4wzlLil8MVtX55Szl5zsCFUib4JQ0Z1Xwmm
	a4DXPQHdgJBDc9docOoQL/xwPC6G15mFGIVyCMD2AvpDP5Kg8doaftbFTRRCudFWCjOZ4/6XdD0
	MCup/ITwryLkJd8pnt9f9hhr2CVPDdExT5HnE3w+fIXT62HKUZRCjJVpJvL8HvAnuPAkMl4+hjQ
	+REtNvy6sJF4hTCWBSdc+xnAYpWm/30O2M+iiAN9p6v0Rz87hzmnQGb1PRzGo0QXtVYVABZHNlK
	XfDZmZtpQJ8/Mg0KqV1cjitkJymdOGfq+g1/9TiUxqWquTHkwWg6Ydess
X-Received: by 2002:a05:620a:31a0:b0:910:87f4:9a26 with SMTP id af79cd13be357-917f1e44e09mr1835939885a.41.1781541653036;
        Mon, 15 Jun 2026 09:40:53 -0700 (PDT)
X-Received: by 2002:a05:620a:31a0:b0:910:87f4:9a26 with SMTP id af79cd13be357-917f1e44e09mr1835934985a.41.1781541652604;
        Mon, 15 Jun 2026 09:40:52 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619f06835sm1180700185a.14.2026.06.15.09.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 09:40:51 -0700 (PDT)
Date: Mon, 15 Jun 2026 12:40:49 -0400
From: Brian Masney <bmasney@redhat.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Sebin Francis <sebin.francis@ti.com>, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v10 4/6] clk: Add KUnit tests for assigned-clock-sscs
Message-ID: <ajArEQ1rA7AtH-uG@redhat.com>
References: <20260612-clk-v10-v10-0-eb92484eda38@nxp.com>
 <20260612-clk-v10-v10-4-eb92484eda38@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260612-clk-v10-v10-4-eb92484eda38@nxp.com>
User-Agent: Mutt/2.3.1 (2026-03-20)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312089-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:peng.fan@oss.nxp.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sudeep.holla@kernel.org,m:cristian.marussi@arm.com,m:sebin.francis@ti.com,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:arm-scmi@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:peng.fan@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5029688819

On Fri, Jun 12, 2026 at 04:46:26PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add KUnit test coverage for the assigned-clock-sscs DT property that
> configures spread spectrum on clocks before they are used.
> 
> Extend the existing test infrastructure to support spread spectrum:
> - Add struct clk_spread_spectrum field to clk_dummy_context and a
>   clk_dummy_set_spread_spectrum callback
> - Wire set_spread_spectrum into all dummy clock ops
> - Extend clk_assigned_rates_register_clk and test parameter struct
>   to propagate initial SSCS values
> 
> Add a new separate test suite clk_assigned_sscs with three categories:
> 
>   1. clk_assigned_sscs_assigns_one — verifies that a single
>      assigned-clock-sscs entry correctly configures spread spectrum
>      on one clock, testing both provider and consumer paths
> 
>   2. clk_assigned_sscs_assigns_multiple — verifies that multiple
>      assigned-clock-sscs entries configure spread spectrum on two
>      clocks, testing both provider and consumer paths
> 
>   3. clk_assigned_sscs_skips — verifies that malformed DT properties
>      are correctly skipped without error: missing assigned-clocks,
>      zero-valued SSCS, and null phandles, tested for both provider
>      and consumer scenarios
> 
> New DT overlays are added for all test scenarios:
>   - kunit_clk_assigned_sscs_one{,consumer} — single valid entry
>   - kunit_clk_assigned_sscs_multiple{,consumer} — two valid entries
>   - kunit_clk_assigned_sscs_without{,consumer} — missing assigned-clocks
>   - kunit_clk_assigned_sscs_zero{,consumer} — all-zero SSCS values
>   - kunit_clk_assigned_sscs_null{,consumer} — null phandle
> 
> Co-developed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Looks good to me.

It's probably not appropriate for me to also put a Reviewed-by here.

Brian


