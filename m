Return-Path: <devicetree+bounces-244621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DC05ECA7E17
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:04:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BE2D32A9799
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 10:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13772F692F;
	Fri,  5 Dec 2025 10:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="TXv64Bke"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout4.routing.net (mxout4.routing.net [134.0.28.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF88F313535;
	Fri,  5 Dec 2025 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764929548; cv=none; b=lyetMgHpathVjcimx4Hlk7Wj52u4bDdWkF0x8XQ2xedO8ijVl2glbZzDGLV8r/9vWLfNNiTpq8Q+pEwjbVIHH7Gbzqk0Eo7Mkm0GUl0xU7zfJSv0Cq5MYwk0sn8tZuMlCP0bJaFCrDD4e0rrLFVaxXEgWZbG+Crckqin18MQr+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764929548; c=relaxed/simple;
	bh=ZhwxMeDGKdQ+jfpoFrHVDU2YXGVjjQTF6kKa77ubcKg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=E1pyEba6FJ1HGdSjeV5NffnJQE6nRNhGjK47MfDkHvT4To8ls45DU9clkklL5pgKG/ICGeNwGAEQ6nKH5HIUNW1RKaZX4eGl97g+F2NkGOHvmkutNr4d17QcOLy56vgGY54qeUeTb8c2TxdYd+3RzzbClyHWzUxt0byYsaZsrOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=TXv64Bke; arc=none smtp.client-ip=134.0.28.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout4.routing.net (Postfix) with ESMTP id F40571003CD;
	Fri,  5 Dec 2025 10:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1764929539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PeQ5w9JI2U+u93WcNx+OHZKvHgY1tekXmNamojx/WOM=;
	b=TXv64BkeLki+uCVapB3Qw9iYC0d1w3GX22KoNiqmVfI8RN3PqITLubCD12mQWDudWXgnRO
	ipsHTfXEYchZhwhYfx8SU5BcB4JsIt0vHRLBMm6ynVpFOzKXq4taCuAPHUZxSGK3aJqROX
	OghncKRLnPfraPEkjfHp4KdOAMWZDPY=
Received: from webmail.hosting.de (unknown [134.0.26.148])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 4B772100681;
	Fri,  5 Dec 2025 10:12:18 +0000 (UTC)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 05 Dec 2025 11:12:18 +0100
From: "Frank Wunderlich (linux)" <linux@fw-web.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Frank
 Wunderlich <frank-w@public-files.de>, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, Rob Herring
 <robh+dt@kernel.org>
Subject: Re: [PATCH v1 1/2] arm64: dts: mediatek: mt7986: add dtbs with
 applied overlays for bpi-r3
In-Reply-To: <fc5c9829-96fa-4028-a642-0792699e92a5@kernel.org>
References: <20251119175124.48947-1-linux@fw-web.de>
 <20251119175124.48947-2-linux@fw-web.de>
 <fc5c9829-96fa-4028-a642-0792699e92a5@kernel.org>
Message-ID: <942df0f5995a2929eecd38e4066865c0@fw-web.de>
X-Sender: linux@fw-web.de
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Mail-ID: 58a40c37-ab18-4aa8-b309-90bca7573869

Hi

Am 2025-12-05 09:10, schrieb Krzysztof Kozlowski:
> On 19/11/2025 18:51, Frank Wunderlich wrote:
>> From: Frank Wunderlich <frank-w@public-files.de>
>> 
>> Build devicetree binaries for testing overlays and providing users
>> full dtb without using overlays.
>> 
>> Suggested-by: Rob Herring <robh+dt@kernel.org>
>> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>> ---
>> resend of
>> https://patchwork.kernel.org/project/linux-mediatek/patch/20240608080530.9436-2-linux@fw-web.de/
>> due to discussions here:
>> https://patchwork.kernel.org/project/linux-mediatek/patch/20251117211306.725678-1-robh@kernel.org/
>> 
>> changes:
>> - updated sd-nand with sata-overlay
>> ---
>>  arch/arm64/boot/dts/mediatek/Makefile | 21 +++++++++++++++++++++
>>  1 file changed, 21 insertions(+)
> 
> 
> This looks like still not being applied and now it is a warning in
> Linus' tree.
> 
> Can this be applied and sent as fixes?

afair the series was sent after the pull-request from angelo and maybe 
he waited
for an ack from you/rob before applying ;)

if it helps i collected the commits for (possibly) sending as fix

Fixes: a58c36806741 ("arm64: dts: mediatek: mt7988a-bpi-r4pro: Add mmc 
overlays")
Fixes: dec929e61a42 ("arm64: dts: mediatek: mt7988a-bpi-r4-pro: Add PCIe 
overlays")
Fixes: 714a80ced07a ("arm64: dts: mediatek: mt7988a-bpi-r4: Add dt 
overlays for sd + emmc")
Fixes: 312189ebb802 ("arm64: dts: mt7986: add overlay for SATA power 
socket on BPI-R3")
Fixes: 8e01fb15b815 ("arm64: dts: mt7986: add Bananapi R3")

> Best regards,
> Krzysztof

regards Frank

