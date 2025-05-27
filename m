Return-Path: <devicetree+bounces-180753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB5DAC4C7B
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:55:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C07763A41DA
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E528B2561C2;
	Tue, 27 May 2025 10:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Otw7rrQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8600824DD07
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748343313; cv=none; b=ojy1QW9Swk665xVeIdxBO/sDDKaUNIdtsbkWcoZD8DMLi+6IzfAJFStQPPxxd5WxA0Z2/cZ0TdfZQHXZ9Y8xhuLndCCzWANn/tpiVgUzxppS5NYtKnYaJBgoqtfuCsCXOhRA5H4oVRPc45ieUKJmbg2XHG1BPoPtZD4lrsxxjG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748343313; c=relaxed/simple;
	bh=O0CKMs1r875V1oP4qm65pFEA4G9zLyPyriURw406bEo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UIcqYvRPvaNPgXwBFbSeaJ0erXtDk6YxaCraFuOG+h3AWn95IphGa9O/OaQ6EgZEFNUgqbhb1ICEejJbvL6htfg6lfpcsrHjguc6qyUCWwmxZ1s0380Slvqe7UnKzvPosBkYU1Op/o8y7tXCtFB6QdeNeinzUgZniapzdK/rM/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Otw7rrQu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R9tV4h026404
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:55:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0QaN0jDgPB/5r3SY7bQD6QOdm26/CK5MylAtZs3M0Wg=; b=Otw7rrQu9o3Bd9nY
	gqO8p+fVniWgwLC6FBk5cDzZ4kUoQn/DCksFoErmbw2QWh++0rtmWf7o3RLWYbON
	H/WwCT6n1luUYXqetqtpkY3fPG8T4o4otAA4gvnY5Ou7mzAl7eE6WUgLp0mKbYHi
	cvVlQALrNXSiss0hbpwCRH6ZEJ87s8NeH9uqXr8IHbLqxhSnRVh/Pa6rlBBPnZu9
	iWE++XbHf5tYnWkfxqixFIVwUZ/qGS7CAETBBzabGGdE4xWMD0c43N6WLSZi0Ta/
	sFXwAeI7NkthQsX6rzcq24cwXa4msauUXZzXWEltHR5vHMn22QLlO4igclXTB7i1
	mN7FRQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjpju4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:55:11 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6faa8342503so3315256d6.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 03:55:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748343310; x=1748948110;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0QaN0jDgPB/5r3SY7bQD6QOdm26/CK5MylAtZs3M0Wg=;
        b=C0lo1bV9n4eYAYZuJdvwC4lnBW8BKz3XpJHpLD0Qrj9A16S+T7q5PSoWV7P1+Deo1v
         69lgvEYy2deHskwir4dXX/wejuU/T2Efnwi7901sls+gFF6igAPMNHYU9wMRaQKLUlnU
         XgtkDIGH4l6h8QZpPX4+u3dsTfGxoz+IykMLZi6q5g07gZM1gKbnbf+op675qw/iuWMb
         t5e02Q1CclZmLyNnzy3mn/mqPgWoV4My1ZS86bBbOaQ+B4tvptVrrKc8sv0paun5MKyQ
         Cz3bk5a70MxQcl8vpW0AAXWLvfmDYheCdchRqQMdL6+cLjFlmniHbDBJkt2aERVNfIna
         Zj3w==
X-Forwarded-Encrypted: i=1; AJvYcCX4uVd/qdNNBlMW1DKE+jxXmAccKvMbFc2KYGguoo8HlB24huabtk/gTTN9+C5dsB8ey4q2sREWTwYn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0a2cfjLKk/nKSEKG0gyuJKihBxvX41SSwJwmJjTvo+SuH+Mvy
	9gqa9nbKr/5jzuOO5zGbL5kQvIL1ja+WGiDTchJFvlOJoWvc1cJvt8tQ5vKJp9A5v/bbB/qa36N
	KltWD/zJxMg7l8jynnorc/GHugNvz1MnxcFMAB4RPQxzKP4KXc736BOb5i0PJsCzW
X-Gm-Gg: ASbGncsswxc0SyPjw02+9R2hElY5ze9AnxXQQkYWjyoPW7wlw4zEwV560LutWR//Uwy
	AHSUcJIWcCt1qk4pI6ZhajtOsqyNjC6irnr+9TE6raKgkLa87b1efbb39q4guK0W+hWD/iT13us
	0/9fHpWKTNHVLOJSxUsUPz8SQcuiN39MZ8FoNA2X9L6pjj+xski6gN+sqT1nGzeB9/ju25wkHTh
	yRa/Vnqz+oLxCKSxFSGZE/PhowiVAmS2ktrExARx01nZiimu+5M166WXKWxzQV9y7vs/jjTP2Tw
	iVE5BUyIPSdZgY9S/lZo+heUE6+sz0jj2CVlSoeLQs9Zps+pDjAkDKISXnuwdCBQGQ==
X-Received: by 2002:a05:6214:2482:b0:6f8:b4aa:2a52 with SMTP id 6a1803df08f44-6fa9d270dd0mr67671236d6.4.1748343310287;
        Tue, 27 May 2025 03:55:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTJV7hGI3ZkwSkprGN+pDgA9B/aLbKDp2MQye2teLhkvThg0W2kSQO/Ud2VQBEXioadf+3JQ==
X-Received: by 2002:a05:6214:2482:b0:6f8:b4aa:2a52 with SMTP id 6a1803df08f44-6fa9d270dd0mr67671096d6.4.1748343309770;
        Tue, 27 May 2025 03:55:09 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-602cd35e2fcsm5162433a12.73.2025.05.27.03.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:55:09 -0700 (PDT)
Message-ID: <152f5150-30b0-400c-9816-13e4710a4156@oss.qualcomm.com>
Date: Tue, 27 May 2025 12:55:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: Add Lenovo ThinkBook 16 G7 QOY
 device tree
To: Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20250524-tb16-dt-v4-0-2c1e6018d3f0@oldschoolsolutions.biz>
 <20250524-tb16-dt-v4-5-2c1e6018d3f0@oldschoolsolutions.biz>
 <g7vlyqma6ow6tdsaqt2rfwvblxqwbqlwmoueio7i4vqvjy76kw@5bz4g33pq4t7>
 <CAMcHhXoYkQru_0n5siMGGkTcHu8yWRZWfT4ByiD8D0ieZHF+wQ@mail.gmail.com>
 <vwoixgdyjjzcjlv4muwrzv7wztnqyidtj7ghacgkjg6hgkkyl7@ji53bhiltaef>
 <CAMcHhXqDFuo+x99KOK0pQFj-FyTdQoZS_JvehNE2AC_JSoQ2gQ@mail.gmail.com>
 <rvyfkow43atquc64p6slck6lpfsot67v47ngvfnuhxqo222h6k@kdvbsmf3fwsr>
 <CAF6AEGvr_foMVwaE_VSVWLT50cbGi8i3UGwo2e=rORD-1JmTmA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAF6AEGvr_foMVwaE_VSVWLT50cbGi8i3UGwo2e=rORD-1JmTmA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=68359a0f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=vupSWsNl5j4Ukh8iwq0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: WfgK1vI45gMO50AdKS6DjbsqoqMJCUaP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA5MCBTYWx0ZWRfX30Cdgr0iq2/p
 TymxT42DWixmb5SXEuTc6ChQ6Sllz3fnH5kMPqNrpd1JaE17mfA9EYjtzqZu7ssHy/GWcGQcCxS
 nkR41xvwIpgg8wwOTPH3M1RHTu9YbTt+91GU5oMgUaN1OS813hSItZUT2DPUx0idEFjFA7aMLiF
 kjS2ixac4cDQ6wUBxHnZz+N/nI2Pat4KhxGxvj78PJvDjbNyCulTCz/ITVYscfuNawP9+9aa8Op
 HAgrf5o71GdLiyyEMefcr62msjmyFGyP3i4ZtvCPHYSvUX7UzZKrzyr0J/NBUS2QU+6a/p4ULCo
 htPscHj/J7EZYDNHeF0f4c5N7XOnb6jmu1hszAdi4ymp9xQAMMfny7W0mPmDtYYl+H/gxii36Zb
 KVoAsEoZlbtDjgUgv4rY/0YtpnxAQ5zvvVQJegGgIq3C288pY+XBh7zaWoJVMAoLpz3cquKx
X-Proofpoint-GUID: WfgK1vI45gMO50AdKS6DjbsqoqMJCUaP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=870 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270090

On 5/26/25 5:28 PM, Rob Clark wrote:
> On Mon, May 26, 2025 at 1:36 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>
>> On Sun, May 25, 2025 at 09:43:36PM +0200, Aleksandrs Vinarskis wrote:
>>> On Sun, 25 May 2025 at 15:33, Dmitry Baryshkov
>>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>>

[...]

>> Yes, please. Don't set okay status for the GPU until it gets enabled.
> 
> Drive-by: Shouldn't the dtb describe the hw and not the state of the
> linux kernel's support for the hw?  Ie. if bad things happen if we
> describe hw which is missing driver support, shouldn't we fix that in
> the driver.
> 
> (In the case of the GPU there is the slight wrinkle that we don't have
> a gpu-id yet so there is no compatible in the dtb yet.)

My two cents are that it's okay to enable it, at least in this case..

Konrad

