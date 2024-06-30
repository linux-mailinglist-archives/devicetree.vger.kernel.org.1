Return-Path: <devicetree+bounces-81715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C05C891D1CF
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 15:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 678CD1F21640
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 13:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5801F1422A6;
	Sun, 30 Jun 2024 13:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="bXoaLKpV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40132.protonmail.ch (mail-40132.protonmail.ch [185.70.40.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31A31411DF
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 13:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.132
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719754170; cv=none; b=s/IIgH/PnJMBRr7WE2dDnauLkoNRgJ4FggRXw/2YvIqQzPLfEI96xPey73qvP8IDL7Iz+zg6g0b0rxs61mFjG70RIk6UcKhaz3YQkhUAGOlz7gilTDIjAJLdpjd2NP8JQc6BnI9/hy5wED0Sz/VadhOS54xciHmgzIuLvG4dZuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719754170; c=relaxed/simple;
	bh=inXCjUbnM2XHbtm2RNPSsyhxiLL1J+h5caBn/zhuA2o=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=pdAyURYVU8z6XmoVkxqQebR/TOUrnFH/qVomEsoH8fIyy3htp7f5lZ7eetnikeSCd3HzbYAbQZ8xjhBeRZD97irIVKHTq+/C7tgvHyilGW61rHvwpo7GovxqqIPmqO5Dpr9owF0hvQXTrww3wuR5xNnT/8hpw87Z1LKYXBXH7IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=bXoaLKpV; arc=none smtp.client-ip=185.70.40.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1719754160; x=1720013360;
	bh=4OFxf+2yJ3nBpClP9PN+o8JkUiiPISSK634ntIF/VPA=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=bXoaLKpVZmpaoGFI9y1oqKDCXvUVd9UDEfP0AX3icAQy9TJryo3TBuPxcSsIdSus9
	 dMxLWMvt4Sb8XIVyXl0CyDGR2UbZbcPvW9yVCE9uVTsVLULvf5/dj1omvFnogyOiTX
	 gm8/7JsHkT4f3w/mzAQAhHi4fzNUBmRfEIJYnyoM5ckhofSBaOt706T0EIrmvKki06
	 QWPJOWD4yMfhET1MDrzH2WwDzBlz+PM4tUHXNjjy/M+CLq9NtmtRWyKGcGBBSWqkfv
	 2goVtl0BUtZwxf7FoA0UBHBjCan1a2gsii+/+3bN9RfKXNn/AHOiZ6jwh7TNJYQFRZ
	 NQmiSnkdFXNpg==
Date: Sun, 30 Jun 2024 13:29:13 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH v3 0/2] ARM: dts: qcom-msm8226-samsung-ms013g: Add initial device tree
Message-ID: <20240630132859.2885-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
X-Pm-Message-ID: 131fbe37859fd0217f4effb6a7bbe4e992415f9f
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Samsung Galaxy Grand 2 is a phone based on MSM8226. It's similar to the
other Samsung devices based on MSM8226 with only a few minor differences.

The device trees contain initial support with:
 - GPIO keys
 - Regulator haptic
 - SDHCI (internal and external storage)
 - UART (on USB connector via the TI TSU6721 MUIC)
 - Regulators
 - Touchscreen
 - Accelerometer

---
v2: Adjust l3, l15, l22 and l27 regulator voltages. Sort nodes.
    Set regulator-allow-set-load for vqmmc supplies.
v3: Rename node haptic to vibrator.


