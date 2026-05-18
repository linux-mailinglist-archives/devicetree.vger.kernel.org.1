Return-Path: <devicetree+bounces-299533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKXbFKg3C2qgEgUAu9opvQ
	(envelope-from <devicetree+bounces-299533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:00:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C695707BC
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB0893076D56
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 15:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31FE044D6A1;
	Mon, 18 May 2026 15:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoaJO2FB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCED36D50D;
	Mon, 18 May 2026 15:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779119407; cv=none; b=uRVgbMa2mcrNRkOkSwFCa/gkQua+8mVBZQMjCghkLc1Ki4sH0GjQk6SnPLqm10HYDjVE5zw7qpcUm+LKKbkEGAYo7KFelkzhyI3vyqUwKsHDTsVggyvNBl3o3HajYuMgPk1vFZVvyIs5RKLz3o5NbQocltt5cO5tJsgNCnMPTd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779119407; c=relaxed/simple;
	bh=m9q9QJFfEV9umMgLlraW7Fr2NdJk3fvhZlCq3TEk2pg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Dfx0peqv9VYmDjBhzNhmWBhiIMFB4qJ97YbjbqzbXAJ9yvygj+ea6QvKHH43PvEIznt1muhZpIzll62iC3oWmA8yyEGuK1srFPy0j5Pvv0xcd3qdjGJvFhIyNS7pZdnCZFnBa8t1jwFPEvWwRDaXScKulsrdTBG8aH9xvS42Syw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoaJO2FB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12589C2BCB7;
	Mon, 18 May 2026 15:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779119406;
	bh=m9q9QJFfEV9umMgLlraW7Fr2NdJk3fvhZlCq3TEk2pg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=aoaJO2FBYCW8k/jpn4xxuN93fXWqISexP0KJjgsf/Mv04GRpJ5+eBPYZHPX7NMRn+
	 e35Ch0rmMhcaELxQB+IuI8MqpzLgsaeyehk/lGu7IMA96XatfAl4qxkjqVtXwnpSfD
	 3SQpj/yZsW7I8QN8AZxIh1XJ/cau3MXMHX6799MV+kqL1dYppLLR4RKJNfLOwB96AF
	 GhFEANHu3Hbcn91JU31yO3VYbgC14qZqzMQ4w8LBcFJuG1NEkQm5sitjNLjOvMt1Jh
	 7XCkVXGyiVylkDQG+NMyVL/B/j/rFsHWKcCfauCbosQ3u6N3BWs2OCLpCsiIi502Yk
	 vRs6PFXZee2xw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 2/9] dt-bindings: media: sun6i-a31-isp: Add optional
 interconnect properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Kocialkowski" <paulk@sys-base.io>
Cc: linux-sunxi@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518153339.619947-3-paulk@sys-base.io>
References: <20260518153339.619947-3-paulk@sys-base.io>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 15:50:05 +0000
Message-Id: <20260518155006.12589C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sys-base.io:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299533-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: C4C695707BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message body incorrectly refers to the 'sun6i-a31-csi=
' device instead of the 'sun6i-a31-isp' device.
--

commit 816ee95ed6c916a2cdd9b96a5a6e283ad0e7d42e
Author: Paul Kocialkowski <paulk@sys-base.io>

dt-bindings: media: sun6i-a31-isp: Add optional interconnect properties

This commit updates the allwinner,sun6i-a31-isp device tree binding by addi=
ng
optional interconnect and interconnect-names properties.

> An interconnect can be attached to the sun6i-a31-csi device, which is
> useful to attach the dma memory offset. Add related properties.

This isn't a bug, but should the commit message body refer to the
sun6i-a31-isp device instead of the sun6i-a31-csi device?=20

The patch modifies the allwinner,sun6i-a31-isp.yaml binding and the commit
title correctly indicates sun6i-a31-isp.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518153339.6199=
47-1-paulk@sys-base.io?part=3D2

