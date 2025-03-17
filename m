Return-Path: <devicetree+bounces-158066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D0BA646AB
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 10:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26515167789
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 09:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0BEA221D9A;
	Mon, 17 Mar 2025 09:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RX6VarsU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F121C175
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 09:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742202591; cv=none; b=pGc4AIdFHpElSF/UfQdbbrCMYNiqtgNLieVwe54gFlbt3LAyfUqKHYSPPKq1lmT8n2y0nfFIep+Sp3X2tGqnrgx2fggqfq2jhKWtb4/yZINuD2EEbjd+QeW++MxdX4AEg/xvjM/pMSG0Fztt2nlIhDcgGEqCAbjV3bwLdmF8gUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742202591; c=relaxed/simple;
	bh=/6+sTkr6a3ceKu/fxq9OWBAkUr2gpzahEt538B5Vjlg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=en/Rm6vgDlfUaRe3jP/QKCr3AzEeL0gn184OEY16aksOBaW1eDgSYUcdpGEKCuSgMEl3yj2nStPjs4omUBgFXcTCSLq8x3wd+YGaDS/LDya5SK67wOcOdxlM2u34Lniqfx1VeF/LiB3ydPmvblnJY52Fz+XBfaHRiqD/DJpnpeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RX6VarsU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52GI1Fe7025176
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 09:09:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahQItqeoUmWIKu5Zx43vnqgKrtzrhBRX2qch9IykP+M=; b=RX6VarsUXJVJCoJM
	QA8l/3hkOpysMUyo19acn8fHjbnucwFU9HghBirLGNs1UjHKG83DcWn9oLbbhiwc
	Us7olQDYJGKFnoaydGAGIZjO1FzbPCdK1Sa9poZn3YRlgMCqFVIfWZIVWTQ7Nodb
	cUluH6cauFZpEBZ9XNj97rmUy7kYZsImy5jSmfiO+/OsaD6Yj4X8zF46HxLx9lQ6
	TY3YwgAy1Nt1l7gjvHWan7bPFkWeAO+GBI7669M3o834GP0IKK/2jKBfmBgZUDPf
	Z3x78yiD9mBrjZm+0mhStittj3aJPxGWy9iSfW0A5agHqWqPkmSXnEWo3uAlun53
	R8MXFQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1s3v2a3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 09:09:49 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2242f3fd213so63164515ad.1
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 02:09:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742202588; x=1742807388;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahQItqeoUmWIKu5Zx43vnqgKrtzrhBRX2qch9IykP+M=;
        b=JuWhl+NfRErPRRpOOExJRkUUfJF+8ggvy0hkDoUzTQJHpjmzFf5/1lnuLVB5NEAhHM
         TH8CX081HLhPE+EVU3YPTRrKHU0egrxDxZDLLug99OZcasAft1pcTLrnE7wLabZOb1Jq
         7eeMS2NowbpWhho1yzUv6ZtiZQBQE0Tq+MEnCV/Zn60TYdE0ZBhh8xTN55udniLzyAGL
         3ZtUXeTYOqbzQXrAVcBqUajvMliZP9JbAVfIbJYN7tP2EDpAHCY/MQdqilOEwLHo/ADV
         p6Ewe/PAbRoaRTVQQlyeVQlBxAq1MDMwxRUI/uZuLg5EXh088KAIQ10Xg55I1aulcaWS
         DExg==
X-Forwarded-Encrypted: i=1; AJvYcCUMgQRo5vciRZjmVkvBqLlcFdHzf2cHQJLSRvXwvTHcMQw9qJMcSuwUZThJoqoNvQT+AI/gGcoGxRAR@vger.kernel.org
X-Gm-Message-State: AOJu0YxH44+JBgh4Nlb9zg40F/iytRca1JDLseBvT5A/uwLSBhUDF9VB
	KoIBu8cBrc/jwq+Va0Ffk/3+5p4uZ35B6rn004e0LA4jj/WkRAMPxNDvEk5UFXeRPIFLWFaDI8L
	jQp+nzoXWA+kxxmaCkIXRLURNnbP68xQ7lbJxFwXoR+5EEoJceIyKNaYRPk5P
X-Gm-Gg: ASbGncvdz0M01X1FN2/f+bH+MnknA2qXlNLHOG16JNx9XNW1cXfFQ2MWsxjWqMpUu8I
	iktpY4ftG8OjhqgexRbZFR5BKElyqc0oEkhWL4QNxxSRsFL1vC3IXamTpL4qEH4nDkQ17wvwBaj
	m/vumBOxytaPiAixhYm827K1f/Ve64ycKYXs+TLWuUCltVA3dReCcXjCq0Pop/IC3V232pv5M6/
	VuIELfrMWcpMU9tE5ZgpGph/MrRrMhJkUqdJ2SiEfjK8wcObnm32T59Y4vzrA/q/MhJF78NNGOB
	sq8Mj2LFUKYKIU1dbgdpHo/xy++AaB6ee0zrWQJbFQ7zLg==
X-Received: by 2002:a17:902:e545:b0:224:2384:5b40 with SMTP id d9443c01a7336-225e0aa0c3fmr153573685ad.24.1742202588261;
        Mon, 17 Mar 2025 02:09:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF60BAHI99rtN5h8BxymtxkXdeGrP8liOg0J2LI+ZV9QRYEQpFc2bN8hoL4jPWB33wsovgGXg==
X-Received: by 2002:a17:902:e545:b0:224:2384:5b40 with SMTP id d9443c01a7336-225e0aa0c3fmr153573275ad.24.1742202587815;
        Mon, 17 Mar 2025 02:09:47 -0700 (PDT)
Received: from [10.92.192.202] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bd5ae4sm70180935ad.229.2025.03.17.02.09.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 02:09:47 -0700 (PDT)
Message-ID: <75bd4685-a6ea-4852-f41f-fd4437383774@oss.qualcomm.com>
Date: Mon, 17 Mar 2025 14:39:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 01/10] dt-bindings: PCI: Add binding for Toshiba TC956x
 PCIe switch
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84s?=
 =?UTF-8?Q?ki?= <kw@linux.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>, linux-kernel@vger.kernel.org,
        Jingoo Han <jingoohan1@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_vbadigan@quicnic.com,
        jorge.ramirez@oss.qualcomm.com, cros-qcom-dts-watchers@chromium.org,
        linux-pci@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, amitk@kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, dmitry.baryshkov@linaro.org
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-1-e08633a7bdf8@oss.qualcomm.com>
 <174048982895.1892984.13694169241426640158.robh@kernel.org>
 <f718ae90-237c-634a-111d-05f2f0240db9@oss.qualcomm.com>
 <20250313055657.ddrzqo2edx46az7b@thinkpad>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250313055657.ddrzqo2edx46az7b@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WbQMa1hX c=1 sm=1 tr=0 ts=67d7e6dd cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=zHEVz4YWXsmZ1JJS7FsA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 2RhNZXT08SbctaSDU9yYX-lhuNqOFIuB
X-Proofpoint-ORIG-GUID: 2RhNZXT08SbctaSDU9yYX-lhuNqOFIuB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_03,2025-03-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 mlxlogscore=934 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170067



On 3/13/2025 11:26 AM, Manivannan Sadhasivam wrote:
> On Fri, Feb 28, 2025 at 04:26:23AM +0530, Krishna Chaitanya Chundru wrote:
>>
>>
>> On 2/25/2025 6:53 PM, Rob Herring (Arm) wrote:
>>>
>>> On Tue, 25 Feb 2025 15:03:58 +0530, Krishna Chaitanya Chundru wrote:
>>>> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>>>
>>>> Add a device tree binding for the Toshiba TC956x PCIe switch, which
>>>> provides an Ethernet MAC integrated to the 3rd downstream port and two
>>>> downstream PCIe ports.
>>>>
>>>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>>> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
>>>> ---
>>>>    .../devicetree/bindings/pci/toshiba,tc956x.yaml    | 178 +++++++++++++++++++++
>>>>    1 file changed, 178 insertions(+)
>>>>
>>>
>>> My bot found errors running 'make dt_binding_check' on your patch:
>>>
>>> yamllint warnings/errors:
>>>
>>> dtschema/dtc warnings/errors:
>>> Warning: Duplicate compatible "pciclass,0604" found in schemas matching "$id":
>>> 	http://devicetree.org/schemas/pci/toshiba,tc956x.yaml#
>>> 	http://devicetree.org/schemas/pci/pci-pci-bridge.yaml#
>> Hi Rob,
>>
>> As we want to refernce pci-pci-bridge.yaml which is expecting compatible
>> as "pciclass,0604", we modified the compatible as "pci1179,0623",
>> "pciclass,0604". Now adding pciclass0604 is giving this warning. can you
>> suggest correct way to represent this.
>>
> 
> I think the PCI-PCI bridge compatible should be part of the actual bridge nodes
> inside the switch. I still stand by my view that the bridge compatible doesn't
> make sense for the top level switch node as this switch is a sort of MFD.
> 
> So you should do:
> 
> 	pcie@0,0 {
> 		compatible = "pci1179,0623";
> 		reg = <0x10000 0x0 0x0 0x0 0x0>;
> 		...
> 
> 		pcie@1,0 {
> 			compatible = "pciclass,0604";
> 			reg = <0x20800 0x0 0x0 0x0 0x0>;
> 			...
> 		};
> 	};
> 
Thanks mani for the inputs on this.
For child nodes I will make pci-pci-bridge as a reference and for the
main node( pcie@0,0) I will pci-bus-common.yaml as reference.

- Krishna Chaitanya.
> 
> - Mani
> 

