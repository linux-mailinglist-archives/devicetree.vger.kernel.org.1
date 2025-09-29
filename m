Return-Path: <devicetree+bounces-222313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E0DBA8075
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B6733B5D59
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 05:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC75C29D28B;
	Mon, 29 Sep 2025 05:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PWlxUduK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A69F215789
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 05:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759125264; cv=none; b=Sk4/jcfFU1AbwfjRz4pagpuNvfMM5LQzz1bH8Y/kHL/carHHrRYHL2P0sdifd5UjHTHyX9LPRa99vyRYIf0TAvjb5KpXM9fKWbbVtpZGnNpu8WEbrSSEdSAKv01qWQBOurg9/b9Jrbt355ErmhZslXVzcxuMK0kRQemoRkeaiTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759125264; c=relaxed/simple;
	bh=OZHJCEcFQ/65emGmzMQpXLn2h/BDXU52F0/Z+mAHjsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jFwoqFj9RJ5FySzT0h9mLrj31DMgeIJ5/xZ8keuibEp1N56my/FosicK8SwWTrXRAhiZgBV7LxKcPLbjVKFlkBoNfcNAayiQkKb3ODR0HvBuSnzzHtMWMUIvn2VmN01IAPuJQ6sSSH2taD+LfaOxfmULmp52bKc3dm3KOoicRFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PWlxUduK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNDqRl019481
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 05:54:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d6aX7MYxztQduz7Y4bXCCWCK1ewjXa53r5Z7NdeoH0o=; b=PWlxUduKnLDGR82n
	oHQ5TMcsuQ1G4dNZpWO+Iwhvi45YJd+p0C3Mqlxuceflh7g4OcSofn5oSFgrS0MQ
	9VD37gi1QC9tDBGXqrHUaBna+oAUmB2g5/lQXX6Fdwbp0ePhxpYS4hZmSMsxlRn2
	xgzsk4NBnaijkRQ5AARd3ihUn3YTYDIryYI/WHdUyyvUOlz0EQs3vDu1MU+lTa9r
	BgfhJGdFvwTqxd3rKLA4z9oTU59PRGKYyIRfw4AQthKwsKoxz7RwI7XM/GPR8ZxK
	ODPqbRdaQt5vo9jQMlUFspq/jrfh9W9FK+fYCH3h920CvGj6uZMR75Hcjt4w53ke
	veAoBA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a5v0vr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 05:54:21 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b471737e673so5425317a12.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 22:54:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759125261; x=1759730061;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d6aX7MYxztQduz7Y4bXCCWCK1ewjXa53r5Z7NdeoH0o=;
        b=r4qJPiSFhni2b49TxfHBm2qs68+8XtlqEcPkfSJVY1HIY+W1/hEfVR4MCD09QxyMkl
         EjaLCLCfiDhEAGTBgOwP5Mfzt+dn8edioxg40oBOrO2vX7ORixuj2WbYccrisgfjpyNC
         +o0zT3L/xujsMVnzTX3i6MfsqpyQjkX/C0SfseKIMBPgzvbUML0jArF84HGNGuNobJ0D
         g/HAoHkHa3Wtli5JbL+uPIpCrLZ9tQ2z1hmrpswOTpHYPzgPPwJWFUzjGgL0TQkhFRqC
         x4OC8wiQSjZJzL5oLka1OZHnUHf1enBJfLzRUEtpNzaH4J9ptq8iw16SRpwcfcCsx3u+
         UNFA==
X-Forwarded-Encrypted: i=1; AJvYcCWXIeEiX3kYnZ3WHmDEG4NTkc0hGIfAtzfDA5ErZKjARGXQf6hCeua7QX608vaNcE1Wuh5+Oh3u0/Mm@vger.kernel.org
X-Gm-Message-State: AOJu0YyAMT6MGTBWqCFhvVZG7KgKu2Iu5BiOAl3C2VUjOjcsZh9hwgmj
	29TWzH+8UNDCMmWyDc1dYYYsB3TJAhLZo+uh/REabWsvJwiL/5Zv79S1dlEYLh5TUikie6sjEWX
	485iMPPQ/sEWu4ewwrYCcCWPpUGPjE7A9/NOYzVZ2OS8zoB4MAV77o3i17Ro1hXVX
X-Gm-Gg: ASbGncvlV0zMzU5xzLFJkIxFuxxIOIFphZv0/UwO9L0hDaOPpdE4qbXCvTvKHbw+bDr
	KfF5Ou56Mm6DkzvW1JKjeUnfD26zJOkEpqDg22S0D+NKSE4MH+8P7HTFY1DZ1CxPrik3deoiueZ
	BLMA9CQKN3miFhaWt4Vjje9R6MAnPEAP1pIhLkRYTl2g7uygvJQZwGjyO9wj9XzOCEegY+gqHr1
	zRqU5nrxUAHqSQZOCRt5aKnaKxgY9dO3Za0Tmhh+nTw3ckz/wfSbuNYzwdxXxJnbLtBlCdADEZx
	xOIoY1F3n08YpWSHEG2zmjppEddzbkfeS+GVPs0exxIuS5OD/kbyZ81jxcX3sEOGz0VyXz0SSpN
	xezp+XbVAStP73EISKWDwGzPzlKmxc8rH50A=
X-Received: by 2002:a05:6a21:110:b0:2fb:add5:5574 with SMTP id adf61e73a8af0-2fbadd571bamr9816471637.47.1759125260677;
        Sun, 28 Sep 2025 22:54:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVksNJyHFtS+HequOtik73iZkCJvwcnPgJVzBHKlsG/Uvvmk9RsrSRPaXHrIlk4LLsM2hl5A==
X-Received: by 2002:a05:6a21:110:b0:2fb:add5:5574 with SMTP id adf61e73a8af0-2fbadd571bamr9816448637.47.1759125260260;
        Sun, 28 Sep 2025 22:54:20 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c5575350sm10147763a12.26.2025.09.28.22.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 22:54:19 -0700 (PDT)
Message-ID: <6094ed8b-ddcd-462c-8753-06a1d58a9691@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 13:54:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add Qualcomm SM8850 socinfo
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
 <ebxbhaaefuoemadcef5h4lxfw2k2hwkfe72aubctqb3tk2zdmp@p7ck45rd2hy7>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <ebxbhaaefuoemadcef5h4lxfw2k2hwkfe72aubctqb3tk2zdmp@p7ck45rd2hy7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68da1f0d cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_Kg6Ejj7DnKBMOYh5WUA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: U6wtQfuAm2tcEca22h8WNX5d3RvLTcj0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX0hnODxkRg9qY
 2fPgKQY1Zmk1ExCoNcAIvR9foJUWd6PK5t+cgmQcZRFg32UVUHz50bqO8AzicxdgDbKZKLRXrKf
 3RD/HePY4ms/JQU1KTYDwOCIgJNQOUAgeUtwtx6sU9QpcRZr2/ADqKs8OMBEnMnEH30uOAggBf5
 QWxnrf5aiQas6b8TgSufrZTWSVg8KtUXb7p7pgwgHO3lrXewqglioRD8WuKfVQp9ZW+Erz7XsrZ
 rJvsX6smVDn5Dge/sDZrUb82kFE1d8LCeS5iyqoBcNFULJDTmtVBXKS/W3l1CD85N8CXl8NO/Zs
 j8p5Tv24sfi385gde5rlJknkeibOjJAElCKdHi005UidY5EPcvam0zl4QXBzZZcIlAaW6LUexhN
 Bev+Vm0iCpWvwf6H7ebk4POuMl1tDg==
X-Proofpoint-ORIG-GUID: U6wtQfuAm2tcEca22h8WNX5d3RvLTcj0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033



On 9/25/2025 10:38 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 04:17:45PM -0700, Jingyi Wang wrote:
>> Add socinfo for Qualcomm SM8850 SoC.
> 
> What is SM8850?
> 

SM8850 is the soc id for Kaanapali, SKU numbers instead of codename
is used in this file, like QCS9100 for lemans, do you mean we should
add the info "kaanapali" in commit msg?

Thanks,
Jingyi

>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>> Jingyi Wang (2):
>>       dt-bindings: arm: qcom,ids: add SoC ID for SM8850
>>       soc: qcom: socinfo: add SM8850 SoC ID
>>
>>  drivers/soc/qcom/socinfo.c         | 1 +
>>  include/dt-bindings/arm/qcom,ids.h | 1 +
>>  2 files changed, 2 insertions(+)
>> ---
>> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
>> change-id: 20250917-knp-socid-f96f14a9640d
>>
>> Best regards,
>> -- 
>> Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>
> 


