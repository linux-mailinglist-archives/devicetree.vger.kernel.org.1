Return-Path: <devicetree+bounces-157918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E950CA63677
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 17:47:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AC5516CA79
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 16:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A265A18DB0A;
	Sun, 16 Mar 2025 16:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqoKdvsH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6091448E3
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 16:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742143647; cv=none; b=UQ3U8Mye5laN4fTymQizT9YhVt3RNagENXg+tj6+evSp01k+JV3EAXeymp6Y3pIxvvJuLzdEGCaVePiXpdSt2X1z8btc6dDMxpTTWXGM/bsXaixnPEuam1bHN2ikS2AOXPxK1lEi7HHNlvF5JSKGPaDz0Gd5NrSx+OyNi+ltbtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742143647; c=relaxed/simple;
	bh=wgV//taCTMUJjudcVBSnKDSNzr1TCMc7wkIEuJcvFdA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g5+inKxubexQwxYw333Uw+t1MIh3qHbnI45P58XdatPw3Vxa2YMaA+ltUzo+g0NYC5KKppac+SWAgIxFKTvchdOyDRwHChFBRjXvH3K4dyt+RerPHC1QEaIpoh1u0XVJKRyzGOkjd57N2tVnK7aSuP+O8+UmH3aiecRUxfBBPbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqoKdvsH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01B32C4CEDD;
	Sun, 16 Mar 2025 16:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742143647;
	bh=wgV//taCTMUJjudcVBSnKDSNzr1TCMc7wkIEuJcvFdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QqoKdvsHtmKWm1TtDCDdH97PQn/UOqDcFwVg7jCrZVtZLcO5vWgFr6Ditxr0KyNS5
	 Cb6GqMfgwT/ofvQu5LO+791H0FhDFPMfByGpfUiJDjVPk6cCUgCewioNNhz/ElIC0h
	 xPe7M4vPOqN5s9ujV0BJbbRTRrEbhxCT4pJv8BSfhykM53iv2Kaf4HVczO7pw/ezBA
	 a43TV+/GwZtY8+rn+1CWAjKGlWheK1km6NZ/jW88nRT+9oTCWm73xXMUXUV0HZrjDa
	 RfiHDyZxC82u8mPq8xU9BGuaIC2T10wcRuH6GSHTBcByB/RAefKuzrHLTXNsRzfuv2
	 gxaKtYsJpDnDQ==
Date: Sun, 16 Mar 2025 17:47:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>
Cc: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Stefan Wahren <wahrenst@gmx.net>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Phil Elwell <phil@raspberrypi.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, kernel-dev@igalia.com
Subject: Re: [PATCH v5 2/6] dt-bindings: gpu: v3d: Add per-compatible
 register restrictions
Message-ID: <20250316-positive-aquatic-albatross-a39431@krzk-bin>
References: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
 <20250316-v3d-gpu-reset-fixes-v5-2-9779cdb12f06@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250316-v3d-gpu-reset-fixes-v5-2-9779cdb12f06@igalia.com>

On Sun, Mar 16, 2025 at 11:15:09AM -0300, Ma=C3=ADra Canal wrote:
> In order to enforce per-SoC register rules, add per-compatible
> restrictions. V3D 3.3 (used in brcm,7268-v3d) has a cache controller
> (GCA), which is not present in other V3D generations. Declaring these
> differences helps ensure the DTB accurately reflect the hardware design.
>=20
> This commit breaks the ABI for BCM7268 to enforce an ascending address

Wait, why? That's not a reason to break ABI! First, there is no rule of
ascending address order. Really no. Second, even if there was such
coding style recommendation, it would not be reason to break ABI.

This patchset is not going to right direction. Read the previous
feedbacks about what is expected.

Best regards,
Krzysztof


