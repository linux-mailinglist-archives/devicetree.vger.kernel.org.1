Return-Path: <devicetree+bounces-46375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 301AA869089
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 13:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D90451F21C3A
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 12:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2849D13A251;
	Tue, 27 Feb 2024 12:26:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF1B1386A0
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 12:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709036793; cv=none; b=kV2iH51qaoiLj26+TpsC9Ov9I+7XJslQCwVCtZ3xEHbQ1SCcI5Hwt2aLu/xQemA4/RMuZh/bzzvPYOAfp1fI6sjKCjBfurnsTSdOcE6sh4fPafYSEUUBirzou1OP9eTiwmB/qbz1avzPszkzcqMeyeuT0rlK6vpeHabMnyTcxPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709036793; c=relaxed/simple;
	bh=xDRjIHoStybR/nSwZYJdwe1l64kHKBY7vBtwLa7IqKg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XI+hs4kCpqDQpNtkomAvBYOBCSvTI7mrSLfXB5+mRC4vdFZKXtdHVMs5kAILvRVvsV2bHH7PFYjSbL663AF3CWlnZ9craVWCfsPBHo8yjUJiDEbvvoiEhfvLXZwJRBP+vnL/JjFSfyoWPYFvatPTy8/b88FzZozvmqd+uMXo8z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rewXP-00043v-Ok; Tue, 27 Feb 2024 13:26:23 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Date: Tue, 27 Feb 2024 13:26:19 +0100
Message-ID: <2865246.yaVYbkx8dN@diego>
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Dienstag, 27. Februar 2024, 12:52:35 CET schrieb Uwe Kleine-K=F6nig:
> Hello,
>=20
> this is an initial dts to support QNAP's TS-433 NAS. It's enough to
> start the debian installer with a custom built kernel (original Debian
> kernel fails to open a console, didn't debug that yet) and access HD,
> eMMC, RTC and network.
>=20
> There are still some missing bits and pieces, but to make people aware
> there are efforts to support this machine and so prevent duplicate work,
> I think it makes sense to add the dts in its current form already.

woohoo and yes we're adding support for not 100% supported boards
all the time, so adding basic support and extending it later is fully ok.


=46or people thinking about "following along at home", how much voodoo
is involved to make the device boot said Debian installer? ;-)


Heiko



