Return-Path: <devicetree+bounces-228612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB9EBEF826
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:45:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EC0664ECAB0
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057942D9494;
	Mon, 20 Oct 2025 06:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DWI7b02W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D5D2D7DFC
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760942716; cv=none; b=ZdtQrsXHopE3JSHQoacj+xxaH46dUyMDAg+ABmOiD+k/VVL41/23nb9hX6vlyV1pCvmwb58JquGIinkVOX4wstR+y0fFxag4yqpyFC5jI9lC4OgVEV5wbiKMxujuSBQQbpKw/YDa9x9brLL0yJ5jBOGiBW2jQ1Fw7PBXdJ4+FNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760942716; c=relaxed/simple;
	bh=rtC3C9uGt4UHU2rn8ibGjqy0rKI3FHFok7NncAPdX+U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g27QTSu/T1rUKChW5KZn4lIx7OMgQh+im4vCNkP8w/jlT8cFZNBMdwHxIJwHvbu6cdro1A7NE4qDcZJT4zUeWgROcD+6npd7XTynJnnEIJLfpik0fVYcde3jD8W9rxYTtJysdDmHawn1BPGYU5MypD8+LmMUUXqUYcyvuirx7gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DWI7b02W; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JJHPUL010027
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:45:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3qj1hX2tzkLQMkkvq7DvgBbML5xuWRY1vxvwpXBVNfo=; b=DWI7b02Wt6xk/JR0
	JiZBjmIgHysOpmUo0s5EwtmCpscN2yWiLBDfqf+N/vQoo2HpsnpLxwVq0DF/mXy7
	SRDa4UhCdqUWSRZcVkFqtQloG9NwldcNbclPT8XqnHkOdkM92b4wSh5Jkk7z5J+x
	VVNkRcHtFVA2qr83Wou6OC3a4ZeyxlsF1MNP77jA0tWH3nnjZKnOcFWOxcAFHCrl
	ca5By6oyUEm3tQDlZ1vwkPfc04cR10AotH3GU42M0fff5sIBLzZRkFib0MBfLSJj
	Ph3MGFiDxpc/Nv4yuU5APrZ3raxKjL8V/LJmWDTHBPl3ehqfcXLVlWK94fpsW+Yq
	OsBfmg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v0kfc3n9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:45:14 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b552f91033cso6463123a12.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 23:45:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760942714; x=1761547514;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3qj1hX2tzkLQMkkvq7DvgBbML5xuWRY1vxvwpXBVNfo=;
        b=ZfDh8FUl3DSJDBmJCRjS40ooetMDsFRCfLI1Wh6a/PbUvHwfiGHpMO+mp33I1id1Xz
         my8/n+gKLLmu6Z3dNl7SAqvkcwzpCY7Et7c5KJEkvehRNmSGRQk3k20b0J3C/co4n+E0
         l+DfQ+2DAT61VTmpLUsBOyLWiXNJFm3RKFKRYikC8QFpXFQpMkCTXADElhJy1DBGARr5
         VylX+Dw87B/DOMI7+wHEQGRZiu7QQ+z3n5qxX854t4vSSnCjEqyOiVdfmt/1oe28/dqL
         Iadi4plErqGhdRcRsIQkqHULdqp+2W6zrKUDntQCsfCd4xfkTCPO4SXLg0u/cENiFir0
         fdxg==
X-Forwarded-Encrypted: i=1; AJvYcCWvUsbHAoYW7lcsD+Sy4QWOjhFp1rkpH3c2gCLroX6o1Jcz0ephSoUOk6jPji3Sgpjsd1TqV4QSDk6S@vger.kernel.org
X-Gm-Message-State: AOJu0YzuQyhTD4GDJT7+F11qntFH+T3S+cXl+Sbu4J/EErNqy96rmG6X
	/v6+4dHB+eNSAwBxo1uCT2XT1x+hLxOuYVyqreMwGAkehxRsull4OMBcEMgqdomFET3R4F2UXQg
	9aD7DhWC4eI15GsaEgGO6Bf7OUaGxQMl4LuSOCJuBtl9oBI6rP9KIqNxj/c2ey5F5
X-Gm-Gg: ASbGncs2BhmcjELKEf8D1Ew0HInnYjkv3y81MTWXvlvab40SFxbJKfFXJgjpNWsW82c
	pTQOhkLKuDiIV56r+5fU4a7nVyUWnx6hl/0b/3VFP/nvzOwyo3nid6C5J4Xe6pJqixd6a1Mqm7s
	mbRIIchJuZnq2gxwez3A2VmjTXSkTxwxAJHeFuin+ZZwPXGySkR2Cd/rdieOVUr7Rn9xGdNjhZB
	8Nah/MxelxsMBX6Zif4IFbEsTkH7NUTCxOBAhm6rZnw4kvKaNKOa6dLR5bJf8apBkixQKqUWyiO
	cWdTrqWda1Ca2QZ6joRgjcpBdW9YYstFrAWn/CnP9Kn3BBxLUKaxpgSglcl9ZmLdmA7sAGF92qy
	h5ocxmKkwXoBjH4+YKpOaR6qCB+pv/xVUO4+4iWzt8MgAoZIAYs8IyZtHOLj5dyXazMwqHg==
X-Received: by 2002:a05:6a20:7489:b0:32b:810c:2ba5 with SMTP id adf61e73a8af0-334a8652285mr16399825637.59.1760942713713;
        Sun, 19 Oct 2025 23:45:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHad5TbzH1sKjCzYpmQGbmCOR4jWr/A8NyZHnhGcDceZbOeyhSYzqUYFrWu/OhNtgqfN1z6lA==
X-Received: by 2002:a05:6a20:7489:b0:32b:810c:2ba5 with SMTP id adf61e73a8af0-334a8652285mr16399786637.59.1760942713297;
        Sun, 19 Oct 2025 23:45:13 -0700 (PDT)
Received: from [10.133.33.90] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76676a2esm6818005a12.15.2025.10.19.23.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Oct 2025 23:45:12 -0700 (PDT)
Message-ID: <8ba56bfe-d0cc-4f9a-93c8-0c361d5c59c8@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 14:45:06 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] media: qcom: camss: Add Kaanapali compatible camss
 driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-3-f5745ba2dff9@oss.qualcomm.com>
 <0fe25ca8-8dd4-42c7-a818-a803a256f42f@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <0fe25ca8-8dd4-42c7-a818-a803a256f42f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=E6LAZKdl c=1 sm=1 tr=0 ts=68f5da7a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=zPKo-_adG0ZnOV3uB6kA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: 2LcqnRMdGTlSmJ4LQ5UsxX6Ab9KhGVHH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMiBTYWx0ZWRfX6Lwz4fGxAbBW
 i9MfudOb4fNzXRgiPwyCf5VOZqw/bQt+2n/v1egf0lf438Fyv3NpcgJZ99YB4txEw+iCS0tDP0M
 Nl8bGfAKSx5eI7ZKjfX/Ft1EdGf5v5IaPJ/BVFXHKZgkye4RF+FhPK5vWvD2HtWddXvio7FeJox
 tDeLEgHigbujc9nKJtIKXBfc2nA4RySkNPPVXQThpQhosHdF3adNnVZcYzQPMpN+JyY/GBPXl7V
 NfZqztlB02yB6O+8MLsOqknD7JDATAZkGe8nH+r5HeFRgUSne09MC9a/JV4UGuxERsSY6KgRmXw
 Esc0rnHZtLWuzyilt2VaTFWs2e1b3uR5yXIIxvMbMs9qt3wd26jmJn5AQqUUSzUCAlSBtnbLVjB
 6wVgTJYTq1g3cvjuzxwdQl+Jt6EhSg==
X-Proofpoint-GUID: 2LcqnRMdGTlSmJ4LQ5UsxX6Ab9KhGVHH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 phishscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180002

On 10/16/2025 4:55 PM, Bryan O'Donoghue wrote:
> On 15/10/2025 03:56, Hangxiang Ma wrote:
>> +static const struct resources_icc icc_res_kaanapali[] = {
>> +    /* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
>> +    {
>> +        .name = "ahb",
>> +        .icc_bw_tbl.avg = 925857,
>> +        .icc_bw_tbl.peak = 925857,
>> +    },
> 
> Looking at other implementations I realise we've been adding avg and 
> peak without too much review however, wouldn't 925857 / 2 => 462928 be a 
> better value for the average ?
> 
> ---
> bod

Ack. Thanks.

---
Hangxiang

