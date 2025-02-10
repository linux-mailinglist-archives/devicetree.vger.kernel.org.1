Return-Path: <devicetree+bounces-144721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FC5A2F158
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:21:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5D2D7A1EBA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC7122DFAD;
	Mon, 10 Feb 2025 15:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JGf83/od"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D197C42A83
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739200877; cv=none; b=QYzgmeTSKjyyBS7Q6a6IGRsMPE14NDvvGTJ7yPgjqQBbWxpmqQLCxNWy5panX7zE16YIiHHnnV/fj+0YQ/r0KtpKd3ct0k0nddSLIni2VUY7Qxa8OzZPzextwldFMD42GaWanfqrHW3GGJVpayOP8b8cy58wpv5GLPLd48l+Zec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739200877; c=relaxed/simple;
	bh=OsEbuWUkpmi4QOrTwgtQd6ZnMfEyxFDypHwj1viKT8I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LcPVEUt7pMxqRYp2qJ/BfHhgaHFXlR40UHvwUjx795CByCTI+Upe7N0Avnls3s0N2ILmWsal0jbQBa6oNru8TtpV4SfCLle2Zhq+RVxQxrezT4Fpp+HqlMnbRckPTguKBbNghW+jWYXV4nX0TgBv0Pkoqggvucx6LiwKGmN1GXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JGf83/od; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A8wtas024312
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:21:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tO7wPo/I02c14+5eTLQbOjA0EIYJqhCT9oqQQzArqPs=; b=JGf83/odSH6MGTA8
	4zRHs8jNn5rBxD9EVsocoIohaMH8mUr0RafNRyq58WjMOnYIC5KEK04qxbB/R3TR
	ZEcqa8WSyuvoUv1cU7N0w5zf2SRkERBsOg5tr8bADSvx4XTwIkxv1hSs8xiCXCqW
	5CYMRxAoISY1u2oLESHjo7XJPQmX6fWEPBPqjms1/I9YXvTukKSzdmIftWDcAkCS
	VqQPdVniQZ85F78kjsX8PpT9fPispTtEtYes74Jx5VqKh4Bl/vXjRhtHUPBNVgBO
	aqCd20T8piqG4uSbAzKgB0d2GYnTKJBUN9w2tCDKYkBh3cZGw3GU11WCJM2sptco
	RayzOw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0dxmr05-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:21:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4718a18521fso1997521cf.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:21:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739200873; x=1739805673;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tO7wPo/I02c14+5eTLQbOjA0EIYJqhCT9oqQQzArqPs=;
        b=S83S/JQYokJOvMXxwpdR3YU8NoJ4XoJCT9yxuXQz4zDPPZhJ3BNLEIVC+ncyP9JrSN
         AmHNWe91P5AZCYxwvufqKfa5bfEdot7F93QrN3CxG8ZsS/wzHiB32YrrF/p5yf0d1Nm1
         EzJCkq4eSO8YP/aLJjKEwQA/qOphFzawiL013bGaDEeowiyO1QjWeQKS1CG/Ns2lMd2t
         M/KUDuysNXLBmu7byZcn1LwBU+Nv/ivVSvhEfjbeFIzZ1IyOnJygt4mgqN+MmWiiC0d+
         nqDB7BS2pWifL6ia9ZDyhqu0W8F34jZmcMOiFiYkx7O6tW9peKC/eidanWYFfjL51PXG
         2qfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZ7dDZTZxo1XRR46nWppIZ0dLXoD0ZHeT5FsCVXqDL/p3GPJ7kqbX1JfSBr2EM82tSE3HCAylzJ/Kf@vger.kernel.org
X-Gm-Message-State: AOJu0Yzee/5CZOCIrSXrocwJJ8yDoqXAxUDRvqpv51A7gB5YvFxeUYPV
	e1fNaBgqvDE6/HY1gl7ovqbAyH5HGatpv+nf3r6LtaIunEYy1lv+MehYcTkiyyTVHrqJRxYY/xr
	Ob8JK6VXy7Dr8Sx1+OLiSV3BTC5wZmznVR1NekJg4YI/Tuc+jTS8/V06SQYYQ
X-Gm-Gg: ASbGncuRySF3HAXkOU3ik4dciK5ezWiMe0h4OfIJdkY5xnspcphlnUNqPp6jWLlvJLC
	se6Xi+n/VCULP8s/VPTXCiH5Gy6vK3GxE/P4FJXTntnCgeRipz6/zMOZBdoPezE2JhZ7fX7yKn1
	0x/nPCOKgMXqPzclGXYXUXrTI/08vqc00WmD2q+m4UutOuawhRIhOs8FKHlhsL/8DdfBwdrZ24H
	dKl87g1wAaBgPmjivgodrGcqOoQ96l3wACVLzQAU1Xb50BdflRZHStAROpo27yesMsyls9VbQr0
	c2yPqFbs961/duuvVI7x6lE9UpDo28xdN0HmGXOlwZL8pd301aWUprjBq5A=
X-Received: by 2002:a05:622a:40b:b0:467:54b3:26f9 with SMTP id d75a77b69052e-471679dde6cmr74988311cf.5.1739200872643;
        Mon, 10 Feb 2025 07:21:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZngGYEjAE8ToZFxYP3tXUQoXXdJK35nMB53ISSgcq0zeqFsADPXApqeDQvtox7tyt3AgM1Q==
X-Received: by 2002:a05:622a:40b:b0:467:54b3:26f9 with SMTP id d75a77b69052e-471679dde6cmr74987981cf.5.1739200872212;
        Mon, 10 Feb 2025 07:21:12 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7d72ae04fsm21262166b.46.2025.02.10.07.21.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 07:21:11 -0800 (PST)
Message-ID: <f7ef484e-276f-4a49-b399-58a3201bea0a@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 16:21:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        neil.armstrong@linaro.org, quic_cang@quicinc.com
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
 <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
 <20250210101338.boziqlrxl2cei775@thinkpad>
 <e7381931-aa58-4fe9-b96c-4f4226e02371@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e7381931-aa58-4fe9-b96c-4f4226e02371@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: OlYvOzlSqRWcDXctRPtNG2ZHd_AFkxsN
X-Proofpoint-ORIG-GUID: OlYvOzlSqRWcDXctRPtNG2ZHd_AFkxsN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_08,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 mlxscore=0 phishscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100127

On 10.02.2025 12:08 PM, Nitin Rawat wrote:
> 
> 
> On 2/10/2025 3:43 PM, Manivannan Sadhasivam wrote:
>> + Can (for the MCQ query)
>>
>> On Mon, Feb 10, 2025 at 10:39:04AM +0100, neil.armstrong@linaro.org wrote:
>>> On 09/02/2025 16:21, Manivannan Sadhasivam wrote:
>>>> On Fri, Feb 07, 2025 at 11:47:12PM +0100, Konrad Dybcio wrote:
>>>>> On 13.01.2025 10:46 PM, Melody Olvera wrote:
>>>>>> Add UFS support for SM8750 SoCs.
>>>>>>
>>>>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>>>>> ---
>>>>>> Nitin Rawat (5):
>>>>>>         dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
>>>>>>         phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
>>>>>>         dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
>>>>>>         arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
>>>>>>         arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards
>>>>>
>>>>> You still need the same workaround 8550/8650 have in the UFS driver
>>>>> (UFSHCD_QUIRK_BROKEN_LSDBS_CAP) for it to work reliably, or at least
>>>>> that was the case for me on a 8750 QRD.
>>>>>
>>>>> Please check whether we can make that quirk apply based on ctrl
>>>>> version or so, so that we don't have to keep growing the compatible
>>>>> list in the driver.
>>>>>
>>>>
>>>> That would be a bizarre. When I added the quirk, I was told that it would affect
>>>> only SM8550 and SM8650 (this one I learned later). I'm not against applying the
>>>> quirk based on UFSHC version if the bug is carried forward, but that would be an
>>>> indication of bad design.
>>>
>>> Isn't 8750 capable of using MCQ now ? because this is the whole issue behind
>>> this UFSHCD_QUIRK_BROKEN_LSDBS_CAP, it's supposed to use MCQ by default... but
>>> we don't.
>>>
>>> Is there any news about that ? It's a clear regression against downstream, not
>>> having MCQ makes the UFS driver struggle to reach high bandwidth when the system
>>> is busy because we can't spread the load over all CPUs and we have only single
>>> queue to submit requests.
>>>
>>
>> There are hardware issues on SM8550 and SM8650(?) for the MCQ feature.
>> Apparently, Qcom carries the workaround in downstream, but I got tired of
>> pushing them to upstream the fix(es).
>>
>> Maybe Can Guo can share what is the latest update on this.
>>
>> - Mani
>>
> 
> Hi Mani,
> 
> I have already replied to konrad mail earlier in this thread.
> 
> The LSDBS workaround is only applicable for SM8650 and SM8550.
> SM8750 and onwards doesn't need this WA anymore as it is fixed in HW.

Nitin, you're right. I was hitting another issue and adding that quirk
only randomly changed some timings for it to not manifest

Sorry for the confusion.

Konrad

