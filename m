Return-Path: <devicetree+bounces-109372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3A4996391
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 10:48:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F172B262A9
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 08:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C01B118BB97;
	Wed,  9 Oct 2024 08:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="N3MsA3xX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A316D1891A8
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 08:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728463366; cv=none; b=asAskxRovnFKbpPOGw99aOJ6Ye5uE+NhcUnHgOtotfxNwjYsx4YM6UYxo1N4FsGUD/5z6u+sGg3doxFxYCoWMr6+2BehaD794Ekvqbh/XBqlGesRdJRlzyY1hogpfmI1Nx59vdm+8gbWcbyn1lkFKVIvaHLlCSUes+HfH3yNcbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728463366; c=relaxed/simple;
	bh=XhJiHPGo1+eCnZwKrwKtZoj+qGtS2ActqBF7GqOTjZQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tXk385DgHv+9qn43EnJ/TP4STrIUbtJSf8OOU2Qs/jQe+4nDzZGRFLnwc3TpyvJy7cQeK/SHeqANdaQABkHF68eVWw0IXKjiSrbLQrDOKCiTTx1qCoUzaKs4wBxIdPj19e09eNLREkA9D8BdmACcLTh75npxSdVYJcaqgLSVg3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=N3MsA3xX; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a9943897c07so555145566b.3
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 01:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1728463363; x=1729068163; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NCo1GlPGMO9qRjYk6NqblAPH+ivDBMcmdikYhCEoAX0=;
        b=N3MsA3xXYhA8BGicfckJzTKfIILQJylZFKBHAuYRpUMZCEwA/MGo1xlfMjbYrppwMZ
         1ABbNIaLsfWy+n8Jmcp8wGFMp3p0uj+e1t3wYhI4qL9QNlpICl5LZX23lNnVkMmbaHBv
         DEp/Ve+HON0bMnYDM8TZ1DjHpQ9m3QPEuyubq4S6VFwJ1cWDVuFZc2s02I1dWMgjGU0D
         i6gu7v4tWYpiAjOym8BXENecX5/8vPT46O4acX3v8gMjc51e0O2rc5avmUq9JgCtisGp
         lrggl7V+vqye8HtVY5xMd67EFvelC/sNNaMhrfo/TW+jzqv8cJhyNmH606Mqlv595Z+q
         xSGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728463363; x=1729068163;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NCo1GlPGMO9qRjYk6NqblAPH+ivDBMcmdikYhCEoAX0=;
        b=Kfwfwjp2sGqQrXPdMFXDO64sxARZK53lyadZEwNIGb6hi3B0emBGm4y6cedmchGEIx
         8ejxXNULAPUqRmshCkA4/YStz8Ndcevsob1AgZoKSUXH8PBocwDKN2WKlZ0I7rhMOxSr
         +zoS4VTfpNerVRH594SzaFZdH/DzmAbmh5jOWYjlSsn881buTNAuOEQjXBWiTFKB/YtL
         amElwSSIc1dTYFSg7tXvruJpGrdh2jiep3YA6YpPYczzyvC5sbChIHAPQeSIAMd6PgHD
         9Uiu0H8w+J6VcSOK/G2e3d5RyPhr5dRLqF5ndI6zF2cnuwLNI1XOqgdLqQW42dghGZ44
         GCRw==
X-Forwarded-Encrypted: i=1; AJvYcCXzekR3CcWSFidam0JWuhKoPlN7UcRkulw2NSf/8w+PdaUayutSXOKgFdp2rtLEOTJN2obNRXLKruxR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1porNPRM1fwBAtINSSTlfmbNM3h44BvMYoT/mcmpQbhL2D3NB
	wMPJCD4tKwWAQleKETABJOsRFUx1eepYjsdgRe2ISIwCp8ljWojdWQQptTfHVLA=
X-Google-Smtp-Source: AGHT+IH65Py6ZoVFXJXAzrfoxCpg11Zu8PXx18r+jrhrvKhS9cBYCLJYMJJAgnToJzsiU/Uro8/0AA==
X-Received: by 2002:a17:906:6a05:b0:a77:c95e:9b1c with SMTP id a640c23a62f3a-a998d1f6694mr148213966b.27.1728463363024;
        Wed, 09 Oct 2024 01:42:43 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9957c683d1sm365002866b.203.2024.10.09.01.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 01:42:42 -0700 (PDT)
Message-ID: <cbb9d3ab-ed61-43f6-aca1-8d35316c4ff6@tuxon.dev>
Date: Wed, 9 Oct 2024 11:42:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/16] arm64: dts: renesas: rzg3s-smarc: Enable USB
 support
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 ulf.hansson@linaro.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-16-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXbNRO--0ZGO4owi3At5n1dTMMWo4PTaubyNWEkVnPFFA@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdXbNRO--0ZGO4owi3At5n1dTMMWo4PTaubyNWEkVnPFFA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 08.10.2024 18:16, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Aug 22, 2024 at 5:28 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Enable USB support (host, device, USB PHYs and sysc).
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>> @@ -144,3 +188,20 @@ &sdhi1 {
>>         max-frequency = <125000000>;
>>         status = "okay";
>>  };
>> +
>> +&sysc {
>> +       status = "okay";
>> +};
>> +
> 
> To avoid regressions (/sys/devices/soc0/ disappearing), enabling sysc
> is a dependency for "[PATCH 05/16] soc: renesas: sysc: Move RZ/G3S
> SoC detection on SYSC driver", so I think it makes sense to change
> its status to "okay" in r9a08g045.dtsi instead, and spin that off into
> its own patch. 

Good point! I'll add the dtsi changes into "[PATCH 05/16] soc: renesas:
sysc: Move RZ/G3S SoC detection on SYSC driver".

Thank you,
Claudiu Beznea

 I am not super-worried, so doing the driver and DTS
> changes in separate patches should be fine, as long as they meet each
> other in next or upstream.
> 
> The rest LGTM.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

