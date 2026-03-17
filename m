Return-Path: <devicetree+bounces-276504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FIFOHEEuWmEnAEAu9opvQ
	(envelope-from <devicetree+bounces-276504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:36:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4802A4E4B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:36:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D774B3012217
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADA1038F235;
	Tue, 17 Mar 2026 07:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOjMu3GV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A531346FAB;
	Tue, 17 Mar 2026 07:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773732975; cv=none; b=uJvO0BoQVhlVwXC0G4K7wBXEtIPsMAuC1sKRmXEqQQcCuPcWXS4PCK2xBUWlBLfqZPMLWRtESSF5I6hG3zaqL3MHJHJDE140SMyuZenQe7395jAT0ltzxrFaBu6dKXelVwl06LFmtaufXpvVdmVWmkvUenFbueGQWDzrL3z8Qtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773732975; c=relaxed/simple;
	bh=Qq89Pmdj56EFCjOfiinOGyRZnsS+PTrnq6MvF7LJ5go=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RM7xTRmwJA50J8uSLjubmwitveSg5ZBx5lYt8NGy0CzBzDMvCCmvhpTkcV6h40MuvqUu4utYAo4oeiZhvZxU+zTnrMEskIpYovUjmpeGgxd2hMfmxJCg1V6CzMItx4oPy+SFwgzU9ar98iZ2hjYWubpRN1GDwnazy/ScfN+61gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOjMu3GV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57A0BC4CEF7;
	Tue, 17 Mar 2026 07:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773732975;
	bh=Qq89Pmdj56EFCjOfiinOGyRZnsS+PTrnq6MvF7LJ5go=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JOjMu3GV1ibKvqfY0AMwZNo7cMJ2M5bCFG16ZmtkPg5K1Azg7TRd7LsKVQfj5aK0Q
	 +5thSkqx52o6KgOXPL1sDcqaVAT8Am3r0kofWuV79uWafHi15w5KYDm1mc3YUjBgar
	 SLjmTJlMA2Fdl7JMt1KD6ozGfazT1rqi5UeaWD83fy/g9qCSfyeW8kOZvNDLoc6OAC
	 tN7NmgCMstCTB0UBboHn9AFzn7X0G0Fbk48G+OILZ2NMpqw153o868cU0wC6J9ynZJ
	 h7Jmgnbw4THlyWd2b/Di4xqml0P1jyrir628dU3um4YQLYE4ZTxGDTyO1K2T93+MA6
	 q8r9hFbCLoQLA==
From: Sudeep Holla <sudeep.holla@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	liviu.dudau@arm.com,
	lpieralisi@kernel.org,
	linusw@kernel.org,
	Debbie Horsfall <debbie.horsfall@arm.com>
Cc: Sudeep Holla <sudeep.holla@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.przywara@arm.com
Subject: Re: [PATCH] arm64: dts: zena: Refactor Devicetree nodes
Date: Tue, 17 Mar 2026 07:35:12 +0000
Message-ID: <177373285049.3793081.14756631972932068572.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311173948.3478931-1-debbie.horsfall@arm.com>
References: <20260311173948.3478931-1-debbie.horsfall@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276504-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F4802A4E4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 11 Mar 2026 17:39:48 +0000, Debbie Horsfall wrote:
> Move the SRAM node into the SoC node. Move the memory node out of
> the include to make it customizable for each platform variant.
> 

Applied to sudeep.holla/linux (for-next/juno/updates), thanks!

[1/1] arm64: dts: zena: Refactor Devicetree nodes
      https://git.kernel.org/sudeep.holla/c/021915c7885f
--
Regards,
Sudeep


