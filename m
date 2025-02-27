Return-Path: <devicetree+bounces-152005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C71A47BB5
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 12:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD57B3B76C0
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 11:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF74622B8B5;
	Thu, 27 Feb 2025 11:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IzR+uqXk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5EA022B5B9
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 11:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740654759; cv=none; b=lmiZEogatcFlrenfcnp7iitIqSWw+/bIpQ1TLPuuJIg8dyelKPGnmnWqjAr5t0EFUq8UqycsZpspMHlUOcg4sd2zfYdLReD+3JS9kM93wHzEVkTKmjUpkW520DMkd7LguTL/09Z+yTL2qe17MGd6xjELOHvmSIyc25BGN5TAcDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740654759; c=relaxed/simple;
	bh=cWvQd45e0S+D3yV/mKOMz2NTuAJ8xsra4qpJ1phNXVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MaJaAVTpac+1WeppG4YEmtbGeF852c+08tS9OLU6QVLkS4efBPX9HBLMPvHQqjoV9QLT/OcVyhiuGEE4SybqiIbRAjy5Pmv8aP4jSpr9N8qg5BQ+jNelqb1e3Ehj7JIP5l87N4SjwSNTus+SdmxpQphfmd36iK/MVJ1rqfp9W9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IzR+uqXk; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-390e3b3d432so443059f8f.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 03:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740654755; x=1741259555; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G+ydNLQoguFN2ZMM4/Ua1quaGwPmvX9Lj6xdcBbBMyE=;
        b=IzR+uqXkXPG/4Ax+x2zyfJvyw05xHbgmM8KbD3WZ6/UG81omfIo6ujjcA9YBO/aFo7
         clk24RC5Dbfr4+GPnR7mxe1tB3C4gSc2cW6mb4Z2EYPto8zAiCtXFPTYRwXknd9LVDEk
         jcVCZR54S7BTO/o93/vG7Xt/dWt8Tchrff9XZ3P9Not3hyBo0Pg333Ahf+XFxCbMQ00S
         wG5NgS06xOLPXN5E+4vf86xqRnKc159fjmxNsfgnLgqSAGrH3MF4i1AlIWBmGpmYI9E3
         LE3ttoJX11xM6d2ZOKOv4e9Qx0OKDKjfnfg1QwhmCwY+C0bWDzjBSBw0tAp2vi98yi5+
         pW5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740654755; x=1741259555;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G+ydNLQoguFN2ZMM4/Ua1quaGwPmvX9Lj6xdcBbBMyE=;
        b=fHqdXLvwfC9KHn7UZMRgWKby5JwdaLb2ak9qPoX1BfXSnWN875LzhOgIuHAcxSqG0G
         G60ZNUgnSgFc2jRw/Td2ZL9sEFoAfmOSfkqf3gxTRewPilsuPo9JJMKv6j4CSYFG9cP6
         RtbBnRXS0/gpbUBqu457v689e870gOZ7dSODUzi54UImLD8jZ0XvX+1VVpiFvVd1PfNn
         TzHkez4mp4hHSZ9HuvBCcyud6b/gxySh7YcV0PmgREPbx/mP2SqaYEdMohzRHd3KmJX/
         r/i9J86p8DoaCeruIaB965zmLWwsNXdG2QPsu4tBTvjhidDA0lePW9+dHK/DCPSfZFDv
         Rh/g==
X-Forwarded-Encrypted: i=1; AJvYcCUc0papWPs+N6VJ6wLtWlGpFdkoNQMnVZwnY4wGsICOUUFlQ8ZTQzR5duMvONB9iJ/6DaTo+br1N0tk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2MEFJZgNSvDxDqahGqoYObosChyg3WXij4YNvHufMQ0gdReqk
	78ZxoJqp4EQma20clldKGfNW1mfM8+3Lnq+mS9wdNbYXaYmetYXcmQXnGoE3rnI=
X-Gm-Gg: ASbGncsYi5GTXf8Aq/hqhz2nb0A5F2XQg3DiQEEQgzQoGckRrMeo5CgTOvMq1yfLCG8
	hbyPNsvQeMx5ek5OKcBg7t69TdlBjBdZGkIBAbakFfjgHenX5qkBhy7bqOLA6hOt/EUgCX9xgPb
	auft/H1uBjKE9sYnIwnd7Hi07xbU5MhxcUzc2TzuWIGq9fFm8jbF1btNTykJ64J+LrTEE62P0h+
	c5/50MxOcR/c2xJXqrpiWU0czRkZr5lKvk9eyCCQQdFEUtjHUzcHtnITz2EaF1Elqp7F2tf601p
	x5f+gXGHzQd4Pkew4FDS0d63dwsZC8zYUhocKfSg20sNYiUN5AsvPe3xawIHzs8K8Ks=
X-Google-Smtp-Source: AGHT+IGsu0/E8jwYIek/GteGM+K/6JJMnT+CYFPA/DJ68QSbr9KadQE92Npw2peeqfSDb/VDW47cJg==
X-Received: by 2002:a5d:6da5:0:b0:38d:df70:23cf with SMTP id ffacd0b85a97d-38f6e9470ebmr20449134f8f.16.1740654754906;
        Thu, 27 Feb 2025 03:12:34 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b7a27aa69sm18821095e9.29.2025.02.27.03.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 03:12:34 -0800 (PST)
Message-ID: <d12ba10b-6eb3-4344-af50-dba80c79791e@linaro.org>
Date: Thu, 27 Feb 2025 11:12:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] {vision/navigation}-mezzanine: Fix overlay root node
To: Nikita Travkin <nikita@trvn.ru>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250226-qcom-nonroot-overlays-v1-0-26c6e7605833@trvn.ru>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250226-qcom-nonroot-overlays-v1-0-26c6e7605833@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/02/2025 14:29, Nikita Travkin wrote:
> While considering to propose WoA EL2 dt overlays upstream I was looking
> at existing overlays and noticed that some of them are broken: they put
> seemingly meaningful fixups into the overlay's "/" node, which places
> them into the overlay "metadata" itself, not into a fixup fragment to be
> applied to the actual dtb. This series fixes those two by changing to
> full path "&{/}" which should work as it was initially intended.
> 
> See demonstration of the problem below:
> 
> $ cat base.dts
> /dts-v1/;
> / {
> 	compatible = "fake,board";
> 	fake,value = <42>;
> };
> 
> $ cat extra.dtso
> /dts-v1/;
> /plugin/;
> 
> / {
> 	foo;
> 	bar { baz; };
> };
> &{/} { whatever-comes-next-after-baz; };
> 
> $ dtc base.dts -o base.dtb
> $ dtc extra.dtso -o extra.dtbo
> $ fdtoverlay -i base.dtb -o combine.dtb extra.dtbo
> $ dtc base.dtb
> /dts-v1/;
> 
> / {
> 	compatible = "fake,board";
> 	fake,value = <0x2a>;
> };
> 
> $ dtc extra.dtbo
> /dts-v1/;
> 
> / {
> 	foo;
> 
> 	bar {
> 		baz;
> 	};
> 
> 	fragment@0 {
> 		target-path = "/";
> 
> 		__overlay__ {
> 			whatever-comes-next-after-baz;
> 		};
> 	};
> };
> 
> $ dtc combine.dtb
> /dts-v1/;
> 
> / {
> 	whatever-comes-next-after-baz;
> 	compatible = "fake,board";
> 	fake,value = <0x2a>;
> };
> 
> In the resulting dtb foo bar and baz are missing.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
> Nikita Travkin (2):
>        arm64: dts: qcom: qrb5165-rb5-vision-mezzanine: Fix broken overlay root
>        arm64: dts: qcom: sdm845-db845c-navigation-mezzanine: Fix the overlay root
> 
>   arch/arm64/boot/dts/qcom/qrb5165-rb5-vision-mezzanine.dtso       | 2 +-
>   arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> ---
> base-commit: 8433c776e1eb1371f5cd40b5fd3a61f9c7b7f3ad
> change-id: 20250226-qcom-nonroot-overlays-bfe21d33be8c
> 
> Best regards,

This is a good find however, we should just drop these additional CMA 
heap nodes as the reason for their original addition has been superseded.

libcamera can now use UDMA buf for the same purpose as the CMA heap, 
without the security concerns of CMA to distros.

You only need the CMA heap when you require uncached physically 
contiguous buffers - for example Hantro on iMX but, this is not the case 
on qcom hardware.

We can safely drop these CMA nodes for CAMSS.

---
bod

