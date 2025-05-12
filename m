Return-Path: <devicetree+bounces-176503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1207CAB45B0
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 22:53:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58FD08C3C68
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 20:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2941029712E;
	Mon, 12 May 2025 20:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZNy9EDpa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B88A22FF37
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747083224; cv=none; b=n82f9Z/p8s9BPeoGzrlxlSgyCdhMhb3PnFXaN026TLn2klqE+DARu+slA4JfArRwEFM3Z94D9l6ONkvpnFnm0cDMXJ1jD4Ih1cjO5+lnY9L69OL+Xs7dnWzjVxdwI7kD7X2FO9o9dt7SZD+AHwLTjC3dVPfABdFKm3gxpHZCvFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747083224; c=relaxed/simple;
	bh=IQc7XbpOb+OEAWRL3np2U3qHnasNjpu+1rvKk6ZTu1o=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZkpNG7whm2q4VglGXnHgK4H+QnAVEVP3uASOt8tK1Cmb8ZUF2g7H+SnbcHSUJOEQN6QVYi8s6WDI4mXdhtJAp7cDQKvu0sUC21pODX8TZQ3j6jEEzGHPq3zoUY7V0b4G+/LOfWRhEaaRU1bgWCY0gHRn+wBnwsaV0aqpsmSIcQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZNy9EDpa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54CH11XF018314
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:53:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0cq8u30UIoPjW/N2abdjgA07N6oSz8BgxUZcaxGy2v0=; b=ZNy9EDpaAWZMIGKo
	Cr8ywLg9L6bXwHdswLcPAIAa2b+KnFPU2Yv+PbobkP1MNrw0wYpq33cv2IZVmBqG
	2HwGacQAMN80uboRuNNPW6H22XzfXJWt0MRBJsBgvr4uPQlHGfbMRniNadGdp2cl
	X+mwhKBr/vKDTfDcgcMHQXnES3nnPIU6tC8MAEPTNLo4yblQVuM3ChIeWctvxHdB
	h6XmqXkAZvJySD6Jxx3kpiVDj1OH/wNHUKukSq8BJJvrXV4raTrja/hbU+6RD0mN
	MdtDX9ccPYg5HmNQxpuW7kmHIjTLxgFV0PEX/lZxavsdQ9Ziqod8vEQWyonAThH1
	7fzu/Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hv5qdump-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 20:53:41 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-740774348f6so4127814b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 13:53:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747083220; x=1747688020;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0cq8u30UIoPjW/N2abdjgA07N6oSz8BgxUZcaxGy2v0=;
        b=vkQlX3/dYB1b59ateXn7VkiZ0mZ82YNCDP89JR2zxoItjtnRAh2oga0XoLUuY1Jgls
         Y6KO0Gb+Dff/1EuVY7aMk3SxJiPRQd9PpUkUTn/dr0qjjEgFDZ0tvM2f4PPrYfAq/0Vy
         Z0IQKtGF9X2uixpFqkcbE2GXBtJ5s7b1pgKEtMZ5rdLXUD75dRIBhOsC37uXggdkhrhm
         V5gJPBy75O9zqrX+wyc5jFsf+xUHyNHuiDuqbIGKzq4orffd9l6TbAZ1qJZSuVKXiZTq
         xmRz8SI1F91cfwLtIVlQFP1apaRTixd81MEbLARzjVOYJ+C27dKJ7sXnzJU95eD6vNrx
         rJ5g==
X-Forwarded-Encrypted: i=1; AJvYcCX1Hq+xts9XWJbxWXe8GyF7lKsSFVJrL8Io/xh2DSkXh2d8LX0CfKAhVSwUgWsTlYZtrc0IcdHKbAOM@vger.kernel.org
X-Gm-Message-State: AOJu0YwA0erB5k1FsOD8V38AwWTzzG65rfcfTWMEp3ef1SbgX7fwcYIy
	a3/L2ncEUrx/Ih9UwmvvHPAuKeeUtRpdsFuRp/lMzDBk7z6RWPeUu7TXoZplVO00Oew87o7exrk
	wfs1kSmKE66AiIUiXxPkhtusJaT8oHxvhGcjXtUsHGqW3xPf77ZYqUTkRcGX3
X-Gm-Gg: ASbGncuCc1Ot3ommc2aQsMOt5oTlepF2eUR4aaY3537UjTALg3yU584qDe9s292WMfN
	CwmQD6OgxF9zHMKQ4WzzNRCA5wfgVEYs6Hs7OAjCLAZKUCh4x1CUnHwynkss59eIxYdVj35W5gM
	rf8dqdwKeqmtvlgOn4f+/+FXd9I7CZ1CEh7Irs9G57kQuYd8h+dCHrhfvOvpdzKL0WlM4/EZReI
	EStuehbzTiohLZhXRP60YPxc4Tbu6nHabCRTcb0uYlis5XaqyNtYk1TA8OEl0Sl1YmdtRnlLjFJ
	AahXWSQFKZSf89akkWuH+Yxh9JJ52DjhBi6P/De+qwZyUwDAyPggfuTb65OoWE/EXAU=
X-Received: by 2002:a05:6a00:6c96:b0:736:5f75:4a44 with SMTP id d2e1a72fcca58-7423c07584fmr20255200b3a.22.1747083219948;
        Mon, 12 May 2025 13:53:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH687p/Y1iFlDutqkUP/1gknV1sUAfUa3Pyf9KjJ8HWT3SJf+/S7+d01a/7BrISVOK//kW7Eg==
X-Received: by 2002:a05:6a00:6c96:b0:736:5f75:4a44 with SMTP id d2e1a72fcca58-7423c07584fmr20255170b3a.22.1747083219556;
        Mon, 12 May 2025 13:53:39 -0700 (PDT)
Received: from [10.71.111.220] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74237a8f520sm6703804b3a.172.2025.05.12.13.53.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 13:53:39 -0700 (PDT)
Message-ID: <a1ecf255-f8c5-4f3c-ace5-793171a5ab87@oss.qualcomm.com>
Date: Mon, 12 May 2025 13:53:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] soc: qcom: llcc-qcom: Add support for LLCC V6
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250414-sm8750_llcc_master-v4-0-e007f035380c@oss.qualcomm.com>
 <20250414-sm8750_llcc_master-v4-2-e007f035380c@oss.qualcomm.com>
 <cnlu4yhfax3ggtkig46bwimr7acpoxl6x74dpu3kdwq2wcjwmd@d6spkmdywrja>
 <f2215dac-6d31-42ec-b2ef-d0357b9542c6@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <f2215dac-6d31-42ec-b2ef-d0357b9542c6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=DqtW+H/+ c=1 sm=1 tr=0 ts=68225fd5 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=2_Z1bVATJppRhMQeSlUA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: vVtlaW-H3dX5FiRDWV-65eh3vZHHtHrC
X-Proofpoint-GUID: vVtlaW-H3dX5FiRDWV-65eh3vZHHtHrC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDIxNSBTYWx0ZWRfX6qxNN+8vmiTv
 whEXv2mJBeeeNSWuWPOcjy7y46bgCOKNTm+5tkLM5gLRr2qGCdNRUBRqcB9Q2UTMUfTXDBjxdLX
 lSnGipXiu0pXeXkHC8Huy/GT5xIyxkpblnnJpKudtEdDOFMLYFiozGZfhbje/y89YWeR4XlPhMX
 6zWZQnKM9VRbI+q/rbl5UeseLIDSUf0JCqUMxBc8zc8Jy06tPrMtDpSOdtqOQjgHZm17KT7hwZ1
 oy3KqFEbiDEFE3V8rTNokYstyJl/gBqeeecW7ke4ATL2yBh5pPuC4wGrW5xoUOHk8Bvfn5GRplk
 SkvsB7B6JQNXTYC4bZsiKDgD2bDzRrymnJgoIRxaqeho49Bl7tZY9FayfGm4i8ZWaucgtqfLhCc
 f1xiBeYaTwHcG8z9j76XTPtjip1Ria47m+hhQdM0SWBvF1lXQ+qyHcFHgtVcr0y3sLnlXAta
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_07,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505120215



On 5/12/2025 10:45 AM, Melody Olvera wrote:
>
>
> On 5/9/2025 3:12 PM, Bjorn Andersson wrote:
>> On Mon, Apr 14, 2025 at 04:21:51PM -0700, Melody Olvera wrote:
>>> Add support for LLCC V6. V6 adds several additional usecase IDs,
>>> rearrages several registers and offsets, and supports slice IDs
>>> over 31, so add a new function for programming LLCC V6.
>>>
>> Can you please fix up the checkpatch warnings in this patch?
>>
>
> Apologies; I'm not seeing checkpatch warnings on this patch. I'm on 
> tip of linux-next/master.
> I ran b4 prep --check, exported the patches with git format-patch and 
> tried running each
> through checkpatch.pl individually, ran dt_bindings_check and 
> CHECK_DTBS=y and still
> not seeing any problems. Am I missing something here?

Was missing the --strict flag. Will fix.

Thanks,
Melody

