Return-Path: <devicetree+bounces-258792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wENtNCkzc2lItAAAu9opvQ
	(envelope-from <devicetree+bounces-258792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:36:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 480BF729A5
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 665A3301A73C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67412DF153;
	Fri, 23 Jan 2026 08:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPnIwVWe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847332C11D9;
	Fri, 23 Jan 2026 08:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769157141; cv=none; b=mrCZ/QYPDPOSwzADly9o/VDzS62qNvnDcJddnZc9j27eXCRpE+VwfwxBPQFv0pjXPf/AkWV3tewuIgzIbXatJfAqlbJksBucS7azDluYZ6OIW3bzBywEWNznRa9bAvYe6F2YFWKszuVzIuwpWz9RARAnOefED+CGd9SwucUfQjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769157141; c=relaxed/simple;
	bh=2Y+FcmQpbAhbQAoQkjXCexyKvURTkdeanJtxJgjTh9c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ndUdWImVZmKNyBTA0ysLReio8uRKJqD17VyeEMdsK8yWpIqmviqDPxTksmEbePu7ICsugsfNIZGVoTT59KqJy3ONzhmdTc++T6NmE6Bpxg0E3OeSjeHjm4hXytl2P1Rl/Z0BBSxlUYfnlGvUiqRtDN4/vw7ZEoZdmHOaVM+Jbn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPnIwVWe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB840C4CEF1;
	Fri, 23 Jan 2026 08:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769157141;
	bh=2Y+FcmQpbAhbQAoQkjXCexyKvURTkdeanJtxJgjTh9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RPnIwVWeEBGUGoLNUL/3WZUxoS18DqdZWD1Gb9aJIQeBRZuE+ttk7rn6yrIlPuk68
	 NA2bWX3Mii/feNj5289ONXImmVYYgtzSzI6V2yNuIHbqY6LqvxUdAzUkM0WCy+Gk0F
	 f2WYwTd1I+0kgaRQLDiLF19tUn1GqAa69VyvXOM0HNN9Jtfs3NfnrNOvhCs0L/n0AY
	 /6xS/fCqZAwzO+J1PxEOt3DJbYpxQxiZNzMcxDiuhC2XK3Aax9FsVOaSybqK4V5FiM
	 VWF3rg8QoGlAqa69dGndIoCwW+7r/RoANpWPqTq1gj+c6xUsWD82i2OFFL6M1cNfir
	 LtPTD3O2fl9ow==
Date: Fri, 23 Jan 2026 09:32:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: tzeyee.ng@altera.com
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: altera: Add fallback compatible for
 Stratix 10 SoCDK eMMC variant
Message-ID: <20260123-dark-private-alpaca-b10dde@quoll>
References: <cover.1769133034.git.tzeyee.ng@altera.com>
 <66f1d82240123ca71ef4850ee745747effa0042e.1769133034.git.tzeyee.ng@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <66f1d82240123ca71ef4850ee745747effa0042e.1769133034.git.tzeyee.ng@altera.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258792-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Queue-Id: 480BF729A5
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 06:06:53PM -0800, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
> 
> Stratix 10 devkit support a separate eMMC daughter card. Add compatible
> string for the Stratix 10 SoCDK eMMC daughter board with
> "altr,socfpga-stratix10-socdk" as a fallback, since this variant is based
> on the standard SoCDK board.
> 
> Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
> ---
> Changes in v2:
> - Added fallback compatible string "altr,socfpga-stratix10-socdk" in the
>   binding documentation for broader compatibility
> ---
>  Documentation/devicetree/bindings/arm/altera.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


