Return-Path: <devicetree+bounces-108795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 079C3993E69
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 07:43:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 419791C22870
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 05:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8689D13C80C;
	Tue,  8 Oct 2024 05:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="VGrI1aXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B7F762D2
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 05:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728365969; cv=none; b=VbGhLYrzxAzU1u8le2WJt7Hau0WGG+DZcrbiguGHtlefFr6+56BjhmkikvRDkeAbQP2+zqSjkNM0Yh+oGBNxZPs4iWxQ8Q3W3Lt2XLUJOVj7YzOAebb/v6R8EI06teLe1Q1gAFJW0Z9zQIUtJXNjLfFr1bQp5sYof5mN8HPSLj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728365969; c=relaxed/simple;
	bh=SKeA7RfR4J9+xtFtAAT8MJcALhd35xK5lwA2tQlHCr0=;
	h=From:To:References:In-Reply-To:Subject:Date:Message-ID:
	 MIME-Version:Content-Type; b=aKHHgf5DdqkHPq1f8JtBwr7g7hX9MGPfr0P07g26qtxl6pcSvCspdxblgnP3F7eHnTGlhdPT5wHgCNmlrybvvGD0ag3hR3/B8B+NUfmXlPg8ZxsV7R6gVkK1ZylCFE0h+d5gKZTv2ytpOOS0Xp2Oe8RGskN2oV55MKw1wgraKsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=VGrI1aXq; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728365932; x=1728970732;
	i=markus.stockhausen@gmx.de;
	bh=SKeA7RfR4J9+xtFtAAT8MJcALhd35xK5lwA2tQlHCr0=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=VGrI1aXqyiIOIGHvegCQBMWSyd2M4k9y/exKG0Ar3zweZPZywISp69jzqN3fz9FD
	 /dUinqi6jm+a3zk81rhrMRx1P29xofK8W6a9E95aGKcvAQD+RPHlTUrW9hNetyV6b
	 Xk5/FJgDmW+S2TFo5WMW15Y18vbGKSgUYmNNus9CaBvntdg0xb074j/LfwCdOPt3s
	 /IMfiuiC2P8/lJKyLBZcWFk/WQU9Ba0zzJ4YKo2Xgqk9QfKlBHHr8VVdqrxpa+2rg
	 28xf4sHmFrnQPkgiX+jkVe9OZaAqBZ+e2tkj4vXzhIF7fysem6YAaEV0faejAWcn8
	 9BWmcPQsLHAwpHU9TQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MlNtP-1thJpe482n-00ikn7; Tue, 08
 Oct 2024 07:38:52 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
In-Reply-To: <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
Subject: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Tue, 8 Oct 2024 07:38:51 +0200
Message-ID: <000b01db1944$5bd444b0$137cce10$@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8Ac4j3w+zS7stEA==
X-Provags-ID: V03:K1:BD86Jxm+zif7uHM99wnZfdNic5d7tFVWO0J7EPkrjpGO+EzvuTx
 eg377ftigEK5IjG6KN4pFyqiyHf9P9btg8mE001hml8sAJbpJmLSaB+b1Pavi9mNF7847yk
 jIHjrd4Bulo9ZJ0stvKPSiWe6JWW+CJe/ovTSoXCH77VLuIEqPpcmtb3f+gR7nMj0lKdeJ7
 X7Vgm4R+b+iTk7RUrEj8Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:JAcUen3rVpY=;vRDpTDi0ps83f41qzdtDRs6Te95
 OyI1DfL+VTFp04iz7AmWG4FWgU9C0AkrBEneCVSTd6nwl35PjV/Dh5pNhI0VkUeBlIcm5p3eB
 2mDmDL/mBCIgZJUAN2RN+ahLotjAKo+r3TDKGm808/UkkjdXThStuS3SqEVmLI28Gudnj7adV
 oFgQti/q9JKbiP4Vawk8SrW/yKPVfKNJhrl29fPk/QZspRbBp52m1GoK6BzBioHfuLAqFU/qM
 1e6C0Qa48504p+zCXOslDtBumQwxcOpJ/4Ykh9JPC2we0oPDwBMRN0NBfdG3W6APe9ChrtEi3
 63LKM0UwuCL9k9Pbc1HcJzExrn0+V10e3Sg85TCYPF7dcmDiR85SXdju1B0Lb3B5iiMuSt0CY
 qpSs6Obob9m8DvS1paaY3ZBdKI6DWPs8YBUaqQ2ngM/SZVkjxzWAaZo3iS4Ih1BIFMMK/6Cmt
 4l0F/31etWZ1c4nNbKeZg5uwhM5ImrRvfnTPgxfYvMTrTuaM1cf9mo/smkfXi0OMfrBMFp6xa
 XQcSwhORODLHTsQ5NTeUC3u19h9euVi1aRI7sH/G9rifCplutWmGhhix0hy3U2ozZLlEfdD9p
 zgKHQYpGLHPhmBQWePi3QGTM0YvkdZ9gj28qetOKrcUM//gyAGHTaVibElMeo6WMKGjp1HaUx
 HfGaBBpnB34cq3xbfAaadDhW9g4+slQd/PlXpshOXwgmF9sHDj05yzFNDGjgTb2TGVVGUHAQR
 Zuuhk/TK6vHrCd7nw7SYRHzEVhoQ406Azo5TbMnUzeyDKRPDk94NVHKUYGfcAJ5FCXyba/4ux
 O+ip27PUMtZ5Ti0Dz94EVGdQ==

> -----Urspr=C3=BCngliche Nachricht-----
> Von: Krzysztof Kozlowski <krzk@kernel.org>=20
> Gesendet: Montag, 7. Oktober 2024 21:26
> An: Markus Stockhausen <markus.stockhausen@gmx.de>; =
linux-phy@lists.infradead.org; chris.packham@alliedtelesis.co.nz; =
devicetree@vger.kernel.org
> Betreff: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes =
PHY binding
>
> ... and still not tested. Sending untested code is waste of our time.

Hi Krzysztof,

appreciate your feedback and I do not want to waste your time. My fixes =
where a mix
of your feedback and some half-baked "make dt_binding_check" feedbacks =
(because
packages where missing). My fault and sorry fort he noise.

To get next version in better shape two questions regarding your =
feedback:

1. "Messed wrapping": According to checkpatch 100 chars/line are =
accepted.=20
So I designed the comments in the driver. Does devicetree differ from =
that?

2 "Bindings vs drivers". The idea about controlled ports came from other =
bindings.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/devicetree/bindings/interrupt-controller/st,stih407-irq-sysc=
fg.yaml?h=3Dv6.12-rc2
E.g. st,invert-ext. Something like this will be needed in the future =
because the
SerDes allow to swap polarity which must be changed depending on the =
switch
design. How to do this?

Best regards.

Markus


