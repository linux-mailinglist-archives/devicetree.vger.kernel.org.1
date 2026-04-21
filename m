Return-Path: <devicetree+bounces-289094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CH9NJtFg52nF7QEAu9opvQ
	(envelope-from <devicetree+bounces-289094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 13:34:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3801D43A24B
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 13:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B904C300461A
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 11:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C534276049;
	Tue, 21 Apr 2026 11:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhl+CJpu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789FA1632DD;
	Tue, 21 Apr 2026 11:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776771279; cv=none; b=XtnctzTRk3/zWP102yRLUjI4oJiF0U9OMXg+6203YiSCcPCy9Sj5uFN0HFcQyoQIMh4nxSIVdkNFrmEPKVcnpmHnBMUBOFxVtaSUjRWt258JEBqvsdBpHIivH9laXHAnuc+I+GxLCwzfLeW9WdjHkgTQni6lMoGEnEx8XOOtPxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776771279; c=relaxed/simple;
	bh=yXOXQvszQjUc/HSKlZnze6iRzqFPK8S+zZ/ndPOan3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=paZRPgUR6XkdQdlCS07WIJIvqnjWfZh35SrtcBdvY23TzDkaz/J/ZHJAjqEzdEkuGwEkTAnQPM6CYo8S+7a66aAlSrEXvWc5FyWayu5hb1SWz2mvIPqZIMq6qPqCo3HhjESTXPQukpbqf9VUbtMg3gRGKLS1Oivf18uk80VawAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhl+CJpu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94045C2BCB0;
	Tue, 21 Apr 2026 11:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776771279;
	bh=yXOXQvszQjUc/HSKlZnze6iRzqFPK8S+zZ/ndPOan3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vhl+CJpuKT5JDrToSw9/FHRT5HySnQaHSjjDlVEwN3i1ZSvXOG5+Y9MzW3mpN0uHv
	 bKOWeOYkk8wc05t+sQUSAqkUAyQIHlxpjGNLH1jOFm0LugZXSvXjJapGsFfH9ZlzyS
	 mJ2cINBELsRS5OM0CpBCV+dUZm+8U2VpkSIX//sTN/ZSnop4SL3hL0Ak+CuEFeafqF
	 tMFUqjOFnsm+R29w8lZqQBD33WkuxnGDK+zC2WIdGcQmMWIQwUN/es6Me6IWJZwcTC
	 UBxlN9tlkXTDtN0ihJqbkdtIjcNyAI35FPkK4V85TJIwPtqxjZ1gWK/ctiHdbP+Cu+
	 /Ed0RKIut7qPg==
Date: Tue, 21 Apr 2026 13:34:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: add DTS example style checker
Message-ID: <20260421-blazing-leopard-from-atlantis-bfeb0c@quoll>
References: <cover.1776700167.git.daniel@makrotopia.org>
 <941c1ca0cd30c596556a88c36d28d60368867409.1776700167.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <941c1ca0cd30c596556a88c36d28d60368867409.1776700167.git.daniel@makrotopia.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289094-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3801D43A24B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 04:50:27PM +0100, Daniel Golle wrote:
> Add a Python script that enforces coding style rules from
> dts-coding-style.rst on examples embedded in YAML binding files.
> 
> Checks indentation, property and child node ordering, blank line
> placement, node naming, tabs, trailing whitespace and unused labels.
> Produces a canonical form and diffs it against the original.

Thanks for working on this, I like it a lot.

I would be happy to see at least a few test cases for it - bad and good
binding examples here - so development will be easier.

Best regards,
Krzysztof


