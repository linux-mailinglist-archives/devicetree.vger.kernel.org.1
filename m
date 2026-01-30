Return-Path: <devicetree+bounces-261170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBJsGXqOfGkBNwIAu9opvQ
	(envelope-from <devicetree+bounces-261170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:56:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F47EB9A3F
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:56:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87EC33020D7B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE4773783D7;
	Fri, 30 Jan 2026 10:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZtLZNWd/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XCiDAYs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FEA353ED3
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769770482; cv=none; b=roSxpNFyaOFfZF5xLcXYSSMYb5UKV2f1bFJ8da+CP65DGtsxsb2GL8oJ7x0A8iKyQ7K8AK6QGpzn56v1H0yoSpEhszKg/6Mm92LOPHhPpNhcv38mlgVNywW1VdAc5sCzUJfLlSa32fWp7Vona7oPUQ7V9F2ynR8+s5zSrhcPnJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769770482; c=relaxed/simple;
	bh=PCe8tJ7yF4VHVITFtSjDrUP6K63qWbDFwh0bj1Ud9XM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uMhYoTSije+t87QVmefa+80jSHZkm5wUnODVsthyGV2waau1CYveqJtORMfR56kwMENcROP7DEgMfQbBbIL7ep1K77hmSx05pcVBujrWm1+yD1d9egcTgXdsiBgk0mHTq8U7dhWSsHYtW2B5hiBh1UxDNyKfRbC7HeOFNVFVaDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZtLZNWd/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XCiDAYs3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UAnMZA2992828
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:54:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sMRtrpDtWcNjOBWLvYdzHUoZEy92hrDdtrq45EcYQQw=; b=ZtLZNWd/34mGTcxS
	yZ5PiaV3qi3noR+/X1L+BhJNcozfHggx8WtahIv0YGYXLunQXjJ+FZctJc9+Bx8T
	14pzxWpLxfT26op4LoDtSv0qkLDomwxLkhnBEfQqJjk/c4bnnCse/1Mf3LZrfrD7
	XpTQ/get7RY/Juf24Q3QYnzSDLJupnMXJoGfJukighbGEvxl3xbZD9t9K2CQXLUy
	sJh2hy6VHlfXQ/OEWgA9zdVh+SchYaYgD8oKdOPAj/aTF8MMg9HnpRGF0wUMYxt2
	IsCzbAuDm+EQGg6znvnAvSAlBbNTWuDRWOYrjSOc8Vi1e1sWC+Afqfn0MO1h+Dc5
	0St/tQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0db1jh7p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:54:39 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88fd7ddba3fso1936416d6.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769770478; x=1770375278; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sMRtrpDtWcNjOBWLvYdzHUoZEy92hrDdtrq45EcYQQw=;
        b=XCiDAYs3bOEjMbHp/pVytJW57FY2zErq7R2Dp4STJxhfsF/BYemF2idhxm0KOkuv9J
         7Q15LxFe67J6Q7dw8toBbV/xL0JM0Wx+h6817eY9M2WhT7LjZyZMswYpxI1zbcp7oQUP
         /76qU/RlEK4c68w9oev6qyU6/velZvj5z0Q9ByeglUE7I0sNfRweSYmglC4hVL0jDn5C
         8o6qaq54cFH/3v5vZte4yuiWuWLBpljO5eYbGCGDgOSfGD/gLQiNGTkdFCuFJATqw9EW
         mmy/DzrkSv4UYi2GsJxosxahtn3v/8o1ntAyjxj8leyJRjzfk0M/Pvu/wt4Xp8wm+WmZ
         bs0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769770478; x=1770375278;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sMRtrpDtWcNjOBWLvYdzHUoZEy92hrDdtrq45EcYQQw=;
        b=QPzxD65SM20FNKSBl4n7sa8cvjMJS3OR0DR7X3xBl2gD9aU+ivYy5CPpDhMQmln8ns
         4OY6dUgf7XzEirCAv73t43YrtToA+gIksAsJjfIktxMWcUi5f77/4BJNGJzPpSj+qcZP
         gsMJPzJWeTRhEJ8N6mNySWbkwL+244ylwlKjKf0PZw482zEQq7qUvSNSzCktbw1VeUVh
         wqfcRILoPRKSwynzZw0EWncmP1Y+O8pHXLPU9ryGxIxfTWuG/xdCq8gI6nAAcH19Flwf
         nDtapZRvfBIrGeiYJpBuNpcavezEq9bL2Z4A8BQt+aeYX4Hqm4vj9sSDh4h336g0S8ch
         HU2A==
X-Forwarded-Encrypted: i=1; AJvYcCWL/VHFFyQogHR26UdRGwfAjabXdfIpRO1rg1rEbH3kLzLqVMduCUog/lnV4mnHWAndZH6yLA9nwVx2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdq37geU+sjEp457mbVYDW6i2VNOhIY6La5QnYacX+4MaJLgum
	jBrwO8whiHi3Zj+onMAi1kpUhUO81DZPvlNmhIxP0aEMtFYAOw/+DbLdJrlFgK19Fu0euRRhD7S
	YjJA6+vSZTKaYY3qL22ej5MdBjk/tWYqwC1ip53di0yFkMD76XflvtOX0mk/Dm2z1
X-Gm-Gg: AZuq6aKGGshVURQ+pLIZpaFY8oSwCR31VIezYA2IGuY0ZoAYd1V8qHbHG3v6pHvIH2l
	38JOSY3iJ1rn5UeFJcoX8iIN346+dAaBEUJtpTBXv67RL9EthpM9Fc1jpOOjiZYD42f3SUMFl3f
	lkqC9eAx4NXHLeny3gCaQcx8KJD/L7/cI2ZbF4Em4i2ctJQZISr+zPSXc8N6SOZRs7dDXnP+ijR
	Mr73slqKLoOIRDns1Ilk8WvRoqPMffJbq1nQj9Wa86yxHJ5TCRTJ9b6lrCFmNNxRXfPmXpr0umT
	H4QQqvQ5xXefmpUNi+eoSsej8XNpJLBBehn+uAO66O3Sd6ITde8rC8BxV8z/oH0GsKolTrxyfQh
	xIxM2npmTx3uDGqr5gpSGh50NpSjLheIV+KcoFkAyc4jgmrVp8KcgoCcOWlDE6C1uyio=
X-Received: by 2002:a05:6214:4704:b0:894:9d9b:84f9 with SMTP id 6a1803df08f44-894e9f33a04mr29179946d6.1.1769770478076;
        Fri, 30 Jan 2026 02:54:38 -0800 (PST)
X-Received: by 2002:a05:6214:4704:b0:894:9d9b:84f9 with SMTP id 6a1803df08f44-894e9f33a04mr29179836d6.1.1769770477673;
        Fri, 30 Jan 2026 02:54:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b46abea5sm3998401a12.31.2026.01.30.02.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 02:54:36 -0800 (PST)
Message-ID: <7649a0dd-b343-4ab1-b1f8-b9941f59f564@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 11:54:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01
 for rb3gen2 industrial mezzanine
To: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, Yi Zhang <zhanyi@qti.qualcomm.com>
References: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-0-a98714fa1531@oss.qualcomm.com>
 <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-1-a98714fa1531@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260130-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v2-1-a98714fa1531@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 67dmdDwf6JU1oAp-A5IUdayr4liJAYAL
X-Proofpoint-GUID: 67dmdDwf6JU1oAp-A5IUdayr4liJAYAL
X-Authority-Analysis: v=2.4 cv=VMTQXtPX c=1 sm=1 tr=0 ts=697c8def cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6RDgbce5Kyxkl_qMenAA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4OCBTYWx0ZWRfX1uuZsADzVYNq
 1/Qf8l8lakxf+m5sil7v7fl4GAcxu/9TE6wm/iHsbMLXpQM3bOe2vaMDQtEHAYV8VbRP1QjeRzz
 b09Wwd7vzJjn5rA6Jc0ik+XuqYDwh0KsAQj+vE9qZ+VAp8zMoJjulwHtfLM9b067mxOnhttoGND
 4Ud528aNXPfIASw12w3Nxjvr9WoHENYxlCgGVEYO4nAQ9qUVlVSBehKDzm1gE+xQk30swWj5azF
 dEMFxjE0nbRm2QNdO9CSmVgz5HETy2KPj6bGTRD8nzLIC7jTkTYXhId3Wse4HrIO/ssfCQxf+DC
 ukr/ynd/U6LLB7B91kpSptH9MTVYssNwAAqWb6oGUKhPF4ih0zULb/4auIvPz6LRuX1ouK+p9of
 tDe+2s5OmGq0mJcpHEQhX0REl5Xc3CbTrlCBYl9GvuYUAQmZ2OgPlQKaHfia9/VHOQcIdEIJ+8V
 Z0SzLi5hRWPttbrvNBw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300088
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
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-261170-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0F47EB9A3F
X-Rspamd-Action: no action

On 1/30/26 11:27 AM, Gopi Botlagunta wrote:
> Below is the routing diagram of dsi lanes from qcs6490 soc to
> mezzanine.
> 
> DSI0 --> SW1403.4 --> LT9611uxc --> hdmi port
>                  |
>                   --> SW2700.1 --> dsi connector
>                               |
>                                --> LT9211c --> LVDS connector
> 
> Disable hdmi connector for industrial mezzanine and enable
> LT9211c bridge and lvds panel node.
> LT9211c is powered by default with reset gpio connected to 117.
> 
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> Co-developed-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> ---
>  .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 106 +++++++++++++++++++++
>  1 file changed, 106 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> index 619a42b5ef48..cc8ee1643167 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> @@ -8,6 +8,112 @@
>  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  
> +/ {
> +
> +	hdmi-connector {

Please add a label to this node in the base dts and reference it &as_such,
the current approach is very error-prone

Konrad

