Return-Path: <devicetree+bounces-190650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E287AEC53F
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 07:51:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0E254A6964
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 05:51:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAB421C9E5;
	Sat, 28 Jun 2025 05:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XTbdW4Lo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885AB3FC2
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 05:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751089884; cv=none; b=MVaEQTZhk6wxU34UuKv4KUObn6Hh5vyAL/YzbHnaFIdgt9Vu18N1fxZDhyHrFIhZG3YR6L1eKiNUrK7dWHJbXlUIOeRgkcQ5zOy4/4XU/fWNEXwGIpo3YiZV8/LviOlxMatsDyI7PSpn2TsL6/BbTdZilmRzpJyzUsj8qrOhcPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751089884; c=relaxed/simple;
	bh=RNhJKBVlAnROc7YSSE3iH1MaSIGPa6O5wdBUZKA3RYE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qJJs1yi1AwhsshbxwfeBmXOYyrqanzl3ktdhIfph6SVGLAoBcV85PGLLG6TM8tX463ZrNnnVNc6z1/90hCjplZjNZ2WesXixJenOqoA8oHLHlQnGwnLa9fFabEzReuCz3z5nnWRHHfJOzUH/SGSUa/232IYKkuakvMk1LYPPPUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XTbdW4Lo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55S2Y6GZ022692
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 05:51:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6DJM5YXo8sYcAzIw6cyhaTgHjHxiZxMIahDKwbGiG3g=; b=XTbdW4LoxUKKcDaU
	26Wb5l2fUjqIpBg+fZ/yA0XeZnqUj7U/PdGjOzHd/auCtAfe4TW9wdWMuTwIAFbs
	jAlfHcRxZu52HrSXBbkp0x5GnVk8FAlDkpAbx5v8+2EIEHl3Qa9vJIPI5NxcHHep
	WWKBU3+THygDYkf/6kMEr8FH24VH1GjAiKzh5UIG0YjH5b13Oc9VwtrAGReVpekS
	P3Q3nUEcZGY/1//W5ICr7i2ZAiY7g7cHRYLN8JoWAX7mUomUG19CWGgw8rYpP9Os
	9HygZAesQmAeF6Uewnlmcfk0lo8wEi6QGuOHoZKCOWX7NUBkns6pWzTDhIl55zmJ
	1CcpJA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7qm070m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 05:51:21 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fabd295d12so54835406d6.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 22:51:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751089880; x=1751694680;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6DJM5YXo8sYcAzIw6cyhaTgHjHxiZxMIahDKwbGiG3g=;
        b=t3Hq4NKA/6H06UvYfKjQ3EJAxDTycXn1Ql4LdSKWU8PGokS2mysS6ciGjyfFDSdQdo
         smH/a8U1RzyDb4Sc3pO2q9jlrg8/DYqX57C4HIe+g+bfr2StDhZlqCoY08af3fpL6IO4
         zs+IIJNrBbaKwxh8OuiBvTyMQ2LZqdL2+Qu4j0wtmR5VyWfZWeRlQquxwI1HUWCG0Swj
         6CZJCOTTe4btBXEh7iXoGSihze7CQRWnODS0oNI6+Ov31BmJlKaTdn7dEwbAXnfq+Ajm
         HRlqlJVRn48CsU4LNTDMykDI6VDOx+ZMhIHmdbOUXX7+PqN4sDd/qTxxbdvqVz1p3Pda
         BNsA==
X-Forwarded-Encrypted: i=1; AJvYcCVTK5xFcO0LyZc/jJY6vRyV4iItqyvYKEXuPRXgpLADKb1U6pw/SyeoyfC67siIFLYJnx18ZYPyNW8n@vger.kernel.org
X-Gm-Message-State: AOJu0YxSC9oC0xj5fjtFYJBMKD5m4r08cKsIL9+CevnIezjfK0S7LO36
	A2scZAd00V5KAHXnU3p2fy+Qv/fsY+ARwlObPhgMi+Wkln66fccE4YwIlFudsU2tyWPfC0U9CO/
	3RPfLcjrklJPgeg+ZLhNTzVMmm67w4+r1fPRtvMWxCm26+XBooHOZP0op828CAkU6
X-Gm-Gg: ASbGncuj6QHRXu5dD50iibevkc39blNwIrfKmZ2iH1l99MRNupckQe41o+tgYLQFtRz
	i/3+vC7nd6ZhG8q54eskKMPfNbTRllsa1w9wxax0B7S5/AubzG5KU3Ji+ovYTrmxn/fpLlRXNM0
	9mHSbbcM73laUuaJfMSA/1xXr+OrR/K9DD8MIYStay04UuNGxJEsMBPc3opbnfID/Vz4y9d2ZzT
	Y8F8OnZjzv8p+o6wsMeC9y5et0lzJHX2WhG5RFo0vimKzNFYomN8ioXfIFV4uwj8ltMR05OOAnG
	d9AFc5GQaQA66KTZ+f9fXq6JzB01RncFgEraTcwoI4y6WWtkdn9DBX9foIdPqufmbVzT5QPLscV
	eZLHztHxisXME/L9cZK4GRDkx625P8NfeXnA=
X-Received: by 2002:a05:620a:2949:b0:7d4:3bc6:1df4 with SMTP id af79cd13be357-7d4439179bcmr808812685a.16.1751089880566;
        Fri, 27 Jun 2025 22:51:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9AFefwJW2wB1sxHCz4/FNU0tIQt/Hnx2l8Xmrunk9knE/K7hKL3txF/JewtO3UUcwRL43Pw==
X-Received: by 2002:a05:620a:2949:b0:7d4:3bc6:1df4 with SMTP id af79cd13be357-7d4439179bcmr808810685a.16.1751089880182;
        Fri, 27 Jun 2025 22:51:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2ee7365sm7060231fa.77.2025.06.27.22.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 22:51:19 -0700 (PDT)
Date: Sat, 28 Jun 2025 08:51:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] misc: fastrpc: add support for gdsp remoteproc
Message-ID: <iwultq2bufhlj4tbtzs34ubb43jagw2anwei7yjjqmw5hlg7in@mur3oixqejlh>
References: <20250622133820.18369-1-quic_lxu5@quicinc.com>
 <20250622133820.18369-4-quic_lxu5@quicinc.com>
 <09bf24d7-2998-4a15-9b9e-ba476fc08a90@oss.qualcomm.com>
 <9bbd768b-6ee0-4c9a-9835-3a2cda19373b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9bbd768b-6ee0-4c9a-9835-3a2cda19373b@quicinc.com>
X-Authority-Analysis: v=2.4 cv=C4TpyRP+ c=1 sm=1 tr=0 ts=685f82d9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=nvhyJCiy9YraiqoQAlcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: HXbaFtsRSTrqjfFsiMbqTctSm16aH8op
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDA0NiBTYWx0ZWRfX0mri1u9ZU4Bn
 ouRt077FU1h0pLMbnj8+Dq1CrtOYEc2lhgH3wsqjOpBNx+4n+ABdfGIv67Dom+wkqZ6PN9FSg7+
 Q7Om/KwV9BTMNIt+VGAN7xCqtSr5s0F0SGaYAGFF4V737lSju4lbZR1iUFg2GETHjDgktGGnFsG
 1EbPYvQLat48gx1NZwjmcTUgP4NuVad/QfZciv34YdNLN04Q7lckKAoPfDXfeVxRJqMw0Avr1V3
 2uOqMpOkD4tzfojn4Y1Dhpu2DVSRmwCCP9Jk2hNpH1wjPvIUH2GROJnounyNgJfqJ8PGKqnZNBr
 0K9NJSYTDotfPyz3EioZ7z/DfIzzujiRJJCbvxiGYoMMmG8w+CxjWlWKVPw1Zj0j0uE0WEV7Rpj
 nUp7EPV+7Hh0C2eGOwM5zvEkfK8YvG6oSZG9hfUZZRMxLeq0Z/4JdJ94L0FzOUSq787LL1PZ
X-Proofpoint-GUID: HXbaFtsRSTrqjfFsiMbqTctSm16aH8op
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506280046

On Tue, Jun 24, 2025 at 01:58:47PM +0800, Ling Xu wrote:
> 在 6/23/2025 6:28 PM, Konrad Dybcio 写道:
> > On 6/22/25 3:38 PM, Ling Xu wrote:
> >> The fastrpc driver has support for 5 types of remoteprocs. There are
> >> some products which support GDSP remoteprocs. Add changes to support
> >> GDSP remoteprocs.
> > 
> > Commit messages saying "add changes to support xyz" often indicate
> > the problem or the non-obvious solution is not properly described
> > (which is the case here as well)
> > 
> > [...]
> > 
> 
> Okay, I will change to
> "Add related domain IDS to support GDSP remoteprocs."
> 
> >> +static int fastrpc_get_domain_id(const char *domain)
> >> +{
> >> +	if (strncmp(domain, "adsp", 4) == 0)
> > 
> > if (!strncmp(...)) is the common syntax, although it's obviously
> > not functionally different
> > 
> >> +		return ADSP_DOMAIN_ID;
> >> +	else if (strncmp(domain, "cdsp", 4) == 0)
> >> +		return CDSP_DOMAIN_ID;
> >> +	else if (strncmp(domain, "mdsp", 4) == 0)
> >> +		return MDSP_DOMAIN_ID;
> >> +	else if (strncmp(domain, "sdsp", 4) == 0)
> >> +		return SDSP_DOMAIN_ID;
> >> +	else if (strncmp(domain, "gdsp", 4) == 0)
> >> +		return GDSP_DOMAIN_ID;
> > 
> > FWIW, other places call it G*P*DSP
> > 
> In fastrpc, we call it GDSP to match dsp side.
> because in device,the related path for gdsp images are gdsp and gdsp0.
> > [...]
> > 
> >> --- a/include/uapi/misc/fastrpc.h
> >> +++ b/include/uapi/misc/fastrpc.h
> >> @@ -18,6 +18,14 @@
> >>  #define FASTRPC_IOCTL_MEM_UNMAP		_IOWR('R', 11, struct fastrpc_mem_unmap)
> >>  #define FASTRPC_IOCTL_GET_DSP_INFO	_IOWR('R', 13, struct fastrpc_ioctl_capability)
> >>  
> >> +#define ADSP_DOMAIN_ID (0)
> >> +#define MDSP_DOMAIN_ID (1)
> >> +#define SDSP_DOMAIN_ID (2)
> >> +#define CDSP_DOMAIN_ID (3)
> >> +#define GDSP_DOMAIN_ID (4)
> >> +
> >> +#define FASTRPC_DOMAIN_MAX    4
> > 
> > What are these used for now?
> > 
> To get proper domain IDs for fastrpc_rpmsg_probe etc.

These seem to be driver-internal, so they don't need to be exposed to
userspace.

> >>  /**
> >>   * enum fastrpc_map_flags - control flags for mapping memory on DSP user process
> >>   * @FASTRPC_MAP_STATIC: Map memory pages with RW- permission and CACHE WRITEBACK.
> >> @@ -134,10 +142,9 @@ struct fastrpc_mem_unmap {
> >>  };
> >>  
> >>  struct fastrpc_ioctl_capability {
> >> -	__u32 domain;
> >>  	__u32 attribute_id;
> >>  	__u32 capability;   /* dsp capability */
> >> -	__u32 reserved[4];
> >> +	__u32 reserved[5];
> > 
> > This is an ABI break, as the data within structs is well, structured
> 
> this is suggested by Dmitry, I will have a discussion internally.

No, I didn't suggest to break the ABI. I suggested making the domain
field reserved.

> > 
> > Konrad
> 
> -- 
> Thx and BRs,
> Ling Xu
> 

-- 
With best wishes
Dmitry

