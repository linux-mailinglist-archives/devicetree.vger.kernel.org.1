Return-Path: <devicetree+bounces-244354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4D9CA404B
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 15:31:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D83AF303849A
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 14:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49E8834B402;
	Thu,  4 Dec 2025 14:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HCEGbSFv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CKGjHTXW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171973446A5
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 14:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764857961; cv=none; b=I5wxj54QokRGy+vV3dWJswoy6hlfZ9SO4cynuuiapsn+aOd9TG1nNY4qxbo6LLj8VxX6+SQZesL0qdOf86OVUCvHDzM3fCwselFl1ZqYzYDvcUFpGKp1DkhMXs3onXVW74+eU7d4fp2hsAhiZSQKgn8a5eZrQvzjBqzi4v6vteU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764857961; c=relaxed/simple;
	bh=9NGOiGgKQa/KDGOvvjC+eE73/jRynpYOOqfFL+r7lbA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qBoTPLNl7u07IcNzAbBSfA0ItWBo+xajtfRZHggo7XD9nCNKfBpttrvRKaG3Eyh+I+JMdktlGsVqB7dxdkYFO9ozrSfKyGSon4cP0JkYJBrjnSknrYhmzXeLSYcRBIfzDuZ9EBUV2qCN7epde+T/2Mh3WNWM7hq11vNiw1o3sv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HCEGbSFv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CKGjHTXW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AEt4F1275637
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 14:19:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mqkwYOUmyjupzirFYCxiZXeG
	rlAicEzgr6b6eb9AWv8=; b=HCEGbSFvYa0sLYysDUcgB9uuxQEeLSuSdpnYs5P8
	rR9vvSlSDap99mqTIweB8oejsLdx943GsX7638oAwSAyJKLMH8zvzHJqJ18e+Qn6
	fmwA+Mx3HRBh7aiRJq1arz14AuxR/StWKilHp4UIMBxeWtEl9qv6OQLfZSCBi23t
	eqvmXiiK67Ssbus9YwOM/Isfcs+psU+rVMWbdzBGZXrrnoZO7wzBCti/fZIdUKhE
	Qu0PLv2e1B3iqkkPFnVwAZX5o6gTOG3naXYE/vYDYFNvoUhgT6eZBpW4xgVtpY17
	URP97X8dSu8rhcSTeTS/+s4+NFfBGn9156a+y00tcItKmA==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6uvs0yb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 14:19:14 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-55d05bf6490so513545e0c.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 06:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764857954; x=1765462754; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mqkwYOUmyjupzirFYCxiZXeGrlAicEzgr6b6eb9AWv8=;
        b=CKGjHTXWptycNKVio2gmFp8EaMBAog52MHjvLweyY5o59UjYQvacFoQCaUHoyG6ksH
         ruvODsXQoMZXNvf5PK1jbKW1Lvf0H0kZ+0Wdvr0T8ZmynlxxffH+sSFcqCaL6eSICU8N
         PhOoAIsi9oXWl1SedOTS8mNRPZKZF05xvA9CcJAfnyq8ea8HqG/N4ewXMWukuTOl7ZYc
         HIDMP+AAHO6nFhmIjwcY5fCg/XxxjRBDaBbVrI/JWDSLa0OPv1ZzIow/oZYXd7DkWDuF
         0TgA2ITPg5riUEk8zRGJG2Z5/kB6Wo7qdkg/ZzixQ1Lujnr9LfwNQHXBrQIu4LzSVleq
         uRbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764857954; x=1765462754;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mqkwYOUmyjupzirFYCxiZXeGrlAicEzgr6b6eb9AWv8=;
        b=usVkczTlqnxA1OufrFH5SnV+xATc2n8ytQRRtvzZssNtI2sv0UvDuj8Cy5a/nQpWJT
         qSuIZlDHo/O2WRjA8t5M/SAtJJkUxw089Y96QbmaaESj7yX7K4reoO1CjDu1Ui7H1x9w
         ET02SfpXcx8WMryQbA9ix+Hnv3wvXb9norozG+M/j6x6zjOnazoSTrv5kIq73gx0R5ao
         LUvDu8I/UmCcicwR0GguTJM57ika6dHG/F2oXlvU+ZFOuxhes9YsaixF5nk4qU9sVRF5
         9zVLa9gBj/1HLnc4TGCI1SzNK2pH+frB1SmORJhLtJ8ZryNQTmtCXxuXf5h77xhojv56
         EBjw==
X-Forwarded-Encrypted: i=1; AJvYcCUtNfDX8CKnBaGeBPteJJQV6Tcc8d+JBwavEDrMgVGm8dKvx6dKr0vChaW99DA0LeH5ca/vO1ta91B+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1TsfGT+95iCADAQ1Wvriy+X3zv73wGGS7Q16LC6T/oZa1lsGO
	NupbulsS2SqdFNumE3GGErbJTnA+SrrZxk8ehqPIhxfneIq7gXeQ7LZbh2ZR+tbwf5IiCGgqUm9
	wyjvRMcp0R/eB/JCoelC2puwrtmbB64iqtg9ucUD9T9Gl4RQwbZFMpK3pkcb+i0uT
X-Gm-Gg: ASbGnctnv6qekiXJvhRigiPRBtGkLESlSt7BChUB+r9kOzKjVvsAYPmlEsOA7m7nGU7
	TukKG0cWZmx+d4Toa9qBEseYRdK73axxBTpyL8ZRMtJfmJQmqFUM51p9h8em+ODSWx93UWEMv4w
	srHNlyGrhdtc9e4B7Du0Ey6RxZD8IPmBNwhoE3m4eGQx8BwtVkmvFC+UZTgAnfPiPyh9dxWWBxq
	wSMCi2uibesiQaGaoiHXbCU+FvPUFprc5lQfEMXEEfjtmcvPuqMkC9X6EccsfAfnhG24Zl8JII3
	9hMRSjqCg2BNvzThc+FvPuLNJh+3gZMgfsE1Jsskl5tRdqpiW9r6NwO28QgYcKb+oQBuvAmo55k
	TxckuRuJjfbO/yWUeRAncqyWbXLLoMaD+K6XksXu7gdH6BiP0WnjqHEWmgKrTNAt45vIPN/DKvw
	2AlmSsjrl3/HMzZoWUI0rG0uM=
X-Received: by 2002:a05:6122:8b1c:b0:55b:305b:4e3e with SMTP id 71dfb90a1353d-55e5c069222mr2089136e0c.20.1764857954083;
        Thu, 04 Dec 2025 06:19:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH+C9sPLLhanFRiDS0Uhb5SqXmagHH84fKENQBceI675Xl3lju6FqtHCMLOcYbmnIYg1z1JPA==
X-Received: by 2002:a05:6122:8b1c:b0:55b:305b:4e3e with SMTP id 71dfb90a1353d-55e5c069222mr2089112e0c.20.1764857953644;
        Thu, 04 Dec 2025 06:19:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a550sm565511e87.6.2025.12.04.06.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 06:19:12 -0800 (PST)
Date: Thu, 4 Dec 2025 16:19:11 +0200
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
Message-ID: <3gqq3w6ovy5srgvabyeugsjbwrhaxmjvicykhjmlcxd74gtsaf@5u6wvvzeq52z>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
 <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
 <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
 <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDExNiBTYWx0ZWRfXwxRU9uKzokT8
 8BKuE/GjruXErbIVMi55DNeTTZkEtOCHGvSNOaR9T2Z+DhPCoW/5IZw2n0HI1irbKrBUF9VU9Qd
 NscQOoDb4ivx6yqoFx94+lVMzdOTd4PM053vKjPX0lb6Wh357DFVcRpWU5G+NESZboNlrN9+hUu
 h6993XbYlXXnM//4dmv+yy+Zhhb/e7LLCdAUtZ9XJd3OnviBcNf7tN7NQHhBgPOWG0y4hV2GTMz
 syfjG14orOq/B/rEVYQSEu5tV4E0rdxBd69H7/FUpK55f4tYHoS/6TtJ1ogqGFNq8zd1+rr+QtC
 U+yvvLKhdLS6AGkHyIf7XGnajwxCSLPOskPkAFgS/Te64Tv9vzYTWNO/0LYgR1uLf5e4CFX1kDh
 9fEkhZvNSzmricE06l/XNS/peTPpng==
X-Authority-Analysis: v=2.4 cv=d7n4CBjE c=1 sm=1 tr=0 ts=69319862 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=sIfkXvtQUm5KZGAQGskA:9 a=CjuIK1q_8ugA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: iWhIaRgNaN2JCSO8PqZDut355usepncV
X-Proofpoint-GUID: iWhIaRgNaN2JCSO8PqZDut355usepncV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040116

On Thu, Dec 04, 2025 at 03:43:33PM +0530, Akhil P Oommen wrote:
> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
> > On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
> >> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> >>> From: Jie Zhang <quic_jiezh@quicinc.com>
> >>>
> >>> Add gpu and rgmu nodes for qcs615 chipset.
> >>>
> >>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> >>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>> ---
> >>
> >> [...]
> >>
> >>> +			gpu_opp_table: opp-table {
> >>> +				compatible = "operating-points-v2";
> >>> +
> >>> +				opp-845000000 {
> >>> +					opp-hz = /bits/ 64 <845000000>;
> >>> +					required-opps = <&rpmhpd_opp_turbo>;
> >>> +					opp-peak-kBps = <7050000>;
> >>> +				};
> >>
> >> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
> >> or mobile parts specifically?
> > 
> > msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
> > here.
> 
> The IoT/Auto variants have a different frequency plan compared to the
> mobile variant. I reviewed the downstream code and this aligns with that
> except the 290Mhz corner. We can remove that one.
> 
> Here we are describing the IoT variant of Talos. So we can ignore the
> speedbins from the mobile variant until that is supported.

No, we are describing just Talos, which hopefully covers both mobile and
non-mobile platforms.


-- 
With best wishes
Dmitry

