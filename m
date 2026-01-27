Return-Path: <devicetree+bounces-259744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEvSL5BieGmrpgEAu9opvQ
	(envelope-from <devicetree+bounces-259744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:00:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 235F590903
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AEAF3029E60
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 06:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8396D8F5B;
	Tue, 27 Jan 2026 06:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K+gM3r1g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V7tBsW3B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102CC32C322
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769497158; cv=none; b=cqRgDVY+4hUC9lJDGGiIYmlzaosVr0fsbHtgQ4EeMzmJ7x4t/+Z75nLTlL5V+fzUm0ikq5Bh1IE33hqL6e9FVx5LGg1wHkMMcJI0sAuR1paebMxiOivP1T2zkj0xQKGKAJBb2wrnkRx64pEqRhk8qiy6e3SnlCwiUPQuSOLsdoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769497158; c=relaxed/simple;
	bh=PtBldIo8DvR300YnmXjChMGVRwDuAyKmH9grvcK1H6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tj6wLgmEprdo49RULrARoopv0ITEkI6RcGCydWw7XTaxl1qclszOdR1UfaIwGcGgIp8+xdby4xJVO8x85WhAGxUlDJgEDr9iLBsgzRUFSW+nDMCOa+g7z9+g7cDgeckaGX3HYWOcMM4Cy7DHbwqrZ+hjtcLu/iGoYJzklAAa74w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K+gM3r1g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V7tBsW3B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4U5ov171353
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ftd5aHd+Qxgiy0Blyy9D/0Wb
	cslzuoi/6m4KczOx7Eo=; b=K+gM3r1gOtRXoJkuH4ioeOypGmVT4SDXesMq3bZb
	5QPfqIT+aLPjmi6x5kfxUHYNRM01irMaM/3562pw/ChVVL473UryfYZ6PSo+QWpo
	Gp5XLrkaALJbgWsgXRfV0yBNZ5hdfIWrIiuvF8PaFt+hPUpzXbuJGOb+GI2grwDb
	wdes4DC4gnlhQYk0DAJB5j+fJ3yVQ7GauclOKp52mE0Fn2Z4c9UFrO0Q7bxdSiSm
	AdWjH45nNYXU6nI8H7wzBIaKsTLkydMlVgkfzhGzIDevAj3Mb/yeoWtYm0ByNVIF
	S520VnfuSCtL4IGrrc/3/iS7M8UMt8FKjx0uoVCpoda1Mw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a1m11-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:59:16 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b70d8095daso5095979eec.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 22:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769497156; x=1770101956; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ftd5aHd+Qxgiy0Blyy9D/0Wbcslzuoi/6m4KczOx7Eo=;
        b=V7tBsW3BMnSe9mORlNu3oihtHmSpxMLmHmpbyGu3k+waW0WqHH6SPTK80SJkSxgChc
         uk6tnlW7kJENJncHDddt7ytT6Xgz6HIzFeT7ZjWwppQHYKqD5Fvu6zuEilZbhey0mK1Z
         k9B9pE01exvtBkp8f/v5ULfqeQdelu1S+QR6nQIv8LsMtcwfzHpnl4NzjEQ9oGW2QxUS
         QFqB2pEwTIWIyBz8IBUtQL+m34tKnGbBp378Dv+SUporB6iJgPcAQqNSRm4W33LCFFoU
         LSYlYHUL2q8wcelHmGHnQdbGNItGob+TXF10XHBosgW9h9CEQyf9UFDmMTJmCOwMlzFM
         XY7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769497156; x=1770101956;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ftd5aHd+Qxgiy0Blyy9D/0Wbcslzuoi/6m4KczOx7Eo=;
        b=pN1IZzyHJwdEs4ckeqICu31Dq2uHETvmMF3iyw0G/wPKivrdo90Xr5JU4c0z2dti/H
         9LK30Rrp13IGlVuHpAzy95+6Xwf1kghrzyKNgZSOnumU1IXFH4yrt113HgXJgioCBp4O
         07uITmey8oPyiZ5oZ9aXPsZOVYcFCVj+2mvVLEDAE4CS0gVWDqA9OIp3LDlgehUErS1/
         Agb/fpD8GRoIJFtmnh1nWppQ83DMMdXe+Go5LlBtF7L7agZm6fZ7iz104mJVT84JLoIJ
         WUZHHpGi6g/aAFhq53tNlcDizHE2NKIC3Ujhs8zusjdQrVlb3J46H5zNW2PyNtGdTgZN
         jzAw==
X-Forwarded-Encrypted: i=1; AJvYcCU0YdpCdSsniitjd04vu8FqEmC5Q9jHXPESP6hyarDo2g5kmhdhcGgf19JD0qFwiP8+nbVJ/dsG34bx@vger.kernel.org
X-Gm-Message-State: AOJu0YyBUYh6a++NN0qrgsg0BeCDvICySeYxX39rMSqToZnipvHKtSvY
	eZgT1YOF1YYGnXZA/huGu0sxl0ntWeWGCvrb1SbTQvbHqlc2TI3c0FMX1z7DHRDuuVqNKFMrGja
	jHAkKX9ip1KZCdqXkgYSI0EvmLWJu6W2M5LEFRwqMEWxdK5AeIdxZloqhqWlwqFq7
X-Gm-Gg: AZuq6aIZt7Rc/lccrKF+wup0nu8R2eXQxOmexw6aaoTfazlsNugSoA7aLEvFLetLhUl
	qo8jsi76fCSdt1U2yzjlWAHaDNzUULM22sdcfaV6cP4O9Ph41WBXgp0BYxJFXSpwx6jBg70B5hp
	z7QNPAfxiOeouU5h7JHbZFIzzQRWhOkCnKEZEwXNSOqlyoyVauB5x4rNVTyxg1GC2m188h+Nn8W
	Zx1EBy0qVA+yfZHDJ3sjnCwAfjtj7emozhqQwJ89YcnBPSX59ulLBwUXXr8z8O6mDyM6LLA0Rrj
	+pRbt67PpvQnjGZncnt+0ciFlvzZlsYcOuHB1m1I+itEhn5aeM95Mx7npucVLAEzgM8mD8C7Mxh
	PMNN+FNeJuHblmYm8iNsSou2phWGPIYQVmKMtU+GDSQz4twj9sQ+tc7uqsbo=
X-Received: by 2002:a05:7300:dc8d:b0:2b7:3782:fe60 with SMTP id 5a478bee46e88-2b78d9191c1mr533260eec.14.1769497155549;
        Mon, 26 Jan 2026 22:59:15 -0800 (PST)
X-Received: by 2002:a05:7300:dc8d:b0:2b7:3782:fe60 with SMTP id 5a478bee46e88-2b78d9191c1mr533234eec.14.1769497155039;
        Mon, 26 Jan 2026 22:59:15 -0800 (PST)
Received: from hu-anancv-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b73a692222sm15817425eec.6.2026.01.26.22.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 22:59:14 -0800 (PST)
Date: Mon, 26 Jan 2026 22:59:12 -0800
From: Ananthu C V <ananthu.cv@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: sram: qcom,imem: Document glymur as
 compatible
Message-ID: <aXhiQB6oKHXPKPB_@hu-anancv-lv.qualcomm.com>
References: <20260123101501.2836551-2-ananthu.cv@oss.qualcomm.com>
 <9febbe8e-3060-47cd-a1e8-5ee2b4de952b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9febbe8e-3060-47cd-a1e8-5ee2b4de952b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA1NiBTYWx0ZWRfXw9/MxzK2mSvc
 PgA+dEO1ocA45NoGTn/f/A7h2gkaQaLjYFsUJNxdeTtGcb2ohCzdr95F/xL9KgsZW9DQHhH9BpS
 68lppWIipc7zWVcVOhp1rCG2ulv4NiHq4UJv11o9/HCx9MhPmqaUQtF8rtSaPPCcUsHLLFN0aru
 XLrT4n2YoM6LU02qLXRVb6c/4e8BXzbxLdECuPV4XNfx2huc8Uu+374JFN/Dt59zSGgun0YPDbp
 XKXBvSU7wo9y+0yWD8qPuVOaNjz7b9KhFHU55q/7QpO5eCcpMQdDHpDv4+zkKbPyYoONi8IwJc2
 82pLcau1Z+H28Z/GB+TzxFToHcrblkoLDkrn0lCuexFV58HdaAT0BcrlyxHbzoGF6PJ15XPHONA
 0rYIB+p660aWU93KZVaCmOpZ/5d02XGPx5bZC/y7oYqWAPE6sA5HIowaaTP9hEBwLsuf2Yvnk3u
 p6H0XS4fLp+Od6T57pA==
X-Proofpoint-ORIG-GUID: VIziA3CYiRSqRpLcZm-TpLCh8TgVWoSz
X-Proofpoint-GUID: VIziA3CYiRSqRpLcZm-TpLCh8TgVWoSz
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=69786244 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=PGMaQHpP0y1B7HiVbAMA:9 a=CjuIK1q_8ugA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270056
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,hu-anancv-lv.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259744-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ananthu.cv@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 235F590903
X-Rspamd-Action: no action

On Sat, Jan 24, 2026 at 09:57:18PM +0530, Kathiravan Thirumoorthy wrote:
> 
> On 1/23/2026 3:46 PM, Ananthu C V wrote:
> > Add compatible for Qualcomm's glymur IMEM.
> 
> Shouldn't we use "mmio-sram" binding? Please note, starting from
> "kaanapali", IMEM is described as "mmio-sram". If we need to stick with this
> binding, please describe the same on why so?
> 

Great, thanks for this review. Initially Krzysztof also pointed out in v1 that
the placement is wrong (thanks Krzysztof). But I couldn't find internal docs
regarding this and since I missed out on sorting it, I thought that was the
wrong placement. I see that the kaanapali imem binding thread has sufficient
info on this, so I'll test with mmio-sram and make a revision if that works.

