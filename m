Return-Path: <devicetree+bounces-241486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B823DC7EF74
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 05:53:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5D80B346159
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 04:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AD9B2C08D0;
	Mon, 24 Nov 2025 04:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="XPlfbWiq"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075012BE026;
	Mon, 24 Nov 2025 04:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763959999; cv=none; b=NwlHO3tdPt4cBST/Kk2zzoOe2agMIZzuWirMsYwMsz1vOwk8g/UUVMLwH9je/6ym4VU1Q30sGSo4KidiSGZHANGNlpwDHBhM83G+tRyHYdwblgT0JTZfT9mzrDAsdEXJldsznyLwaFEBz1K9Y4DCthS5YpO7LPgHwanVmAk9PZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763959999; c=relaxed/simple;
	bh=9I9iLfORj0tnccwQ6JBu3v4qfLj7ltvuhaVoT+aRCJY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=l4KqGB+WY2tcZEw5TtObVkp6X5jw/BG+Okmg2wX1x+Jwwlqmhji9As5zHZjh/gToc8ZGXLdGuyDvtb9q6IZ89UlvLEXRKZi9mCgiwnw2VTN0QwduvmBYb3ABAEnDG0rmCjsyFjhYuAy/FLbsVPwKHMj/W1Mzd9F05VvJfOrripw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=XPlfbWiq; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763959995;
	bh=9I9iLfORj0tnccwQ6JBu3v4qfLj7ltvuhaVoT+aRCJY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=XPlfbWiqWeeK8tagGbtC5l+y33JIHb4VYe96JR3a2f1W8XzsROquq/UhdHch4VOx9
	 l5Em4ycrOn7lR30IydhrxAvOk5zkjhyeMjsYzVVTyaSKjKuvg5ouV6cUAXmFwKaMaW
	 m0SVoEqVo+oG/cVx2WbpspzcClZDx9WyB047HHqpNrEqKhXy8WdxKN1GA9sn+EgZ9W
	 XgtX8Mz2VvsaNRTS1gYNwIdwuX6JAnEoqmwhHEZ0abMMJKCNRkxutlVtqWfMZDtg5j
	 aguJYtHYJax89EtbDNd5mQ586yEunWEA+r7tlRcew09XLJjPPDFPbkcJ+S+PHZd2gY
	 UUgj93nr2tm9A==
Received: from [192.168.68.115] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 4FECA64DF5;
	Mon, 24 Nov 2025 12:53:15 +0800 (AWST)
Message-ID: <c56ef6e76858c7df19ec43a3a18ccf79ff3cc489.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 0/4] Revise Meta Yosemite5 devicetree
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>
Date: Mon, 24 Nov 2025 15:23:14 +1030
In-Reply-To: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
References: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Kevin,

On Thu, 2025-11-20 at 13:25 +0800, Kevin Tung wrote:
> Summary:
> Revise linux device tree entry related to Meta (Facebook) Yosemite5.
>=20
> Changes in v2:
> - Add ipmb node for OCP debug card
> - Link to v1: https://lore.kernel.org/r/20251118-yv5_revise_dts-v1-0-fcd6=
b44b4497@gmail.com
>=20
> Changes in v1:
> - Increase i2c4/i2c12 bus speed to 400 kHz
> - Update sensor configuration
> - Rename sgpio P0_I3C_APML_ALERT_L

Sorry, I replied with comments on v1 before I saw v2.

Can you please resolve the discussions on v1 and send a follow-up
series if necessary?

Andrew

