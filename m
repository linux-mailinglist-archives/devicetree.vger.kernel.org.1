Return-Path: <devicetree+bounces-126903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 099239E381D
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 12:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBB4616999A
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7991B0F1F;
	Wed,  4 Dec 2024 11:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BKthbUhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C0519939E
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 11:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733310021; cv=none; b=Ot1xAYMF6D9Gtq2AtGYzSLrywcqQLo5LE538t2lVVD5pXQX2/10z0/VlXtHEKr8LsT9pAK2SS3r9VOsTWEpxdET1Y9fUOffyH9MsGejJSZv0vJz2gtnqaSQJ7HGoD6iFDOjpcm9juRVoYyCOtjplxucgrFGcubGgaWM2gpdj9a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733310021; c=relaxed/simple;
	bh=hum9XH/iQEVn6rvdWBZbw3PzECry8JMXGpvWCzKve8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N8cq4gtGMW6TcqQgt2EaXvMZM/ZMh08rAi2ufBpnbcSGg/p4F7xVQg70PpCMvsa0csLfQBNnzqBiSCI6p+ytyqE8xQuJNR1Tv1zLNwTWY0vf25HJGBk98wDigh/ObfV2Q0KK1JwLC5plO/XfDQXVtmz89XdaKWLdTrVrz9b1Ylg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BKthbUhy; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ffc80318c9so68511101fa.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 03:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733310017; x=1733914817; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GJdH0FDAVg0EEk1mbuvWK42ZlhNl2Kz+F54+9FBuNwQ=;
        b=BKthbUhyePhBpmj2P0hk9/uENeQYTeP4+h7v6jtQEiRpsna3E62hBKQCJaEfag0b1+
         g2jBQhO4hC++ngNtuWkOqX49gZh2H5RDtKZpO7xtOCMs4FL7t9QZJf4r8j835jx9Lnee
         bUPOuYzMjQF7QWzcfGqK7HmfZzeh2Em46m2111LcFhpnMU0Idju4WKlols+r8NzK3KKc
         QJAj4ATooFpyudbjJVUxngt63h9xP7L9ZI4ppzF/SzvqYYLaMbmZVfdVy1kb7bKRhoVW
         9AJQ99xWcmzjANkou36eucVMtoz0J7JGJ3fyEtxiwiOrkaoB5wNbTWg9ATAQnjj48wzI
         xlkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733310017; x=1733914817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GJdH0FDAVg0EEk1mbuvWK42ZlhNl2Kz+F54+9FBuNwQ=;
        b=iSH7kgBgD7bmMULFah+S9goG3YGi6Id7O9BQopXBpaHnYob3zUiUdZbpZR1idbiUQ8
         6aSFa6Ds8LWU6l0o+NQvj5c5xVwt3qVQulvn43hLVoGISoTA5MuIgh0NjM4I4SEjy95w
         4sFgLo/u4cQNjvMHogZRmKC8sRR/Mt+bWHm/JStjXbZuEmkq2KQj9HzaJOE9J00sTK9J
         9pByliYWcVHZKP0r1Zi5ALrTFcVgoL5ITsWjwJMKlNUNkKVcS0kXLFeQNEqH/+5dpu4g
         eA+ll0eyO7Fknf+Td0mXpOX2/4ZJVrEK4Mu22gXKgYv0dBUGus8Xbohz5Bamif1nc4Kg
         +bFg==
X-Forwarded-Encrypted: i=1; AJvYcCUXv+8kSzosN1fBtP31zl+4ACSrwYKFinHN/rAQHpRuTFjXFUm8SyUemK8p+BRZLSUK2NsEo3HJdeRl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy37CTNifzfylseJE2FoXbgYdUQcR1j2cIJPtyMgDwTlES3tlDq
	JybfxnQQ97t4tUh2LrYG3W2hW1CrO5WxZLRjJYbK8qohbU1e/Wj/d3u7JS1AFwLSooNe64Ioxv1
	I
X-Gm-Gg: ASbGncu91TGloTQ8etUFnCuTZFm7fIU+DAPM92wvxn7UlEGc2YhT7+tT+2VwJRSF2Jo
	YEYGeCGo8TfY+u0HN+sDrwTyWaA/mIUSC7c8sqlubLJjUt46U1adcighNePWdFaN03exva5F5j4
	ig7dwruRkqTHs2gT6fWplbwcZXJoriy0YMRJrWYU6gXnDSbs3EDh3isXLc3ywGdLj9Mghg329Fu
	ZLcxoNGx9AMk3y/FN06pAKLlzdEZE4JT6dXiIsXoadTuNEr7Dyuis1Xqj6FIaX6v6NYZbP4ek9r
	j9y/UEh3+YhsbRmNfrHLeYLf+uLqhw==
X-Google-Smtp-Source: AGHT+IH2m5MdbvSvbQSirMXSPeeVLCVyuJiF+F6i3kFP5GX6kABJsSiszeviPrPnCBLylQWVUOX0TQ==
X-Received: by 2002:a2e:a912:0:b0:2ff:aa0c:5d35 with SMTP id 38308e7fff4ca-30009be4859mr36174051fa.9.1733310017154;
        Wed, 04 Dec 2024 03:00:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffdfbb8e7fsm19991021fa.2.2024.12.04.03.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 03:00:15 -0800 (PST)
Date: Wed, 4 Dec 2024 13:00:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Brian Masney <bmasney@redhat.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Taniya Das <quic_tdas@quicinc.com>, Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, 
	Shivnandan Kumar <quic_kshivnan@quicinc.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sa8775p: Add CPU OPP tables to
 scale DDR/L3
Message-ID: <fddfl7ohxlo6sqm365s7x3ykfas7ucxdc6csxphusdpzzoxlbi@x7vhdtebb5gu>
References: <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-0-074e0fb80b33@quicinc.com>
 <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-2-074e0fb80b33@quicinc.com>
 <ZxEwVShJuMH4J1Hp@x1>
 <9179759d-7af1-409f-8130-1136c9ae4ecd@quicinc.com>
 <daqa3krsp6emdha6h7tlcelsggb6qeilnojgtfxjbp5zw4n6ow@xzwdmu55ygjf>
 <5c3d91e3-e9d3-4e8d-bd4f-f7cbe765dddc@oss.qualcomm.com>
 <d78e6fc9-2238-4f55-a604-f60df8565166@quicinc.com>
 <fhueah2gfi7fartnitasetvxiax3vgpgnbjis6ydjt523cnksk@vs4jmmtxk5jw>
 <e88a1685-5aa3-497a-84a0-18065f1bf6a4@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e88a1685-5aa3-497a-84a0-18065f1bf6a4@quicinc.com>

On Wed, Dec 04, 2024 at 02:15:09PM +0530, Jagadeesh Kona wrote:
> 
> 
> On 12/4/2024 8:43 AM, Dmitry Baryshkov wrote:
> > On Tue, Dec 03, 2024 at 08:33:46PM +0530, Jagadeesh Kona wrote:
> >>
> >>
> >> On 11/30/2024 8:02 PM, Konrad Dybcio wrote:
> >>> On 14.11.2024 11:48 PM, Dmitry Baryshkov wrote:
> >>>> On Mon, Nov 11, 2024 at 06:39:48PM +0530, Jagadeesh Kona wrote:
> >>>>>
> >>>>>
> >>>>> On 10/17/2024 9:12 PM, Brian Masney wrote:
> >>>>>> On Thu, Oct 17, 2024 at 02:58:31PM +0530, Jagadeesh Kona wrote:
> >>>>>>> +	cpu0_opp_table: opp-table-cpu0 {
> >>>>>>> +		compatible = "operating-points-v2";
> >>>>>>> +		opp-shared;
> >>>>>>> +
> >>>>>>> +		cpu0_opp_1267mhz: opp-1267200000 {
> >>>>>>> +			opp-hz = /bits/ 64 <1267200000>;
> >>>>>>> +			opp-peak-kBps = <6220800 29491200>;
> >>>>>>> +		};
> >>>>>>> +
> >>>>>>> +		cpu0_opp_1363mhz: opp-1363200000 {
> >>>>>>> +			opp-hz = /bits/ 64 <1363200000>;
> >>>>>>> +			opp-peak-kBps = <6220800 29491200>;
> >>>>>>> +		};
> >>>>>>
> >>>>>> [snip]
> >>>>>>
> >>>>>>> +	cpu4_opp_table: opp-table-cpu4 {
> >>>>>>> +		compatible = "operating-points-v2";
> >>>>>>> +		opp-shared;
> >>>>>>> +
> >>>>>>> +		cpu4_opp_1267mhz: opp-1267200000 {
> >>>>>>> +			opp-hz = /bits/ 64 <1267200000>;
> >>>>>>> +			opp-peak-kBps = <6220800 29491200>;
> >>>>>>> +		};
> >>>>>>> +
> >>>>>>> +		cpu4_opp_1363mhz: opp-1363200000 {
> >>>>>>> +			opp-hz = /bits/ 64 <1363200000>;
> >>>>>>> +			opp-peak-kBps = <6220800 29491200>;
> >>>>>>> +		};
> >>>>>>
> >>>>>> There's no functional differences in the cpu0 and cpu4 opp tables. Can
> >>>>>> a single table be used?
> >>>>>>
> >>>>>> This aligns with my recollection that this particular SoC only has the
> >>>>>> gold cores.
> >>>>>>
> >>>>>> Brian
> >>>>>>
> >>>>>
> >>>>> Thanks Brian for your review. Sorry for the delayed response.
> >>>>>
> >>>>> We require separate OPP tables for CPU0 and CPU4 to allow independent
> >>>>> scaling of DDR and L3 frequencies for each CPU domain, with the final
> >>>>> DDR and L3 frequencies being an aggregate of both.
> >>>>>
> >>>>> If we use a single OPP table for both CPU domains, then _allocate_opp_table() [1]
> >>>>> won't be invoked for CPU4. As a result both CPU devices will end up in sharing
> >>>>> the same ICC path handle, which could lead to one CPU device overwriting the bandwidth
> >>>>> votes of other.
> >>>
> >>> Oh that's a fun find.. clocks get the same treatment.. very bad,
> >>> but may explain some schroedingerbugs.
> >>>
> >>> Taking a peek at some code paths, wouldn't dropping opp-shared
> >>> solve our issues? dev_pm_opp_set_sharing_cpus() overrides it
> >>>
> >>> Konrad
> >>
> >> Thanks Konrad for your review.
> >>
> >> Yes, correct. I tried dropping opp-shared but it is again getting set due to
> >> dev_pm_opp_set_sharing_cpus().
> > 
> > It should be set, but then it should get the limited CPU mask rather
> > than the full CPU set. Isn't that enough for your case?
> > 
> 
> Even if we call dev_pm_opp_set_sharing_cpus() with the limited CPU mask, it adds
> OPP_TABLE_ACCESS_SHARED flag to the OPP table. Due to this flag being set, if this
> same opp table is used for another CPU domain(CPU4-7) also in DT, then _managed_opp[1]
> which gets called inside from dev_pm_opp_of_add_table() for CPU4 will return the same
> CPU0 OPP table. 
> 
> Due to above, _allocate_opp_table() [2] won't be invoked for CPU4 but instead CPU4 will be
> added as device under the CPU0 OPP table [3]. Due to this, dev_pm_opp_of_find_icc_paths() [4]
> won't be invoked for CPU4 device and hence CPU4 won't be able to independently scale it's
> interconnects. Both CPU0 and CPU4 devices will scale the same ICC path which can lead to one
> device overwriting the BW vote placed by other device. So we need two separate OPP tables for
> both domains.

Ack, that makes sense. Thanks for the explanation!

> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/opp/core.c#n1600
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/opp/core.c#n1613
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/opp/core.c#n1606
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/opp/core.c#n1484
> 
> Thanks,
> Jagadeesh

-- 
With best wishes
Dmitry

