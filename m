Return-Path: <devicetree+bounces-229647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD8DBFA81F
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B17A3A38E4
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 07:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01E642F60CC;
	Wed, 22 Oct 2025 07:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WXPjYZA4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7649D2F4A04
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761117639; cv=none; b=n7gZjE7rub968B3OhzamJfN2hg5QvYAE/XNZuR6e145EMjXYJ6XLnUrUmO/AFPGTAVFXySQB20quB/NpsszhgKm+Hkyskf/3JHqezvR8ZO8HoMHxuD74gulkTDyBgUDngxWYLro/oFBHZRn7TqpUyM7XKKwpezzxpupiXX4DcS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761117639; c=relaxed/simple;
	bh=Qx5ZLt0bA1gGhskqBF/wlqngo5r7KHvDRvvusdOm6+8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=aU/eaYaL9lDqXKzbjLa09GsMUX+O0zNo1sSym9V+CtjN2EUflnZp5L9lY7pqIRaR0SO+Jh/Ue7Gc7cXXEncbCkJj6sY7MQUYwlGPGOt8LY/GYLnvIZixq2PlddK0GOO8CNfv0ldEG9oWjLSgYivI1WHVxvm6fHTboHd4Bb+0FZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WXPjYZA4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M7EOEI012340
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:20:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k/P5qUVg0GWzdhRDecSxvZEOZjOjt3BobF0UUDc36ok=; b=WXPjYZA4Z28Ktasa
	LK09WZTV3aFaBq5LIRLzfNfKw82/YAbXnWBkJkw/zXclpxeLlmSYUxCEHOSFwSn3
	qi8na0idnipYIciPYz6JqfyXavpFQXrsngsZ8JFZx2zxM7OVHAKuyuYTuicl47+R
	n0tB+db7A3EgtqPbWS3HH8SJNz1bJTLeore2HBOp3jsnKJWTdsAQBEAHtWr8JKgx
	VyYEytcC+BXZKNdZxOBTsVqzAGXbkxOw6nDWFy/n9/DiqOLQKohLDhyMslz+hRmf
	eMiSZ5HV7dVDJojn3aCfyZvs+Bp+ieQ6q0lKtyQlH4MOZ1l5NLef6q5vrpuRp5WK
	+NBktQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0hgnt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:20:37 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77e7808cf4bso4258331b3a.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 00:20:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761117636; x=1761722436;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k/P5qUVg0GWzdhRDecSxvZEOZjOjt3BobF0UUDc36ok=;
        b=VoHWoESA0ctifUURUnvkLwaEBydHuZ2PqvC+cM7y1s+zZU4FXMsSXu2Xhy8TwXeINw
         bEYEXriNylJcFuNWSlRXG2rWHNPrDdqfW98SnNSumqgPxEDqWDrz0LXd+TakuYR9YgMA
         F8uV+50sBG2oKDHtXxLvcwmRpHmnyi7b/M43dvgW3UgoXzE3amRVYgStU1b8wB2XpbPY
         ESwZ8QyU2bkTJD8By67QmQB/4IR7SmS1NjQeuJnqnyyl/qctZsNPBGwX4ufTETArMrKA
         NXc6D7eFPhzvxTabgMtnHhHZfjzp/F/ZF4vbjNbaJ9EVIFBK4eE2wNIywqZ0xc9vlfsS
         YjFg==
X-Forwarded-Encrypted: i=1; AJvYcCULjmpwtGhk+awOiRzp1Js8hd/dtE4OdIU7P4MP8NqDNEbtfPRNg+GDAPdg2XcNZex8mpXSfDCJhMa7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx+HDLYikY+FIWvworhT5BdKwpgmxJnVwkFymX0RCQ6BeWaD8K
	YDySc88uhi0YomtECOUFlcLyJCzJwc6l9nfpObkO+znNLanlPi5sakhw420U/wC++ONT8OL9HXD
	m9ryGwyXFBHq6MP+FbPR2A//VzATop10A2ZlYP27BPprAxbjZnKntnKGei8jnTxocRUt1WfcP
X-Gm-Gg: ASbGncvc8cekIIRepyWUBKIsXRiQwSaC+Wq/eIBv5d8GOtxMCmQ7zEMkgdeCQUzhEwj
	km3FHV1Hqblg1uRIuS2nfFe8b2U4ZHjmTgz8dDJxeyu8YTXxgUELW7KkMln7bxESONVGwuFvFmv
	QxY5/kNHHZTg8qiOUgSG0ENSCuRoemOAqfkgTWeKpO+PaZVQOoHw28tjyUMsHMPHiCXdX8DGza3
	lDupS0HekCkRZwqFMFVMsC9py4AkcE4vPnapRLsEzeix8soN2+tI3xLgou8T1Ukd6BXqo6putDU
	+w7cMudwT/Sx2fCSN/0BTzikkrdzNT6GZ+QIjgfY67DZx/6eoKOpK7a4bJXTyaoaAyyf18a7s8P
	WGLft328rX9OSEGlKNA+1EKQUOKs6rLHO3g==
X-Received: by 2002:a05:6a20:1611:b0:334:a3fc:797e with SMTP id adf61e73a8af0-334a85341b0mr27012252637.24.1761117635708;
        Wed, 22 Oct 2025 00:20:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQecOhK3VUMqmQQsVoBliqObRe9daZgl/gk+BlnDljUjD9z1dJCRLyXJIODKqTr58ixAIBLg==
X-Received: by 2002:a05:6a20:1611:b0:334:a3fc:797e with SMTP id adf61e73a8af0-334a85341b0mr27012222637.24.1761117635277;
        Wed, 22 Oct 2025 00:20:35 -0700 (PDT)
Received: from [192.168.0.166] ([49.205.252.226])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a22ff157f4sm13707077b3a.6.2025.10.22.00.20.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 00:20:34 -0700 (PDT)
Message-ID: <95c93e25-a60d-99b5-c31b-9be321eb5073@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 12:50:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/2] media: iris: sort out common register definitions
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <0251017-knp_video-v2-5-f568ce1a4be3@oss.qualcomm.com>
 <20251019080212.142623-3-dmitry.baryshkov@oss.qualcomm.com>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <20251019080212.142623-3-dmitry.baryshkov@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX2M/xDHElEuBb
 Epfi7vV/szmkpgGCTUntIfrEImyiooaKQ1AGJ6onpGHhkgeQWbzr6SlfRhBp06Va3wFYZxSFsiK
 UIuYAvJDt6pySY/KPy9+fN4VWfIAdlemzUyUiog429bc6CK/LPxUyKCBhRWXdpZ4mlTubk+fyel
 0ctSoK/i9oO3aqZO0s8BNFkGCj8gcsV1ri+H5Y9Qa5CDgRGVVXvDF3qUehfQ4KoIChgJmuXlZ6r
 uLuO6co1sG4n2GnmkQ/7jjf4XunzK+c5oHBVEThO6SGv1/UJgeGFwad8pWy+c93TxDQPsG9eB1k
 hIeBdRC3ig9hsYeyHxQ+YIv+qHO6IjDYKGo2t7FFiMG3jSiKIzAVNx4RI/IWUAQOpyi+zEgtZO5
 j6Jpv8SzZhj3/NCMi9qyD0Knj19Qcg==
X-Proofpoint-ORIG-GUID: UaMj6nWYUB-Y4z9AUTrTS-CPuSDiDdkx
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68f885c5 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=FoPg1IWog9mqHsjG+aRTFA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=M1YMS4I-2UCZmqrdDCEA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: UaMj6nWYUB-Y4z9AUTrTS-CPuSDiDdkx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167


On 10/19/2025 1:29 PM, Dmitry Baryshkov wrote:
> In order to make it easier to modify the file, sort the definitions
> by the register base and then by the offset. Also move bits definitions
> next to the registers which they describe (as it was done before).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> 
> Vikash, I have dropped these patches from SC7280 patchseries as they are
> no longer required. If the series gets resent, please feel free to pick
> these two patches in or to squash them into the corresponding patch.

Ok, will squash it in next revision of my series and add your co-developer
contribution tag to those patches.

Regards,
Vikash

