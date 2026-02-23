Return-Path: <devicetree+bounces-267566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKjwNF2MnGl8JQQAu9opvQ
	(envelope-from <devicetree+bounces-267566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:20:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB0017AA8B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:20:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2D88302446A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B4B330652;
	Mon, 23 Feb 2026 17:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="BsXDftef"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8C9319870;
	Mon, 23 Feb 2026 17:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771867181; cv=none; b=Y6QEmpwioy+3ELz8RVIWvBbFXY13cp9sEvRpXJvlcfVr0C0UyadvHjjUt187+LmerJRLWu+D898aneSXUBNhk1RuPSQQXTnmREIWgeXxFX1zu6ZC7EA/F+xWYZqrg1t2utyYCPtDjT02Utld5mwVV1JWRKX0kLDX8onmJg93o8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771867181; c=relaxed/simple;
	bh=K21kjy9qzrF9ypXG7rQNvPH2O306QauFy/abdov4/ag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qmhq9/ArKVFDrMStDtxDxMb7j0XKileweOJjFlBIQHf2MaVuxZkraLb2D+tP8pL8w11ipYVtVmJ4y3eRwE/I1i2bwibzgkAPu8wiObJLB5igvBJDM2vPz4Lco0917BX2IWeDG/iEvwu0yivXMyKBQOvJlTZN2OdBYfuudGNDuJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=BsXDftef; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771867178;
	bh=K21kjy9qzrF9ypXG7rQNvPH2O306QauFy/abdov4/ag=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BsXDftefiIPUo9wBEuCnGW+eH0sGWoHtFskViUB2WUIk7UeGUDEwdN37H2Dx8hAqw
	 VSt5oHBb94OLuZb7p+Kp30EalU9tKFKhrdxna+uT0/w7jhLR1j6ZJD6SPXB9JyT8b1
	 Lzdzp9m7Z1wbQrZ4P7PnCvsWLNI7U1njaKVNARQtslKNW5Z8JvhHnsdJMA5bMjkDu4
	 B3SSFhrUvj/UIFMdzhuwXHg0hXhgmQfJ6vMvhRXrOyaTSsNZEJoz00cNYHTLY270dL
	 iB48v4ED6+xIJElC1oS1M2km1gQaGOMGUdhMDLHdtyhAwBCe0O8qaXmeyoi6WB2wqN
	 wayFEyy6Uo1Lg==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 66D6B17E041C;
	Mon, 23 Feb 2026 18:19:38 +0100 (CET)
Message-ID: <39f493a6-fd98-4cf6-9991-334ab4ddbbf8@collabora.com>
Date: Mon, 23 Feb 2026 19:19:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
 <edbf38b34e98ee039f45faab5aa5b00a585799ce.camel@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <edbf38b34e98ee039f45faab5aa5b00a585799ce.camel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TAGGED_FROM(0.00)[bounces-267566-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[1.168.49.192:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,collabora.com:email,27b00000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4AB0017AA8B
X-Rspamd-Action: no action

Hi Nicolas,

On 2/23/26 4:51 PM, Nicolas Dufresne wrote:
> Hi Cristian,
> 
> Le lundi 23 février 2026 à 14:25 +0200, Cristian Ciocaltea a écrit :
>> When building device trees for the RK3576 based boards, DTC shows the
>> following complaint:
>>
>>   rk3576.dtsi:1282.30-1304.5: Warning (simple_bus_reg):
>> /soc/video-codec@27b00000: simple-bus unit address format error, expected
>> "27b00100"
>>
>> Provide the register blocks in the expected address-based order.
>>
>> Fixes: da0de806d8b4 ("arm64: dts: rockchip: Add the vdpu383 Video Decoder on
>> rk3576")
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> index 49ccdf12ef7e..45eb0d053a6f 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> @@ -1281,10 +1281,10 @@ gpu: gpu@27800000 {
>>  
>>  		vdec: video-codec@27b00000 {
>>  			compatible = "rockchip,rk3576-vdec";
>> -			reg = <0x0 0x27b00100 0x0 0x500>,
>> -			      <0x0 0x27b00000 0x0 0x100>,
>> +			reg = <0x0 0x27b00000 0x0 0x100>,
>> +			      <0x0 0x27b00100 0x0 0x500>,
>>  			      <0x0 0x27b00600 0x0 0x100>;
>> -			reg-names = "function", "link", "cache";
>> +			reg-names = "link", "function", "cache";
> 
> I have a vague memory it was done on purpose, due to the "items" in the bindings
> requiring to follow the same order. I was not enable to run the DT checks today
> (some pythonic version miss-match issue), but wanted to raise the flag.

As I mentioned in my previous reply, I think we should change the binding to
allow using the correct order.

Thanks,
cristian

