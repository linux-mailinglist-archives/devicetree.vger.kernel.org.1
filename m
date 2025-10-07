Return-Path: <devicetree+bounces-224134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E4DBC0F38
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 12:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 71FD84E1E4E
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 10:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0E32D73AE;
	Tue,  7 Oct 2025 10:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="psgWcGo7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168331DFF0
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 10:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759831415; cv=none; b=ZY5EbNDxTQofHCYBRI8RkuteP3O0MexrbJhoqca4uZyhbC5lHQ7FvF09WvwANI6oJF8fsmX+eObYUKwW0LRx5KqPqLevKeqVGosYLYt+BdXkslivgSbAU+Z7HLVB0Id+O0loLjdiHZ69gbc/LBbfVu43rZRjLZPgPwKYPz0GqAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759831415; c=relaxed/simple;
	bh=L8Q2C5/Ub2uJq/QGtFgBbZf6xb9DzU4bjBeSblXm4p0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q8VrG77xqIfgj2qJfQcaY3WXeN+67KMFmosmMdJuSygeMiQCNHbwV0B7goush11E/SVi3D03xal32K4Eki7Xm31nrfZgoq6mDuwGjI+qvq+4BA74EJOgXUjrWtR+3BMRxBA2wVkf3UsGqUmQCGxdvchLTE5MAb25kKHSfQGM6c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=psgWcGo7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59744mt4031103
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 10:03:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	llIeV7D3qZ9EMXJGYTsCRVvmxarIGOFyzxq3f1h8DLw=; b=psgWcGo79wVpASXP
	74n0WlpHkbJBz84+WKHWz+uGBu2O8olBlalaS/p1XxgI1WmGdocD7He953nWCP0P
	HvCg0dTv1+W8S19QZ4cq1KO01D2R1kUAYkbHm4RryWf1emoXLBfIXcnITM9zuxtb
	Vb4fDKbKJ+JbK/1hhyLryTh0BljHq7xdtVUTSt6m8KYqhamzLTkmElvSYJvIp4qp
	0tsmnPKELwAZdU7KfBDH+JBaqbXiYk6knrY9qhVClmMBV9a4MXpo8kw5Eeb+WMHj
	uF19CZ4oCJJrZceg4uGmo5dDfak8Pbi+SKObWq+mNA+o84jy0nlHjQ6ErUj76DbW
	shIkBw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgpwat-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 10:03:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4dd729008d7so13589751cf.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 03:03:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759831412; x=1760436212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=llIeV7D3qZ9EMXJGYTsCRVvmxarIGOFyzxq3f1h8DLw=;
        b=UI7TfcmNFREt8Frv5rnNDpATzitxUDmBFbj7aQNOajHvcecmBBs9qhaSYpC84Sm5ap
         HyK+NZDNyoKnj1VRZYeFCs6nDcwikcd9Kyql7IVM9POV066TN5jeXjp57svafJTAYeeK
         hFrXSdBfRKU2jcfr9tzvT/uVDp5KTiLErOiVJofPSFYwmEAMGZhKr/axaYnWSdD92xH/
         XovZ+KsAG+7/CLHqdAYL/LwP2YZuhQZ97UUEv6r7Ldp2vuJh1fuFNwcjkTJS2MjS7MNU
         Dz24q5jhdZM60t8FqoYvpLPnRPWQG8t65oc8XBFjEGERXK3YGhntiPqoAGZNnA+MOTje
         O10w==
X-Forwarded-Encrypted: i=1; AJvYcCXHItxdsyky/y/YTFokz8GR6Fhps8IzQYxmp3mIof1N5teRa9rGxZUFvJlWsXkdlXMQAMtgtgRIOol/@vger.kernel.org
X-Gm-Message-State: AOJu0YwCCEQHmO1ZxAdqqbdvBV1IXQf1LAb6AgHx48whIRxqCT5kat3N
	/p0pgjMRbM23WhhNEsaDKWg/V0IPrLbi7gR2oGK2f3LQQDY8+Bw0AnRNPYAdNTEONBQt265syTn
	N3QKxkBnk7VgXQFc00D3YrgAHqolG6WzzOu/QsowCjqJW8Wma93FKDvuHFokNG6L7
X-Gm-Gg: ASbGnctOX1nWqa98HAmK4P08gRzMhfhZgSTEbG0zAOG5S37fwuB2CawSfv1qRqgZWdH
	Dpz0g5trlFtz9wOFiK85HdFqcyezDdKhiX1v5EEtj5c8+wfoum2psyqzl6alYQiI/4sAVgdO+re
	u29vh/ppOqFf8sXj2JG5NCZFl+hrHNJsLJIGPJtHA1td4vBITo1YfpxAF4q82IblO4Ffa5ovJGQ
	AYhHKfX5MFGCFxkVmo0gv3mbthXMDT9TNDI9fWoqqdIZo0ugs5lfSozyrryJWWK99zgqXPSkp2L
	AGnaAQb0yk5Bm4BQK9jD8Qv8+zYa0WWbEVFzAENG87493dx73gfKHqxx+mKeMPmOUS7MTF7d/Ec
	yee78vykueBCRA4rAPzO944vPxPw=
X-Received: by 2002:ac8:7f87:0:b0:4dd:3948:3380 with SMTP id d75a77b69052e-4e576ac46b6mr120455861cf.11.1759831412025;
        Tue, 07 Oct 2025 03:03:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH595GqzjdhPhPl+ER5dVZJGuod+xlkaWX0Q5/bGA/gl6UrOFg8YE+AYMFgUODCYAkuO8cjhA==
X-Received: by 2002:ac8:7f87:0:b0:4dd:3948:3380 with SMTP id d75a77b69052e-4e576ac46b6mr120455621cf.11.1759831411403;
        Tue, 07 Oct 2025 03:03:31 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4c1f6sm1383798466b.78.2025.10.07.03.03.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 03:03:30 -0700 (PDT)
Message-ID: <6c791f05-70e7-49c9-a3ce-50fb82b0c894@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 12:03:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ARM: dts: qcom: msm8974pro-htc-m8: add status LEDs
To: alex@me.ssier.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Luca Weiss <luca@lucaweiss.eu>, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251007-m8-dts-additions-v1-0-53d7ab3594e7@me.ssier.org>
 <20251007-m8-dts-additions-v1-1-53d7ab3594e7@me.ssier.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251007-m8-dts-additions-v1-1-53d7ab3594e7@me.ssier.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfXxrA2LGatZHYc
 B5jVJNz7wrSstTCkqyqlG6gyQarGQBwIHS5Er7D/FtMa916BaW7glo0PZeiaGP6VfMZVv60TTga
 QzmGBGleNeCGPKm3rHKteZO8NfFjAVqoAa1FZkAHAJPGYY8i6nwhHttbCIuRrg2pPw/w0wAKQhT
 joNJ7yUdZ8atJeg7nZnMjIH7UUmGZex/RaJBjj8GePtTkYVb954Mo0MzhcFBU+XNRhQy7D4BYR+
 /RJK/UDMz11EY5t/2Kj9lKZQjMdAloJnDy+QdgDNGBTkNjvT6MA+39IuepwgzdxCRBamS0JYiEn
 Wy/WrMwznSfGC3QlOkQgQcAUdhGyCl3oTjmYnJWbIYcMppemifbO/2rVdXHperlQ34zgmj4icsD
 qv2urXQDON5qmxkzNJdsALtZv4LK+g==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e4e574 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=8poMKPHdAAAA:8 a=e3cHK1UYxX7VBDkIoy0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=fyZPtLC9JlAwSkJ5-iUD:22
X-Proofpoint-GUID: VMdrkTC0ICYi4krAEQcz3fX5ZT0T1nwG
X-Proofpoint-ORIG-GUID: VMdrkTC0ICYi4krAEQcz3fX5ZT0T1nwG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/7/25 7:55 AM, Alexandre Messier via B4 Relay wrote:
> From: Alexandre Messier <alex@me.ssier.org>
> 
> Add support for the notification LEDs on the HTC One M8.
> 
> Two LEDs are available, one amber and one green.

Do they form a single notification led, or are they supposed
to act separately?

Konrad


