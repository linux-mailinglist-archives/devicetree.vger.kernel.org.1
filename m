Return-Path: <devicetree+bounces-244836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C713BCA9469
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 21:35:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34F11313C68E
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 20:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34B329B8DB;
	Fri,  5 Dec 2025 20:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lJyymNa/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UYowerxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9073B8D75
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 20:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764966859; cv=none; b=keTWshNJy8WZs6TATT7abLi2520woMofhKDF+jpXbaumoZ7hKtPQP8gUk1GUtViNvD6ArOZT30R/f0DLVUknc1reldusvp5awmkSGaRpByoh4EbJbWcrj+5awDIU4nml7Anh2d5ag2sZkBiomLpmsge5a+9ORAPPlv/J/7Jhotc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764966859; c=relaxed/simple;
	bh=VDlNvm2vIRrbe2yBVmyHq1Q8se4YRQymGapdJvOhedE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ap9lttP3HemOXD4V6hjTxa7xzigQ3jIDTGzTV1LBIYlh/0WDzUdzoXN9Z+mc7+ze1qIcRznvjNzfJph/hNK/lT3EnRuVMe7NDWU8JmTlfZQLkF7K85oYx1/pW2oTEhShlNj2GizrwJeiyXvcaklV4ePTpBR79+ifX9s1ynE+pRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lJyymNa/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UYowerxj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBOg81255908
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 20:34:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ehuzl35F4YAd5WxwHE5AJrYf
	pPfLCfoNEcUsRWmL6k0=; b=lJyymNa/xcnscmqNakItzrmw/Ty4x8cGHG4fzKfb
	bzO21gbDHMrc8i3tmer42h//uSwpfR7UEs9xO/dnAuJ2TGHAva/xqNWwO/3RDbOS
	KFHI2qWC6itwoe8wBJGXHwOLzrHQqSqq+0ucYlATPP4JIKQ4wHedXKNhWb7Wjz22
	ceUEFFU3SytpmwW6TLsf1N1MwncE7jNrfiE8SxN194uIP20jbIupwiS8KZh3qmKQ
	78syJ+98W8HseTgiXNaQnG5tI1cwn3ectMxTSh4gjaiV9y0Jg4TCicTbm6QdBgYb
	NhtaMe7+MdIPH42IL8T30VPsyYKazOMMGahCXdMrJklgRw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj3afn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:34:15 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2e4b78e35so497881385a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764966855; x=1765571655; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ehuzl35F4YAd5WxwHE5AJrYfpPfLCfoNEcUsRWmL6k0=;
        b=UYowerxjHNLC73fAsuQGWu6LQ+7h6Grj5Dpkd9SHt9jSvENJCZ2Bsu9L8x2sdbrYGq
         Nmxg6L5wBnT95JaTLECwxqGKL5nTVZXRv2nPotlzpE/xAq3S6BR02EhsCVNSdBS6Zyuy
         7yz3nU3T/ERT4LDT9FWcTLlK4dQWXWnnkNSr+wjTdFVY/ofCs2Yh8QWzcnoHRqGZrE6O
         7FDnR2Ag2gQJs9+jcQ49amcW2669pn0tjBq7zLAM9iopvNh6JMZNheR33jTSoIOufs4i
         vpjyOMYKqXipsg3Z+5gYtl/rArIpOoDPqIhsX660q/8TS0IasydMyyX/mOP9itndVWNb
         biMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764966855; x=1765571655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ehuzl35F4YAd5WxwHE5AJrYfpPfLCfoNEcUsRWmL6k0=;
        b=Y+0mllsm9U15wSEoeuykSD1rf27eSzNCihCTEhU4it9cWLVP4+U5oeTKKpCGQn2yqk
         kxlx++rAEMd872pQoafKc2I0FgpIe3OF4sQavOzLOeXQy2VzVr1FUWsemyZYFjsZLGxH
         D4OXse7z3XtibkTJAMqXfLT5mvAOEIfoDVwwV8Rt7aO1blHDE3SqbYzPQnlsjbjnNRSS
         xVL/0sVIpClTHK5D8JiCU6+ihhlTMeg/GuNIgTV2iMo3b0pdxwWglcmP/wvEe+mAEM81
         P3Nm16CtS015cswq1AHvrjOdP7A7p5zY7z74fM/nGLVNUogKfBzhW3H7eJYiY1U50uy4
         Q7ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2PTpp/neeOgf3FaPApT14mN/XrcnFCOZLFO5KpXf3qiGQ182IEzVfSFhSl1+W+eXcWSo4iy0Xim/V@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3nLT1mZLsuf+c79h7tU5geB4nuxGc18E1/VgxRWKc6DJzN25V
	bIcNCpzfH4/80ezFNf/Mp8LYtNbxW8cDbZVliawPMagn0sV1CaqtYBwFa7A6NUU5vXaWIPl67E3
	BHU5WrS5n2WSIf/J6bo1HM5KmqTo/C5VaF9dwO0NXpiR9bImX3/OHeteIL1gSjZZj
X-Gm-Gg: ASbGnctXpilR0ymDamOmm2F153dE7mwr4Jk8s0vR7kvfoFCN1JLTz3Hcq1ii2dWpJnD
	/KOI0qmiXjvCADNSwxbCe0JvkFko/yZl7ifrXBQNuuhdC3pGwKCu4zeeNGrfABlEDdE5bcXVfGn
	6YbIOjd+OoB15TKwURsBT+TtUX086KetEWcuD4EKYtrUByh77Yfhtrt6JByhG59G9zzlMega2i0
	YxouUJKEOG1u+GtTgJpHeP3J1Ogh78yVcx6+pnYd88XI9j3ys5IL9VMW+yEeqI5uKmnrx1GBhWz
	heSqo4a3Kzd64myszg8d8bxyv75gs0Ayzy3lAvr05wGrR/R0n69kk/JqLp6DLwjIx6oraiItXP/
	YtSf+Hm2ZgYoNsemKv0er6zdg3rljeXWvNhkPc2SszOk1pnOJwiOgTZtLN+azq1qsHeC0b/7PQg
	65X+mCJzxV988kiNC7tClp2WA=
X-Received: by 2002:a05:620a:28c5:b0:8b2:1f04:f83 with SMTP id af79cd13be357-8b6a23e4122mr47641385a.70.1764966855106;
        Fri, 05 Dec 2025 12:34:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHSJwImahBezA+ehEO+rgt/lG9XeY7S3IiD1k9RLtugDrQeAM1A3hmwstsLFPwhVXBehFvy6w==
X-Received: by 2002:a05:620a:28c5:b0:8b2:1f04:f83 with SMTP id af79cd13be357-8b6a23e4122mr47637085a.70.1764966854603;
        Fri, 05 Dec 2025 12:34:14 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c281aasm1781336e87.82.2025.12.05.12.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:34:13 -0800 (PST)
Date: Fri, 5 Dec 2025 22:34:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
Message-ID: <2e5sqv2gnxdfwnfsepzdkchxip5zdeamp6bzbamq6kbk77kr3p@u5i4rrnrywno>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
 <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
 <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
 <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
 <3gqq3w6ovy5srgvabyeugsjbwrhaxmjvicykhjmlcxd74gtsaf@5u6wvvzeq52z>
 <90bc84e7-19ca-450d-b41f-fd96367e8cce@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <90bc84e7-19ca-450d-b41f-fd96367e8cce@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=693341c7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=JECPFCAl0qZ1QQZhDD8A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: XA9iO4LIA45SDGamNviFCSZ9YSChixX5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1MyBTYWx0ZWRfX4+EE0LWn5e68
 tZqPvy4P69beDbVNm4B7whI32M+ZjOVxwUYvf2HH0/+mWNZaSDhTqxas9zL6dUL1VW1KeR15vuM
 Prwn2W/yQmWa933EilyLxSHbPlTYVFyBdUApRdysaus7Jxkkq0Bvi7NlDHeeddOOTb8b4kIUdTc
 E6tNLLamT6srEqXL5T0RzM03OKlpbVVlsfTHr+Di9wxYHg4h2OE1yKYm/klfvoKM9up0K6fOVsV
 nzXV/4QycokhYfoBLJl1Zy1F8/mzkmRvXqhtWhkPOYuIi4uoE/1uzmeZU+TdnK4sqFpoIGeybQ7
 9TC+ar0aqF0pmLVQkSgcA0tgtzJSYI/QIHB09iJhOsX6uJeOchv5zpor4eCcuVpQrGQEG+k4f+5
 ZtmQ8KPaaNdPZUMOTgH+Pf5P7+YzbQ==
X-Proofpoint-GUID: XA9iO4LIA45SDGamNviFCSZ9YSChixX5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050153

On Fri, Dec 05, 2025 at 03:59:09PM +0530, Akhil P Oommen wrote:
> On 12/4/2025 7:49 PM, Dmitry Baryshkov wrote:
> > On Thu, Dec 04, 2025 at 03:43:33PM +0530, Akhil P Oommen wrote:
> >> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
> >>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
> >>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> >>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
> >>>>>
> >>>>> Add gpu and rgmu nodes for qcs615 chipset.
> >>>>>
> >>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> >>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>>>> ---
> >>>>
> >>>> [...]
> >>>>
> >>>>> +			gpu_opp_table: opp-table {
> >>>>> +				compatible = "operating-points-v2";
> >>>>> +
> >>>>> +				opp-845000000 {
> >>>>> +					opp-hz = /bits/ 64 <845000000>;
> >>>>> +					required-opps = <&rpmhpd_opp_turbo>;
> >>>>> +					opp-peak-kBps = <7050000>;
> >>>>> +				};
> >>>>
> >>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
> >>>> or mobile parts specifically?
> >>>
> >>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
> >>> here.
> >>
> >> The IoT/Auto variants have a different frequency plan compared to the
> >> mobile variant. I reviewed the downstream code and this aligns with that
> >> except the 290Mhz corner. We can remove that one.
> >>
> >> Here we are describing the IoT variant of Talos. So we can ignore the
> >> speedbins from the mobile variant until that is supported.
> > 
> > No, we are describing just Talos, which hopefully covers both mobile and
> > non-mobile platforms.
> 
> We cannot assume that.
> 
> Even if we assume that there is no variation in silicon, the firmware
> (AOP, TZ, HYP etc) is different between mobile and IoT version. So it is
> wise to use the configuration that is commercialized, especially when it
> is power related.

How does it affect the speed bins? I'd really prefer if we:
- describe OPP tables and speed bins here
- remove speed bins cell for the Auto / IoT boards
- make sure that the driver uses the IoT bin if there is no speed bin
  declared in the GPU.

-- 
With best wishes
Dmitry

