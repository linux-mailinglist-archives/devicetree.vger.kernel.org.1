Return-Path: <devicetree+bounces-210990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E3EB3D4B5
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 20:40:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D491E1898C65
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 18:41:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4273526E17D;
	Sun, 31 Aug 2025 18:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mff.cuni.cz header.i=@mff.cuni.cz header.b="YuhJeQBX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp1.ms.mff.cuni.cz (smtp-in1.ms.mff.cuni.cz [195.113.20.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3AD257834
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.113.20.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756665639; cv=none; b=CSiUct3aYrml1Glr5K3gQ0WqdSPumz07diO5zDAA9TbAvVgDBuqCCADiFOPeZBlmee5uxK4nvwk05eBTCkhOA7puk1G7lPGeOm/Mk+8pHX3qSiXYB05W0NM120Awhd2FWL4qQs9YnppNGbTZtIs1lIXTycwBAUZRbY+cTgcaUkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756665639; c=relaxed/simple;
	bh=3ulaAUwLjKwyirPYXg5KB2tvJFbgLTNO5Xg197tWOhE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:To:From:
	 References:In-Reply-To; b=K0+FQBlCmiOEUMkUUillZfg0l0NIl7dpSkOJiVgXfwihsMZW/JFKm9WyGZ8nf1GTLhfnVHDe+kb3JiRovPhwGI1iuVHsLFeqjRxv6bljOLwKlcOgP/GrxmKpZHljs0H8jTGG1G9gT8Y8bojHH/fNhPWQzZvHiHuKu1nPHV2pCzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=matfyz.cz; spf=pass smtp.mailfrom=matfyz.cz; dkim=pass (2048-bit key) header.d=mff.cuni.cz header.i=@mff.cuni.cz header.b=YuhJeQBX; arc=none smtp.client-ip=195.113.20.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=matfyz.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=matfyz.cz
X-SubmittedBy: id balejk@matfyz.cz subject /postalCode=110+2000/O=Univerzita+20Karlova/street=Ovocn+5CxC3+5CxBD+20trh+20560/5/ST=Praha,+20Hlavn+5CxC3+5CxAD+20m+5CxC4+5Cx9Bsto/C=CZ/CN=Karel+20Balej/emailAddress=balejk@matfyz.cz
	serial F5FD910E8FE2121B897F7E55B84E351D
	issued by /C=NL/O=GEANT+20Vereniging/CN=GEANT+20Personal+20CA+204
	auth type TLS.CUNI
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mff.cuni.cz;
	s=submission; t=1756665626; x=1757965626;
	bh=kvp+m2IH/Nu6Y42XqPQWfeU/misOBGTiGvTueZWq9fw=; h=From;
	b=YuhJeQBXypTcdoTq1uBWERCZH61av7OFmbSbmz+z05qiVnTU5dDJTDuXvJpePf1zC
	 w26pzbxLrQoKEGOAAz7oAsj++fZo1M4Skj0aTt77MyjI8lWaxZ/i/08X/Bbr7YbSph
	 ygaRyUlzi9Z+OXPLYVIdDKZFOZBM2gV0OKH2vjUUGVuOVn+D3zvuVCDpFlpdsgtKbN
	 /LLZtQPvgSVXtM4XUF1KLoFyRIvHKm+nR+qdLDwGx8e/6pxfU7XKG3xlhbE1+0m7gJ
	 f4NFlqRpLmvvgqYrm8/TMgBF5jKPFIXTJl1MpjwHh5KfI54M/q3+YbvBL58lM3Idqs
	 uLH4LLV+ON/YQ==
Received: from localhost (internet5.mraknet.com [185.200.108.250])
	(authenticated)
	by smtp1.ms.mff.cuni.cz (8.16.1/8.16.1) with ESMTPS id 57VIeOFW022739
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Sun, 31 Aug 2025 20:40:26 +0200 (CEST)
	(envelope-from balejk@matfyz.cz)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 31 Aug 2025 20:40:24 +0200
Message-Id: <DCGTZR10GTDE.2XI873Z676C08@matfyz.cz>
Cc: "David Wronek" <david@mainlining.org>, <phone-devel@vger.kernel.org>,
        <~postmarketos/upstreaming@lists.sr.ht>,
        <linux-kernel@vger.kernel.org>, <linux-iio@vger.kernel.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: 88pm886: Add #io-channel-cells
To: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>,
        "Jonathan
 Cameron" <jic23@kernel.org>,
        "David Lechner" <dlechner@baylibre.com>,
        =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
        "Andy Shevchenko"
 <andy@kernel.org>, "Lee Jones" <lee@kernel.org>,
        "Rob Herring"
 <robh@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        "Conor
 Dooley" <conor+dt@kernel.org>
From: "Karel Balej" <balejk@matfyz.cz>
References: <20250831-88pm886-gpadc-v2-0-759c1e14d95f@dujemihanovic.xyz>
 <20250831-88pm886-gpadc-v2-1-759c1e14d95f@dujemihanovic.xyz>
In-Reply-To: <20250831-88pm886-gpadc-v2-1-759c1e14d95f@dujemihanovic.xyz>

Duje Mihanovi=C4=87, 2025-08-31T12:33:04+02:00:
> Add an #io-channel-cells property to the Marvell 88PM886 PMIC binding to
> allow referencing the IO channels exposed by its GPADC.
>
> Signed-off-by: Duje Mihanovi=C4=87 <duje@dujemihanovic.xyz>
> ---
> v2:
> - New patch
> ---
>  Documentation/devicetree/bindings/mfd/marvell,88pm886-a1.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Acked-by: Karel Balej <balejk@matfyz.cz> # for the PMIC

