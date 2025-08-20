Return-Path: <devicetree+bounces-206678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0497B2D40A
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FA157A5C60
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 06:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04C16277C9A;
	Wed, 20 Aug 2025 06:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XCFGBTN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8325D2BB1D
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755671257; cv=none; b=MkhsrOiOD/lcwk8HR5fboKps6K2RAxB9ZWgXvHsfwd5RZMzJ1BqLmfLRCpc5EGuyNW7k6l5s0PhC+5JSapeJJ33gHWefVCGckWPOTTwiZtSyFh05+rgJTuktagtHgl00EQkj2HWD/n0jaSKXeYU/cBGat0vxD4cPBj+H9OYWGsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755671257; c=relaxed/simple;
	bh=yutoOPb0rYP498lWLs9Scfp2OW0gi41bzD2TFy+eBjA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Py+Vx/YS8MDGk0YRkAfEWccOG+QaLxINMH1t0h1qQNQwPEv+7L1EV/InC2gKNkozk1gJnECsnVkJePeF/Y3YWcXke8+ShbyEq31gq2w0sv7U39pxZQFBkkEgSndXKejqWmWzDQN5jAV3EYFJi+k29sYm5qYeCayjRd2XQvrX1rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XCFGBTN2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1onpq002700
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:27:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0YWM5S4dm7vSz3gmoQTVjUJYFT5kv0kabSHfWarxYxM=; b=XCFGBTN23/Vp6ulk
	cA1/eLv7ZLhSywt+Wb89npC+Wr4qQopzFDxh3SWtGIyBXbX9mE780j3emx34FDD2
	7An1K03U+tRmtCtL/shMlVDdgzWHaomLSwsYBMXpgulk5MFSVcFl9KMss+eU0bHF
	y52Zda7qOO0Jjzft7aMR/2FXw93epdhrl4b7jxH8b9OV2PrNXFD6mFRfq17snyx4
	7kErxl79pwoE89eiIHhbdCqqUtYtWwbSVzpPTqWLRZi5wfDhm0FbvcrLoX9QiZrl
	tKOn2mpsoA6ScYJ92Xqe6L02NcziB8WicwJvfWAD5bzylnLikpQvhgpY5jfNrB3U
	wcuzKA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528rmnq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:27:35 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2eb787f2so6114096b3a.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 23:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755671254; x=1756276054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0YWM5S4dm7vSz3gmoQTVjUJYFT5kv0kabSHfWarxYxM=;
        b=xUzdd8y6sl4WmHrVOjjlJJxaX1IoFM4WLOslpd/jK8xh9WuqePS/L/2nB3JMrnBeHM
         /DR9HHh/X7YA+54vifNLWgUTfLurvT18g5EWJ2Wbp6q7LF+U+rFt/DjbvRFntAiHZnbR
         yCrUp1ISymzFKgsWGCKEjKJRtIpYp0H6gG0XByZBDXBjHLqOhUJD0mD0c0Zr3nxu1kcD
         gaFDWzwMSv8sVFBsE62umfl0FAHD3uukdOzi4yPz/UtQkdXh1wd22sLhH+gVyJz0Fwc7
         i/Lo83UvJwuDVHX4jj8lT1DKi9pvNmt+cX9kCPvy9IDLeB6/fa8xyCtbsmlVQEM3EGv3
         4SEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVES1ICcyK//UmtUVP9XhZazs+tIqfo/pKzVQpMHujSOzWtOpp1FMPKGOytLBgnW0Ka6Av/k3BnFwc@vger.kernel.org
X-Gm-Message-State: AOJu0YxLumBB4Cmn6qSrEE8m/7l9HCsn+0tlbhwQ/anpfupLQ1ADqL2W
	ve7RGLMRRwahflx4UL1JzZugyFAhsffkH69XbB0IiBUL9sEQvRIGlBbNYGjHGqsgxZbACwkXC2r
	1atM/DMut+uUzAXber9D8CA9UHpssqT/wVzLVt+BIyN1q32hG4/iGWTq2qLD5ypdw
X-Gm-Gg: ASbGncvqoe8KycMjkHc6n5jIh096WS8yNMabIcYav5lk5yZ6vCFYe8QCMnv/FTrx7/9
	EE6wDk/eEz2YF1TPXHm9zfxjbGd9QfqGYjystMccU7h/gw1SWrVzy6PYcMzyZjzMSjZ6dvNet4F
	CrXl3dRrrVBKGT07Kw/eCT2phrSKPAHnk8LEsB765USOhEAhlJlZuVzeQQulEfwRCLN5JidKgV9
	j9SByp/1gXVFV2WfW4qUq2NX2INFOawkuAGhlrfgXmTWGQnZdm6fvCIfQ1ufSH6sfOC2h120O+d
	t2Rl9iY3GGf9doka3jsQaFT6Pnurdd9RdFEfwtWU+TyKovLRyhwNlQHlSoeNpn4YqE/w6rHLEZp
	krRC4ruWQtpvyFnWPDyevDWWe6UxKwWrA
X-Received: by 2002:a05:6a00:17a5:b0:76e:885a:c344 with SMTP id d2e1a72fcca58-76e8dd4cb80mr2579622b3a.26.1755671254266;
        Tue, 19 Aug 2025 23:27:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmS791N0ixCzI5dRAxbIiWf0iE1fLD86Phx2bw91vneJ+muUr6Yon5CmZn6QVf8jfjkBKoJg==
X-Received: by 2002:a05:6a00:17a5:b0:76e:885a:c344 with SMTP id d2e1a72fcca58-76e8dd4cb80mr2579594b3a.26.1755671253812;
        Tue, 19 Aug 2025 23:27:33 -0700 (PDT)
Received: from [10.133.33.73] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4fa868sm4294504b3a.64.2025.08.19.23.27.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 23:27:33 -0700 (PDT)
Message-ID: <baa85e52-f275-4d29-b3a9-2880664434f9@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 14:27:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] coresight-tnoc: Add support for Interconnect TNOC
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com>
 <aba6bf1d-5974-4003-9ae2-62033ddf87c5@kernel.org>
Content-Language: en-US
From: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
In-Reply-To: <aba6bf1d-5974-4003-9ae2-62033ddf87c5@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a56ad7 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=T5-8DVSjhCRqEL8X1fcA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: q5WLg_YkbXOoRNWyOMBOP6rgrX-buR4B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXxptENk/HzrYX
 jPb4DyCvinqe0chzImF2iB5JKmriXh8WraoaPAyuERx3Ev97rZJZDkOYjIyccY1yiITS8XuXqwB
 O/JdzggkND7dkFBi0KRetMaj9PFRUQg7xcCn7jVs4RR5kuredBH32S4Cq6izfgFRq3DhhrSSQs5
 dMdnlJevEVWdFWmKwliEuUtrNl45ABKGDi7yjK0hgFus6SUc+fNO/ND0ii9xLCG5rE3LS/NqrSe
 47ymfePkcia3wVAFXnuuKPoFyzHzE+wjrbfd39sE5TgD0xxBqNnHon6qI5sMl0CmsWUDcaNMG52
 c11DOw3ct/EqbeyxitbCNCFrdppZrD7J/9AnYjUx+dNjvOU0/QIHf3dc29q13ntBIoDx/Dm7vqB
 +sM/CjwKu9FtWp8MFTSqr+3n/6wtxg==
X-Proofpoint-ORIG-GUID: q5WLg_YkbXOoRNWyOMBOP6rgrX-buR4B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013



On 8/19/2025 7:30 PM, Krzysztof Kozlowski wrote:
> On 19/08/2025 12:27, Yuanfang Zhang wrote:
>> This patch series adds support for the Qualcomm CoreSight Interconnect TNOC
>> (Trace Network On Chip) block, which acts as a CoreSight graph link forwarding
>> trace data from subsystems to the Aggregator TNOC. Unlike the Aggregator TNOC,
>> this block does not support aggregation or ATID assignment.
>>
>> Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
>> ---
>> Changes in v2:
>> - Refactor the dt-binding file.
> 
> Everything is rafactor. What changed specifically?
> 
> Or you just ignored prevous feedback and did other changes?
> 
The feedback has not been ignored, i will update the detail in next patch.
> 
> 
> Best regards,
> Krzysztof


