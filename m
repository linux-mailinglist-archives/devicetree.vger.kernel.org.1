Return-Path: <devicetree+bounces-245479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C367CB1627
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6B263301D1A3
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EB22E9729;
	Tue,  9 Dec 2025 23:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UxU51V8L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ro7nkgdX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA65F2749D5
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321727; cv=none; b=PExcXI8AGnBx2Q7UFgj8cDuXF0IJs7PAlX25jTD91TexBB2o42YpFEduzgcXwKNB8r0Ec6PqhgsJMQ/gg2W4kR3mBzgca/gahV55/ZjGIh+B2TJoUOgrLVz1+S9AW/nJEyQz4y+Ajm5AgRio+jPX2anH1h9a/ME7su7hthJFDTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321727; c=relaxed/simple;
	bh=RggnFRerv8hsIKUZc7qQBZN4oETeENLNJO8PNQFwc1Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iVSqKAIsNJwKEdrubXXk+w7U3s/fgCHzz56Cs/RFcRudlfZsJEdlEk9pyGoCK7ayTxU7FgkPb16xt6p8zNIaVJ+AMUyKxFQrxU7MIi8D6/55JjNSb6e41jKWPpSShWI70jfIKBpOmou5ewL9oE30+5toCvMMBm7GgNoFZ9fCaU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UxU51V8L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ro7nkgdX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9MnLxe1517352
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:08:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Nw/k+y04U6jU6a2niMVM4Ies
	iFGnNwuLaJSlSX2a1Hg=; b=UxU51V8LToH676GTgNfTFWZ08J0a91R7CmnkM+Yc
	Xf+4YR0kFcgfRynm0Ws11uljkfkVkoa+z5A5oxi9/zOkx19JHraqoXyQJ9KXhL8r
	LtSm3MlDX7Ch50KANaLGeFNrZncufLsn0a/BGFGqGG7tfRnyMn9uZQQI3h9//pA7
	DvvzBhUf55EBWA1VLe0V9PLSymhmQRsY6G7IlZvE5Zggr3B9ge+BxdiMxuhE2cuc
	crIZWGf8dp3LMAdd213mO8WF7WDqqrnxtN33RrDbF9wjhdQN1tdDSnPOlnqhUWLA
	sF3gtVgS9MPOrca6CzSQI15Pnx2QMkubnz7txBI6+WNqyA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axqu58yvg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:08:44 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee09211413so146281081cf.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321724; x=1765926524; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Nw/k+y04U6jU6a2niMVM4IesiFGnNwuLaJSlSX2a1Hg=;
        b=Ro7nkgdXlClmNt7xGusGkPg7kYgMHi/SvamSjPyRrcj/G4imWD3LXxJdRFV05l7kOX
         vDHD9eEii3rcBoplpTdEsgXiEVFHMp27tIbhL6Ng2OPTundCVDitYopWw855c9kVBzuA
         wsb1+dSGerR1HQ0RAhSBeF/F4mbZy91GlvcsJ/ZigHZw/rDTAK3La4ElIIEokmt9W/B8
         fJ6wLOOVoRQkP5EVyGRugPXTemY41gOfPDOlfmH9HRrQgljdXjUuvSluoWDewDVoz8ft
         tmE9JKAilL/i9u4FQrOR1K9XHepAqye+HuxysW9acBL4nR8dA6dlXYwa84kOAiKD59Dt
         d3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321724; x=1765926524;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nw/k+y04U6jU6a2niMVM4IesiFGnNwuLaJSlSX2a1Hg=;
        b=wCfbGQk4cvQuUfQPNlwCN4PW8uwiUoSWADs8C4l+GOqe4E0nXbfcbIwJpRLckar3YP
         FXn2Cp5tyspmU8icca9QP9nq1nLbBf4Fnqx64rXwEeSMOpImFiQw+EPCROeK2QZKvG1z
         yL77uDpp8gAykX6CQueDp2YjHrRwWtGIvv38PxiOIUqL6ImXVJicfeazmR17sD+jpi9q
         PQarL55AmRJZJXuVnZg2Vhn+yjTTbtX1ZT09YxdZSQjgkVFay9EYNMWBBqwaR0UJztq2
         q9006NqzxjlUkC8yTVEXt8vLNJm11xR5UzkcIbnGDup02wVBzVdg7bQkWL7utuJ/fGeP
         iYbg==
X-Forwarded-Encrypted: i=1; AJvYcCW03mh3Y6ZAO4KZzMJkOmOMmS8t/splMBoD0HWZVj7Ik5ZB6sbVEzv3fwTKgsYgVitRhOu6KqHdief7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6RPVsvjtWMupZ06lr6e5oasuaM+qoGbMUIbI0EAG+286XY1va
	+Bhz03vmvG8oiRevgS2HkS4ipg/DH29dlGvp5QM/hMv5F7jpMc84SAtbu8Qxb0jhgHF5l1mNHoa
	OQCcfwJB7Wcy94Tymfkf+9cBOZKxixkmc0LQGepdNGHU7aJzNaj4l52ELT8ki52KX
X-Gm-Gg: ASbGncvIJYlOwrN16jSoh9GK1fkH4MGqtvFrJ+/9FLcg6eAAqFoHy6wTBFLnDeiwSbj
	M3WR8tgG+2WS91aFEc6Idr/3Tw9WFYT4iBEEBHOMwwuslMPjWAm2t6RYc+HjqsNHc89hcN5DCIG
	FJlv1qH23G1TBVD6kh/zkVZQc3QJo1ORaiK54cL/kRVmMaQBmVYXzFC5cRuIigJ5a04AHhd701y
	LmTulS9qeIGKg/8ngLkBRupNttGgTPTHngqwMJ2PCOEvvklTeD5BiRW0Ft3x7XxVLeuKdTOx5mf
	ITd4kd+sdKAlbtsMn5f8cAF+UEc5DUL373hyu8IvYqABzwIQKj4XAu6NHYVONvZqoaPHYYQLAWa
	0J7c7Guo27IZP8f+4nFJDLs3dJne30qSWr/Qvf4FWPQ38rIOeRfwWmhmN338ZE8QkhtfyEUv5Sh
	EhfA3/ccKOkfIoSPM3dlWTNdA=
X-Received: by 2002:a05:622a:40a:b0:4eb:a10c:de05 with SMTP id d75a77b69052e-4f1b1aa2d0amr6378721cf.55.1765321724182;
        Tue, 09 Dec 2025 15:08:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLQxtlFh2VNMT8KH7jJcIohZ8y6Vtq6UgjThXj0mxceK+qvv622oCeQfxIrXcIbk4vSN60HQ==
X-Received: by 2002:a05:622a:40a:b0:4eb:a10c:de05 with SMTP id d75a77b69052e-4f1b1aa2d0amr6378401cf.55.1765321723792;
        Tue, 09 Dec 2025 15:08:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2820bsm5476555e87.81.2025.12.09.15.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:08:43 -0800 (PST)
Date: Wed, 10 Dec 2025 01:08:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm850-huawei-matebook-e-2019:
 Correct ipa_fw_mem for the driver to load successfully
Message-ID: <vlz4zg6wnxvxz2hqpzinzxztghwxmx2wwkxl4ami42aqvdjkg5@7o4fvadz76cv>
References: <20251208031511.3284-1-newwheatzjz@zohomail.com>
 <20251208031511.3284-3-newwheatzjz@zohomail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208031511.3284-3-newwheatzjz@zohomail.com>
X-Proofpoint-GUID: B45Rs4c3SsN0P6bwTv7u8F68eIiuyWh2
X-Authority-Analysis: v=2.4 cv=Y7/1cxeN c=1 sm=1 tr=0 ts=6938abfc cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WV1l7McVAAAA:8 a=7HaWKvWDqqzqtm7Wip0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=ly-PvpxawfTmY1UqWLBn:22
X-Proofpoint-ORIG-GUID: B45Rs4c3SsN0P6bwTv7u8F68eIiuyWh2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfXwc83AD7KnrX6
 TX6JlhTYBr5E1Kfsqq3/tsk4xdKzizdq6Zgw8sS7+F+8QOp851Tf9ehPHHZJIX3Frlg5zdaXraF
 z9djffGBBt9hOescNppO48AOrWeONHL8abR7XzUBjUxty7urzsiMJeY5VcJmuCNcReKt6WZupRD
 c3P7H7z+7gHdDdhPko3Rbr3uT0pbMnYZqu+MYPipdEvg9otcAG9sUtjz69o3CwwxGL4TJqpUgmE
 Wr9TyK1jEu130QN0WXUWYEKgaJrnUEEFtMkVhMyG9VnWQxw6QexyWDF/upfjBN1b4UwDLtK50wa
 LUE8ygMRXZc+UGv5BWG7K5PptRHS6FA/xAcEQq+dqcbem0Zb/LjdPdA4H0YyqwIpRAngsf8sIaw
 XIt04T+QrMBDd3AECmgMEFznKUZ0+g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090181

On Mon, Dec 08, 2025 at 11:15:11AM +0800, Jingzhou Zhu wrote:
> The ipa driver refuses to load with the old ipa_fw_mem in newer kernels.
> Shrinking its size to 0x5a000 fixes the problem.
> 
> Fixes: aab69794b55d ("arm64: dts: qcom: Add support for Huawei MateBook E 2019")
> 
> Signed-off-by: Jingzhou Zhu <newwheatzjz@zohomail.com>

There should be no empty lines between tags.

> ---
>  arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts b/arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts
> index a5f025ae7dbe..f04865381870 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts
> @@ -144,12 +144,12 @@ wlan_msa_mem: wlan-msa@8c400000 {
>  		};
>  
>  		ipa_fw_mem: ipa-fw@8df00000 {
> -			reg = <0 0x8df00000 0 0x100000>;
> +			reg = <0 0x8df00000 0 0x5a000>;
>  			no-map;
>  		};
>  
> -		gpu_mem: gpu@97900000 {
> -			reg = <0 0x97900000 0 0x5000>;
> +		gpu_mem: gpu@8df5a000 {

Why are you adjusting gpu_mem?

> +			reg = <0 0x8df5a000 0 0x5000>;
>  			no-map;
>  		};
>  
> -- 
> 2.47.3
> 

-- 
With best wishes
Dmitry

