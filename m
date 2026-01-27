Return-Path: <devicetree+bounces-259839-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OC3LGoaieGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259839-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:33:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9990193A23
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:33:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 382BB3004CA2
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B48E346FC3;
	Tue, 27 Jan 2026 11:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yt2Rq4KF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JqWV/qg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903C0346AD6
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769513600; cv=none; b=GIoaVUC4rUweXCYRUJOSZyn02hzO+GVX2GpT6WWR/jmUrOC4gBUZvCVyhEUR3LK5fMcwJP+Ln//1CxGE4tYlgOEXq44552nij3gtYYiB9HvuM48A4Jvbo1vMkVhh4B0b8uWASq+aJBvwCmbChzH698kaPJILMjtycwcMr/jhWkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769513600; c=relaxed/simple;
	bh=wA+LLjAn/JqZmxJSfDsa0fsJhBB1aHPQMAUOiZx0Nrk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XoJ6gEZrGhZnEcAYMGSVbNtbfOxXR0gPJvvxvIICL9/pjGo5up5VZRZXOcSQJCJ6MTfRqm3NzRgGxj8PGNFum1PHsXyhpX0a1aU8FZuD5pQO77/jG49aSwRobqrxWms1wW+/Waa1mQ16CTwb9cNb7ZjAUYseGs+tT5hSR4GV6oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yt2Rq4KF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JqWV/qg1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA2oFS3857584
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:33:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t5UFrsJlmEMjhkirRlXooFxQ2NogXuA5MgfcqF/u9Bo=; b=Yt2Rq4KFtBMupUop
	Jk1bY3pffgoDQE+lZrLaqy+wJqj6lOzBFht/sr8/2LkEdiNtFqswsD5JweF5ZPFr
	1VL0jS1FWvwG9kj4EDY0Qx9clQU6gCyFxVJnYM17A3QHjx7r0KUErnCDBWI6GAYR
	xorCJEbuw2GrNowm619EBF7bLNfsqEXvtnmyikyjUWNu2/NW2RGSy+ZA3U0G7zg5
	b8WC9WxuoQj4B1LQ+PzB0yKI6pPm7saSVVq93RQ3Qb2RLozxkLgAbvzMx2F2DlrX
	/Jh1X6+Lxb3/yCoTDGGEUsdisn9ayuOEWsF29IDmE9xEXHU3PKbLt423IMsOdwAg
	2k1GNA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxffs2gg0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:33:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6d6b0f193so118987085a.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769513598; x=1770118398; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t5UFrsJlmEMjhkirRlXooFxQ2NogXuA5MgfcqF/u9Bo=;
        b=JqWV/qg11eFjb/IIvzIGYGEc7m9ZqTPzpw6ZJKQ4Vjocb5hq60WYhK6alKjL2qWRak
         0IIiu19W5haKhL0RYqMujVeE67XusL3bOfjCzpxMfSC7OFWdn9IF2RO9Wkhl733IifUg
         nR6FpiETbOyiYL1c2yaqtvZlR9Yn29xMNK+7bNTLwoNTGshvH5bO6+MBz8OHw2YqCup7
         F46ABKYmofNSTj3So0pxB0FzcWTnU9du6GWCTnMapM3P/u6o2QzZDMT0D9zg3sMYt3hJ
         0aEG9ov1iPscTvE1GqPZr1fvYjxB+FcEZfUcQyTCkR4L982FBpNfv8Jx9lHu0DynaFd1
         oc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769513598; x=1770118398;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t5UFrsJlmEMjhkirRlXooFxQ2NogXuA5MgfcqF/u9Bo=;
        b=rJwTTS50U+4aI4hTGF20UjI+6DFB4R2AuMqeV6TchL16ICajYxYvKAEj1l3xIY9PAv
         fv9COA9fBqd6zBSzdnsIuRyzl/70dS4RouzSGmZslbHAg8WPGPvNai+jT7NGgjY9GEFn
         aeRciohWgbAZunVmLklCOGZiDE74uBtWDgXVC/mwXMU0cqasca4ULevqgvF/OOLvy96N
         x1gMAGH+ZgPetC8Rkgr/L6VNrAMw+atGxzINGT4Ifu4OakqpcdoL/eJncv5GZo0go4OV
         331ZUwFZAUM+odmdG7XfL1kchw11cvtUpDICT+4mj2JY6lTT6SB5fvxDuKWXR6bL+e7M
         MSbw==
X-Forwarded-Encrypted: i=1; AJvYcCX8tuGjDQKYsHS8HtNKruWC5jL1atFVZHMDupC1gaxYewNN7aZAqsLsflwkSrxLOFSdzkwWGrIfEfb8@vger.kernel.org
X-Gm-Message-State: AOJu0YzrnlbsRwMHIsMugzZks4kzh3jPdXsaJTp+tLsDSX2jiFHCekW0
	VvJjWLssrI7ND+It8G+by1YpQ0xUbao6trguHaRUMBodW6w9HuTe//1jCx10VzKJhV5g8oTm9uE
	XR18czjm0DzmhARXKp65gz9HNcRO1Zu4jcyJeZ9MsEdAjr7U3zHQ5u5rnWa5G3MNV
X-Gm-Gg: AZuq6aJH+kvjDpvgI5DvTAbZcoSGHPBjrfaMhziZCJdbZ6Mku17i8a4gpUjKDRdbjPk
	/5E6U1rcZa3anOIzMB/qWidJt/iDS3muRVtueWs3SjwRTZi0FKqjx59juHn8HHFlU2cVsBkgqob
	6p75p5pCIcTESDBF+0eqnNUt5C+gLN/n15y7E6y5cGeHEHrtwtASiyL7t2akCOC73bzIG6b72s2
	7m6EbCdlVP9n6CQN1ACkrXF/8unauivPF4BVKvooqIubPImYkbigEtanjYceZHmKysizrPjg04A
	4oWXppDB+8scP+PGJxRG7OqSAm9LQhp79td1yO/2R92K2VoejhA8j0NX+gOL3PS6G+SErNHVmEE
	OZZjgj9uhKj7ms61cAiQhWsrS9pA3DCIvinfRe7tip5MjSFBvZYHlH+XfnrH02Vc9GqA=
X-Received: by 2002:a05:620a:7014:b0:8a2:568c:a88b with SMTP id af79cd13be357-8c70b939a85mr113301885a.11.1769513597867;
        Tue, 27 Jan 2026 03:33:17 -0800 (PST)
X-Received: by 2002:a05:620a:7014:b0:8a2:568c:a88b with SMTP id af79cd13be357-8c70b939a85mr113298885a.11.1769513597347;
        Tue, 27 Jan 2026 03:33:17 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8af61bf723sm576003266b.8.2026.01.27.03.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:33:16 -0800 (PST)
Message-ID: <be8dc80a-7943-4a2d-af98-6337059986a9@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:33:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: interconnect: document the RPMh
 Network-On-Chip interconnect in Mahua SoC
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
References: <20260127-mahua_icc-v2-0-f0d8ddf7afca@oss.qualcomm.com>
 <20260127-mahua_icc-v2-1-f0d8ddf7afca@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-mahua_icc-v2-1-f0d8ddf7afca@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0cY4uNr3oD10_-xhAWdi4_lhU2ein-AU
X-Authority-Analysis: v=2.4 cv=YpcChoYX c=1 sm=1 tr=0 ts=6978a27e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rt5WFD0YkmQnycq5PrwA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 0cY4uNr3oD10_-xhAWdi4_lhU2ein-AU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NCBTYWx0ZWRfX/G4iOfVkMXEe
 3OYlUIr0khOxQTsO9f15daWkf3jE7rQpFbykdxoVW0fxjbFUSrCjAq3Bv4SktMMeg9CWDxUkAP3
 w5nfMm1WUzG4pbJwo+KHjjKrKc8tr6ol2fPCj5ODFcJiaV1BVh77zIGmArd+3xaH4+GZCj76ZvV
 +60znEeAFzQs4is5ltISTxzZl2qZxRjCM2V7RIHzlCocFxR4AyHjWMBUjlUZRrJqDSeggKfvNnZ
 R2U30/RpcnvLy7Som043uBC5LIdBcFzKottDqX23TOOJSSnqMg04hh/eZ4K7E82aHPIeD+A931a
 cIgNOg4g8GITjdnnKgXgB6UITq/ORGzTPdv/n0ZkI/L82cj6RJUIWlZJUQ9BBHMLSVlxMQhBt5g
 mmtAM3U9QtI+2RXOztZdgGtTSpGd5d+T6nOGkjPiSUb2ZuVhP/u/7jDzDqkkBaMFAzAZTtDf0iY
 koua5dYs21MyEAIchOQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259839-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9990193A23
X-Rspamd-Action: no action

On 1/27/26 4:22 AM, Raviteja Laggyshetty wrote:
> Document the RPMh Network-on-Chip (NoC) interconnect for the Qualcomm
> Mahua platform.
> 
> Mahua is a derivative of the Glymur SoC. Many interconnect nodes are
> identical and continue to use Glymur fallback compatibles. Mahua
> introduces SoC-specific configurations and topologies for several
> NoC blocks, including CNOC, HSCNOC, PCIe West ANoC/Slave NoCs.
> This updates the existing Glymur yaml schema to include Mahua-specific
> compatible strings, using two-cell "fallback" compatibles wherever
> the hardware is identical with Glymur.
> 
> Co-developed-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

