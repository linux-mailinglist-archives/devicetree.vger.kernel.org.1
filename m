Return-Path: <devicetree+bounces-195976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA38B03B57
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D07381A600E4
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B252242917;
	Mon, 14 Jul 2025 09:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XqSuegzd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA69E233712
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486679; cv=none; b=bit4CWDdrOhhqW+5CyhsvQugcDI/1JHpnKNHI6oYEXk3SeTOSMzKkJYAWGqml4TZWswG88icWUQ5kPVmov0r2fVyuMS/wvdxbP1r3xwTdqCnDKxyW/EpKReLdXohPLd21B3UYjgkF1jh7RPx6+5198vlMO3CVb6Kpi7C5DxWatc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486679; c=relaxed/simple;
	bh=8Ixlobjrip1nqcFjIFVor5ZHH7s3I2YBGrk5vIYejjU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aZUQm4Fq/t9Mm88Hn8rVqxfpLYRBpOrZwnd2+lea9vCHYKcokuAo2sbfQXN1IqVctDLi5U4RViH9m33MYQ6RH9c4vCz2YVwF1iZBLlGEerNvsuUWpHYbyGiQgQZWsSyIFJHf5sA1pGZ5f5aIqeJMJ0GxA/NhIFgiBXFjRJLp2x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XqSuegzd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DLwpoj009120
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:51:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SE2IeTtrk0ayPpQnvY7BshNOEiVEINT52Om3cziuSro=; b=XqSuegzdbdlYtAIB
	+fPKtELUSajz1GVkl/bAvoZi6s3Vi3j6V+xZqaEgUyhY/FAlXMcey+ADW514r/Jh
	qgABRdwPMqpsaz7tA1ai16n2L46rRbNYI8qy4Nd6FSzCmfV4w33rw/APz7CLIHLQ
	mGJeH7u7noCbGGs6P7h53e/DclH1ngkdh0FJumRZIq9fVj4ebDbIwOnTj7brFeU+
	ZMw9OM4QEEIqsij6VUTzhUI3Vd+qxE1dykwyxCAaKY38S7KHfDVPEpsdPEttzatv
	u+VesQ65/QoB7KwU1j09tmta6HjrL45GKj2kFDzmL1lcqD6KaaOumTO1GKlaR3aB
	LKtPDQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut415r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:51:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab61b91608so2564301cf.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752486676; x=1753091476;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SE2IeTtrk0ayPpQnvY7BshNOEiVEINT52Om3cziuSro=;
        b=szwdn9HttE8wCzt2pR212u93imNHXM2aKj550M5VZBTO/lDVXJw3QOt8ajg5ZYM/HT
         S4Po/nwZN4ytPHku54zfspMR/jDeAGDi03FkYlDOUQ0wGNM0iYK13mYS2eXbiF0Q6t6Z
         3eLM3mNYIbsBR4M+8kSEGx0AWXZQbP4NHZPAs+cC36jDX9OSvEwXtBmWTmUgftrtPQif
         Mj8Uhg+Kz8/Vs3MyxOdMflhdbsu9qs8MFjzleuyAUKN8bJmUJTuxuGNgQG6KAMVRynWq
         95j9KEvYmeZGJoL+n5QClnZha6jtDx78Sr28CUbE5CP4ZcXaa36kjPrptghtJoyVDCfb
         UEEw==
X-Forwarded-Encrypted: i=1; AJvYcCWBx6rxpzEhuB2gXK9zc/r5lwKQxvRMrb/3bqJO3Lk1PbzCdhNMfZK/yR3wsbQVJR0gjqGTvLkvBtH0@vger.kernel.org
X-Gm-Message-State: AOJu0YxasiQXGTLNd9/JZgaIKuVyziYPAg7KYQgWZP1pjph43xEUGhxn
	8oFb9j6WqliN46+3fqLryMIdkz5nI3s3uiL6vrQWWWjBnytprjno5hwLaGmAzSmDJIRm4/9GaqW
	7dYfbGN6TT7xz36bVyIKcRJMW4ofVeNlZ6ctp7DOJkBKf4Zqz0pTLCLe+ywQUb+5Y
X-Gm-Gg: ASbGnctORIUZtvFOgiz8bkqtv22YLFtDX+lYhLMtXqpRRgqMg4utUiop+eazzzDxTPS
	HakrDTCJbC0e+4ro3q8+lCwaQ64GbfY4kJnVnozy4AKYzXQgxJEJY+eny1ROduewoW6Oqwy9hJm
	sQvwc3wdF0wj6U30VqumerOTkHIJ+poFj3QjiQqIpkJXu1iVbMGixQAydOb6Btl1k1DmfhdmvxB
	YfUkNsTjl+8U6bf3uWdAP5oHffgYN14Zlgbb3LWstioLSUz1cEqbrfhqCfEvTFOyDitNZVBl2D8
	vuuoWenoghWBIeq4Z+mSwPXR4oKpWFPjpIipWH/J5LH504YAK7tcKpoIBcFA7jyhaUjVMjnr6At
	N8bSCWm7Mpjs9zsk2SdH7
X-Received: by 2002:a05:620a:3194:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7dea52c0555mr549788685a.11.1752486675805;
        Mon, 14 Jul 2025 02:51:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKaqv78TXsNVN0OlnoiB6VdcywFZex0vYLYPu8U36H8V1H9RGZypSEPq/6bJXicQzO2ZqZpA==
X-Received: by 2002:a05:620a:3194:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7dea52c0555mr549787385a.11.1752486675216;
        Mon, 14 Jul 2025 02:51:15 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c9733d71sm5932247a12.43.2025.07.14.02.51.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 02:51:14 -0700 (PDT)
Message-ID: <c67dc09a-12e1-4764-b0f2-6c18bc341b7b@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 11:51:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8450: Flatten usb controller
 node
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, neil.armstrong@linaro.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250714045310.2092385-1-krishna.kurapati@oss.qualcomm.com>
 <20250714045310.2092385-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250714045310.2092385-3-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=6874d314 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=DX9r8lL5g7En1aC3f4oA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: HRIEzmXSJFo0iqBNUIWrHv3905U6dbZV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA1NyBTYWx0ZWRfXydSBm4z88z1s
 karo7qMJvtCdDlKZ4SLR9iBwfdbdYJO3oz9ahzJntM8c4FQvaAqCRSH1k7EPrwng9qXtQuiW611
 WmGvH+ASMYSISpdU8DuqGgu+bfVRn3JQqSfr3K6shAAxBIumHOPHUXNSuxhJTQArHHIevrFkJ83
 zyZo8KRzQL1FKsgZswHebYiWEyLoaqKmNQ0/oJ6ImkqTR2FZXOAojiRsypwbPD0pu2Dz/g4ZOYf
 hrHFmSfW7AkWQzD10NU5BL0DaZ0T/5I5X9meaDybilLXYof/lrAAoeILD1MgKcyEkbr/cuetZKr
 Ib9359WLHzpRL73ShoXNSsW3xjl92JobTS/1NVVM4wZX+6k4ZTy0a64OxImdc4bB8YsrKSvR0T/
 GxZ/YXQTxN9ee1QZfQijJ6EGLoLzQrO36i1X3PIjG0mDhRcd5RCuIZrwXk+weXDraJ1r/w9j
X-Proofpoint-ORIG-GUID: HRIEzmXSJFo0iqBNUIWrHv3905U6dbZV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=804 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140057

On 7/14/25 6:53 AM, Krishna Kurapati wrote:
> Flatten usb controller node and update to using latest bindings
> and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450-hdk.dts       |  5 --
>  .../dts/qcom/sm8450-sony-xperia-nagara.dtsi   |  5 +-
>  arch/arm64/boot/dts/qcom/sm8450.dtsi          | 57 +++++++++----------
>  3 files changed, 27 insertions(+), 40 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> index 2ff40a120aad..0c6aa7ddf432 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> @@ -1199,11 +1199,6 @@ &usb_1 {
>  	status = "okay";
>  };
>  
> -&usb_1_dwc3 {
> -	dr_mode = "otg";
> -	usb-role-switch;
> -};
> -
>  &usb_1_dwc3_hs {
>  	remote-endpoint = <&pmic_glink_hs_in>;
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
> index cc1335a07a35..6bd315e10992 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
> @@ -781,11 +781,8 @@ &uart7 {
>  };
>  
>  &usb_1 {
> -	status = "okay";
> -};
> -
> -&usb_1_dwc3 {
>  	dr_mode = "peripheral";
> +	status = "okay";
>  };
>  
>  &usb_1_hsphy {
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 54c6d0fdb2af..77104def5ced 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -5417,12 +5417,9 @@ opp-202000000 {
>  		};
>  
>  		usb_1: usb@a6f8800 {
> -			compatible = "qcom,sm8450-dwc3", "qcom,dwc3";
> -			reg = <0 0x0a6f8800 0 0x400>;
> +			compatible = "qcom,sm8450-dwc3", "qcom,snps-dwc3";
> +			reg = <0 0x0a600000 0 0x10000>;

I think we want size = 0xfc100 to include qscratch and DBM (but
specificallynot BAM)

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

