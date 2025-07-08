Return-Path: <devicetree+bounces-194210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D877AFD4DD
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 19:12:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59E8B3B69D3
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 17:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABA92E541E;
	Tue,  8 Jul 2025 17:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XHzQc6mj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8D72DCF7B
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 17:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751994521; cv=none; b=bRCTigFOizU6KXifVt8V0CQVaWDpgqJ6I8YEuyHMP6MH8S+7HjrnmXTY/UpYet/olNbLOKAI3ISoq7nVIpr0IY39tZtvPbQJggpUa6337JQvBr4+s180GX22GYGs3qtiR7YZLMYTZDXWsRColtO5fPyGcvBl7dHEZVA0sSLpb6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751994521; c=relaxed/simple;
	bh=GHglzFE+Ixz0smICAMlxbuuSv/s54zBE6ok15ILfLDI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UprTZKSCwkCnwYdQxSHjXRMpPEUpMqR0xqh4sCosMihPhXXP66o5abfHXmz41oVZ5lCq49pEG69Hwto4nCRNYdmgYpF7FGCtN3comq1XIljVHVRuN57PZw3YtvEn912AxbL0rHGnsdRzYKPEKVWeI33XfFuFLImmMwQzpodwCv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XHzQc6mj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAP0F012171
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 17:08:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mEXFn1f7VxEWXKlywCXNbVNhNpXfn1kydvwqsDgBq34=; b=XHzQc6mjJOMn4raw
	kilbJTRZcvdtnowryALQXdGWloE5cDEA3tAd5F3Th/SFXV7ZCOyhvEQWHz7F4vWV
	4XGKr5EGrsiaBu0ZhEUJXDen8SRR9U0KWINBlMe7HBNlDbLJ/A1/9pbZsPVp2OVp
	3iDaFcdFWk0wr0MXHJncwbCoN/jN2bl4tPP+JJDZemuFpt5Ti8zbFIt2VP0qRPTP
	e6zN3lVkpC2WrdPpwBvwrz5dB+oZnCmgZ7i2+bFuPnsxQpFaDFadrXFanPD7JlBg
	BXuGr/h3XdqgPB8KD0d0wU0EtOCTKWXrZ4ZlImHmg4t4T3QQ4Lje1pAOuNApcDTJ
	kb1G5g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pv97qxh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 17:08:39 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3ea727700so30711185a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 10:08:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751994518; x=1752599318;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mEXFn1f7VxEWXKlywCXNbVNhNpXfn1kydvwqsDgBq34=;
        b=phQMS+3QolgjhGWI2rJKZZyKahASli7QYKwreuERnenAiBkZaqtG7gG+JihjHzsQxU
         sO6Iaoe1ozxBkx8YLsH9xVrELLzNUBwL4wffU13LfNiURLcjvQlJjO39X0eSkPSFNZNW
         9qE2StfjbpREKtSflLSusvAIkBA0USRRIt35ZCxiqoblSxkkY7qYRYKFNv0sAYUAhSOc
         MNMiqL1FlZnMSElrQVOMD3Rl+FrSwVon8JEXTbb9S4/rHHbKi3gS1xKi2onU2TBG1080
         yoQ1TvWB/KswJhEnVwZ/yZO4dL5Pt+dR2y/0qlVyi0xHW39N1mNWgtHYiCDNBgn7CeBE
         Jvng==
X-Forwarded-Encrypted: i=1; AJvYcCW4RxoaN1ma3eBYlI5NxFkegq5OKMHVxKIsYJzn1RO/8Dw9eqJA/E+NsjJZmGrlEZqbCUJOH2HZZFQy@vger.kernel.org
X-Gm-Message-State: AOJu0Yzas6P712NVfmAi/jqzr9sr9+E8OOSTNkaf9z8BkITh7o2MOPgC
	rItrobOATDMUqCV1HMaaj2Xwj1QHIQhPNwloLdWM88Addk3rj0kTzwCCb0Kk7qv8v35i8OGGjvp
	5sRBxZAW2cqPVHjNIsR3iQlQP5vGL1GrckvrU9tIUmQYIeV6Oa1X7ScVydOBghK+As9Vy+z5C
X-Gm-Gg: ASbGncvZKg+hCTrfgdgdR1LSbBTtXPW/O2sVpyUs3UbacTQ190iTgr7h9WYzZoTQ0zu
	Dz9/8sj2X+c4U1UxPlEAa8U4EHjo0XYR7Yi3sfPD2zpSru8RbugqTjEoyoWY8L5BsOupthxsDxE
	nct+gDuJ7i2JjfZcjgMYnpGq/Mqph6bxtse25rL7M8AvU3Z2NTqwt91maWdu/CcXW9NG1mmeunE
	de1SSl9NK/SQr8s66LeR6WN9+sPgPNqoDlcO4Viy3c4MLSJYp83WrHqSUs3/93EF62QBSuo/2Jj
	1HGJDJv4fqTeQ9lzAc2CJYE2O4LEj80NstzzV6p7vA8sfR3NtYaH8yP6ruDg3+9CCAH08hbopaY
	g+yM=
X-Received: by 2002:a05:620a:440b:b0:7d4:5cdc:81e2 with SMTP id af79cd13be357-7d5ddc9bdd4mr870218085a.13.1751994518001;
        Tue, 08 Jul 2025 10:08:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcNZy9pWSVwJg7fRmgzuM3id/0/CdApeVMj/tklF5yeHuIPH6i7ffymVFB2QsY1SEGTt8uiA==
X-Received: by 2002:a05:620a:440b:b0:7d4:5cdc:81e2 with SMTP id af79cd13be357-7d5ddc9bdd4mr870211885a.13.1751994516343;
        Tue, 08 Jul 2025 10:08:36 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d1c37sm928144366b.35.2025.07.08.10.08.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 10:08:35 -0700 (PDT)
Message-ID: <e50c332c-eabf-4615-87ac-2d371f8ea640@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 19:08:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/3] arm64: dts: qcom: Add eMMC support for qcs8300
To: Sayali Lokhande <quic_sayalil@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc-owner@vger.kernel.org
References: <20250702085927.10370-1-quic_sayalil@quicinc.com>
 <20250702085927.10370-3-quic_sayalil@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250702085927.10370-3-quic_sayalil@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FrUF/3rq c=1 sm=1 tr=0 ts=686d5097 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=sXtFBv1i6a_ckmA1iBkA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDE0NSBTYWx0ZWRfX2U6fWeCrF0/a
 Mwe8aSYh4bSrd/CpnXAJgzhikXsbdKfz17UqY5CvA7cS8LwjCGa4TL3Zcm0tz8Qs1MjRmU0X9rS
 mHsu1rxHJkAn0kK5MUYzVAbDbbUssfrPMBDXsZubHloc2TEJEbwjoga8dn5xhVN5Md5GEWXrICm
 23rSJItvOopTuN0fQdsCzyZW/wfrXgqzMtB5UbQiiTkwOQ0OZzZyZ1uoX/wuQw2XAUADONvS0Mw
 ZBY5KyYjZ8hn1YkdHknJk2tlPT6q/kYbzghDjWGlAHqaRY4+xMkx/s0vP0ckeqz1vHEeiV5Q5cn
 6xp2KvbxZAz+yTzL2LjgArTD/EJKEd8VWgyUyr1ZLJwouZPHAl0AH/K1lfH2qzc7lY7rkpatw0m
 pFJJeDR7PfQfB4SZS407znsLdruHUBdHg10bEDp8HukfaHhC+jGvr0p9UTY5AP/HYYyFgCjH
X-Proofpoint-GUID: xnYjvkYcZ9K9UHevOOSkNrKoaOuEFVCl
X-Proofpoint-ORIG-GUID: xnYjvkYcZ9K9UHevOOSkNrKoaOuEFVCl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_04,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 mlxscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 adultscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080145

On 7/2/25 10:59 AM, Sayali Lokhande wrote:
> Add eMMC support for qcs8300 board.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> ---

[...]

> +			interconnects = <&aggre1_noc MASTER_SDC QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_SDCC_1 QCOM_ICC_TAG_ACTIVE_ONLY>;

SLAVE_SDC1, see include/dt-bindings/interconnect/qcom,qcs8300-rpmh.h

Konrad

