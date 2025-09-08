Return-Path: <devicetree+bounces-214165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F51B484E3
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 09:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0208175130
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 07:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86852E54D3;
	Mon,  8 Sep 2025 07:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E0BQAb9m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D97623815B
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 07:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757315797; cv=none; b=MT19iDFj14LDzzWDLChnQumCI078tWkTazuBBclsRLzYL3/G8mL5M1+Jttx2zf2EBZ01YbKtnr7z1unf7pVT/UuZaH96lUQT3U9IsMnemUkrFGRoSiYv80xFfI4J0toT3Wk3FjyLsEx96rE0AOKW7R+EwGMvLog/hCDiqUL2PCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757315797; c=relaxed/simple;
	bh=0jZlyef1yvCqYyJvmMqZtF1i7wr8h7b7GqLpH86XQvA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o01seI2Z5bqB1dIGZVFGJFhJNtPkOZjBo+/UAFRr54WH2ItWNLEFt5RRAMlP3GuyCNTajdi8zep6qsF+LhZ3Whwfvu7LjONxoEhSabeQujzTnLbBT6BnglEGj/CW0uWzw/2IjY2cgjXQ+TWlC78iH7Lt9ZrRHGzh6ozcy2yXfww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E0BQAb9m; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5883kJUs011910
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 07:16:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZaKwF3uTvV0qt8pO//IeFHi+qzIUMNGv1KFMfckt8OE=; b=E0BQAb9mPmuozXUc
	MZp6LbIFfcTrzbktlYQW0oNLK8BLL8KI2MvRVU0YCJtbe129HTqEYXKukEnXFeYY
	Z9AvQym7Y7G+HdSCWYqX8ybqUHztR6Af3q7nhZCrJUhkuhMyX5m8vxsGYm05QYgG
	tpuRvSvqEMo3lnOvY2DZ9r/5/uvIVoUYJmkzhor1rPdaNZL2yMTBdnmARetqLoD3
	RzbUOsVqDItmNWvoFwpRD4b4AnnGC70+r/EvSo999YHbXox4o6yvSD08BXGGL3qH
	OQ9peWMvvQ+aZkFq51+x95T5W26XMF1k6kn2R93slZIAroLRoTwUa6IjSVo/L847
	1JjhVg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491qhdrerv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 07:16:35 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5f92a6936so8490381cf.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 00:16:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757315793; x=1757920593;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZaKwF3uTvV0qt8pO//IeFHi+qzIUMNGv1KFMfckt8OE=;
        b=KQ0FECl/4ACEXVd87daxSDFbYjILNgzOk3nb6mrduKtvw548S8hcax8RbxvGz0CClJ
         ZoKG75q5zbnTog3aODb1844jXhhzeBPKmPrJln7FKLJt5HRTXouF/oGGqk3QG81NzZCk
         X9K0CJ01k5N6AH/4wz6DCe4ax441cknu8uuXIRoN0qnLxFlaIIOc1tfm6TmNzo1iULXa
         m0UMMwr0ajfENoPAng/1Sym8VgOZ5F8BrVYE5A9/qEJzoRmDs6aiOQVmKGIkO+50H6tV
         jXE+RVFqTdaKKhQAYTmLC4zoKt8xlcvJim5mw78zY/jxZNRJuxNDN4pflxDkXiKavAT/
         xVmA==
X-Forwarded-Encrypted: i=1; AJvYcCX5H5i6rWhcn5RD6hGA7vBsm/I/ShWszpntmIC+i2VmnaUHE6VeMwx/vzs0/SgZpPZ3XKw7pvm44Aij@vger.kernel.org
X-Gm-Message-State: AOJu0YwmmAe539EPjYWsqI7D2khtedOb6XGrkkxQRYfgUbXxqEQAJ6eq
	yk+SPaZ2NMJxbp9Xlh6IDXNmS2+LQ5XokMc4a78eBh9PszbHgLFAIkh58uJjA5c9KvNwATbbB9y
	4XYT3XNZr7tTNpR0HVw9Om8LTHE7A/75Cd4L02rsmOperK9IFlxF5kRyia711uWB3
X-Gm-Gg: ASbGncvji352y+CSjv3PPDM6UqdvSggTvhXgsHstXmY9ANq9U8OMlikVJjYX9+2xbDR
	MG7Nkc3pnxqQSseX8WT7IlBRabkPqaDHpI6tz3+Bw0b+2zE528G8NN4rtFNYsmj8JWauZW+5o0s
	pQFbRrl9vPZmkKvq3rigQObda7735fH6J09Nr0lm3jx3WcY2nMJIkaORE/uEnD1ocQVrlHP0YSg
	+rPCWFwevFpgYyBi/MzZl3EV39mmEIKX2VsNOhbcJgevY/YNTaWXB8Iu5lLT0aoDh/kudu6Lf7v
	DZsfXgHGPorzuY+eU/AOjELw41f72SvcV3e4ZQNf2capZj2vF66Bd6oSjMzPSHKt7/AIP5Xv6jg
	oukiWsrjRCCAyNQnOjaJazg==
X-Received: by 2002:ac8:5981:0:b0:4b3:4d20:2f9 with SMTP id d75a77b69052e-4b5f83a513fmr52719151cf.4.1757315793087;
        Mon, 08 Sep 2025 00:16:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGleczMa2Q7omIjZHxAPAoUdrSH+RT9RzFZmldfPTQGN+mYVhUoCTb0CBLPp6B4wg1HrxnQCw==
X-Received: by 2002:ac8:5981:0:b0:4b3:4d20:2f9 with SMTP id d75a77b69052e-4b5f83a513fmr52718941cf.4.1757315792535;
        Mon, 08 Sep 2025 00:16:32 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff12a6b404sm2323810866b.88.2025.09.08.00.16.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 00:16:31 -0700 (PDT)
Message-ID: <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 09:16:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: PJc0ojcCW325l67h-htPvKX7ntareATZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDAzNCBTYWx0ZWRfX/pP3af9bzeGR
 Zu47elRk/SbpUacwnReiPEjMvRCXZX5OSIfV8e02txV+5RE2bE56+LFpjUBHUb7+kwU4Il5Blx5
 4+SU4ns8ZunLgVYmV9W1B/hCOm/GIVXcjEoEs6NyzBm5hDQK555XngdJpxO6WKOfb5+hGnH6SpN
 3PAZBZcSQaowOOU5ioMT5eiODojGHBgn1AXO6+etHi2EPkm/lIEHnKx2q18YJ0FAM8bULgKpQvq
 H9D1O4EUy6qoG9i0FtaZdDXBIL8Ex/EMN+wFvM3Y9W82S5lAXtB6fBsa3PtlNAGgOUE9l9It2yv
 Xq+frspO9G1GccliosWHHsMRpnHX15w4YINdC1EgIY4kuOqjCHqQ8sulSH+Eb/IQbtx44L7sD6l
 muQlHX33
X-Authority-Analysis: v=2.4 cv=YOCfyQGx c=1 sm=1 tr=0 ts=68be82d3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=kc4OFxI6wrfgCCI0QPcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: PJc0ojcCW325l67h-htPvKX7ntareATZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080034

On 9/6/25 10:41 AM, Jens Glathe wrote:
> On 21.08.25 15:53, Neil Armstrong wrote:
>> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
>> connected to the third QMP Combo PHY 4 lanes.
>>
> [...]
>>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
>>   1 file changed, 44 insertions(+)
> [...]
>> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> [...]
>> +&mdss_dp2 {
>> +    status = "okay";
>> +};
>> +
>> +&mdss_dp2_out {
>> +    data-lanes = <0 1 2 3>;
>> +};
>> +
> 
> Hi Neil,
> 
> shouldn't mdss_dp2_out also have the link-frequencies property?
> 
> +    link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> 
> Or is it something the bridge already negotiates?

No, it seems like our driver falls back to HBR2 (54xx) ever since the
driver has been made aware of this property:

commit 381518a1677c49742a85f51e8f0e89f4b9b7d297
Author: Kuogee Hsieh <quic_khsieh@quicinc.com>
Date:   Tue Dec 27 09:45:02 2022 -0800

    drm/msm/dp: Add capability to parser and retrieve max DP link supported rate from link-frequencies property of dp_out endpoint

Dmitry, is there any reason not to allow HBR3 by default? Is our dp
controller/driver not smart enough not to advertise rates it can't
support, during negotiation?

Konrad

