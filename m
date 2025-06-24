Return-Path: <devicetree+bounces-188863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E279AE5D7B
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:14:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0A1F169DFC
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1422624EAB1;
	Tue, 24 Jun 2025 07:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lVrpx2Bh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE421F463B
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750749273; cv=none; b=IwG0dA6rOM153sMgK9sQCrMZONzhrq7YLsFVA4M/tyaSGFnHCEt3eOtnbwCH5SMyc+FjtYD7GPXSV+2nGorWLfTY72QUrvtA/FPB6laOjVCx3bd1QbqEDvJpFsVSBIVtGQPr47vfjgBjqfcngT6gYFKsywZVU2zaQy2ciu53tf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750749273; c=relaxed/simple;
	bh=nET1gJEsQoUnbclWMzIn4J/kW3aT/Kgp+JNFW9tmDAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XVFduVhTF2oIzjNutUMUcFDKH++XZOBi8HuyUZT1NVk80n/75ThKsnr4d9HrMy3dKNuF+aHBdvO86yT/jjYKhpdGxiGwIFA8f6cBm9jW81AlQc2uFyk14ir0MrhhsGSIa2wbQsaqnVOGjvXrnD7803VO5byWO4y8MSzNZMoSNeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lVrpx2Bh; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-adb2bb25105so800644766b.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1750749270; x=1751354070; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i3O/kbdN1R6dzhK7EawM1PIi5N4Kg7zW17zp/dNMj1c=;
        b=lVrpx2BhgYIzWopTvY9/D3KfCg4rnlRwDdXedxgwj7U1PfFDTNvX52NIrgkmdqMZ0j
         miYVcNLpQ7FNaPwituJKxl2Iji8Oo4Us/wN89CE4bnFwS4bMx92RsQoY3P/PGrsB7JYX
         P+sXoq9mTFt2RrRDoU5K5JHX7akuEKtKnNeqjqB8+kb/YGVEakCztPiapf5E9cs9P/zH
         c+NYaDXvSERSXVDCIdvK9g/MgkKKVu/9Wg5MuqKTlGmogmUxj8ejxiOe8ggoAYVY4+A/
         EypTQW+kPnlragj/U6cki9g8aItLfCCKpHSgyPMGbxA2YCsLlCSdoK/xgRItPnZn7u1h
         uozQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749270; x=1751354070;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i3O/kbdN1R6dzhK7EawM1PIi5N4Kg7zW17zp/dNMj1c=;
        b=hXpnIjVqJXZllFH2cXeN94Cz9B3ruxa6JwuzoiBfFvP+KG9Nhvmr+kB+NCzMGIp4wX
         TX6sw+kq7j/Xo5aaEyrJGo889nqEqqBgXxYD5u9Ik7e5MiGLmwHwHDu4SYCoxs3Asrqy
         yk829U7vaqdFH5A97Rz4LfULWPU0cMZ1Y1wt1xzcjs2ctu+jh/t+vfJlHO/TmI/nddFf
         GpMtUqTGr0F7R0gpXNjmMs7n7YZOX2Vl4GmEUG5ZmUNHUWwu0w4KAwiheX78xKheACLh
         LF7TVOt2+qmUvx+uZnbEexTGvN11LQIoZFH+5m52UaEAis10ZTrX0IeJ0CiCj49hkYaV
         uFzg==
X-Forwarded-Encrypted: i=1; AJvYcCWwL/4IZMtcWHDeqKBDs/txKDKkaCv/N7rzWv1kEODsAF6r/YBpjavE7WXw9xCuh/M8fQ6xcw27Nttn@vger.kernel.org
X-Gm-Message-State: AOJu0YwsJTOzGH2SeKBs1mbssdUNdTnrLNc3q/AmmuKdrNYXWH0i9HtY
	RIsAYRcmDHtv5u22k982E94nNlSdxm4trftQ3x7FX58eZXG1sFHIrvJzu3oE94mx0Is=
X-Gm-Gg: ASbGnct2NY7jLbymF4IOElw574pVplCrbe5irl2IiwHWgvXADo3795/RnYLD4nAkFF/
	e7CleYDDIq3QuUDYIV2FG48FxaL4bMzPMP65xrwx+jIi5Hp643ATnhxR3I+kR0RJ9FN4eJBpfSR
	9Rhj4iarKQjJZX7MVd7nY2thKQ0sJCAiwfaEvMxS0O4KjgZpbkhVh3gMLeGlbMIhGmkUW4+skxT
	KyoDEVUiotVmu3NQ1CpL2fRKUu/OHeCn7Ewu+Hg99CQ/9EwJPJNvtdnfub2HJbO19m1vfaRO0KC
	S5NkUDC60dLKruT157BgAoN/X7rncJU21Us/zT7WGuBywb4aOahd3K0NTMfJtzCVd/AAEz4=
X-Google-Smtp-Source: AGHT+IFyqZi3XuHoAqSel9NcTyM6a8to6TnnNAlILz2CVQlPmoEe8VkJjYi2Jq9ty/8Rh1HMu6sWxA==
X-Received: by 2002:a17:907:e2e2:b0:ae0:b3cd:8f32 with SMTP id a640c23a62f3a-ae0b3cd91cbmr16862866b.11.1750749269565;
        Tue, 24 Jun 2025 00:14:29 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.110])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209a40sm837830566b.173.2025.06.24.00.14.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:14:29 -0700 (PDT)
Message-ID: <c3ce0abd-d924-4c8e-9cce-39d694a19418@tuxon.dev>
Date: Tue, 24 Jun 2025 10:14:27 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sam9x7: Add HLCD controller
To: Dharma Balasubiramani <dharma.b@microchip.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250611-sam9x7-dts-v1-1-7f52fcb488ad@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250611-sam9x7-dts-v1-1-7f52fcb488ad@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11.06.2025 12:17, Dharma Balasubiramani wrote:
> Add support for HLCD controller.
> 
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/sam9x7.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
Applied to at91-dt, thanks!

