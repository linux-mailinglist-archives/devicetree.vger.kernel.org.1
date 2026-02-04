Return-Path: <devicetree+bounces-262515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JwTNqnfgmlndwMAu9opvQ
	(envelope-from <devicetree+bounces-262515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:56:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B176E225E
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:56:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF53C3025906
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6190035C1BF;
	Wed,  4 Feb 2026 05:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TarKFngG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="enkrxz7K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187D035B159
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 05:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770184612; cv=none; b=f1TgV7IZ0NqR6TLnGemaB6K+gVfGVS96GBYX7vntLSt2G3qHH2oulCTbFICuiw52feZuEEapk2V8XsdG9+pCbdMseWvofNIFqTxbskaGzWQMyV1sRSge1/V/Re33aJ6IHfH9iTMLm372ySzwdz/Jkvn23aJxUTe1sLPa04bcGLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770184612; c=relaxed/simple;
	bh=zoyChqg2V/ojKowxdKW7PXyV0+oFY0jcVoQ44lNcg1U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f6XXeCNBZvwzWteDsUqUct4/0DvxEudxPBB3c/E0UKExXDSxORP0DgPFsvgDFBfk4cwMa27Uvs9Uqux+XeL0xbfNatcoCwp89zdUy87xI4c3/svqPE8R+x6nP5OBXDYsMCDyPiQkTsm3yFOxxDEeqT4Y15wzZNaUYIqTZpJPbJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TarKFngG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=enkrxz7K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6144UvCO2053930
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 05:56:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EK/ShqajA0Vgfe5o7lp0B84FnBvMS19l8JN+NXXxTfk=; b=TarKFngGx4Tr3o2N
	uO20VPqa1Ee/T4EbVQas86LjJqqVTsZE9pjB2PF1KfN2b/9Z5jkPpLdRZfEeSJhC
	ngk+c30ERtkr3Iaat2cTKhTKyJ1+8aOUJm7PfK+dJqRlL8+8NKscngUXwFi2urlD
	2jXh4E8VpGdX54ygWX2/0cNDtnLAJ/ScRvsE1Z9fiW2BYFJtFGD7SaU6Sjt1urYP
	c9PE0JjaNO3gufrdv2P33boewTPivUElBIZry/C09EZGL4nUEhzMfbzGARBpJ5s+
	Hsm1dDuTy/qR50ny9zx9sx1XfGUaKZzxIZKqi3smei2qoAZDKZKFyuCq2l3ehylU
	5IUiZA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3gsr32vd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:56:51 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b7155ca88cso6213842eec.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 21:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770184610; x=1770789410; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EK/ShqajA0Vgfe5o7lp0B84FnBvMS19l8JN+NXXxTfk=;
        b=enkrxz7KzrXOJ2SGl3wbyEU5rlhjpfOUWTLeoXZV9LAqnyYFb/neHyUurEgi6UiUWE
         WTw88eKpBkMczI7Io9zD51QrnIs2bsIQetcrpLNIIZjdOj9hRtjw43AiD/XtMV01VxEf
         RuCwr+FCGWN+Yta8c28/W2oxfRQFmpW0dxQFDQOHV2yDmIimPO4COVaPSEwdT70Itaio
         uBkFCBhhe6ATF8E4ppl+eedYtUZ0SUluUaAJqbe33ffBL16if3Ap8wr2Csdwc7GKSly4
         5/N/nKClf3pteY971efO74sJNLVomHfxzJP+da1+l11FTRRmryAsL2OFGLRRvleNUB9t
         L8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770184610; x=1770789410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EK/ShqajA0Vgfe5o7lp0B84FnBvMS19l8JN+NXXxTfk=;
        b=UXVeSprtPQnYGi1m6uR40O3bDqtqT3T56eKOq2aCJaKorNg3YKNxodM/5IORS+Pnzu
         k9yt1FybiyBPB0CQBVxOPEWySN6CRnc481MlmQjZ4qAqOrNDmnBOi8ZYpN12nvH3Oxxx
         uzQPPdh8tLrds2QSAhCTplM6j/KD0gIw/O8nhKgNIIiXsmnhZi0P5zmP7X1R5wbHDXDz
         +GpurbNGURzpwftOWqAB738gXxt1vdIgArgyUXw8o/BWo4H2fKjL3jPAq62ID0gfjOi/
         XRZX9AgegZ72Aq0SjO2xGjaB792b9rEBwVwp8cEq/KQhUim9aeINZCZ5h560S3moIlUa
         UQUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfqD6d97ZFhHcROjsjhFEE1XX/o6OOHY16MtpQE9ei6MM82l584zQhUjAxLTlssfHKn7vptrnhRN56@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa5HyNIU0NygXgDZ5TeyYIn65e6zZniEuGkUaCEhKqsvvAtttm
	i5srJBMbG4fnKkmxXLbdo7qm1k4CBjSTe0jyTBcTWPC1BPfASpOVpUqFEqaq8U0a48dPaH+UwPM
	TKXX+LlX+C8TxV8GmhMw4fsXgp8QoFv90j63WaI266Fj17RPFjQyfF9hVcxkOG5CZ
X-Gm-Gg: AZuq6aKEwtGTWN3yZ+eV4aO+U+6TO3bx+j0w0VTCkvKINzvv69/NGide1E7ygSzqQLA
	cFuy2Xru4OEsqFcrV/+xu5IAro/17z5WIxbY9UPP3fqsJZYI6HDdmZmEtC0GAsJ+ZK2t6i9XMiX
	VAfH1qFpHEk/LJ16VbW82DNi84XM7nNFpB1topH39RKQbMTIhiS4jF2FnI75BEbZCjx3a1ZEX1S
	X+VvqLcVsPmklzyEkmYu7Ia3NHRXJLDVWnTBTl5GHLMBxJ2XdXiRUBhtmDf5Wd5+qSZ2lnEzxhH
	TcNx4BHsvAziAOES4yL1nb2/YMsVxsXt24qkVPGAoPgFd+b41ZGckZpKCxIDJYVsiSzJINRlauJ
	RarA4kPIELS/zt/I9rTt6EWr1C/VeNqg/PBA0ERrq8OTGvA==
X-Received: by 2002:a05:7300:534f:b0:2b7:f145:a9c with SMTP id 5a478bee46e88-2b832a234ebmr747651eec.34.1770184609960;
        Tue, 03 Feb 2026 21:56:49 -0800 (PST)
X-Received: by 2002:a05:7300:534f:b0:2b7:f145:a9c with SMTP id 5a478bee46e88-2b832a234ebmr747634eec.34.1770184609345;
        Tue, 03 Feb 2026 21:56:49 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f503ea14sm1379676c88.16.2026.02.03.21.56.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 21:56:48 -0800 (PST)
Message-ID: <6a982b56-2f4c-441f-acf7-a8e77ea55600@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 11:26:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB
 controller in host mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd
 <swboyd@chromium.org>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?Q?J=2E_Neusch=C3=A4fer?=
 <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
 <20260122092852.887624-5-swati.agarwal@oss.qualcomm.com>
 <63fjxtcmpbpna4cuuis332y3p52b6pvh43gyg6m7u5kiwkb2pb@znwfyet4xlpc>
 <CAHz4bYuR_LZXh=tS2FJ4VE9tVB6vN10pd-9i=uOL35sSx_BRzg@mail.gmail.com>
 <fycr33dqcosay7ake3nbbeaclhqvynwzixas4u3ocaerpqbu5e@shoibdd663vm>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <fycr33dqcosay7ake3nbbeaclhqvynwzixas4u3ocaerpqbu5e@shoibdd663vm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=A+9h/qWG c=1 sm=1 tr=0 ts=6982dfa3 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bWLVWEuH_CVqUnXyZ6EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: EeiZB2OGTwJdeWx18dAD0xNg_OglQtKl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA0MiBTYWx0ZWRfXwuEvw15U5ExK
 BA6tdRZrLLQfu0bvmAe6UtWs4lWjV/HsJwmGJ6auNfF4Ez3piB1sjh9urBWPXT2FPi9ncwjyEby
 6FYDV5gpYBSaBrLYnFUukcObZEMTvb0T3we/1W+mbSA2DPpkWDGjolRiZlegJPiFNnaC4tPLEYI
 4ELXxvojx5F94uRg2gQ50hy2n2psC9+kf8OTd991gS4JNJZN3ZUo0chltTBR4/Wkj5Sf6oSi0to
 /YaUa1z+6l6snnk8ujN9v8tu/0MQ8VOx51KZP9SC8QQH5/rX68swzODaLg2GBSofL+XvzrLvoU5
 DBKsbQZf1/d1Amtf4hgGr3b5rZQhfTdV4Szg/faj9gHM2v5kWac4zSK1QgkYaXjVeCLN8ZjiQ4B
 m610Rh4CM9AtoaEz0e6A/x0YY3iqM0S9vxykwLb0Zzss4TdxUJv2YbRwnab8o54xTX6wPbyapZF
 FPUmlRIMvWQ/rF8jd3A==
X-Proofpoint-GUID: EeiZB2OGTwJdeWx18dAD0xNg_OglQtKl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040042
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262515-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,0.0.0.2:email,0.0.0.0:email,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.47:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6B176E225E
X-Rspamd-Action: no action



On 2/4/2026 7:03 AM, Dmitry Baryshkov wrote:
> On Tue, Jan 27, 2026 at 10:53:46AM +0530, Swati Agarwal wrote:
>> On Thu, Jan 22, 2026 at 4:02 PM Dmitry Baryshkov
>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>
>>> On Thu, Jan 22, 2026 at 02:58:52PM +0530, Swati Agarwal wrote:
>>>> Enable secondary USB controller in host mode on lemans EVK Platform.
>>>>
>>>> Secondary USB controller is connected to a Genesys Logic USB HUB GL3590
>>>> having 4 ports. The ports of hub that are present on lemans EVK standalone
>>>> board are used as follows:-
>>>> 1) port-1 is connected to HD3SS3220 Type-C port controller.
>>>> 2) port-4 is used for the M.2 E key on corekit. Standard core kit uses UART
>>>> for Bluetooth. This port is to be used only if user optionally replaces the
>>>> WiFi card with the NFA765 chip which uses USB for Bluetooth.
>>>>
>>>> Remaining 2 ports will become functional when the interface plus mezzanine
>>>> board is stacked on top of corekit:
>>>>
>>>> 3) port-2 is connected to another hub which is present on the mezz through
>>>> which 4 type-A ports are connected.
>>>> 4) port-3 is used for the M.2 B key for a 5G card when the mezz is
>>>> connected.
>>>>
>>>> Mark the second USB controller as host only capable and add the HD3SS3220
>>>> Type-C port controller along with Type-c connector for controlling vbus
>>>> supply.
>>>>
>>>> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/lemans-evk.dts | 208 ++++++++++++++++++++++++
>>>>   1 file changed, 208 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>>>> index 074a1edd0334..a549f7fe53a1 100644
>>>> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>>>> @@ -68,6 +68,45 @@ usb0_con_ss_ep: endpoint {
>>>>                };
>>>>        };
>>>>
>>>> +     connector-1 {
>>>> +             compatible = "usb-c-connector";
>>>> +             label = "USB1-Type-C";
>>>> +             data-role = "host";
>>>> +             power-role = "source";
>>>> +
>>>> +             vbus-supply = <&vbus_supply_regulator_1>;
>>>> +
>>>> +             ports {
>>>> +                     #address-cells = <1>;
>>>> +                     #size-cells = <0>;
>>>> +
>>>> +                     port@0 {
>>>> +                             reg = <0>;
>>>> +
>>>> +                             usb1_con_ss_ep: endpoint {
>>>
>>> This contradicts USB-C connector bindings. Why?
>>>
>>>> +                                     remote-endpoint = <&hd3ss3220_1_in_ep>;
>>>> +                             };
>>>> +                     };
>>>> +
>>>> +                     port@1 {
>>>> +                             reg = <1>;
>>>> +
>>>> +                             usb1_hs_in: endpoint {
>>>> +                                     remote-endpoint = <&usb_hub_2_1>;
>>>> +                             };
>>>> +
>>>> +                     };
>>>> +
>>>> +                     port@2 {
>>>> +                             reg = <2>;
>>>> +
>>>> +                             usb1_ss_in: endpoint {
>>>
>>> port@2 is for the SBU signals. It can't be connected to the hub.
>>>
>>>> +                                     remote-endpoint = <&usb_hub_3_1>;
>>>> +                             };
>>>> +                     };
>>>> +             };
>>>> +     };
>>>> +
>>>>        edp0-connector {
>>>>                compatible = "dp-connector";
>>>>                label = "EDP0";
>>>> @@ -141,6 +180,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
>>>>                enable-active-high;
>>>>        };
>>>>
>>>> +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
>>>> +             compatible = "regulator-fixed";
>>>> +             regulator-name = "vbus_supply_1";
>>>> +             gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
>>>> +             regulator-min-microvolt = <5000000>;
>>>> +             regulator-max-microvolt = <5000000>;
>>>> +             regulator-boot-on;
>>>> +             enable-active-high;
>>>> +     };
>>>> +
>>>>        vmmc_sdc: regulator-vmmc-sdc {
>>>>                compatible = "regulator-fixed";
>>>>
>>>> @@ -536,6 +585,39 @@ hd3ss3220_0_out_ep: endpoint {
>>>>                        };
>>>>                };
>>>>        };
>>>> +
>>>> +     usb-typec@47 {
>>>> +             compatible = "ti,hd3ss3220";
>>>> +             reg = <0x47>;
>>>> +
>>>> +             interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
>>>> +
>>>> +             id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
>>>> +
>>>> +             pinctrl-0 = <&usb1_id>, <&usb1_intr>;
>>>> +             pinctrl-names = "default";
>>>> +
>>>> +             ports {
>>>> +                     #address-cells = <1>;
>>>> +                     #size-cells = <0>;
>>>> +
>>>> +                     port@0 {
>>>> +                             reg = <0>;
>>>> +
>>>> +                             hd3ss3220_1_in_ep: endpoint {
>>>> +                                     remote-endpoint = <&usb1_con_ss_ep>;
>>>> +                             };
>>>> +                     };
>>>> +
>>>> +                     port@1 {
>>>> +                             reg = <1>;
>>>> +
>>>> +                             hd3ss3220_1_out_ep: endpoint {
>>>> +                             };
>>>
>>> Why is this port disconnected? It it really N/C?
>>
>> Hi Dmitry,
>>
>> Sorry for the confusion, Can we do it as follows:
>>
>> hub:                    Hd3ss3220   typec-connector
>>
>> usb_hub_2_1 <-> port@1       port@1 <-> empty
>> usb_hub_3_1 <-> port@2       port@2 <-> <empty>
>>                               port@0 <-> port@0
>>
> 
> You still missed the _why_. Why port@1 of HD3SS3220 is not connected?
> 

There are no remote endpoints added in dwc3 node. Since we are making 
dr_mode host. Hence keeping this remore endpoint empty.

Regards,
Krishna,

