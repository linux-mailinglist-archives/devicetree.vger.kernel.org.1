Return-Path: <devicetree+bounces-34227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE23839232
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7772CB26609
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68FDA5F55B;
	Tue, 23 Jan 2024 15:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wUTA0JaM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A25F2605A3
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706022578; cv=none; b=sy1XGUDb2+7/8ySm0DoQS/aqmjiUCEp38UujYN/XKhzkaf3tt/374kvSFyPky+HWkWM1E/6CHNI9pFniItmtzeS1zy9L2RiaZf91Upp+iFWlJbYR5WbgWkRsdz/LVco8msoAmLATZpDbdH8bcOUKoGcRkXygIBHqJNhNgu1zLu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706022578; c=relaxed/simple;
	bh=FC12r15c8qoJ56xscNoWLmRKP8OG5vLxG6qsu5FpU0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A0gD1gudsvR6Dog/tx3wbrSsTchfV5lhcUrsn71rSDwu6v4Rl+TK5mnXtKX96jbxstOn57tadUMhQ/K/pnjE4uie+M6rPxXbT1fXovAqdphuPtk6Gxl2YhLUOScQ7gRWmerbz3//nrmTCIpYJ0rTwgLVi/08Pu5A00Xcu6p/YU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wUTA0JaM; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-337b8da1f49so3935696f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706022575; x=1706627375; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E0YK6sTszqN6wf/65nVYY49AEDvllrXDOsB5a2JLKho=;
        b=wUTA0JaM1WU8KGDDtpJ/3rswlgtqMdU/OyuAcNriP+tSe3WLyWmKhFaL13SoKiKgxf
         KMsALtVmnFZe82AuS2sF348cH6IITxeGLmBHXXAfAd9pFEFSvv7OeMyAI40+dVyqhbZa
         ycL/VuqjYCT35h3YolCkMrr6t4IJqA6INb/X6CJzQwaGoMplOydaSs2fS5I+IqHDl4Vy
         bdnwcRJ0cb6SkVyIPYaOycsBVCSWTHh3RwBhoylU8xAZTVHoPCd9uEGSl9Gb0ndCBUrm
         BEGThT48vSthzKSQErMnv2oo0v5Et+FthaUSR3vNFqnyEgawXkhmeAkWcHv/0Ugeq7wf
         /x/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706022575; x=1706627375;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E0YK6sTszqN6wf/65nVYY49AEDvllrXDOsB5a2JLKho=;
        b=Rodd7SS2UhnwwGYgay0y88sbiypS0osIw+Gsz4p4dxoTVXACvUqo7+a5rry71dmiS0
         tjzJfgWjApjlzJqbY5aEip/w09F3Mb7CEGOlWFNKMgxpFBrRsKLEuqk1gnrNN6DMx1Qo
         JSVINM0OdSYOvurMhd4HP2Rx4JVpXGirDJiOYiWJalJzO/ieXNfAkMAuLN8FyCWqqnKp
         +28AZZViOSXzRZ/cMdOBdUzCwV63K6tzCFJNQx4GMa/SlB64h7YLxW9wJvFbCoKPqoqX
         UTfDO2dlrdTJAIMfH7CaItMyJhxTXwVpMLF1qFGBNLpGDwZGbOpcanUByLrs7ulA6YAu
         3pDA==
X-Gm-Message-State: AOJu0YzutoSH5yVi+PajfO/Ur+GAYDff5OYZ+NbMeRc5n4O4hwsIaS1p
	u1fxQUnLPbdOzI5vEsLJsnykDEAH6zA7+avnxD9Eg1MAQdFMXLEojFD150V1+ys=
X-Google-Smtp-Source: AGHT+IHUeqf9aiTISpJgFGpaVzshf9D6yund4OvXIARA/X68tz51m0R6JFCIJH1A5WBFEyFsP9ieoQ==
X-Received: by 2002:adf:f283:0:b0:337:aa17:c8a8 with SMTP id k3-20020adff283000000b00337aa17c8a8mr2130906wro.213.1706022574849;
        Tue, 23 Jan 2024 07:09:34 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id q12-20020adfab0c000000b00337d8c40ff7sm12599140wrc.3.2024.01.23.07.09.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 07:09:34 -0800 (PST)
Message-ID: <08903b30-b321-4f13-b8a7-ddd31a94ca5e@linaro.org>
Date: Tue, 23 Jan 2024 16:09:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC] arm64: dts: qcom: qrb5165-rb5: model the PMU of the QCA6391
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>, Alex Elder <elder@linaro.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20240122182158.69183-1-brgl@bgdev.pl>
 <98925264-badb-4954-b542-9287a0c7d184@linaro.org>
 <CAMRc=Mc+GNoi57eTQg71DXkQKjdaoAmCpB=h2ndEpGnmdhVV-Q@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMRc=Mc+GNoi57eTQg71DXkQKjdaoAmCpB=h2ndEpGnmdhVV-Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 23/01/2024 11:04, Bartosz Golaszewski wrote:
> On Tue, Jan 23, 2024 at 9:30 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 22/01/2024 19:21, Bartosz Golaszewski wrote:
>>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>>
>>> I'm limiting the audience of this compared to the PCI power sequencing
>>> series as I wanted to run the DT part by the maintainers before I commit
>>> to a doomed effort.
>>>
>>> Here is the DT representation of the QCA6390's PMU with its inputs and
>>> outputs. If I were to implement the pwrseq framework that would be able
>>> to assign the relevant pwrseq data to the consumer based on the actual
>>> regulators and not abstract bt-pwrseq or wlan-pwrseq properties - would
>>> that fly with you?
>>>
>>> We'd need to deprecate the existing BT bindings but unfortunately they
>>> are already described as consuming the host PMIC regulators in bindings.
>>>
>>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>
>> Please provide lore link to the binding.
>>
>> Best regards,
>> Krzysztof
>>
> 
> This is the one:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml

This does not describe your PMU node. Maybe lack of the binding was
intentional? In such case I missed it from commit msg...


Best regards,
Krzysztof


