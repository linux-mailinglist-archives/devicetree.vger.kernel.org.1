Return-Path: <devicetree+bounces-225298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 862E0BCC381
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 10:50:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D00B01A658CB
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 393EB264A9D;
	Fri, 10 Oct 2025 08:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AiaG21A4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AF320A5EA
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760086202; cv=none; b=TlC+WLJlI81mPxO0d9diM/oZg6JKtxpH9PLIHK5zWzXh24iWf4IAaRTEFeR09yOwp9xmxGAWDgk/raYSDxW4KGTlyEj3LmS86aBglvki2dFyqNWLhlyJ3efKLZNZjqMoVkl8g3sk2ZS29p6DmsOw6S49Ophz014eSRCNEkqbq44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760086202; c=relaxed/simple;
	bh=JSa8dssqMTZFfX2f7rVLTtNC8XakKNEjvuiexVQ4d5E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SimUOH88hEf7r6UJBIiDogAqLGM0pkC/h9nfWG7WTNO0AbaMdnJZoiBCuRFtCqxpVU/uzqFuaEVNDDiIC1Rl2iAsS8gxKz3kkJL0Ode3kHq1OWRXhvLF0f18/EH3hOo7HJ6XKd6yUDYJ07c/VFQB47Mhb5bSAFPFCv1d3UDAoIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AiaG21A4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6WtZs019853
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:49:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cwh4ZsIqg1G/kV4tcJ1hinaVGiVD/hz+Bz+dzBU2qIo=; b=AiaG21A4/6eEAxS4
	TwgvOuTTBuQb+RFCwGmITqDkoNzKU46W9v0MuWGXnUhSMy1d4MyOUx2Kc8yI+NIy
	z69AM1S7FvN7ksz2n38pwKXxKJsVhnH9yFzLxtWsoGxjCLUApaosAqJIGZBogzKy
	krLmcNFGxxfh0k9iSPMFJ6SO7X78hhiW45ivifFp2iPz6GtTgoaInXHv2Pgq8ABG
	VK6fPWqg3LDRW4LA4KHH/a1OcVeFBHJeFs78xhNh0QX3MLn4YAaOfQpIwxlz0vBo
	YVUCPskFm2fedFqdGe6Ld+9AtCTwnlyOs6v0FUrFZZ31lfowrVM/x3nRSx2BqZ+k
	NwuUDA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49p9m0unqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:49:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8572f379832so65082185a.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 01:49:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760086197; x=1760690997;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cwh4ZsIqg1G/kV4tcJ1hinaVGiVD/hz+Bz+dzBU2qIo=;
        b=qJyWs4kaYhXbBVHv5Y7Lh736u7FuDtmtOvgzZV5ox04vhxC1wcgDjuNVgGDvfLoCvp
         7cl8bUYDzRq26qwd9BJq1SYrncCcEUY03KiclRr8YFq3+QqKf+x+BwW8+/7pqj1pHNMr
         trhgg/Fo5pzitAzi5MqTqSTewbXyrWy5rhn2SpOyPipgTRh0yphW09yl4Su44hgBtAbI
         o5p1a4cGJ1EwBndq++kE3MDdHMh67H36sy5mvhf0j7hSYFr9qc0z7pN34tB599yH/T1K
         f9OxrSR2WcH7CnqOoX6/kQK/MmvwnFmEEbLCcHK8NFwVSZc24rogqCbtbrX7MTMr7AMx
         Robg==
X-Forwarded-Encrypted: i=1; AJvYcCW90vn66gU+kJrsSkTg9rULntEFRGyFEBTsOjxcUQqHtghFcA438GHnfhRlKxQq3uvk5e1oJPXNWqF+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1CKRO7Y0zfO+7YT/C6dRx3TY4NUZ1SZEEudz5EMEi5kbzKn9i
	k6pGKtmZsLvFhH4AWeHhPItDRuarTfLVMIMIVwUaXvN9gqKHMwGNpx6TuMKOmsWTILcMMHH1DYo
	LNouQZOwE+4PXAo346wdov8T/z2RKBVfp2nbvjSW195mJ5fiHKSeRx5WOP+lJZXs+
X-Gm-Gg: ASbGncvfs7TfdLvvOhjz67scyXygYn+kirjxIN9g+fLE083xqavRne54NTxFGQMkPFR
	oCbI0Qy5glPFxGRO3PmjGSxlOkpE9/zMm6GqM6c9TNuil2gTbySEYQktcLsIeSsE+LGarDWxCb7
	R2Bf1M2kmTvxaE65Xaokb/QMYadLbxcN+EOcLGA8AxEcbCtpveL2CfltD4FDbR6VsTdqk+uLoEc
	cQq1BIUFSOZQVF2+Z1RuESSEKRb0McgX+X6LYW7iWdPwtRUgwlS69ReoMqPXLNNePsgTilj79zn
	UkaHHjsZZUhmC+/pL0Zo2ctCUuMkKVFaTeN82TeVYO0QIGLzNEzxrKn593PeDenwXt96QlsU74e
	PwhJ85PKzPLr20ODXjieoBQ==
X-Received: by 2002:a05:620a:40ce:b0:883:3c5c:9077 with SMTP id af79cd13be357-883543faa58mr1036124485a.13.1760086197115;
        Fri, 10 Oct 2025 01:49:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnW/+isTRsgYN2x+tF3lYH+BB+Zvwj6IcISdiTQNK0hXoGC7zcoK1c/76jo+BmMhQiHGuJcw==
X-Received: by 2002:a05:620a:40ce:b0:883:3c5c:9077 with SMTP id af79cd13be357-883543faa58mr1036122285a.13.1760086196579;
        Fri, 10 Oct 2025 01:49:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63b616d12fesm1034403a12.24.2025.10.10.01.49.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 01:49:56 -0700 (PDT)
Message-ID: <8c099106-49e6-499a-942e-6349fa96c246@oss.qualcomm.com>
Date: Fri, 10 Oct 2025 10:49:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
 <141e33fc-c963-4f58-a69c-e7068c9ec6e8@oss.qualcomm.com>
 <e10594dd-cfc2-4d5e-bc1f-35aca05be027@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e10594dd-cfc2-4d5e-bc1f-35aca05be027@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=a/U9NESF c=1 sm=1 tr=0 ts=68e8c8b6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=kQruSXXmluR0ARYnVvMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 2BiipV0ba7OFA10VNct8TNmU3JGfZQAX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA5MDA0NyBTYWx0ZWRfX7Xf9sm+2ffAk
 cKFFJb01V9CJCLWy0mLiIrmMT1u1aQfymfRZ//SmU6gKdjts6UWaUHIs6OV6OQUqGWNz5RDrVRp
 0RY5IYAvGzXzYp97HeCqpZ0jSRjK+XP4JqJ86zqlC0TLX3cw4VAYZD6poVTdUx1VRVx3xDL9sO4
 1BAKgVlbPjgtOhI7NazEFV1rlRhZei+PfoJqknCTWs/CJeVqZMuIN7qCe8eksX3WLSuaDhyBdwH
 yT9TlEUQxP2jdKAI+czWciOczfPlNPfWyiJOWQoWDx4gaOXqNY9d5oYEkiGS9gUps01b4riheM2
 yaaWnjcLLnXOY9JWpmjXhzb/lEkDM+tbOj8c2uGkAlFLKCWVnV1pw3TspSxE9JkB66DShUPrTB1
 ohoWsy8zkllg77QHl6qyFdUka+GyGQ==
X-Proofpoint-ORIG-GUID: 2BiipV0ba7OFA10VNct8TNmU3JGfZQAX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510090047

On 10/9/25 6:42 PM, Neil Armstrong wrote:
> On 10/8/25 11:31, Konrad Dybcio wrote:
>> On 10/6/25 3:55 PM, Neil Armstrong wrote:
>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>
>>> The routing of the lanes can be:
>>> - 2 DP + 2 USB3
>>> - 4 DP
>>> - 2 USB3
>>>
>>> Get the lanes mapping from DT and stop registering the USB-C
>>> muxes in favor of a static mode and orientation detemined
>>> by the lanes mapping.
>>>
>>> This allows supporting boards with direct connection of USB3 and
>>> DisplayPort lanes to the QMP Combo PHY lanes, not using the
>>> USB-C Altmode feature.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---

[...]

>>> +err_node_put:
>>> +    of_node_put(ep);
>>
>> __free(device_node)
> 
> why ? ep is not allocated, it goes up to:
> 
> static struct device_node *__of_get_next_child(const struct device_node *node,
>                         struct device_node *prev)
> {
>     struct device_node *next;
> 
>     if (!node)
>         return NULL;
> 
>     next = prev ? prev->sibling : node->child;
>     of_node_get(next);
>     of_node_put(prev);
>     return next;
> }

_free(device_node) calls device_node_put() without you having to
add explicit gotos


Konrad

