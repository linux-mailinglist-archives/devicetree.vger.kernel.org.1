Return-Path: <devicetree+bounces-167241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4DAA89B06
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:51:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E79AE3B730A
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C97012957C5;
	Tue, 15 Apr 2025 10:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g8ypdxxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D782957C2
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713974; cv=none; b=pK+/jY17w68O++p3kh9wyLb00jRr7fdys8nRKIq22mHYab8URCur4BBgqpUQN/LI6tPH6t2ej/Jg/yUYv/UXHJY/jGOLO12sVE90zMZsRJvt+1NtuQapYYg097NyvnuYGKc34gj5HTCJe5+eXhkpPYg3WNUyMFh1gTDnNRxX7vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713974; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WmhLcDAcfD2YLI1NAd4C5E+EAu4RcjSb+0IUFh41Sr4kdhpJU5qJKCm1f3gGui6iP2H9pIA/cIw6uFgu9/8rNUNQNlLoAYPpMCAbCiHMB/y+2F97qYyFwjbvlVk6h/2d7XTBfaP/9SmIlUOnm4i3LnujCWuKjJBxFirwP5o1Trs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g8ypdxxp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tJHn031809
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=g8ypdxxpr3LV8Um3
	Z/ZyuAVLK3BwY/L7Bj424vcO+BkZekjQN0kxu2qN8DSh5rpkFNZ076bXxkHLBbf6
	rp3lNreY6vQY+AgMOmZzBU1IF7wKUUk1+TKheS6RXwqIew8GkIcWS8fuTNDSTYMT
	L3/pkBR5StJqWlF2oKYpt5QyGV/b+hyKV0OanI723hme0h4KK6WgJpGnXAZ6SapO
	tyGpFSdOfH1aNeuOnG07F7spmrSMd7GBErQUvHfPnpB4dBBAo/kv/4Gn9O6N8Tbx
	VMs4WJXTtGuAyGUgsb98tZskjU4ythVGdpvbAPSDZv6tUVoSQhTfEcEpiIKBHuP5
	n9TAyA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs17rkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5530c2e01so64494085a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:46:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713971; x=1745318771;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=mIVtU5CM93PDolTqlbvRpp1j7f05HlEE+Sw2rY64lyfKciZd9pbq097cMOFypHbGLk
         7ydRo4P7tL6/ziIfS6ceCV85PcwBETw/+fuTadTCR+t3Ha16ALgzhVLOVCMZ+lwHKPNe
         9PTa8Z9Kfq9ESAdAPv60wLoLeoa4LqbZULGILixrcAnx3Hyi6vGv+hOtGe/EZeJWN+6K
         VPen4IIYXAT4jgfdIy219FkvV5vk13wDJXyTBKQfu+dx1Cm9Nk7N7v/9Pvi9G7hkAK1g
         QaHMNfx9+UJGZvwrh/JZtWQQe9Iw4U8g54KSW6KCgF4o+gQXsbK+o8/HCShZz4lS9klk
         ZZlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf/UeeneX8+4eVYbhGHvrmKDG/dZGt17tq6qV3aLcEoOyn7EKyks1Z9wK3fCnrmz0NPGRLFDGiTtCX@vger.kernel.org
X-Gm-Message-State: AOJu0YyoG/Rnp1779p6VI6REJssc3AcR0m2myjNVjSe61NpGXP/7+s97
	7XCg5Qz8iHpTNtwRzHdWXP2M+yXDoXZ59zgNXLbJq+qKSBNsMO88m9Fns1rzlHwDiRqYOY2E66s
	OE7/96cLW0urDUM4HiP1i5UTVZl/7cOZMatuWhEtgJhtVI74vH4AOHNQy+XAn
X-Gm-Gg: ASbGncuFIWiGPmI9gfd0z2b+cpuLf6uNY1Ev0UB8EnIeY0WQcJBY6w/OPjgUck+Fv2H
	qVzNJhKzeo9C4bTCla0URP521uELCpJj3Ot8Iawa/wiO83DJs7draXEm43JRs3uBUUoHlC1O+BW
	hfFWCddjNI2eetgGpdGpAu10bZELY579fsC0ayzYIAGjr1c4Ns8+gjO7jt+TjqHpBLcc7nw8ZAs
	IUIcJod+OlVrCfhAQTyM6bRdaRMBe62eRMtSgBiGOVMhAXTiFioXCF1hodmOW9YbwUu3cYaj569
	K/tP50ZiWeESpJ0Lp5uaCLLMsB93CQ96O0W0jKEkvxEi99Bo65siCvcobDaKBO1xud0=
X-Received: by 2002:a05:620a:191b:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7c7af120d6emr750532685a.11.1744713971225;
        Tue, 15 Apr 2025 03:46:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF94xlvxWc7th9BIukblM0D03IKJZK7WDPWripk3MUFqtFr1YK/7gv/MOjfx8f9zKnGkVZCXg==
X-Received: by 2002:a05:620a:191b:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7c7af120d6emr750530985a.11.1744713970920;
        Tue, 15 Apr 2025 03:46:10 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccd69asm1060503766b.159.2025.04.15.03.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:46:10 -0700 (PDT)
Message-ID: <8f0dd590-69d0-45f1-be54-c5b595ebdf81@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:46:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/20] arm64: dts: qcom: sm8150: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-15-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-15-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fe38f4 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 83DsK_BbahqUiU_gcmerUv3BTJPbACTq
X-Proofpoint-ORIG-GUID: 83DsK_BbahqUiU_gcmerUv3BTJPbACTq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=607 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150076

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

