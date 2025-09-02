Return-Path: <devicetree+bounces-211752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B19B40697
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:23:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 805D6164148
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A452D9ECE;
	Tue,  2 Sep 2025 14:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SWE+h9ba"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27092DFA48
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756822873; cv=none; b=O6aBS07c87ISaNzsdc0WhqVKQDs25Z9ifn2t5VhvxBzgD5Ny2oUhsKBwjtl6+MqAxh6u+5OKd6h3pywBHthoD+pPr/dgazfdfnY5EHRp+Pwa7PZLQKOefvwVlrQfBp6ehNYWP9JiXTglDFYA4YA2rsHI3I0y+NTGwf323X4Y+ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756822873; c=relaxed/simple;
	bh=Mo3fvh+zcipnakizUINPMwCYdgGPfGwVYd3T2yXE6PQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nC7AYjiJeS7up83PtSljdUKsDSDTN1Mg1QEO4id8X2F3oMwgauQKtmGLrWb+fEq2JzYOTX+S+6XwyxPgA539tUAe2uK5es8Z+gatKZAua9N2fwen3QDtAZ9KAagdl7xEzNBINtiRiRK+XL3khEdUoLSah8bC48Sy0NLs3CdJ5cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SWE+h9ba; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582AeNeq012447
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:21:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cFH5cDNds5B5T/pje3FPEuPlO2hxs24Eot+U2AM5tl8=; b=SWE+h9baJZPg0zr+
	h1VZBwnEPUP82cZ9ImIy24Jh4zgzo/2qILVaNrT21iAph2NMju2XB3jE5iQxS7uG
	Iwl1soq01wpYlpscMNpjn3haYm3gzIyvm6XWOYT7tfCemR+a7OkbNsCEwJBsCYVj
	gOdLUGnVpCtqtLB/Q4Z5j9NgLmA3R8J/wshkDR2wcPJ2EEMN+7WDwr6ta/UvVMJa
	+4z1oo9rg4lSxeIwSBHqFAk5fJMlsDGwRd5BuNxcy77ZMn4TxnhUw22EDCyS3UvR
	hTdD+MpQOgivxSlhDw6JFyTADU0xanIEsPOSM5PBMWUz02c0xzvKuM3oT7InLn3Z
	1fs5Ng==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2ffyy7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:21:10 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7724688833bso2917452b3a.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:21:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756822870; x=1757427670;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cFH5cDNds5B5T/pje3FPEuPlO2hxs24Eot+U2AM5tl8=;
        b=nkl4qPx0K9SrD7aBq4BezkQgsSevR8gokBOeQJFe25oKZuqbFISPkIhpQGOsSgq/Kc
         H4u76oNMG4VcbzpBGH+jHJ+5NnfDwPFDS+ioMtbZGx1gAx2aBZ8IKJPItmz9jVG8DfNF
         CUTWtB7McTLBx1Hm8rD9VsfcO5f0r5otktWZDTHd94RHz0GqCG4U9dlb23hLyY/4cUcc
         ADRX717iXkVPbZopRRWzSpKW+D/nYWpobADBJwd3xpkzSVb3UO+ZjgLn42uYcelJgo7B
         K+uq5cKEYtQX8OlKSCjbBbGNym0EU3QaQ7i0uU4AdnKLwG/hkLVlkF6SEojB3ooinFX9
         fBVQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+Fk+5tls+gBhKySK9+Ig/48gHI3K+rmXB0Z1s2ghXbRjP3ucqwx1DseMt/oS/IGMhSps/FbZL2w3E@vger.kernel.org
X-Gm-Message-State: AOJu0YzQWdFTMXMisnbwS6OFUDv4UGV17/RIK7PAFdEjm6PVBEVnJyHk
	lE9vXdavO7FZoXMB9UtMbOJ0tVSgUds+W/hhKBGGIYIiXWNIGzF74YX4HWFcm5DwBzDW3Tkpilz
	Sgzo8ahmqsI31j1TtU20HrpuOv6uGPWZzfxEsMizBsZaG7IRcaGBEuDYweoahF5jxwxe+JRUS
X-Gm-Gg: ASbGncus7IKlW7EKgLJxkNGDOYnd/juSyC70AMg2jbEGOMDLzslGV2qtsA6ut5VDGiq
	9VDSddG4Kwg3qiHVljbYZ868aV3ZlAPaSBGoQXkLy6pjDYJv5Ht0GUPJys+0H3Kc5iszuh7nZVL
	bVQfnm/KF9iLvzTggigBrrSoEYMb1Hs8bbkDMfVJEvKbuMs7eEU7GMrC504thOTaVM5mvJ08DEg
	DBIbmDrkiV/GQtQ1bsffdwGYtw2SJzokz9YHjpI4hv5cSh9e15TBglJnBIT8vAc8nOmMhILPiuI
	ZR+wb/WTY1MB6wVVoDjuSjlrqZaGRc2akvV4vZf0B5G6E7kCrYuOXcw7QzncwdG4ndoBn1Nq
X-Received: by 2002:a05:6a20:3949:b0:243:25b0:2321 with SMTP id adf61e73a8af0-243d6f7e6d2mr17559827637.52.1756822869358;
        Tue, 02 Sep 2025 07:21:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqXouN6x5NC3Ff1ESu4awUlD3wgjdZZfk9g/KwRyDmJBn/xJVqTV3xHk+1W13vbBTuHhuaMw==
X-Received: by 2002:a05:6a20:3949:b0:243:25b0:2321 with SMTP id adf61e73a8af0-243d6f7e6d2mr17559757637.52.1756822868877;
        Tue, 02 Sep 2025 07:21:08 -0700 (PDT)
Received: from [10.216.7.97] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-772396d2dbcsm11499176b3a.50.2025.09.02.07.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 07:21:08 -0700 (PDT)
Message-ID: <f7394b06-d51a-cdbc-7990-13209b478398@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 19:50:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v14 03/10] power: reset: reboot-mode: Add support for 64
 bit magic
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250815-arm-psci-system_reset2-vendor-reboots-v14-0-37d29f59ac9a@oss.qualcomm.com>
 <20250815-arm-psci-system_reset2-vendor-reboots-v14-3-37d29f59ac9a@oss.qualcomm.com>
 <88ee0a26-8d64-4060-b703-40156cd011a7@linaro.org>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <88ee0a26-8d64-4060-b703-40156cd011a7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfXyn4tQB/n11sa
 eIspZ7y8dP+m9kp/Nb0paj9mrCLXgh6Q53ue1t7NaCLHw45LlJhlaxjttPiq17SmCQqR16KdUQe
 0BV5hXyfwm7YvdpEEufWlm8ew8mBRbHSlEmWlbznEB3s5rJFPyX405zBVx6Vaf4ElK3awXSWA7Y
 Fw91+74j2a6/cZgU6c2cCzxbIjiCT63rWYJ3KnEtLa6HV2wD511Yac7sJIT5HxqYZ1+PFV4pAAu
 Tuq3lBFHawNk0acibMyOT1LFZn5VbTputxYOjX03tpg5iiLO2i6Fv3mmjEo1I600agoIKGckeSR
 M+8vkM+q2t2PpHFuKTjY1AjvOdXmZ/U643YBGDxHy2A5EeymyjdPO6qRp24Odr5qGrABX7VG1fw
 7boF7R7H
X-Proofpoint-ORIG-GUID: MI8KypOi4_XeyKT2qdudbbHbgHPghEqB
X-Proofpoint-GUID: MI8KypOi4_XeyKT2qdudbbHbgHPghEqB
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b6fd57 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=FBzynz1gJkPyhc2EhIcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038



On 8/28/2025 6:52 PM, Casey Connolly wrote:
> Hi Shivendra,
> 
> On 15/08/2025 16:35, Shivendra Pratap wrote:
>> Current reboot-mode supports a single 32-bit argument for any
>> supported mode. Some reboot-mode based drivers may require
>> passing two independent 32-bit arguments during a reboot
>> sequence, for uses-cases, where a mode requires an additional
>> argument. Such drivers may not be able to use the reboot-mode
>> driver. For example, ARM PSCI vendor-specific resets, need two
>> arguments for its operation – reset_type and cookie, to complete
>> the reset operation. If a driver wants to implement this
>> firmware-based reset, it cannot use reboot-mode framework.
>>
>> Introduce 64-bit magic values in reboot-mode driver to
>> accommodate dual 32-bit arguments when specified via device tree.
>> In cases, where no second argument is passed from device tree,
>> keep the upper 32-bit of magic un-changed(0) to maintain backward
>> compatibility.
> 
> How about adding a n_magic_args property to struct reboot_mode_driver?
> Then in struct mode_info change magic to be a u32 array of a fixed
> length (currently two in-keeping with the DT bindings).

Arnd/Rob,

As per previous discussion on patch v10, magic and cookie were implemented
as a 64 bit number (64 bit magic).

Need you thoughts that if we should change the magic to 32bit array, as being
suggested in the above comments.

thanks,
Shivendra

