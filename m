Return-Path: <devicetree+bounces-254652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8338CD1A619
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 35CE83007648
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6323E34C811;
	Tue, 13 Jan 2026 16:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hkpjmnt+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AtFJ2GMN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA30234B421
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768322876; cv=none; b=InspvAHrKUOj+U9mPB1tHzSI5g/1bZq6SZ7XjfVMjdHIj315M8XDXDNchYNoa3XmIv+p71xfFm4bUt/TLKsIRcKeavUQglszwIxFUIBfJkC+G4CToF63fwAqt8sJqyxEqnxR+umYNdb5fpn/NZYbybheGCe75ZSlttBXehqHvoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768322876; c=relaxed/simple;
	bh=RJmRwTj3K/zyjI/6ibebPVP+Br+k5iGtacdim9Ql4Fo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cG6NPxOna3SRDKmoB04po1ydN/fc2TcNXIipJFP+dtV5NuHFZjLMXFjQw39oQ9t/3aNu/sgdmdsZU4hzK2QHwJKMXCDsqRHgz3pKk50oan5DvpU4my7yWe13H47mGFeT+3H8jZj6Fmz8NjrD+0003q7pFJaO9Qvx2/G7qT91YV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hkpjmnt+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AtFJ2GMN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DFGZuV4153520
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:47:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MTyn2KRC9wTRTEtP9zy63Czm
	v+1kN9LAqhEzCYvNoo8=; b=hkpjmnt+L3ZLGS7kOJWexB43k1nkIpfyucEh8WlM
	GnP/1NSCrQAZiYO/G7L2spmYkfGcsL9xmmsJ2gKvVrX10BS8MuVofha0Ruycqkmt
	8iQjE2ocCAVSZPRW+ZulDqKoS0VXCgG9yNNXwBfpOrRiwVgG3NMjvIF8yvoRGD+4
	lRaJdB1Pwms1dO8aZtJ17vwiWJt0LshmzfkKbv08RQJzVh97nDaYMasuM+eK0tWi
	HsJ/oxxKp85vlU/bDkhA3mfMrFwc5p54kTKTxp/OVvwJcYuYoISjetWKtY5smMAx
	4jKm9SJE+RCoCcoPvK2n/k0C4ljZBiNTj5B9Xo2ALpTvtg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnr3e8ess-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:47:53 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81c5e1e3beeso4648933b3a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768322873; x=1768927673; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MTyn2KRC9wTRTEtP9zy63Czmv+1kN9LAqhEzCYvNoo8=;
        b=AtFJ2GMNEJ/YFL6IjuOw8ONMQtxlZI/GqU+mqdxDzTQ9nKEe72MA+tiM07nmXl+bP5
         TVP5mjR5l3JYli+WYVQ9Mh1Lb08uRkLMNZciZuBvvh0bkEfOBaS3UnMd8eysemUb5eq+
         TeQz6+NBUvhfVhNJWnGvDNGfVBTjg5+8ZjiFftGuuxp0kZAmj9wFZSNA/3+aioyTM1di
         hX3SdkKLp4PjiVbyub9bJFLghtKwI+Zbh7+B22eDWyUIMf/zNPqgyumsUa4f7+1lkWfs
         4ct4q4+rmm0UEZzZTPB5WYLEmfz/+w1LyAzgjY6jAUZ2tGRfMyh8i4/Bk/wvIurU60x4
         VJrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768322873; x=1768927673;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MTyn2KRC9wTRTEtP9zy63Czmv+1kN9LAqhEzCYvNoo8=;
        b=UmsdhBMIplC0xapgFOgsyCkhtoYsXkPmO9imG8/rKHjYgTYH5LifNuJmH58KB5ooIE
         wz0dlu3Rp+4DR+M1G2mA2T1HG0n+hAE/GTSLdJgKJ0yDVMFAE0xbR13mGkZ1C9YwSQlH
         EpNLxYPzACXflKp/xGEagsxKfEemExK35HTgm4Oj3074keQ+sBCQb5SPqyxSbRF3fGTn
         WToKVLSODZys0Vr+UWDU+7sd1BQZcM/BdbTLQLEOd3zoCAHayHoCB3gsFGbtrDxbAdL0
         uDGdOgs4K4N1oEbR55tEY2HInVsLY40p7bHZwUCK2p/aP8K9g7pk7ZPn+maqX4Hs2Pgq
         SHbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUohVQyPSOimdEsIrURJapUshnJVsUmrBNtYKJrWqIhSddrBWcYqS013iPReQv7YVkWzzBaapRdhCpt@vger.kernel.org
X-Gm-Message-State: AOJu0YxNw9TrhjS0SiKly2ecp/MP29Gzlw+zGQHpwkWf8GXeV819zjKR
	0coQ6IpWs23kO291v6zakBgPFP2qPY/4Vd7c6irjO9QpTELpmRe0DLc72pMF052Dagkz7Ok2e5R
	Bua9BXPgwBd4FfKBzTq9VyqqlelhX/APuCDmHBXM+MGrZWNm+KNf6zQ4GQ5fIi6D+
X-Gm-Gg: AY/fxX6Zn3Q2bUe6sPlcdV9L2BScNsvvC+fmBG55shNLlaZZs1MgglX41pA+LzOVt+c
	cjytc3vPjmDJkUcium9/noIxzGJeBN3TbdOvbfEKnFSi4Xpoi6H2YhAASwV2II4U73MZT9Rt1uw
	+tTruiV9eRPyEcaLIrtdEmiGweXYmwomf/41F6DNmZWKoMXYhVB0VmLca02WGSXltxyaLNuTXnB
	5I8YEe9J9cxXHXWVO9Q7BwADm6dZK4Kik4ECSU1Iljinfjha6ukSeVgPzWQdFTRz+xED9+IH02N
	p+FAX04/4L4rcsCthuFMVbzSaWRulOPEjzgleCQT436kVaZF5Eyck15bfAABCrXEYNFn4pXWZQz
	wT2JWhBozu1V+u0zr0nx9PVfy2ducDf4z8hMM
X-Received: by 2002:a05:6a00:408c:b0:81f:5f49:690d with SMTP id d2e1a72fcca58-81f5f497111mr5738464b3a.18.1768322872818;
        Tue, 13 Jan 2026 08:47:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZlMg32RqQTDNGfAe87X0hkNlc6WB8E1XbLMp5bNhyiNlI3t1suoaXs4tBsUJc9iAJ0den1w==
X-Received: by 2002:a05:6a00:408c:b0:81f:5f49:690d with SMTP id d2e1a72fcca58-81f5f497111mr5738428b3a.18.1768322872128;
        Tue, 13 Jan 2026 08:47:52 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81e3eb854e3sm12462968b3a.5.2026.01.13.08.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:47:51 -0800 (PST)
Date: Tue, 13 Jan 2026 22:17:44 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Alexander Koskovich <AKoskovich@pm.me>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        hrishabh.rajput@oss.qualcomm.com,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
Message-ID: <20260113164744.6lwz6oox6pdlxn7z@hu-mojha-hyd.qualcomm.com>
References: <b105810a-63a8-4d81-9ad8-b0788e2e1431@pm.me>
 <e469548a-8d74-4d3b-9617-2b06f36013e2@oss.qualcomm.com>
 <ABmlNqg6uJXJLkDZo3uaZLdrTCFIjRXOJ68Hrx1MnHHYMnPJ9_g7GW0HGRhZBKv4--_PANfXgTV7h-n7HFC51zKNW6JkmEhpB6_EhFQ27Rw=@pm.me>
 <ee448445-8a6e-40ea-9464-1c2ae52b84cd@oss.qualcomm.com>
 <pquvJnlBgedyrF5RUTrHBUoqCIR7sQMWjwvcpm-5MuqAOxcbLg7i4H2RkuI27usOGZO000h3c90TM_kr6c5UFfViPCzGXX5MNWKFHugevXE=@pm.me>
 <20260113155821.7iesxxuf74ncr7ue@hu-mojha-hyd.qualcomm.com>
 <a7RkLrctXwaW1s2WCUMkvMMk8imG2fGJBHbdsrljwgzYuSEpgRXlSRLrF4ONtCMxlT6hkHsvALfEOps7KBZWX1oIEMh-b9PHEFLqeC1CTI0=@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a7RkLrctXwaW1s2WCUMkvMMk8imG2fGJBHbdsrljwgzYuSEpgRXlSRLrF4ONtCMxlT6hkHsvALfEOps7KBZWX1oIEMh-b9PHEFLqeC1CTI0=@pm.me>
X-Authority-Analysis: v=2.4 cv=TPFIilla c=1 sm=1 tr=0 ts=69667739 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CZwxL6zrGSaLU6OBQ7oA:9
 a=CjuIK1q_8ugA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE0MCBTYWx0ZWRfXzcT+/uHBbOi6
 zTao1H42GwXmXqXIuGphTYkGtaJpRK1VErxWt3DAcC8c421KVVyJCT4KEQZky9pCn+0htxR7oPl
 KRAC8SUlxouPtZ4Fmmmwp5RRUQD3oDGDiojr2VJFygar0BGWNaY5MSOncXxVSQg/1YF22JQOBlb
 8jLyBi+7QWOzLfyC8EEvHPRK8t9fDpkbxKFSjvsXifpIm6IzxUMsvK73Cvdl8ndhMPgrY2Xfb7k
 HFNd3oTuf9BLm8h71cLQMove1mwFSp7rGltqOl+5c+NWhTi10LItSCoKcmyqnRAFl+fMRtLSN/U
 JG7DH4IetUJFFjg24gBd6tr8Dg8hA/eBL1Z3HGf/vszL7vakClmEcucpXFlmdjfEV1nL6yuoTme
 64xwvScAe4f0zEOgemc/8d1sQBjZl69IfwLANNQk9ZiQn+iOi1cUt1lcXqPsLIidC02BAA5y6uu
 DPcmS6abRBwcsR5HDKA==
X-Proofpoint-GUID: qfJa3AaVr_OId6rDBwGrGCICvYJkpldM
X-Proofpoint-ORIG-GUID: qfJa3AaVr_OId6rDBwGrGCICvYJkpldM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130140

On Tue, Jan 13, 2026 at 04:09:13PM +0000, Alexander Koskovich wrote:
> On Tuesday, January 13th, 2026 at 10:59 AM, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com> wrote:
> 
> > Are you trying to modify hyp dtb here ? how ?
> > 
> > blair is very old SoC and may not be running with Gunyah at all.
> 
> No, don't have the means to modify hyp dtb. Was just guessing at reasons why this issue occurs.
> 
> Was just using blair since it's the only secure boot off platform I had on hand so only one I could flash ABL on, but if it's using a different hypervisor than not really a relevant test then.
> 

Just to clarify you said, there is no issue if you just use dtb and not use dtbo ?
And issue happen when you start using a dtbo, even a dummy one, right ?

-Mukesh

> Alex

-- 
-Mukesh Ojha

