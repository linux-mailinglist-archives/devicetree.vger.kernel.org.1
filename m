Return-Path: <devicetree+bounces-297422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDtNDJqhBWo1ZAIAu9opvQ
	(envelope-from <devicetree+bounces-297422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:19:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6105404F2
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:19:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 961F33029ADB
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 10:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F10A3B0AE1;
	Thu, 14 May 2026 10:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gG5yh085"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052D03AFB1A;
	Thu, 14 May 2026 10:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778753776; cv=none; b=Mg94KaWDRrQpGAlZ/KmkvE3Tvx55qI2cfjdH4ZJceDgFk+YBFj8zNbeIFyQ5+KPV5lA61LzIY4TqOmjsotPnzwfSTcXx/xPj8FERbm0iEnWcMXME7S3H+8ErI9kmpD+gBrfpSOqzsLAtxSTNWYGXdRA0wV4yS60c+kl8+skTLmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778753776; c=relaxed/simple;
	bh=MVkIeOS8yFdKE4JHU+qeb6s0/70ldISnfTAI1PjQVt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZuDyiSekAB4V4bm0l7zyQevLAPIIbBN9FHGncYVP0vMNyQANoiDZ+1g31+1p1hyrlPTbiYeQ4WnmIUVP/Tdkga9n3oICm6UUpRbk6yDWT7vY0fj+tG2I1DmAUK0bV6X0R1skFJ5TivnlecBhj0Qo0TcBYQtBs/UzAc84m+pIGjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gG5yh085; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4735C2BCB3;
	Thu, 14 May 2026 10:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778753775;
	bh=MVkIeOS8yFdKE4JHU+qeb6s0/70ldISnfTAI1PjQVt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gG5yh085PRYj5m2zyXmyL1cYJBjLTd64W6A2QJopdSbz4ogeHpFmN11YAMZNCqg5E
	 /yC2WuBLU/WxfxOBX5IxBXwn5MVqDDnt0EGXqC/2zA4YvxvYESvuX1A8XKvtLI7egb
	 M7SRmsaO1mqr1sGeOEbNy7UJ8RwmMM6I5q089WAIW1yFHBjfpVGtlPI0/yFyTGj9+X
	 v72VkAeDkBAs7LUGsCmGcMAQzZ5x3UyvY4M9JSBiGqBp85ABF6XEUBwDPfTSh32Nxp
	 J8P0iPRe637fhS4PntSL/c30QJKywouH7v5z/5xZ9B8a91p7qx28JYP87HXmHrLq6h
	 5Rlm6/C9b2hZw==
Date: Thu, 14 May 2026 12:16:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	bhelgaas@google.com, frank.li@nxp.com, l.stach@pengutronix.de, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: PCI: imx6q-pcie: Add intr, aer and
 pme interrupts
Message-ID: <20260514-lush-onyx-trogon-48eca5@quoll>
References: <20260513025101.1498104-1-hongxing.zhu@nxp.com>
 <20260513025101.1498104-2-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260513025101.1498104-2-hongxing.zhu@nxp.com>
X-Rspamd-Queue-Id: AF6105404F2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297422-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,google.com,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 10:50:59AM +0800, Richard Zhu wrote:
> Add optional interrupt entries to the i.MX6Q PCIe binding to support

Describe hardware, not "binding".

> event-based interrupt handling:

Same questions as last time.

Best regards,
Krzysztof


