Return-Path: <devicetree+bounces-251888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B5CF7FC7
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 12:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94367302BA8C
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 11:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1B831B101;
	Tue,  6 Jan 2026 11:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JRimWAws";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a/2DBkf4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC0330F53B
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 11:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767697736; cv=none; b=YqDqo3T71Ll+q1HUSehTKzVLZBX0OdTEMSNGsF7tv1jwgluDjSnvP6bvQZKL6qunKEx/a1Q0i/5goBHKzE68nGQ91BBQKtiLzEfv1k2JuuYbZZkFhD+5dbq8h8YYCAMTcfDHoEf07pEF8b9nb4E2CPFBA6eW6SiH4t24ZK/NV6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767697736; c=relaxed/simple;
	bh=G/USg7RkLumozZf1YAcM0ap/d2YqZTL+BbBgDhdVUKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kp7RzWE+9qHcUu08eFLMOfbZmCa7eeLaBsZt4zzzM8FbdyrKDpAg+7wQhqJONTiI3p+4c3xajui6I7b7e8v3dtRwYjr3WokRxFcOgelCVQkeKlk6/PzqHIOWEGGRW9dXD/lGiRj8dDwb3eDr0SbHXlSL5xX7fBSS55LQb67oIcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JRimWAws; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a/2DBkf4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AleJa2254237
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 11:08:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TBd9QdiSFGxR3MMnj97DwQLr97txyM7jpH53AKOrBRY=; b=JRimWAwsUjrxoRGl
	yxDlXn9g8beEL0y8UJfeXe7lG5WX+284xAYI4pntjoWC7h90RDQGyIc/pjU9HfVT
	UfVe8TEZp70mUyzFaH1PXDgUUSPXB/Eva26tPhzsFOXTTthYeNeQEXQeFDPQyYjq
	skcYtqgBvK7P3aTV5TJcgbq8SlB6w5BcZMW4KQp6FGE+LTeA0yIAZg2Z5waT9RQB
	ZHAcwMhpD8YbvIEcYHYoblMC/XDXHPCz2z1wwb7v2ZNGNF4b/Vfe7x8HxnTuHr62
	nnlNOWyw6yc3JDHTAsEyXfxKrCsMbswOSmCJfwRzhgiKQi/FdoSDrMucIEdwMrlB
	dcYL7w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgu4215ah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 11:08:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0a8c465c1so17648005ad.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 03:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767697732; x=1768302532; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TBd9QdiSFGxR3MMnj97DwQLr97txyM7jpH53AKOrBRY=;
        b=a/2DBkf4cARB9YkT/0YMNYAC1XPnUe2gxyYKIP2MvGdXjCIuYE1NUUJQHQPnsjBbMh
         g0uJiW4bf1/7/Iq0u/0Q+x8rG/vNMEICPjMjMpAlFw3pwxbcKVEoPDcurrrKAmZmBQMU
         VE8+HKS/lsaxXHCKpzU84+OSo0GKTEkpboU37L3IEsHV32D9IMGVw2ZKhnDPJ60Jprl0
         fPo3OR384uLY00WbaboggiVsIzdiIDbn3mxIWBtftXdJW1iz1hAvD7Bkr2Lg5zqw5ggm
         3y0Z6AryeJsh7alGuvQ0kiRa7bBIqLyb0toq3RA3mu63cOVtBaqkLmLLaaPeKeLIbWis
         z5aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767697732; x=1768302532;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TBd9QdiSFGxR3MMnj97DwQLr97txyM7jpH53AKOrBRY=;
        b=ZetxO4g4PV6qJmb50AcYmgDyrTy2ayC5uhJUFr8sGq8EfRGkz2Ucqoo+EPJspUHEhs
         ZVgYupVWHzyKwXUSSffcpCKZ66Fjle0RHAqSCr2fnYUMWExbPGj5RfUZcEWPtUo0mOeW
         Mv4LHqMzoxGgudJUn7JREnlq901eDMhjp67QB5+JPP7jMYUHgWkFp6MifmVzdKhZ9Yz7
         uDcE6lCAEBDGy9Cz4ZkRqJl+c+EXDP710f9sO6sFg+SOAHoMAqGpBKdRVQmlm67/N/x6
         ZXqnDxh2ijrT6CmTGQo4ubK4mupBZ7ZtXzEe41Gkkta+IqkuACfkCXv8RvY0CgEA7P/e
         n6Gg==
X-Forwarded-Encrypted: i=1; AJvYcCV6FOaBoteFyT0blsPUkibMsho9nK2ydpjXe/q/rFN0YrQjaPcK42yt/RcWUcjX0ZzpB/9H0JokMoTi@vger.kernel.org
X-Gm-Message-State: AOJu0YzLUfYvzPl0+sTKTVs6t1tFFwcBTZrVP/OInIAnWhrBIIpcKgZL
	uy8pWHqA8Jf0bv1r/pVxrHwNxKIpffxZ+9xGpBXRV/nisW9uTT/pPweskfRnnSd4XCWQG+RchVH
	QixhcLuA1vXs2g/wmJB85acPO2tFmF3u81pVjah4X4kOebJ3PpxDLAXEbit8iS6QC
X-Gm-Gg: AY/fxX5IWXYSy8VwxY65G2lq7INJphnequVH3T+cMvSpa15XP8odnC3yk2qZxRdBsMT
	CEy0mAt2Exre7e28wSPvHdnssnMxyY4CGAyTuD6ARrdtTkDzJsXTN0/NDEz+Vrbv7sa7YW+jGf4
	yBFyN+lYuLt+kEjS4c4lcQVI70poPDm0lGTX/ryZPll82bk8CP7Iv3US7l6jP/7fGgz9u/l1A1D
	Ux3GEBRHxJISSjrxAHyR381MOMdQNTqSS4AXQtrWe7lOzY9qCgdiyWakXnprBzIROIbxpGhP1Pj
	zINiB5AF590DTjvKsP91lKlZv9EJgCyRQgyUj5hE9+jdnGYCS8xp9OziOypPHBuh3JS7dgTkQHy
	CXSzwr1CIacJx6Lt1e8CkOW1Afkwgwjg1QNwKS45ECGpz
X-Received: by 2002:a17:903:1450:b0:298:45e5:54a4 with SMTP id d9443c01a7336-2a3e398ea48mr23772455ad.1.1767697732322;
        Tue, 06 Jan 2026 03:08:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIUEVMMLos07KtuVO9uUUfZ9AwlvV86l3kxYIqgvDKncwew/dqKy8p2uS605UwMchZJMM6WA==
X-Received: by 2002:a17:903:1450:b0:298:45e5:54a4 with SMTP id d9443c01a7336-2a3e398ea48mr23772175ad.1.1767697731813;
        Tue, 06 Jan 2026 03:08:51 -0800 (PST)
Received: from [10.219.56.177] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd4401sm20028355ad.92.2026.01.06.03.08.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 03:08:51 -0800 (PST)
Message-ID: <2dcd9e3a-0a40-0dfb-29b8-99b70b73a59a@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 16:38:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v19 00/10] Implement PSCI reboot mode driver for PSCI
 resets
Content-Language: en-US
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Nirmesh Kumar Singh <nirmesh.singh@oss.qualcomm.com>,
        Song Xue <quic_songxue@quicinc.com>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
References: <20251228-arm-psci-system_reset2-vendor-reboots-v19-0-ebb956053098@oss.qualcomm.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <20251228-arm-psci-system_reset2-vendor-reboots-v19-0-ebb956053098@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dYuNHHXe c=1 sm=1 tr=0 ts=695ced45 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=a2kljZzNjkS1AKnM1u4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: hTYrdFeqSXCRO5b3dDzVHgvlmXAJFmoD
X-Proofpoint-ORIG-GUID: hTYrdFeqSXCRO5b3dDzVHgvlmXAJFmoD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA5NSBTYWx0ZWRfX8M7rRVN0Qhx3
 iWkdTbrxuCq7Ec8ByW/8rtKPaG+1WyahBcMW11sDidzrXabdy4dvLNfMMCK3zg8/Tz/YoRz2pcN
 hWpyim0cs0WrooaYabSETX+Ej+0KrQ+hbJXpQceiFhZdf4m51Bh3gWuRCxvQwXio3XES7EQfhBY
 I3COPEW9n61apVRk5RxWGTO+U72P2W1RIjhHEvJuwRNf4QToYYqrY4RS05ath3Rm3XnQnceqjIi
 m4lVHzV/nc4tA4mP2RroXH7OVQYtDK5mkjoxVXEkDHwcHDJ09Qwqhz03hppi/f3aCWi2AMzeXpq
 nKYhaiSGNkZIAgJSje553CLmdDV91L+WNknFztGfEmOW8FXWyCAvJHJn2btXAPqLKjVx0xBhWcS
 c4G+k4Lj6+CHOse/SCaSNjVjoTpVLsuGTyUImiiciQyV+PaYHYYUGBW4Ed98ZvC7X8owziLMKeV
 +uzYS4H+JiEp9bovv0w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060095



On 12/28/2025 10:50 PM, Shivendra Pratap wrote:
> Userspace should be able to initiate device reboots using the various
> PSCI SYSTEM_RESET and SYSTEM_RESET2 types defined by PSCI spec. This
> patch series introduces psci-reboot-mode driver that registers with
> reboot-mode framework to provide this functionality.
> 
> The PSCI system reset calls takes two arguments: reset_type and cookie.
> It defines predefined reset types, such as warm and cold reset, and
> vendor-specific reset types which are SoC vendor specific. To support
> these requirements, the reboot-mode framework is enhanced in two key
> ways:
> 1. 64-bit magic support: Extend reboot-mode to handle two 32-bit
> arguments (reset_type and cookie) by encoding them into a single 64-bit
> magic value.
> 2. Predefined modes: Add support for predefined reboot modes in the
> framework.
> 
> With these enhancements, the patch series enables:
>  - Warm reset and cold reset as predefined reboot modes.
>  - Vendor-specific resets exposed as tunables, configurable via the
>    SoC-specific device tree.
> 
> Together, these changes allow userspace to trigger all above PSCI resets
> from userspace.
> 

Hi Lorenzo,

Is this patch series now converging towards the design changes you
proposed in v17? We’d like to conclude the design so we can move it
towards closure.

Thanks,
Shivendra

