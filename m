Return-Path: <devicetree+bounces-273117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O/uDr4wr2mWPQIAu9opvQ
	(envelope-from <devicetree+bounces-273117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:42:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7C6241046
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:42:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B9FA930C9CE7
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:40:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C6236AB58;
	Mon,  9 Mar 2026 20:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j1idi+4n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i00xx3Bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C28347FDE
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088841; cv=none; b=Rk0wD4DXznh2N1huOEU6RATmwjdv2Lvvw/7kwVezhtDXyipj521PCB/UGeRkJf7pqH9YLzqA3g6TMohdO530IhWMh34odv9Hg3roP5146gJNbsfssxlUsZf54knRaC1mgASk7metBhvs8ZBnTvvDdJcmHojj6cjaaP6BY780TJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088841; c=relaxed/simple;
	bh=IRUCbQKurQxQMsdMp8bk9CAHzugQacFOrz/gIvvDqrc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KNH0aGCsKSmD9e3Jr75rdddgsSiKJAzWyVO0qjXqJuWK62e85EFdwArbnFt/PTT8qih4cJh2aNQuPukREZFsFgvlHkSdEACDZjc65TSkCTrg9rCpMUBxIhSqnXOs1jdSeYV1esMuQdbNYtcbDmAjvhbqhI2zi5fAD1ohBJU1VPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j1idi+4n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i00xx3Bl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBnfE1920917
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:40:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tChwvDfZFPoUV2H4DmtB0BO8
	Jip9afM++8HSgrXKpF0=; b=j1idi+4n9cOGFfuG4H5Y2bAckIsxdRw1z/pYV+b+
	HJtjsxD+iMqX0I3lXczDthzC1sWmc2OcmNwR1nlROZSR9VWnbAHbLo2liZfaqhKG
	3nAVTi1IrGP7XZfaNsxd8ra40PkL6e8Fmf/FJSJ9dXIYbNyx4JLJqzGIG/e84Lx8
	N4pTWY4gxVNhVklbYPDOWh+u0R4+kRHLRGJFY6GZUGgT9tXzxS/1J9nRxySGMdDM
	4Y02fCbeVLKzb8+zLhEFKblN1QqDhW9570zBXJaHs7nTYomyxdNJsq903Yl+FyYv
	GLrkYYZknJuwZxNV/XB1kea85seT4zlsNM3OQtEwXNTuKg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy81guw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:40:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7c4ab845so906676585a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088838; x=1773693638; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tChwvDfZFPoUV2H4DmtB0BO8Jip9afM++8HSgrXKpF0=;
        b=i00xx3BlZPzPiQaP9Shvc+gSx7V0bgDLV1WeLgvg5wG7G0skmrLumuikRhFx6UV+0e
         +5jyrx4jZiooFRGAgJw9zRcLZXEJk1m/Wl7N8TtktywUtAAs/l+lLwEFv/gyYAHEkkmY
         z+9q0kBwSl/MDtB5zBZmQ5XK6Z/Nf7d6atDrIMK97i07Fa793zAUhgQeTefrMWjVLeL0
         dXeqx8rVMH5A3cZ6pMCRDhf8ZJcMs+39fHRuZq7fHND3LhBGkySlxd4PpaaZ8gj4l/vj
         cOMB5O1zKIRu6T+ipFYQT+pEtyLC385qz9kI1KkhCDtuyd/GijzEwz0xjw9BXGs7ajp0
         v8IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088838; x=1773693638;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tChwvDfZFPoUV2H4DmtB0BO8Jip9afM++8HSgrXKpF0=;
        b=GMYTSq/fzJfqk2ZVnwY28oSSm0r8VDCfVFOHYyfT0ppnPKIfDxkca8UG0ub9PlSrwr
         Kszg9NO53xVpm9WD50jenJV1h//lDt66PlpvqL7Y7KutbmyHXs7fJDnywIEFAxM9rnsa
         evIARPEHlJW4UeE771GXglN5jk94o3tsapVXwYSAkC94txEnmcWzDJUuEYq4h2Q1jwdx
         nU2l8A7SKgbRfYZe9KNXopExmu7jyvlZqSBPBPG3iNWtsL4CGVYptAjI38EEjO02VLMr
         /tpAXLMV01gQt7Yh0RyHMkKw0E2vN5LOooO6oElz7YXZCLnHYXqOYMn3E6VPlj2nqS0/
         MJDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfu9yhlhUj7xJWcBhJoumaCtM6VXbg/duhLc6uizhvvVL1vRnC724khA2ZrXtoqClt6uuo4cZQu3Us@vger.kernel.org
X-Gm-Message-State: AOJu0YzYlPUXqA5SiLja8xFgk5Dye0y/HC+zy84Zf5+zGvSlxo4Vbp72
	fur5UsWrxTwlks2lRPRrTAX+h4b/GZm+30sdoa8x6j/6uCIXPYGsheo4JWOZZm7CCaFFy06GZn5
	lg/kBz1wyVZnNTspVZLxRxPIUf4guGWV+Yj29mfnirvBG9HC/5jPUm0sFJkpKEvji
X-Gm-Gg: ATEYQzwijZ0SvNhQSnqZaK+vxQnVAOrZFoZh8Bl/7eh097FAXw0Q44sVR7UkRKPHVXl
	V7sf51l29LKI79Wvd5fpHmgKUoZC7aW5tUwJvxymTGySek9BHh7I0vZxllZoZEUIZun6avn6/f+
	oy9C+tcTdq6SkcjX87RZAwsUTftMJ8Lq2MLDBV4g4CQLMZcCVXoW6F1Fn+2OINrRlI8mc5EABxc
	CzEg1h/Q1K1xb2sfJJ0baRe5cR6oAZcxYAuSJ6VpBy9EomSk25Y/JBhQvFvFr9/oovNV9KLSdfV
	0oD3g57hWr7lETtetT+FyjnRipZ2KUZ9pu07w1Ecd2s9uJn2ujW21YA+QAv2ihlNTDpVThGLrDH
	Z6fZcdydrxT5rITpOlEuNtIUmxScRqwTKrmq6Q4I2LpPIoCywgNSdA7faTRelxvHP5Fd1tRjnbn
	XpIWDuCS2zZ+EZeRwbse7Jj8EfA95S3wtR2Uo=
X-Received: by 2002:a05:620a:468a:b0:8ca:2baa:76e with SMTP id af79cd13be357-8cd6d35b59amr1678105285a.19.1773088838385;
        Mon, 09 Mar 2026 13:40:38 -0700 (PDT)
X-Received: by 2002:a05:620a:468a:b0:8ca:2baa:76e with SMTP id af79cd13be357-8cd6d35b59amr1678101385a.19.1773088837893;
        Mon, 09 Mar 2026 13:40:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5d086d5dsm1148701fa.44.2026.03.09.13.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 13:40:35 -0700 (PDT)
Date: Mon, 9 Mar 2026 22:40:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs6490-rb3gen2-vision-mezzanine:
 Add model string
Message-ID: <lkk7khxzboxnekznm2pfrnr5muns263ibcyjz7ch4xxsshbet5@dtolw5qkwtbx>
References: <20260309121936.1289615-1-umang.chheda@oss.qualcomm.com>
 <20260309121936.1289615-2-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309121936.1289615-2-umang.chheda@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69af3047 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=DqEcicw_vBeIipdN3lUA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: gZi_MWMnmnM53uOpfmhJT4f5trqTiaAi
X-Proofpoint-ORIG-GUID: gZi_MWMnmnM53uOpfmhJT4f5trqTiaAi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX/4wI3wLsYYGp
 vuOMPBgVucQdkhzE2M+MDMkKHWV9NaRN56AnTZIWyD4j8xWiFdylhvXlGQ7yVhH8h2ipLD48fkL
 qfKI9t+sAQwgcd3YH21I2W9gUZtDgMfEWJfDg2Ohyqj5HK+DYtDVrO4IfYKcLyAO7ibCeW8jYpg
 V2MY93+yIAWa5/5QAsa8KgVQMp7xZ6WvPJyNKpmYb/tbirA52rkIpOcHWBoUP+wm5Zhg2hN4310
 n7ACS+FewbSGx2JveIFXZE6xuP0ywDBhI0MgEbcu47tpNQFmKvI2IBPpu28roGaEHEfikDuhbGe
 NRSSzgeBN2Wv87Tz1UzLa0wgwLE2e7ExRQb8UeY2zFV4uBexqgstY7kY/RogQkSNNxr2P07H+Wn
 HBHOUxeVsLK9Cqb3cGd7ZFjdpt61fVYjMelUB8hJGgCki5ck0S0YTPAb9uVJ2sWotCYWzHL4LJf
 0eImm3GoBCBGi8Ispwg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: BD7C6241046
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273117-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 05:49:36PM +0530, Umang Chheda wrote:
> The RB3 Gen2 Vision mezzanine DT file lacks a "model" property,
> resulting in the hardware always being reported as "Robotics RB3gen2".
> This prevents applications and user-space tooling from distinguishing
> the Vision mezzanine Kit from other RB3Gen2 variants.
> 
> To ensure consistent identification across all RB3 Gen2 mezzanines,
> add the appropriate model string.

The model is not supposed to be used for identification. If anything, it
should be compatibles, identifying the device. However, there is again a
quesiton of having a device with both mezzanines at the same time.

> 
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---
>  .../arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso
> index b9e4a5214f70..879d5d853bea 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-vision-mezzanine.dtso
> @@ -13,6 +13,10 @@
>  #include <dt-bindings/clock/qcom,camcc-sc7280.h>
>  #include <dt-bindings/gpio/gpio.h>
> 
> +&{/} {
> +	model = "Qualcomm Technologies, Inc. QCS6490 RB3gen2 Vision Mezzanine";
> +};
> +
>  &camss {
>  	vdda-phy-supply = <&vreg_l10c_0p88>;
>  	vdda-pll-supply = <&vreg_l6b_1p2>;
> --
> 2.34.1
> 

-- 
With best wishes
Dmitry

