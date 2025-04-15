Return-Path: <devicetree+bounces-167246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45740A89B19
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:52:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 423A93BB39B
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27732297A53;
	Tue, 15 Apr 2025 10:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dGgV34N/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8F62973D6
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744714048; cv=none; b=hkebZAYvkI+vyMmc4zN1VdmiTmksiEaRRUSiEADgpImQBiFX99/F8B0PeVgAQ5+TdTLciyIYHVtiJPFaGwtW8fdxenwxwwXEq3nI9rMlyKO6M3w2V48k2j97RbdiL3Ww6ygCY1EFntGFULMyDtaFSKY4r60exZvOr0bNMeMccCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744714048; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VUIIxVLusZ5agvr3VaoaSRLCzzdYpXo1WLFWUSxNZsAknwqhUP+NfqgD73FHYxo4aJHP+NGJLdA07RXmG58EmSUT8kfUoxiRrNi/xzuxaYGstoIx+Va3vt3nMwSwhHfMpxdmvuwaYq4rVXDR/TYVWw4+dmCKrX5qpxTF43HmyLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dGgV34N/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tG0P002173
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=dGgV34N/vYBLV74h
	hk0HHYzfGp+JC0LAuNgIXRTjh1PlJ2RD+9IL8di/G9J3wF4KKhg2USYVIwmszIsp
	fJkkOzOTN9LKXpfdL0H7VdtVW6sTksB8UFHQKFXMfA4DOObf+Gr72H6WzHz+gQko
	bHfL/YCfBLyahWxilggcOOyX19k57Mt+XDSEvOFSyw2EviOsdPv94j7Te77G7QZJ
	Xb2RtaJQPoJc6ZZwfMUbiFgwS5/7NDhBLiudGP3Ip8V285QOSm4nKwrDN1a65bgM
	G4XwvmjrZU52Z+sZJVROXfEdCaRiwqoedHWeurx00lGUGMTyy1sNnpyEMzuzlgHp
	eF2m1Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf4vfuav-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54be4b03aso103547785a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:47:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744714045; x=1745318845;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=ABWLBUimpPk+VnVG+2XCI6ey8Il8Vy6hh2Rl106Er+5vo6Pzq6i4XVxjtz5IhX/Hsj
         N4LPp9T3PVNs09iQ3W1B0uuXMOHb0HAP4/MtzulMxuJtEx0Gj/I1U+6ReiGytjd1yOF2
         s7rqXVRw3mu4ex4h5mftW/ZoBsNi24v97zjEfjx6V5uvBhHiF/z8pjegrmqGFZmLZvM4
         xntE2LJDpVbJeSLv3h8//LWf++Iu4vTBs9DwVxDTwh0mSmxdd0jxn0KOuilxH9dF1W9k
         D6MI6+wEWeZ3BzlmFipb6HAsFSqoKCb5h7Rz5QDt9l2smCX975Zrj8EUqg9qnzDdD0gf
         tkKw==
X-Forwarded-Encrypted: i=1; AJvYcCW16Wy7jRK7GttI9DhZGUHrXPg8+XWqvqi681Y9tFt2kHfZdx+g0uwRlRxqsSCdBPpBvrBnH6SlnSUX@vger.kernel.org
X-Gm-Message-State: AOJu0YxMb0kILuX/0DQA7bEJkNWosdXbnpFXWEZNMtDWn8NaYzGoYn7z
	+tx88syU6QKaUUODL1FT17UwjPiWxkZWIWSmO2fujLQc/Irup7b8Evkwhp8m82pJwRfclHlTqjA
	N/bgw9yGV/swTrIcxiKGkmlBvCgbkt/RX2u1o8fHtEaXxdG38oFjgZXyZSRl3
X-Gm-Gg: ASbGncu7nCd9JcaRFgC7R/2OFNphpvKAnLMcnrW6NfvEVL8I5ViIWUz8W6GafbqSbmH
	UD/eDgLeF0S5IGGIOmp79c1gp/V9KpYVWcR0CVxjuOzPgz3DC3/qcyRdwjthtB+nnJib55iROkJ
	tjwn9HgqnJhyJZJFp8Z07tnMUYBedS7AzvRWIgeYPN+2FkkklVDota5Ab2XeDg5w3gl0ETxWJm2
	G9HbdYr+VnhltuQ1+ipUc1/aOK9mh+3G5VMWmLvy7f6LA90mK5DF3V/aqb4QTWBCM9wYRPUN0L0
	pxgNp8CGNcsya0XDC7zlAsny4Edrv024yqp3avmFQIH43tP3J41u2fS1/6Q13lJ9Xeo=
X-Received: by 2002:a05:620a:44c1:b0:7c0:9dc9:754b with SMTP id af79cd13be357-7c7d07be091mr164596785a.0.1744714044774;
        Tue, 15 Apr 2025 03:47:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFR14+Twk5cFwlwSft3fvWINdHta4kge806Sqok0D/JeIzhe8ayLHbUc1jtjfLT5FrSvApq5A==
X-Received: by 2002:a05:620a:44c1:b0:7c0:9dc9:754b with SMTP id af79cd13be357-7c7d07be091mr164595485a.0.1744714044447;
        Tue, 15 Apr 2025 03:47:24 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb404asm1070349266b.87.2025.04.15.03.47.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:47:23 -0700 (PDT)
Message-ID: <049d8520-5c66-4846-adfc-cb93f122ffba@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:47:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/20] arm64: dts: qcom: sm8650: use correct size for VBIF
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
 <20250415-drm-msm-dts-fixes-v1-20-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-20-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Yk0UNiJWNmZ1UHm7K1ToJg_q2oABX-6p
X-Authority-Analysis: v=2.4 cv=IZ6HWXqa c=1 sm=1 tr=0 ts=67fe393e cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Yk0UNiJWNmZ1UHm7K1ToJg_q2oABX-6p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 mlxlogscore=607 mlxscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

