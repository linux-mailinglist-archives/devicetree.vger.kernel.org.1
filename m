Return-Path: <devicetree+bounces-42033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0CB856325
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:29:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C09F01C20E7B
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D2512C52A;
	Thu, 15 Feb 2024 12:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="EgDVlb2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4318.protonmail.ch (mail-4318.protonmail.ch [185.70.43.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9484E12C522
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000140; cv=none; b=Rd0iM1phCK27F5+feqzguWQD9eGlpY4NAa8pudAs0f0L4A8qjev3OPVIECF45y9V4oPFnGY/crlhz676UdlbaU6aiteZK262Dtb5ci5LyrUm5uLY51pJbVfE2XauWX3621VY0ErLT4lERHQO8KLDFZ7T+0tXw1f6j1yQACOqtlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000140; c=relaxed/simple;
	bh=YuHq8eA6SLCImHbONPdueoD/jJr5PUsm1Eh9BqfAMj0=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=prxUMJe4P0ZwY+QhZg7dZ0xa8035odxKd74YrG1wt1QDa3cJOTzHFt0OjOmtEecgQXmNAgdAnHG5zVI38gqVMwUlol0B8ArE37bbA5G6vsmaO8ZZCeVTpAe37UEzVkmeqRAdUMtvobJuYRABMRofRooJPP7PI+jI/YdAEMkOlA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=EgDVlb2b; arc=none smtp.client-ip=185.70.43.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1708000129; x=1708259329;
	bh=YuHq8eA6SLCImHbONPdueoD/jJr5PUsm1Eh9BqfAMj0=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=EgDVlb2b2TfaJD2xTBqaZHtTC3/tAshpuFT96YvzubXJHA9ByH+o6RTHKSOo7CiWq
	 S8I1KLLKpl41Ed9KfRiiUW9eEtWWrD4I7geCOWh2HaLHmX6m54OM2/20QJJQU3pug3
	 nGUUf8rS31IawsBOVtzVUh+J7YnUKwmmrQUlal50HUL4mqfiJnEHndwl4c2sWUBuSa
	 xyNVXFU01V9yfcvBQc6SHwYbkyTSS+B8Lltb8OcQ58zd+L72xdSPZ3VisgX7z+p65F
	 NtARSsyVIqBDKGzeVV9vItLgwnTTs469fLRWAdOBlJqEtcv6hoKt/MsXTmxFg3pTew
	 x5277fspFpkWw==
Date: Thu, 15 Feb 2024 12:26:20 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Jakob Hauser <jahau@rocketmail.com>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH v2 0/2] arm64: dts: qcom: msm8916/39-samsung-a2015: Add PMIC and charger
Message-ID: <20240215122612.3833-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The phones listed below have Richtek RT5033 PMIC and charger.
Add them to the device trees.

- Samsung Galaxy A3/A5/A7 2015
- Samsung Galaxy E5/E7
- Samsung Galaxy Grand Max

---
v2: Split the connector into another patch


