Return-Path: <devicetree+bounces-189529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CFCAE81F5
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:51:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF4741728E6
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74BC25DAE2;
	Wed, 25 Jun 2025 11:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ej0LtvTJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC9125D54F
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750852282; cv=none; b=Uw6ZiFuq7yDWoDXb//EqpsP6mngkIw9aFVoQWv9wNmZdld1KQZBAcKJcni7QuQdHzLer4Drh3gM5OTGurE7WRX4JzDf4vz3bvcE+m8AkRqm+yeJkqwm6fxrOCHCKPLxUkULkfxBoDqzXGBBsYc6VDkIVT+kmc1b1TZqKCYhzepg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750852282; c=relaxed/simple;
	bh=fs7c8Qyu5BrfvUyh4WP843ByKBeqVCKxGmA3+fES+jE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j0Gte3oewKolRnnC687wp+/URJXU3SjoIRQ2sW17nTAnIwaBsxSWUXxYziM8KFmMXmnnibFEDRk/LYIAMMcsPBPz0S6QogHa6u2lhBMLNUsSncYRIVmzrHVPypyoUO/ELlRdXAVy3FcEDOlzQxTPwQB6TbZJGg5efRr6EaEu8m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ej0LtvTJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P42RYm013337
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:51:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uRfQCMJPJ6I6xt/lsb5RiX86zBh0KuNZA9Flm5VJRyQ=; b=Ej0LtvTJLh+M6FeV
	IpxDKqLh59EosLSa0ArOiC/IdoB5oFywQQSaMN9UOAu+528/6cOO+3HkHRWcx+eZ
	0jT0JNFfqT3nwlmkII6vBB25GITh5GOGzuM/WCmOwHtibkfQ2fVELQC/mlsWdLN9
	wkBi8SHN6I7tMUPFT/FScHUJp0NCJqQ7qTiekP6jqlq63IzQjIV9kP6letvWDmdR
	03MPl4ft6GCNb+F+ofB1DWHx9fJ2fyE9zKg5OHpljk7vS5DqcgRGwaT+DEQJIW8x
	iFwpIiDYVIlIugDWxa5VqsufcYATT7Df8Wp/sDHjUzJEk8M0JQcmvwvVk5ls0vhZ
	qOVP4g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm1xaaw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:51:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0976a24ceso203646485a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750852279; x=1751457079;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uRfQCMJPJ6I6xt/lsb5RiX86zBh0KuNZA9Flm5VJRyQ=;
        b=GcFtvMGPt70heqvFLl+SEPqe0sirV8jYX16fCzGBVtLFOmwDaJMJkBRFJRhnlKhfHB
         mZWKNk3Mw4oM/3jKmyd85GCbcZdAZek5Eg/5AFO2Y77sZas+BH7Hnd6DDFcCc4OpwLtS
         Lix01TKHPSUa45jBCzCPTzhGubXmB0NN30dQ9u1PMAdPX4xOxHJ0vMIvpmDWWBr66KzV
         rnpd1CVS32by7qqPhJYL1IzEduyOY0C76pjRVxA7m/XwQ/BwphCIBLiFdmI0bYs+lqh0
         VT7KxAukr4EpkalnUszNnsZ14CKr1oOFZLVUbYB7t9s3KQob3A9sI2cxg4lbrXafYYpE
         tRhA==
X-Forwarded-Encrypted: i=1; AJvYcCVPmxSaEWh32SYbQJP3l7e2tspwDWWn+IlRnyoF6+hHognMa9gWSs4MeN8uZCLh4DN3bTUzRtqI1wEv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwd14hGS5TgGm2upLxwTYqDkI94B9MvK/DhlKKNK1QHNEtrGBJ
	nIfZR4oECMiVL+OJT+vUNVNydJfvacXlcLxqjAfZflPm+mQJ6/fy6ge1CqTvfFs1lgrBjWxRr2P
	JaTxxLt/rYQV598fazfJ/T0rtQ2ajyC3khRunZqrU8VCKoQp+ilILNFipubR6A+Kb
X-Gm-Gg: ASbGncum4+gyimF9ueMVH7iwDbVepafRvtQhP8V1uyxqiXttukhdLUm8TqgOf2f7aoX
	7d9ZdeztSgHk0w4Kwo8DsR3ryfHe4juMN5XHnVQYTZnI90HZGkdKW7KL1EbxBxnj1YhsARKnWiH
	18XRfZlCaD7uqrF48O/oePWprTNCYUrKYlOz4p9FqK6JC+uE7QBWjg7zUGoQq0c3GcuO6Jp7dY/
	FaryF9uJWdz8AdM3lof+QpelFDu31+gzKaYyS/XCSR+OaUzprXuilfgBG9jmNlHljJv4xuk8pvM
	7QZydrsDIgeKZROemCyH18wgemR5//LpvAuVB2TSgjVhM9BHm/2h6BanWS/VNRvgCZj0Q8F+kFB
	xcp4=
X-Received: by 2002:a05:620a:4802:b0:7c5:8f36:fbeb with SMTP id af79cd13be357-7d42973e679mr128603785a.12.1750852279221;
        Wed, 25 Jun 2025 04:51:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHccfvELeUXoP8b1jBpiU9AZeQNg48frmRiDDZy9qYIkV5bzxU9h6vBSLu6n9Ur83kyw9tsMQ==
X-Received: by 2002:a05:620a:4802:b0:7c5:8f36:fbeb with SMTP id af79cd13be357-7d42973e679mr128601585a.12.1750852278731;
        Wed, 25 Jun 2025 04:51:18 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f485d0asm2360299a12.64.2025.06.25.04.51.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 04:51:18 -0700 (PDT)
Message-ID: <4d215791-35da-4139-9cc8-33da5d46469e@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 13:51:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
To: Luca Weiss <luca.weiss@fairphone.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
 <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685be2b8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=qC_FGOx9AAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=SHKt8ETI8ElOVTnc0VsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=fsdK_YakeE02zTmptMdW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: xa21bipqxfYTZAdFsAfQt2XE4u4WP5Wg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA4OCBTYWx0ZWRfX7SR1xbi8+LdB
 In9GRmkuGkUV/Bld/hGaje4QrtnhonMjN/oOQTujnxpF7bog7q68knEayXdLKDhPze95eB49Pza
 1UQuMg6NUGaXGlYPZT40u2AkcgZMr6n033s1XcV04v1HA9bycQ15zLRiuY1mHEoiYZi4dXX/Fie
 K4WXHYeqc7BE+B8YBNt7VjfmEFmgMbOnmgVz30OJbh4fglDq5TuleCBXErd9567IGqMyNQ6jzzW
 fYzrhDCg0LmFDTdLkancbKtBl/bbiUIYaTcr6zJGUMHPhzoD74GQSoI9Au0y/WWmVMbNGkzW1Yt
 E6AKU69fqrmul3k32fWKrq+93h4uN1tw1KJ6STbPLNuUcjVJqgU/l2DgZrN57OybPxhSmGqDFwO
 9V5FsmfndHyWA9sWPUcImz3eZEwVy6hOKT69h//u97540SLKckhByFZ11L9Qrrh8hq2bbkQ7
X-Proofpoint-ORIG-GUID: xa21bipqxfYTZAdFsAfQt2XE4u4WP5Wg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_03,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250088

On 6/25/25 11:14 AM, Luca Weiss wrote:
> As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
> sequence is missing writing 0x00 to USB_PHY_CFG0 at the end, as per the
> 'latest' HPG revision (as of November 2023).
> 
> [0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Both the original and your commit messages are slightly misleading, the
HPG (and the code which is indeed in sync with it after the change is
made) only sets the value of 0 to BIT(1), a.k.a. CMN_CTRL_OVERRIDE_EN.
You most definitely don't want to set the entire register to 0.

With that fixed:

Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

