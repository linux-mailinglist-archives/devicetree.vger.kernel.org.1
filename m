Return-Path: <devicetree+bounces-209350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF06B35F10
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 14:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30D193A9B99
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 12:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F07326D43;
	Tue, 26 Aug 2025 12:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YL3OJjeH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2A930F55C
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 12:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756210908; cv=none; b=jrJj5ytme1nw9FwCyBnL4GtAUZJL+dqG8gS22Pb0cyax+ujOyHAWHxqtCG6og6nT2+dopmRDjjBFD4rXBu+hGYD7GVPOp2XSIzXeVIuh9DiuajefcHpdL81jYxDBVpW6TABXDLfUBGrORDq+DZWQzouwyTZsw5Xez0fZkXhnQqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756210908; c=relaxed/simple;
	bh=cDZY4sOyXdEWG+JCocZJFf7HDgOgg81Kbcw/od9SAq0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=uZZGtExuPDceGZok3WglTxWIDMl7TNxYn9HjYeP5QltpJNFcM6FFiChFOxD+SPZ7/+fKChBOPZfT+1LUHyaSHu95McH06GiO6jx+0iZjCDahL/sP3jyQSBA2KqaTgDs0PtF3sMa9qb+yieDZ+ye5CzJheQcVdqAPoC2oGmVbfxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YL3OJjeH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q9Mqt9002835
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 12:21:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xj/MZA6A4yQOjokPCqmS06vMg9EIcp9det7tR39R6Hw=; b=YL3OJjeHRaQdDKf5
	3h0iLKmUcTx8Ohu5CA9ce49/fhE0kC3sb90PvGKqsm6R9EV3jMCrKNKN4yl+pymv
	Sy+UeAyvNicAGshwsTvkfYrMjMhi540zTFXv5aGC4ZG8A9WxpSTZnUmURnvlqUal
	bcsXjZzodMtgc75e3jmAvoI3AcQLG9E/VyzTtjghg1zIKNN55hYMf3M9q9flUkGV
	U47aitsd6VWnhdsvjGjXeAHub9sd65aPEECzWqYjB4wuXWLcUgvB115OotK3Qhk5
	HwhESSjWqn6OHluYLOanbNCsBCByAVsdjYH2ds+i7kOXzuhOph75Vys6zIT1PuT5
	VcNgwA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpeu2jm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 12:21:44 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-771f28ed113so1258883b3a.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 05:21:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756210903; x=1756815703;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xj/MZA6A4yQOjokPCqmS06vMg9EIcp9det7tR39R6Hw=;
        b=fw8x9rGbWGxgbH0M69kJdebyzqF2WlQzMWtzqaNQq53XljxSRsJzNWZTrTgHh3xOy3
         Q/x5zrfAk6gQUHo6WHEymi+vTbus/8ijdaPxZsbevGeu5sBfVmoihU6I0rLlIzyxe70b
         CiOTv5nCrcZORDmQfwDde786+dkisD03/fPOsQTz7RhHejzGE6vuvVGkACZ0AMOZjewW
         XNxQTAAU+Tk/bVYJ+hznszSsBZtdF+TjUjv9ZOk/jfR9XkYuCPyvteI1E8DbcN196bJf
         JZD5IHOXBQUxpLysUmy/2Avk1kzwIH3GXKTn7GYZeeZA8HCFGUJhJAGb+oXS8Q5HTqHU
         EWUg==
X-Forwarded-Encrypted: i=1; AJvYcCWT1xdiNhrfzENw1GmkuiiW+//6P+yd1ACsSM/5Jv8aNdcCH8cLfF34ZrJmg5CJjx7H2UQpBM/YdwZ8@vger.kernel.org
X-Gm-Message-State: AOJu0YwmhM9Pq9xbBRZwZfvGlS4FEBeYIZbH230KLF9EG4TJKXGKdC+4
	ubapWLruIrP5QPUTJhzdOA1igUki6IlhiMfT8DyvlB4sn733zittrNEXWRXtIe/ftUZhuHt1rQJ
	p+PSG+JAncQ8+CFT4AuV+YxKMsYeZx45ZgFFKCapY6CNbZBJLFccURCtQ3PZ8QzS1
X-Gm-Gg: ASbGncuYltbfGicCgDxjCG8zdvtq4qRK+frh7fntvZsQ1A+xHZ0TSe5t716VwVqZKCz
	6oK5+0/GQOndzXvurfp0c3Ic7LiJEVbytcoVYXT1gUBxwKYuMY3CyxPMeHlvFmsK1BiKHrAHckQ
	jN/i3xcMSuhk5cvQ9PbGm+hqBIB3THlnNhM2jKtI75yeXDN+tK1RDsqFS5HydUELcAsvO3LMF2G
	CVQvQR8wmI18PmSF2zv/2/P5TEmLb3lLkJSq4cG+IZsnT1ohl//3gQuEjJdo+t27cj7cJcrmzaf
	OPTw6R3HfxaeQWNGn6mzvVal2X5hqo03Bq06kqkHjNf4iEkQrEzMHZCpwRwXqX+qsA==
X-Received: by 2002:a05:6a00:10d1:b0:76e:7aee:35f2 with SMTP id d2e1a72fcca58-7702fc15031mr16945596b3a.30.1756210903196;
        Tue, 26 Aug 2025 05:21:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdHFcw5nbbR7DmXRWjmRQkX5tmIcocsB+qO88Jb3kvJp1o/g2CVqD8Sf5HxYdMvi7GPrmIRA==
X-Received: by 2002:a05:6a00:10d1:b0:76e:7aee:35f2 with SMTP id d2e1a72fcca58-7702fc15031mr16945559b3a.30.1756210902626;
        Tue, 26 Aug 2025 05:21:42 -0700 (PDT)
Received: from [10.64.16.151] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-771e9c6f2ffsm4758155b3a.6.2025.08.26.05.21.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 05:21:42 -0700 (PDT)
Message-ID: <adda1cff-61c8-4f9d-bb9c-7c0cc70a21f1@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 20:21:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: Add display support for QCS615
 RIDE board
From: Fange Zhang <fange.zhang@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Li Liu <quic_lliu6@quicinc.com>, dmitry.baryshkov@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, xiangxu.yin@oss.qualcomm.com
References: <20250818-add-display-support-for-qcs615-platform-v6-0-62aad5138a78@oss.qualcomm.com>
 <20250818-add-display-support-for-qcs615-platform-v6-2-62aad5138a78@oss.qualcomm.com>
 <hlajupt4mwb27j4kbygdk5rifthnbnyv4ypcrqd2jk4vvdytoy@fef26rluqkxi>
 <8243f4f2-4505-4264-91ab-3688f4f6fc6e@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <8243f4f2-4505-4264-91ab-3688f4f6fc6e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Cve-LjPwZuYOYm4AGt9h5EEQddeNq0M4
X-Proofpoint-ORIG-GUID: Cve-LjPwZuYOYm4AGt9h5EEQddeNq0M4
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68ada6d8 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=fAMiPJdJibrns1U4IokA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfXyf9hkTBX2+AX
 +iCon5f3F9tru9hk0TwlzpoteKYsp6I9iDex6zcOceELNOiah/M8F9l+X05KjXtCeiNfMb9+ZXv
 mERcNYGD2Fwn4VWFmP3VqyzPa7s5Xiht1JLShae1sjxckh8BzcpnYrABipyHLzGnmLqFMqDcSp+
 PAlmG/B7RbE72biy5aBYkW66ONDymkTswTRaLa+I+eM7P5wqWSsf1M0AnP0kwRITDfVbbtcrGAa
 dV13hDXE3QOklTcyFU8moJtUsECwot2hRTY9+MiMawW1GBEJiWXsPj1OwYpW48w2CqBsK70hMcL
 +Fk3bo8X+NdwYx2TexHRSoQGEwvXN0WlWwAZu1JMiMpSCptG9awJvB/xgiynWR5cPJXhsc0ZcwA
 aLdqr0BT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142



On 8/26/2025 4:08 PM, Fange Zhang wrote:
> 
> 
> On 8/24/2025 11:15 AM, Bjorn Andersson wrote:
>> On Mon, Aug 18, 2025 at 12:39:21PM +0800, Fange Zhang wrote:
>>> From: Li Liu <quic_lliu6@quicinc.com>
>>>
>>> Add display MDSS and DSI configuration for QCS615 RIDE board.
>>> QCS615 has a DP port, and DP support will be added in a later patch.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
>>> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
>>
>> Running dtb checker after applying your patch gives me the following:
>>> $ make qcom/qcs615-ride.dtb CHECK_DTBS=1
>>>    UPD     include/config/kernel.release
>>>    HOSTCC  scripts/basic/fixdep
>>>    SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>>> Documentation/devicetree/bindings/net/snps,dwmac.yaml: mac-mode: 
>>> missing type definition
>>> Documentation/devicetree/bindings/net/nfc/ti,trf7970a.yaml: ti,rx- 
>>> gain-reduction-db: missing type definition
>>> Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml: 
>>> fsl,phy-pcs-tx-deemph-3p5db-attenuation-db: missing type definition
>>>    DTC [C] arch/arm64/boot/dts/qcom/qcs615-ride.dtb
>>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@100000: 
>>> 'clock-names' is a required property
>>>          from schema $id: http://devicetree.org/schemas/clock/ 
>>> qcom,qcs615-gcc.yaml#
>>
>> Taniya is looking at this one.
> 
> Got it. Since the patch appears to be accepted, should I still wait for 
> mm clk version 7?
> https://patchwork.kernel.org/project/linux-arm-msm/patch/20250814- 
> qcs615-mm-cpu-dt-v6-v6-1-a06f69928ab5@oss.qualcomm.com/
> 
>>
>>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: gpio@3e: $nodename:0: 
>>> 'gpio@3e' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
>>>          from schema $id: http://devicetree.org/schemas/pinctrl/ 
>>> semtech,sx1501q.yaml#
>>
>> This is from your patch.
> 
> got it, will change "gpio@3e" to "pinctrl@3e"
> 
>>
>>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: bridge@58: 'vdd10-supply' 
>>> is a required property
>>>          from schema $id: http://devicetree.org/schemas/display/ 
>>> bridge/analogix,anx7625.yaml#
>>
>> This is from your patch.
> 
> got it, will add this part like https://lore.kernel.org/ 
> all/20250604071851.1438612-3-quic_amakhija@quicinc.com/
> 
> @@ -51,6 +51,64 @@ dp_dsi0_connector_in: endpoint {
> };
> };
> 
> +       vreg_12p0: vreg-12p0-regulator {=
> ...
> @@ -338,7 +396,9 @@ bridge@58 {
>                                  interrupts-extended = <&io_expander 0 
> IRQ_TYPE_EDGE_FALLING>;
>                                  enable-gpios = <&tlmm 4 GPIO_ACTIVE_HIGH>;
>                                  reset-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
> -                               wakeup-source;
> +                               vdd10-supply = <&vreg_1p0>;
> +                               vdd18-supply = <&vreg_1p8>;
> +                               vdd33-supply = <&vreg_3p0>;
> 
>>
>>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: bridge@58: 'vdd18-supply' 
>>> is a required property
>>>          from schema $id: http://devicetree.org/schemas/display/ 
>>> bridge/analogix,anx7625.yaml#
>>
>> This is from your patch.
> 
> same as above
> 
>>
>>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: bridge@58: 'vdd33-supply' 
>>> is a required property
>>>          from schema $id: http://devicetree.org/schemas/display/ 
>>> bridge/analogix,anx7625.yaml#
>>
>> This is from your patch.
> 
> same as above
> 
>>
>>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: bridge@58: 'wakeup-source' 
>>> does not match any of the regexes: 'pinctrl-[0-9]+'
>>>          from schema $id: http://devicetree.org/schemas/display/ 
>>> bridge/analogix,anx7625.yaml#
>>
>> This is from your patch.
> 
> will remove it
> 
>>
>>> arch/arm64/boot/dts/qcom/qcs615-ride.dtb: phy@ae94400: Unevaluated 
>>> properties are not allowed ('vdds-supply' was unexpected)
>>>          from schema $id: http://devicetree.org/schemas/display/msm/ 
>>> dsi-phy-14nm.yaml#
>>
>> This is from your patch.
> 
> will change "vdds-supply" to "vcca-supply"
> 
>>
>>
>> Am I missing something? Is there any reason why these 6 new errors
>> should be added?
> 
> Sorry, I missed those parts earlier. I've re-tested and confirmed the 
> changes. The patch can pass after refine.
> Would it be appropriate to send v7 now, or should I wait until the mm 
> clk v7 is ready?

ok, I saw it's already included in linux-next. I'll send v7 tomorrow 
based on the latest linux-next. may i?
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f9c36698db91780eed4ee3a90794bda2a4252166

> 
>>
>> Regards,
>> Bjorn
>>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 90 +++++++++++++++++++++ 
>>> +++++++++++
>>>   1 file changed, 90 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/ 
>>> boot/dts/qcom/qcs615-ride.dts
>>> index 
>>> 59582d3dc4c49828ef4a0d22a1cbaba715c7ce8c..39c757b66f47579d9bc7cc5c4d703f7af4434df4 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>> @@ -39,6 +39,18 @@ xo_board_clk: xo-board-clk {
>>>           };
>>>       };
>>> +    dp-dsi0-connector {
>>> +        compatible = "dp-connector";
>>> +        label = "DSI0";
>>> +        type = "mini";
>>> +
>>> +        port {
>>> +            dp_dsi0_connector_in: endpoint {
>>> +                remote-endpoint = <&dsi2dp_bridge_out>;
>>> +            };
>>> +        };
>>> +    };
>>> +
>>>       vreg_conn_1p8: regulator-conn-1p8 {
>>>           compatible = "regulator-fixed";
>>>           regulator-name = "vreg_conn_1p8";
>>> @@ -294,6 +306,84 @@ &gcc {
>>>            <&sleep_clk>;
>>>   };
>>> +&i2c2 {
>>> +    clock-frequency = <400000>;
>>> +    status = "okay";
>>> +
>>> +    io_expander: gpio@3e {
>>> +        compatible = "semtech,sx1509q";
>>> +        reg = <0x3e>;
>>> +        interrupts-extended = <&tlmm 58 IRQ_TYPE_EDGE_FALLING>;
>>> +        gpio-controller;
>>> +        #gpio-cells = <2>;
>>> +        interrupt-controller;
>>> +        #interrupt-cells = <2>;
>>> +        semtech,probe-reset;
>>> +    };
>>> +
>>> +    i2c-mux@77 {
>>> +        compatible = "nxp,pca9542";
>>> +        reg = <0x77>;
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        i2c@0 {
>>> +            reg = <0>;
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>> +
>>> +            bridge@58 {
>>> +                compatible = "analogix,anx7625";
>>> +                reg = <0x58>;
>>> +                interrupts-extended = <&io_expander 0 
>>> IRQ_TYPE_EDGE_FALLING>;
>>> +                enable-gpios = <&tlmm 4 GPIO_ACTIVE_HIGH>;
>>> +                reset-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
>>> +                wakeup-source;
>>> +
>>> +                ports {
>>> +                    #address-cells = <1>;
>>> +                    #size-cells = <0>;
>>> +
>>> +                    port@0 {
>>> +                        reg = <0>;
>>> +
>>> +                        dsi2dp_bridge_in: endpoint {
>>> +                            remote-endpoint = <&mdss_dsi0_out>;
>>> +                        };
>>> +                    };
>>> +
>>> +                    port@1 {
>>> +                        reg = <1>;
>>> +
>>> +                        dsi2dp_bridge_out: endpoint {
>>> +                            remote-endpoint = <&dp_dsi0_connector_in>;
>>> +                        };
>>> +                    };
>>> +                };
>>> +            };
>>> +        };
>>> +    };
>>> +};
>>> +
>>> +&mdss {
>>> +    status = "okay";
>>> +};
>>> +
>>> +&mdss_dsi0 {
>>> +    vdda-supply = <&vreg_l11a>;
>>> +    status = "okay";
>>> +};
>>> +
>>> +&mdss_dsi0_out {
>>> +    remote-endpoint = <&dsi2dp_bridge_in>;
>>> +    data-lanes = <0 1 2 3>;
>>> +};
>>> +
>>> +&mdss_dsi0_phy {
>>> +    vdds-supply = <&vreg_l5a>;
>>> +    status = "okay";
>>> +};
>>> +
>>>   &pcie {
>>>       perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
>>>       wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
>>>
>>> -- 
>>> 2.34.1
>>>
> 


