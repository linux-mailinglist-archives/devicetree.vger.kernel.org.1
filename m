Return-Path: <devicetree+bounces-273966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKPTAJcysWm0rwIAu9opvQ
	(envelope-from <devicetree+bounces-273966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:15:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C5D2601AB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 934C1300D77A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15B53C6A42;
	Wed, 11 Mar 2026 09:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hNcu58fm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aneBZEaG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FB63C4566
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773220498; cv=none; b=hyXWVt075ZFInkIaZ+WWB8mCwCUcB22wjQK1Br5yTnBkFdtInofP8MNrbv/hHjVqPkWV//brkfGhKbbSzSJaaXf+7JXvtZmO1xyCDyjILpCHJxx9nub1a2GbCgiQ5cG/5fpbwT8ujW1LCGa6W3w0/DCAGuzRTIWxVc0SQAdTldg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773220498; c=relaxed/simple;
	bh=HU+C+P0O8jbGCZhY9O/WUb0qwktGd/zUZZfKwgYwewE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k6HhH+n1+pMCH3RZRmrxW4VgoUVqweSfiGw2x6WhAWwvl+yvNTPK0XMsxynN/FJzo75VFYf68ke8/a8iKsKokCXU8B69LGw2BFjw6C5HOBUitEIu54r0O1EBMVpKAboIl6X+VEdYyKfokd6WDJdtt79Gv0bwTaQAlFDXz3oQAmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hNcu58fm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aneBZEaG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B4jIrh3893001
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:14:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M1kE1FXsuTlVpdfgBDygRuHNKgg5kM5MBIa1mWYDfGw=; b=hNcu58fmdp48B7Lt
	GAqeW3V4O+0ohEkSHUnrqp1j14oVVmrA6a4UUBFjkXK3qDj2Pcj4p+tZqzRgmlfY
	NwuJQtsUdhW9EmI5NUVPcb9ue5UaajZLBc+X3YD4tW10nzkX1NxomRDdk924Z8/I
	4OBHlGtOA4oN31RBhHcoJgmuNTRh3HesBTnx6E573b6qsI0nCje5ilJwd7yGiku/
	gWZ7j0vfNC16wRWktjhQwQKlNscshiKiCyP0RFPyfFiI2TmF7KbA5QBS8WDXnAeN
	V/cJ75jWw7KKwJtvvTDiZ6D2xDfB/AVQvuGoZ84IVrAihINMoaXYqLxf9khdJc6D
	5+ax0A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctkmyv0bc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 09:14:46 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89a5b38affdso12403466d6.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773220486; x=1773825286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M1kE1FXsuTlVpdfgBDygRuHNKgg5kM5MBIa1mWYDfGw=;
        b=aneBZEaG4D23xRf2U7qRU70VmHmCIIOKhLnARKoWTXbIuLwQQvWUIlc7yw7dDrVHhB
         HnnrtakAMCTBsRQx8MHtyRdR9cFYg4m7Ur4ZFweUpYgoxQweRQj3vxaGFdyKdPHvi+Z4
         ndM0rIEHcs8zqbQrwqzj8xznYbCalN1UK79tbuU0xGJZ8XN/YWuavazB27/8a8QAi6Sb
         AMYezBKfXPczlprDYAAL7iCJkqgXL/x70EPGwYw5iUN/BpPmNIAy7HQuXsLZTPyMGC2F
         4EhGTdKa6evt97b/XB//f8qWoXECQKBLHFw4140QmTHniueyMpu1MwMY5itFyBJm2IOn
         gl+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773220486; x=1773825286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M1kE1FXsuTlVpdfgBDygRuHNKgg5kM5MBIa1mWYDfGw=;
        b=tb4Q+JTERqIvY/9LowK8aCfcW1d+lmb0iF7boNxqWN7tF/+tZJpSFmpprMegXiKUYh
         hfr+a6EwjjrirURzD8808Bqb7KE7InTigRky0AfA/FtMdGRP+cijA5NdVTCnREDRJxaD
         /eM/HHRRSSnQSENRZ1apB5RQ6S+gQ3XsFtBgAOAvXnsD4L9Hu3DXSzRt5vqa0GzZWjc9
         PHOKm69Ts1TVeNVmGzHkDF/jawbC5sfWckfXub21aNkbCwvp9uR/tMj/VElqxSfzbNfV
         X7oUzEWPbrTM9sQhk2gl+tdYwBXpt000qLwupm/+Pnv58OcBOzY/bimzJyzBHwGqKm3+
         eIuw==
X-Forwarded-Encrypted: i=1; AJvYcCWAJWPGqyjQKcZ2QbumOBrLwPliSRoa0scC0EGsRG58qd+sBSZ4EEkD3GfeQhhKCw9TGGQoelc7L7Qx@vger.kernel.org
X-Gm-Message-State: AOJu0YzIGMQQ1d9ZFRSAo4wJ1y1ZkiyqpBpcEm6SgpzQ6mhShkQWs57w
	nrFjTzbfKskXGDcdXihus+UN7x8cSBeQy3Id4EycFWpaxk/1AWVUQHLugSmIcnB82K7xJewSbRh
	zrA4t2u3PBahYUkAaHX4YxrOWock1Se4zYtm1AM57IIPKlY9SchyiyD4zUwYi2UcA
X-Gm-Gg: ATEYQzzl4iCqVMNW/LZzS1pzUr7lOXamTQk3u42ocSRQkT5nyPkV/BqUf6hsBMmJCYp
	p+BhsSPhZHARxjZB8vZr0S8XIAZssNmiLRt6eDxZFtXBZ8TC7ruOwvC1VVxmG5mH0CjnEiD15R/
	t5RisqM2Ls3A4KTar8qSZwP3FeDP1Wme80uhKD4j7Rc64qTmIDgpCZ0MA+joy64S0oU8KV/Y/U0
	cOB/KsfQVdRV3NPZknzZSAkeF4Faxg1t9BZ5YQXfu0/rBPGzpD+/9OLURLguSHIqWqNwUETqKp8
	AMadCJwDgolk7TDtvOsVCtZgto4lb9ymb4wL6xIX0FPg4FxWWsn/3RL9SfAayi4jWxt33ZScNfv
	V1nhMabYGgWatoxZK1J8Zej2tKUhxvAF8LjB0jdegSVpxZqxIpbSyv7o7i0el8LGDmLouBy4Odc
	tfTJs=
X-Received: by 2002:a05:6214:601c:b0:89a:53f8:2df0 with SMTP id 6a1803df08f44-89a66adadb0mr14515056d6.5.1773220485931;
        Wed, 11 Mar 2026 02:14:45 -0700 (PDT)
X-Received: by 2002:a05:6214:601c:b0:89a:53f8:2df0 with SMTP id 6a1803df08f44-89a66adadb0mr14514846d6.5.1773220485414;
        Wed, 11 Mar 2026 02:14:45 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97359236easm14315666b.65.2026.03.11.02.14.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 02:14:44 -0700 (PDT)
Message-ID: <f66b7818-a5b0-470f-90c1-8b5d353bb94e@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 10:14:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] arm64: dts: qcom: msm8917-xiaomi-riva: Fix
 board-id for all bootloader
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260310-riva-common-v2-0-3bfc23996857@mainlining.org>
 <20260310-riva-common-v2-1-3bfc23996857@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-riva-common-v2-1-3bfc23996857@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RYudyltv c=1 sm=1 tr=0 ts=69b13286 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=-Zrnz3ZjQlaq5mEAGuQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: VrWMIyfngSciqi2PqgZsYD0uqKsUuZmm
X-Proofpoint-ORIG-GUID: VrWMIyfngSciqi2PqgZsYD0uqKsUuZmm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDA3NyBTYWx0ZWRfX6hpfKqsEqvdx
 mvHGemKqs67viu7nExFkuSwJRPI4GNoqK0s/fJE0hFoIVovkVdQhgRbC5AdUHt0sX0/M+u0H6b7
 TjMIoPvIOR51zOljwvYMUOt3v71hohcVWbYVaOvKaEMJQ4KqMKC3Jnbt8y9i6lmdBQdeNYgZdQf
 uwoLSw1oyV/BhBQd3Hgzl/ghGcdGGVDNuK7+N5XLI7uZP5UHiALT/GBAhyujQabLvaw/RvVhEPZ
 jC7DTdBozmmo7AsQWlv2nD0ZGu3a8AY2cvdULn1KaznXCH8PxSDzFlXo9Uk9m7FBeJ8p4tNWGB5
 X+ct2PhytXVYbyIycwOuLsaEvUKhzDxo9P2+jA66H4rKGjayrqwx2W7qIotyMTVwLK/QtuaFqAw
 T53QLCuiWPOL/+jA9Mv3hY0HkH1LPjwXgV5iiWq6coJpO5Vs5+6QxHMbmji1EIbjQgQpiUFgSn0
 P54AsEpENuCQij/gYzQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110077
X-Rspamd-Queue-Id: 98C5D2601AB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.12 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.54)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mainlining.org:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273966-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 6:21 PM, Barnabás Czémán wrote:
> Redmi 5A comes with multiple bootloader versions where the expected
> board-id is different.
> Change the board-id to unified form what works on both bootloader
> version.
> 
> Fixes: 26633b582056 ("arm64: dts: qcom: Add Xiaomi Redmi 5A")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

