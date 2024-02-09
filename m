Return-Path: <devicetree+bounces-40283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BF884FFFD
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 23:32:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68880B2A2E6
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 22:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9006D36B0A;
	Fri,  9 Feb 2024 22:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KX2iXUnq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60983A8C0
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 22:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707517769; cv=none; b=spw30R0qG0kwbeVTVTbcvI9XqzTmHD3C62SrSGU/ps6jCUN4Kffg4viXSMygJvnTqvRuMN1MGmwAzH8LmvB0/WWYWL1lY6lliTSW5TRf41S0wynNZF32vxuTX+mm1D//TCsQbxtorIcvfiIxBFMrHjbH8UisuIg3qZzhl7cY0is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707517769; c=relaxed/simple;
	bh=Un6PaDC8Emq1iA6yz1uySpgvepIkNQIGm+mhsu7E19Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sOQuKl3/jKJQBWB0vMIgx0d95XPZft0cDYX3PoxgEBZj0AMFrumZb0dmXPVECGnSft+dpmgPTMOIT9EvM0CxtVkMsRnqqCrXi2l+rBMqkIqtNvhPKpqOoOzUriz8sPTwoSi8a5mvbvaykoijf+VFcDyaqppMNcUqDdHg3X1KQBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KX2iXUnq; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a3864258438so258575366b.0
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 14:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707517766; x=1708122566; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8aiX7ZNdqacOIKahGPpkSyWMFB4oOes558vKxM3hI4k=;
        b=KX2iXUnqxzc/HL2GB/E3FjvaEhMu6S/bUDJtoeuIi5nbbjVKhazkzee5heh2/MCxhJ
         beykUd6+jgwH+NNshbXcaJKfe0/OFIAtDhRE1tkRb9EqVocth06GosKA1Qmsjz1STa/y
         UBhLqZlfH5YkRhuYkyazUKaWfD+p6N2Fkr5o2vgLyKmTYyE86aQljkgdYnXJk6JpQUZ0
         FeKVtCDmDOcMDJ+bvwFUk1IOtiJxCOH9XZ24bQnWC3AaFKsbYEfRQIiBl2esMluwNREs
         QUvlu4tcfH9XbKMx4IoX9bBTzmwzM2Am9rznYst3eKJR7RIvgjJZWdN2Y3wy5kcdHHmL
         bZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707517766; x=1708122566;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8aiX7ZNdqacOIKahGPpkSyWMFB4oOes558vKxM3hI4k=;
        b=KSd4wi1/z3fdd49UyKvoyQ93iKaBS+OmcIcxgqqrmoRvrr58MFeJC1Hinnu0/C9kHD
         iO2Y841ZsNBzVY/mEk/w59EVoQvg/EwAS1KAd57KaMnONNnoyjCMWUKTHJEZcTM/cQmA
         ct/gkz5MaGac5lr+JxEEI0dudkZRZPQSpvlqknFId+0z3rwc9QEBKjzzGy9AA6x3zLxD
         Y0t1CLtEgYbYfvvgw4hl2PMWP10FcXz13ljQkey0NIsDuVpKRMKp15SMCbmQMfXOCnEq
         MgeroaYHbsxflDruZSJb0hCsViXXIWJNK978LCxtpgi0LxzT1xn77YZARb7waReJH37c
         jN5g==
X-Forwarded-Encrypted: i=1; AJvYcCW6pVmAlzTT0sWlHheCm3Yt11Tr8TpH0Uh4PaH1FlUFUoTLlEY1sSHFFbKlHGstQU1zjJhpiA73tb99ChPkBSHadKDb1QO6Rl5e/w==
X-Gm-Message-State: AOJu0Yxd2i+jHlPrtvYhw9hT8bcnhhJKRq+RKDdbUIpwGE7LsphmQsxF
	sjnF6iTt8kKjnnJKvR41Ww+OB3ITT2S5Vv3yXl+iWqrtoXIn3muzXknY5M+a6DI=
X-Google-Smtp-Source: AGHT+IGguzm2GpxTw0dOEAN9qj8dPFsxG+/rb+b2d0+NxHO49svas9w4CXNcbb4NIJ7FQIlFWa7Qag==
X-Received: by 2002:a17:906:718e:b0:a38:6184:10ac with SMTP id h14-20020a170906718e00b00a38618410acmr397997ejk.28.1707517766172;
        Fri, 09 Feb 2024 14:29:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWj3w7VCZnwx2tBOTzVv8e5LwtuitEXVqwUO9YJ9DVj4GJ8yDYp74BsakWq/34tdnrLicrtaqfnGtk8rBNSAAGqg8mKuVsEp0LOlUp2iIGiLnXwkO/OhmDrvognrYfnkfZYtdsuEls9Qo+l39ZUtUAxv2DLlX4OH7z7xDCclZnUOFG4EWrPVoX57o4R5u9/0G3yKzr9RTO/40I3mpxvjna6MiypkvsufCLMFwOOGESfWk+v7zB3wOoJZVjnAZPwpZyJj0TMPKwq/TvyDu5M14vtLP5Q94OKB8vGDrEwNSETLjA7wRpxg0cm48gT9XQQ03mxezsyilA3bZ1YNyavOCgwJpPvwAbQTSg4s8qVWdv3cLFGToKin8u87V4o5GiB0ijClizbX7zoTWZVKlHroH00BSquG6iAPrgbRFXi/BavM1beYhG4FUyS5IRCfvrSOgTcjRZ7bcDeXJ9EWfMcmhpQCk+IeM7siPMoE5n6cNUiZD7rtOM6963+NoInF3ht3EnFAKjXUTXgMwWA9MtQ1vtIJ4zc0ZJJe57424+T5RPOZ0Ox6rZOonXOQxy/O5JlsGV7Hu0MjbBKl0WX3o0/wwIZZfsAUD816JFyqVawh8GmNg==
Received: from [192.168.192.207] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id hw13-20020a170907a0cd00b00a3820ec721csm1167406ejc.8.2024.02.09.14.29.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 14:29:25 -0800 (PST)
Message-ID: <617d37ed-4900-4934-abf9-450b8d416e1a@linaro.org>
Date: Fri, 9 Feb 2024 23:29:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] arm64: dts: qcom: msm8996: add second UFS RX lane on
 MSM8996 platform
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Nitin Rawat <quic_nitirawa@quicinc.com>, Can Guo <quic_cang@quicinc.com>,
 Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <andy.gross@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240209-msm8996-fix-ufs-v1-0-107b52e57420@linaro.org>
 <20240209-msm8996-fix-ufs-v1-5-107b52e57420@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240209-msm8996-fix-ufs-v1-5-107b52e57420@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9.02.2024 22:50, Dmitry Baryshkov wrote:
> Describe the second RX lane used by the UFS controller on MSM8996
> platform.
> 
> Fixes: 462c5c0aa798 ("dt-bindings: ufs: qcom,ufs: convert to dtschema")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

