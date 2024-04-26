Return-Path: <devicetree+bounces-62893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E22618B2DD4
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 02:06:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0A611C2173C
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 00:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06828191;
	Fri, 26 Apr 2024 00:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="VkPDaFId"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0839364
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 00:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714089960; cv=none; b=JzIhbv+dC9NMu8brLnyyGsdvv07PMaFLwpIjsbqK82WDxban3VUabOGtHSKWvMWluuigXyLhAyKdRQqse5Pu/AadbywlBi43UaW3Uo37gXfYn00qwEgvRkutJgbwKFkx6m+igyf9JGKRP1hG1tGpZXmn7rfY2/9UhCkLW4eqUic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714089960; c=relaxed/simple;
	bh=CjwNDKjXhsM6QaPQ9xqvcH9roA584MXAnlsd9Qa9tkI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tbXZD18mbpTBxB/9U3ln77y3XA55WjEdtmMf+J/wUsBt/EuiaExj/j0o9+ZuHl1IjnkR/tRvvQt85MqtSFTbs8G85sUx47fgOzdiAt4PfGz6eQdESTW+IgXNZPUpLG2WhUHmio/jSLyYt+8pYv7dpgvOblbSMeNgEY/1enZyG1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=VkPDaFId; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from [192.168.68.112] (ppp14-2-127-66.adl-apt-pir-bras32.tpg.internode.on.net [14.2.127.66])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 0606020075;
	Fri, 26 Apr 2024 08:05:48 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1714089950;
	bh=CjwNDKjXhsM6QaPQ9xqvcH9roA584MXAnlsd9Qa9tkI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=VkPDaFIdUhDZiv4DhmhOLwITpeAhF01fy4hpFZeJTvUQh8Mss0bibnz8qCqGo2iCl
	 DVUmUB6jdkMbCgUwdbtq/iAXAX1Wyfl67E8jmUilcsUhWjYt6mgh+io8dmjKCYSNKf
	 AroHYzCWpAy2dw6AEkEnD6FMtkQbYQ2OVfgfvP/mcqSxSfbjllvcGjNDORRwSG0Eg3
	 uF5aG5Lcdd+hTiXNYDRVgoIJxsl5wpTmqkjbscut7N3fivZeA2UfpIr0LYKUwIgUH1
	 JE9zKVm8Bjo/F4pKSYSIOHXofzjqRQHTSky/XvePG4a5XMeTuopC+rrqnp4MORBS5o
	 guX5wmR1UbomA==
Message-ID: <39d0be3341ac886cbe0c201a296e3a899e4eb7b5.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org, 
	robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, jk@ozlabs.org, 
	alistair@popple.id.au, lakshmiy@us.ibm.com
Date: Fri, 26 Apr 2024 09:35:48 +0930
In-Reply-To: <6c2f8ee1-ec59-4ec4-8d0c-507d98225dd6@linux.ibm.com>
References: <20240419211143.1039868-1-eajames@linux.ibm.com>
	 <20240419211143.1039868-2-eajames@linux.ibm.com>
	 <0aec6a507b9288cdc0f890164951c730f6f430d1.camel@codeconstruct.com.au>
	 <6c2f8ee1-ec59-4ec4-8d0c-507d98225dd6@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2024-04-25 at 16:38 -0500, Eddie James wrote:
> On 4/21/24 18:02, Andrew Jeffery wrote:
> > On Fri, 2024-04-19 at 16:11 -0500, Eddie James wrote:
> > > The SBEFIFO engine provides an interface to the POWER processor
> > > Self Boot Engine (SBE).
> > >=20
> > > Signed-off-by: Eddie James <eajames@linux.ibm.com>
> > Reviewed-by: Andrew Jeffery <andrew@codeconstruct.com.au>
>=20
>=20
> I'm sending this patch in my new series for P11 BMC systems, with an=20
> additional change for the OCC child nodes. Hopefully that's OK, I kept=
=20
> the tags.

From a quick look I think that's fine.

Thanks,

Andrew

