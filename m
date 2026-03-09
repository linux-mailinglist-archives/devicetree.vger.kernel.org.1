Return-Path: <devicetree+bounces-272925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIj+MxDDrmmRIgIAu9opvQ
	(envelope-from <devicetree+bounces-272925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:54:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BFE2393AE
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:54:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E24F3018743
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF5C332633;
	Mon,  9 Mar 2026 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jFTFkS4v";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V5CVdQ4I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A243BA24D
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773060623; cv=none; b=OS87/2mX2Kkp29yXvaDfhq+azh11YK3wNRrDH+o4bDQGeajQEa7pLvIijjzW+DDVpIq5TgL1st6MFqSnA77UQsczX31mxPV1kgipDT07vX0Sya3e1hp1sMqSvB99Q4Y8HwWE0E1obnF/1so7sKYW1Wj5bMgSDgDP4RGDiL9Pt0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773060623; c=relaxed/simple;
	bh=4jULtj9REnh5AmwKY5zTwWslZ8dxgKTzR+k6mD1vXAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RZXNorulTCd02oE5KazDcJ9WuS+GzTlySXx+nMjCCGLAi3jQ0SLs1EbOu52i2hKeFzmQLEKiOUPDgiEVtpjyH3xchYPc3ZgUpXRkRbnrMOCGP1nH6Q/GvqhoRlMP54Vohg0DwL46owE0q6pCZ0fac1iJFva7pzD1d/A4c4Hwgw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jFTFkS4v; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V5CVdQ4I; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6297dQMu2910558
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:50:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PJadw+jBAO48uJuNSV3hWYxV0ahs5+z2DeWDEr7t8Ho=; b=jFTFkS4vEM0vzqKN
	J+chGBygG3E/RHwNJ7eqFwJVZVrxOSodpQLS1mFM77AmK128gMC2kHqFsC750f0U
	+aCHVrge+Ow0bXYhbgTTVNSt0/TGroPrDRcEeKUY6jRKj+oyX9EWXWEhdpp2M26m
	0bMC4xs5EQMkzd3ZedE+57tPU08HKefriRajcs+A1AsmTuw+YgE1yqby1Kqwemvx
	J6Dh1GNZ9cYqIsUfPiAbziASJ1DB4ntTZap6OEMgs6g4Jstu7gMMe+5/qKJ68CX8
	tFaXoKUp6+d1NEmlItbd5vJ5W+2gNuYpdoFfFd2qlSPo/PA6Io/UwFdDxGuuOFbv
	72ImZA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crc83ddeh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:50:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd8e89d19bso34842785a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773060620; x=1773665420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PJadw+jBAO48uJuNSV3hWYxV0ahs5+z2DeWDEr7t8Ho=;
        b=V5CVdQ4IyjEMebEPYX/Owx51hsLtimMuJx3RSM410eQM+sTcn6VAYpYGzbJ1/vh6Eb
         FoIJg8I6YyGjTMc4kJV0fK/opX2Gwdr4oo4pxHzvBwId/vvO0g+qWKWUbdFADjlapBOD
         h3D9deKAaiwCqmJYq6/+v0jMBimVqXtlOuSBrik8LOmeNzSCP0mngRi/UGClIy9uFpxa
         0E/TsmFeGU+pF3t0tpekGFtJ3lcUWK3lEyJ0pKCzQWZbGaR8Pdz/8Pyx6CWM2E+XEtYk
         S3c/3u/h/HU7iBSDC4550uoh6QD86c3hLhpdv4hgjJ2fGMHLJvyKY5um9aOHEhHLqevJ
         RCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773060620; x=1773665420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PJadw+jBAO48uJuNSV3hWYxV0ahs5+z2DeWDEr7t8Ho=;
        b=VD49DxTtM8BjF2+G4RACjDIVQS4OfCxO6r9dy8VHx/oPeoNyMXXPQjCknC9Z/qzI/i
         f9vcNBqba24j+Jj/wFFf/vMQDUoMQscnoraDN3dovqyOWC6VdXDdx3URjo14MRfl8lkY
         o/fqCRQiOBJDF1cXQA8rvirIAM0IxEmlmSc39C3/zMyzwuu/8Y8X314WU2j8ekSFyGpE
         Ys7lJzb4DQdMwf5LfV8lCwneMq2gxJJ50SZFqwF/P2pePFKirOufrX9fndKEcRlV3HoH
         /HCs3lMIj8usEaMoUUwzPwpJdx4iqfrSPHWwTGCmn/dShxwf14YYLzQI6666+t87ZxqT
         VClg==
X-Forwarded-Encrypted: i=1; AJvYcCXmOp6XzMflqrlT+hbh0jCr8vyHfIOBg45nvHq3juQaCImSig1EXberU9jNxE2Zte+E3VKWNoAxf+7D@vger.kernel.org
X-Gm-Message-State: AOJu0Yy979NNrWizdiloXt1bk8BwThj/hlb4m2GSJ+8qLeIi8GAQmGBy
	ZRJfSM4y9LNghKXgcXVPKnYTKbGoo8xqYzmJOrGdVUQff+H+LWcJmMTA5+XzOyKrVF/3SeUpEEY
	fxcGwPr8SMx5IirHtI4Jz2eWK9f3dirqCrJAw8bv2BT6IbYxEkQNY8mw2XKXoKtzi
X-Gm-Gg: ATEYQzyhy62h9q1dZP23P1HNils4ek3eufxV2hISZ4KElAjsDs/2Y9CLyC/H9jkd4Wj
	wBnmOl+FMHDqk2WppOqINYAsYZbL5ZRUWxAZRYkE4ypUImr85R6X8MqNL6E6Xzx3FbSrzA3FfWQ
	0dR/2/532oeyDETdHclmDl4vcpMj9zSaWRTmmJzxajCBiO7mi/idez0BBe9sQUussy4cjKe2dfl
	v888HAw4igM+aS2f2iZRpH0qcFm6LPbJeH8YercpYQ8qc1q/ffpWDe21BayM/jlceeRoG6L0+65
	YOt244cZbpWKXKjMrw87/AfAg8oGubWQ1JmV0hzE5WeVYQYZM4zAcoNsgqS+ZMX6ch0e+Vfo1Uq
	cii5of9msy/2Zsh+xZL0kHYpn0JnLpGPS66YyjUQ2cBWChzr06GyOZfdhuXiJM20k4ZoNNtYgqh
	OTyME=
X-Received: by 2002:a05:620a:6cc2:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cd6d350fa7mr1066739485a.3.1773060619618;
        Mon, 09 Mar 2026 05:50:19 -0700 (PDT)
X-Received: by 2002:a05:620a:6cc2:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cd6d350fa7mr1066736085a.3.1773060619163;
        Mon, 09 Mar 2026 05:50:19 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef42addsm375925666b.14.2026.03.09.05.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 05:50:18 -0700 (PDT)
Message-ID: <7b085eb9-972b-49a2-9b82-25b76fd9ba6f@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 13:50:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: arm: qcom: Add Redmi 4A
To: Krzysztof Kozlowski <krzk@kernel.org>,
        =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, phone-devel@vger.kernel.org
References: <20260305-riva-common-v1-0-436f1f4b7399@mainlining.org>
 <20260305-riva-common-v1-2-436f1f4b7399@mainlining.org>
 <e174b1ac-380a-41fc-a1c7-d522e8e75c70@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e174b1ac-380a-41fc-a1c7-d522e8e75c70@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=R9UO2NRX c=1 sm=1 tr=0 ts=69aec20c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=OuZLqq7tAAAA:8 a=9Zh9aq47Bl5YVDQUYeQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExNyBTYWx0ZWRfX7TOjs/2gXf48
 dMjmzFNGFiSglXTubYPaYsXPHhcy8TNICFdIvWyM2iu6Egu+iF583OGxlVlQ6mXlE6DqBU0U+uY
 OYJPq4deUGVwRbg6J4KN3798Uk8h7cyEISlN/B13cVApHT7OR0V5aJuHmEHNgfJQ+naGjW38lVG
 iF3e0HgQA1HXZBM+0NSN8HjTy4hJy7zuk5l9jdQn41d5I6ou/sC/BsxaueZyKxItxeXXZE27VMS
 LqCxcLjlp6kYyb4253DA9juUhLSNhZyojE5XFyl6EbjdqGFaBZis2P53PwDxY9H7JX1ZaT9zRAp
 sZk2QBS8dzpb42V6lKk5BB2mE5FxBpqvnyKAjlqPGNJcDnAtyFLJE2rhRV+L3blDFeaUyMqTyfy
 5Jk6ezyBLFVNoQsb1lbQbsIdAVcNdMYuJidXGZnsDI+kJRUN5g9sMoz7B84Y9bvvgWTECU3gv/g
 oZczxMZkeW7SMAgmEIg==
X-Proofpoint-ORIG-GUID: eXrHe-mK2DYN775JrkdQhQ4Ib6Vu2Zuc
X-Proofpoint-GUID: eXrHe-mK2DYN775JrkdQhQ4Ib6Vu2Zuc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090117
X-Rspamd-Queue-Id: 40BFE2393AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-272925-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mainlining.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.945];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 11:57 AM, Krzysztof Kozlowski wrote:
> On 05/03/2026 18:28, Barnabás Czémán wrote:
>> Add Redmi 4A (rolex).
>>
>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>> ---
> 
> Do not Cc linux@mainlining.org. It causes multiple bounces and is not
> even necessary. It's some distribution list only growing the CC list
> negatively affecting spam scores of sending patches.

Custom mailing lists are great for keeping track of patches within a
team or otherwise a group of people. They definitely shouldn't bounce
though.

Konrad

