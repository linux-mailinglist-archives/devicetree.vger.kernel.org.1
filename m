Return-Path: <devicetree+bounces-38931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E379E84AF0E
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:36:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A2F828166D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 07:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCCDF12882E;
	Tue,  6 Feb 2024 07:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QRawCnYN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B99D2C877
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 07:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707204965; cv=none; b=RaR80yqbLq6dSdbrdunLUELKiPKzWRtSO3c2OYKZ3r4IH9smrAw0IFX1vGeNP3HAaK1JdTb7BKzLFiAl2WAxXYQyu50XBDmHaE8UQx+bb0G2fPm48Z/tj/ZNyf3Ngw925wGjswzEIkhGwCxAYHoZ4smIBrag16YBhX1uhR20Kq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707204965; c=relaxed/simple;
	bh=DFskdFdCKPRzDv02Dcbg6y+WldIQKvyY6n0beoWbUL8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D2ynnIEWQZUXKDwEuX2WCOTtgNf6jMngrIr0BYCvcdKvPsSsN59ryk3U1niCA5DYiJJlAYafZIvT0tToru3D442ZSPT4v4pZMPQXjosNeJUvjyIGPxzQqpcpM/WshyS0MGCG4mfCvitVToTischBUdpEcVANe7fMI3fumfMq3yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QRawCnYN; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-511206d1c89so7483021e87.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 23:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707204960; x=1707809760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F3OS6JpXZ4JmhyvGCfnTkhLWlKdY/LU1F8HDg+hjeGo=;
        b=QRawCnYNpEj15F8Gnrb7srzO3ZA+5WdYLslGniiBP7iiPeLWmSB5nA13jSwqX0ddMR
         xXxorTUipsqy0wpiU5i2vQrK+QK5AUtbsNeuplC7M6Z0t9yyclsU5D4z50GTgQwuU5fk
         J8QaPGE71xSzIXWqvgjX3aKLVyOAoY8HGVc3VhtvA2xaW8bfQ+izzVpxCdeP5g/hA4JD
         EGa1qKjWAr838ahVRfX6iRZftvRwyYvgrVADQsBgBkXawXekY9/FXPtmVp1fdDL6EpjD
         utuuTOPR+dh+ZO4n+ToOWFhjxDp5UoWVeAzk8JMN+6I4fImo6mvVq5Yvr81EWT5bCCnE
         gNkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707204960; x=1707809760;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F3OS6JpXZ4JmhyvGCfnTkhLWlKdY/LU1F8HDg+hjeGo=;
        b=ey0bstj+r/AaCAv4wC1c6JgUDXUqUNo5U0I3PFw9hEa8KqfEajuq6MsiTbMjOa6QUn
         6GeRTImJORIxj84WKGzMPnzCkYhIFc9zRMNTgehvalAIgEoOWYwsPO0O/Umj+rw5aFAu
         2uTEdVWjKzRh4PamHCjE/4QEx3KAQUHj0zR8wlBdCuqxqX4bFvB0CYmjSBShYstyzSaP
         lqb0oNykgyKSw9XjO0W4eCcVQQLRPB44Ne3xSwS+V75YPNV0JK1iXITUl5cwXlKU3rsg
         kINfrp3E3nVvIDqOIgNBVqf9dS3oZt/IqM1h9HT0plAMgeInWsII9jK4P7/xx5gjZjiM
         TGtQ==
X-Gm-Message-State: AOJu0Yxl+OrVNGn1b1f6Qm9c8NyMNaebOZSStQpSMPdcG0htxXE9xGoX
	hB07IPkUQ1W8ut8K/OPkxOODSjZlH2v7g9m6o/U0y5X4j46sTfb48fm3Q7b2JR0=
X-Google-Smtp-Source: AGHT+IEQwiJurTNovZlvAvog7XlMM0FtbWRXxqKmXcb8W5DlY0wuT8cBeDM5vvdFKofVYpGNwVwx4g==
X-Received: by 2002:ac2:5184:0:b0:511:501e:1cc7 with SMTP id u4-20020ac25184000000b00511501e1cc7mr1218123lfi.44.1707204960464;
        Mon, 05 Feb 2024 23:36:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCURdP9tKaw6psAPYYg0/H0LzPhShvF4S6kiT5LD9ErXUDPvXmuFG0FmddwbS+89DafmrP43Y8hoLmT3OaBqIcF2xTniCpUlhSKkrB8a0hwxGoC0lVRrJAH1yTENU4cThq+s9VME9vtY7wuMKpU9IeQgqUoDfyL+j5lYtrmtRJ+GwphVbSaQNuNR3kZWzuh2oZIM7Zw3s7Qy2AKkBFyRHsj4DQrvJYqa9DLq7eCs80q/BmURwGr6OVSVot4TDSZZpT0xRAipI2+KTIxniSwxFU3J25KPOt4nJvccoSYRUnWhHn0KKoq0lPe14mAnvQ8=
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id h13-20020a05600c314d00b0040fdc7f4fcdsm1051245wmo.4.2024.02.05.23.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 23:35:59 -0800 (PST)
Message-ID: <47d66b4a-5608-4fc9-88bc-911f74d62819@linaro.org>
Date: Tue, 6 Feb 2024 08:35:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: Update pattern property case
Content-Language: en-US
To: Naresh Solanki <naresh.solanki@9elements.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Patrick Rudolph <patrick.rudolph@9elements.com>, mazziesaccount@gmail.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240205110244.676779-1-naresh.solanki@9elements.com>
 <8714b420-58b9-4d5b-a489-31670c8d325f@linaro.org>
 <CABqG17jfHpi5oDt+=E925Fp6DN2OftmDEjpmvb5=3nxMt+d2iw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CABqG17jfHpi5oDt+=E925Fp6DN2OftmDEjpmvb5=3nxMt+d2iw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/02/2024 15:00, Naresh Solanki wrote:
> Hi Krzysztof,
> 
> 
> On Mon, 5 Feb 2024 at 18:38, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 05/02/2024 12:02, Naresh Solanki wrote:
>>> Driver expects regulator child node in upper case.
>>> Hence align with the same.
>>
>> Did the driver have DT support before? I think no, so why aligning that
>> way? I would argue that driver should be aligned with bindings, the
>> moment you add DT for the first time.
> Yes the driver has DT support already.
> This patch is to align with driver:
> https://github.com/torvalds/linux/blob/master/drivers/regulator/max5970-regulator.c#L381

That's not support for DT, but just naming regulators.

> 
> It was aligned but I missed on case sensitivity.

I don't see the alignment. Where did you align it? Which commit?

> Driver expects it to be SW0/SW1
> but DT had it as sw0/sw1.


Best regards,
Krzysztof


