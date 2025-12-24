Return-Path: <devicetree+bounces-249502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B566CDC32B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 13:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 768E9302BD11
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 12:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CD7F332EA2;
	Wed, 24 Dec 2025 12:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K7UA5kcC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SY/udCOB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A468231AA9F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 12:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766579098; cv=none; b=X/YhFqFKqYY4SMZoPmMCSEeMRMxWw/ihnRIdh8gfv3wchgRuN0m19QyVbzhfB5k3x3KQrCjoULC1A8l9ssG0SvqANVNo1x/ukBkFaznaOx+oapHYFStqg7e618y8qlHNOt4QiDhkVctjOZl4zNIFGbc3G8DRZAB2MuzkNR95Ux8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766579098; c=relaxed/simple;
	bh=pfC9h4o6crTaI2or+wYG/d/mDnRALanyAQinfFHqBoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p8ZmPFNCtPKnpGPl4SNCgcekyYaCH7DRs7LrG18ETDw4UpQxC8q8/KPwZka/lM7UiuKk6lGCV9MbVJJIbAB5tk+xUcIaEa1PL9CKyhiQBLhQRG68Ca08hvlx+PJFx/+2xVbmv3jSNGz+G0vfphUW3/f448QqTwixzIR5l5rhk3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K7UA5kcC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SY/udCOB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO527bP1018084
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 12:24:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+6gsDfY8K5SjCbfjjF1NSfML
	jmGVRNncSsmnCTRNiQ4=; b=K7UA5kcC+WBRVbMKVJYAIuXQlNOxC5wwOZ/ZYT2S
	FcKv4ezzkb8gW7o3dFt/S4226R1KqwIjPmgZtCXXH1Wy9FqcU9Sr9CY1d8OIxKxd
	ivS5CJ78op+ABxtYaPcDVE1WTpYFMriSKvtpo/1yTfDiFe5TDr/vXs0+gjOox0Tc
	l3UXmlooM03I2zhJ7YQof4vDA4Dhe4ggeLTIy7lRoRlel7HeOgc+rFRGodlnXgUe
	aAGqgM6w64HgEftv28cMlNwIAmkegDC9/WuZm1VSMcbmrYGwcYvAFb1weUFF6Mhm
	QZluuiZL7wABVOMFgT1oTWGJ82fVlCnJoLu6dL+ZPZ8ZBQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjsaucx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 12:24:55 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a2ea47fa5so159241836d6.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766579095; x=1767183895; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+6gsDfY8K5SjCbfjjF1NSfMLjmGVRNncSsmnCTRNiQ4=;
        b=SY/udCOBg4MuIlRgfIU8zDdVKjFSlk6i4XcHMdvujc1+g+FiOdW1F6vOnOYHmsWVdF
         3xyJybWN92lmKxNs4ywgydXV8c3SrtGriAU2s/ldCzK6IGwkn6DRb32HKEGUn/DjrpKh
         m5RoQ4XuO7D8XZV8t9uyXGguAgVUvkgvqHedEpX8/DQsXWdPo2t7XMnL0nmHTUBv2+Ea
         iHSYCDTZ6egbXS+twMR97xOkdamBT42PzK0627nfunph99hUPCx3vEhlVEQ+vDOqBJaa
         ddUEEmfdzwYp2YK/veohqtm6o2CJEvCxDL8KzC/lRJiWNHpfInWQ6VzChkt191qCs2Mr
         8MOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766579095; x=1767183895;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+6gsDfY8K5SjCbfjjF1NSfMLjmGVRNncSsmnCTRNiQ4=;
        b=s2VPQWQAqiqkEibxN4Z4fcReFlxsygLPen/ZerzXPllGIBGB4XehfsueIWrIy8x7HW
         z6w1Txmf6MzCcCQexnT/uw5aSOz1YIjmiTniwVMvFIBhhrVf/b3bggGVG6+Vr+RI1c/M
         kA7vRxXEJaSfC8PoH/PMmVLzAYcrZu7TMvXlzgXcoLuUm5+D5fkkOyBZglT2UxepAO0K
         xucNAECpAq6zJG7Vx8odOupcSmPRHaVPrGZYWBWcPbw/uSiYF0lqCUVJIawpkKqJfhUP
         vmo78KJ9a8F/GxZXPP1mVpIMykt8tTbu2yQpt4ZEwz3uAG+KbJNQAK7FXW0/jydEQlHl
         SUVA==
X-Forwarded-Encrypted: i=1; AJvYcCUDpXxc6+5QNZYLJoizmCWyZI+MZQ5x+D0GexPyz2jtidMoDnmRdLSNKxvJ2U2xFSoX3nPEhQuf3bvp@vger.kernel.org
X-Gm-Message-State: AOJu0YzmQzL0g2tPendBGFLfZYwUqjoBOyNvbnK9NTxC3u3P56NU9Sq0
	9A0u7gFizaw/eii5/Z/O8JnbQaxEa+1y/llMQktuUVxrK2m4ZrPhsmqTQLEV52T9buPoZ8d7tGy
	rPq9xVrhwikgQXAqxpt5pAYEG1kmr4GzuwZptWGnzZHkFPux+Y3WjtQ8gwMAUieGE
X-Gm-Gg: AY/fxX6Ra5c+SCHN/JEjBFk1I1MTQ6WBzWkkeFtd1YmqzhrsB6cMnHhI+AXK0a8vFAj
	ZPdRuQoYtuP3L4TI0B9lZW2DjdFtuSAV6v5laIIyKKeZO/dKdhasre/oqS1rAzhQFrzUnC4KY61
	67G2AuCRXaF/kuMlnsOSTsBAz6+SMPDPZ3Mxg4xs2QAV01lOg6y835wLWqP+SyHp8EVwYhvjbd6
	MJcx5sfyncjYGjnQ8/v6+wWWt69SkODhnEttaJo7BPL9yJkAr9Da9hsQIGeFRERDNYDHNVHW7e1
	DJVnok1//XugTsDmfgL6ak5bgsgW0MPPKCkjZdD/UjupZ/KTfticVcF9FC8A7ruZ/QTW29eOJC9
	LmUU7zvebRjiSre1/31AayixKahR4kuJJjPiwzo3cpwNFGDahS63lv+rfJ3Z1ZG33mP1xDyw+zY
	ABb5KSP6tPQ7yewyG03R89fHc=
X-Received: by 2002:a05:6214:162:b0:880:5249:be4b with SMTP id 6a1803df08f44-88d81d4dbbamr209498766d6.12.1766579094877;
        Wed, 24 Dec 2025 04:24:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHWCyi/nwSkotqwxLAaNBE+Ufwf4XLN62oC7VdDVCZbC0RIdQn614BVREif9J69YCayN/Xfzw==
X-Received: by 2002:a05:6214:162:b0:880:5249:be4b with SMTP id 6a1803df08f44-88d81d4dbbamr209498376d6.12.1766579094290;
        Wed, 24 Dec 2025 04:24:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a181beb5csm4866765e87.0.2025.12.24.04.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 04:24:52 -0800 (PST)
Date: Wed, 24 Dec 2025 14:24:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] media: dt-bindings: Add qcom,sm6150-camss
Message-ID: <khu5l5uqbnouciu2yari2t5ragt3dejdfmhjga2rvxoj4wi43s@c6klzwsscyzh>
References: <20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com>
 <20251222-sm6150-camss-v2-1-df8469a8343a@oss.qualcomm.com>
 <20251223-pompous-inescapable-sponge-3fc9f0@quoll>
 <c6174a0a-9a76-4284-8675-bb5ca78a7b35@oss.qualcomm.com>
 <eklzmnlnkanrper7lt46vap54u5giprsmwhwpr4am5ytwyohov@kjqvls5vjani>
 <6b52d19e-8ff1-4bd6-b854-bcabccc7cd74@oss.qualcomm.com>
 <3342fv43qdkmm66jgc63hho2kd3xn65p2fv3tyk3573izlxf7i@hgjsp2kwqyuh>
 <26536725-19fe-4aa6-8a33-8e2e39261cd4@oss.qualcomm.com>
 <03a398f2-6108-49c6-aae0-77701fb066ea@kernel.org>
 <9edc9c94-762a-4688-b2ca-95900149bad9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9edc9c94-762a-4688-b2ca-95900149bad9@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDEwNyBTYWx0ZWRfXza/IU4GcRzgu
 gZXgh4QSW9VV5R50bNfENPeQKirqMRfX/j76RwEKh87D8MwkTP0GY66GT6eqACh9NFLmn+PhKYg
 yMazKNV1qlObJZB1bpOWNKSN9lumTdnjCZ7lR/nRqxkhwjnR5Qk5vWBQq/e9LbgBxeNc0JU1KhN
 8vAmpqqreJ0kM5dLBRv34K6fDZLC/PShsmCGD9LuRrFOtiVTkdVwdQcA9IZW7i41wQMjVNynCCe
 OAgVoJytp9F3nXfzjMbhpuN4/gc5YM5Vc2HR1GxvWJ31dRZO+wp2aKfvpEYns5xf/86sZ0/9d3Z
 h0ieGSeQwZqwcxP+XUyKueG3OPwEFyLBUpEHtNMLaAPB4ABCqPqjLBgIKEyz5R41QBGfxtHjRaq
 E1UqQjvUTHvga/YE/RDGUqjXzOVeWOhorg5OlcAplyZ2Wq6AFmoQGMmqY9ziq9JTqOIEWiVDsaO
 tcCw0GMuNQysoufOB4g==
X-Proofpoint-ORIG-GUID: HJcO-a0C14mFNgoYi9LanjdXLKN7f7oi
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694bdb97 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=MGZ0KKulDz-t3CXZdTQA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: HJcO-a0C14mFNgoYi9LanjdXLKN7f7oi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240107

On Wed, Dec 24, 2025 at 06:29:43PM +0800, Wenmeng Liu wrote:
> 
> 
> On 12/24/2025 5:46 PM, Krzysztof Kozlowski wrote:
> > On 24/12/2025 06:36, Wenmeng Liu wrote:
> > > 
> > > 
> > > On 12/24/2025 1:03 PM, Dmitry Baryshkov wrote:
> > > > On Wed, Dec 24, 2025 at 12:31:33PM +0800, Wenmeng Liu wrote:
> > > > > 
> > > > > 
> > > > > On 12/24/2025 12:21 PM, Dmitry Baryshkov wrote:
> > > > > > On Wed, Dec 24, 2025 at 11:18:02AM +0800, Wenmeng Liu wrote:
> > > > > > > 
> > > > > > > 
> > > > > > > On 12/23/2025 9:38 PM, Krzysztof Kozlowski wrote:
> > > > > > > > On Mon, Dec 22, 2025 at 04:28:39PM +0800, Wenmeng Liu wrote:
> > > > > > > > > +  interconnects:
> > > > > > > > > +    maxItems: 4
> > > > > > > > > +
> > > > > > > > > +  interconnect-names:
> > > > > > > > > +    items:
> > > > > > > > > +      - const: ahb
> > > > > > > > > +      - const: hf0_mnoc
> > > > > > > > > +      - const: hf1_mnoc
> > > > > > > > 
> > > > > > > > Same comments as before, do not invent names.
> > > > > > > 
> > > > > > > <&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
> > > > > > > &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > > > > > > <&mmss_noc MASTER_CAMNOC_HF1 QCOM_ICC_TAG_ALWAYS
> > > > > > > &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > > > > > > 
> > > > > > > This platform(qcs615) is different from others. It has two types of sf,
> > > > > > > namely sf0 and sf1.
> > > > > > > The same as it is:
> > > > > > > sc7180 sc8180x sdm670 sdm845 sm8150
> > > > > > > Do you have any suggestions about this?
> > > > > > 
> > > > > > Which _names_ are used on other platforms? This question is quite clear
> > > > > > from Krzysztof's comment.
> > > > > 
> > > > > The platform mentioned above either has no camss ICC node or no support for
> > > > > CAMSS on the upstream, so this is a new one.
> > > > 
> > > > I did a quick look for you.
> > > > 
> > > > kodiak, lemans, monaco: ahb, hf_0
> > > > 
> > > > x1e80100: ahb, hf_mnoc, sf_mnoc, sf_icp_mnoc
> > > > sm8650: ahb, hf_mnoc
> > > > agatti: ahb, hf_mnoc, sf_mnoc
> > > > sm8550: ahb, hf_0_mnoc
> > > > 
> > > > sc8280xp: cam_ahb, cam_hf_mnoc, cam_sf_mnoc, cam_sf_icp_mnoc
> > > > sm8250: cam_ahb, cam_hf_0_mnoc, cam_sf_0_mnoc, cam_sf_icp_mnoc
> > > > sdm660: vfe-mem
> > > > 
> > > > I'd obviously hope for some unification here. Other than that, we have
> > > > two clean winners: KLM and X Elite+SM8650+Agatti. Yours proposal is
> > > > different from either of the options. In fact, none of the platforms
> > > > have the same _approach_ as yours. Why?
> > > > 
> > > 
> > > Yes, you're right.
> > > But none of the above cases involved having two hf_mnoc simultaneously,
> > > so do you have any good suggestions for handling such a situation?
> > 
> > And this is your answer to use completely different style? This makes no
> > sense.
> > 
> > This is your logic:
> > 1. If there is one HF, I will add underscore.
> > 2. If there is more than one HF, I will remove underscore.
> > 
> > This makes absolutely NO SENSE.
> > 
> 
> Would it make sense to use hf_0_mnoc and hf_1_mnoc to differentiate the two
> paths?

Or just hf_0 / hf_1.

-- 
With best wishes
Dmitry

