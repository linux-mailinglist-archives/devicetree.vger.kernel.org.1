Return-Path: <devicetree+bounces-171368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC947A9E8DC
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 09:09:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E56C47A7F6A
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 07:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49EDE1D5CFB;
	Mon, 28 Apr 2025 07:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k9JykGZ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882CA1D63F8
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 07:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745824171; cv=none; b=qS+sxejJS+1Hd2codD1CNC/78WN3TAZoH4Kg+v0DRZ5z1rk88M7pvX+t2azre+czgXU9AmxSsKXQoAPna5QEYOQgG03QPYRFjxs1A+zcHVzLpHLBmWR8OTgF2FHJlneSIHlL34mT7IFsKcjwM3TISbwmZE4ynsBhl9TrAjC8zn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745824171; c=relaxed/simple;
	bh=41u4HRMaP6JkPojsFKHGpEIgdkeGnjTIpTm0KWVku4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rOS5UNiTScG0fm5OAPxpx5f61H8YmShCcv8h0eSXlsU5IBoAfbrqX+AqUtUC4S4eS7u0ct1qtL7yXJLLZKz1GjQBx+jrL2TPPaht7L0exB6u5ZZp5MV0zRcIs1Kne4byYTsVmifoR0l3E292UUBAQxE8EjvnigevRZ3vpkh5UtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k9JykGZ3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53S6VG0E022894
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 07:09:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4+h+8h0LMixJeNURLesg+SbAYAWOUVYEBpd9t3xgGFI=; b=k9JykGZ3iiz4+sfd
	+RNYAEKGTkcf/xbDUTnjgOfoSuYIQ/jUuCUWKNjCy0qUNYJ5x2BTcJ0L9E3zhinZ
	WL2XeMgNaMg2YzmKHbUuIWRo7yxwIUb/wZf3sd4nxea7tIopUxekY+CG1y8niNPm
	2LEkrGCAsdFmp3jK7Pa3DUrGQQ700YETLZ3tQ4L8ubUN1zmiSmx+H/T0CfHYconG
	wYtxyXqxQeE1eRtGDBMnD0FaohqrBPMIbWK4stYzM14kLnFS7OPhTx+d2splqL8i
	IT7YY5IJObRZ4tWcXWqi1psYM0YsP5IAH4s1ST39xNAvOvGpDv2g3ciPJYZuCAAi
	UzDrKg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qq5ewup-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 07:09:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f9057432so92408406d6.1
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 00:09:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745824161; x=1746428961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4+h+8h0LMixJeNURLesg+SbAYAWOUVYEBpd9t3xgGFI=;
        b=YuHZevHZOlSH+Tet+NvgrK3QEg+B+d3EPwpwPrcfRstLEe+Ro/UrhAYXMdlW/HupI4
         AJdyX7GdyPHzs6NsolalZDOBv1DYQmvSqY6PlcJCbGjrGVYy9XB1HILwZp7uvTvTXQ6y
         mNAeboE5BiemkA41rClFe2gJL1youVbCFEqjL1HiGSyPa4CTAmV/rnsptfmEQII7qWp3
         AnXZXpQUFP+Sic7ZUxdCHuoakZQOYDbl+SJ3YMEoCOTYIjS3mWwCpFHNcwBhO5W6p4dT
         cVU+ZSYEVskPue85prhY1jTVf68j3csXkMgd1VxFI1F7CilzydHmA+uS1Jqkmc8L2eO6
         p+RQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0Pzksad+rGIlYK0QcIeFwr4cC2qi1uAeFUrT1X51ygUd0DdQGAYZ7quPQxh6SHnfcDtg/L35dg+x4@vger.kernel.org
X-Gm-Message-State: AOJu0YwKxh3irki+8xj7V3bTna+aWCjsbg3oEUq6AsCFRVvzde6xv8jF
	pQi4BvYz0gHa/eYDbF0g2ds0aE6kxjy27ML9/iESqrp4gJX2PJIViAHz45HDY+H2VzDCPJX6Av7
	jgNIBbotFd7irGu5eBWmGDjIE/I9TmnM00gdIOrUNq3rD0G0z7QATBiTKB915
X-Gm-Gg: ASbGncvVNNkg86dssWJJ0gf5o5foc3DTCErQOIESR/9FgDq59keiw2pnu8ZHXu3kCUM
	mIT2CylxcSAybwAavo1l7TEKJ/hNF9qH8HLA8jjGQz9uLWLjRv1dU/yMSwJX7+DKHXZtbqOrza2
	iQRe1wo9PT+uqo1pbW/ZTimJsREG0v/OBNB3OTBWDh7nAjsRxFffJNv92Dm/g0qlxcREHL4QlWT
	kCSuQOWLCRCZm7DDSWvZ8FFPNK2C4VuUjTYH7ZK5xl0AyT6fnmB9st+F6rBHg969CE2LDTL/R9E
	72IbXju6C26hQTgbwdK07m26kSHHTUvjSNPl/Ep7yg0W2HX6oDhmBvAMVbmNo4o20bRHM4ScHcO
	jqGKEkcU+rgFN9RnOaj7NL9a2aJamJurzIg1cBI+U60IguTmIajP5FcErl8nddorZ
X-Received: by 2002:ad4:5c85:0:b0:6e4:2dcb:33c8 with SMTP id 6a1803df08f44-6f4d1f90d68mr115293626d6.29.1745824161553;
        Mon, 28 Apr 2025 00:09:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtwfnsoBrLAILQfAhm++fx3/rvpDHPyHIMtORziW0tz+uem70yn1OXbhOpwYp+HbaGl9+r6w==
X-Received: by 2002:ad4:5c85:0:b0:6e4:2dcb:33c8 with SMTP id 6a1803df08f44-6f4d1f90d68mr115293316d6.29.1745824161249;
        Mon, 28 Apr 2025 00:09:21 -0700 (PDT)
Received: from ?IPV6:2001:14bb:a5:9bae:495a:a192:5ac6:e42c? (2001-14bb-a5-9bae-495a-a192-5ac6-e42c.rev.dnainternet.fi. [2001:14bb:a5:9bae:495a:a192:5ac6:e42c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d16a844asm21018991fa.77.2025.04.28.00.09.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 00:09:20 -0700 (PDT)
Message-ID: <64a4698d-94a9-4b3c-ae18-b2872bdba6ae@oss.qualcomm.com>
Date: Mon, 28 Apr 2025 10:09:18 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/11] Revert "dt-bindings: mfd: syscon: Add
 qcom,apq8064-mmss-sfpb"
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
 <20250425-fix-nexus-4-v3-1-da4e39e86d41@oss.qualcomm.com>
 <20250428-prudent-hasty-pheasant-aecec4@kuoka>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250428-prudent-hasty-pheasant-aecec4@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: X8FgQENWAxNVtLOBXni4KADP6NiqxN5J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDA1OCBTYWx0ZWRfX/261ilS9wh2z uqLOtylpP8gNV44NyqvWqVELKdYoIQCh3VMF/Hut0aKf+cEQxA61ggnN9H9qig+uU+cS2EpzOfk 5LED6rTdtVNIsLi2Ji3wNZkLdaKQoj/Ts47yJUAAElmoYW0c9SwEvKrPFAPNHY1DRANSM+7wvTT
 LzOlbLS4I1bx5653PYzvDZKEDEq/sWrmzhWBEo2RbpEkUE+S6VAMqu1HQjERzWWkMxxe0WBGVQW ZXhglxmkNZq8TwtkFevDJNj7ezFMZLprqVyxgamH0oRB6lU9Y39ATENWGKCS4eEau0ACEL9lbtQ EvxwbB1iP+APjCv/pJD4+3QYt94JADT1kHCtwfm6eOpxzhewM0FeAy+DCFbGcetfyZQc5MwhYgd
 LkAr8iu2JVzpswrf6CNGGiSSXFfwyFHcxDcJwuEd7qwfiX0UotgHibNlV4y4bHRHlDJ7wj5Z
X-Authority-Analysis: v=2.4 cv=QP1oRhLL c=1 sm=1 tr=0 ts=680f29a2 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=9Id5vWWJvOQx4gJFIPsA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: X8FgQENWAxNVtLOBXni4KADP6NiqxN5J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280058

On 28/04/2025 10:07, Krzysztof Kozlowski wrote:
> On Fri, Apr 25, 2025 at 08:47:01PM GMT, Dmitry Baryshkov wrote:
>> For some reason Lee has mis-squashed two commits, picking up one chunk
>> from the first patch and one chunk from the second one. Rather than
>> trying to fix it, revert commit 2c8de7df7418 ("dt-bindings: mfd: syscon:
>> Add qcom,apq8064-mmss-sfpb").
> 
> I don't understand: that commit looks like direct, proper result for
> https://lore.kernel.org/all/20250318-fix-nexus-4-v2-5-bcedd1406790@oss.qualcomm.com/
> so where is squashing two commits? The diff markers have offset by few
> lines, but it's still just few lines and they do not matter - there is
> no diff/patch mismatch from that point of view.

The first chunk is about "qcom,apq8064-mmss-sfpb", while the second 
chunk is about "qcom,apq8064-sps-sic".


-- 
With best wishes
Dmitry

