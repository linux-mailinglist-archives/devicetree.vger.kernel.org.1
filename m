Return-Path: <devicetree+bounces-243073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D27C93630
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 02:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 515E23A7CED
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 01:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30801AA7BF;
	Sat, 29 Nov 2025 01:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="abUeTG8H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W3WNu2ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A89E3B2BA
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764380211; cv=none; b=sQK8rpecfjtQfZk0zN5Ok6hWrhpb+ZoEdd8TPFxQRG/MswSaZNNqLJP6+eHBBNELbKxJbGOP4GoKiZZkpRtHQU8W564rkgbjmAJOrxFGczekTAswNxGoFSGMvwrM8puIG3V5L0Z7zGjJvDSDBtGE50edL6r+UR16zahRWuvSIDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764380211; c=relaxed/simple;
	bh=U0yCnpzZCRxKiNCq7FmevgdBBGUY29V3tCizS+IJwvo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XnZ3Lch4uhCcBQfZJPyzjGMsL3lofOnR0csduZUew1wZc1RIvF3gOkeUs9Rh0JkoYUBdcWWWiY/fpnWMxelAuwRaB5CZx4N60OGiYncJPE4tNHo3YLSQenvJO4ntZSEQC1kD1QikawlHq/fxJU2MFDO6/dteJf4iGKpBVshZHHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=abUeTG8H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W3WNu2ps; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ASL0MnB361692
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:36:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ufm9gNwR0cbLZ1GXX2qw+EFYjvpWMB5Aesn6FOAhg9Y=; b=abUeTG8H7TdMjz37
	3Z3ph895DD/EPZ/j9oqIjDYjUSjXCtEFoK0tg/wG92woyJwoUNf9jN6JmAna5aGM
	dvfpHfILTIK1DqCunWEMRLteLZi48Vf710LOzn1Uhn3XHKR+raHI481SnhmrD778
	OpHkINc2bN1usctJA6IwIvBK+0mXREkP2YpbZIVTR1I7hgn06CuTnhRum7eeIxP2
	YcqVSpBBjNLgZoJcP07E5V024EVE9l2Z7CHZp0kRGivnE+6QQ3v1Z9qyiTE89Cu/
	kzK9yTCEmHr3Xgpez0BETfBIoa4bu3sn2ZjqFDk7bsHbG8b3uyNh1EDfpURm81DX
	cYIseQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqfuj0r51-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:36:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b233e206ddso404001885a.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 17:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764380208; x=1764985008; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ufm9gNwR0cbLZ1GXX2qw+EFYjvpWMB5Aesn6FOAhg9Y=;
        b=W3WNu2psQ9Z5BZtmFGP5ob/2edCaGpFJ3MPZUkA3l0GD50fT38hIqKiRmSr11ALbTX
         jbJfFbG/PualRpouL61cjuQrRBClsBRBoMEshkdsa2hGunHx3JJ8qqm7OR9j/LlEracr
         b31oztZk4cyrdHU1ZH78xI376Qif3SB2OBJ+vbBNmD4XoLLEiZc2zT6F7t7j0Au2/Q7Z
         cAZixF0BDw8vsdwjpI60gt9s2iEnG4xzd+7BVx3d70DIa7Un/Pg2J50chlEfGIn3/FWe
         bzK7vyycjsvyRQV+DtlLbE6pqljaF1w5Za2aJSYtYMRUUamInQw8a3RUywD65tvJA1Yw
         zWeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764380208; x=1764985008;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ufm9gNwR0cbLZ1GXX2qw+EFYjvpWMB5Aesn6FOAhg9Y=;
        b=TN5iJvDBkzj588PccSiHc89z8uUBqreoR15B1i6n/JC2y5AZgGGVeNenu0ls3uMmOd
         Cr71Tm71V5egWVlv/R5pap8sI06lZSMQf0y369i3Wm6xKXR3TS7kcrSNz57Rllu2yjJa
         Ijvsn9B+NU8PC3Fbe38exBOv5Ne4IqWZ4nhXgAJa+nh7dwRkJSsLZLV0ie9hq5UGb1cN
         LGuof5CUol9n8vGUUCybOJXqwnBYNjtSA0qlDMLqGJzezkYpJ8DxZnZYSh+6Ks26UhsF
         8Iu/bmfrTvM3D/Mh7AjxJJEDwQZc4ANoTJ/XslTvljwcOzevWC/bFws/HA/tNa8wPDLA
         pJ5w==
X-Forwarded-Encrypted: i=1; AJvYcCVvYoNIBoIxrGTl1Tb78/98+svXGtnrHPCpp2cZp44M1vegLaXh7dzqfeX+y/P6MJbr9cu+zOCEnXRL@vger.kernel.org
X-Gm-Message-State: AOJu0YxfBhdPTZ4PGeaT9ri24rWw3GKlIR1Q6uiQAivGWbypz+4g0fzY
	4DEjc3f1fHNOSZcX7vUbD8Kivceu/e93b61CgIXQywklzV4ych4WuPbeLPtaHRrUuqbh9q+9bUs
	UF8YHimiytLsFwBvH+WUelLH8/Llc27bfRVGCjcL5VF4auj7y9MQQ6Df59SSKofWe
X-Gm-Gg: ASbGncswzBCyvNkFxo0Upt5cQ5zoy+Yv/whUx+wh1n/VKAKA3Nb+xrGv//sZid3rPu6
	qLb90/l1lkWw3FDlgtzp0BJ6Gv8l43FapWCFjPsv6oQDcF3Phomsj7BThkVSpquBXkNaXz8QanG
	SVf9iVWbJF4bbVtMFSQ2/HvR9sFydMYNTIp+tljwof1PXGgZM25ekOeJGVJlEQbuW60VSPignzM
	Ev7QxKKnzwqojyi5PiQ96lG+/Y96RBzocGgXmxvGzqNe9R+Ff4DUj/liPfAOYX29bXneshKnoEs
	2d40ZNKf4CN39aWqMVsMXp5zrZSt6fz+6UNq7ALZyoD2/p6MVfrvGe5p51cwKOh2aTsz4Qn39iy
	OlwzTg8R1CP8awMq6HdbCNoSgswTeIBcq2tHZo2fQy62emBF+GRl0LnpDL5xX8oQBMlZ2TPzpyp
	Qq+wCaODPQGODCLSsuf8f4ZFs=
X-Received: by 2002:a05:620a:2905:b0:8b2:f102:b8ec with SMTP id af79cd13be357-8b33d23b35amr3912680485a.16.1764380208659;
        Fri, 28 Nov 2025 17:36:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEX8UWXjjxghID0A8tsRWFi7bqv/pri9KP5RoM5dGN+bsSvpyGRIIwkVgB8OmzgubO60PJPug==
X-Received: by 2002:a05:620a:2905:b0:8b2:f102:b8ec with SMTP id af79cd13be357-8b33d23b35amr3912676885a.16.1764380208138;
        Fri, 28 Nov 2025 17:36:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d236b5b61sm13421801fa.11.2025.11.28.17.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 17:36:46 -0800 (PST)
Date: Sat, 29 Nov 2025 03:36:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Joel Selvaraj <foss@joelselvaraj.com>
Cc: david@ixit.cz, Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH RFC 2/8] power: supply: Add driver for Qualcomm PMI8998
 fuel gauge
Message-ID: <f4hlaj3pp2vuczwbjkhxmbncdpgjx56l4oqoa3r5v5g2txjpzo@tdhqd2hrmfyl>
References: <20251124-pmi8998_fuel_gauge-v1-0-dd3791f61478@ixit.cz>
 <20251124-pmi8998_fuel_gauge-v1-2-dd3791f61478@ixit.cz>
 <jddpwqo4f4irukwc725b3c5dmsitjgupcvupvbe7fom7vx2p6r@ilfmls4fzrn7>
 <af0e5a39-a4e7-4deb-b915-97a1d9bea19c@joelselvaraj.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <af0e5a39-a4e7-4deb-b915-97a1d9bea19c@joelselvaraj.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI5MDAxMCBTYWx0ZWRfX+0OFtWlU3j3T
 ANhLXRLdOX9BAbmxADdVjU+QeOVGOij8iQHx1TFCHUOo2dZKB9TlhmkTb7OvR/3PBbagT/Mf3vr
 RyResBf0cPM58M+DCx0bd4ky+x17HsqdOq2lqeKNngKWiGsRfchIKwmGvV0VdgFs59IZ0VT7dwg
 vYWcNA9iRQZKfqZM3v7pj2HbDphMLH1S8F32a0JTPjAzJUwY9A5tASFo5igOSIs1BX450r8jdGs
 j5Wu6yjRtO4tq7KxjPz+/c2fqamIYPo2m0Kb+qVxrMJYNXq7WPEXoPSDhAgCmXUEDtofSQ0Eccg
 EBejEtMRmLb/Fp+2skIVVU7nA3i0Fg5dfqoWaguFHn2GPW0bwkMAp3vK8oDfmcvZ1ZJdtDOJUZ+
 RDhUkgKCnPGTd/1BRBLlZ7+gHNVMoQ==
X-Authority-Analysis: v=2.4 cv=GupPO01C c=1 sm=1 tr=0 ts=692a4e31 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WFa1dZBpAAAA:8 a=OuZLqq7tAAAA:8 a=sfOm8-O8AAAA:8 a=QmoCL596_DriJ9MmrNoA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=MZguhEFr_PtxzKXayD1K:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: aEinzy7kYh8seHIfGuh9OjkNSpD4j3F4
X-Proofpoint-ORIG-GUID: aEinzy7kYh8seHIfGuh9OjkNSpD4j3F4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 bulkscore=0 spamscore=0 impostorscore=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511290010

On Wed, Nov 26, 2025 at 04:35:09PM +0000, Joel Selvaraj wrote:
> Hi David,
> 
> On 11/25/25 5:13 PM, Dmitry Baryshkov wrote:
> > On Mon, Nov 24, 2025 at 10:53:35PM +0100, David Heidelberg via B4 Relay wrote:
> >> From: Joel Selvaraj <foss@joelselvaraj.com>
> >>
> >> Ths driver supports the fuel gauge hardware available on PMICs known as
> >> 3rd generation fuel gauge hardware available on PMI8998.
> >>
> >> Co-developed-by: Casey Connolly <casey@connolly.tech>
> >> Co-developed-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> >> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> >> Co-developed-by: Yassine Oudjana <y.oudjana@protonmail.com>
> >> Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
> >> Signed-off-by: David Heidelberg <david@ixit.cz>
> > 
> > This can't be applied, there is no author's (Joel Selvaraj) SoB.
> 
> Here is my signed-off-by. You can include them in future revisions.
> 
> Signed-off-by: Joel Selvaraj <foss@joelselvaraj.com>

Thanks!

-- 
With best wishes
Dmitry

