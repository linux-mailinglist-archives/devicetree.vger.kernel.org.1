Return-Path: <devicetree+bounces-246566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4592CBDED7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:00:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D71CE3008EF6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12BEA29D295;
	Mon, 15 Dec 2025 12:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SvUtMtyz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H/CONo3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C181F2B8D
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765802181; cv=none; b=APPtuG3U376fcl0fsXkYj2epJx9j+RurhPDzJFCNPn+547zhgeLhD5bTPiOuc5oOfidmdB3EELuDbejuhz1soraUUc3G9AAp1oiimRqI8fSwS9QKVTpJDmuln+LuwK1YFKIIL8F8sqz1o6CYVs0vsG/7tn7sdfmUz+yb8DECC9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765802181; c=relaxed/simple;
	bh=yA1XqBdQY/l3cKpAxxLkvw+QusVrjputVquC1aGUb0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R++aInOWhyfC0xGi7D1N0JD+es+WTqYk+6MTnAHEyyhqfN7FtwlvGmmyAhJm+d5QIegwRFB7QpSC60awxPiuNsyiK/zcv/9lY8OdwJJ8E1BYuAobWF/dZKJlTHgH4XBGdjQG6GKg07WBjSDVKFUPQTb1ZDleQLfEFDlcRnVx5zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SvUtMtyz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H/CONo3Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFANsLZ594439
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:36:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FxMSxKWmIQqSkiT0adHaZN+j
	fSlVfyD72OviIhDO0UY=; b=SvUtMtyz8JW1NPmrfHLsWhrFOfk1g+QwZZ/HOB3B
	eKG8vtw2j4+YtiuOzNzy3x0I7NBvbfMGD9y41ygPQ+JbUcUXju/B2fUE1L5N6kPb
	FQjdh0KLBBet1MNH2WXTbUGsiwoot2lqq1W3rBVFSbFGaizUGbNwfBm8A/QGy/6j
	Mw9M0dwWVmg30HJEmF0l5yTW3d20F9SVvFqLfV+LSmX0V3cUp0F86P4hT4jia5b+
	6XLjMKR6lFU0ezDo6JU+KNv6rQ4SnIqsTKpccCbHlcJAsuxtqCOPVhmdt6+tQeRf
	S4EOARmFyKll6kZ1AA0sUfpOqjrlbn3ztA84jQY2X58CZw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11dscgph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:36:17 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed7591799eso76739421cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 04:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765802177; x=1766406977; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FxMSxKWmIQqSkiT0adHaZN+jfSlVfyD72OviIhDO0UY=;
        b=H/CONo3Y5Wzj2pz4ohwa+hewgPYWxi4cECKIEUKlNrKG+cvmjfXVzMl57GBGPnITUY
         r9ii6xNCmq6eX34eJ1ZJa1tb2uO3dDZAJEmWJieDPjS27flat5fGrBjgR/trL8ChCkcT
         5iQSR4/P7zchr+UZyCzYFXIBCvxjEJkuXIcDXKs36AtF18gZSOdNtb7BMToWGKyCBcAj
         vzKsDHoWTunqOtTAbtv568SqK93V/sPqw9OPM5JiaBNtYzwnbEtd9aNDQzjYgakruPd4
         NPpr/SfnUXOcC76toGohksCcDK70jcAqGzbZFZ8S4F5w2hMwqTz1jH1Sx2FZccGdqJba
         /S3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765802177; x=1766406977;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FxMSxKWmIQqSkiT0adHaZN+jfSlVfyD72OviIhDO0UY=;
        b=k90YS5/6dG4a9CHMaalKqLZgRaiMYejQHqLQ+edkUfE0Hg82CjONCLHPX6+W4l719v
         L/4Y9pbHjSFCsjIFvxYPTLwhLP2ryj8kQ76lMT9VgX54wlwzMZZWcjc9LpZn4XWUWBzp
         Pr/qHq3I/8EqgzkeNQZbtvlg8UtrNSPJxJEihW6Cw/rNBBf6BnpqI6ygsvAKSfBf9XV1
         k0srssItulDPvMejQyKoir0sLV1vT3SEXTwOk5poNH++txpGS3hzHIQrwjQi15MwigQW
         iluIHpds6yLKj92SIZuHh/DwMsk0rJRJxV9pKDkudjpLkxrxz85tCNMG0feagW/5dTpw
         YkvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXSeNXTvOhZfpJG7k6P45LdYLdgQFhatuFwNX6qcwBeNkNnzAFodbgTdMxebmFgEVCXFN04MRaDMWU@vger.kernel.org
X-Gm-Message-State: AOJu0YxqQCaYunylpr/vLWMRqZ0LZ18bDe0LkTCEmfkrRFXg5NlPBW62
	0vZl5XqBDNeU4BpNgzoQU/P+GjyWuA/jrD5v/NYfrvWe9wGbcs0EQQjDrDNXec8ZuVSBH0f3Tn+
	o5TUHiKgb9axfcS3AGcDH3fpANQ3nA0brMKrq8yPDQrYkUcoV8QBGyALETIgEIzuo
X-Gm-Gg: AY/fxX6FkTQvIMkvNaGQk+BRhIKIHrpsV1AWlnfW8H/GADT64kGW1xfffAwwdRZNOjl
	rSaJwyhvfcQhCBxt3nVjONG6FrfBcbH6YCgrSg6FmpitZYVI3VcOK9mx7WlBM9D+/BIp7zh7Keh
	TxmDiSltIU5dCY9P+FH4qRDPOnMy31Xk4yrLX8xFaXVEZlQSRfqxd/cSU4rEp/N4C8yrd5kyuLi
	oCDzkIOJdJJLozMkhvt3clZWqxek5PlHKdjnm26a9vMX+w5EWfyvNMnz5ML9s4qbEzxc2VmAOAI
	wBnQJi7vVFM9d/ycABukeQJeIRQ/HM+quFx+aiGY5my3Q1uEbdTD00mjpSta69ZV+HmK2Jd0urr
	rc1P+1xI+m9LeEZXQSf4F9Q==
X-Received: by 2002:a05:622a:14cd:b0:4ee:49c9:a923 with SMTP id d75a77b69052e-4f1d05d0ca2mr135743211cf.56.1765802176540;
        Mon, 15 Dec 2025 04:36:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEUMQHfbZ4VwPbph3sBUvkMnjui9TESiMXvuk4g2I93L2wpzSiT/pk3iuMNmhsBZxio2zTOMg==
X-Received: by 2002:a05:622a:14cd:b0:4ee:49c9:a923 with SMTP id d75a77b69052e-4f1d05d0ca2mr135742721cf.56.1765802175890;
        Mon, 15 Dec 2025 04:36:15 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43009dfe55asm16747238f8f.41.2025.12.15.04.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 04:36:15 -0800 (PST)
Date: Mon, 15 Dec 2025 14:36:13 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: kaanapali: Add base QRD board
Message-ID: <4p3huithuex4mwsjxtoynolxnymqbwj3wp5lw2yeet2zin5jgu@4qqlleqnvqwq>
References: <20251215-knp-dts-v4-0-1541bebeb89f@oss.qualcomm.com>
 <20251215-knp-dts-v4-5-1541bebeb89f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215-knp-dts-v4-5-1541bebeb89f@oss.qualcomm.com>
X-Proofpoint-GUID: 5Xf9CgHO7NiWRAlmXK70-k50AVrN7RWi
X-Proofpoint-ORIG-GUID: 5Xf9CgHO7NiWRAlmXK70-k50AVrN7RWi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDEwOSBTYWx0ZWRfXwVxl/leV5SMi
 /BnBvtyyawm6fYHkRSO2dJIGbE557vXeChrE/rKxO2CQjhTvFXQDqJMAoWIz+Z8w0HvHoepmvT8
 qdTV8itL2DQSZ8CIy+2mwED8F0FQEvho4okyT/BubXIcmagWgRrbYr11o8eD/RQcFzkpc8xHWQ7
 HK50BKCwGRv6yTmtoxcbe0p0ZR1rT11nuXc328zkC/SjEKFtQBpv34Oir/Uy2bWh1yIvEmKfQLP
 s+4SCvtOJA+0mDg5NYzldVpss55i+L1tqWv+T9SpBYITZUKav2jhOfu2AUWs9zgNauBQODwrvSK
 MlpBm0vs2133nKWfYi62n13qSrpImEUnwVdOP+/El2YwAKzzF9vKfei2Kf6RvshdgHUq/jcVQ8e
 hiI90NCTxPZgTNQbLdDE2EBYycbZgA==
X-Authority-Analysis: v=2.4 cv=cfLfb3DM c=1 sm=1 tr=0 ts=694000c1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Ii0bGMNOlrnFhgTP-T8A:9
 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_02,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150109

On 25-12-15 01:07:25, Jingyi Wang wrote:
> Add initial support for Qualcomm Kaanapali QRD board which enables
> SD Card, UFS and booting to shell with UART console.
> 
> Written with help from Jishnu Prakash (added RPMhPD nodes), Nitin Rawat
> (added ufs) and Manish Pandey (added SD Card).
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

