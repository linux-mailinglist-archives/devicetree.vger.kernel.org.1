Return-Path: <devicetree+bounces-216402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06941B54A79
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:58:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE8CC560190
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE8762FD7CA;
	Fri, 12 Sep 2025 10:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nU/22Fnh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1A32FD1B4
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757674732; cv=none; b=I8sgGxx3eH/6Jeyv+lR2MAyETrPAFLFbGWfvDkgnCGWVeOPc2L60TWYCymbH57o85qQbrQvbs89oGaJG2Y0T0K+IN4gD6EGg9WQxvvnnsRiKJFcl45jYsn4P/T0ETS+Zg5z4KOzISqUscE+AcxYQVs46dDxM96oB8U1AhuPUFr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757674732; c=relaxed/simple;
	bh=o5VBkPOlbhWgQBK0/iP+h+Cmvhm2kWP0djdlvYDXhZU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lzsQLXcQy5szoMU11Rg+sbFs2BAh5pkaU7Vo1fYbR7q3pXlO6uFtsqqXiq3fCHePbl8SmYGJ79LOOl6F/kghY1oSY9r3o88u75oNETKOXF9mn4XDgYpfGY8ak6CEyF51js38EJEBxteU3Q0gWAbAuKskYD5YHTwBW36qUEno04Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nU/22Fnh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDk7018539
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:58:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i7dFyZonuztP4v15xqELBBfstv28YyeHj10FzHoppmI=; b=nU/22FnhZuTi4Oeb
	NzzTM19E5cBFsrvpPC1rm09s36lkq2tmPNI6DbgaV5TZQZgltzumxJSM9ckAC9EB
	4lmEi2lV/aA+wxDCFaFB0wU2CCVaufAEjEJTs4oVdwJzaO261CKQZ1pYQQ63YJGp
	fn05ahqylh7l/6TSEKkD92dlrUirnnQoa6t1nlEVoK88tGowf5u15/neKwewBEAM
	MIXCjitmU1LMQAgDFmqH/L18ryj5VjkqvG/5NF/NV7srnzyapqgjhj172y2pOoTk
	4jQAJRFw6t1wKUvbspx+pc/zQg3Xnr5EYJCso3IL02o3aAXgrs6VDBC3ZyzVP1/L
	org+8w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8akckt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:58:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b77da4b375so2070501cf.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:58:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757674729; x=1758279529;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i7dFyZonuztP4v15xqELBBfstv28YyeHj10FzHoppmI=;
        b=xEoP9onrmCJl0CkF7wKBhln2jjwwLAbRbNLcpTmXnZiucg6V2XTflUcRhTfa7dGd0h
         oUejp6Arte269UNoby9P2a2LeSO4Cayd9HzGsbCkV0hmpyQNnWTdtY4JXIlF3NotRiiT
         KrnHMCDp6PxQYcpRa11ZQqi/EjiU4ILoIqkzn7mfJ2phHhhOXYkG2qMVDFCnYDHCHDwZ
         5dxB8jW+1jo7qshevFhxqn+UiDs4F0SgjtuepjuW0oxae7OgOVXeQ11gXBK/X7PiVLfj
         ZXOpirMxei+PKogJ0hY++kxV7C2orcrbhTezM+RJoHg2wtoDVdJ7HK1vIx1iocfioT8l
         MadQ==
X-Forwarded-Encrypted: i=1; AJvYcCUU5JQFcjKv4MmokW6A9TfT0k8+35azY1sz/CciaeNR/gI+bRAv4eUWUAeUAPdlL8XZljRnjFuPWgdU@vger.kernel.org
X-Gm-Message-State: AOJu0YzXKfKJwLvZPNTygireAhku+tOA6948NGZ2VBPRzd9p7hD+1y94
	5vaKScS2xMboZolx996G7D28MJwKWQYqzd+39KWUfbK12AWBm+EgRLBHgD+axjxc0WYi7GDzdXZ
	oxd3FY0hMVN6bOiFnw0ZPl9HLGqivIGq1shL0/kUTELyqryt+abdEBiIRwdVelg3yC+KRz2o2
X-Gm-Gg: ASbGncslJ/izjcC+4Chmyn0r1cGNA4McBHzReplqgXXIB7O/uveRivxaQ8yhsOoCYuw
	cCUx3Gg/USexvCbdpOGuXa6nF3y5X4X64XXzUbfPjGk4go+zDd+AgN9oSyFSQhwXkL51eo8fb32
	RT6/0K465h4pLaF23IvXOU2UKu6Yc4I2Ff2bn1IDZZsFtrcpPA7nSVUyJPUlU6WCcZ0bUWE0GjK
	gE16vH/VoRY6dLpiXrhrhvE9H9x5NDYdz4eQ95RYXj/JKd2G1KLntrYH9BQDWA/3jkx7dlr52QJ
	lUeAB0/JshbQPwIfiPQGOcMB+7u+RFrN7c1Z4Ih4kK/OL3GKwiU/c2qxn2TYxG3/l40gIWZv1Tz
	3q/d6MvgtE5EFf3Bt7179dw==
X-Received: by 2002:a05:622a:1a1a:b0:4b4:9655:9343 with SMTP id d75a77b69052e-4b77cf920afmr22702531cf.3.1757674729182;
        Fri, 12 Sep 2025 03:58:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGlSmyF+Gse2lNQD69+IKUgQt662LJkJWbTIuY6hl8QE56qi43llUixSvAFTFZLJvm5l7CXAw==
X-Received: by 2002:a05:622a:1a1a:b0:4b4:9655:9343 with SMTP id d75a77b69052e-4b77cf920afmr22702341cf.3.1757674728681;
        Fri, 12 Sep 2025 03:58:48 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b316e2d4sm348001666b.45.2025.09.12.03.58.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 03:58:48 -0700 (PDT)
Message-ID: <d95fc175-359f-4559-b680-36de87d75a40@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 12:58:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-starqltechn: fix slpi
 reserved mem
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250911-starqltechn_slpi-v1-0-93ebf951a932@gmail.com>
 <20250911-starqltechn_slpi-v1-1-93ebf951a932@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250911-starqltechn_slpi-v1-1-93ebf951a932@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c3fcea cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=gQzuMllvLFwwXPv8Qg8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: D5zodaTYOhN1X9iRe9BMZGL5Nd-0g_J5
X-Proofpoint-ORIG-GUID: D5zodaTYOhN1X9iRe9BMZGL5Nd-0g_J5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX5SNK91v7SlPN
 mZs1o6cal8mivg0+/IhhpPS1IxczDFhBmvBLHwiRONDUpDZ+Vm6YxzWGL3FFv2csSHTB/lpktNR
 mbErD1W1FGYGR6vplhN7T+/Jn/sq4/514AB2YRJnid7nGlO0juLis+EL8zHoXx0KOpF+Zs/KkRe
 lB+u5v3dYjYgslrmXvDVSyvbTpjKCzts3TytqPUoBUHFd8uLpm5jGh8BlgP3RsWPBueHjMo0pwg
 JapaOIuK+mE0Hga1b4fEHkNWfN4yk4oicXP9vhwgV1rJFtNEvH0iXJzijXLF1kqtJNe6XCSI7yZ
 5N3xBoCiFzS3138OWgJWhjenpJ4UqCy/0sekphI2m/dLUf8j2RUnudgqidTOCUH4XHZuwNjWqpe
 2iq7bVN5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

On 9/11/25 10:56 PM, Dzmitry Sankouski wrote:
> When adding adsp reserved mem, slpi reserved memory was shrunk
> according to vendor kernel log:
> 
> `Removed memory: created DMA memory pool at 0x0000000096700000, size 15 M`
> 
> However, kernel refuses to boot firmware with 15MiB reserved region.

Why so?

> Increase slpi reserved region to 16MiB.

It would make sense, given the PIL reserved range is now almost
contiguous (bar the hole between spss_mem and adsp_mem.. you might
want to check that one out as well)

Konrad

> 
> Fixes: 58782c229e3e ("arm64: dts: qcom: sdm845-starqltechn: add initial sound support")
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> index 9eeb4b807465..32ce666fc57e 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> @@ -118,7 +118,7 @@ removed_region: removed-region@88f00000 {
>  		};
>  
>  		slpi_mem: slpi@96700000 {
> -			reg = <0 0x96700000 0 0xf00000>;
> +			reg = <0 0x96700000 0 0x1000000>;
>  			no-map;
>  		};
>  
> 

