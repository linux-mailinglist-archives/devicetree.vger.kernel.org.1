Return-Path: <devicetree+bounces-269132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJoFFtdSoWkfsAQAu9opvQ
	(envelope-from <devicetree+bounces-269132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:16:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FFC1B4589
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:16:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C50FC305F503
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A50430DEB6;
	Fri, 27 Feb 2026 08:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mYB2L8gr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T5TLYL87"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8551F27FB1F
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772180129; cv=none; b=UA6TLsIzP3PdZTSGR/URvmdwpTp0UJyu0fot9uVr/1BK4PXXOAyAnxgEGRh7fusZR1abUpCkDe1BkJ0r1AZmx04rJx1SQaE9BZCN75Bn5pZBL/NZxSCzVVZkzkCBu3UQA/plve3WpIhqPIBNWS+I+rDQUGxrr9L0V28CLW0X+vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772180129; c=relaxed/simple;
	bh=0wY2wvK34Kz99cZ9WTMxbRGaNub0JhbkNlz1kAYRc5w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AgkE6jUv7OSxbQIQrWlD4U7P2ice9QH5m4BJdU2pLI2H5OihaoaOUQR0xfUUGlFzz9WV2thiKSE3X/9Y+rHzn/xD+jw1skaB1/ut8wmHeUhemDhfQKaQ4+bom4fMO9NiJL0JaNHQrlrNADZ818WsHk80zbO4oWL4ntKNk4kThuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mYB2L8gr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T5TLYL87; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R2Jxgm2982292
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:15:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hCOE+6k08NVIvU2/lrwmqv5U6ckXVUZLE4JKU3fnbhs=; b=mYB2L8grqptsSvhW
	z+T5yd7Jx3GFFwAEFIVTlbdPpyxkuUNhMsJGywvF/N2zrpYUbFIVCGDTou55qwqk
	hWD0xvhQY4/n+YDBC7c1lex6C+hL8KlnfNrOiH6IWCOXBvlGlxR4/6WWAkkpXyeh
	oS6bleU03MwAiHOequ4rtSAjYOfHPC9O3kvOqcctqA2m1/AQtpfvKMDFZM6Kwe9t
	kLXEodG0CRORKP0DD+PwKkCmfVaaiz2cZUN48x/U2aTZf4DdakXYn6vOzbNBvN3Z
	uEqQrLnzn5bafACF91y3x/7sEON4PxBTocLAGhwRdWLjFMx0Cnmi44lAX+5PXOL3
	JjpTyA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjk2v4amb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:15:25 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354c7a38429so1887392a91.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772180125; x=1772784925; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hCOE+6k08NVIvU2/lrwmqv5U6ckXVUZLE4JKU3fnbhs=;
        b=T5TLYL87TyDKkefvmfQiOe2BqsEoCVvX6Aem8K5SzkfTUSTUhIpa5KdCavPnkgj63H
         Nos3faDITzGTc2zVBHH9bYTe4iWA8QWe2W+RPdgNOZV24WfeV7RZl5HINZV6QnHs0qjq
         XcLgI6PgHY55sCZ2CgJLrurEgSDAMclEMebN2GUAUlsiafyB1RV0273fjgcgC8jxIak4
         qXhC4jIc2qo2CkY+mIXe4Qf0l3d2l/86myQz6hoRBOM0VL1pXwW9yxtvmOXW1Ny9Pf9h
         PDw0Rl7hvd+HcfY0ACNQAbZkOBu3A+/ZwpImTgx7AH6p32hgWclL+y/KoGUY4mihFqjf
         WRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772180125; x=1772784925;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hCOE+6k08NVIvU2/lrwmqv5U6ckXVUZLE4JKU3fnbhs=;
        b=XNE0zVM/RLNXobg+XwKGJHmT0ih3G6bqayBEE1zrFoEk0Wnuik4UOawdZGIfbTPos4
         QUhcRCJM7ZsSlgYqkmZK4IyuviFnRRqfedFGsbFljorBMUssVQvErQOKfmubSUIGW1xE
         MC8ot9pXip7bOORWPH3JQn0zutEuNorUXiaUYppo31whtqyTXZ5gGeUl8r9NT8bFSaFB
         ++WhagF+ZYYtCis4HngjYyHhb4t5SjH5i443Nh5FSrVBwnbk8JETEQgEOG5l5+rJZRpI
         SQPImm6eNd3/1wLaFJxMW0x/+gSq4LRZS/0DKbohHpL3drm7Q99NqhcrbLbY3QMiDR5V
         8jXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPuLVEjHPmb52xTf/uulW4zL7gw+2hVMKST4m6w8/9ut62bAWjETrOYgs9sHZOI0O/PRCPj5xfudYH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8ZqRNNjbVuU9o0SEeUJ1ojPuTbvF/l3C11Cw/zCo2V9UeFXHc
	t1sLOuwp3977z9Nfudk4AdksjGqaPZycxxm/EMh5hfw/eNeJdghGnPXRzx2iMCaG8M/bKiKPzC/
	hnKKiTcAxuZedVMx3ZAf9nHP1wlC7AC06AytLtnGiW0qy+0WaKTY/Bq2MZZKEg8Ve
X-Gm-Gg: ATEYQzzMscLBKR5tX4n6R16I/ANm9pIC1aW37bcTcZ6gQb7hkHe9JvR/Dth0QonW2qA
	OQ9jpqqaYTt0U4jnntZYmh+Uj63HK5k0yIj4EWo5IMNPvLootSlbAvRbJh3d9BjRI13y1+YIOQP
	QKrUOW6PFo4xnZC0budRe1viTUhRTsEVU6PcYul9diiiwrP9+n1O5KoHl8SoosKZuP3NjQSDo/t
	iIc2RDx41aMMGiV47aJ9Cki/EOLNqLmQcAqCPHeCuvfqAMK1sOI1qPRj9hJ7t+HnMmj4NxrP3nh
	97ASHoEkGAkzs5w4aEpdNHlp1TZi2aG8xhFEeXLVylCEBCPvvMM6dK79tU911kziuNTvtzAt8a9
	GDRn0a+yo9FR34mkrFBILRwMnpcsdHfkjUkONp/i/gmSe9szhNp3sEEJhuk/eClHvegd6zYfTNP
	NNwpBmIzOXjg==
X-Received: by 2002:a05:6a21:1bc4:b0:38e:95f9:8cc1 with SMTP id adf61e73a8af0-395c4601a3bmr1915952637.12.1772180125079;
        Fri, 27 Feb 2026 00:15:25 -0800 (PST)
X-Received: by 2002:a05:6a21:1bc4:b0:38e:95f9:8cc1 with SMTP id adf61e73a8af0-395c4601a3bmr1915913637.12.1772180124526;
        Fri, 27 Feb 2026 00:15:24 -0800 (PST)
Received: from [10.133.33.11] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6b940asm46244515ad.67.2026.02.27.00.15.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 00:15:24 -0800 (PST)
Message-ID: <38fc2905-aa89-4b9d-8ad0-c289642899f0@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 16:15:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-binding: document QCOM platforms for CTCU
 device
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mike Leach <mike.leach@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
 <20260204-enable-ctcu-and-etr-v3-1-0bb95c590ae1@oss.qualcomm.com>
 <20260205-hungry-kudu-of-maturity-aa0dbe@quoll>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20260205-hungry-kudu-of-maturity-aa0dbe@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: inbPDGf56kmW1xgYGjNUXHqdAOc-BoI3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA2OSBTYWx0ZWRfXwUqKpM7UDits
 RWviA7Qt3ZiCxBbUsdrz1413uq4oZt2K731QGu8nfXnRHuwq7qzjQcb14dqLOfGxSXqX+zBS46d
 gvxLqhRw93iOMWmh/ortBXLMHaZrHsY/SS69X4igkQvzN+laZwVZhUhqNfPMb3fi/GZXbCC+onu
 sLd0cfZcUfC1kFd8FXEh0EHDrq8O5g/6CE9Iulv+5rAxmrwehjRY8/HEHoOkA+1duVuXjMfVnzQ
 6UkI47NSk5pVoFevhmC3wevWljHiCvYujy0C/m1l+SiN5Q7YjueJAS54txpb2mDkQxqNc/bABVG
 ap6sESxiX4jXLbMp3uQ4nsS8Sl3JncNFx0rASyP0zIzatniG6nBA7Jeh8jSu5cdQMFJrVA0RjTL
 HvTLIlPQsl1AIC89tokdb6PINzk2HQlMdFIsBynezaa59tw7WhHpH8clLebsgQkUF3CnDaMxvYA
 zLZb2UJUG631ThlcoYw==
X-Authority-Analysis: v=2.4 cv=PO8COPqC c=1 sm=1 tr=0 ts=69a1529d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=tRX3X1fM6C1DGB9reTwA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: inbPDGf56kmW1xgYGjNUXHqdAOc-BoI3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269132-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C8FFC1B4589
X-Rspamd-Action: no action



On 2/5/2026 7:50 PM, Krzysztof Kozlowski wrote:
> On Wed, Feb 04, 2026 at 10:22:01AM +0800, Jie Gan wrote:
>> Document the platforms that fallback to using the qcom,sa8775p-ctcu
>> compatible for probing.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 4 ++++
>>   1 file changed, 4 insertions(+)
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>

Gentle reminder.

> Best regards,
> Krzysztof
> 




