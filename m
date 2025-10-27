Return-Path: <devicetree+bounces-231773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E01C11898
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:22:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F27A567268
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 21:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC80329C7B;
	Mon, 27 Oct 2025 21:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="ZzCJ2mvl"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FC532AAD8
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761600036; cv=none; b=DMc6vVPean+8qvTpvKH+eIab74szFfd0smPE+SIFe/LlkiKdmaVDR4xDEWYrp6EQH5LtO3yw7c5E99phGxsLEyZjnyCtE70mFI99jfMaxIPTHEsjS7d2ahBIH0w23clyM9ouZp5lP+zyDJ6Y65StsE2QmFW+OBY3BRI9HtGLa4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761600036; c=relaxed/simple;
	bh=5xdpCgI9+Y6cN5MSmGFBKONZOL4IJqg+NR9Qk85kt80=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=HC14vNWqbYaWhXnZlWP8UIf7iOf9aw3Q4c1td2Q8y7wSaEfHUBGFTmAsPnoSowZ+0n+JWEpjQU8d1jViTa5J0H47NtIHFDWel8iMMVclfdF0kRhwiwFCgvMVcJCDzXMC+CXdsCAxS1H+NY1xyImeBgDR0NUDkLAfq1EC+YPaCMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=ZzCJ2mvl; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761600021;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5xdpCgI9+Y6cN5MSmGFBKONZOL4IJqg+NR9Qk85kt80=;
	b=ZzCJ2mvlyM+oBKlKupVVpGp9PaleFmZxoOk6obZmhBvosz4iw+2eUciwBFZLxJZ4DVMsYo
	aOS84kkPO+Wfv6bKDUrlWJhAAEhk6X8TOp79J3xdxG/PhfCUWA+dCMvQAyhFHY0oaaH5dJ
	ylyBWIddMlEyQlCHODpPizWU2DVVELpXFUDVzORSZLltmiFNtab4+ATRxiXFbPJw3RwE4V
	0wXb5+3/B2oYfw3NBxOsCXqCEWLjD51LN+aPmurrE3vUAx/YYhU3SwjOCV0QRUj7FriQGc
	mI8bxn+QAE+UU9PmFZ9/HH28MR/bFpnTmpHQ6Ds9rnTFy4N9vXe8fMmM1NcbWQ==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 27 Oct 2025 22:20:15 +0100
Message-Id: <DDTF376168GE.27A08H5NLTCRF@cknow-tech.com>
Cc: <sigmaris@gmail.com>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <heiko@sntech.de>, <krzk+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Dragan Simic" <dsimic@manjaro.org>, "Alexey Charkov"
 <alchark@gmail.com>
References: <d583ee43-38c4-40fb-b33b-ce3153c9723b@gmail.com>
 <20251027200213.1821809-1-dsimic@manjaro.org>
 <CABjd4Yzfx-4xBHVB=W_r6nEdbwNJKdpHYB6bN3Xsk8dZOegJWw@mail.gmail.com>
 <2cfeeb0c-f7e0-b101-62c4-3b6eae40a30b@manjaro.org>
In-Reply-To: <2cfeeb0c-f7e0-b101-62c4-3b6eae40a30b@manjaro.org>
X-Migadu-Flow: FLOW_OUT

On Mon Oct 27, 2025 at 10:15 PM CET, Dragan Simic wrote:
> FWIW, the most user-friendly SBC family in the world, Raspberry
> Pi, :) requires manual enabling of the fan on Raspberry Pi 4.
> I haven't researched what's the background for that, perhaps the

RPi's have been using DT overlays basically from their start (ie way
before it became practically usable on the upstream kernel).


