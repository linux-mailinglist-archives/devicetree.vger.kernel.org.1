Return-Path: <devicetree+bounces-224479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE05BC43A0
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D52033B5AC5
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B394C2F4A10;
	Wed,  8 Oct 2025 09:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cfNkUtXg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725842EBDCD
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917443; cv=none; b=GzKKv2wObe4uJjS3mxyYGPK4UTnMlrBvEUdYNS3wu5aC87bhUJnMk8LUvXz6wCjvDuFPxTgLNeuD/XGjluAFiJX8PtFMmBy79T0GI8y+5mQhzUhGx10LIzHmAjZ+D5pthUant/tbaqoHyrgOI+M++7I6flOwAYmfzMIJVXgaysw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917443; c=relaxed/simple;
	bh=DVJrxKdK6T6C1S06dSzhYTnVMFtfTVXjqzA9qNeJ8qs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tEdf2KeinE/pr/FC2Kaivc4d1uRpTswxY1nZYPLDD7cExCECdgBmFuxhY85I1cSBYIaeYq3rQHgjf8VUkYHynsOHV+sQergBkziWFx+peKr/vdFo98U0k7Eda94FgMvxlJ8nqzJ4d2lfY4aGvPdLkMAAI8QZJeTDcMX34R06gjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cfNkUtXg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890PUU001400
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 09:57:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kh6z01hInW5jZl5o818rE8DrFBNdkVBlFHg9qK1tSx8=; b=cfNkUtXgdzPZ4WJi
	xrREBrmM/Y003iSCSVdQ5toK4wUwFzmtx9tAREPKLk+xym1RovYRvU0NYWRT+g3u
	QC6+FAUGeXLBX656DSU5Lm+4nudfc0Kk4ME2qB4oyE8cIgCZwWDSjqM8BiCnTjQX
	CN4hKUtEt5bh8VHLFiA3PDf16xE3BeOPeMn5/T05EZwIqPFyh2V+rUcnPHxsn3KJ
	h+Zc7vaS1+JFlUD/RtIhCvmhgnKtcoKXYWzQNirL8qRzQpAih4N1FpV2P3bWSh8V
	HW3DIqvMvDfgSvDiB9bXvs8xgh+H1ziCgHKMm+RT44RSAAoRQHcoAltjLDr5OV9d
	UwIkIQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy7213t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:57:20 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-81d098fee40so11986306d6.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917439; x=1760522239;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kh6z01hInW5jZl5o818rE8DrFBNdkVBlFHg9qK1tSx8=;
        b=k+c3olgP/Azn5xeoRMt0lhB26oiYvRV2pnR4xC4QZXO0iIMsSKe5uMvRqHjEHxThNP
         NxF52zc3zjwl8N7ZOHAyf0DzTN8TVXdeaTb7ZwtuBl1h2CEb5CtTkpeUGaxa7fmzpRm1
         QQda8kOm/KZl7w6kh/gVAr+Y9lJqCJoeHHB1awKBu3WeHagGJjG5KUAlHIN+c5U2PsAd
         ysuGL/CPujEfRsJXLViplmK9RXJdNWbX6jMmjo08prV+W/cPZwOSsuWAV3r+D1bZBkWf
         dZ7jlrJ89PWJdA34CdyFv1loQI2C1Fi6Um/xSfj8IHwyXaDrESCwnSqZzjkO1uo+jprn
         qeWw==
X-Forwarded-Encrypted: i=1; AJvYcCVzT1ABSjJUfF3sTYkhcRSfqFO1Emp5iUYnH+H3xqmN4h5brRX+yg5c+hKPzUfSLaWxBISwyyxZ1sUG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5/soY1wQmaN9GEMnmtzwfNZWrqJWvUvSrAq7kpY0Um0wQob3o
	kJkWGRjqJguDY341rFn5JIUq+UQ/8581xv6yYHk8IaMOlnIJ6BxVf44a/o5+9BFpa7Zl6/UrY0Y
	OsqdKZJTY3SnZVPZt2JwOM5ubpGroJNStSIVUxcO+b+GlEaJekz63j2o7zyYU3jrq
X-Gm-Gg: ASbGncuoDLz0ingUlK6bgU6K93EYJVaS63LLPSSVSiybsCG97sHAXvR9JgfHee2Sx55
	M6Qtx6LrVNE29z+HgUBRLbCQQbYfGNR3XmKhSw/asW+Xh0UoLwyYUru6J0gBBKLQE+ul0U0sSPH
	5SZ2NQ+UJ4AgbIrWE4RsrMhzjjf/OlDnrq5hsIVnPHjXkowNSBQka5UFNx2jSLbFILSydjG/KuZ
	SkMHDh8Zm6XUkVR/S2Ux00n7dkv0lS4sZW5ij4uWrZG0kTdVyfhXV7HcpkdIG4TUNiS+JhUPfHX
	k/SjKVMiwglESO8+Z957BHiigpE2xHQxx79pejlAfv3TUa4XyR/lRe11G3ZLT/UZjW+YraOvxBA
	MkyI0ah03GZmnFhgsdN6nkiBhHQc=
X-Received: by 2002:a05:6214:762:b0:782:40fd:8abc with SMTP id 6a1803df08f44-87b2ef43757mr21852216d6.4.1759917439542;
        Wed, 08 Oct 2025 02:57:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQwC39aV6Eiozq4oSjoYh+UWPNaHxLpWlCKmz1mk4NlIvmu3qMzpe4liTZk+jvQPiHhPsQlg==
X-Received: by 2002:a05:6214:762:b0:782:40fd:8abc with SMTP id 6a1803df08f44-87b2ef43757mr21851966d6.4.1759917438830;
        Wed, 08 Oct 2025 02:57:18 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63788110224sm14248430a12.39.2025.10.08.02.57.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:57:18 -0700 (PDT)
Message-ID: <92e715bd-8439-456e-b293-8b63702ecf8e@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 11:57:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/7] arm64: dts: qcom: qcs8300: Add support for camss
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
        todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250813053724.232494-1-quic_vikramsa@quicinc.com>
 <20250813053724.232494-8-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250813053724.232494-8-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e63580 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=4C4mPYFImK3W7d1_daQA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: _1erBhyg1-7Vx3kqhh5fQjhEUP8H4wl-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfX4pqYwOUZrejQ
 md0R7Ydfo7216qsa/tjExjdb8gSitzQ0kO/pErMzD3zvf5M7QCWzfmiFYEwv0mUwf7VwPNZ4dkP
 2LTC3UP5zw89inR5TXnx8jC2rZgP+AcU1gSo0KdzFDsg49OxOTM6sXuKhWbsJ3Atj//e8ZzXxoM
 WqfUz8RsPEZwsBDqI907L70Y7RXokxac5lQ8dvomsadT9yNYBNFh4JjB5U0N9qHwXLqSUbk0YEJ
 Mj1VdMn+CYmT0PLSH2uX/jGf/VVJio+jo4lL+Q4ndAt+90BEvPGlZHJ2JBFLUEbGJRLrNg8zW+V
 RcMHPC15msLkhfPFpkQz/VePK4HbqTaLan7HSMp5OdduQ4p9P02Ib5gEDAuPqly9swOKxO2qf1Q
 0KmJkdvwwOMm7jmAnpRiQ97R2Q0SjQ==
X-Proofpoint-ORIG-GUID: _1erBhyg1-7Vx3kqhh5fQjhEUP8H4wl-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029

On 8/13/25 7:37 AM, Vikram Sharma wrote:
> Add changes to support the camera subsystem on the QCS8300.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 171 ++++++++++++++++++++++++++
>  1 file changed, 171 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 3cf1d4bc7e4a..538b55a89f28 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -4641,6 +4641,177 @@ videocc: clock-controller@abf0000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		camss: isp@ac78000 {
> +			compatible = "qcom,qcs8300-camss";
> +
> +			reg = <0x0 0xac78000 0x0 0x1000>,
> +			      <0x0 0xac7a000 0x0 0x0f00>,
> +			      <0x0 0xac7c000 0x0 0x0f00>,
> +			      <0x0 0xac84000 0x0 0x0f00>,
> +			      <0x0 0xac88000 0x0 0x0f00>,
> +			      <0x0 0xac8c000 0x0 0x0f00>,
> +			      <0x0 0xac90000 0x0 0x0f00>,
> +			      <0x0 0xac94000 0x0 0x0f00>,
> +			      <0x0 0xac9c000 0x0 0x2000>,
> +			      <0x0 0xac9e000 0x0 0x2000>,
> +			      <0x0 0xaca0000 0x0 0x2000>,
> +			      <0x0 0xacac000 0x0 0x0400>,
> +			      <0x0 0xacad000 0x0 0x0400>,
> +			      <0x0 0xacae000 0x0 0x0400>,
> +			      <0x0 0xac4d000 0x0 0xf000>,
> +			      <0x0 0xac60000 0x0 0xf000>,
> +			      <0x0 0xac85000 0x0 0x0d00>,
> +			      <0x0 0xac89000 0x0 0x0d00>,
> +			      <0x0 0xac8d000 0x0 0x0d00>,
> +			      <0x0 0xac91000 0x0 0x0d00>,
> +			      <0x0 0xac95000 0x0 0x0d00>;

Please drop the zero-prefix from the size field, for consistency
with all other nodes

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

