Return-Path: <devicetree+bounces-202899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC60B1F336
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 10:18:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3ECA8561602
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 08:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF89427702A;
	Sat,  9 Aug 2025 08:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lKqp4e5K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622CB1F8747
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 08:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754727508; cv=none; b=qMVlJS0RhHC4UbmkKjZAGDHTmIUXswfV4aaCb40hVrNghz0s84A/bm5UB9F2+Uvh65fec/BOn3EXKImrGJqz0pFYWFHK/1sCOl+azfa+gzFFGpKb6qV0IFd/U0u5wQHZfFB4nYSk6mN4JkSN53lkhBnVOfeOcdXA7v8kPxmKDb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754727508; c=relaxed/simple;
	bh=shwEQ8cryFUWL0UFeuLAJhf/97dqnkWgW2nUhwyC+ck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MzUGNvNNSCz6eetIUvPhPbXk/6Nm9GEa4onDQT88PObUsYDCHeEydD/hKEV5Ao1xcSdWdTKMcqtMkDzdY0pI5DaYTMUsPA9geMKP1ceNe2T4F8IFXR9YQG7j2whwoc40VrAq3I5IIgHV2PxRBi6p+OYonxu5HYloLOJ8YLF+VCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lKqp4e5K; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793oF9x026197
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 08:18:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ny0ExIjmg6qzhNtxQ2+NGDBI
	d6ex3O2Y+9L9qqEXCZA=; b=lKqp4e5KibukTe+TfdXl1Jn8kHMjawSUZYlTwpQT
	sna12QTbLZYCVB+/dGFgjcZP6JJRbF1VIghOCW9SAsqgPfBzux0zeSU8A8wOyTcs
	zWwE5PTIA/ljxpmtWmEIZF5iefyj0vAmNzV/Evgk17RafpMGpRz8bKd5t+n4XCEe
	KAvjbKITY7uIgiEQdl6DpoeUH/gCtz0TvcSL6IaHs6/k4OxcOe+Lit4rlp4qNC9n
	bgm5Li/Jv9nv02R8QvZEkH1TnIY7N0UV7z1fieDbdXJO4DoiMfhFAActGGjg7HXY
	uIhM1SeZ1TdY9i+Z6rkxkGZJ/6r9N3Ec0W7slSZAlfnSVg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dv1fghjf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 08:18:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b068c25f04so70626941cf.1
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 01:18:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754727505; x=1755332305;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ny0ExIjmg6qzhNtxQ2+NGDBId6ex3O2Y+9L9qqEXCZA=;
        b=gbLKmjnd+hSV+cV+UDRC0Xfi68cSTAuD+4PZkQ10inJXI4IEMN1x2TtDBzMaqeo2Pr
         vyPzEa7DIle/VoJq+QhmLQsotR2TEGwruE/fcK071TqkSDRvRtFe1te/2KzE4gpOikVR
         ffu1aWm2LJwyJ6sxKcfgoGfY3PVLqOh8WX348SIphOAe8T3CEHDOlCrFQ96fdnT0imjc
         Sd/tXY7WUhDvMNABTM/xNVZT0m3MUW3y9EqRk63YRr/MsR9pfJch4IXGYWKYFkyletpI
         RQhSrXJ1jbyK38WHgyX6aPXnFT/6qmvKnwJWtsuSVpUsS97dWzS7621H2FW9ig5TNwCk
         1P1g==
X-Forwarded-Encrypted: i=1; AJvYcCXGraAqqFMiBnn7X0+g5fi8p7aaOzum9XdweNAeuZsovFcOlSCb4oBbA1h9J66m/lipUcBstmd/0Uv+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0sV3ARBrqCHtrNXOwF0Pk6GVR6920TH72XF4KXyhV2nXSpchh
	IoqjGySGqPa9BnAIK4zygelf9MxJNuvB9zDjn+BLTEd+6KYJoQDG2+701Mijir0uR8ZbfV6pIq7
	1ZRylpjkn4QaZD4KJSaa29HFSUZXStvpkwvDXabyzc6eX92zaCqBc2MPxwtxuwpMx
X-Gm-Gg: ASbGnctGhD7PA6jLWZPkdrOekOqJHNZa3gzlBH2Y/9s7D6dD6l+Q85O7bbeqjd27veU
	fSNC5UdG0uFPkeoz2TNGciaOmswYsF/zRjEYDkJX3aWV7PWWaLZS2mtAuU2eUP8ovQ9EH59qd/7
	8OAadYUm3AK/5X0OWEfIp6lhIPoUBm2tTSa7UQ4g2GwzTVsRmpSN+1jkinJ4HFFr34BKYcYzpyE
	iv0FWhg6Zh6EzAxM9vQHTmJELAR9sFsorh0LnPZZmXtEuCRt7PQAHPaonI9kdwu4/YyzVp6gMAX
	19bx0bjd0zqps5deMGhbUgMFALZXRYF/1HEkf207S5EX5sTsNTwYU8Dg4t+0DEV4DqfAD76wQK+
	8FLmNwBafK91aMrFgMeO+P7Ay/8JMVsaBE5IJLckXb8XeIP9jh4Fl
X-Received: by 2002:a05:622a:251:b0:4ab:958a:6003 with SMTP id d75a77b69052e-4b0a086e388mr127655311cf.27.1754727505215;
        Sat, 09 Aug 2025 01:18:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSNNSwL+bCDNYNcUfGi9ivlMMSKYd4DhhWVIoEL/gBQIOysZIci5grnnKj6yg9ZFWbXw3i2A==
X-Received: by 2002:a05:622a:251:b0:4ab:958a:6003 with SMTP id d75a77b69052e-4b0a086e388mr127655041cf.27.1754727504698;
        Sat, 09 Aug 2025 01:18:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b889ac575sm3298027e87.69.2025.08.09.01.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 01:18:23 -0700 (PDT)
Date: Sat, 9 Aug 2025 11:18:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        bryan.odonoghue@linaro.org, quic_dikshita@quicinc.com,
        konradybcio@kernel.org, krzk+dt@kernel.org, mchehab@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <2yj3er5j72yoa2ltboopx5gvquur7jl3viqnq5qsci2fxjf4ix@7t63vgizfknb>
References: <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex>
 <aJHqpiqvulGY2BYH@trex>
 <to2hrxml3um6iep4fcxhkq7pbibuimfnv4kfwqzlwdkh4osk5f@orjzbuawwgko>
 <aJMMhIqNupwPjCN+@trex>
 <0248afed-b82d-4555-8277-e84aacf153fd@oss.qualcomm.com>
 <aJNTigOMy1JFOxot@trex>
 <fcdd9534-d494-3fdb-dfa7-1d15da6f697a@quicinc.com>
 <aJSvjqfQw3kNrVVH@trex>
 <447caa6d-13d2-2e75-5f33-6df9b2fd6d69@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <447caa6d-13d2-2e75-5f33-6df9b2fd6d69@quicinc.com>
X-Proofpoint-GUID: siTsZLAJfe2fEE4nOojyfl4oG7mpxeGC
X-Authority-Analysis: v=2.4 cv=cLTgskeN c=1 sm=1 tr=0 ts=68970452 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=1p08hUWWfcFRm61_9koA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMyBTYWx0ZWRfXzPWF+JJC8ZOf
 R/OrwM2ovY+Nr5Og+UwQEp9DYZsPujJeEQyAyD+8VohkY2e2TfbUFI9BCOwI2dfWf2fcyzD/+ag
 wA7WwkXXI2jA/zK03wi39NeCqN7ztq31Tz4n3tl1gnDumF1QhMTIVTm2931Tk19NQUccTTzz6hI
 RKPoiPPQNQsek9O8Xf/vQN3hE+jV2gcwSyr5r+s+Jvhq54wNMviY7AwaoT4a3eYLEO5CU/ZFd3J
 pdYVujPfU4VuX1JlJN3t4dPSsdEMPDi/IfsuEd7bLGNtrfXG9Ycf18J8NgDnqr8/3/N9MzoKCS3
 5qm0OxFG0M/D5ELj1ucD9dxM80PTZnCpA/Oo7i9bEgJlUod0QElk7+RTEZkZcjROeG4W+tobpWT
 mLeB+qsB
X-Proofpoint-ORIG-GUID: siTsZLAJfe2fEE4nOojyfl4oG7mpxeGC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090003

On Thu, Aug 07, 2025 at 10:05:10PM +0530, Vikash Garodia wrote:
> 
> 
> On 8/7/2025 7:22 PM, Jorge Ramirez wrote:
> > On 07/08/25 16:36:41, Vikash Garodia wrote:
> >>
> >>> It was agreed that this complexity was not necessary and that we should
> >>> just drop <6.0.55 firmware support (which would in any case only include
> >>> video decode).
> >>>
> >>> And so on v8, I removed the above.
> >>>
> >>> Now I have v9 ready to post it, but Dmitry is asking why cant we have
> >>> the v7 functionality so I am waiting for direction.
> >>
> >> the issue is in firmware for both encoder and decoder. Didn't like the idea of
> >> driver carrying the hack for a firmware issue. Just because, for encoder, we are
> >> unable to hack it in driver, we are ok to have it enabled in a newer version of
> >> the firmware, we can follow the same for decoders as well.
> > 
> > if that is the only reason please do explain what do you mean by hack.
> 
> I meant that the EOS handling was not needed in driver after fixing it in
> firmware, isn't it ? Was trying to avoid carrying this in driver.
> 
> I tend to agree with the comment made by Dmitry in another thread to have decode
> enabled with existing firmware, no option but to support the *already* published
> bins.
> 
> Having said that, these limitation of having a separate EOS dummy buffer is well
> sorted out in gen2 HFI which have an explicit DRAIN cmd for it. Hope this
> motivates you to migrate to iris soon for AR50LITE variants :)

Migrating to Iris won't bring gen2 HFI. Think about users which have
OEM-fused hardware. For them it's not possible to switch firmware from
gen1 to gen2. Thus, if the SoC has been released using gen1 HFI, we
should think twice before upgrading it to gen2.

-- 
With best wishes
Dmitry

