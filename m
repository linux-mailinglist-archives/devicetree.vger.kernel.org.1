Return-Path: <devicetree+bounces-319316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CZ57H7NFRmoLNgsAu9opvQ
	(envelope-from <devicetree+bounces-319316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 13:04:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CF46F6615
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 13:04:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=njFg64kP;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=azeM8BV+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319316-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319316-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D6393029B04
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E853CBE6B;
	Thu,  2 Jul 2026 10:57:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6B23C769B
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 10:57:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782989836; cv=none; b=btlL7KaswAuaZYjKxMYVuzoltZ736d7d5Sgn1tEDuRekR1cog2Hh8os8JBXQ/Yn47pyGm2lXHS7kTjRq1WfnJuoRy7CxRGepQECVMZbYIYvHnigUVZJnGReGKcFOQFiDii5Pju5sh9m0NaWKrelOlfZbjcTbX1wU7C7vZ5/qswA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782989836; c=relaxed/simple;
	bh=Ez+V8uwq4c/i2Dw+5MR5FhJDBOScJ2oEbEe6gRFruS0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b6kJvQcKNjT7jErmlkxbFuFNC0Kcfxlentg+uUQ2A7xkBuqoJ9soWqt3I2lffVL9Jo/LB1DxyV5St8QBmcwkRN3juwanE4xevzc6BbMVQli7ChiV8D0xddfX//MaS2viVyf9JRjzA7q7nPUglIwnrfmgBWUOCpZqocU/WCOPTwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=njFg64kP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=azeM8BV+; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6624llsh3485895
	for <devicetree@vger.kernel.org>; Thu, 2 Jul 2026 10:57:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u0LvctxXJ/ux9qwDwJwKAbHaxE+w2/PZyxvI7B6d/BY=; b=njFg64kPugC+BVaW
	4eyYIHQCKr+nMWfQntCiodb5M6Aouz4PUuJl/G1hJuRymvbIBvMWaY3O0FlG5WeR
	gitbtwyOQQ7rYrlcQwLlU/6X/HhfVKdmkjkMA6oIfQbLfYA4DBiR1X2ddo+pVeKd
	vuhawQX8vDDu4OlrhZS9x4zaF3hSpQLFsFqUgEVu09Xl5yyN8yDMXO2RNyxJ8pSI
	liqIDkjiwRpJMhJ32KhmXdVQ6Hu68l5L9K91r3hzVjCWHsWtzs9TPKVz9hNd7HP7
	IH1Y1TN+I+4S9+ZwNG1HbfgqJrBp1RyO7qfmVf938FQSM/nIUTOE1Y1cvh+Q0xle
	eOu6Kg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5h98ha9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 10:57:14 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c1e777a15so3506691cf.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 03:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782989833; x=1783594633; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u0LvctxXJ/ux9qwDwJwKAbHaxE+w2/PZyxvI7B6d/BY=;
        b=azeM8BV+JeLn8Ho9UFfUt7DQoWqsXUGN/3UXSa8KA5PXmPFmBu5unIsUFkkQGQK97Y
         oj8tFRWoUU7VIQDsKiGgwr2YuB7n+kBRi7FqQoXmhRzQqU+cdoPLPMHV5vEgN2fPSqj0
         QNpeHPzMkzMyeehk4LeeWJ+0msmmb95dNipMQB8rAD3aUiU0MoqWKZgTD7VA6foraair
         /tHJR47b2EVUGeZpZkkBqFaMAcwIZLmDt8gnil+At7XnOq4uBk8YYwvt70OlPXgZIhoX
         SfAnN+SXmm34kw0374fQi59oNAx54RxfE3OPEbTiRPE/F+DGouQWqLZytDMUSIpv7YhS
         cTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782989833; x=1783594633;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=u0LvctxXJ/ux9qwDwJwKAbHaxE+w2/PZyxvI7B6d/BY=;
        b=q6GjhdGgrfvjG6ASwgqN07l08FqBKJMa9m0UxrLCsk3QHJgH5McyPaQV6ftuWArgAY
         lRSrsbsWai0AF/tXDnQuttZHg54/LN4/7katoXUCeC/AJ1a7Oqduh4g314dl42XSpMVz
         ctIJT+OS8WKVkx01Uy1LJbJ8xN/6TJidZxfTSplVETmZ36LVBvQCb06rNWbxIX/NWFcc
         uIr/Hhb8D+kkfgUDaZBetOwiWaa+hcn80Ca7GsL6UttV8qHwMlz6+WNT8Ar8nGlfr7Gu
         OuC/fOyVxqSPTvwJI9EV7Q9L+A3N004YIU4zCoP9y/ddUJZzpdjy2n7xbUMZuTleYdax
         6xVQ==
X-Forwarded-Encrypted: i=1; AFNElJ9Epb5TWexgQGx9dfTypyYJS3bmD4vx7s6coeHCYt0GJwbhmDdn2ZiDirXOK3Zb51c/K6K+KZ7Ad1O6@vger.kernel.org
X-Gm-Message-State: AOJu0YyPfUVUx6BPM3S+OJACS3sBSAmYZ/MjOWa3x3GahF5W0qZN+LHR
	jXYpbTHRVUTSiGhiUC94eyTOAHogmHa5C6kZn7fIVgpy3AHfi1OrCktdgwHuGMaBnUMLKze/z8Y
	WZGOjGmWGivWu4azzl0jmLj0nFVnrJomCGoBz6l8udUw/xtDmu910qsEXLWGN/S6p
X-Gm-Gg: AfdE7cnsXvrX+VneDMVpSxbUnsMnf+/THFrIaRNEiywhjRruIlDwnGRaVIsehJDc25a
	O4J3vlLuhP2840sWT/rGYPYzH/f0PdfO3wNEupbGRVHnR4xirIUefB9ba6hVQVQhkkZG2yKMlJL
	jnlR03+8OM2bazKYAwdjiq+bxlG3S31gKV13Px8njw2WTSTkehJY/n3pryOgRIzJNnwgEaFP/lC
	4uFTjzkUBQ53wA9gyFnYNIQErIxyjTOaBnpwDT1n8gF+WD7RwzcNyOkUtD7vzz7YRH8VTBUzVHh
	BS8yJQWz65BxUJj+ElLUgysYJn2UUkRBKmzpiP/BFmRZk4rsQNzuxrE5Z6qfvvUe7F7DR3g3HZB
	u6eLvjtQTo0F+m9Fv3afQgAm+DcYMR/GMihk=
X-Received: by 2002:a05:622a:487:b0:51c:4fd:9a1f with SMTP id d75a77b69052e-51c268fabd0mr41784131cf.0.1782989833570;
        Thu, 02 Jul 2026 03:57:13 -0700 (PDT)
X-Received: by 2002:a05:622a:487:b0:51c:4fd:9a1f with SMTP id d75a77b69052e-51c268fabd0mr41784091cf.0.1782989833236;
        Thu, 02 Jul 2026 03:57:13 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b628d632sm110467266b.31.2026.07.02.03.57.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 03:57:12 -0700 (PDT)
Message-ID: <ab3d2bbf-2b20-43d9-b940-757450c82ae2@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 12:57:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 09/11] arm64: dts: qcom: shikra: add WiFi node support
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260702-shikra-dt-m1-v5-0-f911ac92720c@oss.qualcomm.com>
 <20260702-shikra-dt-m1-v5-9-f911ac92720c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260702-shikra-dt-m1-v5-9-f911ac92720c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OO1z0krlY4n4VwazVAIm_tz6AN6dYAlf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDExMyBTYWx0ZWRfX8qpJ5l8/F/+r
 /O59Zl+8BMwa1ayCbnaDN7OJ8HlkiBI6W2XqRKI0/bphX2FdxVM3FTKrkZtBUgupkQR9PMR2wRg
 m9I6xgsX639oOOcgwd6wpC/ZK9hoHFSaxnslcCj0G8WFbm0M9tbzR4wLgh+Ibyy7F8oNWA4b4N3
 UCzjDt/o3YS7Q3aOIW2QqrhTYHmLkEJ8qzcga6LuEHCrRa7YWKlVJFgY/JKuYuXunPFzzsrHhOj
 lr0KNWJUzpx+eZhUCeSGlyJdP09iTH1Lt2QbICwgNe18N1paty1adly9JX9saWuVvOQobV7ncCY
 OI1cUjxJoIPaAyhtsXkE0PQNPi5XcsodWlPwN7U4Hgm0yr3IatFJBSDJGFLqqGBSXWz6Ah4Z3Dd
 i1WZ35SoSbzX/avIiq/YTgTH2IANUgSyA0+T+3vYoCwIKJhYk498UNg8Ilq51ZgrNK8v6EJPBC2
 RoFovGvHX1pDzPhaj1A==
X-Proofpoint-GUID: OO1z0krlY4n4VwazVAIm_tz6AN6dYAlf
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDExMyBTYWx0ZWRfXwo+E9Z6XgxfR
 ikcw8p+qgonVmqb2R4Y46WN8JTicZoZAxMZTa27d9yW+Rk5UETY23nmCDL4QG2sT8+nQFmdqo5f
 BC2oqggLv6HBPuHUKVNMXlTY5HN/W6g=
X-Authority-Analysis: v=2.4 cv=bdFbluPB c=1 sm=1 tr=0 ts=6a46440a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=NKnFMAUvp7LoSZ-z84cA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020113
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319316-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:komal.bajaj@oss.qualcomm.com,m:vkoul@kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:djakov@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:dmaengine@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:miaoqing.pan@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19CF46F6615

On 7/2/26 11:50 AM, Komal Bajaj wrote:
> Introduce the WiFi hardware description in shikra.dtsi, including
> register space, interrupts, IOMMU configuration and reserved memory.
> The node is kept disabled by default and is intended to be enabled
> by board-specific device trees.
> 
> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

