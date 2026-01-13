Return-Path: <devicetree+bounces-254391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2416CD17AD5
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:37:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D4BDF304A964
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D8036D51B;
	Tue, 13 Jan 2026 09:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j3zlSVrG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OMsqlV3f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BE7341678
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296816; cv=none; b=Uzalt2xa+WYG1hIOw5DuaZTnyCNmowSj1CcC5JOjgQ4W+YiPbd6uy39YxIDCfv7bllSVnIAlOq09DfPyH0GKF87AdA6xM2ZtT8zgp9o4DdUnTYR/goj3Zemf9FwWvou6GttoOYaLrLCSLXOCRsypNVAtds0ozR1lri0Dk/uzlBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296816; c=relaxed/simple;
	bh=H8rfWCz+nXlb+YRhv9ajoJCIpOgmMFGeDLzv4IonWdc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mm9Y6FH+s/5iivcT05Ftx5A/2loPfOBTHXAYMeFaUeAiktyepUGZU7KfDbv8G1rngK0jGe0H7JesFyOiF/+yvkI5BRwrN76nWFbGN+xaoi9wPA8UB1xuSM1BD8O5F8ELy0PO8+qcRBqI1t6pOx43xIxvA6OgUW7ZKfr2nTiW5zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j3zlSVrG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OMsqlV3f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D9GQuU2751751
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:33:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7F6fqsyOtjM5uYbaPFIgQgGuXH/dsJ28oj9X44dO5jU=; b=j3zlSVrGbRUk2srz
	Y+Bki3mJ+ZJPIBCZbguoSOhQP6tRoE06CAAH02ft5gDXZxn4kN+J9Pk+HCsVX/uj
	c+8XYVTIBJQVZdRzYa9X+mXq7CmEuOWyKXzP+3uF4R0gORP3GdA27bK4xdoajqHh
	pbTLfk0ViY1moB/mIfpblNrbnvP6PVTQeV3FVrWFKjh+KBwslTee2y8jE+5tLip3
	hne7v93Zu01AxAaWChKS+KH3Q6P7tgBCmVA3daw5Jp9IccrwQzjfOaKa4BVfH6nv
	iEQrlNDNjXiIv9qAJPcn6NaNbwRnUypmUk7+UkuV/5oFRCNrWnyoLkyFl8OXgHNk
	m4r9yw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnctjs7fh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:33:33 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81eef665b49so6505465b3a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768296813; x=1768901613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7F6fqsyOtjM5uYbaPFIgQgGuXH/dsJ28oj9X44dO5jU=;
        b=OMsqlV3f1w7ObmE/grlXuEHT53vGDGwMPjUjnILZQ2xXXYo9wCPtzrYBL0HueBOyXl
         Ck9XaOf8AxSt49Pwan4GhQ14U5uajeBljSTtCNPIezXkk+8aQhe/TT/a1ePSR/dKwYCC
         b+HgY0qAEIFyVFkrX5aML1MDJ3Dwx9yvLGv70XUIldBUbX4WlhZnl9HMN8SeNecm/8j+
         eychaSrLM+6mGA+LhlvB8ZV5fwnMPD846bXWudisrwfwUsVb7HoyCEWlBx0cGVsnqcqO
         lotOVgwul4N/E5fq6jso7bnDrT14w+APaDGNzeneOYK6dViWfIgab9cJDT7U4mPuQQR6
         0OcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296813; x=1768901613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7F6fqsyOtjM5uYbaPFIgQgGuXH/dsJ28oj9X44dO5jU=;
        b=IK0uC3jR/Gvizj7nv6MscNK/JI0Mc51Icz7qQeyYw1YvqmZGAUWCFIwA9mherMVOn2
         WB3trRp8lKYqJqWM1FdtTYXd+9aWPbe2GRwVBN1i68NbunqWMptZBCcgw1gNiWM+9g8R
         Rigl7scdfHUlUt41R0HKvfsQAhN2pw2MofNS7O+0Y4W0XG4IcnQlKEVtyzpXUhz7LVsY
         NBCVcLLXPR0s5k2Xv7TYcCfhHfpIGzYF2XlZEIoD1Q2/081924hKR4TpqPCmeVrzPIX2
         WCsvb4wPbhUxVQCHX3PLAX4qoXMRpY8oYpOPSFRTyMsSGhTn+gzkUNVf5fidLZhell4A
         FmOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXV20uU9dxkIIxWmhZyvl1yoIH5K5wchVxAbKejnSH0Fo6ZhG4Wgw2UkNKZzM1A1Ezr5QHYQRZ7ImnB@vger.kernel.org
X-Gm-Message-State: AOJu0YzpY4DXvVuP9B2POFxG+M6XNHyysxnwiSA2V0dnlVXLxCB2IKqB
	QT7JojvUR/wBnoCUNqqTlXt9nb7rjvqEzMSniKmTGY+5dBtKQ+xEBPYfgbnbp4FCXYDweeCxE1k
	/1wMgr2efmLCPXlxnBorDUFyZ9GkLx+gQYGzZ+GSWeH8EqDCvf2DPPY7E1kDyLwpn
X-Gm-Gg: AY/fxX4rsx+dc7R/jWtYL/Rhnpiju1iW19Ro19HY0K4LhMAWXoPqBp+BSqG01pWROEv
	JnLOTEFo4y0aiyHfdUO36f9ouOudwGhb/W3fb4ca3w9mlFjjHIJXJzjx+xQry0w0eeecFMMn4pI
	0WeJ2DlDdJCGYFaCVa8YaHnY2Bfvij49ji6KPOaHD1OvEpQQlVH1i3RjJpQrhDMEGuQfphnAKD1
	JSID88Mf7PKoACd+8dd+QJcvcJc1Ya8OiDoo+giZ+16zKNgU0yzDxm48AD4vItmqKgZpju9Q5Fr
	GutYXziRXBF6bpCPWR809wrkjFxQowXrnfewkZYUd0/SsXRng7GfK0CJoz0MXMkMfg6a3fQvbO9
	TAI33Qkc/J4yBuvRbAjkO3zJLaTPhWS2ThfkFJqY=
X-Received: by 2002:a05:6a00:21c5:b0:7ff:da9b:bd82 with SMTP id d2e1a72fcca58-81b7f6ec1acmr19324366b3a.40.1768296812840;
        Tue, 13 Jan 2026 01:33:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFecIeFYBPLxo8KEKTggo8B28U1qCpzEzXqTxElS98E5p8rJyvLXahJvNMpn/S72AOPKREPWA==
X-Received: by 2002:a05:6a00:21c5:b0:7ff:da9b:bd82 with SMTP id d2e1a72fcca58-81b7f6ec1acmr19324337b3a.40.1768296812346;
        Tue, 13 Jan 2026 01:33:32 -0800 (PST)
Received: from [10.218.27.120] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm19893360b3a.16.2026.01.13.01.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:33:31 -0800 (PST)
Message-ID: <6ae95761-6428-4a01-8c60-54df5e54b71f@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 15:03:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/8] Add RemoteProc cooling support
To: Casey Connolly <casey.connolly@linaro.org>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
        amitk@kernel.org, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <2a39719e-e73b-4558-95fa-d54f94c43220@linaro.org>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <2a39719e-e73b-4558-95fa-d54f94c43220@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4MCBTYWx0ZWRfX2n8aXcIpamz7
 zgMZrsqRXY9vBmZcQIDUi+6tfTf9R0ixvTI1hPD1H8+3vzF3apMXhJb66TDCA1+q3jGQX1mYcp+
 +Jf/b31U7WsHUQvSruSg+HA+9NMeK98F3pmZhlVxHOc+bFet8rLzDkkHXR1rNPMRBNT6DMoCbpG
 6Ep/eL3zYxwI37ved+pjMOUEtraZ/eaj0dHDuES7W7WdUoMx3K9srPHMEpw3HHUeKksh6VsP0dd
 MCIP1YW4wbTUlIVjzSl9X72qgLFvbS+UQBCZwdJId2cANU8kUvv4EKcm/OIuiV4D8wIw2y628GW
 iysyw/O0sAjUhjV4RRj0xDgZgRb6iyYZ2Le8wB+chk7bkRCToC8Tr4QM6NzMRGn1jJGQHt7KvCY
 rlG7VkNVbCIf/CBqVSd91jknVapcd1USF4Kt2veo8YEVPypWDj88FWMewV+SnWc4lpE9igUX8zX
 C+/NusA5BuymY7yp4zw==
X-Authority-Analysis: v=2.4 cv=Ls2fC3dc c=1 sm=1 tr=0 ts=6966116d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=0dxYOwnRambvcRU-GJ8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: uMv1DbPctUGqmqrqA6uyYSgeojS0GgDt
X-Proofpoint-GUID: uMv1DbPctUGqmqrqA6uyYSgeojS0GgDt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130080


On 1/10/2026 9:43 PM, Casey Connolly wrote:
>
>
> On 12/23/25 13:32, Gaurav Kohli wrote:
>> This series introduces a generic remote proc cooling framework to 
>> control
>> thermal sensors located on remote subsystem like modem, dsp etc.
>> Communications with these subsystems occurs through various channels, 
>> for example,
>> QMI interface for Qualcomm.
>>   The Framework provides an abstraction layer between thermal 
>> subsytem and vendor
>> specific remote subsystem. Vendor drivers are expected to implement 
>> callback
>> and registration mechanisms with cooling framework to control cooling
>> devices.
>>
>> This patchset also revives earlier discussions of QMI based TMD cooling
>> devices discussion posted on below series by Casey:
>> https://lore.kernel.org/linux-devicetree/20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org/ 
>>
>>
>> That series introduced Qualcomm QMI-based TMD cooling devices which used
>> to mitigate thermal conditions across multiple remote subsystems. These
>> devices operate based on junction temperature sensors (TSENS) associated
>> with thermal zones for each subsystem and registering with remoteproc
>> cooling framework for cooling registration.
>>
>> This patch series has a compilation/runtime dependency on another 
>> series [1].
>>
>> [1] 
>> https://lore.kernel.org/linux-devicetree/20250822042316.1762153-1-quic_gkohli@quicinc.com/
>>
>> Casey Connolly (2):
>>    remoteproc: qcom: probe all child devices
>>    thermal: qcom: add qmi-cooling driver
>
> I'm glad this series is getting revived. It would be good if you could 
> explain what changes you made to my patches somewhere.
>
> I also remember one of my patches adding the DT parts for SDM845, 
> would you be willing to pick that up for the next revision? I'd be 
> happy to provide my Tested-by.
>
> Kind regards,
>
Hi Casey,

With this remoeproc cooling abstraction layer, we have integrated your 
patches for subsystem cooling. As lot of comments came for qmi-cooling 
driver, so need to send v2 with cleanup.

Will do clean up and send series again. Yes for other targets like 
sdm845 we will add once this is concluded.


>>
>> Gaurav Kohli (6):
>>    thermal: Add Remote Proc cooling driver
>>    dt-bindings: thermal: Add qcom,qmi-cooling yaml bindings
>>    arm64: dts: qcom: Enable cdsp qmi tmd devices for lemans
>>    arm64: dts: qcom: Enable cdsp qmi tmd devices for talos
>>    arm64: dts: qcom: Enable cdsp qmi tmd devices for kodiak
>>    arm64: dts: qcom: Enable cdsp qmi tmd devices for monaco
>>
>>   .../bindings/remoteproc/qcom,pas-common.yaml  |   6 +
>>   .../bindings/thermal/qcom,qmi-cooling.yaml    |  99 ++++
>>   MAINTAINERS                                   |   8 +
>>   arch/arm64/boot/dts/qcom/kodiak.dtsi          |  36 ++
>>   arch/arm64/boot/dts/qcom/lemans.dtsi          | 138 ++++-
>>   arch/arm64/boot/dts/qcom/monaco.dtsi          |  92 ++++
>>   arch/arm64/boot/dts/qcom/talos.dtsi           |  23 +
>>   drivers/remoteproc/qcom_q6v5.c                |   4 +
>>   drivers/remoteproc/qcom_q6v5_mss.c            |   8 -
>>   drivers/soc/qcom/Kconfig                      |  13 +
>>   drivers/soc/qcom/Makefile                     |   1 +
>>   drivers/soc/qcom/qmi-cooling.c                | 498 ++++++++++++++++++
>>   drivers/soc/qcom/qmi-cooling.h                | 428 +++++++++++++++
>>   drivers/thermal/Kconfig                       |  11 +
>>   drivers/thermal/Makefile                      |   2 +
>>   drivers/thermal/qcom/qmi-cooling.h            | 428 +++++++++++++++
>>   drivers/thermal/remoteproc_cooling.c          | 154 ++++++
>>   include/linux/remoteproc_cooling.h            |  52 ++
>>   18 files changed, 1981 insertions(+), 20 deletions(-)
>>   create mode 100644 
>> Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>>   create mode 100644 drivers/soc/qcom/qmi-cooling.c
>>   create mode 100644 drivers/soc/qcom/qmi-cooling.h
>>   create mode 100644 drivers/thermal/qcom/qmi-cooling.h
>>   create mode 100644 drivers/thermal/remoteproc_cooling.c
>>   create mode 100644 include/linux/remoteproc_cooling.h
>>
>

