Return-Path: <devicetree+bounces-200815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 376E1B16162
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 15:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 158251AA1685
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 13:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE79F299AB1;
	Wed, 30 Jul 2025 13:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nv/zDsgX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6660C29AAF6
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753881875; cv=none; b=JeZT50W7nKm9OResxSRZcnUda+NPbE6MKc1p7rC1i0wjUY9MjQyg0lQq4Eb6VKVUKJ532VQqQfvPaLHu/22cPt0DekxnC1YPgn47uKifuPKSjjk+OoPGe8SP3AM/VLJxjB47AGbyQR1CK6uGbfaWuXMHpB0BPOP0xAb4RiMTkwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753881875; c=relaxed/simple;
	bh=e5IwqqJeeCUDusazZ7w6XkeOtv7ySZo6uxGQet2ZmjU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fg3ZN5sJkz7nMXqM/UWfWF42mybgyqvK3TsN6u9r3D/BYygts2TXtvRky7wAkDvWRlyVv0eKvtQMVIKRjPL3S2pbusNxL66nTrresEuTV0C9Jnw1q/U9BISGGpOIIh+LeL0XtZU+N3Yi18ns2EnelTMDjEMq3zYy6ID5edfbK1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nv/zDsgX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbB22012759
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:24:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xTzI3N8eKRe/dkZlaYa0pONj9a17JsdqA7y1qmJPaXQ=; b=nv/zDsgXDUZzZWoK
	3pnSQwA7AkfWBjxOvzCPQ6TW+45UOkWquG8nIFBRDbPRF6m91LAVzvxw9o2NV0ug
	QgX+aA4I6LG3RtB3zG5SnFUT4LKd5SNwSqGhEk8jjDQ64/kH6azeKKbFm7EKdc91
	5FrMF5h/jMudSgX/C8qeqRjMCyu48IHGNlha09w21tSraKDAw2K35cQYn4KAg2pZ
	nvBUq4EW9uvtTIp2wQjXA5+yBi/QIUU7eZuXCeZYJFiUQ832BYA1Wo8ctjF6mPGf
	y8aJs+Q2+da+lcSfuFVMG57tLzPo5YQMDfqZvk63205ObTIG4unPDPWcy2ZVwInE
	b2JGSg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbm3s7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:24:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7073674bc2aso3472076d6.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 06:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753881872; x=1754486672;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xTzI3N8eKRe/dkZlaYa0pONj9a17JsdqA7y1qmJPaXQ=;
        b=s+aSlsc98zMlwVri6HBtctCqFDjXX4SH0WSS3zci9zkPEk+kOXVZbdjFY6A+4bU2PV
         yApr75aq+KVLheow3Jp0sfDAHBLB37VwnEFYCULGXb8Beq2ygqw/6T76XesYIzxNqCIT
         BI56V+50/yXvYcKTjuCx5ojq9mTDCdjaAHKX41DPEaFj3/2ChhR2d+dyjtFAlRmmaV4Q
         P/l1RJjfSSnNoH7q/tiJgc5X//gPjOpMPJnPz5R26iR+ZLhtSzh0MzBNmaT7VHPXlmMc
         I2P8vO3WV4i1CVAlfqITjsIAf3aNU7u3MoGbdHALRFAlVHhcmESL8gxq9CxN8lpwyPan
         Gs9w==
X-Forwarded-Encrypted: i=1; AJvYcCURExGBXOWdAQp3uE479kp8puC1VGaMQ8nGDpjtKxPFbuSRt52fXMnigDz+GKMmLhSZ7O5Bn2bOFKSK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg4jWGpWy1LmGvyhbSZLCIJd+tKLU3Vpe3P+dplyQeyFcqUFRr
	eOSr56IvceY1WLxILr+T9wRGOyYqlWb2iUfd2iZMW3/tYP/JIc7xX6Bkv7jsPkIRzM3LREemx/L
	YFuWYhpl1hDHlLck2ztPY9UKpzW4YzgUMEygyJMXDIYJdeNr8P07TGVrJOUYtIJAN
X-Gm-Gg: ASbGncvl/I8SXALVGyR6LiEToHhUshOBp99fi6WVwl9JQexbpzj86moQAw17FE3ArKX
	hk/Tgq7svhxK2Z68Edp192JC1lxpd3vMhMM/DcT0c8XJTHK9GsCxTlpTG9shRE8HDnXjO0qmaPn
	1ig0jotydrwsP0Zu9e3dsHSQz0sLhXwb146yOiKceNep8LrZ6ITxF+42YX8ONPaUENY7oEqF2bH
	QBeUq4OfBKzh1AVaBcQyaq4mZX/HUMV5+EfPIyksA74PhMCRiYgHA1L5k+kcRyh+2uWt1Rvx54S
	dRGHF79AF9sIv5hydAZuFlL59LCF9nRiu/mJpB4aNpKxlUyY+1zQ4W7hXdXUiZu+QGodG5t29OV
	BG6bDWJyiULFBFeUHsQ==
X-Received: by 2002:a05:620a:280e:b0:7e3:4535:4f7b with SMTP id af79cd13be357-7e66f35c7e1mr216229185a.12.1753881872291;
        Wed, 30 Jul 2025 06:24:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGhiBVwlELcMoRQwGB79Dr2y5jrjodmypBvSVsOqt9WTv9u/8VXfq5aqICzEbt9JwVIxNH9Q==
X-Received: by 2002:a05:620a:280e:b0:7e3:4535:4f7b with SMTP id af79cd13be357-7e66f35c7e1mr216226885a.12.1753881871792;
        Wed, 30 Jul 2025 06:24:31 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6155181f641sm3377347a12.36.2025.07.30.06.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 06:24:31 -0700 (PDT)
Message-ID: <a58eb607-74e5-4f31-8ea2-b38ebbca5344@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 15:24:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcm2290: Add TCSR download mode address
To: Sumit Garg <sumit.garg@kernel.org>, linux-arm-msm@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>
References: <20250730132230.247727-1-sumit.garg@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730132230.247727-1-sumit.garg@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=688a1d11 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=0h7C-uHhpuvjb9gYxF4A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA5NCBTYWx0ZWRfX3k0bfI0kijgy
 PCMjOeayotInUgAE16GT3lSNuhumcQDdDYqFGokCsYxTCt4epvtOqS1jmXGN4jkDs/DuerGxvDU
 0Ser9d/7tMwqqQ0MjAGGIFvpDe59NeOIKML+Va2fIm7xxnt8DX9R8RlJTwfn1t2Ha6SN8ur2zod
 QiMdMKz6aAX+SMs/5RmwSngWpJ9N/lHifBKm3npaXiiZo9fpKSOU9V8ZfTtiLgfhrsUwsiBXfHY
 RpQK9KzBBrrvHmQSCImg/BLezevp9IjKz64QfVpVs3BOar6cXydxNG0p3E06Te985Oc5fCiYbVi
 2KdMmr8GsE+cnqpIxpBt2Q3HfjBUTZai6roRW+WIxwP1grJfmH0v2BquPyNRYoSMJV63FLPSlJz
 gHAqXzXEr/oD+3ERHcF3dWiJXCVQei4dyfvSP52xjd6zM/LCfk9VHL7UWfRZTEcrIDVzEezF
X-Proofpoint-ORIG-GUID: EpojJmyw8f5cZ8CDzMhT4TkpUvNKaRsc
X-Proofpoint-GUID: EpojJmyw8f5cZ8CDzMhT4TkpUvNKaRsc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300094

On 7/30/25 3:22 PM, Sumit Garg wrote:
> From: Sumit Garg <sumit.garg@oss.qualcomm.com>
> 
> Allow configuration of download mode via qcom_scm driver via specifying
> download mode register address in the TCSR space. It is especially useful
> for a clean watchdog reset without entry into download mode.
> 
> The problem remained un-noticed until now since error reporting for
> missing download mode configuration feature was explicitly suppressed.
> 
> Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index f49ac1c1f8a3..08eadec59882 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -154,6 +154,7 @@ scm: scm {
>  			compatible = "qcom,scm-qcm2290", "qcom,scm";
>  			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
>  			clock-names = "core";
> +			qcom,dload-mode = <&tcsr_regs 0x13000>;

Can confirm it's the right addr

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

