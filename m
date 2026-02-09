Return-Path: <devicetree+bounces-264101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gieTMz8fimnLHQAAu9opvQ
	(envelope-from <devicetree+bounces-264101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:54:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A291133D7
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:54:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3A33301ECE4
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 17:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C76D2FC006;
	Mon,  9 Feb 2026 17:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNuvDfrY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE621217F31;
	Mon,  9 Feb 2026 17:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770659354; cv=none; b=NBfX3CbeHLrQATNqpNbjFzX8MBZRaY3uHXJpM/GOuqYmeozfTJXuWpzKdsrOHQPsxjJpNYLatYqSP4sNlHbPJa7bhIRyZtWgvtlfuQNoI7j4NKIZ/FWYouhNelknTsm7S8WLEOuoNz+pAtUZ9xlLAWJ5ubbTJn39HA1yY8XkjTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770659354; c=relaxed/simple;
	bh=WUS1S9Wh4xrUMkB0HleK/CFVF/YfnE5kZnjP6ocOFe8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GLFWmx0nh7rTQAy5n7flHpFMRbQoWzhCwktX6Itha8z29eufGeIuwWsFsNCBogULuuCw4kZgFqh7ATCSdOsqrqU0z3Q2C86H84kbFlj39lT6N1Y6lFRWUUk1sVtxgOGcZcUQA/DxZQI+PUHXD/zxKpIt3innU9o8PhJL7PkRIQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNuvDfrY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 605B2C116C6;
	Mon,  9 Feb 2026 17:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770659353;
	bh=WUS1S9Wh4xrUMkB0HleK/CFVF/YfnE5kZnjP6ocOFe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YNuvDfrYfxVYoYpnpOHA6aptztlveyWh/z1wRxTpjdHP+vg2Mjyro3aLyLpPMbDYA
	 jusOh40EQVfcSbE7Q6wahu+bRzgxkRy1hmNjnlA8rdarhAHKLwbeGPK4zNcodKosYH
	 IVvV+XqHwg63evwaJGZHiCesnXkAHj+Rl4uguLKxa63TNPeiCwUtT/tHBcQm/80apl
	 K580faukJNfgNFQsOiwwJFt3ZDpwQPntpXfXT8jPhUhiLzGh9NIed9QvVmGyzrA+bK
	 rzmRiq8AKUJkKWq3pDoPWk3Z1cojncQNh0sEI/wD6Vfyh0ITXpe6Uy3BlKFw/uPPpg
	 DC4ChA743iJhA==
Date: Mon, 9 Feb 2026 11:49:12 -0600
From: Rob Herring <robh@kernel.org>
To: Raptor Engineering Development Team <support@raptorengineering.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	lee@kernel.org, Georgy.Yakovlev@sony.com,
	sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Message-ID: <20260209174912.GA1474958-robh@kernel.org>
References: <20260129192047.562540-1-support@raptorengineering.com>
 <20260129192047.562540-2-support@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129192047.562540-2-support@raptorengineering.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264101-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,raptorengineering.com:email]
X-Rspamd-Queue-Id: 83A291133D7
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 01:20:44PM -0600, Raptor Engineering Development Team wrote:
> From: Shawn Anastasio <sanastasio@raptorengineering.com>
> 
> The Sony Cronos Platform Controller is a multi-purpose platform controller
> that provides both a watchdog timer and an LED controller for the Sony
> Interactive Entertainment Cronos x86 server platform. As both functions
> are provided by the same CPLD, a multi-function device is exposed as the
> parent of both functions.

Why do we have DT bindings for a x86 server platform?

Rob

