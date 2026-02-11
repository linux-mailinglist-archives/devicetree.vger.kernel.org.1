Return-Path: <devicetree+bounces-264587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOb3A1jwi2nPdgAAu9opvQ
	(envelope-from <devicetree+bounces-264587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:58:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ABADA120D41
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A3A63042270
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 093502EC56D;
	Wed, 11 Feb 2026 02:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpMnlnpg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3AE2E63C;
	Wed, 11 Feb 2026 02:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770778708; cv=none; b=NjoSEkz8BNwlpe+4balMFV1QTdPxe4IGk9WjFehXvAAHavc668KlWAdMUXd897wLDgLEX2L3evtuiD7zXP8IrSTrGSyfyQGNMNMnBbv8GJNHbd6avQ6RD4doy0Ze+pz1x+DZqsjVK9e9SOXo15TXkaOKxjZOrZuNTktD8ebu57A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770778708; c=relaxed/simple;
	bh=47DLy2E/pE4mMgLkV3NBSaU1iasX5Md/6xrFknoO0OE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L1ioZilbCHcTn1/oBD5iBoCS5x6D04hE3LcPbxPWHXtBlYu1Laiz+eJqO7EHjfoBJF6fkzsStipDBxFi8+hwGv3x/6On6HwKi0t5ZtYXRQRyr3PpHa6NmxmXHy7zvWsngPr4fgORLdfoVpOWDLdQGGkmo2jZFl/+IuZLqEF6d/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpMnlnpg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42401C116C6;
	Wed, 11 Feb 2026 02:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770778708;
	bh=47DLy2E/pE4mMgLkV3NBSaU1iasX5Md/6xrFknoO0OE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dpMnlnpgkwZyEti2wwgLt/FWYIDnefFl9KknN6f3xG/G92wPkyi1j/9SRZ5R9f1hS
	 WZ/2efcXg51UDbgZMH2HaWO6in5JlDkwbfboQQlJLE9VD2amCBjFhg44pr3u1SJ4Qk
	 bliLnG88fKZiDMKIf6rzUiqa1gkhkktMhNrFbZSwFjELcYEhYuFjFQl4dEPd7JSS03
	 VqetnZVo96aXap4JJKc42kEkv0G5rxNioJqa0wsAd7OTRrYjI6lhD4Qqy32qNIdCyY
	 E0KbZfssUsBV6V9yg8H30EHTQhJBvexisi1kQcNiPSVXNlvI0Doo6/1jZNQouwxkQs
	 CZGoBETYjRWKQ==
Date: Tue, 10 Feb 2026 20:58:27 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Thomas Gleixner <tglx@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, imx@lists.linux.dev,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/1] dt-bindings: interrupt-controller: Add
 compatiblie string fsl,imx(1|25|27|31|35)-avic
Message-ID: <177077870687.3555154.195306926259773612.robh@kernel.org>
References: <20260210221215.1575844-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210221215.1575844-1-Frank.Li@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-264587-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: ABADA120D41
X-Rspamd-Action: no action


On Tue, 10 Feb 2026 17:12:14 -0500, Frank Li wrote:
> Add compatiblie string fsl,imx(1|25|27|31|35)-avic for i.MX3 SoCs (over 15
> years old).
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2
> - add imx1, 25, 27
> ---
>  .../bindings/interrupt-controller/fsl,tzic.yaml           | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Applied, thanks!


