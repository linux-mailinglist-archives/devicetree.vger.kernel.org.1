Return-Path: <devicetree+bounces-46922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B3D86B3F4
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 17:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54168B213C2
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 16:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE4315D5AA;
	Wed, 28 Feb 2024 16:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="idppjIXM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9416215D5A4
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 16:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709136061; cv=none; b=SNf8qcHtxDJ7Kboxtm0JT61JiGwaCmXN5wa6cdtuNFUcB861i2nJAu3zQDz9G52pmBw4upvY0OLDKFX0h1VIWdjpnOTwjIQPEpBB6DCl2JN4HBM9kEYIvRlBL9E8mfpkNWfR8Og5V0kopZwTnrM4yG4z+M8q/VRd6J1hkcA6gcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709136061; c=relaxed/simple;
	bh=mjroxPW2eHBhaXXEBNaLZsRTmzRxKrpIIQVrF8G1Zpg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rlVx6hVS3eo4Wy4omqwKi9942fKhUwZsC53Rs6w3Jx4lrs020Q774zif2jL7fenYOxMMxxWm6MdFpUEE9OmnySXWvbXZ1IqUSKhNC1MphAh/1Le9li8ZzWr2ktCPHoQqI/wgN7toO7excq53ZTQ3eGk9VTzb31yXIbiftfgQ/xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=idppjIXM; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-412b493ed27so5307685e9.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 08:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1709136058; x=1709740858; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1qOgqKolcgCMqkLQDBYRiEWccklZZF6TtDAuL0z45LU=;
        b=idppjIXM0ER1DMayERYLmhj0Bnh9kj7T7eLvD3E+KtnVN7YZXOMY3qPk1J4j1+FI5q
         F4wIZj2c4XjNzVHlFg6GBtdkeAlP7//LGVB713g1T9vb6iQlU42Dv/vYDa3p3Q7VsN70
         y+yD3gwMmw57wmUxnNdUW/gvGw11l+oARSqGGB1DbSWrPnyjrSl/jyzs6nHkehbaDfHG
         5OpfYBcSTMVxchnax20a6loyoziLUZ/0XmfeOu3kMn5XW/08gQpsVnh05G/fApcmA3np
         o+vvnp0DCrIWdWbIZRrbUP+7V2s5zsrQHbJPd9ajJElQmSznkgBIaL4TnVjGLiJ+QAN6
         AWvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709136058; x=1709740858;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1qOgqKolcgCMqkLQDBYRiEWccklZZF6TtDAuL0z45LU=;
        b=rH3ynxNaH3wGfakUMf8hD6IayY+lTa/DdXYSW6CAompTQJT1y8nSAcOfXjPIpPELGC
         Zts70GlONZDhUKDcuPcgx7zt8J0UqkCJnsd4p0ax9QlYyYthGOC8E3rnSjWV5Fv0O39F
         GHqwLqoZHUSCnlYrgJd+IC94WCIvbqqfxgYAkTM+33HokWQ8PrJU5L9LVDxj5EIqrPVe
         XoUwsM6mxMEEsiEqOA+hKBO4yeon4UT6Li2Y8sof4UczdR9UYCg2Ellbu1xvc2w4ecbi
         VQFWsYK95FLBAmV3p/ZYlQzH/PkNQppFuSq7aNgFuC8npVtFNAQ0tlFyKaWfEGXXYrzp
         nbgw==
X-Forwarded-Encrypted: i=1; AJvYcCWMLwEWTyKCR4LnJqB8Bp8poKd+hiVXZ6/2eV6TfLFbvrj0y6hYdSH8Tpns7CkenA0Pp/fiP0q5O/gaED4yg+1VIvmt91cE62eVdw==
X-Gm-Message-State: AOJu0Yx9LsWnkyKPDC4pm8idFw7FPGE+cLyEScNEm0x5Gvw7FSbs+rEZ
	G69dBt8mbmn24cdq9xQkaO+8E23K9Tbo92044GIun+OMDl05J5wneT2USmZWLYc=
X-Google-Smtp-Source: AGHT+IFN2sCE6PE1xyjuz871GiSbf8TCRVzfrTClfeivGcowaSF9sD8L32UjuIrf1ROZJrtBJdB69Q==
X-Received: by 2002:a05:600c:4ece:b0:412:a344:ea95 with SMTP id g14-20020a05600c4ece00b00412a344ea95mr6394878wmq.14.1709136057810;
        Wed, 28 Feb 2024 08:00:57 -0800 (PST)
Received: from ?IPV6:2a02:8428:2a4:1a01:6dfa:263f:dd7e:9456? ([2a02:8428:2a4:1a01:6dfa:263f:dd7e:9456])
        by smtp.gmail.com with ESMTPSA id m21-20020a05600c161500b004128f41a13fsm2450042wmn.38.2024.02.28.08.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 08:00:57 -0800 (PST)
Message-ID: <73d85158-6286-45c3-986e-22850fa20c38@freebox.fr>
Date: Wed, 28 Feb 2024 17:00:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
Content-Language: en-US
To: Jeff Johnson <quic_jjohnson@quicinc.com>, Kalle Valo <kvalo@kernel.org>,
 ath10k <ath10k@lists.infradead.org>, Jami Kettunen
 <jamipkettunen@gmail.com>, Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: wireless <linux-wireless@vger.kernel.org>, DT
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <14daa98e-7fd3-4ebb-87bb-5d2c1fba679f@freebox.fr>
 <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr>
 <d8c90f33-d0ab-4d73-9580-2547446671a0@quicinc.com>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <d8c90f33-d0ab-4d73-9580-2547446671a0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

[ Adding Jami Kettunen who documented the same issue 3 years ago ]
[ Adding Jeffrey Hugo for his past work on msm8998 ]

On 28/02/2024 15:59, Jeff Johnson wrote:

> On 2/28/2024 5:24 AM, Marc Gonzalez wrote:
> 
>> The driver waits for this indicator before proceeding,
>> yet some WCNSS firmwares apparently do not send it.
>> On those devices, it seems safe to ignore the indicator,
>> and continue loading the firmware.
> 
> Can you list the product/hardware/firmware where this is observed?
> Would prefer to fix the firmware if the issue is there

This issue is observed on an apq8098 (msm8998) SoC using
QC_IMAGE_VERSION_STRING = WLAN.HL.1.0-01202-QCAHLSWMTPLZ-1.221523.2
according to /sys/kernel/debug/qcom_soc_info/cnss/name

We are not the first to run into the issue:

https://wiki.postmarketos.org/wiki/Qualcomm_Snapdragon_835_(MSM8998)#WLAN

"Currently if you get FW details printed in dmesg from ath10k
with nothing else seemingly happening, you'll most likely have
to fake an MSA ready indication"

https://github.com/JamiKettunen/linux-mainline-oneplus5/commit/088eaa9153803e2b028e092f88539036442da4a3


The issue is also observed on an F(x)tec Pro1 phone (msm8998-based)
with unknown firmware.

The issue was apparently also observed on the OnePlus 5,
also msm8998/sdm835-based, also unknown firmware.


If the firmwares are signed, and the signature is verified by some remote proc,
then working around the issue in the kernel seems a more pragmatic solution?

Regards


