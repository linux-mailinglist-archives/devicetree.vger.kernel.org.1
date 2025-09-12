Return-Path: <devicetree+bounces-216422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2069AB54B5A
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:46:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15C621BC35C7
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AAD03009FF;
	Fri, 12 Sep 2025 11:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M9Md+6Sb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DCA2D238A
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757677587; cv=none; b=OScUkvM1CnrH/P2g/e9+s9VjlLrOIGTeamFofJSMqXyN4Dp9TnyzV3p6rIcfouVkiJj/k0zbeKXs62njyYXO9U4bQnTVM+PdyypWynxKPoEqtx01qIIw7nzkJQWcHybf+jQ8BYU8GRlKQQYXEWclY03THH5dZswVy9GMb8nByPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757677587; c=relaxed/simple;
	bh=sarR2gK1o23su9ij3Nbhg6+aI0jOXkLMOpLRa4ob2jI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A2OSkCwCa6/n/XeFwZQY8uFX2UwNuyAJfh7ylTx2F7NgTAK8S5uIDCSH76xfOZttmWmRUqVspM4S+uxoiM8j/ta8V4nr80VMlQVfwrvIjeyPhl4n+yoGkgUmJDeBbUy5PyIuXq/jmWWyfDBgHQPf+HAipW5yaYvGR3slFKLerr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M9Md+6Sb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58CBBJia017458
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:46:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7bZSPwCaveiNyjpoVwp2JaCT2rjVag5Jy+2B65HThZ8=; b=M9Md+6Sbi3Z5o7Sj
	0pPKOLsdok6kNB6liuAecuvU8W3GY9mtrWjlG0q/ItPlQY2xkHSECp2X/TphSiFJ
	+kS8eRpb/hE0pzK7m2Eg7gLamreGUY/ohLmuXby/H5sof+kVeg5tmxrzlNCye+SC
	9WPNPKtRVmYkYJw/gkmim3xTDMaKfi12Cokxf/qZSiHfonaMVD9tNDflDi9kXBHA
	1cyMaeGaccb3lQXqd5SPINvOkvYwLQMmiNbvQHTwWdo4/CPOtHujvuawS+b6MTiE
	HVsaAOcCd9+wp3ydOAsl+7JNPcKyjKu0dJxMnib1ZdKKdtXT/QwR6GVFBvB2/sCN
	eJoEmA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494jdx0306-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:46:24 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32df87e42c4so17956a91.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:46:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757677583; x=1758282383;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7bZSPwCaveiNyjpoVwp2JaCT2rjVag5Jy+2B65HThZ8=;
        b=CY057xz/XTHuRi2WUM7NziuANw8CS+zyban72ggQFrtzvA/2UXntvUNt+xLA1ah0ZK
         z8q7K0k7H+Kb8omdFUUEPEcClDw7F1gVPlA/xty5bwyc1ARsfNceb/pHjEgb/GKNZrJm
         9EqXLywD8/XAlmNoZcpK7WDR1n9ofgnmK87M74viabnGwpi6dCZI9giFg72+FeDK0uqb
         nPQc4AVt2DnYaHpHxdXRS14KMR2uQzFcdHKQGAIWuIlfv9IzNVAaaeIdxl+rYNZNpPdi
         xtwSG2/J/PTyS8fX2iH5dte7sNZpwNTnfdnFpkjSl2GIRnphZQcyUVKo+xJWiAolPCQQ
         ualw==
X-Forwarded-Encrypted: i=1; AJvYcCWJRDHisWufnQsE8YYMxMUM2/n8FOLYEIYNoTnKvTezWvFS4LJF5bwMvGNMhJm5fZf2JpKrVDqHU9rB@vger.kernel.org
X-Gm-Message-State: AOJu0YxyzEjziXTvlADkxApwoi7KSRa/EF30bpzSOZHn/T7HDk+slOag
	QxkRGAUwJt90TNJAzrOLSJEbWvMAnO//P5a/tHyo7Wi2R7IjcWY/0bNAFah/75AVqyDHNuUxCqN
	u0SE80MhRckr+PTQqsvqCUAVsbql0IRqerGDUIFwb6hf7OPKZwxsvWzqxC9ABtMhi
X-Gm-Gg: ASbGncvDa1ACwkTWCiiqckuDgyQ085VbZ/m9EsTEt+p7at1KndukRWyg+UshbhpDeAh
	O2Z/C7UGBtYXNnjHKfog7MGk2i6r4IrsiGb0Ezre99Z8qHVxuUp8EZf/wSz2XjxK4XrJmEoqkmU
	cDpwr4Nc4N5x68yWXtD6gw66bN+iryeG9Sy7YxGulHWdE5meuOO7xpeokqmvi4TkhoJuN3r+44i
	Hh1bJdfRPKm5Nn1FWhwkzgCRAgMEnX46FA8L1hK8V2i6ayzRWtBT4lxgb/d8Am5ltBnRb+MYI0Z
	oXkxkF4RWxu9dRkQtBrGRan6jYCD+RD8bTt16oMXImheG58wmbYb3QZV509gnXIVT+KN1dtoew9
	3N4NKhCeQ1OVUq2MXidKqQUpcp7tBsQ==
X-Received: by 2002:a17:90b:3b49:b0:32d:ed8d:722b with SMTP id 98e67ed59e1d1-32ded8d7605mr1011405a91.2.1757677583412;
        Fri, 12 Sep 2025 04:46:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOO3x9HBu+6RQUyafNlV1VtHCgdpyhgYvQ2Af2AZB8bDMWIdgsW8DZPmtsiC8C+rNUWBKRqA==
X-Received: by 2002:a17:90b:3b49:b0:32d:ed8d:722b with SMTP id 98e67ed59e1d1-32ded8d7605mr1011388a91.2.1757677582972;
        Fri, 12 Sep 2025 04:46:22 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a3aa9234sm4626367a12.54.2025.09.12.04.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 04:46:22 -0700 (PDT)
Message-ID: <d08bd288-6aa2-4a7b-9424-0e2e220f1c1e@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 19:46:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
 <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
 <e974ffc4-9bcf-4de3-ac09-76b34b47cf5b@oss.qualcomm.com>
 <274b27e6-ef43-4597-a7d6-1f948f2e6c5b@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <274b27e6-ef43-4597-a7d6-1f948f2e6c5b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEyMDEwNiBTYWx0ZWRfX6A7n0q6JWh6t
 Gwmui86oZqH/oHZ1wKk0rDI/pFQrLZsv/X7YhjZzuuvO7nt5vOJttHwb2BznfQ70SfvmeTHzFS2
 4ir/TLk8DVYdsEmkkYYBCofSRUJGq9S5X49t4Fpq9md6h/32PK0ALbwEWkdC822METwBL3BX1tE
 VJnGprqA/EVhwLSh6MDoxL+JZpxnrofVGQb2gshX1Cx0R9DYvcfwskhA+t0xNh9N0kxxl2iumJ4
 AuJQRdYv4x7T4sAYaPs0/Fw9aGzi0qoBH0b54yjff5nZcnDFAIvjki6zg1pu55mcLnqSYRjKWDP
 frNouyelo0tmZMKuZpDhuAqJTWB+i+ac+5NSwRNLteF2QFmhoGaz6SM452MJGdke5pivHa8o/Xk
 JeDVh8JP
X-Proofpoint-GUID: KlNb-Em0Vu8kDXp1W_UwvAsGdH-U9V_K
X-Authority-Analysis: v=2.4 cv=JMM7s9Kb c=1 sm=1 tr=0 ts=68c40810 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=1iQPH-MNloaYeFAjbucA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: KlNb-Em0Vu8kDXp1W_UwvAsGdH-U9V_K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509120106


On 9/12/2025 4:46 PM, Konrad Dybcio wrote:
> On 9/12/25 4:15 AM, Xiangxu Yin wrote:
>> On 9/12/2025 9:24 AM, Dmitry Baryshkov wrote:
>>> On Thu, Sep 11, 2025 at 10:55:01PM +0800, Xiangxu Yin wrote:
>>>> Introduce QCS615 hardware-specific configuration for DP PHY mode,
>>>> including register offsets, initialization tables, voltage swing
>>>> and pre-emphasis settings.
>>>>
>>>> Add qcs615-qmp-usb3-dp-phy compatible string to associate QCS615
>>>> platform with its USB/DP switchable PHY configuration.
>>> This should be the last patch in the series: once you add the compatible
>>> string, it is expected that it works.
>>>
>>> The patch LGTM.
>>
>> In v3[12/14], the compatible string was placed in the last, and you remind me
>> will trigger unused warnings for the earlier-defined qcs615_usb3dp_phy_cfg.
>> So I merged them in v4. 
> The intention is that you can do all the preparing first (which doesn't need
> to include an assignment to e.g. DP tables, since the code operates on a
> pointer if it's non-null), and you can push all the platform additions at the
> end (both tables and compatible in one patch)
>
> Konrad


Ok, then merging 04 and 07 with the compatible in the last patch
looks appropriate, will update in next patch.


>> If move this patch to the end, patch v4[07/13] will hit unused warnings due to
>> missing references. Should I squash patches 04 & 07 and move them to the end?
>> I'm concerned the resulting patch might be too large.
>>
>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 141 +++++++++++++++++++++++++++++++
>>>>  1 file changed, 141 insertions(+)
>>>>

