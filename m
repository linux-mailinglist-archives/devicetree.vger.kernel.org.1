Return-Path: <devicetree+bounces-255308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C0863D22065
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 02:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 43623300558B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 01:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899172629D;
	Thu, 15 Jan 2026 01:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OvSE8xBW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BQDOM8KU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06AA1C5D72
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768440493; cv=none; b=MskR9cJiuaK2vrbvllE/ij+OXmsk55AcMCT+Ta4O0nWqXCp/ooeZpIOQ/Fh8/hbBYhulBp1s8Gu2WVHpi0Z8btW6iiOnb7s2Y4gOfHKHpwYz0FxOteoo4hQcHh7AychQYbOr27vhtWbBIx5mPiivMEKYagFc3xWni540tAK/GXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768440493; c=relaxed/simple;
	bh=dmxjC6qlcqgndCP/W0JARXpty94tqr1V6XgBTKPx9d8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cUG1TcDVGoFax431MhZRbBS+tLNaCDTSTcGMlfezPPECW+pNTaXSKNdlxs8GSODn5H/KYWB8kfbomeNEoFGYaXk6PePjDI5QMZSWYpXzoz9gVdb7vB3KCQ3nWl/bTThwNgGVLq0qE4/TDr4g6ay6Ml5ZWGkhSfPlI1FlO+eBvQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OvSE8xBW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BQDOM8KU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EMsopj2736164
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:28:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DrWaDhU0InJcA00y4PTYOHbm
	RnzReH2ikq6bd2yjO1g=; b=OvSE8xBWEVJUOcbM7jzdlSvZmHp9DJYcY5ncoL0A
	q4wNSAvChxKPqluOMkDgnWm+lvVKXSPi6HWL8KT4UC7Fqfz/psV/LYaLu9OGeQqB
	IhHJ+JHng0PUQxm/38FCuT3EX896b7HCkyvbDzJPPMeX7oKwJrUYjkbLOfTuKSCb
	HRbeyT+1vp/cqN17nL0k7aS4sYy3Mskt8oTvmnNHWvcc+bx+/NyOkKLGvFS5k4d1
	NHWO0N2ZRIeHOHE/RUyu68G+y/mOlEplR1qWlfIrHfb9e31ooTb22yjlJJzD+Uh3
	cXozjdIkpdC27e5fmzotxK4eXP50mKRYdB6fxiJ1TYBheg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbj5j5bx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:28:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52bb3ac7bso69143685a.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768440490; x=1769045290; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DrWaDhU0InJcA00y4PTYOHbmRnzReH2ikq6bd2yjO1g=;
        b=BQDOM8KUoeTdjOMr7s/Qa6536WdTlodhx0G18gfEUFdVOh6FLUWzvxhJZtJBz4o3I7
         O+HZ5ScjJ/SfcTnGlENUqPt+4SzFu5R0OqexU5pFgbeq8HBkPPJzuyh8xAtGaTVtvAPu
         sQ3CpI2nnukI4Pxr/AyoSRV83TGY/fHW686Pz+rVzceBRZ2tuefp4QcumK8RI2U06aZn
         ClR9Y/jTQeRTtkl4rQ8G415L5tglz5yNRfMz3nEtblcXrxTtT66fQqV/ASWi5YjGuhcS
         BlAD2AHfWqds3yXjUzn2dDuBZO63CeLTX91Slge/V/edMD/rXt9Yb1XloWTzO957B592
         dvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768440490; x=1769045290;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DrWaDhU0InJcA00y4PTYOHbmRnzReH2ikq6bd2yjO1g=;
        b=uX/gXMJgU8quua0g/7rs4Vo4Wnw4/kVgjErs7rWdlry23QIl2VA1uM1lkIs/quotpd
         3hzQPH5iFIe4Y0HnYslTm1Y6b9cMC6BzNvYsM3t+aglhJ7uldHaNy6joQPv/X/LEX08+
         qE3y3L2zyhZCnuXndlgzU1z4vR5nLo/qW5sQMhp1d4n60YBAQRS7iQRC6tOBLPpBVBiY
         WUCdDFh2wulRHwaccFVw+IY5iStXNWikMDt/iuHi2zU5scWGp+N4fVf7u5pPfZwLDHzr
         qXepOUJNuFMvBuFVmXK/Yu09cwFiWo+5IRs88Ag1CyrFK7wnwqRzmYzDmZ+jLh1LU0k3
         JX3w==
X-Forwarded-Encrypted: i=1; AJvYcCWC0tFjDs4oQG97Xv0xPoRQKVNF879RwSzRDQUQPew/qhtYxzoyopNW5USZphuWiXXho9EohhjddT25@vger.kernel.org
X-Gm-Message-State: AOJu0YwDF/d7ye0kUAI95TBwPqtFDICYBxH78hfY8GIcwqkCg1xoaXW2
	StWeI8ZK5lLPvJpMFrDCH4yVHE3Zf11altD7DTVWBHzjDCkgz3icx/t5QO2zGa2dA0OZwLolMDz
	Rv2piEJ8gbfAO/lm308gvSoRjL2WGx1/cwevXxmfsn1JSiVftWWuthiIho7kubeu9
X-Gm-Gg: AY/fxX7sVCMu+3Vz0ATM3P57aChFmCr3+gYoXGW/bWV2pmZ4QQTziKang6JyaUKi3k4
	Zxx1SYR+vIsc3TqvWbVy0qXdf2yZ4s0x6waIGtZX7NDQdqM0aStNCuHVjLkgEHtddVpMZ5tQf/a
	ovwuesmG7bpG0odMlFxhTCxtcNW5Uz+bhFmRaKzHkcwM1/+kLw6pPeKcAELdNBhI42y+U+UgoCF
	dqvmjD02Dyzx491Te1sFMIB1TOF6b+CTSae/Yi7oGpto1KQE87FvK5PzcUYP5hCPCnNPX0h5k1T
	NuoalDLwQ4URo/62ZPgSskhdCNNR50NUhXWFxgMrc1A6HUgWwZ5CyRWpDXTSvTqnt9upeCeKhUS
	TXzfaVuAE7ESY8M3Nk60/FFOBnRz1IqiXvDOX62F0FpzHqNlz9kiBIWWGfykIJcYlD0A3MUey+l
	b63vnZypFS63Bx07vRwBOAQXc=
X-Received: by 2002:a05:620a:1a83:b0:891:bcdf:83dc with SMTP id af79cd13be357-8c52fb43699mr694795885a.34.1768440490174;
        Wed, 14 Jan 2026 17:28:10 -0800 (PST)
X-Received: by 2002:a05:620a:1a83:b0:891:bcdf:83dc with SMTP id af79cd13be357-8c52fb43699mr694794285a.34.1768440489703;
        Wed, 14 Jan 2026 17:28:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba1049c79sm1189710e87.91.2026.01.14.17.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 17:28:08 -0800 (PST)
Date: Thu, 15 Jan 2026 03:28:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC] arm64: dts: qcom: qcs6490-rb3gen2: power on onboard
 uPD720201 controller
Message-ID: <mrby2lcn6y2igm4qljzv47vbc4xxuxyqc2kyrzvxjtxbwapf64@ulmbbxi7kudg>
References: <20260109-rb3gen2-upd720201-v1-1-50d9b22dbc2a@oss.qualcomm.com>
 <1fcb607d-f3dc-4dcb-b640-452eae750952@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1fcb607d-f3dc-4dcb-b640-452eae750952@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDAwNCBTYWx0ZWRfX7SGs4/+sLlqy
 wkSzWbCDgiQUPI2KVmR650ligDHslzx2LTwJmkIwNRfQT4MjNSXCgx0gXYdvadw/yojz6RWcDKe
 vVNd49UT2Wb0OyrRj01d/SL11vQmSPbsQQf2Atyfntv5S2Cm1KPJ+j+aQl5SfDdug2MV7Bz1lSH
 wmgqfRXaZQV9RvsTGJimm9Imqg/dZGc5WP8XQ5+GYfjUen0IHgCXJsYA1VtHWXwG2BgtZJP4Qk8
 7jNQpXGNk9MUv2YE4WGtlf/Q7HJjyQuWWWCNpEKJ9+w0KRO+0VvDgLtk3F8iyGipBqDVC+5hsyL
 ll8aRR2ip1DH032jIUdDwJod2RtY5cT+8QtYCArgvUvrWnVtawPZHQ/xnrt4uuQC1si+I6nzmDa
 JX/sme2qhscxA40MZ7jyB31TZXo07a2/v7dgFiTV3Th1LuQ36lAnVJFOaDm1J0cB3TLxGj/4ZFV
 ySHtZO6P5tRyBXz1v7A==
X-Proofpoint-ORIG-GUID: lJzaZcXRhNDphghoCIgH7nh6YeSAfJZ0
X-Proofpoint-GUID: lJzaZcXRhNDphghoCIgH7nh6YeSAfJZ0
X-Authority-Analysis: v=2.4 cv=aapsXBot c=1 sm=1 tr=0 ts=696842aa cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=8HRmNHPmt-sJrXeETnoA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_07,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150004

On Tue, Jan 13, 2026 at 04:00:02PM +0100, Konrad Dybcio wrote:
> On 1/9/26 4:30 PM, Dmitry Baryshkov wrote:
> > One of ports of the TC9563 bridge is connected to the PCIe Renesas host
> > controller. Specify the voltage regulator, powering on the USB host
> > controller.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> > Note, with these changes I can't get the onboard hub / ASIX controller
> > to work. Most likely those need to be powered on separately, but my
> > quick attempts to do it failed up to now.
> > ---
> 
> I assume it's connected to the switch?
> 
> Does it show up on the bus? What if if you rescan the bus manually?

I probably wasn't clear enough. The Renesas PCIe xHCI (placed on the
interposer) works with this patch, but I can not the USB hub and the
ASIX net controller (both a part of the main board) to show up on the
USB bus.

-- 
With best wishes
Dmitry

