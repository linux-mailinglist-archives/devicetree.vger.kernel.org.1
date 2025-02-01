Return-Path: <devicetree+bounces-142205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF942A24830
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 11:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFFDA3A55C2
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 10:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6FC414A4DD;
	Sat,  1 Feb 2025 10:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="IbDdiCn7"
X-Original-To: devicetree@vger.kernel.org
Received: from out-175.mta1.migadu.com (out-175.mta1.migadu.com [95.215.58.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB63149C57
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 10:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738404896; cv=none; b=Xecp/nvtdulH3EC87L1pRwo8eFKWLkIBlj6gSd7B+SvAqDehY+hQ70TNCsF0t1vWWERbBnfAD1KiM+ANnGfwH+fRbY0uzIyB+UakuTffedd2f/eb1wvw4xS7iv8phbjxHdoLzwdx20xD4B3JzO+e2qNCBfcoxfD3ywrUeLTRLSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738404896; c=relaxed/simple;
	bh=3KxkjNSHdhUJ+iVNQDS7pQgz8U/B1XdVrpi12amKdrE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:Cc:To:
	 References:In-Reply-To; b=tkw1jRXE2nCP0Ov2f5PTyuNd2SRKIOuZ/EUY+Q6NWp9BdcI3rv0Le5eOLtJRw+CMF0N54Xqm2XlcaYn7bOwX6BCjG+aWshHO7dWEtllRovHjyX5tTz/TDIXCK+5UJx16NJapwecuLu0PkyDrkhCfYDNDmp/5PKxEtZM0qd9n78M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=IbDdiCn7; arc=none smtp.client-ip=95.215.58.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738404892;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=96rZKH5baF3RIgzA4V8zMqp7dM/6uPD7zsmS9yr/NDE=;
	b=IbDdiCn74N1qJ6m4LzTt+CYPP0D5o2at45JhSgscXm/m84S9+RKvJ4hLz/r5oG8cugk5vA
	/ejbgNK8RFTW6XoafI3gJJwuYefXYgJhnGXDXPS3nWb3HGwpVsaMYz1+89uGtdiCI8DQZq
	ma/beqUPeM9aCii5Ht3h8HhnU1MKrXoB6PkDmKADjwBO7vfrYTEK+eMBNc+zVpShlgcx0S
	62KgtcLg8Zk0Rr5x4qJPWPk4oW5Po+FHLg+xwnajhzX99bC6MWp2O+HgKFVcslWNAqSBmk
	c9bHqfjtBLXueorjXNedhQwGp7puGZPpGgkI7l8qKxJLeTRszp798AwvSYmFVw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 01 Feb 2025 10:14:03 +0000
Message-Id: <D7H1348E1P68.3JUDJXGJYILFS@postmarketos.org>
Subject: Re: [PATCH 0/2] Add support for Xiaomi Mi TV Stick
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ferass El Hafidi" <funderscore@postmarketos.org>
Cc: "Conor Dooley" <conor+dt@kernel.org>,
 <linux-amlogic@lists.infradead.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Jerome Brunet" <jbrunet@baylibre.com>,
 <linux-arm-kernel@lists.infradead.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <devicetree@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Kevin Hilman"
 <khilman@baylibre.com>, <linux-kernel@vger.kernel.org>, "Karl Chan"
 <exxxxkc@getgoogleoff.me>, "Martin Blumenstingl"
 <martin.blumenstingl@googlemail.com>, "Artur Weber"
 <aweber.kernel@gmail.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
References: <20250131200319.19996-1-funderscore@postmarketos.org>
 <173835855352.46011.13506160179490240246.robh@kernel.org>
In-Reply-To: <173835855352.46011.13506160179490240246.robh@kernel.org>
X-Migadu-Flow: FLOW_OUT

Hi!

On Fri Jan 31, 2025 at 9:23 PM UTC, Rob Herring (Arm) wrote:
<snip>
> arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dtb: pwm@86c0:=
 clock-names: False schema does not allow ['clkin0']
> 	from schema $id: http://devicetree.org/schemas/pwm/pwm-amlogic.yaml#

I don't think I touched that bit.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arc=
h/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts#n279

> arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dtb: leds: led=
-white:default-state:0: 'heartbeat' is not one of ['on', 'off', 'keep']
> 	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
> arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dtb: leds: led=
-white: Unevaluated properties are not allowed ('default-state' was unexpec=
ted)
> 	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#

I'll fix the rest in a v2, thanks!

