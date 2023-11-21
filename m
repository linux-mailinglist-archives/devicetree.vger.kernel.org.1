Return-Path: <devicetree+bounces-17556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DAA7F2D84
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 13:46:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2C97280ED6
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A771CF9A;
	Tue, 21 Nov 2023 12:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lr5y7Qhn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09371249F5
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 12:46:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47A2DC433C7;
	Tue, 21 Nov 2023 12:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700570791;
	bh=Zvq1L3qrO60z+9+NlymajsWGGa36ovjavLPOBw9MDV0=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=Lr5y7QhnKA1IIVN3FzyVHj5533EIhg/AZBFEf0KBTX4lFSQN52jtsoNvAECK3M5tg
	 JCjxvxBPfomLo6GEvA2A7sLyiEjmXmMNuxJ6NtZuWIO8a8Po1BSpsemTD1zPzs99tG
	 vE485swaVZIAT1fbO4tsMDPHQzLYYE56IpUEgXL0G2G22xHATIP2ySJ5hx8BgE+LVv
	 MoUn6Vp3U9fN7W7lmJVW/JuV6o+SzGb3a68B+7v35VsVylPW4Nx5MfThZIkBs/7mht
	 i6yxBjywD/LHbEX5+rQpcGJKYuNQH1KUkZMC3VP8YQXC1oCUyYwDYBadF3Xbd3SKww
	 d371gdtiV/1eA==
From: Kalle Valo <kvalo@kernel.org>
To: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
  "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,  Peter Chiu <chui-hao.chiu@mediatek.com>,
  Sam Shih <sam.shih@mediatek.com>,  Ryder Lee <ryder.lee@mediatek.com>,
  Felix Fietkau <nbd@nbd.name>,  Lorenzo Bianconi <lorenzo@kernel.org>,
  Shayne Chen <shayne.chen@mediatek.com>,  Sean Wang
 <sean.wang@mediatek.com>,  linux-mediatek
 <linux-mediatek@lists.infradead.org>
Subject: Re: mt76 DT binding: undocumented interrupts
References: <CACna6rwZ8q1Zoz4UAryipsZ90yVD86BrcTNv1yKyS8F4DXsuSQ@mail.gmail.com>
Date: Tue, 21 Nov 2023 14:46:26 +0200
In-Reply-To: <CACna6rwZ8q1Zoz4UAryipsZ90yVD86BrcTNv1yKyS8F4DXsuSQ@mail.gmail.com>
	(=?utf-8?Q?=22Rafa=C5=82_Mi=C5=82ecki=22's?= message of "Fri, 17 Nov 2023
 06:30:32 +0100")
Message-ID: <87zfz76zq5.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> writes:

> I noticed that Wi-Fi on mt7986 has 4 interrupts instead of 1. See:
> arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> 300218b0503d ("arm64: dts: mt7986: add built-in Wi-Fi device nodes")
>
> Those interrupts seem unused by Linux's mt76 driver and are
> undocumented in mediatek,mt76.yaml.
>
> Can someone explain what those interrupts are, or just send DT binding
> update patch, please? I'd like to get DTS matching DT binding and
> passing dtbs_check validation.

Is anyone looking at this? Peter Chiu, why did you add undocumented
interrupts?

--=20
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatc=
hes

