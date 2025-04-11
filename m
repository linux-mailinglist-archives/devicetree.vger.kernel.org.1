Return-Path: <devicetree+bounces-166050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F0FA862F7
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 18:16:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FEB78A0B67
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B45F41FC0EA;
	Fri, 11 Apr 2025 16:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IZUJlcqX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4411096F
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 16:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744388179; cv=none; b=tR31W+eTe5DM3bg+ARkBFzrt3csni6RJ5pc3AwJGXvx+smIK0Oqqrc5bwhCFGf7hN6LP3us2z6GXcsbCWpSt7Ge2TjxEjjIUKcLMT8ODKJ/cKI0o7+gMi1LmiB4WePnC078I4odlHU9X8rp9xxPh4y1zlTPS9wHjUFH/y8g7H5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744388179; c=relaxed/simple;
	bh=jjADHVXuoeWo3zMXJLAqhnQjIwflie+48BytBxS7vtc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qeEhDq9DdMnakZSWQ1F2W/iKJhXLxLOM758vA3qyI2aAazSoChzX1c/fafI+GwEsJ5baiJVjKdZRQRmukoWcrSiBGSXiabjLkHUidMiXA7pxtNRZsmERcoEZ6iGQHg8y4oWZDxFH4jBdxAMK17m8JrDgMA2bydNXV23dnzGoXaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IZUJlcqX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53BG2Bwg018823
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 16:16:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4IhlaAVM447bRlfi7RkIp9IzM8AW0t5T8e260lhmWr8=; b=IZUJlcqX3iFQJxmv
	b4Gl6CvM1wCowY4OrpLABeMLNYcfbIPv89CGhTHGgycNT52L9qdKZMbNK0tDNC4X
	iXpeRofYnSQRlVt+E1yvLz2ucDWhx4IFcqdNLtiWFpOTnepfO7o3NHGavGStxon1
	aMaUGCncNbGVivzOiwxfFAiaka6IRkyyr42C/NxkyZ2HfzFAeakE12R4twR77dtm
	hGTABMO1h+SBfdOb/0W5evCiUnBOj29e3r64eAVjPRojImhwcvASnvA0Utd7VME3
	x7Z1rNx0cAZ/svZpxQMVumh/0cx6mI1sB3Z00KncltYHhjiIUaqWbBfrNePDQAFD
	GY6I3Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgu44t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 16:16:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-73009f59215so2447856b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 09:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744388175; x=1744992975;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4IhlaAVM447bRlfi7RkIp9IzM8AW0t5T8e260lhmWr8=;
        b=YClr4bWYPTCfTMZVzs6XpK1L7SBYnk5mUg4Be8mQAHcjUVxs5ylSeIba+tJH2hu88R
         iYdTC0h5J/trswswTIs4dDE3ell1xjBSrwa9y7OQOREoMEX03eu+YZMVVZVaJchasb/D
         /M6iUEaW3sEYQRQTTdIcM3wOcpqaEauPTbfKGhIE5Ze7nyYVcSsEJwgnLn5eXHYKys9O
         IsNYsaTmB1TBrMrR+A2oGC4uOEs3Jw7EMSlNlbw8xnutTjN+QQGwVqdESjFnGu4uxErU
         70W4nG75IYzO+SxBHoT0YuQDxXtvJHw1p2OldeetAkdrLJSrTteXMHIIdryAhyjOB/GQ
         z3Gg==
X-Forwarded-Encrypted: i=1; AJvYcCUFZmNdy6AU85hU7GT+WGuvPvKTE+PP5Sd9qzh87o5Gk3xblJo0iCHVLc1GG5wHYIpEHxo4trtOtsBC@vger.kernel.org
X-Gm-Message-State: AOJu0YzGlpgLfD2Q+0LtUkrDDWaqxa8p3Fl3bssJ+zBWv0+RUtCWfPFs
	mIGe5vOLTmrmxSFYt27WLI8R01/03nDahdBtoBIZsK/8fuWjHGJM/fyyiGCqypZ4agrtHLLLwnm
	XS5JUH6oElCkTVEmlmBsbP1mVJJlZ7MJBH6lZB9QEZsmW4821HliuacnQvgYo
X-Gm-Gg: ASbGncub54YrH57yR6m0lXMzcOJLj4WfhQYqW4OzLYvy9wDNka6QsQPXLB1ksI1oC+i
	WlrjKYlX1wuzRU4beE4A/3x9ofqb+mm53L5gRNXt5XM9oOLS1hGCWHY9VVREb4NAnReQS1KAuuw
	ZG9ayi/gEoXILOsnkR7Z5vyIrgFs5YUiqM2UrprbcmysB29rfGczcfH3WJCrXZd4IkXjm0TMz5u
	eptnW0vz7ExS1h2F65B6bVuoNaDPXf2iLRYeZ/2gKfTj7aZH58h23jt8hkQFFFPphOqZqlPw12W
	ja9dz4ZnAobuLRessN+88jyXLhrKBllsvQY9HTMAJFYkuZhurFhrbw5PFN6sFQ==
X-Received: by 2002:a05:6a20:c995:b0:1f5:769a:a4c2 with SMTP id adf61e73a8af0-201797b96camr6010737637.22.1744388175331;
        Fri, 11 Apr 2025 09:16:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2C+sSIwxuAmGGQvBGazeQxoErfToQK8MgYWtP1mBFETFneyUCN4Iy+2hWS/Y2/4HLTAN5Gw==
X-Received: by 2002:a05:6a20:c995:b0:1f5:769a:a4c2 with SMTP id adf61e73a8af0-201797b96camr6010683637.22.1744388174958;
        Fri, 11 Apr 2025 09:16:14 -0700 (PDT)
Received: from [10.226.59.182] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd230ddefsm1789764b3a.143.2025.04.11.09.16.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 09:16:14 -0700 (PDT)
Message-ID: <1c7ed443-a5b0-446c-8689-97fb8319ddb4@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 10:16:12 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: accel: add device tree for AMD PKI
 accelerator
To: Nipun Gupta <nipun.gupta@amd.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzk+dt@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        conor+dt@kernel.org, ogabbay@kernel.org,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
        derek.kiernan@amd.com, dragan.cvetic@amd.com, arnd@arndb.de
Cc: praveen.jain@amd.com, harpreet.anand@amd.com, nikhil.agarwal@amd.com,
        srivatsa@csail.mit.edu, code@tyhicks.com, ptsm@linux.microsoft.com
References: <20250409173033.2261755-1-nipun.gupta@amd.com>
Content-Language: en-US
From: Jeff Hugo <jeff.hugo@oss.qualcomm.com>
In-Reply-To: <20250409173033.2261755-1-nipun.gupta@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f94050 cx=c_pps a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=zd2uoN0lAAAA:8 a=DZtHtFm8LNTDz7ZeIvIA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 3VOI7UbQV6qfQDIxKQ8R7KTTVYWo7WLR
X-Proofpoint-GUID: 3VOI7UbQV6qfQDIxKQ8R7KTTVYWo7WLR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_06,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110102

On 4/9/2025 11:30 AM, Nipun Gupta wrote:

No cover letter?

> Add binding documentation for AMD PKI accelerator supported for AMD
> versal-net SoC.
> 
> AMD PKI accelerator is a device on AMD versa-net SoC to execute public key
> asymmetric crypto operations like ECDSA, ECDH, RSA etc. with high performance.
> The driver provides accel interface to applications for configuring the device
> and performing the required operations. AMD PKI device comprises of multiple
> Barco Silex ba414 PKI engines bundled together, and providing a queue based
> interface to interact with the device.
> 
>   +------------------+
>   |    Software      |
>   +------------------+
>       |          |
>       |          v
>       |     +-----------------------------------------------------------+
>       |     |                     RAM                                   |
>       |     |  +----------------------------+   +---------------------+ |
>       |     |  |           RQ pages         |   |       CQ pages      | |
>       |     |  | +------------------------+ |   | +-----------------+ | |
>       |     |  | |   START (cmd)          | |   | | req_id | status | | |
>       |     |  | |   TFRI (addr, sz)---+  | |   | | req_id | status | | |
>       |     |  | | +-TFRO (addr, sz)   |  | |   | | ...             | | |
>       |     |  | | | NTFY (req_id)     |  | |   | +-----------------+ | |
>       |     |  | +-|-------------------|--+ |   |                     | |
>       |     |  |   |                   v    |   +---------------------+ |
>       |     |  |   |         +-----------+  |                           |
>       |     |  |   |         | input     |  |                           |
>       |     |  |   |         | data      |  |                           |
>       |     |  |   v         +-----------+  |                           |
>       |     |  |  +----------------+        |                           |
>       |     |  |  |  output data   |        |                           |
>       |     |  |  +----------------+        |                           |
>       |     |  +----------------------------+                           |
>       |     |                                                           |
>       |     +-----------------------------------------------------------+
>       |
>       |
>   +---|----------------------------------------------------+
>   |   v                AMD PKI device                      |
>   |  +-------------------+     +------------------------+  |
>   |  | New request FIFO  | --> |       PK engines       |  |
>   |  +-------------------+     +------------------------+  |
>   +--------------------------------------------------------+
> 
> To perform a crypto operation, the software writes a sequence of descriptors,
> into the RQ memory. This includes input data and designated location for the
> output data. After preparing the request, request offset (from the RQ memory
> region) is written into the NEW_REQUEST register. Request is then stored in a
> common hardware FIFO shared among all RQs.
> 
> When a PK engine becomes available, device pops the request from the FIFO and
> fetches the descriptors. It DMAs the input data from RQ memory and executes
> the necessary computations. After computation is complete, the device writes
> output data back to RAM via DMA. Device then writes a new entry in CQ ring
> buffer in RAM, indicating completion of the request. Device also generates
> an interrupt for notifying completion to the software.
> 
> Signed-off-by: Nipun Gupta <nipun.gupta@amd.com>
> ---
> 
> The patch series was originally submitted as misc driver:
> https://lore.kernel.org/all/20250312095421.1839220-1-nipun.gupta@amd.com/
> 
> As suggested by Greg, the driver does not fit in misc and should be part
> of accel or crypto. Accel is well suited for AMD PKI Crypto Accelerator,
> and thus the driver is updated as an accel driver and yaml moved to
> newly created accel folder.

Why does this not fit in crypto?

