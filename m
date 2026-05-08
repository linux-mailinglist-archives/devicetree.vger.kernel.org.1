Return-Path: <devicetree+bounces-294294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MtMKlU+/WkuZgAAu9opvQ
	(envelope-from <devicetree+bounces-294294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 03:37:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A47054F09D1
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 03:37:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 74A773009E1E
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 01:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2FE82309AA;
	Fri,  8 May 2026 01:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="AcZjUBiy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49218.qiye.163.com (mail-m49218.qiye.163.com [45.254.49.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31EF21CA02;
	Fri,  8 May 2026 01:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778204238; cv=none; b=ivwsgSz9+a5zNru73EVoMorirzPzAgtev7I4eQahKYTOGthXR1Nq5uR7CEjuTgj7Wm3R6ojLxDGY0TxXWmUkqj7m1aHQaQMF8UM31IVLN63ve+VZ2/aKAKGGMv/hoU1YbSyGk9jvmQVe2YnhySvME1ae2QujdBnrIR97gCc18JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778204238; c=relaxed/simple;
	bh=QAM9SpNeWcI1nUyZxqgGlepnoFxLFbGQ4Aa2onxagLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jp86OHed8vtrYnQqa+jf0s/M6QF+MnDSDsfEQhr6rnTD765auBIiJGf4Ei9sBUSS8MnSr5TBiM1t8PT0ejy1pWPIjmM/K9h6PZrDXGN2ws3uGWrJaJeGSEOQdZ72sFhZY8xMkc+s+hKaffzm8W9xaZ4i2SzbfxTbqorxKbeTjMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=AcZjUBiy; arc=none smtp.client-ip=45.254.49.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.43] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3d8e35828;
	Fri, 8 May 2026 09:37:09 +0800 (GMT+08:00)
Message-ID: <dd63b7f7-e891-49f1-a795-861d11c55e48@rock-chips.com>
Date: Fri, 8 May 2026 09:37:09 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/10] dt-bindings: display: rockchip: analogix-dp:
 Expand clock-names "hclk" for the third clock
To: Heiko Stuebner <heiko@sntech.de>, hjc@rock-chips.com,
 andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, nicolas.frattaroli@collabora.com,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 dmitry.baryshkov@oss.qualcomm.com, luca.ceresoli@bootlin.com,
 dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260507112948.1115003-1-damon.ding@rock-chips.com>
 <20260507112948.1115003-2-damon.ding@rock-chips.com>
 <6496645.8F6SAcFxjW@phil> <4528155.7s5MMGUR32@phil>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <4528155.7s5MMGUR32@phil>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e053b3f2703a3kunm1660029036bf9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCGkkeVh5KS0sYTx9CTktMSlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=AcZjUBiyGiz3rie6u5vJ2JopoUch7T3yj8wOtjUtZVppBrALf6lZ9KkR60NM7+TvXv3TdxiPfBRhjsoUTKsslGeSQWWSSudjzo89u+oReBsxSUu72iTVYk5kfduS5SbTrBfwMl0OLw7cvi/YTZtLHr2F2eKmEYQz9peqCUnRqRI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=BUVBUOz5sUDHUQetR7revEkMQrBOhxD0zn0dGzL4myk=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: A47054F09D1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294294-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[sntech.de,rock-chips.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Action: no action

Hi Heiko,

On 5/7/2026 7:42 PM, Heiko Stuebner wrote:
> Am Donnerstag, 7. Mai 2026, 13:40:09 Mitteleuropäische Sommerzeit schrieb Heiko Stuebner:
>> Hi Damon,
>>
>> Am Donnerstag, 7. Mai 2026, 13:29:39 Mitteleuropäische Sommerzeit schrieb Damon Ding:
>>> The RK3588 eDP controller needs the video datapath clock "hclk" to work
>>> well. Previously, it works without explicitly adding this clock because
>>> the 'rockchip,vo-grf = <&vo1_grf>' property implicitly enables HCLK_VO1.
>>>
>>> Fixes: f855146263b1 ("dt-bindings: display: rockchip: analogix-dp: Add support for RK3588")
>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>> ---
>>>   .../bindings/display/rockchip/rockchip,analogix-dp.yaml       | 4 +++-
>>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>>> index d99b23b88cc5..d2bc8636b626 100644
>>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>>> @@ -26,7 +26,9 @@ properties:
>>>       items:
>>>         - const: dp
>>>         - const: pclk
>>> -      - const: grf
>>> +      - enum:
>>> +          - grf
>>> +          - hclk
>>
>> are you sure about that?
>>
>> The edp uses the vo1-grf - so what enables its clock?
>> For example the hdmi controllers on rk3588 also use the vo1-grf and
>> explicitly handle that clock.
>>
>> So who does it for the eDP?
> 
> Ah, ... found the hclk_vo1 in the following patches.
> 
> Still the binding commit message could use some more words about what that
> clock is, and why it can "replace" the GRF clock from earlier SoCs.
> 
> 

Yes, I will add more descriptions about this in next version. :-)

Best regards,
Damon


