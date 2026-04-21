Return-Path: <devicetree+bounces-289132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHF2ES6D52mR9gEAu9opvQ
	(envelope-from <devicetree+bounces-289132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 16:01:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9F643BB0E
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 16:01:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED58030C577C
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 13:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 006163D6CBD;
	Tue, 21 Apr 2026 13:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tchhhpyp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0B33115A2;
	Tue, 21 Apr 2026 13:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776779540; cv=none; b=HizwUOA1CjCgTGAX8wGbofKpNmJoqW6K0K+ukLmnCAr0tfMT4lSA1V8e1l1mTOxI4tJzjJY6QK+9wPQW/7cu75AVqI85Y9UajNXWW+0RQG1dQCe5U+SkU9p0e1yof3pAp5s7WyAtQ/EoXbZtxJTlIbgx2aA0Tk/J0hsvsblYzsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776779540; c=relaxed/simple;
	bh=hZjlH3OcxSPjJyeaxOnBm2U2CEPno6/ZUqa7aN4sdkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fWdd+OxJH3ylVBuZ+0rnIw7bFjQRdanMZyrvojWP9RoGJZ2jhnFQK5SPj5mv356bFq2y1X2YiFlx5p62nzRzPwkM/gwuH/qm5ZiedzwgvMbpvjP5JkkbxlbUVJI1FxXUWlEq6zxnGPUUg/mlNL5vQES/anR4oovuKyA2maNZ6Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tchhhpyp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41CAEC2BCB7;
	Tue, 21 Apr 2026 13:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776779540;
	bh=hZjlH3OcxSPjJyeaxOnBm2U2CEPno6/ZUqa7aN4sdkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tchhhpypLwxx64yAc3c+6hHvZEVcgsmzsJg+E6+THJj/kIcoOIfRxkvFQzLydi0E2
	 7e5pEZT+DptSrd0qjtoQcSckh5Ni2XlW7iAryKABFO7UyOvEpaOaya43h57N1rQgfY
	 XKRF3qOMtb/MB5lpboiyZABTGUe46E0GWhuTrnZijfC8ZLl5fRBgIgKURMjCcXDLYp
	 2An750bSm899RzCr/udBqs+0GCk5BYtdnE2gobri6zR4zPqxlXENx7n+yJLI/i8yh6
	 /zolYZUrPrYJdtB59gYH+Xd6hF6WNLQCfL+Gl/vboAeNdwGp+zzHBoqU3sJfMRjfQE
	 8RtDUTwXduw4Q==
Date: Tue, 21 Apr 2026 08:52:18 -0500
From: Rob Herring <robh@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc: linux-kernel@vger.kernel.org, git@amd.com, shubhrajyoti.datta@gmail.com,
	Srinivas Neeli <srinivas.neeli@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: gpio: zynq: Sort compatible strings
 alphabetically
Message-ID: <20260421135218.GA1048828-robh@kernel.org>
References: <20260421104358.2496125-1-shubhrajyoti.datta@amd.com>
 <20260421104358.2496125-2-shubhrajyoti.datta@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260421104358.2496125-2-shubhrajyoti.datta@amd.com>
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289132-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.c.6.3.0.1.0.0.e.4.0.c.3.0.0.6.2.asn6.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: AE9F643BB0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 04:13:56PM +0530, Shubhrajyoti Datta wrote:
> Sort the compatible string alphabetically.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

Missing Conor's ack.

