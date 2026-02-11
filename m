Return-Path: <devicetree+bounces-264583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG0AOPLki2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:09:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1596120B31
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 349E53019E4E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0580D2F6900;
	Wed, 11 Feb 2026 02:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T/SNLN5A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RWVR/hb1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6151F2F532C
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775790; cv=none; b=biGQlsN1ScRSd8YjCpKTzbPmH555rt3Eun06deC05aiigqGM/lzho5OlCoTllK8xNftbAuos7QWeBuJT57PauUd6ZRVZDvrRtA5VWFdABakw2yNq9XmcVnjlcofvEwzb/U3VA4rm8ebAJtVAIZuCS4LQo/td4ctTY78rtkxJWSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775790; c=relaxed/simple;
	bh=CL0jSb/x5mupyFP/xbn/3QT4Whuy6K1BOiO2UvAbZbA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WklqYXGwerWsd8TO6bakvH60xuuEwgd/zCmE5c53xWc+hANJE+9EyzOtyBrG1pGp4WscqGSmlQmbpPA2/ikhcApqC1Mb8rF9mblSv73NGXpoRXiIky6w5A0XH5hhlsYV4W9ad8mQ8p69a/ONUrOdLgk94uZjh6RX2lleesVs3tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T/SNLN5A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RWVR/hb1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B0ZcV64007288
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:09:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FvEi9aj8WNc4PE/SSBlGvqhE
	isBuRuKk7oHbw7T8/2Y=; b=T/SNLN5AujDX8zuy7RoL6MDp+9dxEds6bj9zRi9S
	BUsRpXrHNVzSqj4glbqYyM1QwZbo35MAwR35pjXVFzXp80IOvVyHDtMHQDF10+py
	K+qqq0MnldnxrCuaJQdPNWb0xJbO0K4HFRAm/U+EpHEVQwQT/PBThZXHDPxWpig7
	Uz6P7mBFsO4J0tlkdbwwhHobv+Bth/1anwIJ01pUl72YfIgOQeKnR9uB6+MRfF8n
	c9O6asvSxymGtxY7GjenuFoYVdSNhD2BTQ+/Fn0kmkLwvPH9KOzU0xKuLmOqE2Ou
	Qa4t3KIFICK7Il2jsbbPUr5RiFWYEiSWkErAX1a2D/H2eQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8fbwr6sj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:09:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52c921886so171272985a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770775787; x=1771380587; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FvEi9aj8WNc4PE/SSBlGvqhEisBuRuKk7oHbw7T8/2Y=;
        b=RWVR/hb1QGqQvT08V5PTA+CT6Kg0n2AzKakx3JwsDWRqvtcIc/712TRDmSlJe/Umr/
         0DvJB1yPvoxBgwiziSaDZZb/VQQs8AdctM8P7VkWqWlh5wUY3RX42UqnJtoFLa0oKUZw
         Y7cUJfIpUk3BemMFZ6t77Xv3AhVD9aiU2R0mfxmV8gXcCKbN/eruAshlKf+oyJWaHnnD
         x3OpkNk677A5jn4BACMWXDngrav+sHEKWe/aGBtqb4yZHjyJF32ML4+o1GcS+xrhB5IO
         wvsNtp0XyqISydvtAfW2rUEeFcKgxkfjsEUAIjb3xXZMf10F2iYQ1J1DfRg/uEVmLczF
         jJnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775787; x=1771380587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FvEi9aj8WNc4PE/SSBlGvqhEisBuRuKk7oHbw7T8/2Y=;
        b=BdAO01dKCgH1YQz/JkFsr6D0aM6C9VuenuJjWfACUJClp68wcK6/5ijM4RmkgTzNc2
         w1Gql+N/SrqDSeB0A+rY2EW4mfVlSOG+UdB4rbzP0fSznefuugiRpcy1glD6uCCV6Jax
         78okjJKUFNRI27CX0Mu1HIHUzA5fgnlMuGJhLRnU4hcYyaciNmqU/NNKAvC4yzs4pb8y
         6NcgHxQP47iwgAxvLgsZrLcrYFhMjprSUg/0NyF3SgHxNk+GAfBNaLzKDxHsiISVEovc
         s2tcsWdOo3lRFNJlebCCMy0qQxmaJPqEFifLXmz3/waruRSvfu141zpxG4CdBW7v16mm
         4dYg==
X-Forwarded-Encrypted: i=1; AJvYcCWb4LjSsSCFcqLwzh+U5npdJ31bnm+E1224MoV4WEQ4O9eMttScvd4H8wVo/fZmVwkThexRczKN+Iqq@vger.kernel.org
X-Gm-Message-State: AOJu0YyMkDNRLtdoyrdynrH9C/oIe1kQKJqWKTd/rGWVnTrQPNUL5XA3
	wr+cdLhVRlm+hgZafOSeDjsZLDLe4tuyTJo0n0/ZqdUn7pi3o5wmAljnWMZsf0dK7XylXSPA19P
	H5b6XpNebiIQTKoxfjTON5DTPjlWo/wJbxYTaa9dxOTZTm1VCSwM/rWdRAHx3Sf2+
X-Gm-Gg: AZuq6aLnum5fuCg6djMXX1BHClcmCezZlJrQiA3TApm1OkGlXZy4btl6kateLtwPukn
	kBA7a/dnJtmqT00WqPPbsjFhnK5JMR21yNsgXHevy2L7M652QndE/PIoVL17LYomnZb5qB63nFZ
	B08OZFaKYU7HLmAzhZiFlIJJiq0VlYBOWG83UsA+9rmJPtX2jEuqjaWQmHojd5wVZNQ3p2IXI4P
	XhBXbn61pLRnnbBsJ4GbEKQZTUJ99l/5Vkq86s08D3qy2YBL+j76FoS+mY3OsOX29XFjdIkToEJ
	grIZjD1MSZfgMoppYRM6vx+eIJar6g1TXbWcZrDwIOm0AYDVOaIyzHbxsXSvHDdgTw461RZqkGc
	GxiGgvx0FImYDRLW5njPKottJgJdPlEfHODIkveHotEbQlQIvqGMKqgohh1M9O66yi4mbtqCHQl
	1KSuwPJq20q5EB7p3Enf09Cb6eP4MxkNEKM2o=
X-Received: by 2002:a05:620a:46a7:b0:8b2:6606:edaf with SMTP id af79cd13be357-8caef5f3f53mr2380198585a.37.1770775786555;
        Tue, 10 Feb 2026 18:09:46 -0800 (PST)
X-Received: by 2002:a05:620a:46a7:b0:8b2:6606:edaf with SMTP id af79cd13be357-8caef5f3f53mr2380196685a.37.1770775786106;
        Tue, 10 Feb 2026 18:09:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068e5976sm619931fa.27.2026.02.10.18.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:09:45 -0800 (PST)
Date: Wed, 11 Feb 2026 04:09:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Stephen Boyd <sboyd@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/3] thermal: qcom-spmi-adc-tm5: Correct the voltage-code
 scaling for HC
Message-ID: <ta5hqi4jqmxinm2ykkdsoc7poq7ko4jv3qjuhibzm3grqk5ael@uawjompenmjk>
References: <20260210021819.12673-1-mailingradian@gmail.com>
 <20260210021819.12673-3-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210021819.12673-3-mailingradian@gmail.com>
X-Authority-Analysis: v=2.4 cv=GM4F0+NK c=1 sm=1 tr=0 ts=698be4eb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=IiwsIYU8Yi2Zta6pR6oA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: smVtYXzUZRvQoD-OYyv7sc-VJ8iVIrYH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAxNiBTYWx0ZWRfX2fTl8N/IF8lm
 3C2O0XBELG5LS3wVWiG3MOZr8x36f4MY/NvQSlbXgkMfIF/qZJMMiE3sw4ttQTUQbTIEvFsE/Q0
 C3uLhS/tlqeGwT6EL3As9nYzPURkeuX9rK4hW7YWDzp/ZqvKM/UVUzp50UkoMF0r1XjyrH1/dEe
 zqB3X/hNePF9B/8ETfGz1BpSUFUNXkA11tKEF1QPFuDLKy9783zFgS2hT8J+wbu1zM59wm65JUi
 5ut0aCfT/zI0W/FC1ivpcX8Yh8mxWTNPcXHOZVLLQweJVfeQeTVwY41f400bx0uSadYIUyV0/l7
 p6Xrx4lL4T0LA08N6gwAfP6osptjXpfN2cm1X/ekC2RqLEcazck+DYufPks69e5IDA1svudgCju
 0RdDXbVdvFNw8qeE8XcdJIN32sGhLZFiSzBwFCGMUSyDcERP5/HlDwmpqqDQyTxezzuoURCRu/N
 uynvppdyb57TCtUgkzw==
X-Proofpoint-ORIG-GUID: smVtYXzUZRvQoD-OYyv7sc-VJ8iVIrYH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110016
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264583-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,intel.com,arm.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C1596120B31
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 09:18:18PM -0500, Richard Acayan wrote:
> When support was added for the HC variant, the full_scale_code_volt
> value was copied from the tm5 variant. From the downstream kernel, the
> scaling value is 0x70e4 on PMI632 (tm5 variant), but it is 0x4000 on
> PM660 and PM8998 (HC variant). Correct the ADC code to voltage
> scaling factor for the HC variant.
> 
> Fixes: f6c83676c6097 ("thermal/drivers/qcom/spmi-adc-tm5: Add support for HC variant")
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  drivers/thermal/qcom/qcom-spmi-adc-tm5.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 
-- 
With best wishes
Dmitry

