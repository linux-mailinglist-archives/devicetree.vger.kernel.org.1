Return-Path: <devicetree+bounces-57093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A22B89BB74
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 11:17:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D9CA7B23176
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 09:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40C947F62;
	Mon,  8 Apr 2024 09:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p+HA3Y1u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEDC4645B
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 09:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712567822; cv=none; b=bYCJij9pR/dEiBYUvzmvQodC7xUOy6B93Zkc2Youe4SCYvnWwXpQSblES0z8DzuqY/fpwpsS5+8Be2U321S06dlPCp44TxUJCCTXj3NaejAtrJt5OmlidkhoNuox81oEk3ogpQ7nTGdf7FCxegGSFvDyyoGw9xIs198zMh6IbMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712567822; c=relaxed/simple;
	bh=ydZJw7d35Ff9MPe3LKMKV9TaBpQgVGBrz9NBba+U30U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cwzy/rJzPxbu4vfU9x661SUsHPO76qUeKzeBi8irvFcseE5RZp/jmEB2mtSfn/bHV5o96CuRAMTVKYsN30TmJEeTj8Z9NfSStiddRcWtLbv78gExKLF+ttq6hwTXt0r27rV1z6Bo2lxSUHHPksrzScnnwk64kbqbEFo6wMc1Ccw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p+HA3Y1u; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-343b7c015a8so2643825f8f.1
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 02:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712567818; x=1713172618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kyn/nAbJTaoSC8qDBWXGUmDfOwA1IOLpAo8aFHObHYE=;
        b=p+HA3Y1uGsNot0aTz+OdufmZB4YkQPySa3c4TJFx0rmI4E2PAgDSotgYw5J6nv8Ka5
         pBC5b71Kpdu+DBeBhta0Akk3N4lmR296RQViEfKenMNtNEnCefGlX7Zm2jrL1/eG9X25
         UMQubMkIoTEFnuxrNUMDjw6sBE7DvZyHRM+8zqMM8Mgdkuiktf+7+FFHiXVWgY1LmlBh
         BsHJQKV1P0v5ma4qeKi9cmdcCTRUMMbIo1GNOsR7I8bAN9PbHOE/GdaUHRu1UE7URovu
         CV2TQeyg3iQn14kN9A3T1sSwPHENxKnjxiCFR5aqXpmagGmxzqdNOAqKZG5pvIQTLOFV
         g8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712567818; x=1713172618;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kyn/nAbJTaoSC8qDBWXGUmDfOwA1IOLpAo8aFHObHYE=;
        b=GwIXcSOYB133UtxmVMvi/fTVoqR8KmstGHI0NxmM33O3oRXCgYWNv+6cUIxr0qH0Jr
         90yxhUdS8057sPMes97y4ytRZ6GPbVxJ9yIEPH9AzxswSuhJEjwfZswL5Hvq/yuXiQoe
         8HCl0s206S7XA4oJDpGjvL094znxi/LYOvCxxEwz4thBAB6WF/DYjS8jcD7lcpfZG9Is
         rfA6cBJ5G+yJqoKxcg8sNh5jqbipHBAGbXsc1niz6KoiuwM0OECKzRbqbEj6qNvVpvaz
         iJzUMZbnwTY3v2CIbY3dIx8ekisZr5h8J6Dqwhc2j6TVXrE7KA8SDIcJZxLxhGzICPDp
         iWAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWipoTOxBG5CFF8bxwkXDiVJndSgQRwGPlKU+cAJ9oWUOk8ifaptzcdh3GhlEzzQg+pB6CwrcRzuEky970v/L6RM/rB29PMdDsZ8Q==
X-Gm-Message-State: AOJu0Yzedg1qAIxr9Ka1kEh72qHXKDUgif/g61fibZ4kKGGf0R1wUhJh
	eqszFj2pQHkz3f9UovW/oBS1s7/KJfW5P9342g3i0TOEAR1IJDpD5pB5FLpEMUY=
X-Google-Smtp-Source: AGHT+IFbW+GZvWtDNwC+hUfv0CeQti5p0/4Lt39sOJliVc7683eESlFh87O+IacxG6iRBQDyz+nk9A==
X-Received: by 2002:adf:f28e:0:b0:33e:3bf3:a097 with SMTP id k14-20020adff28e000000b0033e3bf3a097mr5598241wro.26.1712567818504;
        Mon, 08 Apr 2024 02:16:58 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id q8-20020adfea08000000b00341c6440c36sm8586391wrm.74.2024.04.08.02.16.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 02:16:58 -0700 (PDT)
Message-ID: <499dc405-a292-44c2-860f-db78ad7becc8@linaro.org>
Date: Mon, 8 Apr 2024 10:16:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND v3 0/2] Add support for QCM6490 and QCS6490
To: Mohammad Rafi Shaik <quic_mohs@quicinc.com>,
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com
References: <20240408042331.403103-1-quic_mohs@quicinc.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20240408042331.403103-1-quic_mohs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 08/04/2024 05:23, Mohammad Rafi Shaik wrote:
> This patchset adds support for sound card on Qualcomm QCM6490 IDP and
> QCS6490 RB3Gen2 boards.
> 
> Changes since v2:
> 	- Modify qcm6490 compatible name as qcm6490-idp. Suggested by Dmitry
> 
> Changes since v1:
> 	- Use existing sc8280xp machine driver instead of separate driver.
> 	- Modify qcs6490 compatible name as qcs6490-rb3gen2.
> 
> Mohammad Rafi Shaik (2):
>    ASoC: dt-bindings: qcom,sm8250: Add QCM6490 snd QCS6490 sound card
>    ASoC: qcom: sc8280xp: Add support for QCM6490 and QCS6490
> 

LGTM,

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

--srini
>   Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 ++
>   sound/soc/qcom/sc8280xp.c                                | 2 ++
>   2 files changed, 4 insertions(+)
> 

