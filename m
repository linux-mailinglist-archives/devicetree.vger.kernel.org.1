Return-Path: <devicetree+bounces-206793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EA7B2D941
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB16F1C46A7A
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A73342E339C;
	Wed, 20 Aug 2025 09:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NlKIlU90"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5002E2F14
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755682859; cv=none; b=LhiCSquhwMbHWYtSIK0niJQm8oQpPQZyX8nKWPZt8Plh/DA0dORkX2VPUFexiv23NQrp0o093dEXtn4vERaVzhLvPucuGmpo9rjDVmU38/2xEiAp2Tq/z1xIl/MTM/Uf3eBQvT171sLerynSgI6zMB8CXB46X+Ew/oXTn7i23ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755682859; c=relaxed/simple;
	bh=pTVx/c7v7MNwSE85DS5ROcGDXqyxeTPbAbsaxq9a8VE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tRTz29G62yZjenv4J2rmYNAfNhVMpLV4nPFkd4EqVB6m5EyTo0lbW+wPmcHdiUKt0xp6zZ8wDB96Kh8fqiD6thOhKjZnfRqooNVHL9T7vHEnHZCJn+Cd70KU7a0jGov7pvFudHL0Af4e1nV3qH44/Pnn+JjYqGMdtW6PWe3BWt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NlKIlU90; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45a1b0c82eeso51506925e9.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 02:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755682855; x=1756287655; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yzzsV1XvsxlzkLd9loB0EUOGKZo196ybFa4QKb2RzLU=;
        b=NlKIlU90l1/TjezKDMR4DpoIMk273lERZ+uJotAYJJ402Hts/SYKrdiMs4fCVgo3Fs
         wuB0cUQzBGc1dWGuibrZ74pgLUe3sbs3zlpa701WVLmklzADGCymtY9o3JV4x1+fCb8z
         XEVWpuNyt3AYRhGZN0d1DEOML/h8kC5qRrAz5YS6oo2mt+ppZ8vdikWlInILBn0oVhM9
         qO4J9sjUyqvZ/7NGm7tgumN0SAo+2XAlHapN0JcOIoLL6hue47fIlqGsXoKfK1/vn9dr
         p+vYajI1KHlh56xjEt5UuAJ1BT1TihVvGqKH3bdQMz7BJQ8aQfjli4sJLJJbgHAtXZ1c
         YTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682855; x=1756287655;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yzzsV1XvsxlzkLd9loB0EUOGKZo196ybFa4QKb2RzLU=;
        b=JwjbSoRUjhTHmgYMqsmfWE4q5vZDpY+tMqX+vM+D1aDlwFoe2iRN1mV6PorTp99EpY
         z1Az+Z0t1nqZ63iR/Epjxu2QQ6ssSsPxdvjPh5Ud+jAsmEKAfAVFMhLu7UVXdq9dmgKP
         5ekBeWM4I7LpDBMY5AcDsLy797B+TyIveQyby4aTFjGrSPgO10wlY9+IJRS6bbPK8eMO
         FffpkPOej7leRf/agoNAH1ncI1U6gDuueldTWCE/E2uUi4a8xHhJAtOf3U9S6jhu9Qyj
         1Gn2Qor4rlwmiesAJI2B33BqePxgxlYSkYfC2Q7R3oWHrdNA05nKreVz84YX33dshy0R
         t5AA==
X-Gm-Message-State: AOJu0Yw72Mk+gmaisn3Y/hIJAPQBPpNcp50MzhAUZHOTD4EU25Z6YPvP
	rX6jIj+ioIjN34015kWIykvGHg+CSyH++k7Ryiz467z7IczMSHQr3Q6LZvfdp8yjIhDoVpPeKy0
	/fxr0
X-Gm-Gg: ASbGncvKhu2xJDt96dVqJXxdM1KF2F6hslxWSajoNZPNvXlbDT62S2sU1iAYlgG8akb
	LszSkWwLlyWNpt9u81G9Xp6JVZqAQ7ghuN9d9uVDsUqgQ6GlGOgAsib+SGXQ0scRqeTCIFv9f70
	jpDcmsRNGSeKcBoFxDSf+YgdMvmanfkNE3CbvhnOCO5MNgZpOjSBkPXl+GxkjnuAF5FE8UleeTF
	A3BmjiGzKbj/NHvecwMpRIodXN0Q+A7ewLYzlrCwvmNkwsOTDGEz0gzB6SoRHgukcdhZmMtjnUb
	Te4tqUPxcfB3KMb0ejmKyAm0Wu01GK7KBc81Vhv/KsoQMpiQOLov1ypMKt+4GqqZpHQScBnqICF
	P6adgdzCyx7xB1ivLcsSapEB1HdagqIJVgJoOx2o/FM+2GdBDsS5gfJa3qrlaKzBvzkzeszRZ82
	v08w==
X-Google-Smtp-Source: AGHT+IEeghXw0m6JDZS1d5MhVcQIQaVDe3djwuj01U6mfo4wAkk3Pv0FB0hXUATB2KRJRFAtHH/lOg==
X-Received: by 2002:a05:600c:4584:b0:455:f59e:fd9b with SMTP id 5b1f17b1804b1-45b479f3a13mr15577625e9.24.1755682854663;
        Wed, 20 Aug 2025 02:40:54 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:620a:8b00:70df:79b5:b54c:4e1a? ([2a02:2f04:620a:8b00:70df:79b5:b54c:4e1a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b47c4bd0asm24800545e9.14.2025.08.20.02.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Aug 2025 02:40:54 -0700 (PDT)
Message-ID: <31361b5c-32de-4618-bb89-f550f03b47d1@tuxon.dev>
Date: Wed, 20 Aug 2025 12:40:52 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as
 required for RZ/G3S
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, biju.das.jz@bp.renesas.com,
 krzk+dt@kernel.org, geert+renesas@glider.be, kishon@kernel.org,
 linux-phy@lists.infradead.org, yoshihiro.shimoda.uh@renesas.com,
 conor+dt@kernel.org, magnus.damm@gmail.com, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, p.zabel@pengutronix.de, vkoul@kernel.org
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <20250819054212.486426-2-claudiu.beznea.uj@bp.renesas.com>
 <175558495459.3265640.2032619822487575179.robh@kernel.org>
 <20250819133744.GA87211-robh@kernel.org>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20250819133744.GA87211-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, Rob,

On 8/19/25 16:37, Rob Herring wrote:
> On Tue, Aug 19, 2025 at 01:29:17AM -0500, Rob Herring (Arm) wrote:
>>
>> On Tue, 19 Aug 2025 08:42:06 +0300, Claudiu wrote:
>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> The reset lines are mandatory for the Renesas RZ/G3S platform and must be
>>> explicitly defined in device tree.
>>>
>>> Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
>>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>> ---
>>>
>>> Changes in v5:
>>> - none
>>>
>>> Changes in v4:
>>> - none
>>>
>>> Changes in v3:
>>> - collected tags
>>> - rebased on top of latest version of renesas,usb2-phy.yaml;
>>>    Conor, Geert: I kept your tags; please let me know if you consider it
>>>    otherwise
>>>
>>> Changes in v2:
>>> - none; this patch is new
>>>
>>>   Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>
>> My bot found errors running 'make dt_binding_check' on your patch:
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>>
>>
>> doc reference errors (make refcheckdocs):
>>
>> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250819054212.486426-2-claudiu.beznea.uj@bp.renesas.com
> 
> No issue here. The QCom folks have broken "make dt_binding_check" in
> linux-next...

Is patch 3/7 in this series still good? I can't find any issue with it locally.

Thank you,
Claudiu

