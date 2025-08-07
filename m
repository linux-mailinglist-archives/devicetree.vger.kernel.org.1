Return-Path: <devicetree+bounces-202467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF15B1D958
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 15:50:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4878518C4507
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 13:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE4DB25C81F;
	Thu,  7 Aug 2025 13:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nvVRMBAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B13C259C85
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 13:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754574626; cv=none; b=qqts1rcvWmQsywG7aEHM8RHzFbJ0WnCOn2dsNPCf5hhF9S9hXji/GtZk3FGfxOOp5+w6nCfknmWHBn/EyRsEYKCLjnbFyuzEZpvyIjomVHPLNq3qp6ZRDNMf7n8Xv5/mmaKUCn/4WF50SZolfwt/30HMWqV4PanDpisQ9KIp1oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754574626; c=relaxed/simple;
	bh=pVZc/u2JXcJZ/aRAfpTKab2xWf0eHpihlZOCZE1c4dc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ky5FGkhlTTCGmVWRPhXkwk9RkFSq/b39txJ8xi3laVOe2Am/IFQ7RHW7st7GEODEjHb1rYk+Xz+3hcTxGhAb+FMT+9Ymnh0sDZppm+1UExLnqyjzqbgpsDC0wj45bC8K3KfaBL3DqgGRU1c8BHamumDpQY/Mzf+RgLaSWlfAq6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nvVRMBAr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5779CvGv003594
	for <devicetree@vger.kernel.org>; Thu, 7 Aug 2025 13:50:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5OmLGnYd7WdAQT7cvTn0HfXjvy8zdD3OEZAP/wXH4gA=; b=nvVRMBArE+Uh4dD9
	D5hbo4mfYcGTwYgQ/dCvaplVYAexzlxNyPx2OejbF25SU+c5Ws6rn9/igO2FP60t
	PDT+kipj6iaAmYYzvSJVQ2hiu5KDCz77O2hS0ICMuG0HNZEoyUmjX++1I19DiANq
	zfZMG6C0zg3OGSMMSItBWKEdN0tktNIgScH/4+t1YpEGNT0hi8OXI70Vz30e/vwY
	xwQA7kN/zHS7LbMsBLnZK0kb1dEJFhW1Z0ZH0ydZigxNVd/GdB8Qk8ZUFr5VZWuV
	f0XrT6LrxR2gha7mNccKC48SPXrpbpzFwepjac3sADT8oRi0ps3eZux58iKk7jQt
	dDASig==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpyaee9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 13:50:24 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70771983a52so23785386d6.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 06:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754574623; x=1755179423;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5OmLGnYd7WdAQT7cvTn0HfXjvy8zdD3OEZAP/wXH4gA=;
        b=RTbtrCDoVPc86w21ZLWb24XIsUolOg1ItszZetdnWpw4ymETAUPB8+MU5KXcUcaDa1
         Rk6miNBuh7G/Ia3GReKSDy+KaU7SFC4xmmLzCufW7mua/Ub+Ss7E0R3jniNOkOgKMzsz
         g/6BPKw82bMmuTgGUPVxkIW6V+ZbfpWJ/r0kjFLDzp8qKZjyU7YLoM1JH1QQV41syQ+r
         FRUk8c8s3C3u9tStHQM81Bdbke30orEAPjsLzmhdOG6BV1QN28AvUjfO1VvYJXBh1Tk4
         wePmPMpnXcKktB5/gSPxKwLFTOP+TKvwv19/Rrh7odTtiwfyif4kgNTVCe5CqG/XCFws
         u81w==
X-Forwarded-Encrypted: i=1; AJvYcCW3jjz8EcDQaDSN2VUUmQ6Q3heX+kR0ceP13jOWN0w1fd/e6U/RfWi2H1QSjozb/3cjPhoLCsuyJTaz@vger.kernel.org
X-Gm-Message-State: AOJu0YyG9izqoclQp6iuLY6KByEUM/CpeaTFq36NuLfFNtbxZBdT6scr
	ulBhLc3wryR84HX355N6uvGcTg0VlcHEJvR1glrUdDZlieGAOhTPzUwdNucQ4YLmNGhfBwEds1p
	jP/oQyK+4MtQ40nXoSzdBEat5CfSVHslbIpoDz7CUlDDnYy8QKeMJUPhQPi0gYTCp
X-Gm-Gg: ASbGnct98b6tMi3xXs9H7G1Ko/myLcqjIUbxCW9NYSQGwNL/raMqHsxbG+9CJH6zr5E
	4Nc8oxPcF68WW49xFm/f1bjxfrdHxYfW6OgOyiV1Wg18k/m0aTU1+zt+2WC+4brH6ODyvAVJUaw
	ksj3xtwCXOSLZLF3/M9mptdNZE5z9CWpZUHmE+d9h4QsbLqCDqe1nMa//TuCZMZuQ7GeHUcEmK/
	+5j5VvtAGt2yAZ+jgTrIqaEUPanj93pbIYdTSUYDrh+OzU/Pq8ThGU3UWkFtk0wrMQCMse7QVIk
	2pfLUkmSd3WV5IuYCSLewVVSgTS064Z3r6LVh0Qv/wIpCwdSK2FxU+2wQEqRKS9HnbMuUQ==
X-Received: by 2002:a05:6214:4102:b0:6fa:a4ed:cce5 with SMTP id 6a1803df08f44-7098a855026mr44069996d6.44.1754574622787;
        Thu, 07 Aug 2025 06:50:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHX5W9OIu6saBYDV0YXjlz5Xl07l+QbXVshJX2L+0ypDPs8YDP0IdLJwPHCyRtytfrRNuaQaw==
X-Received: by 2002:a05:6214:4102:b0:6fa:a4ed:cce5 with SMTP id 6a1803df08f44-7098a855026mr44068536d6.44.1754574621124;
        Thu, 07 Aug 2025 06:50:21 -0700 (PDT)
Received: from trex (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8e009e465sm17965636f8f.43.2025.08.07.06.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 06:50:20 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 7 Aug 2025 15:50:18 +0200
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        bryan.odonoghue@linaro.org, quic_dikshita@quicinc.com,
        quic_vgarodia@quicinc.com, konradybcio@kernel.org, krzk+dt@kernel.org,
        mchehab@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <aJSvGhRkFXEJeR8u@trex>
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
 <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex>
 <aJHqpiqvulGY2BYH@trex>
 <to2hrxml3um6iep4fcxhkq7pbibuimfnv4kfwqzlwdkh4osk5f@orjzbuawwgko>
 <aJMMhIqNupwPjCN+@trex>
 <0248afed-b82d-4555-8277-e84aacf153fd@oss.qualcomm.com>
 <aJNTigOMy1JFOxot@trex>
 <s3rr3p5axi3iu4zvgwgjyhjtxmv7sgp6bqkmsgv2l76p7zxu2k@rxzbblyr57an>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <s3rr3p5axi3iu4zvgwgjyhjtxmv7sgp6bqkmsgv2l76p7zxu2k@rxzbblyr57an>
X-Proofpoint-ORIG-GUID: 2n1bhOcG-bAgK5sNnRAsDCLgZYpDmcMv
X-Authority-Analysis: v=2.4 cv=MrlS63ae c=1 sm=1 tr=0 ts=6894af20 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=COk6AnOGAAAA:8 a=NOzLQxjBGogwJnxeP90A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX0GVSjodR0vi3
 JekCDUdQca+pPK8W/X1toFg5WlQ8UqaummHEVIueF8SZaljFDHlBRlLS5HjGGuwcf6qmsHDZP21
 6AKj74kv7/FbzkpKzdAKI1BmS7DdHKIqHohv91OOVInFCxTEv84HIGeNYEGNDJuNUTkV4IKs7dz
 1KJRSvYaUbG1Z+M+l6qxbRQN4CAZavRqPI2NkGId7eoM+OGwv+aTSMKacGf5gp3pv6IyE3Ho99O
 RdTJ0aC2nF+rEOj3No5zDGYnghPeHJQI482as3xXHTcNsl6cx87NDrmN3a7TJ609lruiNaHj8tJ
 Ld6shjO4jyK6AcmSjv65RymG5nia4ZzYtm3/zQthRUjrRqXdKBOsaawQHPnQ3QGwEht7DxbzRtA
 xiZ2xEcp
X-Proofpoint-GUID: 2n1bhOcG-bAgK5sNnRAsDCLgZYpDmcMv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 07/08/25 14:52:08, Dmitry Baryshkov wrote:
> On Wed, Aug 06, 2025 at 03:07:22PM +0200, Jorge Ramirez wrote:
> > On 06/08/25 11:01:09, Konrad Dybcio wrote:
> > > On 8/6/25 10:04 AM, Jorge Ramirez wrote:
> > > > On 06/08/25 04:37:05, Dmitry Baryshkov wrote:
> > > >> On Tue, Aug 05, 2025 at 01:27:34PM +0200, Jorge Ramirez wrote:
> > > >>> On 05/08/25 12:44:23, Jorge Ramirez wrote:
> > > >>>> On 05/08/25 13:04:50, Dmitry Baryshkov wrote:
> > > >>>>> On Tue, Aug 05, 2025 at 08:44:28AM +0200, Jorge Ramirez-Ortiz wrote:
> > > >>>>>> Add a qcm2290 compatible binding to the Cenus core.
> > > >>>>>>
> > > >>>>>> The maximum concurrency is video decode at 1920x1080 (FullHD) with video
> > > >>>>>> encode at 1280x720 (HD).
> > > >>>>>>
> > > >>>>>> The driver is not available to firmware versions below 6.0.55 due to an
> > > >>>>>> internal requirement for secure buffers.
> > > >>>>>>
> > > >>>>>> The bandwidth tables incorporate a conservative safety margin to ensure
> > > >>>>>> stability under peak DDR and interconnect load conditions.
> > > >>>>>>
> > > >>>>>> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > > >>>>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > > >>>>>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > > >>>>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > >>>>>> Reviewed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> > > >>>>>> ---
> > > >>>>>>  drivers/media/platform/qcom/venus/core.c | 50 ++++++++++++++++++++++++
> > > >>>>>>  1 file changed, 50 insertions(+)
> > > >>>>>>
> > > >>>>>> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> > > >>>>>> index adc38fbc9d79..753a16f53622 100644
> > > >>>>>> --- a/drivers/media/platform/qcom/venus/core.c
> > > >>>>>> +++ b/drivers/media/platform/qcom/venus/core.c
> > > >>>>>> @@ -1070,6 +1070,55 @@ static const struct venus_resources sc7280_res = {
> > > >>>>>>  	.enc_nodename = "video-encoder",
> > > >>>>>>  };
> > > >>>>>>  
> > > >>>>>> +static const struct bw_tbl qcm2290_bw_table_dec[] = {
> > > >>>>>> +	{ 352800, 597000, 0, 746000, 0 }, /* 1080p@30 + 720p@30 */
> > > >>>>>> +	{ 244800, 413000, 0, 516000, 0 }, /* 1080p@30 */
> > > >>>>>> +	{ 216000, 364000, 0, 454000, 0 }, /* 720p@60  */
> > > >>>>>> +	{ 108000, 182000, 0, 227000, 0 }, /* 720p@30  */
> > > >>>>>> +};
> > > >>>>>> +
> > > >>>>>> +static const struct bw_tbl qcm2290_bw_table_enc[] = {
> > > >>>>>> +	{ 352800, 396000, 0, 0, 0 }, /* 1080p@30 + 720p@30 */
> > > >>>>>> +	{ 244800, 275000, 0, 0, 0 }, /* 1080p@30 */
> > > >>>>>> +	{ 216000, 242000, 0, 0, 0 }, /* 720p@60  */
> > > >>>>>> +	{ 108000, 121000, 0, 0, 0 }, /* 720p@30  */
> > > >>>>>> +};
> > > >>>>>> +
> > > >>>>>> +static const struct firmware_version min_fw = {
> > > >>>>>> +	.major = 6, .minor = 0, .rev = 55,
> > > >>>>>> +};
> > > >>>>>
> > > >>>>> This will make venus driver error out with the firmware which is
> > > >>>>> available in Debian trixie (and possibly other distributions). If I
> > > >>>>> remember correctly, the driver can work with that firmware with the
> > > >>>>> limited functionality. Can we please support that instead of erroring
> > > >>>>> out completely?
> > > >>>>
> > > >>>> yes, in V7 I did implement this functionality plus a fix for EOS
> > > >>>> handling (broken in pre 6.0.55 firmwares).
> > > >>>
> > > >>> just re-reading your note, in case this was not clear, the _current_
> > > >>> driver upstream will never work with the current firmware if that is
> > > >>> what you were thinking (it would need v7 of this series to enable video
> > > >>> decoding).
> > > >>
> > > >> I'd really prefer if we could support firmware that is present in Debian
> > > >> trixie and that has been upstreamed more than a year ago.
> > > > 
> > > > 
> > > > I share your view — which is why I put the effort into v7 — but I also
> > > > understand that maintaining the extra code and EOS workaround for
> > > > decoding needs to be justifiable. So I chose to align with the
> > > > maintainers' perspective on this and removed it on v8 (partially also
> > > > because I wanted to unblock the current EOS discussion).
> > > 
> > > +$0.05
> > > 
> > > I thought we were going to eventually relax/drop the fw requirement
> > > when the driver learns some new cool tricks, but are we now straying
> > > away from that? (particularly thinking about the EOS part)
> > > 
> > 
> > um, no not really: the decision was to simply drop support for pre
> > 6.0.55 firmwares for the AR50_LITE.
> > 
> > Pre 6.0.55:
> > 
> > -  has a requirement for secure buffers to support encoding
> > -  requires a driver workaround for EOS (providing a dummy length)
> > -  during video encoding.
> 
> If it requires secure buffers to support encoding (which we do not
> implement), then EOS workaround is also not required (at this point).

My bad earlier — the EOS workaround applies to video decoding, not
encoding.

Video decoding does NOT require secure buffers, which is why it can be
enabled independently of the firmware update.

to clarify, the EOS workaround is necessary for decoding because:

- The current driver doesn't fully follow to the HFI spec WRT EOS
  handling, which leads to issues like the one we're seeing.

- The firmware we're using doesn't accept the upstream driver's existing
  workarounds — such as hardcoded buffer addresses like 0x0 or
  0xdeadb000, which vary across firmware versions.
    
The way I see it sticking to the spec — that is, always passing a valid
buffer which was my preferred choice and my first implementation — would
make the driver more robust and less prone to this kind of problems.

Failing that, I dont see the issue with adding workarounds/quirks to the
EOS handling (in this case).

if (IS_AR50_LITE(core) && is_fw_rev_or_older(core, 6, 0, 53))
	data->alloc_len = 1;

Even more considering we already have:

if (IS_V6(core) && is_fw_rev_or_older(core, 1, 0, 87))
	data->device_addr = 0x0;
else	
        data->device_addr = 0xdeadb000;

In terms of an abstration, there is no meaning to these values since
these are not valid buffers: we are just filling whatever it makes the
firmware work.

