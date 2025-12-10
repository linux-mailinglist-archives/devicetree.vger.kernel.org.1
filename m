Return-Path: <devicetree+bounces-245552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00493CB20D6
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 07:11:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 502FE302A443
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 06:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0BA27FB2E;
	Wed, 10 Dec 2025 06:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jCzzrxqB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Oi7uHn0i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE853B8D60
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 06:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765347098; cv=none; b=HnyypshrrSvxz7pxGK6uG0ZFqWeNWnpbAtDyMezKWsLyNSmYUyrOfJw6jFgkmr0P8Hnelf3J9iHqzkFqb00vi3X5DqAdZ3j6krQkvwGoLgwEG9zrBk0txDcoWhiHXIyn+Pk8Nm3ZpjdqqjRulq8q76a/zBum7mO+cSajho1ehNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765347098; c=relaxed/simple;
	bh=mqhPqj6b5w2khYrcXnxmLsUSRqgDO6sdR4PZ40P9Y48=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IfyDhfjXvN/q9fReJoovoDbnhDTE0/+g8bHwIDd79HIPNEzRQFhNMpdseML7ymhWNncRTnJuqkzEH8YDgnl0N3lVgylN3txp6DEc3g3GvJwfsDswlCkyqUMSTpLthf8bzEZO7qLnpT+Q4zW9JT1GLj9SW/vs7OoA/Uuf2OpLb0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jCzzrxqB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Oi7uHn0i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA3LJhP1985897
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 06:11:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HpIOlzclbpxai13t9ORLlrssJWTFgvNHo5cwX3WMPYY=; b=jCzzrxqB6OdiXgy3
	P/uQwO6XLkXflU9svb8q4E+rO+M6PLOdu61tcrwN5QMDRTRsPhRDTZbayBzee5fp
	ZsNMQ3gNBYFyUeoGgcryYwIqK+cQ5febsdBhXOZxDG8OUCkOI2V5W8oY/DlRQnul
	o5+Pd6oRb2+kfRHpoOl1gBB7EbprNh4wY5rdu2TR7HHqlAZSSaiVSWb3ErPhDmH8
	KOu0RP8au9CnnbyqDIKwmABuiH6Mbajmz7mXdCqxwGt63UeRddtC/5zI0GlVgsxo
	XQ04V9fyya7uvZNuWr1tIyn2STaSF5O2M7lbU/wMcUh8U2EWkM2JbBXZluqC8NlH
	dAQiTQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvn4hcby-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 06:11:35 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2217a9c60so1632905885a.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 22:11:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765347095; x=1765951895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HpIOlzclbpxai13t9ORLlrssJWTFgvNHo5cwX3WMPYY=;
        b=Oi7uHn0iMKsP/zxdzCDGCV1plJs1RcqjHX63znYqYXwRDBb3nShOS7nnIQWUp3xIh7
         +IIjGMqfBI+8rnNxDgDM1qLcb+Yj95OBqNgqwjrw6HB82WWKL0bMFas0nmGmatF8B2lH
         uLOMpwaBZznykrvkQTPxUkbiNXxN68g0xPgfuWORYTyxgvi420CJa8UWaq75fyp/PxbQ
         IqtcNIN+GxqFpZDH2hnPOwgcfxhuNk9int1A+vB3GrWRUg6xeSYe0aGJDrbVpAjO7+Km
         o0eOBewFLFD0asJ2PIwZKm62YSLRatG3Uk0+S2Hk7R1ZgcQVPC62Ufh5bUH+3HwQMpD/
         fckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765347095; x=1765951895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HpIOlzclbpxai13t9ORLlrssJWTFgvNHo5cwX3WMPYY=;
        b=gCp8WMYCsNxSGXuE8MIDAx3OEI3Hg6nk8FnCgDzzWWcWQlS/GpuduhwtqlvYZCyTC0
         piynMvViHjGj3H1pxpo7E4dk19KGwN42nMFmEqcVyArkjuSn0xZQ0N7gVuoOWzvH74YU
         I8/wGeD7swxbhhaDqsKPZ56flH+4PsefPIhh2mJv7xcIyAWQpZtmBanwb1Cf963rcuns
         2mOdp5aqDwEGJtVvh7eT4m4oDaNPlA2WASqMQT4JEOQmw+Ym9NwS+i2wLjfXT6tCvHbY
         6vdWYH1IN2uG0hHwCWfMlgzyOb5Q86ESGsjnwUw4t1arjug6q2WxsX3tiTcGP482xdAx
         BF+w==
X-Forwarded-Encrypted: i=1; AJvYcCUm69F4n9YyawEPXjaGLId17XwMYBtQOYCwQHnTIuz7MQREkavZFyEDdN6ZH87G2Ah6iw1dFsEkCt7f@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5nbLsQstN6oaPKr7D7zTQJE1QYUiTXlkeqleSyeo7ppeMH/jO
	Wv4NofjAYOLp7/UU1NhxrkANx1SwHKqboLOirWHGmvF+v9NyOOP2qYjrjENMDklhrWFS2sL+JHv
	syKdf2rA6V8AEhfSSBOIUn9FaPFwYs6C29fZeczgQh9Nzb7AzUu2MVr4QoWW2mN8d
X-Gm-Gg: ASbGnctdGbuXTsBFv5e8D8j8WhXZHUjQA16caYQUAoh0zq1ZP9h8k6mtW3J59qhjJ/n
	MT1Sw0f+yuiUqRBiUqbEIggX1ynVsFVMcGlC7SZGQoH+gZNj4HWdWtzjVyp0imw/WgvFXpb6Fpm
	uC0OVrjKReACAHXyoR6SMShsbrYbSpitS4bivzomI/klImuR7UggbmTqgjyHgTT9tU8qKR5YKXl
	H8vRoF2IrkRVdG0+UnAAqtidssDWn9Z4KwHjNc/WgacYCnlh9VMpTF+fVxzN7xDzQaN0ufFLQYc
	27cxEqNa89YSzyA3WuIOvVA17BNb+0H9tKQwu5RDVESrX6Alyi6XjCV1mPUN2U8bRmyLtM/1nck
	Eg7UUFSr65xjkvQQLoRmgwplBNKjzavrEWzs+7HP65F2h4Ol4hHg1wDpkz7oTzexMjVbApTeScn
	HSWpcU
X-Received: by 2002:a05:620a:400d:b0:89f:19e:46fa with SMTP id af79cd13be357-8ba39a55f7dmr230104785a.20.1765347094748;
        Tue, 09 Dec 2025 22:11:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvLE/DSkV07GsavgShrT8NHUQx9VGc5YPAPRfqtcW2l8ub7r6oUNEPdRTxYXByEJ44tuEYsA==
X-Received: by 2002:a05:620a:400d:b0:89f:19e:46fa with SMTP id af79cd13be357-8ba39a55f7dmr230103485a.20.1765347094361;
        Tue, 09 Dec 2025 22:11:34 -0800 (PST)
Received: from [192.168.1.188] (87-92-245-163.rev.dnainternet.fi. [87.92.245.163])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e405sm5862219e87.49.2025.12.09.22.11.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 22:11:33 -0800 (PST)
Message-ID: <799426c0-6865-41cc-ad2b-d832a1aad60d@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 08:11:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Checkpatch warning of qcom ath12k wifi node
To: Yingying Tang <yingying.tang@oss.qualcomm.com>, apw@canonical.com,
        joe@perches.com, devicetree@vger.kernel.org, konradybcio@kernel.org,
        tingweiz@qti.qualcomm.com, yijiyang@qti.qualcomm.com
Cc: ath12k@lists.infradead.org, yintang@qti.qualcomm.com
References: <b1a9a391-1262-4eb0-987e-60bb34bdeb29@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <b1a9a391-1262-4eb0-987e-60bb34bdeb29@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA1MiBTYWx0ZWRfXxmc6TAG0IPzH
 eUq0TgRDktOJE5iqxiwfZGX2+lAoDgHEX//Ckrk2flREU3IyNeGRwryM0NFHtEAfzV4AjMKe+SM
 5M/vLDM3c7fw0M6iXDmCoCCvAuns8+qmHLaeQ56ErXyYti8v6ahyW02PhY0vjOo03PsXkuBkTS1
 L7zZ3FOIL9Th1gPpVGMFDPi6vpvVxQJw1pfy9qUvd5RAlyi2J4Ay48kVzOAu92KkEP2Y5jcSOva
 S7E2ZxET3nsM8AcS0Ei1YaVuDh0blCX3js+4GTD/jPCW3LAeCksSWPTnjOJ4+rQ7kJdUOA17DgN
 ZXdtsZ6w0m8LyEp/aK1xe+jg11ci7ExGipkIYsZgBDPvSyg32s9s1PY5RBsy4psXaHcxSSbxXbD
 wUO4RfUZL9I6kjUw6OHFLYdksRwpQw==
X-Proofpoint-GUID: AhgITf1bQn29PrAO884uGUG4N9Ir1WPT
X-Authority-Analysis: v=2.4 cv=EarFgfmC c=1 sm=1 tr=0 ts=69390f17 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=+WgfKLcscl3VAWRHYO56eA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=0-fyCwABM2FTKplKXIsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: AhgITf1bQn29PrAO884uGUG4N9Ir1WPT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100052



On 10/12/2025 05:51, Yingying Tang wrote:
> ./scripts/checkpatch.pl arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> WARNING: DT compatible string vendor "pci17cb" appears un-documented -- 
> check ./Documentation/devicetree/bindings/vendor-prefixes.yaml#1026: 
> FILE: arch/arm64/boot/dts/qcom/sm8750-mtp.dts:1026:
> +               compatible = "pci17cb,1107";

> 
> total: 0 errors, 1 warnings, 1275 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>        mechanically convert to the typical style using --fix or --fix- 
> inplace.
> 
> arch/arm64/boot/dts/qcom/sm8750-mtp.dts has style problems, please review.
> 
> NOTE: If any of the errors are false positives, please report
>        them to the maintainer, see CHECKPATCH in MAINTAINERS.
> 
> 
> All dts files which contain (compatible = "pci17cb,1107"; ) met this 
> warning. But in fact this DT compatible string is already defined in 
> devicetree/bindings/net/wireless/qcom,ath12k.yaml

Have you read the message carefully? It thinks that "pci17cb" "vendor" 
string is not documented, but it is not a real "vendor" string.

> 
> I raised a new change review https://lore.kernel.org/ 
> all/20251210032817.1264850-1-yingying.tang@oss.qualcomm.com, it also met 
> this issue.
> 
> 
> Could please help to resolve this issue, thanks very much

Please send a patch, making checkpatch.pl stop from threating pciNNNN as 
a vendor prefix.

-- 
With best wishes
Dmitry


