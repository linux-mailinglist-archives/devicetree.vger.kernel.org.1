Return-Path: <devicetree+bounces-236991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBACDC4B891
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:22:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BD9E3AE621
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C613227E076;
	Tue, 11 Nov 2025 05:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MosCMOCW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L2DgMTqq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5B8280329
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762838558; cv=none; b=GJeMkFr0qT4zo6pEHqOJg+aF0PXpCQ1I5xnNLguMD4BH4ajudCnlfgZ+vYTXGbB5mf+w78DAg7Y6c202YHfqaPZVbJhIaG0M2cbI0TGjkFzfPoXlnnRae1CUbgTSe6JUWoZRrByOXGFNrGZGmu03CHM+5JRu2dLE7zdwNSgimzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762838558; c=relaxed/simple;
	bh=9OF1VOFFihuJuwmCepEzHh2ATgtLynGxJRG5+laPChQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L1GOr0PIuCCyaGjnY8MA2AdvZhgFCBAYlWzHbn5fOnBlkPa/ElYNkWt1SMnDoQ5gGge53qm70BUC0trGh3smqSx+0ay7zgDrJQGgG5xiIWK67GIqjpeIVzyAYie0dy7y++6fMHMTSviz5pNnfczuC28D6RyAuiZ9yOMJF10BeGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MosCMOCW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L2DgMTqq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AAKAHWL3306941
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:22:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7Te5+jGKVmczWAFRX4897loQZ9s+94IKGhi21It1SFQ=; b=MosCMOCW3NChtPvs
	1bMlSDAStRvBjBJXjFGSIIe7xvCam9wnhaxQzB66lwiNjiOQ/qnwNa72xMafmilu
	PlW8P2WijEWhS+bhRRQAXYqJLiEkCvJ596Xzxl7HtrFjvcmw+PTma5FAp1Ajap3S
	zSR/bK8hYfviy4wkcYa2aMxyZzhPXjbuRNawLs/NE07hoRJmFMmUUbwsevY3uyI2
	YbohSNdFNIDmOFZ9+jTEEsg04GL3AF5R29fevs0MOKf8/aU64bqQwYd7xkC7gHp3
	TVtvbwICqiGH13o6ULl4Jr3PVpkNBc1KxT1P+VTTrC7BHTPWphRa/nyb9pBsstbH
	pb/Wqw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abg0qan0d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:22:36 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29555415c09so48598565ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 21:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762838556; x=1763443356; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Te5+jGKVmczWAFRX4897loQZ9s+94IKGhi21It1SFQ=;
        b=L2DgMTqqT2kHCVAgyb0L1d2M5AhD+8YwPLnlM3JJuLvnoQT52aDkTGLek27Fk+JsgD
         GzQ6+tMMzpuL0JH/H7WfN5t30E8xUoA1VAzSTLcxEw1bpcZVTt6BZhtLM6PmNWC/Jd98
         Rcug8a9m/InRbm5nO2yrljyXpMndqB/rojuoyKE292y8hcW4N0zd7gqoiQ/99+REL6Dg
         Es883jIpXTGBBAiu8xGZH9IB1U0jcAf5i9yKDStuO57EKDYuLS0hGah8EpvuutqCZhPp
         LZOi/txN8ca/FYp4mYf3czoqx44XLmcS/M7kIlQQlN2Hp/jmPvWCAE1GBuOqRI7oczq1
         zASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762838556; x=1763443356;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Te5+jGKVmczWAFRX4897loQZ9s+94IKGhi21It1SFQ=;
        b=lWDPxk0h3jkmsyelOu+kZju3FXWg3NLBmbSCMJxx1rVWYd1eKbEUtVfzZ4tCHOXtBp
         /y9oJWqJPLaDnyaXD8os/c+buvDWCQOFe2z+odVH1BgFQ8vG239LiLcItPKDkoKsZBot
         B5eIA9tTGFu4z6shNDKLwgu6esWOBXKfIJKhfKr7jyE1RYThuw66p+vc52Ycm5L+X0h/
         tauu2bCejHT/1EVm8xxizthLCMht0uqeti3Kf0yvkRJWdavPO5qucmK0Mm+NtUsrsTBQ
         nqKyjXbU46ZiJF8XVveCd1vuG6iXoJ7eunWDP1aKVuiRrFw3MKp0jyu997dMeIKtTe0p
         FoVA==
X-Forwarded-Encrypted: i=1; AJvYcCUC/m1L1Q0B87ehjtmJ158IAqcyXWlvFs+fYfWHWNYCmq0urR/GHoehXnlqd7j/NijsAAJPP5fR6AfB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/PAEf1fSA+zknun3bOatfn3Aenjl5PKmZpmMqeBH0TJxOOQNg
	RhIrbg+yUkQkxccqyiPXSw/CkJQQQHnflXv3/nlD7EE9+uQtvGILeQPlOlVjgJieNtdhDx32Yl0
	RIKWF1LZKZoKMj5KBM2hrFBWtfpYwWUSWsd1kRKsCa4tbd9/wN69A9qWOeJEQfAd0
X-Gm-Gg: ASbGncu0948NNFGfqSo2IUe0EFp4atly4qHZ7WxyG1s9iVOhK0nINKgRVZGl7lr97Up
	SswTyXTNkkz+voy+IagQpVgX8gHMI7f3OEubCNtvXjI0DDBGpGeVMeX7soFiqduBUbw69e1xtL/
	RV0uNOY7P/jLFIzUFa/vJE+/ni6X56G/kyim9BAmxCu+K139V5Fse5txLu9rl2VnDlXnSTRwJpP
	Ibi3JGo8+XUxI0vP/Xio6TpYZU/vDK/VTJGg4ZLg06ZCQKMGAejzABbcT/xazO+fi+kky9Hd4dz
	uroqIIUt2Htse+mzocKWrxJvJHm61kztqQKbPGx2cbM7dlUfZUB1RLJG/nXT9BBZBu5BaZCwAj8
	blEd+MQJy++B488UjVyTAQQ2Ezv2u9nc=
X-Received: by 2002:a17:903:244a:b0:246:7a43:3f66 with SMTP id d9443c01a7336-297e561ac3dmr145695985ad.7.1762838555594;
        Mon, 10 Nov 2025 21:22:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG44dhpC7FpqpgcK7ljK7RCCQ2W7yUdgoVHyPBRAs0CPdhZrrNwS6XdCmzCnymqvg8hfGr33Q==
X-Received: by 2002:a17:903:244a:b0:246:7a43:3f66 with SMTP id d9443c01a7336-297e561ac3dmr145695555ad.7.1762838554961;
        Mon, 10 Nov 2025 21:22:34 -0800 (PST)
Received: from [10.218.32.171] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5f011sm165660855ad.25.2025.11.10.21.22.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 21:22:34 -0800 (PST)
Message-ID: <5cd78217-8da9-4290-b098-8210280e65d8@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 10:52:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] pinctrl: qcom: msm: Fix potential deadlock in
 pinmux configuration
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jirislaby@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-serial@vger.kernel.org, alexey.klimov@linaro.org,
        krzk@kernel.org, bryan.odonoghue@linaro.org,
        jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, psodagud@quicinc.com,
        djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, quic_cchiluve@quicinc.com,
        Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>
References: <20251110101043.2108414-1-praveen.talari@oss.qualcomm.com>
 <20251110101043.2108414-3-praveen.talari@oss.qualcomm.com>
 <l2jnveusblgo5cfou3mx3usn7qgenj65wfyrnycmaqamkvhkee@gy745hkc3poc>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <l2jnveusblgo5cfou3mx3usn7qgenj65wfyrnycmaqamkvhkee@gy745hkc3poc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=D6JK6/Rj c=1 sm=1 tr=0 ts=6912c81c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=IV0jPyGM1QMGTU76z_QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDAzOSBTYWx0ZWRfXzkO4E/3xk0bI
 yO6cD9TqqNkcXLnt0S8wKCKNz2EhxLnaXfvD50dcWHLCSJ3/c0jX8r6r+Sp+F2tKq6bOJNXtImN
 1mP7eQn1EoNSVQxtp3l1QOcBLLHO+rXEhLnBpKn0tTEVVGQqNbZjEoTqXWIBetujhst9u/OzbFo
 V2E+Lx9uO89pJeJXtEvm7qjGMvYeClACrbPyLuGaE+Yd0PFGEjhA8MY8q6HpZyzCxIVP00CJiz0
 J/mJ5cD+NkeLAjM5i7JTlCFugVkWfC9HpyHvGz+ygsYjkp/vJ+VC3UGwTU5khyhugkovLiUF6ZD
 wmLrTwJ4AddGP2qbcLHbDkXv3QdgxXIOr+ZfMH2IwwszY76hbHH2xVjQAyNHIGyupa3GTWdg/go
 ZWxBGhmT4EqA+Z1b4OFNXSEDVKQYHQ==
X-Proofpoint-GUID: Dr5nAP_hzFOrzvopDyezXNyuf-zlXYkz
X-Proofpoint-ORIG-GUID: Dr5nAP_hzFOrzvopDyezXNyuf-zlXYkz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_01,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110039

Hi Bjorn,

Thank you for review.

On 11/11/2025 9:38 AM, Bjorn Andersson wrote:
> On Mon, Nov 10, 2025 at 03:40:41PM +0530, Praveen Talari wrote:
>> Replace disable_irq() with disable_irq_nosync() in msm_pinmux_set_mux()
>> to prevent potential deadlock when wakeup IRQ is triggered on the same
> 
> "potential"? In what case will calling disable_irq() from the irq
> handler of that irq not deadlock?
> 
>> GPIO being reconfigured.
>>
>> The issue occurs when a wakeup IRQ is triggered on a GPIO and the IRQ
>> handler attempts to reconfigure the same GPIO's pinmux. In this scenario,
>> msm_pinmux_set_mux() calls disable_irq() which waits for the currently
>> running IRQ handler to complete, creating a circular dependency that
>> results in deadlock.
>>
>> Using disable_irq_nosync() avoids waiting for the IRQ handler to
>> complete, preventing the deadlock condition while still properly
>> disabling the interrupt during pinmux reconfiguration.
>>
>> Suggested-by: Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>
> 
> That's weird, I debugged your deadlock for you and told you to make this
> very change in:
> 
> https://lore.kernel.org/all/7sxsfyu2kqbycyfftwfhrncwk3dfnubmzhyi2rqi3jtvi5qsnh@bya3cii45zhn/
> 
> So I guess Prasad told you how to fix this issue before I invested the
> time helping you?

Yes, that’s correct. Prasad had suggested it earlier.

Thanks,
Praveen Talari

> 
> 
> Change looks good, and description captures the problem.
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> 
> Regards,
> Bjorn
> 
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
>>   drivers/pinctrl/qcom/pinctrl-msm.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
>> index 67525d542c5b..e99871b90ab9 100644
>> --- a/drivers/pinctrl/qcom/pinctrl-msm.c
>> +++ b/drivers/pinctrl/qcom/pinctrl-msm.c
>> @@ -189,7 +189,7 @@ static int msm_pinmux_set_mux(struct pinctrl_dev *pctldev,
>>   	 */
>>   	if (d && i != gpio_func &&
>>   	    !test_and_set_bit(d->hwirq, pctrl->disabled_for_mux))
>> -		disable_irq(irq);
>> +		disable_irq_nosync(irq);
>>   
>>   	raw_spin_lock_irqsave(&pctrl->lock, flags);
>>   
>> -- 
>> 2.34.1
>>

