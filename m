Return-Path: <devicetree+bounces-326738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nxa0K/U/V2psIAEAu9opvQ
	(envelope-from <devicetree+bounces-326738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:08:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 380B575BB98
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:08:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nic.cz header.s=default header.b="AUUNKwQ/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326738-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326738-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=nic.cz;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A3BAB30041F0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 767683C5857;
	Wed, 15 Jul 2026 08:08:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.nic.cz (mail.nic.cz [217.31.204.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9C53B840E;
	Wed, 15 Jul 2026 08:08:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784102897; cv=none; b=ab0Cc/Zbotwg/bBW1U22yaQbdXsuqzynsGlos1S0krou42EIQbPRKMqiRDLaqAIRqnBIivQNlf7sokA1jhnsn0Gsv421CgxupGWjth82eBTAe7k2G0rOoKMiFMbWBYp7TXu81E9u5cQe1G3K/+frLfwJmJnWt5Cuxf/Jsxu1yoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784102897; c=relaxed/simple;
	bh=GFAYUtukJF+MHFTRC5bun5hBzgtIdadBRBey+EsqaAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gnx9XEZfZFXGqrqsouRLzcrqGsCS7LD5aoMDrII2pEQYeVGEIRdU2bRIE38KqLhKfM7/gDh69dJBZcH4mnHUy9kFhIMHkku47N56vUR0RIvASCP2A7IBelGGBF/6smD7Nb0jC6X+kMbVkEGkNZtLQFCSDzr6ihQ4locjaUJ++MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nic.cz; spf=pass smtp.mailfrom=nic.cz; dkim=pass (1024-bit key) header.d=nic.cz header.i=@nic.cz header.b=AUUNKwQ/; arc=none smtp.client-ip=217.31.204.67
Received: from solitude (unknown [172.20.8.54])
	by mail.nic.cz (Postfix) with ESMTPS id EAB931C1245;
	Wed, 15 Jul 2026 09:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nic.cz; s=default;
	t=1784102293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i3zoHmlfQB2+efQVK7taddCp6UGty1k40LZdxplgHdU=;
	b=AUUNKwQ/rjfhS/ST/CMSQWG8U4ytjFPDFkPEtL5q4Ipya+EFBk9kVhjPNl+dwaAfa9zCSg
	vHpnRcQfely6XOtn1859PTzrmX+WSRVCCzQlzmMj6Ymk9FeqiHEbtpndlCUSr2B5VAsxJK
	6ho7LTJwgdPeE1Ia5OxUXy3Q/FiDQaQ=
Date: Wed, 15 Jul 2026 09:58:09 +0200
From: Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>
To: Bjorn Andersson <andersson@kernel.org>, 
	 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: krzk+dt@kernel.org, mturquette@baylibre.com, 
	linux-remoteproc@vger.kernel.org, mathieu.poirier@linaro.org, robh@kernel.org, conor+dt@kernel.org, 
	konradybcio@kernel.org, sboyd@kernel.org, p.zabel@pengutronix.de, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/9] remoteproc: qcom_q6v5_wcss: add native
 ipq9574 support
Message-ID: <jhl7fic36ec36pyaduw6xtmgvr75sxurngdykljbovdbt2j23g@ezon25dsv3hg>
References: <20260109043352.3072933-1-mr.nuke.me@gmail.com>
 <178370682987.2572738.13491033810212556744.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <178370682987.2572738.13491033810212556744.b4-ty@kernel.org>
X-Spamd-Bar: /
X-Rspamd-Pre-Result: action=no action;
	module=multimap;
	Matched map: WHITELISTED_IP
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nic.cz,reject];
	R_DKIM_ALLOW(-0.20)[nic.cz:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:varadarajan.narayanan@oss.qualcomm.com,m:mr.nuke.me@gmail.com,m:krzk+dt@kernel.org,m:mturquette@baylibre.com,m:linux-remoteproc@vger.kernel.org,m:mathieu.poirier@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:konradybcio@kernel.org,m:sboyd@kernel.org,m:p.zabel@pengutronix.de,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:mrnukeme@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[marek.behun@nic.cz,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[nic.cz:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marek.behun@nic.cz,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-326738-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ezon25dsv3hg:mid,nic.cz:from_mime,nic.cz:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 380B575BB98

Bjorn, Alexandru,

there is another, much newer series by Varadarajan adding ipq9574 to
wcss PIL driver,

  https://lore.kernel.org/linux-remoteproc/20260713-rproc-v13-0-41011cbcda3e@oss.qualcomm.com/

I suspect these two series are incompatible.

Marek

