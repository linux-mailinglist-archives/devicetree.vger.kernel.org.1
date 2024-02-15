Return-Path: <devicetree+bounces-42149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A818569A5
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 17:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 222C51F221BA
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 16:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7985134743;
	Thu, 15 Feb 2024 16:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=public-files.de header.i=frank-w@public-files.de header.b="DIxBmDRJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86821754B
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 16:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708014880; cv=none; b=cHyYHc3nsqPiLx1HKNPU1QZlasLsMBSxmQ8JwSYWFNfMnlUxShCrX8nd9zY2NZyuaulLjM5S7i0BzItvHGlWx1ENMo2os6CxPQjgyLe0dR506IicosHcKuyLUPkVG/vKcehrQWieVXwrL/lfpqzLuEE8PHyWyYKJFAsHLI0d2hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708014880; c=relaxed/simple;
	bh=kSiKXk9mwRyqBgmGtVOmSvPrewMdLEDWzRb5bIGkXs4=;
	h=MIME-Version:Message-ID:From:To:Cc:Subject:Content-Type:Date:
	 In-Reply-To:References; b=AbQeTjcoggMaGpvwN0oQ+s/zkiBY3piVSIvfXz7DLH04qcuHiH43t4L1vTDRQ5unu5KNI5Id//He1MfhCpy3AHO8sVi0A65N0AtuHhaJO6ErfyzwNAVn8wiBYdZhvtjGQjOEf+upswfBUFoCfnHeTq5PyyrMCMEKq+13EhKovFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=public-files.de; spf=pass smtp.mailfrom=public-files.de; dkim=pass (2048-bit key) header.d=public-files.de header.i=frank-w@public-files.de header.b=DIxBmDRJ; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=public-files.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=public-files.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1708014857; x=1708619657; i=frank-w@public-files.de;
	bh=kSiKXk9mwRyqBgmGtVOmSvPrewMdLEDWzRb5bIGkXs4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:
	 References;
	b=DIxBmDRJ5how7NJHXrnMVdxxO+pWkraJvQjXUV4u6LNd+/r8cU4J8L8PYaZtKUNS
	 D3lT2u+EHzEplKf7io5gZBpX4tcQ9+KejLNNKndzbWgBVHkmcme8d+RMk9yRRlduK
	 8vj5uRehSyn87mqKfeusjgAOjwi0/c3Lxh16VQr5ahXLrqKl8bIEiP5eESlGKyxPf
	 NCxXSZfPSDQWOU3mP7xz3jZVRuRbxltm+zAv6eeBTKgNBl7OAlkvbOpaZWgMgIKqP
	 M8JkT7B8ysujVQwxbP3OaT4IaIgCEu6iUcCnzyNWyFFNomoaEN8A5XzztjUmhmW7f
	 lh92twtUXJ7nfZCM/A==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [217.61.150.201] ([217.61.150.201]) by web-mail.gmx.net
 (3c-app-gmx-bs43.server.lan [172.19.170.95]) (via HTTP); Thu, 15 Feb 2024
 17:34:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <trinity-008b2d85-9629-4f03-92be-0b4027edea41-1708014857046@3c-app-gmx-bs43>
From: Frank Wunderlich <frank-w@public-files.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Aw: [PATCH v2] arm64: dts: mediatek: mt8186: bpi-r3: Convert to
 sugar syntax
Content-Type: text/plain; charset=UTF-8
Date: Thu, 15 Feb 2024 17:34:17 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <8c10c4bf701583d015506712ba9239dbc7547426.1708003159.git.geert+renesas@glider.be>
References: <8c10c4bf701583d015506712ba9239dbc7547426.1708003159.git.geert+renesas@glider.be>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:+CuRp+zl8YPKjgtknrzY5aLUxiBRXLXiWqWgSEVvtmIlWDLH3VZT2b55AdAPyBJcKvV1N
 1jdkjomeULFmvyYlTAQ003dk+8Ajo+TNQGyWI+uECfTtNmHX+CPcBxU5ZkNp33mG63T/XehOZnif
 7a3n/4fS5em75FOI0c1pwIPBaEFRB6fMq5UtNM1prKcGFMVmAlm0LbYiJFG9fqCVzCNlaD10z2zs
 eCSlAsAEmOrliuAbasG+cI0RipQHMo4T0YkpC2PyKKXFvetCcg/OaquCmwDILWjAxNlj53TyOXrR
 ZA=
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0ijNqikVSfA=;rUb8Tg80I/QV7AJNEalajPGQMhq
 mFmxbeS4TTD//u0MZAvvs76UW4GVrueWPA6DuxM6qP2H1F8T3aS/HyYN484Z+HBHSSBcK+RXh
 hhiIq80yxFSR/eG1ZifchYlnBmgIObcDGraSomZjHB1sVGswcDA12VIVVMkfEAQmFKZZGvuGm
 Q6HOk71E4+dhLpBcEIMi5qazXvrLW6SorBesRM825F88SprYWMQilDeGIJu9WJx+vgwgvQAHs
 oXXoLtAZKNdLfi90UBwbyydBlzpKLV8/z5kEhGOXz16kLTXD0HnJn6ai8KBpLm/ZmEtFGt895
 71RsJiMY8WDYn7LudAz2+FJgbxUwknIEWYwKfar1gI7GcgC3Ei9fYsV1OjrzMtmH0KMkIxGV7
 xSbO1buYGJW9fwVk46OJEhULQgNvo0EeFRome2eo/pVXuDjV1R5arbWKIL/rIeYdGCFhKAwHJ
 GqB1ZD2MBUc7Pc13RNhENE2Hkc75TfY6YXjPQsY2PgHLs6iCtyL0HARUZdJ9ygUfyqO4NSims
 bblFZdp1+YbooQLkjHjKF4bl+avlmjaiszJCbjTg5y7D63rbkIvRWeV9ILKBNAqZSTQHZq7c8
 tLXL5uyFl9rODpLLPYxJbA1tiBhkQBXnwGV7dTRM3jgoim/CUnYGSNYtyPynjc1XPt8i/cgt+
 UHhUaY9UtzVnfM3iBNBsCI9OZcH0TmGMAcKPNhs+SEEBvieUOVs/Gjnd3fEhwi4=

Hi

> Gesendet: Donnerstag, 15. Februar 2024 um 14:20 Uhr
> Von: "Geert Uytterhoeven" <geert+renesas@glider.be>
> Betreff: [PATCH v2] arm64: dts: mediatek: mt8186: bpi-r3: Convert to sugar syntax

should be mt7986, not mt8186 ;)

regards Frank

