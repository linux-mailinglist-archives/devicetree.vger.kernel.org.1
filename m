Return-Path: <devicetree+bounces-245985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 880F0CB7930
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 02:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9C523041CF1
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 01:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120A1218AAD;
	Fri, 12 Dec 2025 01:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxsw.ie header.i=@nxsw.ie header.b="gEYeossp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-10626.protonmail.ch (mail-10626.protonmail.ch [79.135.106.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E669D27E
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 01:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.26
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765503967; cv=none; b=c+LVfomssbwMs1dMv1MP0Di+DDetDQ3tjRDU1X3Opy4IVAOsZUgnBslRNbE2an1Ca1MDkmIvYO3g2VuytUvk5GPUipd5CKptZK5MmGSBaTU5bVlqGY6M6vZ28k0+1LvN8Q+boFCsyAo0P41Hsttc1nbKzTrtauO/DLuINaZ91dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765503967; c=relaxed/simple;
	bh=InMO6pnEBjCfOXZazRrMTr+pDArq4FjExoqAg+8HQ4I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ICervAMeOCQ8zvF4oqbaq1Yx/8my5gm7Q/OQu5liZV5NTXXh/mmoKJRAtPGad8PHiYkiuYifunEQRcceWFg3kwbPqvigqXRyLaRKR2OVmLK6Zb4PHNTpLPb3riPaXf8QXgcWdM81kx9BZ+3i5hX4uei0xmnWGG9+O2XqWm3Hh0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nxsw.ie; spf=pass smtp.mailfrom=nxsw.ie; dkim=pass (2048-bit key) header.d=nxsw.ie header.i=@nxsw.ie header.b=gEYeossp; arc=none smtp.client-ip=79.135.106.26
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=nxsw.ie
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxsw.ie
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxsw.ie;
	s=protonmail3; t=1765503957; x=1765763157;
	bh=xhgUvVCy4gPJIOWglUXBQSh4o7xlyoMQxTXXo8XPXeY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=gEYeosspAiw3ILVrR0x85Y2FNY75yRCieCHRX7SsxCBTcmdPdPostYAb5lEzeTFrV
	 lCA8CBhOlSjZ9Eaq+PtLUZ3XWuCASLFEt9fVu+I9PsvPxf8+Dji6srJeuJmoUJySWe
	 2+1cSnwShceZyufeesHCmszHdxdvKFP/mV8UbSlVGs5kzZIDzbVT718I3aF2s8oJ4O
	 MIoii7l5yGkTc54K8hDiGZvJROs9EroQ2K0sqrLgRLvzpLifYR+a5VeJwj1VoxeQwd
	 DpQFN6VhA59ZzMR2hpJnXaYwZeQde2bQuTYIYn4MLQr5KHtB0xjhmvwxOMFm9Cn/6A
	 315oL3lwWaBIQ==
Date: Fri, 12 Dec 2025 01:45:52 +0000
To: Richard Acayan <mailingradian@gmail.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Bryan O'Donoghue <bod.linux@nxsw.ie>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, Robert Mader <robert.mader@collabora.com>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355 front camera
Message-ID: <2fff55c6-aea5-4019-bcb9-eaff3b44474e@nxsw.ie>
In-Reply-To: <aTtkwQb2gOeWAFuv@rdacayan>
References: <20251211014846.16602-1-mailingradian@gmail.com> <20251211014846.16602-6-mailingradian@gmail.com> <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot> <aTtkwQb2gOeWAFuv@rdacayan>
Feedback-ID: 136405006:user:proton
X-Pm-Message-ID: 35b0511de7759413e883358851a4f31971ef1dee
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 12/12/2025 00:41, Richard Acayan wrote:
>> This would be much better:
>>
>>    &camss_endpoint1: {
>>        clock-lanes, data-lanes, remote-endpoint here
>>    };
> I'm not sure what you mean, there might be some typo.

At least for me the endpoint name could be improved see:

Take arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts

Also since you likely have more than one sensor I'd suggest endpoint@0

---
bod


