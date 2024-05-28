Return-Path: <devicetree+bounces-69776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9728D1794
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 11:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD0F91C21EEA
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 09:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABE5157A42;
	Tue, 28 May 2024 09:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="ruypxRws"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49C9155A4F
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 09:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716890082; cv=none; b=oqinQuHApBFuc15fPzVBmv1VczeFJBpNp6bzjhBYny7bgzmsyBdaATaCoyScMUBJk+z8liNbx/PeIdiYeLqGImwsiAhWx/k4MLCcyKTlG9OH7LoNIyvcNivsRs+bCkKFKfuUNcVeOXi/fmc3Sj9hFGRo9qupiSbXTBe4rVK6F7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716890082; c=relaxed/simple;
	bh=SybdU/r39hJTOGi3oDXSj45HlcUBafnMrek6K0mJ7l4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j76/RZDHUGQ5UqemRad5QXvK4PehKu1mYcQ7/nY0x+u46DSyFyObjv0c76ImLSR+qpCeATTeeSv3Nsm3Q6nEdr1ChjJADG6KfWEmZFuLAMV6Cj62Ti+td2bgULzypdGeHWnFSdFI9CAD646+YgWlI/9Pp5ibsjDCW5DcygLv7tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=ruypxRws; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-420180b58c5so4473795e9.3
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 02:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1716890079; x=1717494879; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oWYisXjJ7RIo5lhbJSv21znch1qUWj7f8daCXXniaDs=;
        b=ruypxRwsLSWpZ3UIDqPfO+p4bXYgqLXvpJx26Mp/84+fyfOWYOprFVPrhpmt2s9qHD
         ieDfG9AU/gaUF7ds/dcSQI/U/oCHlbsI3+DHYmXcG1pqqaX2NfMOglkO3+eWPH9RO8q0
         WRM/t74J9IlDy4W1xXziA/RXDXMbKOmeI8/y08uIL0jcmzf9Naol/BqBTABTCF7FNfk+
         4H9RFvLUHJB74G81plBjjaF0+zLtFxSu2wWjBFxs3DHst447r70zYbJMBlOuWv5muq3/
         SmrpqjtvlVRzzlmp0BcZu+qVVOTVOIiwTSF9vHuzlrs4jFpmjvBQ2L0p96x6Rw13lQRy
         jADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716890079; x=1717494879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oWYisXjJ7RIo5lhbJSv21znch1qUWj7f8daCXXniaDs=;
        b=T3y69ilu8St+eKWiYKtiWoNpuKxOl4I4R9l9nBchhxLJxK06Nwi4G85y2JnaEi8vFS
         6QKyiBTbgCTdjScOSiusIDONZ/628t46VpGCYWYzqGvoRAXQAAakLAKCduEhA/M9LrIh
         x9eJV+tZ9fqLHu9RvD458OLFkfu4bAmCeDSM/XLKjxPCQFlw9mX9HljM0nD9Yh+VVdRG
         dFV9ARfu3X8pAJgMcQtBz1MIJ99KdixRbt99oGTQCVUebkh8Vn0/dJf68LroUUfplIxC
         pMUpdnPPx6RCcnbCf0DbdRNnl2JcpEZwlk7G/LBD4gfDRN4jft2+GZRzeecc3jmsCWRK
         4Anw==
X-Forwarded-Encrypted: i=1; AJvYcCWlb201TWaD2Hi6LXVUxplKk9RurtLJJsf2sh/7YXFKOkyBnTIeMtLnCKCFgEKIOjBEYnSOBg4C3hG7ylS9ROyycepXEOwheJFU0A==
X-Gm-Message-State: AOJu0Yx6H6hvCAXmQYoqkUsZCv67Snn00+0+9BaFVYFtauwXj4ajmizS
	KGu4pEAwRdSNBaiOnE/KXnv/0AU+z+f1ofcnpNUq/+4vkfGv6K5igsg022FavoE=
X-Google-Smtp-Source: AGHT+IGtbEJvc0pZFif8+rjy+/1MtcLrU3cLsbt9CAfpx8NrU6rjdJ01tQfYMRj5877jciysw2vZww==
X-Received: by 2002:a05:600c:54cc:b0:419:f630:57c2 with SMTP id 5b1f17b1804b1-421089f98d1mr89925095e9.37.1716890078820;
        Tue, 28 May 2024 02:54:38 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42108989fdesm136479995e9.25.2024.05.28.02.54.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 02:54:37 -0700 (PDT)
Message-ID: <3464a980-36a7-4ed2-b2dc-be8fd9091b06@freebox.fr>
Date: Tue, 28 May 2024 11:54:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
To: Kalle Valo <kvalo@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>,
 ath10k <ath10k@lists.infradead.org>,
 wireless <linux-wireless@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 MSM <linux-arm-msm@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Alexey Minnekhanov <alexeymin@postmarketos.org>
References: <54ac2295-36b4-49fc-9583-a10db8d9d5d6@freebox.fr>
 <171560975908.1690511.498631481702370762.kvalo@kernel.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <171560975908.1690511.498631481702370762.kvalo@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/05/2024 16:16, Kalle Valo wrote:

> Marc Gonzalez wrote:
> 
>> The ath10k driver waits for an "MSA_READY" indicator
>> to complete initialization. If the indicator is not
>> received, then the device remains unusable.
>>
>> cf. ath10k_qmi_driver_event_work()
>>
>> Several msm8998-based devices are affected by this issue.
>> Oddly, it seems safe to NOT wait for the indicator, and
>> proceed immediately when QMI_EVENT_SERVER_ARRIVE.
>>
>> Jeff Johnson wrote:
>>
>>   The feedback I received was "it might be ok to change all ath10k qmi
>>   to skip waiting for msa_ready", and it was pointed out that ath11k
>>   (and ath12k) do not wait for it.
>>
>>   However with so many deployed devices, "might be ok" isn't a strong
>>   argument for changing the default behavior.
>>
>> Kalle Valo first suggested setting a bit in firmware-5.bin to trigger
>> work-around in the driver. However, firmware-5.bin is parsed too late.
>> So we are stuck with a DT property.
>>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> Reviewed-by: Bjorn Andersson <quic_bjorande@quicinc.com>
>> Acked-by: Jeff Johnson <quic_jjohnson@quicinc.com>
>> Acked-by: Rob Herring (Arm) <robh@kernel.org>
>> Signed-off-by: Kalle Valo <quic_kvalo@quicinc.com>
> 
> 2 patches applied to ath-next branch of ath.git, thanks.
> 
> 71b6e321e302 dt-bindings: net: wireless: ath10k: add qcom,no-msa-ready-indicator prop
> 6d67d18014a8 wifi: ath10k: do not always wait for MSA_READY indicator

Hello Kalle,
What version of Linux will these be included in?
(I don't see them in v6.10-rc1. Are they considered
a new feature, rather than a fix, and thus 6.11?)

Hello Bjorn,
Will you pick up patch 3 ?

Regards


