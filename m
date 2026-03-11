Return-Path: <devicetree+bounces-274081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEYpBZRpsWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:09:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFC02642AF
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:09:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D52130CBD1A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 152682E2F1F;
	Wed, 11 Mar 2026 13:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="erU2gEXV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dfSDM6aT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD03B27F01E
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234234; cv=none; b=szk1lgQbwWlnmt17HqXN/F00S6WT/JO9qBJ0nZ9QfvjfUHKizK8fL3eJylZ9nNaupRRR9wU6zrHTq/1NrVLZOEIQVtJnMM04iLbZyTXFc29EzEuK7aKAsF0Yzc8sZWJw6Z2bYza9bB9fuSwHTiiDTOr3MVMK7sMlp6X4XM73c1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234234; c=relaxed/simple;
	bh=5+J5TqAqGh8ioSYxiauKGxtDEKPjcO3n849+lga00bo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t4v07we7LFSwPA78c2glvLywnSI1VLNkXUNwxmj7UzAdfV2dpLwtqqhIFIF8bqTQtjdht+1nL9OHtwlgXcd8laGDBmI6qGjvWV4Q2wbstS8QsyoOTCEdMdDP5x9KxHrsnUz6Y1DAqi0JDc/4u1tEZ7ZY6M9OVrb8WJOuhfFvZVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=erU2gEXV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dfSDM6aT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BAvDwg2622174
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:03:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d4VhR4c9gk4ZiGswHq6GTZO8dxybDlutZ+rs5ZkA/LE=; b=erU2gEXVebghbm+o
	2GZccEX2u8Xd+E01hdidrZUuxAaH1uY63xkyHo82CZ97lHfDsKlxneBid2PUBik3
	o1TJTdTA+S1oJGAHR7BHq6XrH6dQQuLOLeK1deIYeoLbPlHjbdUcTjtbNBS3plFX
	kru2dm+0IKJa89gVM7IuNasdPaKKo0FbKB+fS7SDUbnnsNYvlnLgLU71vtRIqaEG
	+hctJroMVOeqCUUSi0tnxA8566PjsvE8drEHktiljxb9f20LYs4MDy/Cv92+W0q1
	uFhOZP4wOZgOKzcv8HMxyQBgQHj6d7rlWOYm8Po2Q3pIrZRtBBA4XdtvVfuo2l6O
	7fukUA==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu73h0d0s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:03:52 +0000 (GMT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-4173f1d8c87so4058447fac.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773234231; x=1773839031; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d4VhR4c9gk4ZiGswHq6GTZO8dxybDlutZ+rs5ZkA/LE=;
        b=dfSDM6aTDjDV30MY1vJUTbE1t9x6K8aO3Vc625mWfqcD9M38AqbUQ6/YjubvmAM+uv
         jb3NAw9WGh5To9W16TfQBDJ9QmmKRGdFANNINUXRv4CK3QhoBK7JlsHEekkqJFaKvP+k
         OoxPINjLZ8nFcZCYdgWWe7VQk9VMPK021xgcUEbAW+OUV7JHAysqnMfFzYm4iotdl5/R
         fNREX3pxeClM3Yl+A+TJfK7mg9Gspz1/khBbAXmmDBw5a8y0klbJCpY4pqe1VGCkR/fI
         fNqvWOc/7OTZslURvAXrMtcTTH6ZVJwmIjegfz+8yRFBvqJ60iwiNPRyGKAkPK9JaPKY
         dRNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773234231; x=1773839031;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d4VhR4c9gk4ZiGswHq6GTZO8dxybDlutZ+rs5ZkA/LE=;
        b=R9C9H/BceYyArIxjWfs/pf73gRFEdI+KRgfnpkejaLcr8XyCkSeNmwctpuGgTarLUN
         JS/ZF2jL0JCKVqe7pSWpLc+lFcVbES8UFVVfvu3fbV+0V5uErEvXCjNiwZFizzXe38YF
         njN390WbkvtmfyPICCCy/Jxzb6X4qpg1yTJn4cfdHNwwAFMpkws5vJPWCfHRDWaMYJLq
         kEr1N44y4ZKlWE9B8KBM6utu6wNr5b3qIz1Yprh4cgpu7+BFTOfcm4ebPJGbR51pjWBx
         P5n4kYmXjlaFt1qMImNB9zwxu0TOabqgoTK/UawvJq0FyH+OsFtP/NshONSnfv6z4n7m
         sgwg==
X-Forwarded-Encrypted: i=1; AJvYcCVEMmGPpZK7XDy94HVQrnQ0Gf9Xxc7QRHik9oPog4VCvIt+Ak+Hvmp4xczQIOqUV70w0qfdTvU7tIND@vger.kernel.org
X-Gm-Message-State: AOJu0YyeL4J+p6qKOSzzHvheqIyUqWwSEAs4485geC4IXUXse/4WHV9+
	kUZuxcW9Rb9vfGNWsyOcXgC536VSxNfEhScCNT9r9ooaC8tShHcnGK9jJqBpWv0HZVeB4lwtOp7
	oHo/SUyE24zPPSUGTE4PmP/GbZmaGjv0ijzTkKAHOQTSzZarphsPyKKrCIa/jwu39
X-Gm-Gg: ATEYQzyD+Xd2+CbK3pnNE1tPK8PHz4MubCr4aqSb9k8td0+a8jiOnLczn31IFnseeLT
	w+kLLXVAdjrSfL7+OPYlw/lCeVTeGcdNorCl57XduADEm2/zvBC3uIY8J5Ms0VV4Hm2/jABcfvq
	d0Tc8c91jYsaLwBpUq3h1io49pWWOf6CuP2PdadJvezVy9m8lUqZJrHmWO4OgOSvhCQhKpxR7DR
	1r0BVZFU48X07gmOd8z+6i1rTS06El9t0LGMQevtlApgumsillEll7Iuasl/ATBLxVssE0KCCAv
	1nOuoxC+e5W3qy8b4o9x0I5dDL7E39GqS9RbSfBn747nyp/jwBv0QmS2L6NaaQ5gzrL34IiPXGT
	m8OdE9A9LAMgEg+YrAnsvMnQOReqLu6e3AKr6UTr05YIGbmxTWEfVtl9olydL+I9KJxlmDTpqti
	7k43E=
X-Received: by 2002:a05:6870:678d:b0:414:b05f:1ce2 with SMTP id 586e51a60fabf-4177c9a7bb6mr1147765fac.5.1773234230698;
        Wed, 11 Mar 2026 06:03:50 -0700 (PDT)
X-Received: by 2002:a05:6870:678d:b0:414:b05f:1ce2 with SMTP id 586e51a60fabf-4177c9a7bb6mr1147705fac.5.1773234229627;
        Wed, 11 Mar 2026 06:03:49 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972de5684bsm54177566b.23.2026.03.11.06.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:03:48 -0700 (PDT)
Message-ID: <1ca4cdaf-d8f7-43c5-9087-b0394036c461@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:03:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 touchscreen
To: cristian_ci <cristian_ci@protonmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-5-aa2c330572c0@protonmail.com>
 <f6029a8f-07d7-4872-813a-ff98fd11b5af@oss.qualcomm.com>
 <zqVKBYSFu9Qsyz7CKpxCBliYAzh1QjVqyTi24YLuiZy_muAh81pAHgkTWsEaAJsRbMlG_UewopTzYleJCypPrbukpTaBZSpuBtmG5QIKMPs=@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <zqVKBYSFu9Qsyz7CKpxCBliYAzh1QjVqyTi24YLuiZy_muAh81pAHgkTWsEaAJsRbMlG_UewopTzYleJCypPrbukpTaBZSpuBtmG5QIKMPs=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: DR9SNSdtbvymjZxLfF0vOGQkTc_FQvzC
X-Authority-Analysis: v=2.4 cv=T7uBjvKQ c=1 sm=1 tr=0 ts=69b16838 cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=sfOm8-O8AAAA:8 a=ZEhHOJAMJ-b77FbnAkkA:9 a=QEXdDO2ut3YA:10
 a=1zu1i0D7hVQfj8NKfPKu:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: DR9SNSdtbvymjZxLfF0vOGQkTc_FQvzC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExMCBTYWx0ZWRfXxwmxeJDvBtmk
 QUhH5K2544noUFDIOrXPge6v49tTYdBH+zKkqc4vuB776WDKAY841u6OsNCUpsId9rEVwpTOBhN
 io3FkcBw9rGiqpPQxW3SYxRtQMcA+aHEBlReKVf+sAiCF80ndFn/UZvo/5p46VifUNzoWWRXoi9
 3RwikfEDTbTbr4vMBWmhbuZzVX9oeOIzuDPWoNVTCaTJD+4DL5ZrrDNFG2njc4tRWx8IJ3JQR27
 am6To9nbRc0njCaHM96pGmvL2SfIm5fKbxMmfxfnSUlLEgafz/6z0CLzg7//47RNkPMt0DnRd0a
 Q18q2FFeubYOF1XUuVqejmm67DkrpHMmx7uSjI+r59kC8S2zm4mw9iyCfVFCKQjlsfP3zqtCoF6
 kIWz7PsqGfeQQXwnkJ3HjTL/1Krdcydz0sDKW6o9qoUW1/O2zmHJ0UOgydDOqjJwYvzh4H1aG3f
 Ko4wzfgatpTmOQYuiIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110110
X-Rspamd-Queue-Id: 5DFC02642AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274081-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,protonmail.com:email,5d:email,qualcomm.com:dkim,qualcomm.com:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 5:20 PM, cristian_ci wrote:
> 
> 
> 
> 
> Cristian
> 
> Sent with Proton Mail secure email.
> 
> On Tuesday, March 10th, 2026 at 14:08, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> 
>> On 3/8/26 4:52 PM, Cristian Cozzolino via B4 Relay wrote:
>>> From: Cristian Cozzolino <cristian_ci@protonmail.com>
>>>
>>> This device uses a Goodix GT5688 touch controller, connected to i2c_3.
>>> Add it to the device tree.
>>>
>>> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
>>> ---
>>>  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 32 ++++++++++++++++++++++
>>>  1 file changed, 32 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
>>> index 7b2849405462..709ea6fc9fbb 100644
>>> --- a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
>>> +++ b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
>>> @@ -94,6 +94,31 @@ &hsusb_phy {
>>>  	status = "okay";
>>>  };
>>>
>>> +&i2c_3 {
>>> +	status = "okay";
>>> +
>>> +	touchscreen@5d {
>>> +		compatible = "goodix,gt5688";
>>> +		reg = <0x5d>;
>>> +
>>> +		interrupts-extended = <&tlmm 65 IRQ_TYPE_LEVEL_LOW>;
>>
>> interrupts *and* irq-gpios sounds wrong.. and I think the driver doesn't
>> even consume the former. Trying to read through some of that, I think
>> it's on purpose since the IRQ GPIO is repurposed for setting the I2C addr
>> (which nota bene doesn't match between the comment in that driver and this
>> submission - perhaps that's just a SKU difference) during the reset
>> sequence
>>
>> i.e., does the touch work any different if you drop the above?
> 
> Apparently, not. That works as expected.
> 
>> does /proc/interrupts differ?
> 
> When interrupts-extended is defined:
> 
> ...
>  50:        318          0          0          0          0          0          0          0  msmgpio  65 Edge      gt5688
> ...
>  54:       3141          0          0          0          0          0          0          0 GIC-0  65 Level     gpu-irq
> ...
> 
> Instead, when interrupts-extended is removed/commented out, I see just:
> 
> ...
>  53:       2404          0          0          0          0          0          0          0 GIC-0  65 Level     gpu-irq
> ...

Hm, that's odd - I don't see the irq handler being registered anywhere,
or anything requesting that name. Do you have out-of-tree changes to that
driver?

Konrad

