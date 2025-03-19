Return-Path: <devicetree+bounces-159074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0119A698B1
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 20:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 038F317093A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 19:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEE7C20AF71;
	Wed, 19 Mar 2025 19:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="H9jZ2K35"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056DE1DF271
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 19:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742411328; cv=none; b=DoRT33juZAkziERzdzlgUXt34KnvbGumj5WjS3xPDwX7ZsOVmSpQ9Jn/3R4tjNLLojz1Elw3vbfG2bCpA/Sl/IYFQAZNGZ4IYZYapcwLYtfcL7Kxu+Il+b6jzam8YcANtdRjTzxxpz/Gm8KhAtOU3VfcSibHqYC/KZaTLdAyiFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742411328; c=relaxed/simple;
	bh=0cOK72YPcxWKVeGOnpXw6RBXM4cFEe8takUzoN19ryU=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Cc:To:Subject:
	 References:In-Reply-To; b=g/RCa/WQl5sXmQYx33gsfLOzecB4MfU6a2LWuVKfGFNndulMDt4zWkbrQMPNhf99Dp3nyP8fBa8FZDvRjG5f7ykMBnNBEp5bZmQFTOj+HLbSJqKxiWPx6m2Dns8SpxnLO2mtJkwZT10FTBxKL8WKMww1VyyY3+liVJEw7V7Aj9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=H9jZ2K35; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1742411324;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0cOK72YPcxWKVeGOnpXw6RBXM4cFEe8takUzoN19ryU=;
	b=H9jZ2K359uzwubWOxZhqIFjkympFHVgXw5gcPFu9B68z4JZ5NU/UPq93ekLtarpywymBUO
	8Rdj4Esfp7xlRsID+5eX6VzXtUCEVES0wXeKgg9FrlFhyv6RUDjTAw+2mDKY6Z+VWe39RU
	8H1eD5LhrVkEgF0iMpx16orixM6K1AgljRayCn/DlFPdjwa0y6Ht59EhEAYtAMJdo4CacU
	GFAdR4pm/PG8NSwWnKjc+Lx98VS1ik8xTuWL6KgZ3YQEc0EK9hnNaX3mbVMpYHAnEIg5kE
	nMbSTrv/OXZ6qQ9D/LNmrsroh8A8eO28KaHujgtscjt3QEmnKsKDPvHhceXXfw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 19 Mar 2025 19:08:17 +0000
Message-Id: <D8KH97UKHPJW.300OTP897K3KO@postmarketos.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ferass El Hafidi" <funderscore@postmarketos.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 "Artur Weber" <aweber.kernel@gmail.com>, "Karl Chan"
 <exxxxkc@getgoogleoff.me>, "Christian Hewitt" <christianshewitt@gmail.com>
To: "Ferass El Hafidi" <funderscore@postmarketos.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Kevin Hilman" <khilman@baylibre.com>, "Jerome
 Brunet" <jbrunet@baylibre.com>, "Martin Blumenstingl"
 <martin.blumenstingl@googlemail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <linux-amlogic@lists.infradead.org>
Subject: Re: [PATCH v4 0/2] Add support for Xiaomi Mi TV Stick
References: <20250203174346.13737-1-funderscore@postmarketos.org>
In-Reply-To: <20250203174346.13737-1-funderscore@postmarketos.org>
X-Migadu-Flow: FLOW_OUT

Hello,

Superseded by v5:
https://lore.kernel.org/all/20250319190150.31529-2-funderscore@postmarketos=
.org/

Thanks.

