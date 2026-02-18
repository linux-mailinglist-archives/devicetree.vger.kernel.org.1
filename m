Return-Path: <devicetree+bounces-266382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMgRNk2YlWk1SgIAu9opvQ
	(envelope-from <devicetree+bounces-266382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:45:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4E31559EA
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:45:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42ED2305E329
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2CAD2FF153;
	Wed, 18 Feb 2026 10:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sbf+xaUJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="an6Zdzox"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835CF2FFF8E
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771411438; cv=none; b=m1pQqb6QEDnXq6hcMlWZ3C1td15AzrqsrBPck9zm7L5SQd6K+LgsCnKESZ556nawS8+HSen1tN1DCPMAKw8EUrQVReF3L+CVY/CAiLv+ZlaNKPlynjwIt2Mwy1zPMptbo9K2E+1FH8LcjxqS7WmcmK/XfoaC3hcdTJO/PTAcjiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771411438; c=relaxed/simple;
	bh=CopvxxNkM7kjvRWwvpJ+sLt1fow2PoSRI0Gib27WbLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EB/iT2MAXVuBdy+ncYnal6mioe0SXUG8Usj20CEOfHbIhQPb7CPy6MHJTwsUyxYFfm0xgMPnHyAqemjNRRT4toqROwd0bq4djZzzKkttWQ+w8H4nwH4t6diGL0/UcT98hW+RM6Tww64wzl1ZiKXmvioGYf6wULJY1jdIXqUt5oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sbf+xaUJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=an6Zdzox; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IAeqxV420080
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:43:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GFHCDVeXqzSocek9Oamx0QPHuDAbcbIGztd1bhWXtT8=; b=Sbf+xaUJtmd1fRUw
	67fCGOb/HZtY3a7QVnMokgQCP6G3df//KLV/HpgQYNeG6ThPwJ6IXg4G5vQPXmfV
	BmwLE3IV/LCqXLHfXF6mIb5bqRv778hIQ3MOZnQSei+4LFdrqOdlme1KszEsCKMF
	zKQpqdSiNDYUuGwq6dn5XLxU55r2gjbD3jPYMl8NFbvNah8a99r+O+PahgrG0K43
	qgOXTdgPcN4bswkj+J52tXYtoZyjfdzf6KEz4LvmSeWBFQO0nenuivLu+rRx7qgI
	19AkxhqcE+TwqUBcIExSRsI1hRAQ9J+9NLEHnnh6NPB+5jVFMO7oLTn0yTOncWRm
	lhIpHA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd0k5hpah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:43:56 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8960257db65so39499576d6.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 02:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771411436; x=1772016236; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GFHCDVeXqzSocek9Oamx0QPHuDAbcbIGztd1bhWXtT8=;
        b=an6Zdzoxh8oztMdfTL4YOraj4IRVTGXStsQzL4Qi7R9Ig+NIBkTHSfzrk+iu2ki3+u
         TnviSWsRqFWck76MBsck3DoQ8ZgwWrBQMG7K5pRolFCyvHrHP4B5tyBN1O9DQtJD8d+L
         P9fpH4YQlacf0J9mYagL+T7xG1XV+rxFlafO8Tgy+xKwqgrLDumQQuPKQFjSdpHBvycQ
         1TLG17QLWgJ5emvdvma/8FJAYa44lyWqHRcnzz+VpJiqBmKhJRDHX+x3DowQbOjlYaS+
         YSI5kqvMjgcJjM2FMITgJfEY+pRISckQe0jHhwORxmT+u9KjyW4u4PuSthl4q5RUUDjJ
         9g+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771411436; x=1772016236;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GFHCDVeXqzSocek9Oamx0QPHuDAbcbIGztd1bhWXtT8=;
        b=YGHHTrXA5c7SXnaCXwTFBLKjKPyEYxc7/r0uQ6FniWztss5QrlNSOmNTuNTfxbB/hq
         r1mTBVruCgHUuDBK9Y/28aSsDv0g2B8K1L5/K8QB0KfUfUop3LdAVkOn+IkszOk8/mvy
         Iy4m2AJ0aeY7bmW4eccfbrV2suCbLyfJI4oONHmkI7DmAotXYSw90AI93vW/VXIhYKuh
         H1a9388YGiJhI4/zHw2ZphI92cOEQ55PzOnOe3W6XuGPeT0Z/iJnmEGoIotfuwGZ56Fn
         06UxxKfTcPhlEHkzRVUpeBFAlfmHmpAGsPimrw5oJHSZQqSmaC8A/frspNO/O77Ugmea
         bQ4g==
X-Forwarded-Encrypted: i=1; AJvYcCUpRX+Mn6JC92CIUjBLUe/blE0477EVqkZ6/0QOw26xqgvegxLP71Fb/vprdCwOuyFyEXs3kvrW2/qZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyk6gKcgq1cXfj/i/AaYhFska6CKKeMXpRiJUu+24W9Ox1GIMh
	Xa7vnActuPwK2re+g9s40IKm8psmFOE/PUsDRqazQ19LL652TaXvVXuuvjjd+OTk//rkDtG6JSb
	v2Xsx+7sMH+2B8Ee6wEo+OiOFlVMzm+WLaqkSd0ldO2d3mEIm9eW5nAg/XR+ig35I
X-Gm-Gg: AZuq6aIXCN5QLqNMOe0tKaEZACIwKBP6+KJs7/m5BgI4byzMzZ0XTQzSFFOnha+Teck
	bQkY7f4ImamyLXzh4KRPTH0mjiGhTyXKpQ0Dn9BZDFVBGydaRhWcdQ2HqUdJRunOWGK5xTJmHQ8
	vfovOp4jHGcZ2XreBqyzafiz/ir9HFFZ8Ks6FY33G0j4Fn+KCXkuOGNe8QRlf2rtHGb2ww3rPId
	vWQPhjOaxJyHqjl1TvEORLNt/aLNJWXgwLcmfKAEAM6IHTfEqZkb+iHR/nwekbx4D3SWB/xPPqw
	sAqb4LlVL8jIJDTZ8G3IxFiIw9MRPReJBETV/DAQ4Gel+2IUAUlNeU7kz6xbPqjwbzo0/8KOv9p
	AV23T9uKIY0YxlLzMhojF9ybEBmzvvzVtjtzrtA8YpBWVvCCaCz5/NpzsYpRpqjr6ZWg/0nH4H5
	kRYQQ=
X-Received: by 2002:a05:620a:1a19:b0:8b2:df32:b900 with SMTP id af79cd13be357-8cb408303c9mr1661995985a.4.1771411435908;
        Wed, 18 Feb 2026 02:43:55 -0800 (PST)
X-Received: by 2002:a05:620a:1a19:b0:8b2:df32:b900 with SMTP id af79cd13be357-8cb408303c9mr1661994385a.4.1771411435440;
        Wed, 18 Feb 2026 02:43:55 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735e579sm446421866b.9.2026.02.18.02.43.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 02:43:54 -0800 (PST)
Message-ID: <0ab7afc8-e821-432b-bcf7-6c18357326df@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 11:43:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for
 PCIe1
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
 <20260212-industrial-mezzanine-pcie-v3-2-1e152937a76a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260212-industrial-mezzanine-pcie-v3-2-1e152937a76a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JqX8bc4C c=1 sm=1 tr=0 ts=699597ec cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=FfkM9IfYcGvahPrPZG4A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: psnVUrtL9Sy-YJWDAnOsOXTympYBsuFP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA5NSBTYWx0ZWRfXwXsj1ne6teBt
 v/QeTL6xQAwxqV2s8V6Ok/2RbS+UycbRW+k/rx64InDQLKOdktE3ZMcWjcNvU0v3L69rgyB+a4v
 SK+75TBvGXw58DwF9Dr4FCtXGUmUYJVVrcIFqr6W2GQneleymxzqCZPP+oK3TXwmCp/YYTtKNhN
 WiyV96p8ZFkl+JxP3dTqVpA5iKPLUVJBgV9YZ+IRGufmyLKUlTk3bWSF/gkd3/P1nfEMUYcBSNr
 fqUVcdJS5JDQ3uiFFig6JtI70qgkSkrukBs5TmsZG8caNwi5akdIMMjezNUU5bMSDaqSlOnnSox
 1WCkk67hbrJYJBe6MTcehDxlT3Y56eAb1Cmgqv0/0apbV0c42vFM6rmp91cmXg9xCFCjAD1xGg8
 LGOJMC9/T416t4n5VPqZIQzBSkyXmptXszZOSegZUInZggWSEWIolqDb279x+Qy4sELiUKos6pr
 vY4tEOD4l9UgboRp3GQ==
X-Proofpoint-ORIG-GUID: psnVUrtL9Sy-YJWDAnOsOXTympYBsuFP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-266382-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3A4E31559EA
X-Rspamd-Action: no action

On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
> Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
> in cascade to the first TC9563 switch via the former's downstream port.
> 
> Two embedded Ethernet devices are present on one of the downstream
> ports of this second switch as well. All the ports present in the
> node represent the downstream ports and embedded endpoints.
> 
> The second TC9563 is powered up via the same LDO regulators as the first
> one, and these can be controlled via two GPIOs, which are already present
> as fixed regulators. This TC9563 can also be configured through I2C.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

