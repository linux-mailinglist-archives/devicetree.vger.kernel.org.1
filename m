Return-Path: <devicetree+bounces-258589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GEYKp9qcmnckQAAu9opvQ
	(envelope-from <devicetree+bounces-258589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:21:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CD27E6C442
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 68FF931545A9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE7039571C;
	Thu, 22 Jan 2026 17:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+YUJzDW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F2B313261;
	Thu, 22 Jan 2026 17:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769102959; cv=none; b=GG8OWnH3AqFXVRVsHD7sgKmHQWRcG5CAh1ZCo0xFn+YfyGxw8UJCSmX/lMEmJFdvKOwuUK8XVY8NzZQBTjNWfqkcHtg7k0ysBt484hS+Iig9uApYiFkaT48mlv/iJcH77RR62WLDn0rBb4SXC72jj8oNP+/pOxNEPi92rKgOdGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769102959; c=relaxed/simple;
	bh=uSEbdNAo1zxxGYJsmeUKvFejyrNBN4QQuq90etN3b3g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kfi/JwhJCRcQkAmWcUUszCQSz0WOi23wCNl0CCQfM2vIJ51HMg/5MgAhC0+ybAN4RAJfLZY5/mZs5orJJ3LZI1iTB3RmsRuo+pfozT9RojNYpcbJ8V5/H5ZgIxzlvrWYKo4RiE40NeMXVXnn1UB189ZXbrmb0oa012Cx0Pf91Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+YUJzDW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0519EC116C6;
	Thu, 22 Jan 2026 17:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769102957;
	bh=uSEbdNAo1zxxGYJsmeUKvFejyrNBN4QQuq90etN3b3g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P+YUJzDW0B+XYuD0fIB170q90K3eqrgtOCu19dcGNYfiiYyQPzEmi+MSEXidHrVsP
	 ARpLRDV3s7rg4Rnjo3EuKhXhoxf/P2h9EZGtHJAbEF11Llf8aIdsq8SAJ4W6quXkcO
	 6k63TVPCsKS7U0NMxidkTN+Cbcdhyk+b8dkU74+YUT0Vji/sYmA6g+cHcs0qppeVTn
	 7G63K81s8GpiQTljNG7ldel8su2iiquwqPCkAZhu/EsCgMmc358Ba+n8naL9d/Ws/v
	 jm4cmzft/RWOSKIgKlQ051UbCNzFSDrIs/57zU6YQafT9X1PBLMB88dPLrJVgAfjOK
	 OJTHOB/QF8Rkg==
Date: Thu, 22 Jan 2026 11:29:16 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: tzeyee.ng@altera.com
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Dinh Nguyen <dinguyen@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: altera: Add fallback compatible for
 Stratix 10 SoCDK eMMC variant
Message-ID: <176910295520.2819853.4905202656262501884.robh@kernel.org>
References: <cover.1769089199.git.tzeyee.ng@altera.com>
 <66f1d82240123ca71ef4850ee745747effa0042e.1769089199.git.tzeyee.ng@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <66f1d82240123ca71ef4850ee745747effa0042e.1769089199.git.tzeyee.ng@altera.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258589-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CD27E6C442
X-Rspamd-Action: no action


On Thu, 22 Jan 2026 05:47:42 -0800, tzeyee.ng@altera.com wrote:
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
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


