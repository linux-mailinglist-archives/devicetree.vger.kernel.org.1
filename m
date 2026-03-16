Return-Path: <devicetree+bounces-276372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8G4UN6NWuGmKcAEAu9opvQ
	(envelope-from <devicetree+bounces-276372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:14:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C41D29F9EC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:14:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C12F1308B414
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C2933C186;
	Mon, 16 Mar 2026 19:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QRQOn5Tv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dq5xrIMH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B3033AD91
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773688201; cv=none; b=tznjRUMO/yTll4DivRGAZVD3qGovgrushuNDePOfHM509A3pLuy+fhGiRajaDDtnQsf30ZeJHilxx2NeSmivp9yV9qdjsVRq1bqVff5JAMbgolzJj1afOLVTsJFNBf4n8WJ7Y9l4eqT8RFbY34aIfNyRrW1ElCufaqa/9cjR5a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773688201; c=relaxed/simple;
	bh=QsQtLlJSPOv1sKnZGmwXwyxc7PrF81ZKaJHGphJBf7Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s5ySwuBWhF281RGu6uCIKcOHLz3h3kDPqKV/7WeriHGgYsHISUiivLlHB7/12ymSiFleP4pWo/aRvhhDbmY2XEVxKzfRyWog4Afa3dTRZSv0Qj95E6dZ9L1ry6yJlgWQQlJC9U+QQpXliXDTHY+9F68rOTM3/cvoZppva1qzZvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QRQOn5Tv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dq5xrIMH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GG6RdE4022277
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:09:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iINkHIXCR3qm35NgNPkuCJlD/4LRUdoaYUjB1EAMwpE=; b=QRQOn5Tv4QVMq21C
	E2o3vcu34oDJ0XQHyNdzmlUF9EgUpDVTGsxyNNjzwtV4qbZU/mubNEyWLKKe1QQB
	Zr/P0kZMEgvq1IGf03wyA02aq5GvnR8eZwdrVQOl5wPrCeBRCjtF4rVmBMeqZarj
	kjTi6ZMgHaxhKeQMbVWguaTWrAOIBTVZPJvOWtjeHdV485+pMIp5JbFUrfyu8RPy
	d6BC74fF3yujrSydJLrehuw1MPTlvyJUM93dH5OOcMs6P+GZn2duFeUYSXabxPSI
	dQpqXxv6usL0oc6gUV0Gc9JvyBumXzLrua80/ZNYvDHB2EWufDTvzP+OqiQrfn+U
	rsPMXg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxn3fgmv1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:09:58 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bda35eab74so36579eec.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773688198; x=1774292998; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iINkHIXCR3qm35NgNPkuCJlD/4LRUdoaYUjB1EAMwpE=;
        b=Dq5xrIMHgSfICC67VvR2lqgKFG03Ec/A5jW2fBetWWREe6uXsSqMAMC233idzVw4US
         k/75mgf69R8zoyhRVARGVExsRpMHUiAi+qnbttOo+ZJE+MsZ2LUB44HKkLAZrviNrsMq
         It6zs6YQ2nChGXm98hqYP3ykBFpdFiJ4fjYwM23ZP2B2WhmHLMqb/qiF1FtzeN4le5j+
         goeT5w1Gte6lNOVu3ZMQ5Ho4xOWGuKXSFv2d90i9JUYZwzxcyjKpwc0gOHjRmKx7mX24
         ZxKA6cdbpXMx5gWdZy6XXCR7D4eYmW959ESJvF2KebsTfFAopEePp/xxEgqMo8xsen3p
         EGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773688198; x=1774292998;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iINkHIXCR3qm35NgNPkuCJlD/4LRUdoaYUjB1EAMwpE=;
        b=hAnugbrDlIyIBOCcB1E/PHRjulJD9QpuxdRT0eV2uWPzOJPedZsxd2xOxfeLO6xQ8b
         Gj2Uegh6Oz4+CKKyBkY7/sXO6i8TehD3/pBzZQ4zvPewZRLypTFBC+N8zQel/Bq9mBqz
         AThcSZvORE3VkjLGOoBO42izmmsaUtka2mZWYNkbUb+uG8UIiEycfL9/UAEBpOaw8Wvz
         ASMawyqQMN2RvHZLvH0Cgoy3cySSCxCFcRYGzrDxnInEcA9yQvHPk6RfQUL5RtocEOse
         RWnkwXTKhl+EVVDEqvr5nHrR/zKYmFK+Z2MndbLCcwOZg+UX+xdMtWzrguutypgDfXuv
         rkwA==
X-Forwarded-Encrypted: i=1; AJvYcCV0EOOqqkhaFAm4OQqjeSrCViZ2Vh6UMcopHkK+MoYNP8bzjv4x5t06vCoJayNa7Nd2bL7+sGfVY5lY@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx6JsKm6cuOUTW/jIuDuB7arPrifJ1kyWXp9Yp5YwPBlupVr8R
	wUmlKf9237WxRhN4LUHjGhYnNIMBzvLaYg9opL6z+nZIL6VOVGW54o25P9lLS2foQ+Z/XJI2GXz
	RRdzUqCjAmz0jAw03lyQ25I9r04f4fjlEFrBMtAqlnZ6MQK98G66rz+z+5vQIn1zm
X-Gm-Gg: ATEYQzw9yfT5Z4LoVvmEVd+K3ebeyFDM5Q/cqWiPIHa59Daqb0X8yFYH/WTYGe/5DxI
	YLlSYioL26UFjedi3mlWXoJ+LUkciIazEEFIkD1KX9cQDasM3rs4sayRHXhaEsZN1qs8BsOm/Bi
	k5kInwEXvzmoYgE1Crswi2jeXnVgzrlF98ZRoJ6GjJuh0l6rA/LDIxFQH01rEB9FU1waO6xOcgI
	mC5VlWFSMeeV6Phx02Ujtc1AWBxjBLO0in3FcwXOxCna3DNvNN4NWNHiPelf3zCpG8VHS2/gJVM
	WmU0Y9JYAXMZ90TU+RAyA2B6SL4St38bREjzczw3qlNy4+xknI3f0gPQaK3PrQiK+j4TpdG76SI
	ZyvGLm+reSVYKWPkeh8+hOkMxjBaNyJdl/wFS+ztApX6kSkDxeZ4ZUvDuvGaWlHf0S5uwIqHQDq
	z+2A==
X-Received: by 2002:a05:7300:fd0d:b0:2c0:c1e0:2449 with SMTP id 5a478bee46e88-2c0d50937f2mr291701eec.2.1773688197799;
        Mon, 16 Mar 2026 12:09:57 -0700 (PDT)
X-Received: by 2002:a05:7300:fd0d:b0:2c0:c1e0:2449 with SMTP id 5a478bee46e88-2c0d50937f2mr291677eec.2.1773688197201;
        Mon, 16 Mar 2026 12:09:57 -0700 (PDT)
Received: from [10.71.185.57] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab55541fsm19033473eec.24.2026.03.16.12.09.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 12:09:56 -0700 (PDT)
Message-ID: <5761930a-6023-4340-ab84-6f29b710b6fc@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 12:08:27 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: Introduce sa8255p SoC
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>,
        Nikunj Kela <quic_nkela@quicinc.com>,
        Shazad Hussain <shazad.hussain@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260304-b4-scmi-upstream-v5-0-f8fc763d8da0@oss.qualcomm.com>
 <20260304-b4-scmi-upstream-v5-2-f8fc763d8da0@oss.qualcomm.com>
 <CAMRc=MdWSU82R-tGor5uP=UqosoV6Hjmpn03XdqAgVzhprSGpw@mail.gmail.com>
Content-Language: en-US
From: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
In-Reply-To: <CAMRc=MdWSU82R-tGor5uP=UqosoV6Hjmpn03XdqAgVzhprSGpw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=C5bkCAP+ c=1 sm=1 tr=0 ts=69b85586 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=sPLWTQPP7WlI8Cf4OggA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: KPltrnXfDD6HBdK8wXuFwd3r3eYJPOWO
X-Proofpoint-ORIG-GUID: KPltrnXfDD6HBdK8wXuFwd3r3eYJPOWO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE1MiBTYWx0ZWRfX1iIHadD1Aqct
 mYZ6EZNM9zrjmAvtkL7OIeYMFAGtTjEAaufkhIanFMqWwdNmIJ271BVQcBhFziZQBIdRR2ua/M6
 dkIM4M6o0TL3dh6iYSIj3mtmuctuSgtPxsjF8oMdouuF1VqnzW2XacC7qbbe63Ydi5WoVUVz+dS
 SpZsClf5tF0eg4upQl4poQuxZY/jk5Qe7Bgl9HxRjFQtxk12Pw89jMklptao8/mytqJo/5+iCFW
 3jh9EDahVfFlg17Wpgu2IIHisxRM+L+pnGK3OEd/lEjRRjbKGogT3embdVDZ2R9UXD8nxQKMthI
 mtyQpzrPVM5vz1YBBepLJv3gm1+LvM6ZBZd+H8fwRSwj6yBA2vS+i65+tfVnwJBDYnf10eEm1zM
 nioHE+2Xd5Fw/kVwkl3Q9PC/wv5xscpJKS/T005soOEfxrC9dEnecme5llScZ6iFsbxppNdWTGS
 0pIk64iL/xcCALGam8g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_05,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160152
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276372-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,quicinc.com:email,qualcomm.com:dkim,qualcomm.com:email,linaro.org:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[deepti.jaggi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5C41D29F9EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/11/2026 6:31 AM, Bartosz Golaszewski wrote:
> On Thu, 5 Mar 2026 05:28:29 +0100, Deepti Jaggi
> <deepti.jaggi@oss.qualcomm.com> said:
>> From: Nikunj Kela <quic_nkela@quicinc.com>
>>
>> Introduce base device tree support for sa8255p Qualcomm's automotive
>> infotainment SoC. The base dt file describes core SoC components- CPUs,
>> CPU map, ipcc, QUP,  geni UART, interrupt controller, TLMM, reserved
>> memory, SMMU, firmware scm, scmi, watchdog, SRAM, PSCI, ufs, pcie, pmu
>> nodes and enable booting to shell with ramdisk.
>>
>> The Qualcomm automotive sa8255p SoC utilizes firmware to configure
>> platform resources such as clocks, interconnects, and TLMM. Device drivers
>> request these resources through the SCMI power,reset and performance
>> protocols. Assign each device driver a dedicated SCMI channel and Tx/Rx
>> doorbells to support parallel resource requests and aggregation in the
>> SCMI platform server. Operate the SCMI server stack in an SMP-enabled VM,
>> using the Qualcomm SMC/HVC transport driver for communication.
>>
>> Group resource operations to improve abstraction and reduce the number of
>> SCMI requests. Follow the SCMI-based resource management approach
>> demonstrated by Qualcomm at LinaroConnect 2024.[1]
>>
>> Limit initial support to basic platform resources, serial console, ufs
>> and pcie.Defer enabling USB, and Ethernet to subsequent updates.
>>
>> [1]: https://resources.linaro.org/en/resource/wfnfEwBhRjLV1PEAJoDDte
>>
>> Co-developed-by: Shazad Hussain <shazad.hussain@oss.qualcomm.com>
>> Signed-off-by: Shazad Hussain <shazad.hussain@oss.qualcomm.com>
>> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
>> Co-developed-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
>> Signed-off-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
>> ---
> Just some nits, looks good to me.

Thanks for reviewing the series.

>
>>  arch/arm64/boot/dts/qcom/sa8255p.dtsi | 4861 +++++++++++++++++++++++++++++++++
>>  1 file changed, 4861 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sa8255p.dtsi b/arch/arm64/boot/dts/qcom/sa8255p.dtsi
>> new file mode 100644
>> index 000000000000..4f8529db70f6
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/sa8255p.dtsi
>> @@ -0,0 +1,4861 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/mailbox/qcom-ipcc.h>
>> +
>> +/ {
>> +	interrupt-parent = <&intc>;
>> +
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	clocks {
> Stray newline.

Ack

>> +
>> +		bi_tcxo_div2: bi-tcxo-div2-clk {
>> +			compatible = "fixed-factor-clock";
>> +			clocks = <&xo_board_clk>;
>> +			clock-mult = <1>;
>> +			clock-div = <2>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +
> [snip]
>
>> +	firmware: firmware {
> You never use this label.

Ack, will drop the label 

> [snip]
>
> Stray newline? Same elsewhere.

Ack , will fix all the stray newlines.

>
> With that:
>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Thanks,
Deepti

