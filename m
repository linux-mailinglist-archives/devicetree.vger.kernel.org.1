Return-Path: <devicetree+bounces-255838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6267BD2A80C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 04:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2799C3010FE4
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E793385BE;
	Fri, 16 Jan 2026 03:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oU5jInwQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LXPaiv6Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654B01E834E
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768532714; cv=none; b=Z7KLB6NCTAcqUhqr6Y3m+GhuCfEf4l8lg8ZvEjjrMnO0SqlhlvNWTTxcXXauf2Ybp83CuIHR12LNnLqXIR2ppkYX39KaTYimtgKPgqFUe6+zrQc9YI2YJlL6yRPiW3sbXF1GUMnEWKJDKDm4vlhRIz9rjJoWQcpY9Yq2g2IPZJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768532714; c=relaxed/simple;
	bh=MYYn7IBaiF71+cjYabc39BcuWiYd9J/fPB9kVpjfuS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CJLwuzWurMcRDpAz+YrXXQnlR44vpeh0ZeIvKlM7boJVyeUq7MNWLRhx8V9TVhO8nAy9KU9hiMP8P8V0FFjxbN2wQ0g6x0CWOIBDXgBGWejAmWGZvANaa4ZqCeD1PtUzKbB8bi0T5xTv/uMWWomN/bSjw8eOsjZDQGXvPiZ0tEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oU5jInwQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LXPaiv6Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMkgqx3892688
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:05:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oFWEQtFOz7NRpxeHXeoyM7V/F998/gk69p2GzaGQdUo=; b=oU5jInwQ4Cwn1YNq
	VeH/hVxJfCtUmSCO6RQN6ISLsvbtqPjP1CKNv4L1f7T+8eja2xXfYGlqRNFLPh1B
	NYdokrBBaixTWZEbwRELowWtehX/GJx3Ghd3VOqLWTqdlL7wHNDETxM37RtSuUfG
	bGCAeA8xA7r8Y2/dxQTyo+MB0QaFfEhXVEUowUptmqyKOpkg3pp2WyZmkfax0DIT
	p8CnVIDZCk779Tl9+FabKOvSb5l5gLQzVOw3mudE5vhphc5W98nuvVKjJnohX/fW
	RBuV5ePDtA9eaQPbpHJH8u1AEkr8CXXxcobjLFVThWlJ+q3bIYQHKkyKPyfGVYmF
	tHia/A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9b08j3g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:05:12 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b5edecdf94eso2565463a12.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768532712; x=1769137512; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oFWEQtFOz7NRpxeHXeoyM7V/F998/gk69p2GzaGQdUo=;
        b=LXPaiv6ZnRLZgLc8TjzLdxmckA6eXm6gqmeJZHgCokQajS56xMDmKC3YOTAILwln2v
         yqdrUBWatGcdOfH4tXeqCB1WwPmzx7oGFOUm1bxv5RYhYglZKdNP3FXTbqUXnZ5Ko60U
         whkSGBUMI1bYl+YsTmrWiHHePLT3KID1UUdK/LFX/dfnwcD6Csg+rJq5253Iz/OaPmKz
         MjQshS85EKqEBAgUw0/M8ED0znOvmg6TL8TrcX19bnweDCTsSy1fQg1NuCAg7/65DvDX
         RJWeqErLB75hWoB5Gv8MRvcxdUrO1z3Kml4JAdH6aQEDBk+oHP1LqIbWqPI5IoU+fubp
         txNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768532712; x=1769137512;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oFWEQtFOz7NRpxeHXeoyM7V/F998/gk69p2GzaGQdUo=;
        b=Dq+2RCUO4PITnR4fipqLEVTfG/155gC3Z2dGQzpWQRofb7O6fD729cgdI1HclG6Xqn
         hoLT/3UFB5u2JkxZoXa5YCozx2uT73gsFkfFhA7Nm3Eg/K8Bb/opKV9tLt35c7kAojDg
         JDAmo3lgxDQAjkCKK3FK1t02KqAvkicwX97N9CaPZMPXGa0lV73fx4s23h90FUu4Wg+H
         /0ISWJI9NJVAEkRHzgBu2gkIZCvk7MbPTaNABEtYW0o9WaeoalQUaRBOAylQk9oQQ1WO
         sLdD0NDrO6QtHHtdwKHM9yNWzDYqhWr7XWqwkljs7w5H7kEVN25OnUUPn0MWmrCMoksP
         JL3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVBhw42w7JKnA4aHnHQf8IAwnS2YJv1VpGuNWgj7bw1qSFpO6egnivDgjIqnvJm8Mt6dKq6HOAmYkie@vger.kernel.org
X-Gm-Message-State: AOJu0YxMYumJM4MHgbe3xCLdUFTH+jcYP42NNsPPH91Z52LkQxvm3baS
	sKNxvJUQ08jge4TlXx1QqE5Rf7wASG6JBA8Prrb34UejK3LQOu8z6OoqdVVHzhWie5nOIP0sSGk
	BB6JmUGOBom9W/UjyLp5GzA/uEuP3kISxyKvbBE72xBIDSnqBigiC2AjzOJW7fM3g
X-Gm-Gg: AY/fxX6G7JuvP8T4zqV8Zu40VpHImxHYLskuBqM6l99S9PY8Om4xRYE4DUG5/EWSY98
	bcEo8QbOQf/KgskixfjGLspvAOCWw3ROk3fH2ipLpCu5sBf8HNXkgGpmuzTqe5y6aL8vZaNhNBu
	AI1R2bCSdmy8qEKElZmojT1hhFZcwpXWLll5vOqzld9Ke8fFHTauksXFevTEWOS0/zdx2cRt+TY
	DFNa0FIaJsrM4/xKqWEeNsEkGVjoG4KG0KiofljAv4YkmBC5CdTmb+8hD4aCQXNMYB6UKwRzk7W
	wlDyvibM361ffNFBOfMX7PwzRm3Lp0rN6rAd8e8yjVXAAww4327pobINNoexGoz7ldMrkueD+fG
	Oe5FjsFTLXoHx0XrXs7mQVCwNkaS5E+07CNjdgQhC6Zn4n7o4YMBGaWmz3+EAaw6vEt1iU/fvqw
	bhQEnQ
X-Received: by 2002:a05:6a21:4cc1:b0:389:8ebc:e105 with SMTP id adf61e73a8af0-38dfe62a41cmr1883559637.12.1768532711887;
        Thu, 15 Jan 2026 19:05:11 -0800 (PST)
X-Received: by 2002:a05:6a21:4cc1:b0:389:8ebc:e105 with SMTP id adf61e73a8af0-38dfe62a41cmr1883533637.12.1768532711477;
        Thu, 15 Jan 2026 19:05:11 -0800 (PST)
Received: from [10.133.33.232] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf32d68asm619507a12.18.2026.01.15.19.05.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 19:05:11 -0800 (PST)
Message-ID: <8ebf95d7-c401-4480-8613-b52ff0726cc4@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 11:05:06 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/10] arm64: dts: qcom: kaanapali: Add support for
 audio
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-5-a6cc9e45de93@oss.qualcomm.com>
 <vyvijzse5wb4bhepmo63gfljfhya3oqi52ndl3l47hgtdmch3k@yj3aj6ayrp5g>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <vyvijzse5wb4bhepmo63gfljfhya3oqi52ndl3l47hgtdmch3k@yj3aj6ayrp5g>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: H-JRQ5d1Ht4_qj31LR7cR5wRf1oOCT4F
X-Proofpoint-ORIG-GUID: H-JRQ5d1Ht4_qj31LR7cR5wRf1oOCT4F
X-Authority-Analysis: v=2.4 cv=TcmbdBQh c=1 sm=1 tr=0 ts=6969aae8 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QNZxt0m00xnFyskCP_sA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDAyNCBTYWx0ZWRfX5C0WjNZXJvPH
 6T4R3Wi6X7IZOKV8AentP/Hn9+hCZolexq6DLqipZBl6eYll4kxCqxPvzlTZZysbtkHHLiiKFJC
 YIzVVrrRuTUZbnq77yo1xn2Zap21rxpI18woJK2Nn/Vb0u2MCtJnCci/iM2rjXkNbEAqBStNaLw
 r/prcauirrxbFikQTsXZEM29C6bUPtJqciUqNPshZgE475hGqjy0cocoKoUcaVDd5jcoQuJ0Yn8
 kMZWwmRtGVNYQPxYXpfUJffd9/uguzNFup91imqdjZnCeFXF7k19RYBgbUPtf77G+CvYSAlDBf1
 WuUWzhGVuVpHi8mrHczgdwNP/3P+8uABWBzEmeGLktYbrcIv59Z/42oFOy8zR2U79vJ1Mvy+R3N
 VZVqSzlQXsMfxGgsAIrKNfSki11DXN5tsZaIGnpegVKokpea1APU7ycG5wVoFtUKqh88bCXj/N2
 9kD1Uiu2YO0xpJhXM6A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_01,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160024



On 1/15/2026 3:12 PM, Dmitry Baryshkov wrote:
> On Wed, Jan 14, 2026 at 10:49:07PM -0800, Jingyi Wang wrote:
>> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>>
>> Introduce audio support for Kaanapali SoC by adding LPASS macro codecs,
>> TLMM pin controller and SoundWire controller with similar hardware
>> implementation to SM8750 platform. Also add GPR (Generic Pack Router) node
>> along with support for APM (Audio Process Manager) and PRM
>> (Proxy Resource Manager) audio services.
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 396 ++++++++++++++++++++++++++++++++
>>  1 file changed, 396 insertions(+)
>>
>> +
>> +		swr3: soundwire@6ab0000 {
>> +			compatible = "qcom,soundwire-v2.2.0", "qcom,soundwire-v2.0.0";
>> +			reg = <0 0x06ab0000 0 0x10000>;
>> +			interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&lpass_wsa2macro>;
>> +			clock-names = "iface";
>> +			label = "WSA2";
>> +
>> +			pinctrl-0 = <&wsa2_swr_active>;
>> +			pinctrl-names = "default";
>> +
>> +			qcom,din-ports = <4>;
>> +			qcom,dout-ports = <9>;
>> +
>> +			qcom,ports-sinterval =		/bits/ 16 <0x07 0x1f 0x3f 0x07 0x1f 0x3f
>> +								 0x18f 0xff 0xff 0x0f 0x0f 0xff
> 
> Use a single long line, please.
> 

Well noted.

Thanks,
Jingyi

>> +								 0x31f>;
>> +			qcom,ports-offset1 =		/bits/ 8 <0x01 0x03 0x05 0x02 0x04 0x15 0x00
> 


