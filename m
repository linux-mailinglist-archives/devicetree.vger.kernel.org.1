Return-Path: <devicetree+bounces-167836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B1DA90700
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA7FB16E5D4
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 14:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1B1190462;
	Wed, 16 Apr 2025 14:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mF9LfbGD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF371F1526
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744815140; cv=none; b=F0RLdTMY9vjTCeKgVPMn3wF1tzO5LEbRtiPYX7i5nKN6cluegyXhFV7y6G7MgFiHbihTCCa/44B74S/new3SutXAw7aZNaKAIKD1+noLaQmVLVza9cM/L5fhjp0i5AEPc3G0NsRvTDF+oadf5/hJCli/F1KPxoSIrfmdoY7aEM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744815140; c=relaxed/simple;
	bh=KWLqCb9MMCaNjOfYMU+358ah6KhC4kqVvCHp2nDpQjM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p1xc6C3iPPpZ9d+M7AcV7HOU1r4LJQ7UeXrq9x5DLz5i/DE6SRx+rSLvXFk6eDYTiCKQsYYoBphXj+jDoO/B7aLVYJiil9+TGW8hxOpPhZp4oDcjup6G3ZpJGTrrOlpyFJoNG1Ff9Q/G8DMkbNYPjCSkek/GTiuKSFXqgjDxBHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mF9LfbGD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mB98003388
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:52:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4eXLekD7nIt9cu4Q3k7mAjKbk2MkbDMCeLet6DrgZGA=; b=mF9LfbGDRAudEF4+
	2etGITAkPk5cYASo9RoNiRFp+tF3IB44E6plOLZB8a+8hKDnQbSzJ8G8EjYgZ5ff
	eXblU9sMShi6WkEE46Iyu+Z68VHn3cyL8QJ5lm7E4Z1kxgpjW0o0uy7jezs+Xk96
	uWsLj6MaEdOxHnNukvZX4m2GVKqlTzCxqM5qXgLsdLaoV9kTzB54nVvYGr2Y+veo
	FIVI3566yGQSMYyK0iZMxr29/DL9d9xcy1ToLqWdZOxbzzAaWvHlZ2F5YwXvsj0X
	In5yQjec8ONXOM+NECNRe4ijY59HqLprCOH7rSRmle/EYoBVm3dayQjA5nxDMW8R
	dA45zw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4628rv93hn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:52:18 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54be4b03aso129101785a.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:52:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744815137; x=1745419937;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4eXLekD7nIt9cu4Q3k7mAjKbk2MkbDMCeLet6DrgZGA=;
        b=eHVYGdT+nagkuXIcqh8I15W7xYaieliJbECTIHJscbfcKW9qwpfNnBYhtXzi9ebJ+s
         dKIXnZApNl5vYKfrdXwWCH1rbwjP0txSkEKYk5NYeEhzAMXCodIAMqT6vKlRb5ZUquQN
         /jqDZyTc3svSFudE+KQrwtMqrCc7etDa+4decalida9dGFy8lAIH4vrNL+Lxyz6Lmr0L
         zFiFzCIyE2nC/1zeU+2O/9HjUH2AtHn7E2eKqQlJQG0JQhLOgHTJyv9ujJ1zFdHK8ZgY
         DBRyJN44s/1pZ3LJjD+hp1XrBU1ZI0y6gcaCWPksqNXwk4/eLRMdj8nhPxYvBkobbL9N
         2bhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXz9CawvgH5bPPkg5gG4sVMTTzb8+KUJBuQNJV8lVLro4KcouSTw4YK/W1LBXa/laSGDBoYjT75uwIp@vger.kernel.org
X-Gm-Message-State: AOJu0YyYaNUka92FeGvFzPX1idHp4G9OEaa3NFC6as1YKdb3DC63+4uM
	a/f3QdRuCsvNAcyZgiqEwIKaz8lfNmS89TuzvDQFo5NT3pXQqm/D64pLvYlqfliNk+XSRGI4znp
	O6mTFWXBEGNDzs7Kz9LQwFuu/GqDntnfzMZPvtwMqAd0ZNoFwNwUXJXvVh9MB
X-Gm-Gg: ASbGncu1b/fENsow4hAFweYRsetZbdSUBs4zrFpaJTJaf4AkyFIn5luId0gcFrtj+iz
	nN2vlxPPPT+l4PS+JJ7KFfL/BabbB4th0aY1tYl0W1vgBdHf2h/D55lj8Iye9euImrLrUkS8Oo0
	gx+wTcESpcwPn9rqlg8Z8nZK6CuPdzczKQTRsxOTEEpsG5szFMUBd6VUy7GBsyiCYqIgdNZoc4F
	KAoC7hcsMd64XyOvWOow/gCyVrBqoWZWWhLEaGC1/G/oGaRDaZKFjcHUi9O9By43NCtOY3MySur
	28hW/0qugjq5GjPonshqfqiwwVtwP1EsTCAbLTpwZYHNmgnQC1EVBqoDr0E23E780uo=
X-Received: by 2002:a05:620a:2706:b0:7c7:9d87:9e2 with SMTP id af79cd13be357-7c919061cf6mr98641185a.12.1744815136550;
        Wed, 16 Apr 2025 07:52:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQ6Qw/xZedYgX9uVB2FjDWt0hQK95/ZLeo+Xo+Gzu93v8ZobxUVcWEwyW9p71lE1sPHvlb8Q==
X-Received: by 2002:a05:620a:2706:b0:7c7:9d87:9e2 with SMTP id af79cd13be357-7c919061cf6mr98639685a.12.1744815136153;
        Wed, 16 Apr 2025 07:52:16 -0700 (PDT)
Received: from [192.168.65.178] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f45bc75b4fsm3875259a12.18.2025.04.16.07.52.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 07:52:15 -0700 (PDT)
Message-ID: <4410c711-fa56-4cba-87b8-3a561a0fbab2@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 16:52:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: ipq5424: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
 <20250416-wdt_reset_reason-v2-2-c65bba312914@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250416-wdt_reset_reason-v2-2-c65bba312914@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: iBpweVHd_iXNHpJTKNk9nQVwSmW4ObVF
X-Authority-Analysis: v=2.4 cv=RbSQC0tv c=1 sm=1 tr=0 ts=67ffc422 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=owAxAYLDMf__z6yt7SIA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: iBpweVHd_iXNHpJTKNk9nQVwSmW4ObVF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=683
 suspectscore=0 adultscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160122

On 4/16/25 10:29 AM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is 112KB but only initial 4KB is
> accessible by all masters in the SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

