Return-Path: <devicetree+bounces-173683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 280F6AA9410
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:10:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFBD27A92E8
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E70E255F2D;
	Mon,  5 May 2025 13:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OAPLltGu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F0141C63
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746450628; cv=none; b=pDF+yRtQkOiSVNTyMJF3T/5RO7g+ICmakIpdjZ0RMm1rgmLTySqXABUGqw/ekXaOkFg2I6Ci+rSQtuXBcDU51StrZpZBaeJWSHlejOO8ijWjdJm4Xv2aKCKifzUfPUMSz/OUc7XKCjTBlx/sQ8whvjOVSQ9yDOTTZlwuJu/J7W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746450628; c=relaxed/simple;
	bh=YTCE5j4Vt58EgRHFbcLwGaOLfSygO4aNRphxwkS/bTE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EQIjayr0WBzojcLTg6t0/m+DZKErbt5iKo5oG508fsLNbUaCvtrVTXsjcJ3O5H5dOjmsw9lHcKv8Nxh8LV0RwNH5P/HXa2ELjtQDWI1xdh1b1TI2FFv0kgdlS6/UBlvqiK/iLD4SpL64HNMbYpGpfBcikmQgPf8yI7I4dRnKwjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OAPLltGu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545BG8P3002489
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 13:10:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	obH9j2KjKOnZhN96kr9U6Q1FPkqfOm0HIEhXHEYT52c=; b=OAPLltGugCbx8ZNM
	idX5zOu5Mr/s6ujbhLI/cP1Y3tTvHjQz+yI40s9tM6PVjtkO3VmXaxCS8RJ8fFYz
	yeWIkR7fc3SkL+dM9pdbidMt2+/XdI//6LbcwkEWYx71QOkfZAadlMRmdkGPuMur
	dvH0pR/J0nZ21/Jw68imhTVFYKkm3K8zzg9GlDNXuANN48SoCKG735oZbqM8LYGP
	wBP2HAT/sCsyjIGiSZLODrJeZ+a5JS9AsoKGrKw1tQ6cyJKsfTYDau2j25CMs1WJ
	vxZ6tW7SiHDwq1oTfJkAvOURiU48v3/T1hNs08AHksxJAL/0V6VBQEdhwZSsJ+XI
	TLtUOw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46d9ep49ak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 13:10:25 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-740774348f6so1089166b3a.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 06:10:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746450624; x=1747055424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=obH9j2KjKOnZhN96kr9U6Q1FPkqfOm0HIEhXHEYT52c=;
        b=gbS/cKQtGRlj5LuML4gp3CIureNWoQ5+cUomUVk4FZr3vTCooDHGJbYjRYsmRfEnSt
         FEAURTb7gTcRSY+QJ6cTG5vFnH9ctDGFn5OvCiBT7QZwFytmB03U3vNDTqq41EzOierx
         y3YJoOJObXVKYINNUA1HUeFKC/igtNsWORsybF3X3diodxXOkj34OTVG6zN+KMTJ6jkQ
         cBBeafzV0NMbKYdK0qwizCa6tLyx08PVv+KkOrPLRgt3fjdTj+1DXeJOfLfD9ftSWnA5
         f9XHQFNq7wTBXzbRZHKp2VO8i1mOe92m4pyEbvZceQtKBVvMJQEG28An84JagsTPYsp4
         5/pw==
X-Forwarded-Encrypted: i=1; AJvYcCVJX8EyPuTLMSceOg37P9ZqpHWHe9sdVJrARFJBHFCrIh5pzQY+SQtgpaEmuESmyclRsZzg8UA2Hfng@vger.kernel.org
X-Gm-Message-State: AOJu0YxF+ic4q4piqduovpjcq200HuDvrQff6YAeR97Vz0iQSm8j/ATY
	uFDQzClooWe6Ew8nFLhHuwRzOX8OtqCCC1Llef1nF6WkDBKVYz0blTiD25hKYsw5cJeGMEoJQdB
	BlMx/zZX2gqVNEAefM03UedPjPEkhVpClonv4CrQKNIQAgAfEWLo6I2kMiptcln/SpqVd
X-Gm-Gg: ASbGnctg55ZLx1Wmnx1n3wkzR00G5j1dnx89kwi6Ub5ASeEGM9+8RZt/IKXpTb7NKSo
	ierdfNDsRAfJsZow2i4gjTtkUPMp/CoZMqSNcaxxV7j8ms40/FxoLgWZywjTaERd2PxRsaz+qIy
	jQb7z+TxY8vRjOsXcyj0yr09Ik38eH2myGCVefqHSn2K+nI43AmqyiEEHnJkuYWnhJMTNpK/r7r
	RERylbvW4qXHeLVGuka18UK1lcHj9TtKJ2c0Tk1YLU1mJOmDrTbmIuc75ejyCnG/s0VTdkTnQJp
	EGuaTu9Nb/OS48WShXGvm43cHBPRsnnAumuHjfqi
X-Received: by 2002:a05:6a20:d04c:b0:203:bb3b:5f1e with SMTP id adf61e73a8af0-20e962056a3mr10846584637.1.1746450623645;
        Mon, 05 May 2025 06:10:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuOeYnKLjaWuFtt4/w5Y62svOpcLC03We3EgbRjp7LR9AvfrfZaqT1dG3G2TDp56/FOd1b8Q==
X-Received: by 2002:a05:6a20:d04c:b0:203:bb3b:5f1e with SMTP id adf61e73a8af0-20e962056a3mr10846495637.1.1746450622797;
        Mon, 05 May 2025 06:10:22 -0700 (PDT)
Received: from [10.152.201.37] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74065720b51sm5144488b3a.35.2025.05.05.06.10.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 06:10:22 -0700 (PDT)
Message-ID: <4a8febf7-64a6-488f-a3f9-ca064a51acc6@oss.qualcomm.com>
Date: Mon, 5 May 2025 18:40:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 3/6] remoteproc: qcom: add hexagon based WCSS secure
 PIL driver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-4-gokul.sriram.p@oss.qualcomm.com>
 <72f0d4f7-8d8a-4fc5-bac2-8094e971a0e3@oss.qualcomm.com>
Content-Language: en-US
From: Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>
In-Reply-To: <72f0d4f7-8d8a-4fc5-bac2-8094e971a0e3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=EOUG00ZC c=1 sm=1 tr=0 ts=6818b8c1 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=n4nWiP5vS5Vf-V7KPTwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: BnETqSjGwTs6x_VjVIYpcVBzA2eWJxbu
X-Proofpoint-GUID: BnETqSjGwTs6x_VjVIYpcVBzA2eWJxbu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEyNCBTYWx0ZWRfX0YlvdWQ1Ofuv
 erooEuMQOrHOGod+po3V89ISG+Jfmf4SgI0yGmotXLNETg04If//7/PdHbZsqYC1aVigLC4whvm
 M3J5G/ai4ejumlX3D9haSYTASvtOLx6+auQ6VmcBqpPJ0+cR6pjJykfJXmz+RRFBUdPRiviaKHW
 fPi5C7fiC2XnYXg0SKsrdzBh8FenM1v8RS381WehJvXOdJ/rLuCdvyTOrR26qIbc7hl5kvQvvnm
 2Ee2cJ0Klmv/V21jP1T9NaCKHsPifK8PJyXRWug0pQEZywRVlF4df0s/oVdjd1Xc4RooBQcO9c5
 amf8zHacg2O3uBbONvkQiPI4T9CSj8mTTEvpWcH7Dkv1XfwH4upbli2q9j1+KjdNU8gzGY9liCj
 0bgNB6nZb96MPQTzpszn8/X3Iyj+Na5QZCV1fE/D+d9WpatO+QcFfZ1RVMH/4xfMNi3bdV8D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 mlxlogscore=678 mlxscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505050124


On 4/25/2025 5:17 PM, Konrad Dybcio wrote:
> On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
>> From: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
>>
>> Add support to bring up hexagon based WCSS using secure PIL. All IPQxxxx
>> SoCs support secure Peripheral Image Loading (PIL).
>>
>> Secure PIL image is signed firmware image which only trusted software such
>> as TrustZone (TZ) can authenticate and load. Linux kernel will send a
>> Peripheral Authentication Service (PAS) request to TZ to authenticate and
>> load the PIL images. This change also introduces secure firmware
>> authentication using Trusted Management Engine-Lite (TME-L) which is
>> supported on IPQ5424 SoC. This driver uses mailbox based PAS request to
>> TME-L for image authentication if supported, else it will fallback to use
>> SCM call based PAS request to TZ.
>>
>> In order to avoid overloading the existing WCSS driver or PAS driver, we
>> came up with this new PAS based IPQ WCSS driver.
>>
>> Signed-off-by: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
>> ---
> [...]
>
>> +static int wcss_sec_start(struct rproc *rproc)
>> +{
>> +	struct wcss_sec *wcss = rproc->priv;
>> +	struct device *dev = wcss->dev;
>> +	int ret;
>> +
>> +	ret = qcom_q6v5_prepare(&wcss->q6);
>> +	if (ret)
>> +		return ret;
>> +
>> +	if (!IS_ERR_OR_NULL(wcss->mbox_chan)) {
> You abort probe if wcss->mbox_chan returns an errno, please rework
> this to use if (use_tmelcom) or something
Hi Konrad,

Sorry, please ignore the last respone which was unknowingly sent before
completing the email.

do you mean to use 'use_tmelcom' variable from driver descriptor? If
yes, what if mbox_request_channel( ) failed?

or based on wcss->mbox_chan, should I set 'use_tmelcom' to true or false
and use it?

based on availability of "mboxes = <&tmel_qmp 0>;"  use the response
from mbox_request_channel( ) to use tmel or tz flow?
> [...]
>
>> +static void wcss_sec_copy_segment(struct rproc *rproc,
>> +				  struct rproc_dump_segment *segment,
>> +				  void *dest, size_t offset, size_t size)
>> +{
>> +	struct wcss_sec *wcss = rproc->priv;
>> +	struct device *dev = wcss->dev;
>> +
>> +	if (!segment->io_ptr)
>> +		segment->io_ptr = ioremap_wc(segment->da, segment->size);
>> +
>> +	if (!segment->io_ptr) {
>> +		dev_err(dev, "Failed to ioremap segment %pad size 0x%zx\n",
>> +			&segment->da, segment->size);
>> +		return;
>> +	}
>> +
>> +	if (offset + size <= segment->size) {
> I believe this allows an off-by-one (remove '=')
ok, will check and update.
> [...]
>
>> +		memcpy(dest, segment->io_ptr + offset, size);
>> +	} else {
>> +		iounmap(segment->io_ptr);
>> +		segment->io_ptr = NULL;
>> +	}
>> +}
>> +
>> +static int wcss_sec_dump_segments(struct rproc *rproc,
>> +				  const struct firmware *fw)
>> +{
>> +	struct device *dev = rproc->dev.parent;
>> +	struct reserved_mem *rmem = NULL;
>> +	struct device_node *node;
>> +	int num_segs, index;
>> +	int ret;
>> +
>> +	/*
>> +	 * Parse through additional reserved memory regions for the rproc
>> +	 * and add them to the coredump segments
>> +	 */
>> +	num_segs = of_count_phandle_with_args(dev->of_node,
>> +					      "memory-region", NULL);
>> +	for (index = 0; index < num_segs; index++) {
>> +		node = of_parse_phandle(dev->of_node,
>> +					"memory-region", index);
> https://lore.kernel.org/linux-arm-msm/20250423-dt-memory-region-v2-v2-0-2fbd6ebd3c88@kernel.org/
ok, will implement of_reserved_mem_region_to_resource() and
of_reserved_mem_region_count().
> [...]
>
>> +static const struct wcss_data wcss_sec_ipq5424_res_init = {
>> +	.pasid = MPD_WCSS_PAS_ID,
>> +	.ss_name = "q6wcss",
>> +	.tmelcom = true,
> "bool tmelcom" is very non-descriptive.. call it something like
> use_tmelcom, or maybe flip the condition and call it e.g.
> tz_managed

ok, will call it "use_tmelcom". But can I avoid this variable and use
tmel or tz based on response from mbox_request_channel( ) as in 1st
query above.

Regards,

Gokul


