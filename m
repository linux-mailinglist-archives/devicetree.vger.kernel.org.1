Return-Path: <devicetree+bounces-249360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C85B3CDB595
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 05:43:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D601730237B6
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 04:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2009E2E2665;
	Wed, 24 Dec 2025 04:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lptUDiMD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J72xlBg5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692732C0F7E
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766551413; cv=none; b=O7i3DrRw5wTlyxBOYRC35/YSfk1ukVB+2fcXDEMt6wKdORIFPrsn3QhI0jzt07Tr8ZoFG7PCoFqF5IPgYL6cIThMvc+9C7iNJivpmuqqony0TKl+nf7HjiwnZi6kSr2e2GOVTJco/WaleEXZu3esx6R8YzwvGPgJlHb3td+PZFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766551413; c=relaxed/simple;
	bh=7AnAY1VSKRpLhFsr6vc0i3JglJIfczIn7APLeqeEZQw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dQqPdGNmz1HAVJnP4nRNXoy7j7a9eb2itmtF/gPnEm71p08QMLKhHIC9xJDOeOQDmnugcihVMVOF91BXq1UJIdvBdrljQWitHVY63NCjdM4agtIjmAiT/+UTuzkfAQnhgkXXTm0HNqEpS7B5ZaYdFLjecpHzJeA3miOEnSVEV18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lptUDiMD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J72xlBg5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO1Hi0I559899
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:43:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/NKX/57tYYBCmkhefEDajLW0SWz9CgJw4SMyS6Hgi3A=; b=lptUDiMD8lWvBeu0
	OzkHjgLNGwbPOmWjlYj670wIGUXDFMgOm2/iVryRX5cASMdgkjfMLBYdLd5hb4Tt
	jJEensK4SuRIecb+F5JaPP8R16vytpGSOqyBwCCtbkXq3vETxUJHAQE2Rsu6COO4
	8GwUG834w8LYbXl/drMvCMXHCoKDP1BCYMFclswbkZ9CFpOq0L9JKtBkQCFOjeZq
	ymGYM0TujPWCRgHUpUgOWNefx5puFOkTaSc8YkeQ17a50/gyqg7Da+eR0OBRN9cK
	zqYkEexns+3HcoS3LYS9h1ndi+UcJkcUExrwkOsimZgw45WBQOz2Tl5kDr8ep++i
	nvM/Vw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9ctek5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 04:43:29 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7d481452732so10943464b3a.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766551408; x=1767156208; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/NKX/57tYYBCmkhefEDajLW0SWz9CgJw4SMyS6Hgi3A=;
        b=J72xlBg5AJmtqNjZV2c3LcUwRrLip8/essbTt/WccSiXjwZzJIN6dlM6VO+s/Ix6Iw
         p52AGXQmuPaH9I/jVb1Z5wMSD1EO7gerU3Szm1wJub5QxP5B5Tecv/xHH/tif5578Cfn
         1WHfHM8wXSyv+VVXPcq8742w64nlvWJ70BDAU0LjpN5ZwlZIK1sXNybNTPrRXG67nFJL
         KmUNjw/20IR3qavJE5UJukGPMvEd5wX5WBAQ1mPBiIhehbjqh49NFYqtAwkZFQWl81yj
         YR9/TiOcrZtNEs7cyvuLlAkEdw2VH5POrE234jtTTD4GGxskbC0TYOfveMpvUSs93H1C
         0lLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766551408; x=1767156208;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/NKX/57tYYBCmkhefEDajLW0SWz9CgJw4SMyS6Hgi3A=;
        b=vzEInqGTEimh+OYHVx+l0hqVfy++KPmAMOhXOdzbX4a0CK3db9oYsKizPceDcpyqwL
         WZYalHzBrxw4IliZ+3oVD8hmDE5M/BGjW8wTGyeLrbozfpNEztvUsl2yYoWEx/NC6Tc5
         Et3X8YJsVAtf6KALDCzt/DuKynXa65hrEOek8cZ/oj+tqMSYI9sG4+VrZb6Ss4d53ytm
         bcjUslmXSOKDhmhQECpoHqugNzJbCfXvO3jJfGVrW9/t+g5DBu0os+Z0ksfuRfPmBDJC
         PMTi02JLkWQHhXSoa6XwJ75Z636WHB6HlfasC/Ce+Jz1BZgKtzzFKPzVTbBgCIMZ+G7M
         +Chw==
X-Forwarded-Encrypted: i=1; AJvYcCVQ/rbrkNB2tQNhQHVAyo+yDK7TUePII39ksuMImIZHL+2s0QatJxTsLC++hFP+8j2tivK9EpytXkmQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzvcgisW64dpdWbjxBoeWozAlz0NNEpTX7DBgak00YXB6RAKzWS
	6KlYPdX1V6GVMqlnQJmi7blWkpspdCV82mGV4Q4khPQFLXp7UjvH6IcwB7x0YmcI8+n4rNUx98N
	CmO00Nl3Xkleu4VjN6f8vhZtbIHI6GiGTv/goMjMuxjZjtTXu69Z3495mjTVGapUk
X-Gm-Gg: AY/fxX4VZ6IASO87zq0Pk0YDe78Y6L1i9eBDdgeqZLEtDQD3yQG7xLJA619AsXGcJNN
	qhS+ywcNPqq9RsESAXIT5f1u6NEbDjoZJWauH3Te+RQ6UX6FnLDvwbeRj/YbwmHR0NaIZZBcblu
	KhR7HYDIBu2JtVaeA3ratQxBAG5QIjWsCYsar5xJNOKNoVVnu/WE5F/EhBeRPzBOa1Y2yn9mIVb
	8MBLVE+s+F+nLiUiA4w1ARcrJO+m74vvXAxJROzwmSLnVqqSGy3NKtDOEu5KzHJRQeb+nnx/gd3
	gsigz1y20QHiyMw3mog4IiOW39CaXlDSa3R1qck1NnLCe104brQep2Gz8TlTWYVjMJPA1obc2zM
	mvtLeyqhJQTewa8Xb+EkKzhhY+nqSxCDKbVyOt13urRbYExlkyf5kUwUFgezixZHPySKnJgXeUW
	2SNy+s
X-Received: by 2002:a05:6a00:8d8e:b0:7b8:3549:85f9 with SMTP id d2e1a72fcca58-7ff64eca979mr14445118b3a.30.1766551408203;
        Tue, 23 Dec 2025 20:43:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvc4FrnFMsQMIBE3qVedvVFkxoaNx3NeqcjjCZI3I6L2rFmIE9Yn6mBYWW9e5zltIVhIzrsA==
X-Received: by 2002:a05:6a00:8d8e:b0:7b8:3549:85f9 with SMTP id d2e1a72fcca58-7ff64eca979mr14445098b3a.30.1766551407668;
        Tue, 23 Dec 2025 20:43:27 -0800 (PST)
Received: from [10.133.33.224] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e88c8f0sm15536300b3a.62.2025.12.23.20.43.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 20:43:27 -0800 (PST)
Message-ID: <51e0665b-42c4-4084-8019-9fbeaefb5b56@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:43:20 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] remoteproc: qcom: pas: Add late attach support for
 subsystems
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
 <20251223-knp-remoteproc-v3-4-5b09885c55a5@oss.qualcomm.com>
 <aUsUhX8Km275qonq@linaro.org>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <aUsUhX8Km275qonq@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: cVz7uiAqyZUCBGjcYIDOMSoatT_6A4w0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAzNiBTYWx0ZWRfXyCW+Te4HXlIf
 HBMCf1tqeHjQMPyPcjhHS/Iq6YiVmYnjM9rt3EYa0TIWm57bHKMj9ajQi5BCnQamuk96j+jaOWa
 tAZtoxPUQPchxsGJowrHJab7YzKQg/mlp+HzbJxe2f9LGV2Za6oRHxN0yErARzHmKtGCkjM8af4
 dOCVJiQB5J/1YH4OlfJi7m+ozrLVPH+xnCeU580neY57G3ZsNz1O4wVATDv0RRFLtcFt2+WtrDV
 73IYXlBQgiO8w1o/h48oTP28G1X+YmB6MbK2Y9XAcHPOFFpwyVIYvnhCXrjYLko+5BSvjcaFdE+
 FZHdShyZ1LEBl4Az6cjzP+/bHpaJ/bfmO22K4cMoVKBdKCe3yyHTqaN+KwWkp2WolxR2CBe/oAW
 OfHuW1zM/h9oG+UkykCctMcSwPDUg2JBzw6NcrNffDXNve3Eyl9h6n9dcatexG4ipWufE2aJUHB
 kzp9Shw7Y2vzpc1RfCQ==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694b6f71 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=xPClpbL46aL21xVsldcA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: cVz7uiAqyZUCBGjcYIDOMSoatT_6A4w0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240036



On 12/24/2025 6:15 AM, Stephan Gerhold wrote:
> On Tue, Dec 23, 2025 at 01:13:50AM -0800, Jingyi Wang wrote:
>> From: Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
>>
>> Subsystems can be brought out of reset by entities such as bootloaders.
>> As the irq enablement could be later than subsystem bring up, the state
>> of subsystem should be checked by reading SMP2P bits and performing ping
>> test.
>>
>> A new qcom_pas_attach() function is introduced. if a crash state is
>> detected for the subsystem, rproc_report_crash() is called. If the
>> subsystem is ready either at the first check or within a 5-second timeout
>> and the ping is successful, it will be marked as "attached". The ready
>> state could be set by either ready interrupt or handover interrupt.
>>
>> If "early_boot" is set by kernel but "subsys_booted" is not completed
>> within the timeout, It could be the early boot feature is not supported
>> by other entities. In this case, the state will be marked as RPROC_OFFLINE
>> so that the PAS driver can load the firmware and start the remoteproc. As
>> the running state is set once attach function is called, the watchdog or
>> fatal interrupt received can be handled correctly.
>>
>> Signed-off-by: Gokul krishna Krishnakumar <gokul.krishnakumar@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  drivers/remoteproc/qcom_q6v5.c      | 87 ++++++++++++++++++++++++++++++++-
>>  drivers/remoteproc/qcom_q6v5.h      | 11 ++++-
>>  drivers/remoteproc/qcom_q6v5_adsp.c |  2 +-
>>  drivers/remoteproc/qcom_q6v5_mss.c  |  2 +-
>>  drivers/remoteproc/qcom_q6v5_pas.c  | 97 ++++++++++++++++++++++++++++++++++++-
>>  drivers/remoteproc/qcom_q6v5_wcss.c |  2 +-
>>  6 files changed, 195 insertions(+), 6 deletions(-)
>>
>> [...]
>> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
>> index 52680ac99589..7e890e18dd82 100644
>> --- a/drivers/remoteproc/qcom_q6v5_pas.c
>> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
>> [...]
>> @@ -434,6 +440,85 @@ static unsigned long qcom_pas_panic(struct rproc *rproc)
>>  	return qcom_q6v5_panic(&pas->q6v5);
>>  }
>>  
>> +static int qcom_pas_attach(struct rproc *rproc)
>> +{
>> +	int ret;
>> +	struct qcom_pas *pas = rproc->priv;
>> +	bool ready_state;
>> +	bool crash_state;
>> +
>> +	pas->q6v5.running = true;
>> +	ret = irq_get_irqchip_state(pas->q6v5.fatal_irq,
>> +				    IRQCHIP_STATE_LINE_LEVEL, &crash_state);
>> +
>> +	if (ret)
>> +		goto disable_running;
>> +
>> +	if (crash_state) {
>> +		dev_err(pas->dev, "Sub system has crashed before driver probe\n");
>> +		rproc_report_crash(rproc, RPROC_FATAL_ERROR);
> 
> Have you tested this case? From quick review of the code in
> remoteproc_core.c I'm skeptical if this will work correctly:
> 
>  1. Remoteproc is in RPROC_DETACHED state during auto boot
>  2. qcom_pas_attach() runs and calls rproc_report_crash(), then fails so
>     RPROC_DETACHED state remains
>  3. rproc_crash_handler_work() sets RPROC_CRASHED and starts recovery
>  4. rproc_boot_recovery() calls rproc_stop()
>  5. rproc_stop() calls rproc_stop_subdevices(), but because the
>     remoteproc was never attached, the subdevices were never started.
> 
> In this situation, rproc_stop_subdevices() should not be called. I would
> expect you will need to make some minor changes to the remoteproc_core
> to support handling crashes during RPROC_DETACHED state.
> 
> I might be reading the code wrong, but please make sure that you
> simulate this case at runtime and check that it works correctly.
> 

Recheked this part, current path has some issue on recovery and subdev handling.
As in current code, rproc_report_crash is called in the ISR/callback, it may
take some effort to call it in this attach path.


>> +		ret = -EINVAL;
>> +		goto disable_running;
>> +	}
>> +
>> +	ret = irq_get_irqchip_state(pas->q6v5.ready_irq,
>> +				    IRQCHIP_STATE_LINE_LEVEL, &ready_state);
>> +
>> +	if (ret)
>> +		goto disable_running;
>> +
>> +	enable_irq(pas->q6v5.handover_irq);
>> +
>> +	if (unlikely(!ready_state)) {
>> +		/* Set a 5 seconds timeout in case the early boot is delayed */
>> +		ret = wait_for_completion_timeout(&pas->q6v5.subsys_booted,
>> +						  msecs_to_jiffies(EARLY_ATTACH_TIMEOUT_MS));
>> +
> 
> Again, have you tested this case?
> 
> As I already wrote in v2, I don't see how this case will work reliably
> in practice. How do you ensure that the handover resources will be kept
> on during the Linux boot process until the remoteproc has completed
> booting?
> 
> Also, above you enable the handover_irq. Let's assume a handover IRQ
> does come in while you are waiting here. Then q6v5_handover_interrupt()
> will call q6v5->handover(q6v5); to disable the handover resources
> (clocks, power domains), but you never enabled those. I would expect
> that you get some bad reference count warnings in the kernel log.
> 
> I would still suggest dropping this code entirely. As far as I
> understand the response from Aiqun(Maria) Yu [1], there is no real use
> case for this on current platforms. If you want to keep this, you would
> need to vote for the handover resources during probe() (and perhaps
> more, this case is quite tricky).
> 
> Please test all your changes carefully in v4.
> 

Thanks for your detailed review, the handover resources was indeed
neglected in the design, we will re-evaluate this part.

> Thanks,
> Stephan
> 
> [1]: https://lore.kernel.org/linux-arm-msm/c15f083d-a2c1-462a-aad4-a72b36fbe1ac@oss.qualcomm.com/

Thanks,
Jingyi

