Return-Path: <devicetree+bounces-195944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C57F6B03A52
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1AA6B17A5C8
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D38823C516;
	Mon, 14 Jul 2025 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AYbXmRbq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C435BCA6B
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752484053; cv=none; b=gmVi0WxIgEUUrnaB84xyuFOuzJ2IO8KQZcRQ8btSMiOJQFoPQ4McsqnEQ+keG9L+jX1rUZTyjjKdpTM/sdA5aMdI70FTnLKIPd7RgXmuDKEOCEqFoY0PB4QyMjkCv+ca79+erp8f7cVYpRwCkNuwUb6QBpU/WtA/YE2bCgq9Pok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752484053; c=relaxed/simple;
	bh=IEo/0ebyLqCtoPIUGho1naveiGhjOQs40pxOBVatadk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OJq8aJgiDi5kMPawUHKVGcFW2/1aRkdni78UBkT4fV4Epdcg1KSdJhI3/+eBIfDdfGDOBp8PgrhO8QTw+18h1hjxlyFy9bJM2tzVzdIlEftWy3daBN0vY1c9Fkeen5WTVCN4rqwPSuHYiobO0w9ux0RAVD6IxzurulBG9X1YsMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AYbXmRbq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E66I7v000324
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:07:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dH8858t1uDwuloXXZdQnkHNZ0NilaSKFnXkLNu0wdfI=; b=AYbXmRbq8xd1OCk/
	s+IyeLmGFfeiNNGNQIdNkKND663wReiQq1+hIG8/I5qZeIT8TH+Ck0PfG/m9KDuD
	Aa/RkZCCB8R5Wenu+hwrbLVhltILB5yq7T52m5EIy9X0jTnVDd3gcedmZswLld9T
	C2UCqHn7JusrK1QwKFzv6ShZkNOxoY2SFv6mWrZm6nwqstbrUYt2Iv6fg1mymird
	eNIzgKDJQT8YUjLdpuvzDQaEovjfDe4SyOaQrh+EiSB7er59VYloiV6sIBxYdI6Q
	ouk9hq6OyzhQLgZ/LkeBEfmMPjOdPzk/EmfpVHzQeET4CFt189KXOOH25S5KAW1r
	GMd+vQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47vvay0hc9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:07:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab5e4f4600so566891cf.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:07:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752484049; x=1753088849;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dH8858t1uDwuloXXZdQnkHNZ0NilaSKFnXkLNu0wdfI=;
        b=Oou7I8HqGYVem7PlhgpCm8bW0HYG+IJQovkb4qn7HJh1zZWIkqvLcLgibfri2kujEH
         rXAjBaGU6OQCYZqb2o3tVCIQdGEGJB1z2cikVme+HmGsvAYT5Q2SvRiULp+aKiZgOZm9
         ph6kmhgOn5qo/RYSRYuvRj8WtZZUVL8BOZ8yTt/hBhUT9x2mT+Rz9PL8UiHwWmN0NZC4
         pPeIaP+IoBZs0zZGwfeWhkbGDYwAzkMwmihRF3t+xonV7F/xl7Hll298hb5QCb0upYne
         nJqKUfIQXZISo4/9hWMc9X87tuTrNLaIKBN1SqTv1dqqKvo5PFml8NjelWUfIFpBNl2L
         wSug==
X-Forwarded-Encrypted: i=1; AJvYcCXIBhOqSKQbjSKUPy9TUBfxV9HhVoQ1nPAMbixGFRlta4f13yZiDrvxcX5VhG8KzFV+mZpYAtgpMH6e@vger.kernel.org
X-Gm-Message-State: AOJu0YzYsA4nyjAfIFOWdELra9Socz/HkLancLGitDJK1eAmDWuWSfE7
	06zr13bfjXXTrixXvq4KEC1gthGcZVJjJuZT0R28BDlQLVNEYY4oHmtuGj2+b3hEISEe5rzqmpM
	gOrxWxCW0GWFwn+sX+u5j46OkHyRZxzLHhaMZz9OMhhf4hYQL330lQGdbDBAtezn4
X-Gm-Gg: ASbGncsfa2QZ49Hk+nRe9t2rCyrDBh0fHseFi3Up07UD5qdw2/iMD8Iik/P3wA86lZa
	+R1VITcIoZpRKNekNEpSr5lzuXP5Epfneu02PSs00GLwh8embdPDF+4qTvEU9w2fH8KNRtu+/fA
	/iEF6oEpsJTBRoB5uK6UKj6piFNYP+y8P6H0VRSCtzTa7pPIApV339k0PyfJ5egAe3tHpYO1Ssb
	LgAtdTtMJ3rDj/4aVU57sbTfMFU5Gq2cpYcdIGvvXm/UrEcGWtHyhMrJAFyONgzfb1QVMd6S1bE
	WG5T93J0qqMmJ9CpQq2NozEV4UQar0dib8erAsIsNFjePfMk/31od9SqZThAIz+1fBIsNHa1R8A
	ckSOXrOihQSZGfeYXu/hu
X-Received: by 2002:a05:620a:472b:b0:7d3:b0a3:6aa7 with SMTP id af79cd13be357-7dde9953e8amr658697785a.3.1752484049205;
        Mon, 14 Jul 2025 02:07:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZeBIEWBgGO2oIe//VMo3cjAnyraMQetm8FdPub/ATMMOvADVyOJZ09L0sSUjb+pJk+fkycQ==
X-Received: by 2002:a05:620a:472b:b0:7d3:b0a3:6aa7 with SMTP id af79cd13be357-7dde9953e8amr658695585a.3.1752484048682;
        Mon, 14 Jul 2025 02:07:28 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82962acsm790125166b.139.2025.07.14.02.07.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 02:07:28 -0700 (PDT)
Message-ID: <7d9d027c-87f8-494b-9101-69c83ff21353@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 11:07:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/15] arm64: dts: qcom: x1e80100-crd: Add pm8010 CRD
 pmic,id=m regulators
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
 <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-10-0bc5da82f526@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-10-0bc5da82f526@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Su9jvQfYCE9rjikC7TWpSH_qK_yyXo5B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA1MyBTYWx0ZWRfX4A1TPyeaAqva
 c6K+03RYwqJmXkJt+y3iBgBljug4m+kcCH9C0/IZfx0x4IKVTYL8mNcFqAqCZoWqhMmEaSye/IN
 fSuMseE/DXupPZOEq7egt/AVy1Sz3hZeCV38E1DbgWlQckiRhirHXAldFB1Zh0TZXrg/YYTIWh1
 RucKa7tJ9UPAi1hGGido+yuztO737M/eEoSxXX55LYqVd4m0lYsp8iwhA+tTs7mGeLhccNwOuHv
 sWxp9Nv6mg+qpmHN9q0/NOQLx5I7b1hRkvsi/pjTuWEjsEEUoRf4VvyyReVfTvS4E1ODUbdz+Er
 4D9nn4flcVg/XrkGyR3Veeg4gDkGE1V7gsH8hckb/p+Re1YBiq+d9KFzM04AyBRIf5zaQ+wo9I1
 DRQBhmiS6PsqP9SXc+Y6oF7I0PZtSP8qJbJziP1pKLFEVVPX/3Wecd+FbaQHR7ynkMA55y5M
X-Authority-Analysis: v=2.4 cv=GNIIEvNK c=1 sm=1 tr=0 ts=6874c8d2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=8FxmNogKXzv6K0n2ekAA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Su9jvQfYCE9rjikC7TWpSH_qK_yyXo5B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=935 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140053

On 7/11/25 2:58 PM, Bryan O'Donoghue wrote:
> Add pmic,id = m rpmh to regulator definitions. This regulator set provides
> vreg_l3m_1p8 the regulator for the ov08x40 RGB sensor on the CRD.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> index db87b9b5be63d4fabf5ced20b23080a1a49b1207..08268f60c305cd69baf937fced6d37f2ea788b62 100644
> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
> @@ -960,6 +960,36 @@ vreg_l3j_0p8: ldo3 {
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  	};
> +
> +	regulators-8 {
> +		compatible = "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id = "m";
> +
> +		vdd-l1-l2-supply = <&vreg_s5j_1p2>;
> +		vdd-l3-l4-supply = <&vreg_s4c_1p8>;

vdd-l5-supply = <&vreg_bob1>;
vdd-l6-supply = <&vreg_s4c_1p8>;

> +		vdd-l7-supply = <&vreg_bob1>;
> +
> +		vreg_l3m_1p8: ldo3 {
> +			regulator-name = "vreg_l3m_1p8";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1808000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l4m_1p8: ldo4 {
> +			regulator-name = "vrer_l4m_1p8";

"vreg_"

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

