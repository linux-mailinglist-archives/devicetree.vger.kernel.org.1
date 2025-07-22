Return-Path: <devicetree+bounces-198607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E85B0D914
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 14:12:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E48391899A3E
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 12:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56EF2E8E14;
	Tue, 22 Jul 2025 12:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hkTa0ng6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31D72DFA3A
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 12:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753186334; cv=none; b=C9yKjTM9a/j74RIKTcAlQ+5w72RapbxflZTURZ3FHmAvQUiQ3lxXUPoztGqQqYhdV+utf3xmbgq9bsA0P3rI2YBgb9wgq2Zo+ppnA06fqbWZkgaVhCb4I2kHcyqzAxuvyLXeTSBU03AcorbAGP0H5SKr66N+O+c4jEkSpN08u88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753186334; c=relaxed/simple;
	bh=9AGfNi8Z3abxmCMBqD1ZTBLDwhONqppJromaTxecKAA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i/ZLsBzGB/S5vmQgNd0GyBHUAfdCwpOf1j512mKvC/oY8s7eXXRMF0WU2R0cUAjw5BclD0ehJEHQXrXXaAj2ti85zT4aGECMn0rwRtzpHVTd9k4UD5IYxq3Pb7HXpqc2NO638mir1CraAEhbG+nUVnOgqq/493rIPcBGluZpzXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hkTa0ng6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M8anL5012541
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 12:12:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NEHXuEGLvj8JYaMRceqywm7l
	bVVNFFO7FenpbK/Ukj8=; b=hkTa0ng62W9KTnRIW60j4zwvEN47S/Ij8eczohm2
	NeQ1eJ6VSSXcoRihBgFZmWtHSnKeQRkqCPvpz/S3UO65U393ytMiBs/oE1kCa1QK
	TrVETZTDKNF/nr2quSYhqrINE5oBAvJ8yHGAAt8rHjXvJgYBvq1RpWs+7dv6tH8T
	SH1u5FYTw5RxADVc7mdWdY0G2Bpb6HUDihhIkbKNBk+U8oLeNP8p0euRcdhSxNqs
	BeMPBgzM+QcziBkwdBmG7O21xC00c6C7Gw2S/CCb87Mtlvc6/6cWoFUhxdgopz7i
	RkFcOaPUdMWQ3pnwqXQ2M+apw1c4lO+y0GqVSN8NZ9On2A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6kmhw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 12:12:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e347b1a6c7so1300671685a.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:12:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753186330; x=1753791130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NEHXuEGLvj8JYaMRceqywm7lbVVNFFO7FenpbK/Ukj8=;
        b=oCOfB8feRg88NIK/Y23QASYVMn4pmRVslW5zJ14/4xCOQfeCT94lwAdvnhwQCPAjjp
         rjojNY6YXWoSp+wCBoyC8Rss01bCbbzm5D0i0lYoj0Ao/5Hz0mce2DMD65ajgO/k33X8
         jbci9HRmmKjU3fnhYiQPPc8Y6/BALaYVJzkbZtaFr8eU21VawD8Vx44JxOIJducBsemW
         bFNM0AKyaXkUkM05p+F6gw29SLSG4tcGE6w3f8uNPofA0jl+vxTLsfBznaANV1RZMPhU
         PUzoKVrdZx4KQmwvUtRvENWM4B0rmXxKeMTzXwKGlCXA7XWcs7YRP5TxcBzd9ZM0bv6X
         XHmg==
X-Forwarded-Encrypted: i=1; AJvYcCX5Yr2ZWCS1bdV63tetdbeLEwJQlskUOJoGUWcBrMkoh7I++G/OmirZcJbxsnji85dn1lY8SkK7ztmX@vger.kernel.org
X-Gm-Message-State: AOJu0YwRsneNFnB9uM91/2ru3HExlNX9pmEM06bOqhoPVoZm6uIU/Ynd
	2ky31F8C/3zmtOy8c9HBU+QhTipof0Ah8dWJ6zjSqLzel2Ky9Ha52PdCRB52EpnzRI/7+nDGdFN
	13+E7e60kz4AC4LFq98uhML7uiwvY9jLZgL0vGV9CWEKKrozN6gjJgqtB2XRKGcwA
X-Gm-Gg: ASbGncskLobCdqC6ZBHoKj+nEzzis3oCKTFvqDd8McfdP219/7qFYeB2KttrvXnooUR
	EGd5Q+bVkoUDvyM+sSirO8uDLV3m4xsZnmdOc//XjqtouT8emhA3ZZK9xWVrv95YJARiLrq1VN0
	G7148A3caUDUWADvEb9VgZRGmEqUfw41CIr5xPBasJZUTSxEEbOFcodQoJQCp+0MkAaGeVwN82G
	5BIRbGAlMzIvj0XUyJJL4mJ+p0Ev2yF6mJcyxGnvP+cNPS8O/yfu5wEBPiH1qqcBfRiav1IFGBB
	v97UV8g15ctD/i/xJYFkgjTrDbhT2IFZhSFsiIzzKFIZcCAbjtXhuHs7ElojBulm6UQMgqtzAKq
	8N+kAAflH8B+7wTZaIFEB5kg8ceDWaniYCrILIrtKWm1qTeI/qMqx
X-Received: by 2002:a05:620a:2681:b0:7e3:16b7:bf26 with SMTP id af79cd13be357-7e34334b831mr3210687985a.4.1753186329645;
        Tue, 22 Jul 2025 05:12:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGJb2jv2fOXgaW5Cyx19ZEkc07TsYWKVZzz0wEH2xiSqbTtW2kvxt9F0BnrHo0cf4Ck6Rp6A==
X-Received: by 2002:a05:620a:2681:b0:7e3:16b7:bf26 with SMTP id af79cd13be357-7e34334b831mr3210683885a.4.1753186329106;
        Tue, 22 Jul 2025 05:12:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31da2eedsm1933882e87.187.2025.07.22.05.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 05:12:08 -0700 (PDT)
Date: Tue, 22 Jul 2025 15:12:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: ipq5018: add PRNG node
Message-ID: <omokqkvpqalzwbc67iblekuiyfg6tnob7hpjh6ka62mbsaltla@7ifwjugxpnl5>
References: <20250721-ipq5018-prng-v1-1-474310e0575d@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250721-ipq5018-prng-v1-1-474310e0575d@outlook.com>
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687f801a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=OhTC08-JUxoFBRQK_kkA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 3_aDWnQM6h7dxlj9DgvKOgSYjokIYVnq
X-Proofpoint-GUID: 3_aDWnQM6h7dxlj9DgvKOgSYjokIYVnq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA5OSBTYWx0ZWRfXz5ECuvKGA6Wk
 A8UJQNYL6Ld8TdLCvkg+WvOKj4y/+x0u+ZevBttWIUQs23/Cr/vb+FI72z1zhTQO5lfb1vQQ2BM
 uJDjd1E1DTQjh3LN5Hhny3NIVwuFb4VHhVPLB7tYmvLM9xCPQ+8PDS/nqWiHd5uDF4O/Q4thFAu
 7BeuVKb8TZ6MDdMwR0kLoYCK26g7gNMl6Ns2EMuTVxe2piZ0j++Z0fHEshLyI3RbyEWMaUxq22p
 2+iwONjx4rCqeQ2/Mf2LecrIRafetYZ5g3C/m2BEG+LqYmmWtaIvZK1Bj1KCljNT/Tf3vA/0Ir4
 8j53anVqYnUvaTeutOjfd2iz1lip2uiL4wulZrazAoKhblBEAyBdd8kKtXdRLLxQBzDGwGVyk08
 QGv0krDyV/AAj/HsgAnKEzeXw/bDvTLPSEfkP4OXkCDwHeh8HIqXBULCbEy7aoniHO1V5+aI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=665 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220099

On Mon, Jul 21, 2025 at 10:30:46AM +0400, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> PRNG inside of IPQ5018 is already supported, so let's add the node for it.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

