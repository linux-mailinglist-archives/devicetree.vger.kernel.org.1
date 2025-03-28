Return-Path: <devicetree+bounces-161455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 369E1A74333
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 06:17:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AF6E17AFAC
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 05:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA87C1891A8;
	Fri, 28 Mar 2025 05:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M+QPkzpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1F121019C
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743139054; cv=none; b=IrP73fT1MJhBF2aKJq+OZgBKxlVw0R/7yLzuc1Y4Pbt7V6qShAsoUrRhv7eSMKifOOO90dN78rnqUky+EY6L+mMoc4OKDG3aHcUePx6IlghAifoy1KUHA+xO/Vc8ISdYxLze7+unp1FK7PCF90BZPaMzxlQTLbuUR08wg69ecaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743139054; c=relaxed/simple;
	bh=CS5VMMk0LUE5wGq9IgIbXDHaQ2F3DWmXr4+f0/6topA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sGEjZ8lVEr7NNq4+aIcRhGrZziAeWYwfX/jv2PBpWAvyn8j4951oZ932Iz/8h50nHPHeqKpMKvon2cGT+Ah8Pc0j28vJ7Vv6IK70VYTDW3Tw+YML1yZjX0DNEtMePO1K4HU8/zuGPdGcyqCbQbcKG/aTm72DdbQTV1mDZdoQsVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M+QPkzpt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52S4oBeN021258
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:17:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HQgkYP40+p7+yHQUfnTVW3yGM29lJJuQVYPsqQvyoQY=; b=M+QPkzptLgiuhzRe
	BaqsaoWSuwcjSGk6EjXMN5en4gjxQl7jP2AuzoFMB93ZkDFLG+8Jcz4ahUYliavt
	DrRbu80T9CYxAsf4qIhgmkWldM39JMYlhV1w4Mw3YDu3BBMEJrU7xuz5VBzmfRg1
	AqctpupqSwEhNilFjcneL5futNMheZXfXoypfMX6YY/gio734IpobucYDrMyEHzd
	AGRCQckKH0q0F8ARB6Cd/JvKbS6bvbFcIcJAJ2A90t4mrS5/0k/vZXdKXJ4xm7pb
	XRPfQzfCHu7NU/2X24mh9MP+Jt8bsD9qaCkwD/0lNdBSBTUyNL8/0zvXpXENCPqx
	yI33wA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kyr9rhsq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:17:25 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff78dd28ecso1900316a91.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 22:17:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743139044; x=1743743844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HQgkYP40+p7+yHQUfnTVW3yGM29lJJuQVYPsqQvyoQY=;
        b=rEpEykvpX7cnYdZI2TpFt92wvuoWfE/pVcohgQ2ztUatgwSxfet+nSpoWpJjH7p/3T
         N3klEHFphUrkthLIf/q8hKUq6iY72h5Yd4L3/EDsF/qqeIpDn+H+bOyH+bJ9O7X/UdFO
         QmmUI/Ki3NkY3BDFhEKB/l9dDqH/w4TQO9v1DPDRdShIkSpzrB8dZ+tLcE+coWkhOz0P
         UbfFhWRekK+9TqTgIaOWJkIajsULb1lE5EMcOs2+nveOUfRWY4nwrwqQrtITQET6D9Pa
         zTbV4qeeFGeZ9gSI/K+fQ5Xde+PjwZXg4DXh3bHoc1Y9yo8F+nJxYvVHAqtEHYI8/Pi9
         LloA==
X-Forwarded-Encrypted: i=1; AJvYcCVTXZo4HQ/cKC8g68P3LYYACCkDmEO3uqnlIurUUZorDka/gFwtW2jt+1LkcIAsj71O2j03qwo9Ze1X@vger.kernel.org
X-Gm-Message-State: AOJu0YycTzpgIY7679H6QPMsku361plCcFQVU0EZbkZqVKmQ58DZT0xN
	qjaVXZfWa8w5YOWAjhaOHXSDxFxBPZzsnSarTSICBAOLKTUYzRU3hJtmH/LCovs+58+qYaaL+3F
	E/Ts4kuStCGaZ+R1DcpXwOr0W/zpqV3Mp7PDSfkZfaR2VkvlypMnHlzTLmfvo
X-Gm-Gg: ASbGncudbJqfev7IR8jOVvY1qUQwLdELQOp/vvAOaQscG8bcwyVNMoORy9O+a+vGX93
	PVHV/Ykwytr8NhtWhTC1iUbUQK18ShuaIa/l31k28lKqISEkaDJo8WEt+xacmcDK557bXm8olLE
	43COy3kcNeQrZ9xrvw8Jwq7KnGz0QbkNmQGc8rVPelHm1/ICgdahCOEAbthWmeRdgFfHb2G6Oo7
	l6BwuimQ+wk0OD/Xp+uIWaXhUlIYIKGMHRiED2IThtKjNenXs96OXCUzYDYQWSSUNAJLvGON6Mc
	TX7wr9BTu3CLDP7t/r7Fy35o894K+hDISnm5G3DlvH5VshnBS871Sg==
X-Received: by 2002:a05:6a20:7f98:b0:1f5:769a:a4c3 with SMTP id adf61e73a8af0-1fea2f396e8mr10316342637.27.1743139043434;
        Thu, 27 Mar 2025 22:17:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVTpXZbP8MYkTaSUxvCf6P7tZPuQ3S9l3jbd9DcFaTnK18JUIF8nKYAtQNBzPJZrQEUQnBHg==
X-Received: by 2002:a05:6a20:7f98:b0:1f5:769a:a4c3 with SMTP id adf61e73a8af0-1fea2f396e8mr10316280637.27.1743139042853;
        Thu, 27 Mar 2025 22:17:22 -0700 (PDT)
Received: from [192.168.0.113] ([183.82.177.119])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af93b8b1aa6sm792238a12.52.2025.03.27.22.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 22:17:22 -0700 (PDT)
Message-ID: <7ce80ffb-6519-4765-8418-42135ab07a3f@oss.qualcomm.com>
Date: Fri, 28 Mar 2025 10:47:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 0/8] Add new driver for WCSS secure PIL loading
To: Jeff Johnson <quic_jjohnson@quicinc.com>,
        Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>,
        jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, mathieu.poirier@linaro.org,
        konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        dmitry.baryshkov@linaro.org
Cc: quic_viswanat@quicinc.com, quic_srichara@quicinc.com
References: <20250107101647.2087358-1-quic_gokulsri@quicinc.com>
 <4b624830-00eb-46e8-ae5a-b822e32b2005@quicinc.com>
Content-Language: en-US
From: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
In-Reply-To: <4b624830-00eb-46e8-ae5a-b822e32b2005@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: jcJZvmAYMniw34hapKiiC_edMbLwA4V5
X-Authority-Analysis: v=2.4 cv=UblRSLSN c=1 sm=1 tr=0 ts=67e630e5 cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=VrYi6RMOWE5NFa6aqCLEpg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=LpQP-O61AAAA:8 a=atyioMQIshmohzJ9PWcA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22 a=pioyyrs4ZptJ924tMmac:22
X-Proofpoint-ORIG-GUID: jcJZvmAYMniw34hapKiiC_edMbLwA4V5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_02,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0
 adultscore=0 clxscore=1011 mlxlogscore=999 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280034

On 1/24/2025 11:30 PM, Jeff Johnson wrote:
> On 1/7/25 02:16, Gokul Sriram Palanisamy wrote:
>> This series depends on Sricharan's tmel-qmp mailbox driver series v2 [1].
>>
>> - Secure PIL is signed, split firmware images which only TrustZone (TZ)
>>   can authenticate and load. Linux kernel will send a request to TZ to
>>   authenticate and load the PIL images.
>>
>> - When secure PIL support was added to the existing wcss PIL driver
>>   earlier in [2], Bjorn suggested not to overload the existing WCSS
>>   rproc driver, instead post a new driver for PAS based IPQ WCSS driver.
>>   This series adds a new secure PIL driver for the same.
>>
>> - Also adds changes to scm to pass metadata size as required for IPQ5332,
>>   reposted from [3].
>>
>> [1]
>> https://patchwork.kernel.org/project/linux-arm-msm/cover/20241231054900.2144961-1-quic_srichara@quicinc.com/
>>
>> [2]
>> https://patchwork.kernel.org/project/linux-arm-msm/patch/1611984013-10201-3-git-send-email-gokulsri@codeaurora.org/
>>
>> [3]
>> https://patchwork.kernel.org/project/linux-arm-msm/patch/20240820055618.267554-6-quic_gokulsri@quicinc.com/
>>
>> changes in v3:
>> 	- fixed copyright years and markings based on Jeff's comments.
>> 	- replaced devm_ioremap_wc() with ioremap_wc() in
>> 	  wcss_sec_copy_segment().
>> 	- replaced rproc_alloc() and rproc_add() with their devres
>> 	  counterparts.
>> 	- added mailbox call to tmelcom for secure image authentication
>> 	  as required for IPQ5424. Added ipq5424 APCS comatible required. 
>> 	- added changes to scm call to pass metadata size as equired for
>> 	  IPQ5332.
>>
>> changes in v2:
>> 	- Removed dependency of this series to q6 clock removal series
>> 	  as recommended by Krzysztof
>>
>> Gokul Sriram Palanisamy (3):
>>   dt-bindings: mailbox: qcom: Add IPQ5424 APCS compatible
>>   mailbox: qcom: Add support for IPQ5424 APCS IPC
>>   arm64: dts: qcom: ipq5424: add nodes to bring up q6
>>
>> Manikanta Mylavarapu (4):
>>   firmware: qcom_scm: ipq5332: add support to pass metadata size
>>   dt-bindings: remoteproc: qcom: document hexagon based WCSS secure PIL
>>   arm64: dts: qcom: ipq5332: add nodes to bringup q6
>>   arm64: dts: qcom: ipq9574: add nodes to bring up q6
>>
>> Vignesh Viswanathan (1):
>>   remoteproc: qcom: add hexagon based WCSS secure PIL driver
>>
>>  .../mailbox/qcom,apcs-kpss-global.yaml        |   1 +
>>  .../remoteproc/qcom,wcss-sec-pil.yaml         | 131 ++++++
>>  arch/arm64/boot/dts/qcom/ipq5332.dtsi         |  64 ++-
>>  arch/arm64/boot/dts/qcom/ipq5424.dtsi         |  80 +++-
>>  arch/arm64/boot/dts/qcom/ipq9574.dtsi         |  60 ++-
>>  drivers/firmware/qcom/qcom_scm.c              |  13 +-
>>  drivers/firmware/qcom/qcom_scm.h              |   1 +
>>  drivers/mailbox/qcom-apcs-ipc-mailbox.c       |   1 +
>>  drivers/remoteproc/Kconfig                    |  22 +
>>  drivers/remoteproc/Makefile                   |   1 +
>>  drivers/remoteproc/qcom_q6v5_wcss_sec.c       | 406 ++++++++++++++++++
>>  11 files changed, 775 insertions(+), 5 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml
>>  create mode 100644 drivers/remoteproc/qcom_q6v5_wcss_sec.c
>>
> 
> This series is listed as a dependency of a WLAN series, and when I pull this
> series using my automation I see the following kernel-doc warnings. I don't
> know if these are existing issues, or issues introduced by the series, since
> the automation runs kernel-doc on all of the patched files.
> 
> drivers/firmware/qcom/qcom_scm.c:302: warning: No description found for return value of 'qcom_scm_call'
> drivers/firmware/qcom/qcom_scm.c:328: warning: No description found for return value of 'qcom_scm_call_atomic'
> drivers/firmware/qcom/qcom_scm.c:425: warning: No description found for return value of 'qcom_scm_set_warm_boot_addr'
> drivers/firmware/qcom/qcom_scm.c:438: warning: No description found for return value of 'qcom_scm_set_cold_boot_addr'
> drivers/firmware/qcom/qcom_scm.c:675: warning: No description found for return value of 'qcom_scm_pas_mem_setup'
> drivers/firmware/qcom/qcom_scm.c:714: warning: No description found for return value of 'qcom_scm_pas_auth_and_reset'
> drivers/firmware/qcom/qcom_scm.c:750: warning: No description found for return value of 'qcom_scm_pas_shutdown'
> drivers/firmware/qcom/qcom_scm.c:787: warning: No description found for return value of 'qcom_scm_pas_supported'
> drivers/firmware/qcom/qcom_scm.c:892: warning: No description found for return value of 'qcom_scm_restore_sec_cfg_available'
> drivers/firmware/qcom/qcom_scm.c:1070: warning: No description found for return value of 'qcom_scm_assign_mem'
> drivers/firmware/qcom/qcom_scm.c:1141: warning: No description found for return value of 'qcom_scm_ocmem_lock_available'
> drivers/firmware/qcom/qcom_scm.c:1158: warning: No description found for return value of 'qcom_scm_ocmem_lock'
> drivers/firmware/qcom/qcom_scm.c:1182: warning: No description found for return value of 'qcom_scm_ocmem_unlock'
> drivers/firmware/qcom/qcom_scm.c:1298: warning: No description found for return value of 'qcom_scm_hdcp_available'
> drivers/firmware/qcom/qcom_scm.c:1323: warning: No description found for return value of 'qcom_scm_hdcp_req'
> drivers/firmware/qcom/qcom_scm.c:1879: warning: No description found for return value of 'qcom_scm_is_available'
> drivers/firmware/qcom/qcom_scm.h:47: warning: missing initial short description on line:
>  * struct qcom_scm_desc
> drivers/firmware/qcom/qcom_scm.h:57: warning: Function parameter or struct member 'svc' not described in 'qcom_scm_desc'
> drivers/firmware/qcom/qcom_scm.h:57: warning: Function parameter or struct member 'cmd' not described in 'qcom_scm_desc'
> drivers/firmware/qcom/qcom_scm.h:57: warning: Function parameter or struct member 'owner' not described in 'qcom_scm_desc'
> drivers/firmware/qcom/qcom_scm.h:60: warning: missing initial short description on line:
>  * struct qcom_scm_res
> 21 warnings as Errors
Hi Jeff,

These warnings are not introduced as part of this series.

Thanks,
Vignesh
> 
> 


