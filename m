Return-Path: <devicetree+bounces-126778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D161A9E31ED
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 04:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D09A16207A
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 03:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74E1913D246;
	Wed,  4 Dec 2024 03:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="grNPOvON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857B0136338
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 03:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733282023; cv=none; b=QechMyDVdDTIqSMIBLdjj+xiFCRjeo3EpdDsDbfPkwY43Q2Qzb7y1RPOPq0GFZy97R6USBW6k5383GqMvYzx55dAjZKx6HV1HOYFXzVbXerNV6DKnp1vSnhczK7oULTvRs4Eto3LH4vg7b9L09R+xOdg9jo3gOvTW1bQzoIv+h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733282023; c=relaxed/simple;
	bh=gbT/tqDPD3nB0PJX+wsYJ9apOxpJ+FbSFGzmb/PuRpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z6Ap3nyP2WtHjkGR9pz1ISFb+ztmVj4t4hQrnZX78qkCRSwDB+JpBVBl/sQ2V++CVERziV1MVPDAOhBgPmo7SVhJUJ62EV68hwKp6ooHdy5mjrAsVQHKwazIH20gs+4KGgOzN+LN6/dGQEIbPMcduHI6ahBD9afHBtXCQX5Ec/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=grNPOvON; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53dd668c5easo473000e87.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 19:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733282020; x=1733886820; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=peSSYZg+zC8zrxxal5znpAy/l849p/IvfHjMT8o7PE8=;
        b=grNPOvONGqDOln1Df5BRuLd0MMsWylr20F66unI5YfXtTttKttFfyNBbpC7iIyYVpb
         9ylVLR+Miw4MAVmH9Dsw2cAmG16xnmuh68zbp7ad4L5JUXHBv0v78LKFHEfNrcSe8Zyz
         DCytWeiCN+IY2WGSoZ6Kvs/MBDh9d2HFAcfVP4hwBWk/mBhKRWdztTj/zU1h7dKqUegJ
         cTYyeDtPeLfc1liUr0uOneRZaeqpJlFqATZO11ZO122H/GH70tAaldFlTMvIWyhmbb7z
         pSUWWJ5Sv3mhLCtdIu0+SY9C4PhOHIVl1PLkLE7J7SaSgxBwNQyxOnGORk176lYXRvao
         wC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733282020; x=1733886820;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=peSSYZg+zC8zrxxal5znpAy/l849p/IvfHjMT8o7PE8=;
        b=uRNhGQw2nR+XbH0dFLjPPnr7mx28/agJ5J8Cg+v+9M/sIef4nNP3RkvvZBoKZzNxXr
         KGVpzx5U41EsjwDrpkzdjRFygnDj8TjDhpVKkW4bro1iRzxio6DAlrUuk97Gk2rvNL02
         mUGLt8LtmYqZK6fk8OaPmVCNyTFlSq7P2zZfI+odx/sNZAqDj/8y86dPaTXJHckiHBpf
         95w9m63kIYhkzcTyk3w3IbFvXByTpx7s/Zyxs1iDnXX7gmEtJPMTT3htrFibJodGsWNo
         fXzdcRng8HCdE4Aa3+vGj61E54wN0ZPAVkDNuRQr3lCHqSrIjrW/++/c0JSmj6hz4GMq
         Ax9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWuBOzGkf9/bApzt7sFJUNZk+pcCHrQ9M8ms620uWo/JwDwx5Yalzn1HV2zOCzlENaqIyKAf3g9ozxO@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt2XU9eBX7UwQOX7/971H8EZn6ST4d/YjIJB2Ve28jVvhxxjsT
	O7YkyVlY15JLip3zsMDaGdw9hyfD6jkZ/0wNMsSQjbaTiWcOhqdLbu77DnjX6/M=
X-Gm-Gg: ASbGncu+pey0SFnfHOnRlU7yNiGyOoGh3aaK7u4IIGIo39xPtk0BQrtomf9auQd8jhE
	waLf1ZxHzVonZvvOjUp6jd+h46mlmh+muBDuxZBKiZAuvTjPl3NzdoNaotL8Ho7ZOGeRWFAuw1R
	WQUtjzQK9HmygwrsDKhpAouxwRj3qp7Oq+cOGUuxCYHFovDCnhSNWs5GMbTf+lheRZzEwrMv9kQ
	xDpyyT/SqpO7FpYu4nx/aMSagLQCuKCT+3ja8JuvgL+W5LBG8b6U0W8KSijsPGxQM94YRJ3M7vB
	0Xr8+WKL6GMuXW3jOKCM0yPapWZ4Ow==
X-Google-Smtp-Source: AGHT+IGE48k3yZcCcWW+WVZc5BahwqReyyQoqnlQUw2hufiIoLIfZCom+M1TBjfEqb4YqW0RsjLWSg==
X-Received: by 2002:a05:6512:689:b0:53d:f8aa:abaf with SMTP id 2adb3069b0e04-53df8aaaca6mr7853078e87.9.1733282019569;
        Tue, 03 Dec 2024 19:13:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df646f08csm2032703e87.164.2024.12.03.19.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 19:13:38 -0800 (PST)
Date: Wed, 4 Dec 2024 05:13:35 +0200
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
Message-ID: <fhueah2gfi7fartnitasetvxiax3vgpgnbjis6ydjt523cnksk@vs4jmmtxk5jw>
References: <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-0-074e0fb80b33@quicinc.com>
 <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-2-074e0fb80b33@quicinc.com>
 <ZxEwVShJuMH4J1Hp@x1>
 <9179759d-7af1-409f-8130-1136c9ae4ecd@quicinc.com>
 <daqa3krsp6emdha6h7tlcelsggb6qeilnojgtfxjbp5zw4n6ow@xzwdmu55ygjf>
 <5c3d91e3-e9d3-4e8d-bd4f-f7cbe765dddc@oss.qualcomm.com>
 <d78e6fc9-2238-4f55-a604-f60df8565166@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d78e6fc9-2238-4f55-a604-f60df8565166@quicinc.com>

On Tue, Dec 03, 2024 at 08:33:46PM +0530, Jagadeesh Kona wrote:
> 
> 
> On 11/30/2024 8:02 PM, Konrad Dybcio wrote:
> > On 14.11.2024 11:48 PM, Dmitry Baryshkov wrote:
> >> On Mon, Nov 11, 2024 at 06:39:48PM +0530, Jagadeesh Kona wrote:
> >>>
> >>>
> >>> On 10/17/2024 9:12 PM, Brian Masney wrote:
> >>>> On Thu, Oct 17, 2024 at 02:58:31PM +0530, Jagadeesh Kona wrote:
> >>>>> +	cpu0_opp_table: opp-table-cpu0 {
> >>>>> +		compatible = "operating-points-v2";
> >>>>> +		opp-shared;
> >>>>> +
> >>>>> +		cpu0_opp_1267mhz: opp-1267200000 {
> >>>>> +			opp-hz = /bits/ 64 <1267200000>;
> >>>>> +			opp-peak-kBps = <6220800 29491200>;
> >>>>> +		};
> >>>>> +
> >>>>> +		cpu0_opp_1363mhz: opp-1363200000 {
> >>>>> +			opp-hz = /bits/ 64 <1363200000>;
> >>>>> +			opp-peak-kBps = <6220800 29491200>;
> >>>>> +		};
> >>>>
> >>>> [snip]
> >>>>
> >>>>> +	cpu4_opp_table: opp-table-cpu4 {
> >>>>> +		compatible = "operating-points-v2";
> >>>>> +		opp-shared;
> >>>>> +
> >>>>> +		cpu4_opp_1267mhz: opp-1267200000 {
> >>>>> +			opp-hz = /bits/ 64 <1267200000>;
> >>>>> +			opp-peak-kBps = <6220800 29491200>;
> >>>>> +		};
> >>>>> +
> >>>>> +		cpu4_opp_1363mhz: opp-1363200000 {
> >>>>> +			opp-hz = /bits/ 64 <1363200000>;
> >>>>> +			opp-peak-kBps = <6220800 29491200>;
> >>>>> +		};
> >>>>
> >>>> There's no functional differences in the cpu0 and cpu4 opp tables. Can
> >>>> a single table be used?
> >>>>
> >>>> This aligns with my recollection that this particular SoC only has the
> >>>> gold cores.
> >>>>
> >>>> Brian
> >>>>
> >>>
> >>> Thanks Brian for your review. Sorry for the delayed response.
> >>>
> >>> We require separate OPP tables for CPU0 and CPU4 to allow independent
> >>> scaling of DDR and L3 frequencies for each CPU domain, with the final
> >>> DDR and L3 frequencies being an aggregate of both.
> >>>
> >>> If we use a single OPP table for both CPU domains, then _allocate_opp_table() [1]
> >>> won't be invoked for CPU4. As a result both CPU devices will end up in sharing
> >>> the same ICC path handle, which could lead to one CPU device overwriting the bandwidth
> >>> votes of other.
> > 
> > Oh that's a fun find.. clocks get the same treatment.. very bad,
> > but may explain some schroedingerbugs.
> > 
> > Taking a peek at some code paths, wouldn't dropping opp-shared
> > solve our issues? dev_pm_opp_set_sharing_cpus() overrides it
> > 
> > Konrad
> 
> Thanks Konrad for your review.
> 
> Yes, correct. I tried dropping opp-shared but it is again getting set due to
> dev_pm_opp_set_sharing_cpus().

It should be set, but then it should get the limited CPU mask rather
than the full CPU set. Isn't that enough for your case?

-- 
With best wishes
Dmitry

