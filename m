Return-Path: <devicetree+bounces-198875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA45B0E9F2
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 07:10:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 515AF543867
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 05:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5FF238C2A;
	Wed, 23 Jul 2025 05:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KkUr10Rw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A76F1AAA1B
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 05:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753247411; cv=none; b=fNhkZc1MZLCc2jW1GcUtyVmSt1QZFK0fZpV4hdkoz81HHa4lYWJIN40JFdd+VWufep57vyncaWlH9Ndma/eMhwNnzqgA8JWyyp/hg0nwO0A938Xune/tm+EcAOCa+i+3YnayLDaU6GZVLDoZGQ2dYnm6sld7Q7HkxQ0gxx0itps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753247411; c=relaxed/simple;
	bh=yxfvD+KWlF+2IZ8PhQE8OyGKC4+cYXwHtloQmA4xTTs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iZU2pGnID0ib0UgU3Fzo6wfmOmQQ2+gtEMI3HZdsJVwuJhx3ej1mI3Ad0UkCJc/Lsvzn0ExbIBbbB5/+v9AGk+2X6Tk5blW4OYA5FTS+qEYRuvz+gPbG72ftR15SG6m41tnKljc7nYJA/bAI9UMz5i76DSe0ZCSA57+Q4eXIQHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KkUr10Rw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMNrC9001768
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 05:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yi0z3sLXRaxmxpY7Kis69SNdsBbMhtzvqAojxUzh/uk=; b=KkUr10RwMF1rqWEN
	Lbz3IxId/QV35PzVEh25FsK7+ZO6s4c2z6LtvuSJhqQ0YaBc/8kXvXptzlcf0Q/L
	PEIPmwbU9A2QbVvzj+ZXGr9IJ0GeINPRoDSJx5gpMewekr9vP8GF5oejbLz9uiGf
	NSKCljJbmJlO+yI3AP72dykJWyDYce3p9Z+HgE8FhZrZmwZUZbOWq15lbHynzfrX
	f1tohXW2IvwZ157HzI76XMRX/IyeDNmEMY0FjfWU+7bterSWsVmnyoeFqBj61GJy
	mi0YrYF8huG6Al+8l4Pm9W0eFF9c3PsTiawaX8hMgrK+R68MHgC5HWpkdsbgJ9lG
	Q3pXcg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w514t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 05:10:08 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b31ff607527so4675297a12.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 22:10:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753247407; x=1753852207;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yi0z3sLXRaxmxpY7Kis69SNdsBbMhtzvqAojxUzh/uk=;
        b=cg0D3LtugM611BmsmG5tmkpRUHUrpEIUSTfLCmEDb9MLfJaWfm/WLZmlSGcu9OfS7V
         PEobEAge5dHo5o/gBZtVtY1dYFPxXk7uex+02lK6Q9+F76oIJXpLvrI3mPWQ/BL8+JDL
         KEnOTUW0RsyjV0pC5gS/8o/yPPeMjeuvAmuxT4Mv5/ntqFfcq/vkp9L3PJVY7PjY4HIW
         aTGt8GgO7Q1oo11497QcalWVXkoZjTjmk/pueBUmta86hcE3jycrqptO7LVt5daLzWbm
         gq6APdNK9hLn8TiBa2ji0wr5tpEQzRAFZNs1TNROroiIpQYNRIX0XxV4zWNkgqMcLzko
         zrzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfXcnWA8KERE0BT9XuaWg7LqhD0aHcQMvUua4TQEIEI14VFuZwYMkmb7HujvwOrqkrmdDiSbq1/f2O@vger.kernel.org
X-Gm-Message-State: AOJu0YyilJ2wXgregmFo/AuVe6oi1HUdjgLrxwzX8/FGgY8X0BKAde/P
	gYmN0zRMeBinJb3xLzBFx54Z+bI4ZHYg/uJAdmW928G8lZy1wcmR/ql+cbo09fqHkiKZSgcnlBS
	glqSndJ+T3xjUjy9iALpZHkaLEwkhPrnmEZNlr9O9jGph8ITPUgD1jA7Ba9P76f7u
X-Gm-Gg: ASbGnctT2xMWXfs0MMnT8BeIDBznT/z3LmoWFqHudCOXfQG44pA3M9f8p8lYIOseHHc
	xFSpKBMF90aEog5sXaVJgw5p85oEt/zdGz9BjeNRvrvJuW7C80DWBqf6B7mKV7/LCOzzzJIHTKd
	Je2PYxT/AlKdTPv4HD/OK19gqD3v5RqUVxi4g3N9DXhxWMhJWtzIW5yYvUMokpn2us00NGy4YfY
	km4+OBlRpEkoDj1aXuEZSHezE6xNRzNofYWmNbbant8E3Gpr6H7sTX3UwTSBYV3a9ZtaYGuWRb8
	gAXm2aqoDIpN62thDC+dTTykVPCQUxFoX/RKe4N/cmGMkCmlf8Zf+YIFUG5SJtxPC4SPn3IMrae
	3tlVJ6tUOtxw9/0AUZ7R90ZE=
X-Received: by 2002:a05:6a21:1fc7:b0:232:57c8:1bf4 with SMTP id adf61e73a8af0-23d48fe0711mr2218921637.9.1753247407568;
        Tue, 22 Jul 2025 22:10:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSzdu3XTzGZRuyXiNJVAUhtDAMRYXv0zE8ykPNMcULJMV8cEoBw/XVyfdTRcS32Pcplllgrw==
X-Received: by 2002:a05:6a21:1fc7:b0:232:57c8:1bf4 with SMTP id adf61e73a8af0-23d48fe0711mr2218887637.9.1753247407159;
        Tue, 22 Jul 2025 22:10:07 -0700 (PDT)
Received: from [10.133.33.27] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2fe67f96sm8032266a12.13.2025.07.22.22.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 22:10:06 -0700 (PDT)
Message-ID: <838c6cda-6128-4fd5-a541-d71caee6c107@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 13:10:01 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 RESEND 08/10] coresight: tmc: add a switch buffer
 function for byte-cntr
To: Mike Leach <mike.leach@linaro.org>, Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
 <20250714063109.591-9-jie.gan@oss.qualcomm.com>
 <CAJ9a7VhLXrdP_CPQPgAYTAGWJfsVUa9SG9Bzv9dLtFzR4nFROg@mail.gmail.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <CAJ9a7VhLXrdP_CPQPgAYTAGWJfsVUa9SG9Bzv9dLtFzR4nFROg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=68806eb0 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=RYLkNb92mBiLz5sOdEcA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA0MSBTYWx0ZWRfX82XrjNPyRkMq
 z4FzJBheDg07Ks+vPHEeKp1VUQ7nOMrjOvNodKelbPJWk1mtq7q5nEgK0/pUStO38sNs1gExfDx
 /5ut1OR1OEG3vI2ZD5oXdjL0tphvHrr5WHBXlaw8VvSddId7QH4pEbzBtXEEkCbQvpTHxoLLZA5
 Jy6eFGUAo2eBAlcmai+JIittkN6hxbmk4HoKCf+8j0Y5E12J6+7/rD8zZ0Vsi07tAFyEEjVu/KO
 YL9PS5/RJhF6usfeY+n5gW/SudaDr0fZzmBz1wGP1gnSqJdCtWQzvlgvcOtHNkS2T2oaXeGPwIR
 7KirgoOxwJm7ssv9bJwDDwmBDSmk5Gajkn6HFaYJVfFOQY0xKBh5ZdC1Wvhib27GpaA1VmkRkcx
 aGn/Gm5sipwojsO8DBRCF1rAee6c0cWjaXpgLMCrPLvHHAoIZYeJ9QwmOegAqlaT3r5UaZuI
X-Proofpoint-ORIG-GUID: nvKg_NN5_V07cFxVuZQ45qdVgpEvRXmn
X-Proofpoint-GUID: nvKg_NN5_V07cFxVuZQ45qdVgpEvRXmn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_01,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507230041



On 7/22/2025 10:09 PM, Mike Leach wrote:
> Hi,
> 
> This buffer swap code looks OK in principle. The ETR is stopped,
> memory synced and set to be read.
> See other comments inline.
> 
> On Mon, 14 Jul 2025 at 07:31, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>
>> Switching the sysfs_buf when current buffer is full or the timeout is
>> triggered and resets rrp and rwp registers after switched the buffer.
>> Disable the ETR device if it cannot find an available buffer to switch.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   .../hwtracing/coresight/coresight-tmc-etr.c   | 52 +++++++++++++++++++
>>   1 file changed, 52 insertions(+)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index 2b73bd8074bb..3e3e1b5e78ca 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> @@ -1287,6 +1287,58 @@ static struct etr_buf *tmc_etr_get_sysfs_buffer(struct coresight_device *csdev)
>>          return ret ? ERR_PTR(ret) : drvdata->sysfs_buf;
>>   }
>>
>> +static bool tmc_byte_cntr_switch_buffer(struct tmc_drvdata *drvdata,
>> +                                       struct ctcu_byte_cntr *byte_cntr_data)
>> +{
> 
> This entire function should be in one of the byte_cntr source files,
> not in the main etr files. Please keep byte cntr code separate as far
> as possible
> 
>> +       struct etr_buf_node *nd, *next, *curr_node, *picked_node;
>> +       struct etr_buf *curr_buf = drvdata->sysfs_buf;
>> +       bool found_free_buf = false;
>> +
>> +       if (WARN_ON(!drvdata || !byte_cntr_data))
>> +               return found_free_buf;
>> +
>> +       /* Stop the ETR before we start the switching process */
>> +       if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)
> 
> Can this function be called if the mode is not CS_MODE_SYSFS?
> 
>> +               __tmc_etr_disable_hw(drvdata);

Hi Mike,

Since I need move the whole function to byte-cntr source file, is that 
acceptable to export __tmc_etr_disable_hw from tmc-etr?

Same with __tmc_etr_enable_hw.

Thanks,
Jie

>> +
>> +       list_for_each_entry_safe(nd, next, &drvdata->etr_buf_list, node) {
>> +               /* curr_buf is free for next round */
>> +               if (nd->sysfs_buf == curr_buf) {
>> +                       nd->is_free = true;
>> +                       curr_node = nd;
>> +               }
>> +
>> +               if (!found_free_buf && nd->is_free && nd->sysfs_buf != curr_buf) {
>> +                       if (nd->reading)
>> +                               continue;
>> +
>> +                       picked_node = nd;
>> +                       found_free_buf = true;
>> +               }
>> +       }
>> +
>> +       if (found_free_buf) {
>> +               curr_node->reading = true;
>> +               curr_node->pos = 0;
>> +               drvdata->reading_node = curr_node;
>> +               drvdata->sysfs_buf = picked_node->sysfs_buf;
>> +               drvdata->etr_buf = picked_node->sysfs_buf;
>> +               picked_node->is_free = false;
>> +               /* Reset irq_cnt for next etr_buf */
>> +               atomic_set(&byte_cntr_data->irq_cnt, 0);
>> +               /* Reset rrp and rwp when the system has switched the buffer*/
>> +               CS_UNLOCK(drvdata->base);
>> +               tmc_write_rrp(drvdata, 0);
>> +               tmc_write_rwp(drvdata, 0);
> 
> This cannot possibly be correct. RWP / RRP are pointers into the
> system memory where the ETR stores data.
> 
>> +               CS_LOCK(drvdata->base);
>> +               /* Restart the ETR when we find a free buffer */
>> +               if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)
>> +                       __tmc_etr_enable_hw(drvdata);
> 
> What happens if the ETR is not restarted? Using __tmc_etr_disable_hw()
> is correct for this use case, but if you do not restart then the extra
> shutdown that would ordinarily happen in tmc_etr_disable_hw() does not
> occur. How is this handled in the rest of the update?
> 
>> +       }
>> +
>> +       return found_free_buf;
>> +}
>> +
>>   static int tmc_enable_etr_sink_sysfs(struct coresight_device *csdev)
>>   {
>>          int ret = 0;
>> --
>> 2.34.1
>>
> 
> Regards
> 
> Mike
> 
> --
> Mike Leach
> Principal Engineer, ARM Ltd.
> Manchester Design Centre. UK


