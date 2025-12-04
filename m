Return-Path: <devicetree+bounces-244347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD1DCA3E5E
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:52:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF5B6303213A
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DDC533506A;
	Thu,  4 Dec 2025 13:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KmytyAl9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AgRjLS8G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFF01C5F10
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855860; cv=none; b=glxP4ATqoccH8jf3pKJcr9OWEOmw5xTkLkmaJgAZOH0MoKCoIbAxDT72Q4fs7Dc+OBtvASX+jgZfVUfV4+LbYllVYRn08xsDJQjjlFBT6PXUbmsAj7G42PblLkV7JUUvcLg4tqUPZcZMyVPBsxIUXCibupUUjO5CbtMAlZaV2kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855860; c=relaxed/simple;
	bh=q4KD4cVSlDuAzfBKa3zsAeOfLVydQ9sqir8iVPgX04g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N8wRANv2iLo+wUoAq5kekV4Cr51wiZqDb7uDRuugdfxkzg6BgmLP/s+3TqyoXWn/0FF0qdrI/4fUELY6I/PRVXHSuUA0cgUwcrBMUu8diGDSWxR2G/GNc4q6xL2FPQ+y9ghs0LUEhrnjStf/JLBrHKY+HpRi9ZrFN6X9D/OcX7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KmytyAl9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AgRjLS8G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4C9kE4909339
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:44:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VuMjoJf7Z7/FAefGCxvNyyNJqAtfU0jYooIK27A9/6E=; b=KmytyAl9UN8cj5M6
	H6TU4PMNsTmbYnd5BmQLz2XN1BIHG5ByA2uyZ61/ozO6ZWoCdXfqyMkyvecgeb6O
	aSKNDLfe/N4WlxQDpNko7N/nCMDuxZnqT5OGJUOIwGQgtKtaXydk8UISR7J95OVQ
	OPdwJ23g5E43rBwA6FhXAjrmFm/dttJ27v7b1A4kTSSCDpakzAxJ+YqvYlQ4E4KA
	JAcrT4taMYttL7Dtq3luew1Hb0cg3oIyNtv9/yD3OJFKFAHtb4PzfSzGQWax/N3e
	s/gea5KPr1qrgky003T5NazzcCMLrA18AFgShnGsm6I+xkJukqxzq0KJ4Fn3czZe
	baIsaA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aua2er7d8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:44:18 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8823e9c63c6so2388256d6.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764855857; x=1765460657; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VuMjoJf7Z7/FAefGCxvNyyNJqAtfU0jYooIK27A9/6E=;
        b=AgRjLS8GXOJc/zh4cmd7NVBRazx6QT2mMZFyWcj3/XSo9e9Dd8cwipmi9ZS4ptXDw0
         zTQs9WVTKdBKmM1AwD00Uro7V09Y7vOg103Kblcm84eSKiLPyPSva/hWDgM2TZoh0wQd
         B2Mz39+hJfYDKCszQO//q58k4zXfR4dR9/VMp1UKP49kvZYxAL6THpF5IqzKkCemd/8V
         mPf50Gup4Gmo7qN2RxE2HfdAC/ZVDyfsS+D6nqOAy0ardu6zXqlrAoKeP2N7HEJVyyS+
         LPtpji80hrIQOO40AoLHK3rWHrU9fvsDoT1d8GAfiaWhVaGgKRgvwHLuMcs54DAMwTYy
         6vZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764855857; x=1765460657;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VuMjoJf7Z7/FAefGCxvNyyNJqAtfU0jYooIK27A9/6E=;
        b=Ao70R2ZVY++4t8EQ7f5gyotw0hEsZ7+56i3MGeS1OFpThZa3TrFRt6HQPyFbVbaswz
         bgE0zpgqiTLI9/HH3YdpRP+kofeUJJSdiZgfi3mgLOC420rOCD7rSqzvmtkvJNEE+HHI
         ZR3XHT2s43MRwjKZiOzGFpbA1WA71W5SQF3LGUUiPGUpCdmHrwzso1Cx6FtNs2hFWGSR
         Fb9nToCPyaVs9PFhvHrg2dGk3QKMlxKE4MsqtIdm0x71dlndlEkj/Um/cdB0ZJTigF6E
         4inX6OZW3ZIdRSoU5tBzXP4+JHtqm1iMUyg3G6vt+wKMo8OF/Gii0L197E+LVGf/+xLp
         xPXQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2GKXoVSiLN+eJE6GoVz91/h95ZppawyqfXWsNU/1usnI5BxFulADjspZezBCsfDqN2nnJsDl1XwAz@vger.kernel.org
X-Gm-Message-State: AOJu0YxBancI6mEbJ/7v9NswC+GG0cYa1WdX/BVHplVoK+0kdlkGIN2r
	/UKgNeyXeIux00rhGMIoYVwZD9qromkS8q8xnXX+RgaAgge/nEhJZo709RJwvvlRKHbazfQQaY6
	yD9xW0xNFvrTZnEOl4k4MMCNQgQh7knPvUWw0pDkKuApsR5HBhypyMou9qFCY8B/7
X-Gm-Gg: ASbGncuBrWO4ZLAfIWJxv3GsDQhPlYYF+9c3sIjoIvcH6oU+UmI96Jolqo8vxiREn5e
	4VE6zbL0gXSDlNBcbXJwsxBxp2S5maWzH/Jq5Sr38t9GPLpASXaFfy2CZxpjFeXCt4ogTr6ARkG
	oUD9otTG9RH/8PhA81Utq2lLxhe86nhF7/r3FYxeGKavXoTuVWN8fu89YcVzFqd4gvbJMK06h82
	0grZlJnA3+INPkVPBWO0vhR46GFXna60+yauqZdTs8E58b00rjtf/m7rIzfPOIJh5z6AVIRAGSD
	/+X0d2BQ4fgES16Gi1EI5qIpJF3jVGP4NNnlZw0JcCs3OhfKIDZ4UHuRAcuNxj74fIHV41wPupJ
	+c+Ow+BIXzFH7h5y17uwh0uFOqJ0rBmsoIW2G2IrmMR/0sqXnh373sxWCKM+MDrowLA==
X-Received: by 2002:ac8:7f08:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4f01b3b1c39mr50940941cf.9.1764855857047;
        Thu, 04 Dec 2025 05:44:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEN1M6ngwpDjpQ/VGMuF6KhV8RlrRP2PMlq/4migCBT4ot8bulRik2QPjfWg+5vcud2ZLBeZw==
X-Received: by 2002:ac8:7f08:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4f01b3b1c39mr50940731cf.9.1764855856536;
        Thu, 04 Dec 2025 05:44:16 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4975c88sm130358366b.35.2025.12.04.05.44.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 05:44:15 -0800 (PST)
Message-ID: <08284b5f-a6b4-42f7-95f5-28161ddcd356@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 14:44:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: x1e80100: Add crypto engine
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>
References: <20251127-crypto_dt_node_x1e80100-v3-1-29722003fe83@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251127-crypto_dt_node_x1e80100-v3-1-29722003fe83@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 6Mel56-PGLVHdJqbaaF4elxt0w8vRLwV
X-Authority-Analysis: v=2.4 cv=Rv/I7SmK c=1 sm=1 tr=0 ts=69319032 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=hGZLfD6879LPmVnhkrMA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 6Mel56-PGLVHdJqbaaF4elxt0w8vRLwV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDExMSBTYWx0ZWRfX+6Zrdo+LUhdn
 3ShQLBbaHSnHgzfGqRK3TEdK9imNEuXGvWrVzy18Ul3xUBtIFUeUFyGTnbRNuS7cDLCZKAuueo/
 uoklHoFtfpa9GImKEcgVvhw0hTO7DINTu7VQXfscM1W5h1IspqDG54ZsHs2PcPMb09+QDl1P9un
 2Kev/s7vLoKHSLFTyTV6nf3Ba4yy6zHWccsfdaHbyza7kwKHHXMfvpgq5S0tyVt8BfuPPkzOu/W
 V7ALhXFZZ+NXdOGc/KpO6cuMKgW0fOE4LU9vBWfZFYO22YGPKd4VG8u3+LRMI7AUBJjK3rX7tJz
 Xn7Swnvh74qEOBiaZZkfS7QopR7JiWVBbI5qbqFL4hiOuUMiv3mMTQrtZog9LaP2BpGGzItsuXg
 chEp97Jd9F5xpDn0CTJrr0wapgLrGA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 adultscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040111

On 11/27/25 10:43 AM, Harshal Dev wrote:
> On X Elite, there is a crypto engine IP block similar to ones found on
> SM8x50 platforms.
> 
> Describe the crypto engine and its BAM.
> 
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---
> The dt-binding schema update for the x1e80100 compatible is here
> (already merged):
> 
> https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
> ---
> Changes in v3:
> - Fixed num-channels and qcom,num-ees properties by updating them to 20 and 4 respectively.
> - Link to v2: https://lore.kernel.org/all/20250221-x1e80100-crypto-v2-1-413ecf68dcd7@linaro.org
> Changes in v2:
> - Added EE and channels numbers in BAM node, like Stephan suggested.
> - Added v1.7.4 compatible as well.
> - Link to v1: https://lore.kernel.org/r/20250213-x1e80100-crypto-v1-1-f93afdd4025a@linaro.org
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 51576d9c935d..a1cadcce98e1 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3033,6 +3033,30 @@ usb_1_ss2_qmpphy_dp_in: endpoint {
>  			};
>  		};
>  
> +		cryptobam: dma-controller@1dc4000 {
> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
> +			reg = <0x0 0x01dc4000 0x0 0x28000>;
> +			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			iommus = <&apps_smmu 0x480 0x0000>,
> +				 <&apps_smmu 0x481 0x0000>;

Just 0x0 is good

> +			qcom,ee = <0>;
> +			qcom,controlled-remotely;
> +			num-channels = <20>;
> +			qcom,num-ees = <4>;
> +		};
> +
> +		crypto: crypto@1dfa000 {
> +			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
> +			dma-names = "rx", "tx";

one a line, please

> +			iommus = <&apps_smmu 0x480 0x0000>,
> +				 <&apps_smmu 0x481 0x0000>;
> +			interconnects = <&aggre2_noc MASTER_CRYPTO 0 &mc_virt SLAVE_EBI1 0>;

0 -> QCOM_ICC_TAG_ALWAYS

Konrad

