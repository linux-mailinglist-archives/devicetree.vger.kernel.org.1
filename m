Return-Path: <devicetree+bounces-191349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F1DAEEFE6
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 09:40:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E04201BC55B5
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 07:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90EA91EBA1E;
	Tue,  1 Jul 2025 07:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kqzinbpD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34D425A631
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 07:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751355639; cv=none; b=omUs6xQDdzBlkRSk+Y4w0dVNNJCiGovHGZb7JZcvqo8XNLPqoL+lKpasqR6nFhPnZJxjp5A25wbDps05cWWp+kV0akOVvXEgVdCZIjFnOl5iwMwYYLt9AFDC9z1Z5DZrJlGMisnmdYE03MxAdkPO7F02xfCI6nFVwuuPFYODZzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751355639; c=relaxed/simple;
	bh=yD+gTzX65UHJgMgaHXUtRp/UqZB3K8WSvA4L6J7/iWU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oXwyiaqC0buxVM/K2CVnCArT2IuY0xJOKGNCm21XRvzVJaVmJ0/paU46K3TVBao4Cw+Mw+xx5SXeL4LFpJwmhtmWru1Hu3WokezSY7bQ8O5DG5hlFNgPL5zI6wcB04pKjkgyPiRCvDOJ8iNJ+RE949b0wBt8olyjMMN1m5NiApE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kqzinbpD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56152TtM024944
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 07:40:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9FJpgLVOiD37cYFqSGkdmMgvU4F7xSlbYlGdvhvvuUw=; b=kqzinbpDsgdG2QUS
	YY2Sstvk7QTvAoViLiWREvOunSo9e/Al7nwST0OPYVl4JWej7BeHIDKz/QBXQOTX
	ca/3bIsGLLUASNpzfkLQ4eGD77nAUhwxBq1h3nlc7M/+l6LE5s9+GIhj5maSSCxk
	H2dGNHGDh6pjJMO0OVX1PXYr3r+Ri4e67rfu++1/2xdxYg+IN0nGVZjqJ13JI7z3
	BjUNz3+QhYVjwzOsnQBIVE1M7ubOYaTs9h54dWJy2KVs6bBQ2+bF71XauaHKOx3X
	nlqo/HnUuhcYSKn+e3h9qju2W9J3Y3zZwxiqVXZYqfTwlubECMcWeQvk8FXIUbwK
	0KJIMw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j801yhgd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 07:40:35 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b2fb347b3e6so6102296a12.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 00:40:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751355620; x=1751960420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9FJpgLVOiD37cYFqSGkdmMgvU4F7xSlbYlGdvhvvuUw=;
        b=B/tBWlpQfVAQsfWHddzHxgRmZ/Bac/CE/Xgd0M0gFyf4pWDyCEm5rcW7xzxGAhTpK3
         z0uz2gP/w33DVPu5jqH33lKdmodjHLSJ++nosN1jPqLOSGHZ2KsJlmsasir6+dah6Yy6
         LgEniBm35BKbLVE01fNlDdKMAgkZpHwkp/3WOBxoENWJDiZOGqOQV029LIEUJ+Lr+z10
         aXsaNZXDwtlysia7PpZbkHqgxFNoOD5MN5x/40pQ29qFh3f4vW1/wxuv+s7K73hxX33d
         HlN8Qm6Z/dOAKMGAXNAvu6RUuhPinaWMGu4fTN1s3g/qmTKACIh/s0prZ37A3OFE+01l
         dcdA==
X-Forwarded-Encrypted: i=1; AJvYcCVoO9DDcHHw14dh9wqkFkLkz7tmryj4DRV3zpybIB5ZBD9hLa8Kb9DuOZt9yloaZPco2G809PPsoO/O@vger.kernel.org
X-Gm-Message-State: AOJu0YxI6fl2nlAFGXo6POWLBbavYWN8ym6anWjq0t982TqNgUT981o4
	y95VFpuF+J+IqCeTqRjr2NmgPaEVmOGRpfGoOjEuOZfGhn3Q7RwYAePYFpV/Z1ES9TMxH68hahX
	I/DAv0tSTCVMOGWoZLQfsVA7pVYtlskYzP07UqE9EXYcFZ81JJKoqpY4sqSu4tyd4
X-Gm-Gg: ASbGnctFM4nZebymCP/ejDsdwiGPCrw4F+HJzySUvzJVioQlcE320m8ARIZ8o3d5zRI
	4bx7KYf0Hdvo6HYoObqbtWcNoZbS5eIc8s4h4XabIxK1SMocfpdYXbwaxEsRkTd9lfoAoU5iKwH
	e8cMtaBOQNwuycnuoj6WdRfY086oAY7Kgr7PE5qQ1oa/UFg3/oZ16yhioHpf3/Etyejhdrwsne7
	3o8SwZ3iGqkTx87NprF1oKICZx+5D3AzHvMH8/NzspCcZdwOuBsgRQFXszjnbo+kgzdHGmekVtj
	IP8ixwCupufmsHbEyOrVmD88OcE2rfl9MaiZfGbOiYjP4kLbEFSn
X-Received: by 2002:a17:903:1a70:b0:235:caa8:1a72 with SMTP id d9443c01a7336-23ac46270f7mr205403125ad.30.1751355620416;
        Tue, 01 Jul 2025 00:40:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6PfU55PeZ0THoeIsQvpLSXshyFj5bq+0QDrT7N2DDDg3D3DoMl91iR6zJ6C30Jos6dGx8tA==
X-Received: by 2002:a17:903:1a70:b0:235:caa8:1a72 with SMTP id d9443c01a7336-23ac46270f7mr205402505ad.30.1751355619911;
        Tue, 01 Jul 2025 00:40:19 -0700 (PDT)
Received: from [10.92.200.128] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb3c2352sm97622025ad.208.2025.07.01.00.40.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 00:40:19 -0700 (PDT)
Message-ID: <d055d163-a0a7-41c4-90e6-0606f9b6eb89@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 13:10:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/9] PCI: Enable Power and configure the TC9563 PCIe
 switch
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
 <ps5ck23ubpo2vdxzko6yixujlf7mqppdssqrc5bz3vbupmn6cu@yc2ld2tb3r2b>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <ps5ck23ubpo2vdxzko6yixujlf7mqppdssqrc5bz3vbupmn6cu@yc2ld2tb3r2b>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wjPfgzoZB8LWQVBwKgoOROUm_9zVIHUN
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=686390f3 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=MuaoRvlZ_d6aMCo3pHsA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: wjPfgzoZB8LWQVBwKgoOROUm_9zVIHUN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA0MyBTYWx0ZWRfX/oA5wlk9vUMy
 EogQPo2QrFDQush5aCAmvunyLidNv1NOvCWBFpWrR4/23IeFiG2BgCIeqFbqsycEzbC6Wme032E
 2tUIfGvD8/EIcuopxhFRg6YQmpWlAvWDoDc8UnVSOkNPk9f+wJvQDijyuWy6LLwCZ5srjVXtr/W
 qYKKQU2aEmFJB0+eLn/dW6yb4o5n8JxCAw9xH4vNNbwSroslNJlrumesdtqr5TuJIPB8MffGVIu
 9B594edPqTHjVzRmynzGktU7XqJitNtEXkF9lojzV4qr8VoS7VALp3bxMGCOX9xQ48amE7hMXaT
 wheqV5FDXf992gY6du0Y6GgmeYYZDsRrIqI4OzvqiYm9jpE7ic583hDr9CvtUoMilq5cAkd3d6S
 Lh9DRhKTINJAetZyzTH9n1IDthC6mOLMn0XdreQJRLfPFSGhVIhYrsPN18JNUNevHE+Xuh5W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=908 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507010043



On 7/1/2025 12:41 PM, Dmitry Baryshkov wrote:
> On Sat, Apr 12, 2025 at 07:19:49AM +0530, Krishna Chaitanya Chundru wrote:
>> TC9563 is the PCIe switch which has one upstream and three downstream
>> ports. To one of the downstream ports ethernet MAC is connected as endpoint
>> device. Other two downstream ports are supposed to connect to external
>> device. One Host can connect to TC956x by upstream port.
>>
>> TC9563 switch power is controlled by the GPIO's. After powering on
>> the switch will immediately participate in the link training. if the
>> host is also ready by that time PCIe link will established.
>>
>> The TC9563 needs to configured certain parameters like de-emphasis,
>> disable unused port etc before link is established.
>>
>> As the controller starts link training before the probe of pwrctl driver,
>> the PCIe link may come up as soon as we power on the switch. Due to this
>> configuring the switch itself through i2c will not have any effect as
>> this configuration needs to done before link training. To avoid this
>> introduce two functions in pci_ops to start_link() & stop_link() which
>> will disable the link training if the PCIe link is not up yet.
>>
>> This series depends on the https://lore.kernel.org/all/20250124101038.3871768-3-krishna.chundru@oss.qualcomm.com/
>>
>> Note: The QPS615 PCIe switch is rebranded version of Toshiba switch TC9563 series.
>> There is no difference between both the switches, both has two open downstream ports
>> and one embedded downstream port to which Ethernet MAC is connected. As QPS615 is the
>> rebranded version of Toshiba switch rename qps615 with tc956x so that this driver
>> can be leveraged by all who are using Toshiba switch.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> 
> Krishna, the series no longer applies to linux-next. There were comments
> which required another respin. When can we expect a next revision?
Hi Dmitry,

Mani asked me hold on this series as he was working on some design
changes on pwrctrl framework which can impact our design too.
Once Mani posts his new design I will respin this series.

- Krishna Chaitanya.
> 

