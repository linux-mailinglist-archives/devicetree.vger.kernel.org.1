Return-Path: <devicetree+bounces-218661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A131CB82DF0
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 06:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB7251C21CAC
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 04:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C531B248F75;
	Thu, 18 Sep 2025 04:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UiINsWvj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB32B17D346
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 04:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758168988; cv=none; b=XNrXPzHfdpSR2S+PDXO7XZBI/slWQCgksFGw4+w10lgAR+fc63DW7kJI0l0+iUbM/EriQgWEFLV3xG31CjGaPFaxvfQa5yAaXS/swuLGAxOBm0nXazyMu96tJxL78BfJRT3UlFbbbHqu00Ijpt6HVdAfrs79HMVMVNoC6vCjgfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758168988; c=relaxed/simple;
	bh=teUWGPDqWxk1e6QP+tLmJUjqK3FLcVCTM1xLobbYDB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pl5JYRUZELBSinIHWqHe7pZIyEncTQCuqyHA7jWyhFfB4Phb4wP5o0LzCayf22bHw2IIzI1vbopi78l60K3NyhnGj64AECgZfitJuU9qfEVzcN99ba89jYZ+noe5cayVccRAUi2xlNiASBeK0/FnlWM9qQyUCtSzF/aNTA+Nf5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UiINsWvj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I0E60n003351
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 04:16:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yxrKp1mMNSorjFJ+jYSIIXoD
	/DQOcY1xttowefW1mLI=; b=UiINsWvjwplPQUD3By9AqxtrIJwg3QowkaKPWgjN
	q0ViT4aq+wuyOH6C0ZbnopUIC9Yegfwo3x8/zGmnEVjB19YyStyhJnkkUbzcYoWr
	PkVIvDNfXJP+CGHr+Cvqx6X0w01xuLFUoWflFxcsKI1nixuGr/iGm1i5HbKsW4gL
	UPYh697QsGks1BmMSCc605XxapY+Zw5Rsng+2eDD6lIZHpV49LyGG2smVioXW4ZW
	XuX3OtLa5IJ/JodMhoJ8DfdJ1D0mk6E+ldmv0p8jH1WQkwGwB0iEDdjaz6qVTfK0
	OZvC0fbn5NAWYlmtWHFzZ0Qbe976au09etBgOETIUuERRg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497wqgtec9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 04:16:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5ee6cd9a3so11526671cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 21:16:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758168985; x=1758773785;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yxrKp1mMNSorjFJ+jYSIIXoD/DQOcY1xttowefW1mLI=;
        b=sKNiF6CBXm+sMDqImgng4Av4QkYQxgsgN0VKjLoNHwRXdvFnUFPNjJWfdeoLv+eJqQ
         zQSVgi6BZpHeIdTXBa9eiAJAHS3NNeNRZ8/+PkerwlljdEnaaj/h2Z9WAHK1PkLDLRp4
         3qY31m/0qVLL8+b327u8fSGNIZbUQdZp172GUrNKgF+MoBDBBv+8d2A7TBhdBQtcboYH
         mI1OgcIoASc4gyvAxAUaR98ndG0ola27Ei/i6N2yw2YeN+kqgFDs7cs3Kl93n2kJOEVK
         MRyir0t1A+EntmYT88jdn5sFjsXBWfLBQMgJBD+thglSTB7rgYuFXKq35r5vtpoc6B6r
         9hkA==
X-Forwarded-Encrypted: i=1; AJvYcCXhUJwtdYUb+fF3mojCQ1o+Y/RbeMZTyi9xOjOtA9oXgHxohnVCZF/uKRMDCczlEpppEzTGcmuIVRrB@vger.kernel.org
X-Gm-Message-State: AOJu0YzG0Hj//EubexHeQJMBTggjOdFT4cr7ShKh8BXK2w71LJtIl1mW
	qSl2r1yBooFnk7jtdC/PrjVX3vpOYTaA65zYC6P+xY5/mFUz2BBaLVmF6k3YstlI8iiGSg/n24p
	VXEavXitVVrS/JLWFeGdtJJZZmxphYfN38SLhj0blohYUEayO80MULwSpERl8g9sz
X-Gm-Gg: ASbGncvgkfmthusTyOkEQxPzUJgj7ukN3UKSIxM4y4ITQrLrSGZExOJRctPfn9SwMpq
	3zhucVUCaI93txAkai4eAQ8K+KskkKI6FNq8rATz50zeivCBwCBiAZKbW1BuVIDJT1Sw5K/JH4N
	nW4HZNoWPGQLRZY1Ag00ufDM6y7fVczHAl5EI7BHigmK8iwNiL1hBBgi8GL15g4kVuEuBopR4ZI
	YDW5+hSnX0+eetiX0xSfasjqtR8lMQM2mcgn/b0SuebZ1DYXpMpdwyTJIwSoEtaNTD18IyVBgu4
	JywKK43xVYU+gKOOFAOZrC82C035fS6hjT31KH2r7dM9tqsjGw1MNWYLp06p2utlrQ7Pc2fHAfT
	psq+lolJ0PnHX0SBfKGAiZU8PX1KtLbKq1QsLCaL5Q6sttr7mLsr2
X-Received: by 2002:a05:622a:5908:b0:4b5:f1e0:2a6 with SMTP id d75a77b69052e-4ba6ae973c3mr69912421cf.58.1758168984620;
        Wed, 17 Sep 2025 21:16:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8E1DrYRb0Vx7N8mwDUw8Sx3L6iWLRByHuWqoKFSHq7uW/mIRDRIhwltCpukpzhFqll6bC5g==
X-Received: by 2002:a05:622a:5908:b0:4b5:f1e0:2a6 with SMTP id d75a77b69052e-4ba6ae973c3mr69912091cf.58.1758168984131;
        Wed, 17 Sep 2025 21:16:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a90a20a8sm352483e87.68.2025.09.17.21.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 21:16:23 -0700 (PDT)
Date: Thu, 18 Sep 2025 07:16:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Lee Jones <lee@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        christophe.jaillet@wanadoo.fr
Subject: Re: [PATCH v4 0/4] Add PM4125 audio codec driver
Message-ID: <vi6drjvj5xrqmcx5nooavnz3fsrzjs2fmwx2wrnq25waqyjrsd@hzspir2e5utt>
References: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
 <20250918-heretic-spectral-lion-86fdfb@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918-heretic-spectral-lion-86fdfb@kuoka>
X-Proofpoint-ORIG-GUID: bCHtkLc8EonCb2dbMKMbvKray6NlItMu
X-Authority-Analysis: v=2.4 cv=HITDFptv c=1 sm=1 tr=0 ts=68cb8799 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=r_T3I_alxc_9WHogHBgA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: bCHtkLc8EonCb2dbMKMbvKray6NlItMu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDEyOCBTYWx0ZWRfXw40anYR0Dyu8
 GR45geu7ZfgwFwKzzufuCMk2qhWpoPvJYR4LvGs058M9NfWLSCw1pIPNP2ixN3gjyqrCS8yRMBF
 q+OwiVO/AKgtClkWTV4C9/XaxRwIFS0HXNJAbe5lhutqNUODHaACsMfkffPCUMmczvo7fbCH+ZT
 NVHHCdk49InYzalozg2CLrI/KA5cwTHxsphv7If4TKVPvkEgEUKkjANZo54iUWE2I0+MZOHwrnG
 gBgvKUArXEf6CzNukmqJUuZTOAj/1v7MGrCmnwG1uGERfBry3+kqm1u/DMiUBFOi6FlG4OwSqc9
 eRDnYv0Ii/kvZ/6M6KQG1cvR6jERwbHHx+KZjLqbV+fl6o47BHXeKc8/htQLa8YcRryBFc46sA4
 aFbPU4Fj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170128

On Thu, Sep 18, 2025 at 11:02:30AM +0900, Krzysztof Kozlowski wrote:
> On Mon, Sep 15, 2025 at 05:27:47PM +0100, Alexey Klimov wrote:
> >  .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |    6 +
> >  .../bindings/sound/qcom,pm4125-codec.yaml          |  134 ++
> >  .../devicetree/bindings/sound/qcom,pm4125-sdw.yaml |   79 +
> >  MAINTAINERS                                        |    2 +
> >  sound/soc/codecs/Kconfig                           |   18 +
> >  sound/soc/codecs/Makefile                          |    8 +
> >  sound/soc/codecs/pm4125-sdw.c                      |  545 ++++++
> >  sound/soc/codecs/pm4125.c                          | 1780 ++++++++++++++++++++
> >  sound/soc/codecs/pm4125.h                          |  307 ++++
> >  9 files changed, 2879 insertions(+)
> > ---
> > base-commit: 590b221ed4256fd6c34d3dea77aa5bd6e741bbc1
> 
> git co 590b221ed4256fd6c34d3dea77aa5bd6e741bbc1
> fatal: unable to read tree (590b221ed4256fd6c34d3dea77aa5bd6e741bbc1)

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250912

> 
> On latest next:
> 
> b4 diff 20250915-pm4125_audio_codec_v1-v4-1-b247b64eec52@linaro.org
> Checking for older revisions
> Grabbing search results from lore.kernel.org
>   Added from v3: 4 patches
> ---
> Analyzing 50 messages in the thread
> Preparing fake-am for v3: dt-bindings: sound: add bindings for pm4125 audio codec
>   range: 6f3a32745b2c..b40852dc84c3
> Preparing fake-am for v4: dt-bindings: sound: add bindings for pm4125 audio codec
> ERROR: Could not write fake-am tree
> ---
> Could not create fake-am range for upper series v4
> 
> I tried latest master - the same. I tried also next 20250901 - same.
> 
> You need to fix somehow the base you are using.
> 
> Best regards,
> Krzysztof
> 

-- 
With best wishes
Dmitry

