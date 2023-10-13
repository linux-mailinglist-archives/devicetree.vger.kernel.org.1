Return-Path: <devicetree+bounces-8590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7267C8DEA
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 21:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56F32281F56
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 19:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E554423779;
	Fri, 13 Oct 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRmvzBOE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C868D21A0A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 19:48:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 587F5C433C7;
	Fri, 13 Oct 2023 19:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697226496;
	bh=smLVpenbHF8Flm0poW9y4kwQ6SQllmTRnsMnx7QCUwY=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=sRmvzBOEQL1uEGRflqP+uL7V9TASSYHkf7yJ2T6RbSsZo4/YD9M0K0OIgYYsf2fxc
	 g+IlpDVHK7IGqPIcyGTnvk8u3+D21vUwrrmaPRdQY1VSRHl5tHmnRf2GdplOSVxAK4
	 tS/A9IAEm3Yjjhf6z7jh+CPessHXnCZC6WRc4h7g2jvJDh1j0aR//cpoMnGBvdDomE
	 +0ges718Ogu3ddbWZudOXzhXCBdbdug+txwwCMAEkOj/yBPGzn61HbtOrCb900u2h7
	 mQhglpAZA78wrda5qoiAcnkGvWg7nubt3s2oDdLuLQtzo2Oy8Nlba8gJypTdSrmr46
	 1TRL0avOCdNsQ==
Date: Fri, 13 Oct 2023 20:48:12 +0100
From: Conor Dooley <conor@kernel.org>
To: =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable UART6 on rock-5b
User-Agent: K-9 Mail for Android
In-Reply-To: <20231013193722.78630-1-tszucs@protonmail.ch>
References: <20231013193722.78630-1-tszucs@protonmail.ch>
Message-ID: <4DB8788A-4B0E-4C2E-A26B-3BB9FC50F612@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

This email is encrypted, and I cannot read it=2E
See
<https://www=2Ekernel=2Eorg/doc/html/latest/process/email-clients=2Ehtml#p=
roton-mail>


On 13 October 2023 20:37:30 IST, "Tam=C3=A1s Sz=C5=B1cs" <tszucs@protonmai=
l=2Ech> wrote:
>

