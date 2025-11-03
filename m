Return-Path: <devicetree+bounces-234341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CA3C2B854
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:52:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83E593A18ED
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA6062FCC04;
	Mon,  3 Nov 2025 11:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KcRhn2+D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M9Yy07oF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CA0302CD8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762170469; cv=none; b=mPp/Rm/IIEUwZamTdy+mVrNyMvujGRTJ31S3eph1+GkNp8fZFdBfe0us+v/zx6jU8PAtEg7826+Dm1WypKEV2zx4Cqlp1ccancv+v6jBBrhih+IKOS8XIHpCJGFFgGldREULFNB1UmFgdf9bt0/PeRo6jbdOBdV0w/+WFEHRUO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762170469; c=relaxed/simple;
	bh=aEpby2eiGpem7ns2YN9Uq14HC9FVvm6FY/zVt7OK3rk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mI0W8RtcAEdoDqMcFeOEz1pxgKtwgWEZSkbK9I4hRyJ92yB3MJ3QqI/Ied7NSEGLCdSmlOTy/Xq3JTxzQNKV9jrcTk29g8FaJ0gpCoH9aMOXCB7hARWW1Fr21hGRCdB8gyMUzbJDagDqxHTd+tAJG4w7OZPRpMJLOYKDe+6mR7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KcRhn2+D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M9Yy07oF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3AIHEP2755349
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 11:47:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5wY30x4NfefcWvhOPc3CV1izT2GGqlJ9mgDiAYiipII=; b=KcRhn2+D6sYMen36
	REjeEJizPd8x372/SYTQSrAZ0Yxb7ZmjJAK2Z3pGUUuNud40nQ/r+9WdO48otA0r
	3/sd7bRurrfB3jQNZdUBYGvuRe4zSCNkydwvMNJKTwGc37FPmGCKoLbYY9zbGEPK
	iAFL4dDZWgcFD/O1LvN8xd5Ahx/1KXW+E8IQWeU9sYCMKWNgi8FnLWHpGXeXzTM/
	RZXI67luMgNNF5ddZkQ4rVooE3KFQDOwJUFf2jMi31wrYlq8fy1u4kjp6/ieeu8M
	QBA6JDuLNprlaXIvp6NnnYgONh6c4h2aF3bBPVKqpyp6ojn1j4kqJK+Kz9+SxdW0
	jluZYg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6th9r72s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:47:46 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8ad3adb1f15so73492685a.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762170465; x=1762775265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5wY30x4NfefcWvhOPc3CV1izT2GGqlJ9mgDiAYiipII=;
        b=M9Yy07oF55uP2OljcUeeFunL5IM6mgbjK2a+OWJBQFKSe6usoYJ4cUPN6yqgTRkJtf
         u5tf5m4+Q6ValOkzgGp92L4yFe90QKcOO8DfkYIOLx7lI59i3glezCxHvJlEtBV+Jq30
         NKcUaD4HnSKRdx92f8KPAMv8Lcy/YpYV55VmK7vwfJpFoTfFPMOd9FiSG4zDdw6r8IrM
         re6lciyTBfiAgtSgC9W0Fz8LNQm94s4uSngSbxp9EE6ShFgQn5SE4h73+CXRK1w/NNQk
         V+ULJphhFCSZzXaPeryju6yybFYu4xv0W8io6VckdrvJTNe1aVHSF7MzuHkrXgQ+s5Z8
         /Vsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762170465; x=1762775265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5wY30x4NfefcWvhOPc3CV1izT2GGqlJ9mgDiAYiipII=;
        b=NCEqPJop4olu1mREkdMI+xenGYXezjIPO+zc+XyYzkUPQL667DTgZ+WfqgzgqELOK7
         RaJS7/wrPaNMsO3eIYymFE4W0UdknozCicJayEsVOCXRlnAxOsE+dm62UPr6iDwlLucw
         93Ln3C1kq0NSx/+q8QFbvvH/xmS+x6vYFFmJlrXHkdxeg7zFLa9SaNu2MLkgvsQSqldo
         U9fuoA8hOnp0s3kV94YM5Hi/E1QSA76PVR9jyd2vQST2+D6R6CpBGiLzGMbqIKrtw5qQ
         b0Sa6BV8AQXYMvW2wAXUT53VTwkJfjOeoRQ/2wPdh7dff7iY9ctdt880Epf8MRuFxK3l
         ihWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAhVXj68SBmd5IlfnWPX1e1R+fKvrVaWexIS7FFamUZirFHoJHEpFlnH2/vL/UHoBYH5Kz8HwrX7Y5@vger.kernel.org
X-Gm-Message-State: AOJu0YxKawo+6sXvkaeNH42whOi3CHrXGmGuIN56Lkdp4BJahhDKaWRY
	DJBnIGXGadGzYOC6vgDL1Lij/CcZixi8bwhvGdQ5ileGWLUz2vtmYMDI3urRGzjnZQ0885HwMsO
	WVpHfnDpE0wUIMqKuGP8BtY7L51GBMDjOBmDyrBn2nOMrQlKVmvbcwH/BEHDImHeY
X-Gm-Gg: ASbGnctYKD8WO+I8aMB093ZnZ8zeCBkvKkU0WR2mujHcZwybO3c5eTlhutY1baryV8O
	IylkAi8hz/HjeGNElQHg9ecBqJ6eboQ9f8CuR0YoWFcY+HQ8RrdFReE7tGn/7E7ZdxPYJGYfoEf
	TjrLNHBdJP/x2WHZg+Bs9rzUMxNI/AGrQzLPDdhx3UmvCFWHkajg6i8dGb2MZNWDlfrT6CYKGb1
	hP5c9cluzejVaQX9AqgWrlmpTMUcau+PYgqLZ52+fiNcxB4cnr+UpQRVXifpP9CMvOks0gB8R5M
	TQJsnQ/Cf41hly7u/9i8PJVyddP/a0fOeKqEVozZIghAsbAXBGlOCoTsVOjskXKkGnBSH0XZS71
	wiuTztK57fVsKtQAymM+mcp/+97MhwujR61yb/S9rmVVBpM/DmTPX6ETm
X-Received: by 2002:ac8:5f48:0:b0:4ed:237:71a9 with SMTP id d75a77b69052e-4ed30dc6bb0mr108107861cf.6.1762170465395;
        Mon, 03 Nov 2025 03:47:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVueoCvMa+PNMpnHz+ud3b2RBUVSEQ8CIs/BxtYGSYKO/eJs8zetYAbGGhbszJbqMtgiKQoA==
X-Received: by 2002:ac8:5f48:0:b0:4ed:237:71a9 with SMTP id d75a77b69052e-4ed30dc6bb0mr108107601cf.6.1762170464750;
        Mon, 03 Nov 2025 03:47:44 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6407b392d5dsm9597540a12.15.2025.11.03.03.47.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 03:47:44 -0800 (PST)
Message-ID: <5d8e359f-0117-4df1-aa91-beb365adf7ce@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 12:47:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8650: Add description of MCLK
 pins
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251023025913.2421822-1-vladimir.zapolskiy@linaro.org>
 <20251023025913.2421822-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251023025913.2421822-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: AR-uiY3DLC0sjTKExbl67wpcJSHDktjh
X-Authority-Analysis: v=2.4 cv=ea8wvrEH c=1 sm=1 tr=0 ts=69089662 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=cCwkqNmnRgsrfKQMxVsA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: AR-uiY3DLC0sjTKExbl67wpcJSHDktjh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDEwNyBTYWx0ZWRfX/LDIgzvf643n
 usBxytd6VUOPFOnshaMtDYklfOG4n+WOzmIXiPtXusf6ifutCbWfumd+j619++Se9LZspIrD6tZ
 uCjhWUSpL+TCu6TOqzz6hx4tmxCdtqj7WpmQ7BYmvy0G62+4K+XCdgJAA3A8ebwtr/Ax3a8hoBN
 iCMyrZ8DNVjjkAtcK6HWCKpTAFrrpM1TIofHkAPMzjrw8tqscq0h/wqc25DHaHjUA9yapq8qe63
 UfRPn1Lwq5I66q2TaYQdJqV/LbBC1ZlTpP9/M/4xV3BtPf+v6la7a7oSKETnz+jdVtXMh+1sy6T
 7UgTub5iGqT32LvRRxbJ+OvOvI9lbd6BO4zHXDlWmHDTd/m99luduJCZyWbHB9QIkf5OorYMI5b
 xvFmeav0TzZWtDOJdI/MF3i58mAN4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-11-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030107

On 10/23/25 4:59 AM, Vladimir Zapolskiy wrote:
> Add fixed MCLK pin descriptions for all pins with such supported
> function.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 144 +++++++++++++++++++++++++++
>  1 file changed, 144 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 555305c1c70d..8f934d94d359 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -6065,6 +6065,150 @@ tlmm: pinctrl@f100000 {
>  
>  			wakeup-parent = <&pdc>;
>  
> +			cam0_default: cam0-default-state {
> +				mclk-pins {

Could you resend this with the additional -pins level dropped (i.e.
pinmux properties being direct children of the outer -state node)?

Konrad

