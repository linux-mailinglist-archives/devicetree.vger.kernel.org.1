Return-Path: <devicetree+bounces-222105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F5DBA5ECC
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 14:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 162A24C07DC
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9732773CD;
	Sat, 27 Sep 2025 12:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NLhee7PG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B993015CD7E
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758975705; cv=none; b=GgBE+s4ivhc68tHkyMZGIs1jE5GVJzPcUUBN7VnMyy4et9OP5vKDTJSqoZzpjoKL4Rpsyzw8Ilo1pUXLnhCxD7eKffImmoQLXfxC3sDOjCI+NBcYBfQZzXZ8X9I7oEPNW+nKlgqBzWVhpxPquNxYsZClf/TJsxCVpZSHr0MFytw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758975705; c=relaxed/simple;
	bh=qnNDCbMI32av29tRnaF3im4PUYnDi6Fg6B8QmcqH+K0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rmOpEzdrxCEP7GV201sOjGOG7tlGqLNpHH9eAtcq5xGEUnGgHUlpaZpwAAUxCTttcxjZlwsdZNd3NJk+hM0p0cfe7zOTwNH3P7+irpbEQTnsPHKlceRt84bIwyIKNZaCDir8f9sLUq3uYHCyEY/vQZ24N2C72WDSbQ6hB/wgmtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NLhee7PG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58R9t1UL030346
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:21:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xro+e+2dn97miI0U2SXZbX47C9NAolNE135GXXYJKfo=; b=NLhee7PGJLZB5Fnn
	vFbygERstPkTv8KGfyCLPxbaV7yvjOfeJ1btIaJZmBCw5CVuaPGi6Sr3dgvg066v
	xu2i0joxVOdaiTagRby45JldGWu8zuRdWPXINGNbJYOxGnG+ik2jt5rocnqGqko6
	vpyvk1X4Zv5d/t3aY088M0EFBsE4XCY50j/gEESA2g3QUlL62e7YR9+8JzAeNtqY
	o4hN/lTrqusbWij6yZbufRNtSXGxwHLokgOTZCAAaT9o7QhExkwML1l+pL9vXrch
	qqWWIoAHRE5PGA06dkbZFSCFWaCR7NqDp2He+F1L7kw6nbY1RctmIMTVKLVYKuaE
	B82hhQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tgqv8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:21:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-82b15c1dca8so114639685a.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 05:21:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758975701; x=1759580501;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xro+e+2dn97miI0U2SXZbX47C9NAolNE135GXXYJKfo=;
        b=F2e044Wbgqud26e37x0s82pB8xNHqBEnJTJ9Su0qVjF00t1cPGy4uhyrrhVwEc6KZk
         o5A20iUo/edaZu95SScadN7mj/GmQ/gfhXlJYTR24ZxPGvpIqC31ASNTMaK4j4g2RRoE
         LW2Jg3OyHlyCHNpopSqDeOXpS/XOQ9osKitnG4Z7rI9YRnigtQcMLkfqemBEql/evQcp
         gu65vHIOeT5DJL6gYvGhL3tMG/CZHPlTtGP1BV3fPTYK9a9/GcpQW7JX0631BuDyU2eZ
         ns9CdDlQh3+ynbM10D8TvJsnF68GM4pzzdP9JBFGbWwXULhRHvTDCOWaXpAR+CnQ9zgr
         FgEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeX6/NCxjKk8xOj8Oj1FP+CAr0UROShHXPxyH8TcqZab7LSdBRXWpw9Mq8+UGww1WCiq58NCY758kc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9CZT9uiJrladQGkv1VRNIAdRx7tIk30/ZMJ8H2wC4cB0bfAxB
	gSV0RP8Ef9JH28MJjYI2fi+db2K723fUO/FEtAsm3bFtvg4eLBslu/i7N5pqVVcWV2b1TRsbI6E
	WoGTFXnd1uNkzM/u7ieMdq76WDKQsw9IyRlKdgpb3DujsElwwBpoTOo3yZFI0/tjk
X-Gm-Gg: ASbGnctxg30T/KgPQZBunXjOH6JgJ6ZDVGn7zi04XJwBuIosXqKgBLjfnIOgDoX1zNT
	TpHyvYPErdMMQ3OOsVmqyYAHS0e4lScgpiTppbgTuVoQXj8uGDDZ5y4UJePifLHnkotiC3tSs5c
	asKL481wo1IY6v6ND30BYx22FI16qbOcQOihiu2HQEOB1Cmvjs8jiFPQKdvcoNGW38v/QmPM5ax
	SMxNAkgK9cZ+HJF2Fmch0onO3TEeoxDdiZzKXVageZwteYepa7u34j+Rqp0wpmd1tlY0xfL065v
	t1HIUPq6/zTqN+y1bG0XwTsuMgTaVYei2iJtWlnrntJ/FwgGZLvzLzPKW9Vzm2yt9DuYD3XO4uR
	cO6Iw+A0b8dmZFWlZ+S9TAw==
X-Received: by 2002:a05:620a:25d0:b0:829:9017:82b6 with SMTP id af79cd13be357-85ae6d8219dmr883817085a.8.1758975701568;
        Sat, 27 Sep 2025 05:21:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/XBV6tFVH7HzwL1SHOVi3TU/smws27aZNO1x1ZV5OkS2elqGSSNvmTbLL3DS1Bk2Bf/mvlw==
X-Received: by 2002:a05:620a:25d0:b0:829:9017:82b6 with SMTP id af79cd13be357-85ae6d8219dmr883814785a.8.1758975701006;
        Sat, 27 Sep 2025 05:21:41 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d0526sm548975366b.12.2025.09.27.05.21.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 05:21:40 -0700 (PDT)
Message-ID: <656173d1-b739-4f39-8e33-9c5af657825a@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 14:21:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: Rework X1-based Asus Zenbook
 A14's displays
To: Aleksandrs Vinarskis <alex@vinarskis.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
References: <20250926-zenbook-improvements-v2-0-c0b512ab6b57@vinarskis.com>
 <20250926-zenbook-improvements-v2-2-c0b512ab6b57@vinarskis.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926-zenbook-improvements-v2-2-c0b512ab6b57@vinarskis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX2liouwE2ZDJJ
 T9Il9nYtqRF3gi9yIejWXuWhncraSBkSb5yXgmAZOyFJxboJ0r/B248i6QgrxwHFV/l1WPMluZ6
 uvKI3iOGZt+Idcc1m2JiXxaEwgWlQg1WvCc4vxaz8QimYBZa+E9hCbecKTge9GzsdW72LmMrD2F
 YhUTyx+ZFcRiLarHIeFciK0sypfYXUJ8V+qd6Xucm7QmfRoFk0/9qYJKW93WdFBSiZn4RnKs15Z
 99eyGLq/ykjZr43Qa4Zypo9urW4qeRY8T9sTX7unw53aCTQ1g6U8IWV4+hLh/Od90JbfiXGh+cE
 vTK7DMQTHMzehI9xPJmi0FyFC0Y+3TZ5E1F0lPgmffRgCnlEfLQ83AEE2e5yqC8+VeSho6RXOBq
 luwHKHyF8CDswp9ulWtoHr3YZSf32g==
X-Proofpoint-GUID: 6wKQggqachvyE0sJ_mMNgpEu4Cr4s1W_
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68d7d6d6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=I76Qk8w-AAAA:8 a=gxl3bz0cAAAA:8
 a=EUspDBNiAAAA:8 a=KT6dqS1snKeT78_s1OIA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=vUPM0Wvl0xcrLs4nqPIT:22 a=kiRiLd-pWN9FGgpmzFdl:22
 a=poXaRoVlC6wW9_mwW8W4:22 a=Z5ABNNGmrOfJ6cZ5bIyy:22 a=UDnyf2zBuKT2w-IlGP_r:22
X-Proofpoint-ORIG-GUID: 6wKQggqachvyE0sJ_mMNgpEu4Cr4s1W_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-27_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029

On 9/26/25 9:08 AM, Aleksandrs Vinarskis wrote:
> The laptop comes in two variants:
> 
> * UX3407RA, higher end, FHD+ OLED or WOXGA+ OLED panels
> * UX3407QA, lower end, FHD+ OLED or FHD+ LCD panels
> 
> Even though all three panels work with "edp-panel", unfortunately the
> brightness adjustmenet of LCD panel is PWM based, requiring a dedicated
> device-tree. Convert "x1p42100-asus-zenbook-a14.dts" into ".dtsi" to
> allow for this split, introduce new LCD variant. Leave current variant
> without postfix and with the unchanged model name, as some distros
> (eg. Ubuntu) rely on this for automatic device-tree detection during
> kernel installation/upgrade.
> 
> As dedicated device-tree is required, update compatibles of OLED
> variants to correct ones. Keep "edp-panel" as fallback, since it is
> enough to make the panels work.
> 
> While at it moving .dts, .dtsi around, drop 'model' from the top level
> x1-asus-zenbook-a14.dtsi as well.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
> Co-developed-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

