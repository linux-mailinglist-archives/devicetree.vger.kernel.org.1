Return-Path: <devicetree+bounces-254526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 554BCD1903B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E95FE303ACFE
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A4FA38FF10;
	Tue, 13 Jan 2026 13:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RRyPBOk7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MlZkdwm3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4751F38BF6A
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768309508; cv=none; b=IC0faUhwvX4O10U15rDqVNKjtMoV0nJOqplWaCME0mqMXP+OxWW/jGKNid9ZJDdDoG7b1iyaUcIpP8JWd41rT/PVQwV0gY2xYJbO3MGrSJRTQxy+089OnqC39JWSKcM+wThn6vsjOL3g5HJvEgu5qQBOuyQg4DhKlBQaduS5JBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768309508; c=relaxed/simple;
	bh=bdsxR1lkTR1NMiMQrWc6Z5waeQ593rIW/DnTKDqARn0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LxZzdg3Rg4g6Uht5LD8rp0Ph/NQLkU9RoPqfdlzCNcsgFxZgzun6L/JiB+X8xynBhyZgpZxXT8QLLRAtmld6gCL6ufeqPcuLGFGWFfcVD3pT435xPvyH6J6ISdwqtMbfvtEUXkc4GrZ/OQ0PDmpZBimJAlkLz9GbQCpDAm3JLzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RRyPBOk7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MlZkdwm3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DA5srE3799083
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:05:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	neiMhCUlfo05tbI3e1iPEgmhFazGW0tLIbSzyaNtg+M=; b=RRyPBOk7Nm8g+wrP
	laZKyGWES6UbvCouMzZeoOuzf8FL9tTHXKT92tF8tvKtlcX/MJJA60yEUDbot+OG
	OkcaicScs18pH1EnSLwUiY1f1Irq9LKXpPudlDgZ5bqUrUQvnKzivW4/4t4vfkv7
	deejTZSFYcurz/5KpfKVF/Hh06lEPoIUmbM4j3SsSqjo4q9Nak7BAYUGJLn0KJ2A
	HA1uu32dPeaMDbPc3jGhzmwgjxMpZEbsF53i7djb4LiI3h3AxHC/1S4WQ7Z9hd3D
	xaNtIvOgMjmyMQxYseanZCyLySGvoAzm/GaSlG90H69mN+Ybg4eij/XMfOtJx7pZ
	Tskgbg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnm0drgtd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:05:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-501468a59d6so58371cf.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 05:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768309505; x=1768914305; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=neiMhCUlfo05tbI3e1iPEgmhFazGW0tLIbSzyaNtg+M=;
        b=MlZkdwm3i2o41mr8+6gEzv30XbVWy5T0UkerAGD0WzoyUpFor9IwbV646xX00TsWJE
         Kux5QhJNWc70ldsXAljP3HyAbh4U/oRHEFP0WGOSlRo8+2LWsxAe+iux7yaetC6pEDXf
         2li6zBQhskwA1hM16qgVp0QVFueatFl1VFAY2+ounk2ylKXDzCd6nqaCVKn/Y0iLwDkF
         hJaafP58GIUTtzzeHeMPCqLykp9Ohj0yNmV9F9/KtNPqjZfvBiR5r6G0t0zp1cASrETY
         mYdScuemzCCQcE+MQXrqjaLRWuJQhfRmu7pvhiOGdcLWhIuJJqUKQZO8TE6B4KCUFmNp
         neUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768309505; x=1768914305;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=neiMhCUlfo05tbI3e1iPEgmhFazGW0tLIbSzyaNtg+M=;
        b=gS8xHZMsBcFniq2m7eSv06Z6Kng973vRgYGcu2ozM+MKIT1z16Jw5iN/yo+MYQjMNv
         bDyqRT7MXXeTOJmbkDQZLlaf1YvYrZ67+Zn+u4sbzpr5jOabhD82WzZ/9eIYgLd33Ghg
         cpPXTk6sbb1x/sfnw08mZIyxvaPhG85Tuza0jTY/qLRKGkDgQjIZCBDUMjbicCz8YThf
         LUcOk9IFllGTf+GmVpZF1kB5XV5iwhkvRCnEPbLtuUE1vjeWtCCooMy5IKOTZot1rsz3
         Wj/ID5EdolWXu5nKamjn9w7gJvExNiP/sTQG1vZD4cY60jb3lPVKp1rJBk5heMQiUpN6
         G/sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZ7fWEPFkPSMj/qtcdBMymnwSBL8p+YROfU55duCPqgDQqysD6REMpoRaMlt/qQfvvSVRHsc2kgqY3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7cQuDkjWsT//pA/i/5ZFaOTSN691Mqt6wAhL7Q2p5YJ9eiMHj
	X+FO9yHetIs4Wt9fljCvXJu51Qps1xtKl8j3A3/yKuq1MqwOGhrjv/EKBl1ioRkhxLuJcnJnCKP
	GJR69TnjC/WhQYjhJYEZsLVyVY9ga/LulQw+JKO/IqHLOr+bMIp3Q81xVmI5CWcEz
X-Gm-Gg: AY/fxX42MnEQJbGwOw1esOzHjkACggcAGEoyWkKV3/jSS0abPdONeumxcjJY2VxdpK5
	5gPDw17CMhRcrGCkWl/6YwBqeYFmhQBYDS6vCuDuRni/sJe6tS7fy6lFquZufvD2WDpRkUZUBWj
	vqj4xVxMTdODcNXmuC7+nz4+4bjinvAPJve/0c4eMpEMGYOKkZ6OcknGWeYl7uGT5xrEqodZlJF
	BBbZ7BN45l3pa5MPovToPR1i2yNyjLHkKj0B0mpZX0netu0nVZXT5523/jhhYJPqLNOXrkRZtSG
	dk9Yq9Pjob2x4Adc6xjhZL/J1L9EJKMvSAGVRd1fC+p+UtrTKDYAbha6Bk26t57XPZCr4rXr2I5
	lg2oRw/7V34VPjBbESGXF9mwbGhPJI7ZTLGbSJ8Ad7gbhyg6wY8PBoGsbdIxRWuEXbmw=
X-Received: by 2002:a05:622a:211:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4ffb48b6d14mr240324591cf.5.1768309504804;
        Tue, 13 Jan 2026 05:05:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcplFnlt2Sv4raFaeWXiNUyu2EYwm++k8ojATvugdaV3zGrnz0m/KWdSnZbVGQVoSM6EZpUw==
X-Received: by 2002:a05:622a:211:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4ffb48b6d14mr240324181cf.5.1768309504347;
        Tue, 13 Jan 2026 05:05:04 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b9d4c89sm19171192a12.10.2026.01.13.05.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 05:05:03 -0800 (PST)
Message-ID: <3ad20ed6-d870-4532-9559-9e6c39e545e4@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 14:05:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 1/3] dt-bindings: usb: qcom,dwc3: Allow high-speed
 interrupt on Glymur, Hamoa and Milos
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-1-98d6d387df01@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260113-dts-qcom-glymur-add-usb-support-v1-1-98d6d387df01@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BYXVE7t2 c=1 sm=1 tr=0 ts=69664301 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=iuyhanrI9R5_42HSFcsA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 6jV94jbQriY2iUInK4DulxbJThJoYno6
X-Proofpoint-GUID: 6jV94jbQriY2iUInK4DulxbJThJoYno6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEwOSBTYWx0ZWRfX7zH8gwaAGQY4
 hiQ99nI3DcvL2lU3SExX8NPZont3Nen4DbquZ3RuYpuU/efMl3WCb0kQU6Uddwm7Prk3gonsinf
 xWwjbwZVAQagWLViJpD/WV88mC/q9Ki4sPyirSC9XH1fs9aoEpp00bgcxzgchL4EaYSX2tyal0a
 ehmzft293vQB6UUW1WhLpGY+QQbpAuWeKTrNO0Vgh9Nr1yeyoyaVMCha8yu6KkPde1J5qfxHUWg
 kE/hgzrqcNZAWzmJgAR3utjRJpmmTvZUbuGKoA13/CzPehE3c6HWobK74dmWt+AiGBI1AF5UP90
 Pwz8m5YBvymZgCrhixSWYYSMJhk79QGNiTVpTTX7dLBLR6tT634ykf9cxVQ1oUElNeFpndDl2xH
 ye7PeDpr5zFUm6Uh3iGfsbdzo/kNyf3PQEQDw9ibPZh0BHks9ywGF55IpVKraqAk9dKwq9/5r9r
 035dhEoLEumJg1ZJTuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130109

On 1/13/26 1:33 PM, Abel Vesa wrote:
> Some of the controllers found of these platforms can be tied up to a
> single high-speed PHY, basically rendering them as USB 2.0 controllers.
> So in this case, the interrupt to the Synopsys DesignWare Core is coming
> from the high-speed PHY, so allow the interrupt to reflect that.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
> index 7d784a648b7d..f879e2e104c4 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
> @@ -500,7 +500,7 @@ allOf:
>              - const: pwr_event
>              - const: dp_hs_phy_irq
>              - const: dm_hs_phy_irq
> -            - const: ss_phy_irq
> +            - enum: [hs_phy_irq, ss_phy_irq]

I fear git may mis-merge this.. if you send a v2, please tweak the config
to add more context

Konrad

