Return-Path: <devicetree+bounces-84178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD4F92B44B
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 11:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 772CAB20F87
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 09:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A96155382;
	Tue,  9 Jul 2024 09:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mH9RaYcf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB14613B7A9
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 09:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720518385; cv=none; b=fM3eOaL0tAexWt7xC68L8MQhUHNtZTSblQD6+NozLu6DdeElL/T7PkuEm7o8v83QSD8zI2yndgdHtl0QokLuwKYh9l8r5JfErEPqeoyBGCrajZ2t4NIEBw2OlF/Hy5s+hC4U4BL4Zys04RM6LfGtEFX0b9AjbbP7Z+9vfIPpxak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720518385; c=relaxed/simple;
	bh=xrX9189y3J6RTL9wsavIida+ycAnE1HLJ4O+uVBj2NA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a76uIgNIu8Z18NcSQ9Ovs7toXOqOZmvm/nFRzLfPCjZEYc7PomD9byn21k+ii+j1jljDXpqHHrHqYruUgFGIJSdSqcnOAhG+xDEpf98nsoJ8Zy64RuYeD0DZqBQYfkBYk9EdF0cdBkU41B9rzstVj55UMHcuPqFDo1RovgNcBJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mH9RaYcf; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-58b447c519eso6005714a12.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 02:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720518382; x=1721123182; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xndzXPaOahAfjvRuCniO4KjfCO34NFKI528Yw+eLHAU=;
        b=mH9RaYcfzGjv+AkSavGyyq2EBkJym+eyoFHZU8iXnMSi5qK+s4WHqYpPd9PuB94P4E
         N1QfB/wRRNzec3h79GLkJth3H7h6g4uUKe/Y+TASj/BgcOQkrMOGSgk7Bz+AHnHm2L/k
         N6r7kzElcbkazufjqCsP+m05qAWkAWuAa8sWmwTamW+gY45F1r6GmktW+UUopq/tF67x
         mBH8s780ufKTN0JNL9DdttIqGYuZ6Gea10rrFGELAn3GcnXx/P15pJP6gZEUBNR5qAMV
         H6klOF/3kmX6o+DiLR1EqM7oPpJlk2hYfOsd2Fj/iiGYGo+yNn7w8+MubK5LTUJjYt7S
         dgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720518382; x=1721123182;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xndzXPaOahAfjvRuCniO4KjfCO34NFKI528Yw+eLHAU=;
        b=E3Y1Y2mC6cCMcEQtxrXtairI26ThJ+CTHYesTIa4Xxh38+boc0BRcTmiC901CMGLAB
         YSNWK37m9PsBGET31cmCOgG9X13YW2Tnztoz460Mm0Z2JpzbVU3gdk9LkFsEImiQ/tio
         RGg4i1SxD89Nqgb8rX4zBVt3Q8ZYFJnTgTtLc8huwRjl/jC1AyMp12x+9L4C+hvISV0F
         jxH+e5wHW/gMtRFsLQB5eupGVuUMQLYusNxG4+oGEAjvb1gZueysnqpgrOkwymzMW3Wq
         vfeVp0mK/ssdRiAq2fpg6RKocizUlKVTp0+zamMPWFA0pR1eEjWY7ir6vx0YfHr0uNgE
         5YUA==
X-Forwarded-Encrypted: i=1; AJvYcCUMwej+v2hdBay/HPVAXJW2vKlneyKutmtxSR/Y8U7fE7rAGW+TfIFDGpKc5AabjLghlst5BiisPpQuL8qYT6xB1wJ53mObYhY+aw==
X-Gm-Message-State: AOJu0Yz5WPQEq52knS1gp/eW6ju9/j3XWjutDC4PnoODjeZciwEtF+Qk
	O9Y9V4XAlxN28JJEMd6rHw27bCUDGIalUDpX9nEHd/JwG594RVxhgRgUNnMOdFI=
X-Google-Smtp-Source: AGHT+IHjPy7oHxBkWuRW/Jl+7QaB0fxfudKtoUsrHhltTvPwL7lfVnDuCLwUMhpeiB4EqK+93Z30TQ==
X-Received: by 2002:a05:6402:517a:b0:58a:e810:227d with SMTP id 4fb4d7f45d1cf-594ba59f8d6mr1113424a12.21.1720518382094;
        Tue, 09 Jul 2024 02:46:22 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bd45a162sm849610a12.68.2024.07.09.02.46.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 02:46:21 -0700 (PDT)
Message-ID: <ac53d26a-b2f8-4172-987d-b4fcbb7f6e51@linaro.org>
Date: Tue, 9 Jul 2024 11:46:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: sdx75: update reserved memory
 regions for mpss
To: Naina Mehta <quic_nainmeht@quicinc.com>, andersson@kernel.org,
 mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, manivannan.sadhasivam@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240709064924.325478-1-quic_nainmeht@quicinc.com>
 <20240709064924.325478-4-quic_nainmeht@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240709064924.325478-4-quic_nainmeht@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9.07.2024 8:49 AM, Naina Mehta wrote:
> Rename qdss@88800000 memory region as qlink_logging memory region
> and add qdss_mem memory region at address of 0x88500000,
> qlink_logging is being added at the memory region at the address
> of 0x88800000 as the region is being used by modem firmware.
> Since different DSM region size is required for different modem
> firmware, split mpss_dsmharq_mem region into 2 separate regions.
> This would provide the flexibility to remove the region which is
> not required for a particular platform. Based on the modem firmware
> either both the regions have to be used or only mpss_dsm_mem has
> to be used. Also, reduce the size of mpssadsp_mem region.
> 
> Signed-off-by: Naina Mehta <quic_nainmeht@quicinc.com>
> ---

Thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

