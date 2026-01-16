Return-Path: <devicetree+bounces-255918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7532D2E321
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5424730390D1
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 08:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E6B93064B3;
	Fri, 16 Jan 2026 08:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZChx+WEV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KRdBmqtk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CAB3081A4
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768552820; cv=none; b=b0NmLdZ/JwZKPJR7DSNqooJ8tzWK0RudMFjI8QqxKf1rZNgCdoGcLcnhPvqBhPzcKZSBbTHntlRL+LrOsDNf7AREXXauNsoPYaCIH2JW0v4LhmbD1m9+0dj5kHojgbgkfTSZt+zhBtXbnYc1VJ50QvRAsfCrjdxgPwtGUTM8/As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768552820; c=relaxed/simple;
	bh=fqUwRFzeUjEFczFejVS+bnwpgTgDWhuY45iRib24h7Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T9d5wmmdkVSw+b7gDDWeIeT4fLFy7ikKj7EYewmB18tmXoJzaWe6dCuqVibChDhzgtd0pkWozSaPSZ+L9JWnjzna1oJUBE/bZLb0DJgYWyzIrnhd2H03LLaoMMcb5X1BkxFmgZcry8I91uztuNLlRSl30gCkpABbv6b+t9hqzQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZChx+WEV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KRdBmqtk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8LIwF4017960
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:40:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Txy8J4Vb0aQWuZ4JXQ5+k5jz
	A1F4Z/Pr8YK+encIf14=; b=ZChx+WEVyhXWBobvRYZu7VdvnMt6gk08vAUzSajc
	gGworwx8E5ZF//Rq6VvUiCfSGTYUCCz89uL+EDyqbY7OIlM9pS9+m1+Afbu6nc92
	KAttgr/b67OUaYsD6CuC96ppfKZTe3f4ooRHrsW4uijMwFKVOwsC67wGxUflgko0
	N0es5q0fccQKAOjKZdrkbnqtZsZSiTk/Kv5Kdf4lfoAqTlmguMuG3oTyX/3CN0b6
	IQtO41P0IGnushMvj3qsmbttM5gM83ynhq/4HTI5fZF6ZlVVhwnNDqOAYO96RNN/
	4+smK8AHUWwmx9ltHtRBcZ1PZzNIY+JrLuhsL6u0/xKchw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq98y9dr4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:40:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52bb3ac7bso310395485a.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 00:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768552817; x=1769157617; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Txy8J4Vb0aQWuZ4JXQ5+k5jzA1F4Z/Pr8YK+encIf14=;
        b=KRdBmqtkgI4Y0WcZAcPUiEtjjSKR14Ja3k7JKzFyv8d2h9asn5eCpgIltK1IPeI8K/
         vzXE0mubzXMJ+ZyevQhI72/HG3nyQOeQf1N7jktmDnfDfpcXQlaIj1WBtjYQDb1cLfOz
         PdGMJaH1gYc4cGcR5GcLJR7MusRuqxZrDHXO6vwrn2bbxpTbugfOpCi578RGjx+I5fWN
         rG7VYFdb5kdHxMd2AgZ1nNRI0mU5IM8wXd4ol3vsVGTBu9kus2FH1kiPpLBqSBrBIQMX
         05Av0VlNLorIlj13F83gGa2g9enXjl4jbr8qZ7IG+YCCN0BhOw4aJ4qOo6Al8+cFQAoq
         NjpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768552817; x=1769157617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Txy8J4Vb0aQWuZ4JXQ5+k5jzA1F4Z/Pr8YK+encIf14=;
        b=eA5XNZ2xGLmOadKsJfgWTM36AcHwKOmdte2sV9eRqQdzcKgSmiQuB/5g87+hGvjE3y
         CvLT6s6ECH0D1QBF0av05TOVRpeIxspuP1CyoQLM98FEQWV0x78GvAub55779ZIZrRA/
         lx2gxWC3dqmPABLyQc36ke1GwVBJKjkOmVVw/472Ze3/b+mswlg1N0Gb+RVfuUflZpjM
         9CYbcUz/lFdt/a/tNdrNQ4boFYNTpr5U05bJfHKy/04SX8ePbUU0/OLhqF8j6NZjyNYR
         ZjGrtzaDIJV+p6HVc5CuIj1IC4o/wQpmcpp9JvouS6m/eH4RfNybwxjEQwTeHKvOFGV+
         gvvg==
X-Forwarded-Encrypted: i=1; AJvYcCW7Vomn6wZvOtx6iivQlJm/IIxJc+z3Oo8g6u2KOW/TU6SdW7R8SAqSU+1NgWNtd1GygZR3GgXXI4iS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7L+nWWhY0sw4pvI4M33xtGmYip7SHcgxao/cXfXV1B8IvGSEt
	I0oQR7Hmibwb/TKlyTfGAfTP7YDGQE8zcYwsyI3/J9Qh5vaAztIVYIycTLyUZlEALggVPy+ZmQy
	2rp1qwQkRUX2z8krPq07tMeBNJBkzd68pxwV+fqxn1z3a3vjJO+FLvafScQvCqwoV
X-Gm-Gg: AY/fxX4KC/KwJyAGhojxYM2AMIrTA8AwpjOQ3lOeSaZnXhnS1kxWxp66NWw7vpPYAe7
	4Qa2li7zdtTd/s9QGkw/mqetdEDYYc4uvy/utqZNmDpPNUA3Z9QQc/GcNEbBYQcykMvs5tmS6v1
	sa3NeYvTABxyQKX7IA1YeZqvSgcBI3i9Bbx2ECCdRs2pl3Sag/rylrC+v5puTQJTTRidBZaS3/p
	1xbfDzsovuMXSnDrBDO2UhiQKLDSP9Ihsi4Ulabx0IvAPTfP/S2Io0DD5h3yEn0tO62fLyYajJf
	nbi2IDBZOiyNZZ6WhCDaywQ81V+nkghkfvUTBbTNDLtTXL9VdVrLWP73z0wB4pBSoD+xzus4Qqn
	k3UE9qw0g5QEJqw07hU2/W7daMA08l7LkgA4Fjx4fLfwBe4XW9mEbC8bqrDIbi04f1h+ghQq1Nl
	/wtCK5EBKTAMaqj/ZeF4NhmUA=
X-Received: by 2002:a05:620a:4721:b0:8b2:ffe7:42fe with SMTP id af79cd13be357-8c6a671612amr320809885a.32.1768552817293;
        Fri, 16 Jan 2026 00:40:17 -0800 (PST)
X-Received: by 2002:a05:620a:4721:b0:8b2:ffe7:42fe with SMTP id af79cd13be357-8c6a671612amr320808285a.32.1768552816771;
        Fri, 16 Jan 2026 00:40:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384d3dc57sm5614851fa.10.2026.01.16.00.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 00:40:16 -0800 (PST)
Date: Fri, 16 Jan 2026 10:40:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sumit Garg <sumit.garg@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, akhilpo@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        loic.poulain@oss.qualcomm.com, jorge.ramirez@oss.qualcomm.com,
        linux-kernel@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>,
        Prakash Gupta <guptap@qti.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: agatti: Fix IOMMU DT properties
Message-ID: <inqfbz3tlmwtvco3k5zhyy5wtskvgzorbr5am6rmeajlwrcphq@l55h2bmanvvo>
References: <20260116062004.237356-1-sumit.garg@kernel.org>
 <20260116062004.237356-4-sumit.garg@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116062004.237356-4-sumit.garg@kernel.org>
X-Authority-Analysis: v=2.4 cv=FscIPmrq c=1 sm=1 tr=0 ts=6969f971 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=bOYGGiuWuQYoMkP4NjYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 89kfVs7XBgDNqwNhbeXDdEpb2CvzFFQ_
X-Proofpoint-GUID: 89kfVs7XBgDNqwNhbeXDdEpb2CvzFFQ_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA2MiBTYWx0ZWRfX5dpN3ORbzx0p
 Mx8viDIpU4TY8XSwGy/MBxTSz67qUBz2zuvSo4dj/qz0EkGTk80x0E26dC/FVdnjOCX5UeZohJf
 HhAf7+6YiCjQ360u6Km2MyQE6Cf/ZRhem2PZdGM0EFePn+VSsxucVEdmfjZC2SXLIjc1ZqgUslY
 HroOuL+AuQkINsgw0fVF1KV+T4BMQ738qbeCTyFIsMHAVhFmvlYm6ydEEqK9VKX8L5t734FnsuQ
 17ybrIJmbIKqDb/JrDLURW+QvBT0FsRbQDxJeOkwDivZKg5Kk30R01m1lxODDYsieWsY+QaUB5p
 A1RbHbKiZml9lFkat24bH0xDv4gJ+//31uMHRwEvN45mWwW6R+TZ5yXcvtcJEdbh86zlPpRXSrF
 VpnzoaCNeyAuVKBjmrRpEOPnbYsA/zlY00qynJlZweypadUckG9eUYXJ0jUDEcXG+fzK9EShhtO
 0LKhLE9TKn5BiVSRJZw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_02,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160062

On Fri, Jan 16, 2026 at 11:50:04AM +0530, Sumit Garg wrote:
> From: Sumit Garg <sumit.garg@oss.qualcomm.com>
> 
> Fix IOMMU DT propeties for GPU, display and video peripherals via
> dropping SMMU stream IDs which relates to secure context bank.
> 
> This problem only surfaced when the Gunyah based firmware stack is
> ported on Agatti replacing the legacy QHEE based firmware stack. Assigning
> Linux kernel (HLOS) VMID to secure context bank stream IDs is treated
> as a fault by Gunyah hypervisor which were previously ignored by QHEE
> hypervisor.
> 
> The DT changes should be backwards compatible with legacy QHEE based
> firmware stack too.
> 
> Suggested-by: Prakash Gupta <guptap@qti.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/agatti.dtsi | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

