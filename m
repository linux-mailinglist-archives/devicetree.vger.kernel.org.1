Return-Path: <devicetree+bounces-14071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9676C7E1EB8
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:43:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F97B281238
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B8216432;
	Mon,  6 Nov 2023 10:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LaxnwP3S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98891156D4
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 10:43:23 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9A12A1
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 02:43:21 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507962561adso5615486e87.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 02:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699267400; x=1699872200; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=EK4l5HF7xxlWSQTYmo3dGoTvrbNSR6x1ONnxE49iyKE=;
        b=LaxnwP3Stjbr1ttqDmeGvf0CQPQFab6UjmuCtHQ4jX9fv97NRLMDfARo0x9uxBaHI4
         U31CfcuOA58TQHBuIqyefgUxdamyNojG1BpWe4wGovoVBKWajnTgJ6jAZ6zDXYZddO5f
         rmfeSt4ZYdIpcjJjHgnKm/LuhLZV83dKctbJKA7BCPjoyISCCn4QrQJ5a+AKc02TVtvc
         AtmgzTSj4dwcysiu8F/3x+MqTN0YF1wO22V0NwUsDWDFtI0DC2q0Wnte2+4k3Auyzg+u
         e6xycFZRci6OPb+pT6CsVJ2RrcO97vYc/NcaigDqQ/dANNWNXdBcW1SYtw4TkDCPhMNZ
         U+5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699267400; x=1699872200;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EK4l5HF7xxlWSQTYmo3dGoTvrbNSR6x1ONnxE49iyKE=;
        b=eZ8nM0rOl/H3GcClvuwsISWqTUtebLy9vVxW0KpUg3vkXW/JGyrFbQYBk3kqkyfMYY
         fCWUTIz9w5OAxR1aZyl/EDU2y4LKasP1e5m+lQYkLify4OXZeRoCwRSliKUGzEEV6/Ax
         6DHNhCreqiKmO9wikucWZsS9mmFyrHk9+9DwXaKGd3s7ehs56z8YQqsWCIx8tgext2/P
         K4lYQ9Sooti7Srm5UP+RP0vMjHjf9vmh5ti9NufZDlzL8voU7xpyFgsbMg3T4io/Gv0j
         P5Munmq9nivwcPnu8zDyjgvsN21KNqjRPrxnlrdE73YjEfxhf27G+Y/UcBVciw23dFsP
         csnw==
X-Gm-Message-State: AOJu0YzID6cPRnSnG/E8yK0IR/hEgZNJoFbbSNGO7ABYpy2r8LAmXqTd
	VWBQPkeeP3n7XoC7pAQxXQXSKg==
X-Google-Smtp-Source: AGHT+IEuY4dAFuRUFbRqk9ROoWkyBZI0vf/LOEPY67+q6fLgjVF2+PrZtaJdiEfkQaX2csVRK5qlZg==
X-Received: by 2002:ac2:414b:0:b0:4fe:1681:9377 with SMTP id c11-20020ac2414b000000b004fe16819377mr20084251lfi.44.1699267399986;
        Mon, 06 Nov 2023 02:43:19 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:fabf:ec8c:b644:5d3])
        by smtp.gmail.com with ESMTPSA id f10-20020a5d58ea000000b00327bf4f2f14sm9113326wrd.88.2023.11.06.02.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 02:43:19 -0800 (PST)
References: <20231106092202.11127-1-tomeu@tomeuvizoso.net>
 <569e39a0-b91c-46f1-b55d-c9324d66339b@linaro.org>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Tomeu Vizoso
 <tomeu@tomeuvizoso.net>, linux-kernel@vger.kernel.org
Cc: Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 "moderated list:ARM/Amlogic Meson SoC support"
 <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Amlogic Meson SoC
 support" <linux-amlogic@lists.infradead.org>
Subject: Re: [PATCH RESEND] arm64: dts: VIM3: Set the rates of the clocks
 for the NPU
Date: Mon, 06 Nov 2023 11:41:48 +0100
In-reply-to: <569e39a0-b91c-46f1-b55d-c9324d66339b@linaro.org>
Message-ID: <1jy1fb9n7d.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Mon 06 Nov 2023 at 10:26, Neil Armstrong <neil.armstrong@linaro.org> wrote:

> On 06/11/2023 10:22, Tomeu Vizoso wrote:

patch title is misleading. It does not target the vim3 only but all g12
and sm1 HWs.

It should start with "arm64: dts: amlogic: g12: " instead

>> Otherwise they are left at 24MHz and the NPU runs very slowly.
>> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
>> Suggested-by: Lucas Stach <l.stach@pengutronix.de>
>> ---
>>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 3 +++
>>   1 file changed, 3 insertions(+)
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> index ff68b911b729..9d5eab6595d0 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> @@ -2502,6 +2502,9 @@ npu: npu@ff100000 {
>>   		clocks = <&clkc CLKID_NNA_CORE_CLK>,
>>   			 <&clkc CLKID_NNA_AXI_CLK>;
>>   		clock-names = "core", "bus";
>> +		assigned-clocks = <&clkc CLKID_NNA_CORE_CLK>,
>> +				  <&clkc CLKID_NNA_AXI_CLK>;
>> +		assigned-clock-rates = <800000000>, <800000000>;
>>   		resets = <&reset RESET_NNA>;
>>   		status = "disabled";
>>   	};
>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>


