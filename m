Return-Path: <devicetree+bounces-289166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0P1vOuOn52lQ+wEAu9opvQ
	(envelope-from <devicetree+bounces-289166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 18:37:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FF943D7FD
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 18:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B2AFB3008994
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 16:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52DE937649B;
	Tue, 21 Apr 2026 16:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="ORLnEF5q"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EC226C39E
	for <devicetree@vger.kernel.org>; Tue, 21 Apr 2026 16:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776789472; cv=none; b=TzLJV+RwVpgC/o23AYDzeavtSzs6ebKZQY1One7hojPbg6pzlnqJW1W8qW4T4X67q7/ugbR/E5RS2OwLf5XPAODyfPMhAfULZMT2r5ImU5X23rBS1TH2DGp1zgat6sxsCrs9ybT+j8BzvtcQnmaHlpkz3u7mLk+SZRyz4ATteTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776789472; c=relaxed/simple;
	bh=ivLgOCQg+w/iR8uXsSkARaRNV6BFG3O81VYilPgyDBA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:Message-ID:
	 MIME-Version:Content-Type; b=RnE7V1iJWFpTYyXZ4JjO6pTH2qybSmGt26p42YH/EPxyyEulKb6f2I0/H9nGd+t0FAcrcQVc22wQ/mBiBrTVe+xciF7OMuyB6f71MWXBZIVpVbRjuuYjmaWiRZRZzdb8n8KlF9j8Feeo8tJ2N5khfPcbBfQec+1jmVfKoZM3yWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=ORLnEF5q; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Date: Tue, 21 Apr 2026 16:33:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1776789467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OpJV3RY0EbaEZUr7cB+U3AXYZF0kplYNLFyuwZ/YRu4=;
	b=ORLnEF5qdgVpnRWwe+ZGDZRScEa9amzvTYBVvrDt3C6KffoF3IOiJuAsxNZJRe0OLubZR2
	0Q5IIYUgUNPmwOfL2EkA7FdYj8YqQHBdIAeNIWGV49DKTgkQv25LkVrwY31tlDT+mxSE0Y
	5eb0rf1riSjwB3GMibR5G7aQeMUonu+g77nOyI1PO2qk6W7IkD3pKs8ciosWGRDu5R6XRZ
	pnq+DUpMUcPCy6LwGy3LNvcDF8D7yDzghkqcYI7V3zpBMstJvaqvCmR/fIiPOv7KYDASx4
	nlHfefVgG8s+ryZbX7mC/CaQE0QRc357miibthjO4rgC3Oq+bEyJSRnO1Ona5g==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ferass El Hafidi <funderscore@postmarketos.org>
To: linux-amlogic@lists.infradead.org, christian.koever-draxl@student.uibk.ac.at, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, khilman@baylibre.com
Cc: jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Christian Stefan K=?UTF-8?B?w7Y=?=v=?UTF-8?B?w6k=?=r-Draxl <christian.koever-draxl@student.uibk.ac.at>
Subject: Re: [PATCH v3 2/2] arm64: dts: amlogic: add support for X98Q
References: <20260421155328.26359-1-christian.koever-draxl@student.uibk.ac.at> <20260421155328.26359-3-christian.koever-draxl@student.uibk.ac.at>
In-Reply-To: <20260421155328.26359-3-christian.koever-draxl@student.uibk.ac.at>
Message-ID: <tdurii.1o3p0jnn1bsji@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8; format=flowed
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289166-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org,student.uibk.ac.at];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funderscore@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 49FF943D7FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 21 Apr 2026 15:53, christian.koever-draxl@student.uibk.ac.at wrote:
>From: Christian Stefan Kövér-Draxl <christian.koever-draxl@student.uibk.ac.at>
>
>Add dts enabling core hardware for the Amediatech X98Q.
>

You should explain what the Amediatech X98Q is. You did this in the v2's
cover letter, but it should additionally go in here too so it's visible
in git commits in the kernel. What hardware does it have? Maybe also what is
enabled in the DT?

>Signed-off-by: Christian Stefan Kövér-Draxl <christian.koever-draxl@student.uibk.ac.at>
>---
> arch/arm64/boot/dts/amlogic/Makefile          |   1 +
> .../boot/dts/amlogic/meson-s4-s905w2-x98q.dts | 249 ++++++++++++++++++
> 2 files changed, 250 insertions(+)
> create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905w2-x98q.dts
><...>

--
Best regards,
Ferass

