Return-Path: <devicetree+bounces-202042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E0802B1BDF2
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 02:35:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 964DA18A2844
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 00:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93AA664A8F;
	Wed,  6 Aug 2025 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B65sNT6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FEA282FA
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 00:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754440533; cv=none; b=JWX0ZY7O2xSLhzeeuIe1Sl2qXx7gs9xzUEq+6eYQ3nB92EdCYaxvC+Ek+1qVPuAcRq4ExFiJLZb/zaHdkr99t/MaDeO11PJ0rTRfsPWe4GpHLJMH9YL8NjJ2oLqTkcfNyXEdmRkO+4lOtY8XC+a47tm4mZzWLoRcTf2EDDUrkaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754440533; c=relaxed/simple;
	bh=BHew0vOnsp+mrVXy4PEN730QBspJzc4jYfePueLAW5o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aeKeTkYq3/iYahI4tV5vylSuCkK2H4sxfnAbm9Y8lHOpkBQK/dqGITTs2X9CJeeOYErzdKinUFwL3iqphvw1wD3VQrJw2EoZdJmAZ8KdP2LdU9/rmrQJ0BRFIASiCl3IxroBz6F+xi+LEk81fQgIV08wTGopx2KXrbNYOb1x/j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B65sNT6t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 575I7dKR017962
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 00:35:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	33MEykrm88kW0tV7FkI7VdS3PkN0kWkKi5leVAOcx7I=; b=B65sNT6tUln5L+Qs
	d/+rAALmOdK5thEabiQx8Y/L1NbeHfP33qwYFcm1bahj+zeocE43Y5r5k0vP9hNT
	Id6GV/it7D9cF2dxgYr+O3weWMlnBugPSxaYRvXOyqkgARoA3uLnoIwo3SiEitEJ
	I8d9Qy4C5Kt9j+PeecobSnAPRRyTbhHbnMEraai7KdK5tEbzG1gaQaCeUFgFDFDr
	qHFyogMhugB149SC5xZsRgkDikHvYdIdOaFAqRvj/pQtj/+SqUGwotnSp3lLGtCf
	+zHrDr4Q/MpkdSsPbJNhXgUyoVlQV8GEsy7spL35hEFzHn1Lsd7DLmehTZShp9tR
	ONHYWA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy88ujf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 00:35:30 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24004ac2ecdso86491615ad.0
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 17:35:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754440530; x=1755045330;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=33MEykrm88kW0tV7FkI7VdS3PkN0kWkKi5leVAOcx7I=;
        b=s9CIeGh7MkEy3zLPIJSUaa858iHLcVCppXdd9+2QMfko/DaRgYeqtckfhk5sRFf8Qp
         2uQ7B8SBjv1e4XDe+F53XGCuOv2hOBNvz0FOvmhV+//Ty8qj9PftOjBUcyTYmp+J0+eX
         VuW3wqoglWb5GUoRhuF0pD5wlxepAx8cOg00ERAPdMuLA1Ile0XHBydY+CBk3JUKyPae
         ptRpHSIxYWqXLEiHZkZbiz55C6DOysSGwRXTSFOWYlptF39Vnon887/GHEdqEiddMiyj
         aP/QVs3eagyJy+s7nYyjrT0eGQAIXjTe3LcVJ0bZTdfGq+r32qGma8ALpKLtU3bf2A3I
         54Cg==
X-Forwarded-Encrypted: i=1; AJvYcCVURh54WlE6xRzPEAZyo/eSVllrH7fHo3vBQpTTJqJ9Lm8PdAzqC2pBIb8mOfLjXQO9h/CQnIXyl5n7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4joYqojUfwDRmbt1fRFXIMauBQNp0bAnZ9OBt54TVmuJWOAnx
	opTM5ttMOJTSPZU4vii/gQXB2VrKMBfqxIn5oOJBay5r2IUOWy+pYKw6CRqIOrAlCgedH4bMfbV
	Yl23k7bxH+0P3rh6g6uMCEbG8yR69VUm5ztOpobSpUJdrirKCdvQQdMNabAhLqzhA
X-Gm-Gg: ASbGncs1Sgv0Rfh+8iRhxWPc0aVbRcxU0/c6ZXc+gtdUweOvqa7ND4TxIOv+C1i6T5E
	gQkhQaMDkGuatHxRTRwhdDBBLUCgznRLxDd2ZPGOAiCq3qxF4rM4PvQJ3ZBbzqbtyXdWizG8IqS
	DlfBQIOtQCXq4sWEyi3lsi6088OK0B9kz/wN+t9ErBQLBJU9NOue5eBY58kqJK06K+0HVFqZX49
	SgYZGMxvILZbtj9z8uUPeM5a4VWSblQzjPlUvtvQCEo3iQ4ZPBar87l8vvqa5JKRoHdOQBAZNK5
	PnKEQj17q1uFjiJbWm9DplV+Q4nhrqIc1KYjcZCSY/7yIqItHgRzvXaQsmjZexRQ55vrtglL/9A
	6rd9Emivtba84nsThSmQZOA0/
X-Received: by 2002:a17:902:d4d1:b0:240:8c85:4299 with SMTP id d9443c01a7336-2429f2eed79mr17648635ad.17.1754440530023;
        Tue, 05 Aug 2025 17:35:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIyv2qaOgUJsQRonvOcznN+su8mseW9S0RJwVuiRWZ5xeiOYmIdDYzHuuX3sCRo0xPN/m+Vg==
X-Received: by 2002:a17:902:d4d1:b0:240:8c85:4299 with SMTP id d9443c01a7336-2429f2eed79mr17648115ad.17.1754440529509;
        Tue, 05 Aug 2025 17:35:29 -0700 (PDT)
Received: from [10.133.33.195] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1ef6c62sm145444965ad.4.2025.08.05.17.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 17:35:29 -0700 (PDT)
Message-ID: <40c8c2d0-1ac3-4944-b509-d23f21687476@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 08:35:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/10] coresight: add a new function in helper_ops
To: Mike Leach <mike.leach@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Gan <quic_jiegan@quicinc.com>
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
 <20250725100806.1157-9-jie.gan@oss.qualcomm.com>
 <CAJ9a7Vi8qpHH2SjmKNjgeY4gdRXY9wnQXhkjN71EcbYSKqayuw@mail.gmail.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <CAJ9a7Vi8qpHH2SjmKNjgeY4gdRXY9wnQXhkjN71EcbYSKqayuw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vvgZ9SbGVZBKTonBfIh8iQELgUhioH5V
X-Proofpoint-ORIG-GUID: vvgZ9SbGVZBKTonBfIh8iQELgUhioH5V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDE3MCBTYWx0ZWRfX0osMAiLc+/bp
 4XbiEgqnfGlrw0lTrjdMAX/783bbVemI1rH/uQkRhcOW4Sx/UrDdrnvu3Gdz/EzZeeB8ggALmkh
 aiL0agzisT+DXhyoykf55/y57rP3K1Ivla9NCIr+s8icYTRv0sv/+p1O35NKjbKhrJX2nFBsSXr
 VQMpFaH/qLpMuFr+HA2+DrcyDbqqF6Dxl6mFwziNX1Q21fSzN1D8kMQuzkcjRg4mn9DkIYfskzV
 CwWIDiHdo2MDNy++hJw/SGZJSeCDp9p/XIhvL3iihwVm4ixlrz7NqIY9qxUkykHaniwfIbhp1Og
 VKlh073MsSiZKKHUE6oRW+QLas8zDHt2RdQhtIQdx3x7hrULYtrIdDsmjJ8I6j4pvIZD6CCkWio
 9mPrXQKfnZtAyMDk95t4FxHEU8W04UtdZKZ0esFEM8vx1/shLGYwW/vrPYUKZ6egGglRRUk+
X-Authority-Analysis: v=2.4 cv=GrlC+l1C c=1 sm=1 tr=0 ts=6892a353 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=fbnrgmdL-v3imqFNrjgA:9
 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 phishscore=0 suspectscore=0 adultscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2507300000
 definitions=main-2508050170



On 8/5/2025 8:30 PM, Mike Leach wrote:
> Hi,
> 
> On Fri, 25 Jul 2025 at 11:08, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>
>> Add a new function to identifiy whether the byte-cntr function is
>> enabled or not in helper_ops.
>>
>> The byte-cntr's read_ops is expected if the byte-cntr is enabled when
>> the user try to read trace data via sysfs node.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   .../hwtracing/coresight/coresight-ctcu-core.c | 35 +++++++++++++++++++
>>   include/linux/coresight.h                     |  3 ++
>>   2 files changed, 38 insertions(+)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
>> index 8fc08e42187e..dec911980939 100644
>> --- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
>> +++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
>> @@ -234,9 +234,44 @@ static int ctcu_disable(struct coresight_device *csdev, void *data)
>>          return ctcu_set_etr_traceid(csdev, path, false);
>>   }
>>
>> +static bool ctcu_qcom_byte_cntr_in_use(struct coresight_device *csdev,
>> +                                      void **data)
>> +{
>> +       struct ctcu_byte_cntr *byte_cntr_data;
>> +       struct coresight_device *helper;
>> +       struct ctcu_drvdata *drvdata;
>> +       int port;
>> +
>> +       if (!csdev)
>> +               return false;
>> +
>> +       helper = coresight_get_helper(csdev, CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
>> +       if (!helper)
>> +               return false;
>> +
>> +       port = coresight_get_in_port_dest(csdev, helper);
>> +       if (port < 0)
>> +               return false;
>> +
>> +       drvdata = dev_get_drvdata(helper->dev.parent);
>> +       /* Something wrong when initialize byte_cntr_read_ops */
>> +       if (!drvdata->byte_cntr_read_ops)
>> +               return false;
>> +
>> +       byte_cntr_data = &drvdata->byte_cntr_data[port];
>> +       /* Return the pointer of the ctcu_drvdata if byte-cntr has enabled */
>> +       if (byte_cntr_data && byte_cntr_data->thresh_val) {
>> +               *data = (void *)drvdata->byte_cntr_read_ops;
>> +               return true;
>> +       }
>> +
>> +       return false;
>> +}
>> +
>>   static const struct coresight_ops_helper ctcu_helper_ops = {
>>          .enable = ctcu_enable,
>>          .disable = ctcu_disable,
>> +       .qcom_byte_cntr_in_use = ctcu_qcom_byte_cntr_in_use,
> 
> These ops structures are for generic functions used throughout the
> devices. Do not put this function here.
> 
> This is a specific ctcu helper. Make it external to the file and
> declare it in coresight-ctcu.h

Will address the comment in next version.

Thanks,
Jie

> 
> Mike
> 
>>   };
>>
>>   static const struct coresight_ops ctcu_ops = {
>> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
>> index 4ac65c68bbf4..b5f052854b08 100644
>> --- a/include/linux/coresight.h
>> +++ b/include/linux/coresight.h
>> @@ -419,11 +419,14 @@ struct coresight_ops_source {
>>    *
>>    * @enable     : Enable the device
>>    * @disable    : Disable the device
>> + * @qcom_byte_cntr_in_use:     check whether the byte-cntr is enabled.
>>    */
>>   struct coresight_ops_helper {
>>          int (*enable)(struct coresight_device *csdev, enum cs_mode mode,
>>                        void *data);
>>          int (*disable)(struct coresight_device *csdev, void *data);
>> +       bool (*qcom_byte_cntr_in_use)(struct coresight_device *csdev,
>> +                                     void **data);
>>   };
>>
>>
>> --
>> 2.34.1
>>
> 
> 


