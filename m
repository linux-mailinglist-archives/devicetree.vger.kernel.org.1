Return-Path: <devicetree+bounces-180077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F87AC28D8
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:37:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F2C09E2C30
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F4A82951D9;
	Fri, 23 May 2025 17:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nQe79jb5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11041494D9
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021822; cv=none; b=uvYAFaMjGuGHkbUZc/OM2U9lwYW273aAfEzM544OpfU6eKCnYIGrciFodUuzR1JxV3mcJb67hplVsxfPiifVfjuBxDzJbpB4bOPBZf+M+N9ZMBxWS/0JRpuOC5hqnFx4C1jLYpTX5S+kdlah6+mQlwQkkqnzvFKn7DaDk8DSTUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021822; c=relaxed/simple;
	bh=uklTHHHpR9OHc6R1SjPzRKkbwTijx2VjJZFqlc+3wI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X1jru68LeFZItJo3Z0AfHhsLwgiqrTUsYZ3rR2y51lsvzSO9RoNMbbOZ7+3RgFjfhBKex7u0tY4D5ftRVZsw4kStp6dzXXC+APkQ4Tr1awIuDGvwLd3Hu4xIttyETAv0IMdl8lUmvA2C9z2ZX1aAp2Iui0X/JNESbks1BEYTaTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nQe79jb5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NE2QLU002269
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:36:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BUrC3k7kyjySXl2SGtXOi5di
	wM+mqnx/F7T+adiFi9A=; b=nQe79jb5XJofAbH2wa/UIVWqI8UzhTUGp9KtpI/A
	wKHDhi2MZJOKA5AvaY4xolYNmaAjIRiL/qK3DSs6atL2Dl1yZMWjlenS9R50qYyY
	/1juZNkDeTUS6ixTH6AM9hqWWl4x6nbV71TywAxVdBnrHdkA3dsfLn1XIuHhmVCk
	aXkLIvRGY9qUE9kNpW+87bZlTsHAmNsAexk9Sf/+ZLURdsbCEnoOFX5TSSZMIzzK
	eD1NX7ERKutIr2/uf0IAjN6yP+MpIogjGpEQv2jbC+YxPWXmwefEbYhOnJGNYyvR
	ZrbWKDPiOeQ+8C8CUjzzEYJNUxeHBkqOGdukxiPiVqemww==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf72m66-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:36:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6eeb5e86c5fso848056d6.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:36:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021819; x=1748626619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BUrC3k7kyjySXl2SGtXOi5diwM+mqnx/F7T+adiFi9A=;
        b=dp0o2JgreRDZ8Q8SnxSBx1H75K+UG2q8gdAPBKgwUk5RkaBEUerg2EIKHqcUUh2zbZ
         ifmbkNKjJ1lRh3iyziid36ifMh+ChF8sQhgRIw1JqyASYls2MSGQ0M7z2LHCLWtJ2snu
         9D9ffAWKW1RyJ1qofCtHGhgl+nAhTAMr5TzcWSGdlLPHer2bAYAp/uPx+5DT44SIxQdZ
         Dfb/0z7RDEkgZmuS9Qbh+DxtsdwS8PmaDJSqnG7REqyGF5Zo4olmQsqtg0BVveIHMImm
         7uNFRe8DR5ZvtyadR5AB4u3ySceyYbdmmSvJyQsiOb71DPYEfXRnQeWEuqn0oND9QcoV
         QPTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuhhtCtf4Q3zRSu5dzPahG9XZUdy2O7kuLL1MuKDTP6n1ql3ZkVx+RFVjke3h4Q0mAxR9/HuFNaMqi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2EOFHfJYU7Tc9ToixoZZTzpvWPWPA6WbcUR/lwrkwtZz34k2x
	hwTPr4MYeTSJCb4lnGAiO/VwwwyQ2AX3sordqbZ+i5HyMqDB07SUM9VWK7wo2mfeVRKpNgWSMkH
	i4rcY53k4NEXIUSBd/5OVOh2NQNgLMxUrClItBzIanlYN1+x7EID84PC3hNybPOhu
X-Gm-Gg: ASbGnctpYnQXiZJmpp+h3sqGWtMDATOB5w1RlXcRFuERQT3mRXHmJWgxCUBRDQWt/aQ
	E7jXgc6TMZLrguhmBOIkqaN5Rebva3YCjV8nwZXfEROSGGHR9bauClkHi13zC7TqLX/jtTy5YB1
	Jyt8z2Qx4HpsqMgR5dYEuhYkVHXFyiSijyUxAqTxb4nckbUdGzTyAy2fQoVHa7mLOX2ZAwD16W6
	8Zy2wJ1kKXqxQBiffYTvb6ExAB7hGrytjeTql7y7+4LLpAmE84tsDyaaikSaA8wcbu+V8jmzW5t
	PUZ6K+YHhasL752BCUCLaEPQPuapV8lojUuDYsPFfMTz7LDOFfI1fC6XxSloPEFXtXaaIyNyTfY
	=
X-Received: by 2002:a05:6214:21a3:b0:6e8:ddf6:d136 with SMTP id 6a1803df08f44-6fa9d2e862cmr5068266d6.45.1748021818550;
        Fri, 23 May 2025 10:36:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyp2KHfgGDHOTpGgJ89pgVjld2+39k1RlwidUUIOx0KxFXi2heVZjvt33HGvuCTN8EZpD5Ig==
X-Received: by 2002:a05:6214:21a3:b0:6e8:ddf6:d136 with SMTP id 6a1803df08f44-6fa9d2e862cmr5067796d6.45.1748021818087;
        Fri, 23 May 2025 10:36:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084b46e3sm37750261fa.13.2025.05.23.10.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:36:57 -0700 (PDT)
Date: Fri, 23 May 2025 20:36:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 09/10] arm64: dts: qcom: sm8550: Explicitly describe the
 IPA IMEM slice
Message-ID: <wbwxxwvflh7dc5cupcl6g2krqfv5fp367qzq7es4sawjpid4ny@yxtukiguidi6>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-9-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-9-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-GUID: qHFwzlPLHYIm1qrQW9yjyEh4Rk3OQRFA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MSBTYWx0ZWRfXwM5HkS4bRiJf
 /OaUO4QVGo8fh5vSQ1tmnf7WUHtOY8NpamUfvoDHco4vSZnBk25YN7bd1zqHf7Q5CM/zr5Evqj8
 9Dl5ghSf/ApvyjmY2wjrGcoBorkl+SGMvvKgYvyVJIig1fwDWgg0qAMiwpMut2C5WE4qFq/3Zvl
 8ALxj8QZ7qpIKaHKFgc6lRunjuk/eLtSyKNkMrQf6KTzsmFpX51ZGyZfVRz4NWlcs7Ey1NWErs2
 vz4/DVzx8klbS/YQ3wWwDFNZJ3wq568kmP4hUNd4Wuip6EhF7iS9HPlgm5QduD1n4R2gcUSA2m7
 DKyDJfg5ypoL2+TBW9GaqLf879l7Siedv7cHz8D5OhQXDA0bV5n2yYvpVgsvLuqofOcjjp/SHSx
 zFznO68OaSTaVeTOBYrZAEgH2NFaXzrIll22AHwCqZHu9lHaZiZgQSzM2FOGB07CTqJUNG6M
X-Authority-Analysis: v=2.4 cv=fZOty1QF c=1 sm=1 tr=0 ts=6830b23b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=CQVN2WYv2dQaG0RyAuwA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: qHFwzlPLHYIm1qrQW9yjyEh4Rk3OQRFA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 mlxlogscore=680
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230161

On Fri, May 23, 2025 at 01:18:24AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As part of stepping away from crazy hardcoding in the driver, move
> define the slice explicitly and pass it to the IPA node.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

