Return-Path: <devicetree+bounces-249229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA6BCDA14D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4A573011410
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D712FFDF8;
	Tue, 23 Dec 2025 17:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ea8i3MY8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TSRXi2nu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449472F1FDB
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766510398; cv=none; b=UyaRwSWPAIN9MXjhpH1EHTxlgngdU+fA/QM2TyeX5UjaHuQgS8iAC02sLI6Z62WaXZ7m/k8qE/f/2hnHeIRdnpG27msYjL17WF/LQadJt51tQdxNcpc1f8Dtg+r2jZ/wFWfhh8ktQmexQqZ+C/46SW7WPJpLhSdxj30MLc/JfYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766510398; c=relaxed/simple;
	bh=C1OMjNE1rZ/jPlnTlN+6hQ1VYATSUBei5WaxZmV8184=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NUO3sds2NhHWRFDL/Fe0xPNlj3Nkr0H/RqfUdKHSv2fC12shlYDKT7cbwbVxO/jYt6qrI5oPMKKsWUmgDpOJXh54fyszpYQdki9D7t36asa8anlVuyka0qCLOFS32p2s5EAi9ndjt2UAOsXEnqswtIO48ysgQhl2N7zXKy+gyz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ea8i3MY8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TSRXi2nu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNGO9uJ1018084
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:19:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oi5KUJIs574ShB+gUaGqSOAx2WDzEm9uNz3ACfTW29g=; b=ea8i3MY8y1ekktpx
	Xe2oUhNAga4SZUck+DDWOEuHVQawgxreOF7dEB8tJR4ea1E+wq9Ft/DQmprL6YTt
	Qc7ymTq2yqPWRWakYT882Rd4oY0IwaNIs3Q7ISzO7rDM6e/0vZ4Af2zWVjmcYFE8
	VKZQQM0kB+yq/MrMpSR2onskNB/bVm+H2wT1oGSoPi8Tt4yB8eRS2JaLGKZqeOAd
	AqIUxXCl65ed6vFSIxo3zQ5bhghs5eDUf6CYtd0t/yQh3LGP0LsgBsTVsghGWoY8
	x9CVtTyg+eZ6iQFV07pxjzIuT7ANdLP+MmBQMg5KzA5F/wG2Osroy/fKTiGFmkPe
	7AZFHQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs85v7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:19:55 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1e17aa706so27200191cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766510395; x=1767115195; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oi5KUJIs574ShB+gUaGqSOAx2WDzEm9uNz3ACfTW29g=;
        b=TSRXi2nu+lZy3JTXXoF1zhzrZ3j0s0xKfaMyOCl7zQH5cJWysAM2tQx3D4rqQrrsht
         GVnyDw2pL6z6BuoANVB2k9pHf2JzqEiIv42dXHwb5B8VwAsChvp+QiqZqREWBxJWwUki
         l4Zi2q7DHoz9ZkuAS7CBsqvhMBvD8vQavfHCbJ6y4EjuKcYWJLyX1WXIuBoFYJdpc4qy
         eEKxOAtddXtOZDEIXLhKIQ9eWegAKcGsyjyt0Jq37lQFxWhdlDSQhVVKj9kSKWQD4Q3K
         ODLsOL42jcy7iPnFnpH9VBF64pzsylYsuo8wibv+N2pWcWPu1iOi97MyQNrFf3G2KPZk
         Xu6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766510395; x=1767115195;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oi5KUJIs574ShB+gUaGqSOAx2WDzEm9uNz3ACfTW29g=;
        b=J+UV1sFWM1vqv3JFOLuOLAzEGetEM93Cf2/ANfLcLR15CUnM8+AD4pIWPA4EI5ooK3
         YBAVOG/phyHHk1f2QySB+6Msm4Xvu/JO5OnxR63zWGY88xvXHE70edqme5OAxUweaZNl
         IKYpyNvPTY8I8b1pLHnMepvjb1KMpBghb9f8uOMKkrJUIDRS5htc26dARLCk+hABGHBJ
         I93ospDzRopR+tenxr9kc6CMuK6fRX6Gmtqgim6okmdviB60W5ZHXpGrGaPXqjJoOq5f
         GN4Wo4HX/jPI3SCADS3c9eXzqT9BiflNRUOsr5JxjXdK0Y4kk3V54o1zfF1T6hGK7kg/
         zFmw==
X-Forwarded-Encrypted: i=1; AJvYcCUml/j/qlte9dr/fILh8Vv23OqHESBAt3UW6qk7530D/l6XE9ChO/cIphMGOz4vU4tx1ih1XKXgrLF0@vger.kernel.org
X-Gm-Message-State: AOJu0YxdMnzUMK1FZpNeRCMUwCnoj+U24gT5rXpyQWBxx7tq585ys0cq
	MmOrYjATN+QTll2cdHl7Q2QzmK2GGIfov6uNPuvhqY8kZjyCUv/uv4oQpvT70mgsBlUyU8kSMjN
	T/xLN9sWEO+AyYx6ehBcgDYuZDlEFGF0j/vFh+l58/HR039u7nCAR/LkY00mCjeTQ
X-Gm-Gg: AY/fxX6FxhDpPeGJHlf0RJFY382v/OaWrTuikVgUJG1oUIEzIy+LPe7VuFGwAvl3mx9
	o4aAlD4aI+bypzaX3fJtf8/E8Kk5HbRSTW0hC/gXc39sFj5Kr4TyQIEHGjvkWuopSPDhOdyzVps
	O8dHotK1LoxUf7ckHDnpVWDC4Kt+CqBzQCtFKyoWIGM91dmiGzziXc4pErH/MCboXyKkZ3CzrjK
	JUloO8wq1Zvmcevnfeh3NqlKU69DLufJDq3TSfvqIHHegD/fEQOEOqNmZYGC06f5JpVvmS5OmO3
	y919cW0s3k2fBZeNXJPPZwe/XBxLsWALEk1nRC+BB/2BxeHWCePgMXngpf0c08W6zTSygFQJC2/
	B4g7xBukbyxq7ggWTKLhOJGQBAlrUzhsUS//cp20P5y7Mxy56vPSlUHHxls7eEZ2jKw==
X-Received: by 2002:a05:622a:189c:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4f4abccb8aamr166332351cf.1.1766510394241;
        Tue, 23 Dec 2025 09:19:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwlWom8ySpQnll7taE0C3O9UAKXozgi8TYToul7Y/+0lazBOIpI26CjfU5F94UonTZypcKsA==
X-Received: by 2002:a05:622a:189c:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4f4abccb8aamr166332011cf.1.1766510393847;
        Tue, 23 Dec 2025 09:19:53 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de11e5sm1438806566b.39.2025.12.23.09.19.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 09:19:53 -0800 (PST)
Message-ID: <700e0aa1-2ac1-4829-9469-0179511982e8@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 18:19:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: hamoa: Add the APSS watchdog
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
 <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-2-fdfc6ba663e6@oss.qualcomm.com>
 <3fcd274f-2502-4b3b-8a39-daf5e1938bed@oss.qualcomm.com>
 <ms4r24li6bk3dvyjas5sor442jvkptz55yisdnaco6qdsyvsda@dt4lv3t366cg>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ms4r24li6bk3dvyjas5sor442jvkptz55yisdnaco6qdsyvsda@dt4lv3t366cg>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE0MyBTYWx0ZWRfX8FKsl0n5ui1o
 TdQ5ksJnmqWqXjHaKPiVkEi5rR5gvqLaW5AYYwdmPBMLRVquVjKdHh2DmDbVIzTTSoobpGLUO+z
 j+O58lqAGDRGF0EjjaaA/Yv5XvBOrsE9+F1YSV67zqUSLkuojCvobCeWw0j60QJdp0KScgfGjML
 85qmgSkVbVNVJrYzjEWJdCBNrIweo39FzXt5YeuOGsF4Q88Eorsi4YM5RgAeTSyFYYPVYKIDGre
 RUf1dyU4A0wsyzVjoY0nq0G20eSzvNiN+VhTUKHuWQNiqmnK9207ughKeURQ63MDyREubwmf8GQ
 /jB72+ePIUr/5nUBK+czVVYOqdsuGlO5jL8X+608qXj+qFd/1zTO3aMbXK6YS9H3W+VuT2xxVCO
 JJvzzwq8ctGon2xcAA7Fq9Gkh3AxUf6i9TiW5cwW/bpCNJdCrUDvdxdftO0oPmtOEsSp9NrwE8g
 dz/hLi2MNdd81e6yIhw==
X-Proofpoint-ORIG-GUID: x3hdlgVXkJ531GV8C2xza7wQTTq49uq8
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694acf3b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Oi0r6S5fsAI7zfWUd3sA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: x3hdlgVXkJ531GV8C2xza7wQTTq49uq8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230143

On 12/23/25 5:00 PM, Abel Vesa wrote:
> On 25-12-19 13:15:00, Konrad Dybcio wrote:
>> On 12/19/25 11:00 AM, Abel Vesa wrote:
>>> The watchdog support in EL1 is SBSA compliant, handled by Gunyah
>>> hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
>>> block, same as older platforms. So describe the APSS WDT node and mark
>>> it as reserved, as it will only be enabled in EL2 overlay.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> index a17900eacb20..b65dfad71c2f 100644
>>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> @@ -8302,6 +8302,14 @@ gic_its: msi-controller@17040000 {
>>>  			};
>>>  		};
>>>  
>>> +		apss_watchdog: watchdog@17410000 {
>>> +			compatible = "qcom,apss-wdt-x1e80100", "qcom,kpss-wdt";
>>> +			reg = <0x0 0x17410000 0x0 0x1000>;
>>> +			clocks = <&sleep_clk>;
>>> +			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
>>> +			status = "reserved"; /* Accessible in EL2 only */
>>
>> This is technically incorrect - it's not accessible if Gunyah is
>> present, which is only somewhat related - if you run a different
>> hypervisor which doesn't explicitly block access to this region, you
>> can still access it even though Linux may be running at EL1
> 
> Fair enough. But in the case where you have a different hypervisor,
> I guess the EL2 dtso should be used.
> 
> So, since AFAIK all devices come with Gunyah by default, it makes sense
> to mark it as reserved (or disable it otherwise) and then enable it in EL2
> dtso.

I'm just stingy about the wording. Perhaps:

status = "reserved"; /* Reserved by Gunyah */

?

The patch looks good otherwise

Konrad

