Return-Path: <devicetree+bounces-304219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yI6pBKJrGWrGwQgAu9opvQ
	(envelope-from <devicetree+bounces-304219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:34:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9040D600E4D
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFC073052FE9
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B0F13C7E19;
	Fri, 29 May 2026 10:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcOloz4v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594163C7DF1;
	Fri, 29 May 2026 10:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780050658; cv=none; b=dmnUx6WPCdrwBHBiCZcRRSGg9WL/mwbzQx8I4MD1PAyqeMvcdoK5F29kgB8P0k4qezE8jytUZYNThdLMfy/xEl5VokE+1j90vqMs67Xjyn63nFP3+qId5G/2Z3t4iKyXZrK6DcXK13LR+lGyjIWVzB1u+PvUC1xxMTsdaQko0ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780050658; c=relaxed/simple;
	bh=B2ahoZ2A8YyIGIJQy5ybA5FZ+AQ/1mN1YYSOQXo21To=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=D4tHEvXjnJgLi+hCDm8NQxqIVtJVlukL614q6BNeUGlgE1SIUhcRXKd5fM54RRyUdvDax0s4L6ThRbLEvH2SxlyW9ViSl+bJo3iRvxvX9UqWwNVzkb8LCyEMJTKnCJgOJT71BUIIA4+oeEk437aukbC8k3Nri/ca28Bc/h9q1RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcOloz4v; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C5C1F00893;
	Fri, 29 May 2026 10:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780050657;
	bh=TLPKGLmzSmzM+ZB+rP5XfmN7mzyJwjODAMsWGqejuyc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=XcOloz4vJfMo9Okv3iCRyKRHyNRulYHQ7U6VBmEm2IB7bIcuf57KRzi+SmHyylrrA
	 PO2fUbOxkbll8hPURhX8cYsEOEUbAhnls6Evi1bEUeIG9nTcLN15gkbbN34BQ7t62w
	 jEsh5AeDcOymfbul/tjkkzFfvOZSkRCERJnFG7+1JWAjOgkrCXX8psHp2hvGMAxi0E
	 au3I9ChdbHwzbf9k239ifC8AuoP+hjZEemZBXmRiiMAMLLltvXKEW9hr8yNv2c99Ns
	 1lZc/ypz34AG+C4p9edV8PguRhvqVSJUsXK1SFVVDGsSZRvrvp4m0+szGtPDjOegsN
	 /ElbF5l2mSIuA==
Date: Fri, 29 May 2026 11:30:47 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <nuno.sa@analog.com>,
 <Michael.Hennerich@analog.com>, <dlechner@baylibre.com>, <andy@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <pop.ioan-daniel@analog.com>, <marcelo.schmitt1@gmail.com>
Subject: Re: [PATCH v2 4/4] iio: adc: ltc2378: Enable triggered buffer data
 capture
Message-ID: <20260529113047.221bdd07@jic23-huawei>
In-Reply-To: <dc235f0b036a9eb33b37b0970815a95c9da52414.1779976379.git.marcelo.schmitt@analog.com>
References: <cover.1779976379.git.marcelo.schmitt@analog.com>
	<dc235f0b036a9eb33b37b0970815a95c9da52414.1779976379.git.marcelo.schmitt@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304219-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,analog.com,baylibre.com,kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 9040D600E4D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 28 May 2026 12:04:37 -0300
Marcelo Schmitt <marcelo.schmitt@analog.com> wrote:

> Enable users to run triggered data captures with LTC2378 and similar ADCs.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
LGTM. Only sashiko comment was actually on code in previous patch.


