Return-Path: <devicetree+bounces-204614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 95239B26107
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E036A563ECD
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:30:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA4E32EE5F1;
	Thu, 14 Aug 2025 09:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HToJcEMP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B8D2E7BB8
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755163639; cv=none; b=pJdNPhvd8f+V4g+IznIk0885oc/PxzUEGHCw4zn+fsgcD6TfNzJykfYJbzX/yK/lAeMsHcrfTaD+h1RtLWf0vhu5EKtXHEPplHoazrBUYFpV/WjCAnr16kJGfmhlWfBU8QNxkXtLxgq62cpDJcsfH+tLu2gfM7tf011nQueTTZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755163639; c=relaxed/simple;
	bh=Ap12pS/VYNZzi+LFzsVIH4AZ1cc8jjs4WK2JMDR/2pU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=UZe2TCV4MWlNPrCxQRsSMkN5bcmTox6m+xcdv3PKIz4oz5ggpeyf5sio6lIGOKBvv0JoeMg3u1kGgSL3VLeshwLUIaPqSlIUWKYeBlu9hA/+VB9My9LQ3CpU0GpAMzO8b8gSvafw2NhNl4zkUnh3xeew/KSia+IDR/l6GkH2db0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HToJcEMP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DN0xWa031164
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:27:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8liDg8V8jJXUIuWDLIxvpQ4YE8ananmMfhqXJvLliEY=; b=HToJcEMPQ4HP4wB9
	t1OtzocbXVlWu/n6pFUkjBE+wINPkNrLU3/a3JzVZLWXXPp3bm68JTAVhluBEg7H
	J1udt41fqeIcopO4PQqVdOoXMfOA+kM1vKhJv1hF8WU7qT0166+yITvAvDU0qkiO
	+txbGDmFHuyK52G0r6QzMDYCi4geB8uOweR3LBYfWyMI7xIAuowZcf61zpqc0Eik
	5IYUffPL4fwkverXTj4TgvrhM0DUWMljx6efvouRIZtex4txsHc5buaeV9Al/cYI
	Vin0aTzjd3JzUmk/MBs900b7UwgHPwdncTG96WTa7YQx3eORBRTOlCom3gTYOn0J
	gtOAhw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fm3vt1rp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:27:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109af71a5so3840561cf.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:27:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755163636; x=1755768436;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8liDg8V8jJXUIuWDLIxvpQ4YE8ananmMfhqXJvLliEY=;
        b=He3zzLb6vD18p+XUr8GV2krgOSLPp3MqPvbCnsa4UKdRLAnX/w8NFmwMhMNnkFO2j7
         wqbzU9fzs5Wx4ZnUdyzL+BQDtTLVEWoNvT1a8o3dJ22TS1BAJnqvpEtptuVZHd7oRlhh
         M+g//inJ67SSokClgfTIHCh9z6kWJvVEOwCliLibeVza62AEUkYP4rddMCWfn4WmRk7p
         AfwvFMQi0P/oS9D7F6Ltx/XTlC7qpGrRgh/Eulm05tRneSOJoanfn7MJ5CWzinCUj4RI
         LRJ3H5SXze15Tl0R5/8kORtpOmhioBTYKOgc+7MSFjG6qVYWdWuGUMcJFSORKjO+LNYR
         Esuw==
X-Forwarded-Encrypted: i=1; AJvYcCVBBBdoZ+IDj5lbW+zv3EcD18KxExCpBxFCsP3tTH9BJ7jW2vMbEYBPK7/5ZOT8yHh389ModyfhnD6g@vger.kernel.org
X-Gm-Message-State: AOJu0YwdpzBQ0T+aLqISENtz2CW9sKAYW24FN0HaAYw5XmhyRoitNcad
	dLSV7YHVtgGbfFZQgJh2skZJekSNMPUboh7oX+pjYCuoT0ZjhPqc4rA95wqI2W4HJifnISK3rWg
	0oxQGgCcQLkLioyuLFb+NHXeSyKon3Oo/ltnuEfPEi6RNn7Hv9KsfPv5sTLfzYTea
X-Gm-Gg: ASbGnct93BGSMc/4eYT+FZN+FXVOws8OhqmfJls1tpR2lgKM8tXEXIbW1NfnDvnqRTN
	cKq3mCb/EdNiqcSR5yFT1LqAc1gNTSXZYbWnargs98tyuvGMSmABuX+4zGiBA7C1A1u8fe3/KrB
	+TbThW7KMyQLVGEuT04HvYwEJhkHCwHHgoFiJEHhEQi21ug7hLRkPpslBtqNkjJSpJA09NBWbzW
	QoLKH2Uwv9gID1xDgj3ffb+Wv+ovTCSe4wS3sdovDKfq5Gf7DjCNL4cyOEC9NQwiy0laxPL5s9R
	x2l9Lt1EsTi0Qjlw8s/o/v39A5jrY8nllqqjXZBY3E82gJAZ7giooNB+UonIkkHnDwJRStHew3P
	VPruQmL33543cKxA4NA==
X-Received: by 2002:ad4:5fcc:0:b0:707:43a1:5b10 with SMTP id 6a1803df08f44-70adc06e445mr15766946d6.0.1755163636101;
        Thu, 14 Aug 2025 02:27:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9SwT7H/YCBwkzSO8UzX7j114raEKqqbTh+pISy8oflkO6NLP0NtoNDbBk/MM3LTCvC9zjmw==
X-Received: by 2002:ad4:5fcc:0:b0:707:43a1:5b10 with SMTP id 6a1803df08f44-70adc06e445mr15766726d6.0.1755163635640;
        Thu, 14 Aug 2025 02:27:15 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6176052d163sm17241998a12.48.2025.08.14.02.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 02:27:15 -0700 (PDT)
Message-ID: <0e1fbd77-b651-4614-adf9-d2f8e66abac2@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 11:27:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Describe x1e80100 ufs
To: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>, marcus@nazgul.ch,
        kirill@korins.ky, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        andersson@kernel.org, agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
References: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250814005904.39173-1-harrison.vanderbyl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDEwNyBTYWx0ZWRfX7Zr5u3zHQ7Gs
 8Kg59o3u7m++VYlZwdXOwGLaQ1gj/kXadC3rWOL0IgM8lP0V2CnW8civ9oNC8c4VsxdIhulszlr
 CuPIHWfGbL9h+O5maPGE2SBkY7smEXr4yo5V32Cz/d1SqOVgs5C0p/+Iy65FMdfQUAbdDohbn9M
 hOS2E6raAG44zObSmyQtT3HgTAQKZ3qeMKr8PggTq11sfIPPtPgyeK5c476/R5Hlig9LI9EvMYC
 nHOiUcJi0XEDQjwBq+rkutGhpHI88KXcgU3YOdRntvbEtpW7I3cBAU4zydXgOfJXOjwA9SlZpuq
 sSH2viFCWjOlUu9L6NNIOLRwmsBTsdwCdxNSsfkLIvXWNcZgRtrndmWOHk3BR4cpXcu7093jmSx
 9DTVtQH4
X-Proofpoint-GUID: PIN3UTvnPhq3Kr3nQ95br86iTOqSiu3x
X-Authority-Analysis: v=2.4 cv=A+1sP7WG c=1 sm=1 tr=0 ts=689dabf5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=0dJSgm4hv7TTYW4Xl4AA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: PIN3UTvnPhq3Kr3nQ95br86iTOqSiu3x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110107

On 8/14/25 2:59 AM, Harrison Vanderbyl wrote:
> Describes the UFS nodes for the x1e80100/x1p42100 chipset.
> 
> This is relevant to the following devices/patches:
> Surface Pro 12 Inch 
> HONOR MagicBook Art 14 
> Link: https://lore.kernel.org/r/871px910m1.wl-kirill@korins.ky/
> Samsung Galaxy Book4 Edge 
> Link: https://lore.kernel.org/r/p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms/

+Wesley I think you had it going on the Samsung laptop at one point, could
you compare the diff and maybe give it a test?

Konrad

