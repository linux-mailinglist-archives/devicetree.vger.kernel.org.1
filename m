Return-Path: <devicetree+bounces-160117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFB2A6D8CC
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:01:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EDC53B094B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54641186E54;
	Mon, 24 Mar 2025 11:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="mb56Tlnp"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BCB2E337E
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742814083; cv=none; b=IQK1vyLg/7IaxYE+sDBFL5fckfd8Y8DS8gMBBX0AxSsCSe4T0yVUr9XscPxViKFzc8zgBbkp7geNQqyHqC1PJSi9Ux377hI1Bmn4KYuWAOPCXYr+v6cWKl491dRXoDIMb1v8fiIjbTRxcXLz4Gv4+LILoSyEbpwgyKaITKY90s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742814083; c=relaxed/simple;
	bh=fNcJg85jb8uy9BPEHwY/03BnrTApgjljAhujB76L3OQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:Cc:To:
	 References:In-Reply-To; b=jgJXnOc8J3dCVlU4BWVKO2BzNoakIfXhtZ3d6K+gMWiqy8eytKQK+0jR/ekO1zf1YflDI4q4JaOePzsCKLhqVk3An7TvbpeDiln8ZOx1HkM5C9yPdfOrUwwpcHy2S+WfJe45ivtPsfTuOliLg7a6R/WpByBaoizrnehyReXZ46g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=mb56Tlnp; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1742814078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fNcJg85jb8uy9BPEHwY/03BnrTApgjljAhujB76L3OQ=;
	b=mb56TlnpQ2C7KhQEa60Jci1EhHvGjef7HtEcDICRX1TD0r4ooU1qaLVYYQfo8ZkzrnjA6W
	hOXNmmclCAYps//MT6KIy1u3rRLz+++/Arlt8PHXLtrsH43IRK3fRXdeiuB4/DGailAm0W
	Og7X5LJ7Bl7RxBw7USIAe8iEwYPaQAsWiIinnHBcwZ1XG31KEJRDXHAdiuY18+/F8IoMcx
	ov/J2tLfPc8xY6I9sj48SWZwXB51DK9VGy7qtt6NltNAakWwKys9H071NSvnKJcCTfs/B3
	R51GnMEODCmGELfdr8t02ff/sN22pU/zixEqsrC0a72BAF+FjmUSdt4EETa+vA==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 24 Mar 2025 11:00:47 +0000
Message-Id: <D8OG0OI3HO2V.326AQZHJWCBAI@postmarketos.org>
Subject: Re: [PATCH v5 2/2] arm64: dts: amlogic: add support for
 xiaomi-aquaman/Mi TV Stick
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ferass El Hafidi" <funderscore@postmarketos.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 "Artur Weber" <aweber.kernel@gmail.com>, "Karl Chan"
 <exxxxkc@getgoogleoff.me>, "Christian Hewitt" <christianshewitt@gmail.com>
To: <neil.armstrong@linaro.org>, "Kevin Hilman" <khilman@baylibre.com>,
 "Jerome Brunet" <jbrunet@baylibre.com>, "Martin Blumenstingl"
 <martin.blumenstingl@googlemail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <linux-amlogic@lists.infradead.org>
References: <20250319190150.31529-2-funderscore@postmarketos.org>
 <20250319190150.31529-4-funderscore@postmarketos.org>
 <f36875c5-73bb-4bf8-a59f-5df30043bbbe@linaro.org>
In-Reply-To: <f36875c5-73bb-4bf8-a59f-5df30043bbbe@linaro.org>
X-Migadu-Flow: FLOW_OUT

On Mon Mar 24, 2025 at 7:02 AM UTC, Neil Armstrong wrote:
> I get:
> Error: arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dts:243=
.1-2 syntax error
> FATAL ERROR: Unable to parse input tree

Yes, somehow a ";" is missing.

>
> whil building, could you fix that ?
>
> Neil


