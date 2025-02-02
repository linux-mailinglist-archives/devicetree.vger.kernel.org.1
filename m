Return-Path: <devicetree+bounces-142311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8322A24E71
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 14:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 869C51886FE2
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 13:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F77D1F4726;
	Sun,  2 Feb 2025 13:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="I+VvQvFB"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714F21F470F
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 13:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738504589; cv=none; b=gpVqoR5D+7dEzxvCqaVyMC0OxbYUn78Re758EEzMFTYAZ65T+Hm5U2UpRf8SqIGuV7KQxOk4hLMduk1di8j+ZjvyMYuUiUgrBgScud3Y5eljZ4bkJJI9bs7KO7H5X4YNDND+2XjqvoeSMveHnm6CytO/1WCDQZs+WD3tZayCKWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738504589; c=relaxed/simple;
	bh=62CGEVgS2qUzr+ENBi2kxIRLaHnCeNaTCxRJLHwN3aY=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:Cc:To:
	 References:In-Reply-To; b=fqcI4d4liSZZMrQXUOHJ97os1zzcTpxeFU/u1sl8wjyNQ9vTnfsQFoOfnT/BmAyuGkajPz0NKlluD3Ifmlcdkircox0sAx8xoKIBCHq186PaK0k9eByAOfPuuLLWca2AxegHaTWRwuKJZ5vcgwc/aUKwIGo0hadkZZf5xt9ADig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=I+VvQvFB; arc=none smtp.client-ip=91.218.175.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738504568;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dTCjK7GphBpYgmSVOu1ScWLH6UjNwU097e2TCso5clI=;
	b=I+VvQvFBpA2cUT9zyvjYyK8BieeLsCdC5A9qZSH08JTKHKQWomZq/C7Qhys+xvEkJlt9ny
	43qaRft0e9kotHlF9dHeT1Oyrpu+rMtAyT7NA5X8aVArVoMff8Q1/0fNzRkF4goV3+uI3f
	TQq9zuWbyAi/sgd6gWo0Oe7T08aA3YKUt61aVBEsnAhgiPYU4VNNTFSEqAzsWwPgizTi5u
	K7h0r3R4CDzE/I1b4PdMd1DOMT6wvHzFOAFqZrlmkbIhsRVz+SqsyFqqtQQlxufBTx6tpw
	D32Fkj8jrXNaM0NSjm0cGwZdBRTI9D7JV1uFHDG/xt4YPUEH2wqk2+vdpEq0NQ==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 02 Feb 2025 13:55:21 +0000
Message-Id: <D7I0F3OMXALB.1ZT1G03JTKSEZ@postmarketos.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add S805Y and Mi TV
 Stick
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ferass El Hafidi" <funderscore@postmarketos.org>
Cc: "Neil Armstrong" <neil.armstrong@linaro.org>, "Kevin Hilman"
 <khilman@baylibre.com>, "Jerome Brunet" <jbrunet@baylibre.com>, "Martin
 Blumenstingl" <martin.blumenstingl@googlemail.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, <linux-amlogic@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 "Artur Weber" <aweber.kernel@gmail.com>, "Karl Chan"
 <exxxxkc@getgoogleoff.me>, "Christian Hewitt" <christianshewitt@gmail.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
References: <20250201193044.28856-1-funderscore@postmarketos.org>
 <20250201193044.28856-2-funderscore@postmarketos.org>
 <20250202-wisteria-rook-of-intensity-6fecfa@krzk-bin>
In-Reply-To: <20250202-wisteria-rook-of-intensity-6fecfa@krzk-bin>
X-Migadu-Flow: FLOW_OUT

Hi,

On Sun Feb 2, 2025 at 1:54 PM UTC, Krzysztof Kozlowski wrote:
> On Sat, Feb 01, 2025 at 07:30:43PM +0000, Ferass El Hafidi wrote:
> > From: Ferass El=C2=A0Hafidi <funderscore@postmarketos.org>
> >=20
> > Add support for the Amlogic S805Y SoC and the Xiaomi Mi TV Stick (aka.
> > xiaomi-aquaman).  The S805Y is very similar to the S805X, with just a
> > few minor differences.
> >=20
> > Signed-off-by: Ferass El=C2=A0Hafidi <funderscore@postmarketos.org>
>
> Please run checkpatch. You have from/SoB mismatch.

I don't see any mismatch.  Maybe it complains because of a spurious
non-breaking space?

Regards.

