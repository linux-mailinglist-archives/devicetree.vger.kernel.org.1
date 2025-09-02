Return-Path: <devicetree+bounces-211674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95550B40032
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 152231897045
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439592BFC7B;
	Tue,  2 Sep 2025 12:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B7kUuleN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C000C21FF44
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 12:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756815770; cv=none; b=iQ1xLUHspiGcbEc/zD2a5ZWBK0aj0iIDV8lnVu6fSZgbRw+MR5Nmo10ugMwd5Ys+3IjsC6h3ig+CmPR2RHfN4m0x6CofjM+2tf8vuudA7w3YSXBzTihytC0IcJcvmv0oFsT4F8Qg6jkWVHTBB4C+YLRj/WwYU7zz1im3Ijg7mNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756815770; c=relaxed/simple;
	bh=F/DRPIY1JzJfASVH0+5DxM8yvCWWP9vValqVHMMfJH4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c8lGiFP1N/S3itVooitVRaN8/UPbOMHtidYxnF9opVaBEM5p9WHcmG9S+aa030qthnwRKlUu234GHqqOyUyXgi6cMTRnWre/a9fiIS39DkvMz8S/S5P7aVt/WniyhQGniZ5nUL3BMb+JEG1mV6ydudEQKnjizbP3/g/1QoRKJ54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B7kUuleN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582BEx4r012536
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 12:22:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hyYC2IjjKnN8kVstgOeFh0U7UpsX/qMCfNZKVjJEVk0=; b=B7kUuleNTjCbambg
	E6+nJnpWkiq6RCKODUO9LoHekh6orQI0Ewip79L+QK1sniuw55Lx7NJ6Hk53Y3nJ
	j5nNfwX++wWRIC3io5BIriM23tjh9o4j1Fa6iJcgZZoGC4gkKIPeyJu0L7eJzFTF
	9V6E/6jLyHatrmSQa6sTI2QhYiFiiP2hYqBgbnVXuH3ZQc0PihSSFSuJW6oYOpHI
	7NsQdD9r768db/QbaEuCK7u76sIgHhAyljt09LcTO0t1UyuhIIVsSZjCzZTyOfzc
	YQsZPsKa+iGjCVWmmlirsYjN+OU8hQvgYhR/RP+7VT1ugWCk4Pa46LxL0kAXE9lN
	7a3RUg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0efvgm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 12:22:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b302991b39so89059851cf.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 05:22:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756815766; x=1757420566;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hyYC2IjjKnN8kVstgOeFh0U7UpsX/qMCfNZKVjJEVk0=;
        b=Q5qRBnORUkol2uLn0cpYTPA9Q04PGENNaamA+yUyFSjEwEiBPKcCN6QxIBJMNr6GAj
         wnnIy6t6nIcSuBedOmxN4t8Giv88PeigbYrvQ5zdju5mhlzyHASTw07rJ2DK+AY//VjD
         ZdA3AgiT2myURDYKsuXxSRHoovUt6tFjwij0Zk2VMwu4V8gO+sa52/gtE6YXiFkX/pUv
         Ogty64DSTz26f6LFGCKgzh5qszXk4xPDxQZULOzBORFIOim25mp18rYcKfKK0nmZ9EcS
         cyBeVvS0NRDmfiFNGj37w5Qr+3O1D2H1oQSsrcQAc4ixd9kM+Rv1ZLiWUeXLL3NAFaYf
         WqUg==
X-Forwarded-Encrypted: i=1; AJvYcCWL6kC8jD+afbMIkenl2544zKYXtwphnUof2ZhkFqJmEIPJM/0vUdysAhKmm56LrNl11WWbsHRQg3uj@vger.kernel.org
X-Gm-Message-State: AOJu0Yylir8OmTnDQd+iQ5HaW3WLfW32W9NmELDvxN56TojrvAv2U9qZ
	hq4mFAzy1BvTM1ou8uziYpCgfWyDCOAGCyEw/qh6VYirAr0mTOQqgxb51PciLulkVrS07zIrjKA
	KM2MmBfyahjWRray8sOE/7Qk8C2OlNlSSAjvc3wckr9LAx5kT/oqRjW/GeQVmfPPG
X-Gm-Gg: ASbGncu9/gpCehoEZ8A51UU8/M0sfLyjIyPg7TthdP9Sivy3CekLd58Z7lRHbwS4my2
	z2xsuA+Qwe1jUJs60OTrDR8l6GmUM1Ixvcd4jyFyEdlr89zLsisLjD2xSDRm1pvfKoA52qK7eBU
	8n0U3hYGYeUuoLgxSA/10n1ExVLRiW70PBEPgUajSK8i/BSfmom7lIyqPaXSLf62JS7MrIehPAR
	zXk30EwubkCrO3uJvEyzxYANLQWDVbn5FfxyI1M6Cq851+sOrSnq44z0lPHdrMMvMEdVNq57Onh
	oTxSJjg8L6j+CAt7lkRGMxxKWaW3VTssTThmbprAvYhkzBcZHx/fdZmIwlsEPvjFME4=
X-Received: by 2002:ac8:584b:0:b0:4b3:e5b:cdd0 with SMTP id d75a77b69052e-4b31dd84920mr117886141cf.79.1756815765379;
        Tue, 02 Sep 2025 05:22:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAh8031gbB5vrQHflTsJQ50ZJLtuJxT6ch2hi1H6NNi5Ygg7c2bWKWQ1gJUJqXwKchmELMmA==
X-Received: by 2002:ac8:584b:0:b0:4b3:e5b:cdd0 with SMTP id d75a77b69052e-4b31dd84920mr117885681cf.79.1756815764723;
        Tue, 02 Sep 2025 05:22:44 -0700 (PDT)
Received: from [192.168.68.118] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45b7e7efb79sm197449345e9.9.2025.09.02.05.22.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 05:22:44 -0700 (PDT)
Message-ID: <5bd88696-476e-4a80-ae89-35580203d13f@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 13:22:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] soundwire: qcom: remove unused rd_fifo_depth
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250901195037.47156-3-srinivas.kandagatla@oss.qualcomm.com>
 <bd11cb82-d8ad-40bf-8bed-82f9e8710117@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <bd11cb82-d8ad-40bf-8bed-82f9e8710117@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: uWGsqJpXrPN7qiQ41lnfeWTSrf7uVBKm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX9DEqPxbvN6zb
 kvgn7KPIAGTfWwLjDDHtOwlD3ExVOon2hsc9QarrydQhd9xL81OxKNiXMfTW7vpZ8UhMZEhcTVv
 VrB8BXTc8/vtItfIDYVHX0JdEJrvqzIUWns7nYpk1TqGoDHypJ98wVQ1EDG0Sl3HvCDkaOGF2vb
 wtJxKF/kGxAX1a1MpwP36un7aGhztJS8UxFfnOmsU8wFMeb/GmoYv6mQRVtN7tFyw1au4f+9dXw
 pRiRYtFGRsdZoWQ7t9peSGfKErAPnKEVLNU9lLRLX+dFyXQbGB3zyFe+vFIWi+mcyZoR+IrxPTg
 ZVxBH8u2D6ml26xf4D1AfNUt56U+QXjBy3ibt04z4DDXIv1IV25oJ/P/jb9hFrDWT7/4f/ANS1k
 LH0Mh1vu
X-Proofpoint-ORIG-GUID: uWGsqJpXrPN7qiQ41lnfeWTSrf7uVBKm
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b6e197 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=1ucdiQ-pe5FtM2g45dAA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004



On 9/2/25 11:01 AM, Konrad Dybcio wrote:
> On 9/1/25 9:50 PM, Srinivas Kandagatla wrote:
>> remove read fifo depth field parsing logic, as rd_fifo_depth is never
>> used in the driver, cleaning this up would benefit when adding new
>> version support.
> 
> The last sentence is mildly confusing> 
Will update this.
--srini
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  drivers/soundwire/qcom.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
>> index bd2b293b44f2..7f19ebba6137 100644
>> --- a/drivers/soundwire/qcom.c
>> +++ b/drivers/soundwire/qcom.c
>> @@ -209,7 +209,6 @@ struct qcom_swrm_ctrl {
>>  	int (*reg_write)(struct qcom_swrm_ctrl *ctrl, int reg, int val);
>>  	u32 slave_status;
>>  	u32 wr_fifo_depth;
>> -	u32 rd_fifo_depth;
>>  	bool clock_stop_not_supported;
>>  };
>>  
>> @@ -898,7 +897,7 @@ static int qcom_swrm_init(struct qcom_swrm_ctrl *ctrl)
>>  	swrm_wait_for_frame_gen_enabled(ctrl);
>>  	ctrl->slave_status = 0;
>>  	ctrl->reg_read(ctrl, SWRM_COMP_PARAMS, &val);
>> -	ctrl->rd_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_RD_FIFO_DEPTH, val);
>> +
> 
> But my grep confirms this remains unused
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad


