Return-Path: <devicetree+bounces-235254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2930C36313
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 15:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 584D51A212D1
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 14:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6AF732D7CC;
	Wed,  5 Nov 2025 14:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XGvCAENb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L8fR0u8s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196E932D0C5
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 14:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762354737; cv=none; b=X20EU293ZIBNPaJMYZXvJfV9lq300XJMxuAPO3//usiuGutUz2sQBcoNadRtqTbdGBHeA+/n1jVc0ANou+ZscPEW0VvHtxnpH1tLfBerM2AlRXMg9kf3DVK9ga0b//ue/cmTsb0HFwmWUwS9vmkUBSjS8/VxXRqJk4HAZ2yAfHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762354737; c=relaxed/simple;
	bh=1vBVa5ClM85ICse8q8kystFMhRNSFdmMv/BjncqSZEQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=i8ydTgBq9beIAVujkJhzmo/0S3o4Qk8qBWn9wrky/YRwMFpe+SMEbxuC2rIc30sAkvABMc2PvVhmrYdtJAgizF/5G8plwjVdNgF2MfUy5aoHVFMR1QB4CNWjFsATIqfHN42PZZKMwMsKRT/bw9CaM9GYK4e28DolGPDS4NqBjZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XGvCAENb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L8fR0u8s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A58Rm5G3117406
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 14:58:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Of7YlMuwPvDSMkMgodOkia0A7gtDddUZ3uLq0jRzNw=; b=XGvCAENboleZYd5H
	H7KEZMUOUj67/zrXAw/EY8S9vizU/ddCOyVXMhv3m2JzTBFNFKYpNqZWKBmKcj8a
	z0LWg/YFP37tjB2N7ree3AuckeTPSnSzj2ZF+LVNJjYl1CVNEa6VaPuQH6KZrybJ
	HrM9ryyNvNKLD2G75BwY5tXmBcWtbCqbiA3lTQ7pxYcrkxnl0lGYg3fSELr5Q3+R
	s9/nfhpQombWVdA8EEPQS3WLBjQRighYqLeGq6cSNEMIuv+DHBkgyeHga9L2lBnl
	JJ22y2UVvQlU9Whn0l888GQfdT420D9mS70QPQd+5+nAd9fUIG2f3WlRMkj0FHHX
	XrGuJw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7sfdtm8f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 14:58:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed18b4c621so20561441cf.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 06:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762354734; x=1762959534; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/Of7YlMuwPvDSMkMgodOkia0A7gtDddUZ3uLq0jRzNw=;
        b=L8fR0u8s/tUENxUPlNeHo6FOWrP4bhnXxrPCXHrKdp1XrKglAq9vWX0lo7QKy2oqES
         5l6Lqf9VpHWXbaB3Dj8YSlZX/DyLd8nxzIlz3mBU3TXRQpoW9ERR9pp3rQYzrZGun6Q3
         gdaoR/CHmypHvYjBCLPwFa1MhMSNyjDkUkUm9jeTDEo8z8VUDOq88aDGa/E76WNf9sTY
         ifZQoWBv2R2Pr/4gp4fv97V5TM2+sIb2C+/f7tovclssOSXP5oztZC4CMnWZoQUZhuI2
         ov/FRwGmd1siyG2uPiEb5zsNi+pIr2UOdlOrL0VKdupRhUnDIlFeqOHHK/onJgzKoQud
         nxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762354734; x=1762959534;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Of7YlMuwPvDSMkMgodOkia0A7gtDddUZ3uLq0jRzNw=;
        b=u7dtIGU6T+THKWUHO5SI05PfoySpIUcPS+744pP+s2hbKm8hgmRUt85R4Tz2qtWi2a
         dUNt09ABEtRTEmHNhwrPAL3J4ndt7QA/3/DpNvh4uDnmfVfQHjJwef/yCMOMbwOsOojS
         r0NjxKHh18BJmWc5NBCCqQXN44/QqlYLg3Jz/1SEhJNsacf1nOlv6Nq4jQbbt3y63cEH
         X1n6tiu773TkdCXkUNDwk9EgQ5/hhIuGp6CRYuyfV3g/7EvVT90x/gUV/JOUSPAA7HjV
         phO8lvS0tNv55iYixXr28eaeUDATuxGXMeqVWx4S6zJw4RPAm5NdqiNdwuXKXig+HmA0
         io3g==
X-Forwarded-Encrypted: i=1; AJvYcCVuC++TLz6XH4tNU4Qrudts0IoJQiPCSQ7xLh4jlQC7kVrTUUleK87TxNwoJRb0d8ObLRswYoTyNHBj@vger.kernel.org
X-Gm-Message-State: AOJu0YwU7aopbTXo3bLxr+c5lqsTtvao7vrM6PMn94n9ljV6NzlkD2Hn
	LmCOKOhZQXpf+4WKFM2Axg9vi0UFlqAraEdK1g68DIPdj8Ytxi2MtShZxrKbMZIB7BVF7jUrYLO
	4iHukMCi/qabj4uHYDXWDplLrVOVQQZm9qkzvgtIPbZmoBL0tPqresucyT9rTad41
X-Gm-Gg: ASbGncsC0ns6BnI8C2vF975zz1e9qX/DOxku37G+hiqPCFzGjsRlZD7LextoPkoZ1NY
	WKN0M6jw6pCKb9KbMIyQtBMngmSaJMdiyjeTYMgXd2ccTHtMAEE02b63ajaW1bK4oDPqs/UT9QH
	0lcqD15fN5C6e6I9X0SbgaIzFgUV2Ih2Y+25QgFXFuwT0mwP9n/GP3EOXbbDjGUuFLinDjq4sxo
	6HTE1+nJ3AN+yX3a5hzwYRYvxIxC9RNB1euWWlHZPtpSKt/9GjA9MTBbCBhZxo2Lcqh8FO6N8q+
	b/tpFgC/9B45D+owdXiwWMz8uY7kaOlbza7XHVae9MeZ8WXX88x2tNuB7cs/Iz56x1uASLfSvoW
	QvzBtgoHhC/VYM8e1NmVaoPQ9JA==
X-Received: by 2002:ac8:7d05:0:b0:4e8:91fd:979a with SMTP id d75a77b69052e-4ed60dc3731mr99108001cf.35.1762354734224;
        Wed, 05 Nov 2025 06:58:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGdQ3gzwvCqjhB3OmouGTFW63ewZihyDhjY7zVMw6vSpc3iQ3K5mDt07khoB47BgfjJzf61sw==
X-Received: by 2002:ac8:7d05:0:b0:4e8:91fd:979a with SMTP id d75a77b69052e-4ed60dc3731mr99107611cf.35.1762354733769;
        Wed, 05 Nov 2025 06:58:53 -0800 (PST)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429dc18efd3sm10676001f8f.5.2025.11.05.06.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 06:58:53 -0800 (PST)
Message-ID: <e06b5209-e814-4be8-adec-7a0cf14a453b@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 14:58:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/7] soundwire: qcom: add support for v3.1.0
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, alexey.klimov@linaro.org,
        linux-sound@vger.kernel.org
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Kmvk7-WxbRKaLxnlUikTEIUQQUYdfPaQ
X-Authority-Analysis: v=2.4 cv=MMFtWcZl c=1 sm=1 tr=0 ts=690b662f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=XFxd4amYmj4aWiUiTBsA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: Kmvk7-WxbRKaLxnlUikTEIUQQUYdfPaQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDExMyBTYWx0ZWRfX9ZgnmqF6PZgq
 o1RuBSPdX2Yzlc47hHri7RBGeG2X+K1P6zIaVVhrhX0bnCdXvht1NdTAYk4cBTlj4bycuaxUTrn
 s0sIstBeYlant5IQZ0GrRdMo2L0h2ZHiqQAvnbeUVsuJx7SAsN/e+mblZ+ifgEleR5pWQOIljRD
 VJTEo4PtKHpIOjXPvuZcz6umKTnWheKh+lPOgi2Co8Sg+WudH+zu/mRTy3MswQFUl+6xECIRyIJ
 RRT/BHzgVb4XckMNvUvUvIeuZAASTyxtufp25idWGZvMFw+H5KMe8BiowAsk5+fl8iHBG1WqkOh
 fu+YFNnEGZVx5qUTVQKVzqlMCBb5+fOEdd7Urd4z2ezuR9ITSkxfMA0U6JaLCNcwc+nbinMWp2r
 681PCBYsk0JSa0c7anZINedVyQntMQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_05,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050113

On 9/12/25 9:32 AM, Srinivas Kandagatla wrote:
> This patch series adds support for Qualcomm Soundwire Controller
> version v3.1.0.
> As part for adding this support, a new macro of_property_read_u8_index()
> is added so that we can remove the qcom,din-ports and qcom,dout-ports.
> As v3.1.0 supports more than 17 soundwire ports. Also due to change in
> the register offsets, new entries are added to the variant data.
> 
> Tested this patchset on T14s and Glymur reference platform.
> Alexey also tested this on SM8550
> 
> Merge strategy:
> 
> I think the patches can go via soundwire tree given that Rob has
> provided Reviewed-by on the of_property patch.
> Vinod are you okay with this?
> 
> Changes since v3:
> 	- added bit more flexiblity to driver with a missmatch message
> 	to address incorrectly specified dt-entires.
> 
> Thanks,
> Srini
> 
> Srinivas Kandagatla (7):
>   of: base: Add of_property_read_u8_index
>   soundwire: qcom: remove unused rd_fifo_depth
>   dt-bindings: soundwire: qcom: deprecate qcom,din/out-ports
>   soundwire: qcom: deprecate qcom,din/out-ports
>   soundwire: qcom: prepare for v3.x
>   dt-bindings: soundwire: qcom: Document v3.1.0 version of IP block
>   soundwire: qcom: adding support for v3.1.0
> 

Hi Vinod,

This patchset has been in the list for last 6-7 weeks, can you pick this up?

--srini


>  .../bindings/soundwire/qcom,soundwire.yaml    |   8 +-
>  drivers/of/property.c                         |  33 +++
>  drivers/soundwire/qcom.c                      | 257 +++++++++++-------
>  include/linux/of.h                            |   9 +
>  4 files changed, 199 insertions(+), 108 deletions(-)
> 


