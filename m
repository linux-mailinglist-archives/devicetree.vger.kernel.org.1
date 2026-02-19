Return-Path: <devicetree+bounces-266573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILCCNB+zlmmRjwIAu9opvQ
	(envelope-from <devicetree+bounces-266573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:52:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5E515C818
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 07:52:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3EFB73013B5F
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 06:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B373326948;
	Thu, 19 Feb 2026 06:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PGGYO8M6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TzKy/CRd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C632692D
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771483932; cv=none; b=Syh5v3cF6nvTFdsf3L6gRDwrImv7ggQzwjtIyPRXUA5GKkJjUdVtm+TEOjXKHm/e3en5Av1tEkzb7eSTBa0qxK7MP0H2QChxVIUEJCFHokM2k6pBkyzcvD1/JWObkOeAe28xwwGkKkqMjHnBTiPRvQCW4SQbJD08eqyPqmfXNAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771483932; c=relaxed/simple;
	bh=vRhg+wVXoigFw1YPKGKdLKSrgzXM/4zani63yma/a5I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RiAKzfx2VU1ZoNwjHlFOfTvl7Ypx53Ih+NGz9dwUAWfGqSNeKh88aucDTM2uSdyV8EsMOH7EL+kBRu1kwGQi45yLN+VFyZb4aIOHWJ/WCchnEC2dIcE6uMGQqWxDdrayZZ1tupMWWi8rnEfeo9g6JW+4EwtnOlKmMRgn2vh2Ujo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PGGYO8M6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TzKy/CRd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J3XwkB4024971
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:52:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aBjwtjUZT3umaRaksTB/vG4y
	DYBJhDwDvwsTz3K0Ktw=; b=PGGYO8M6/Sx/nw5NXGwzcuM+jkd89mdxOFqv3xyG
	21lErMadVN1YLE0g7v4lkKpf51MF+WECoS7ftQ1p/o+kgM0nIkGpDMXvLxL7wsnM
	+wDOUqixClrp4h9xDyH5+m9uAX9r5EmIsLtqG3EweC/31NlMD/2FvprthUxwYw3E
	AZHvVR+ylauFU6W3qypeuuyz5TDjncoiYPSRn1neRfhQjJxmOFN3pk9XD9S1VDjt
	Z0YoRLkNyA1VQKjoh/OnlZsHZVFb/Yof4aEBhPXjEqtzQjviw9yXQU4DRploTHtr
	OZTvvSMxbkk8i9lF9z48WWrxDoqW3n6+mN+XBI/78/u9jQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd78c3jud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:52:04 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-896fae40578so69737156d6.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 22:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771483924; x=1772088724; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aBjwtjUZT3umaRaksTB/vG4yDYBJhDwDvwsTz3K0Ktw=;
        b=TzKy/CRdp1+lepJH/ycM4pfOfejF03qdfiIRjTK9o4CV7gTYZcz+JxKcYHsBnBuxPT
         avCqfoPw9Vnbj6HxNwkWo53WkGqdmdOnOj/Fp3Z4ObZBA4ixHiwyWaJ61lGAtJeQ/sSL
         VVrsq8Y+5pbDwQQngv0B8TQrlb55KgdkqRlnNtt3kSaL/7UNaMrJbnhidUxSMMwilMDK
         4ClL07iMiiJxW8sveSFnp0KmErkqjpypfNdcf67fq8FkBZ3EGSI7XCR9J9P9tnZqa9N2
         HAjNIFM0OxCJbgQ75vwAUE0eZe3yng9kQYFrFGeJh/otfQCgOe+5yHn/fGIn6kbQrOZ4
         AxCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771483924; x=1772088724;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aBjwtjUZT3umaRaksTB/vG4yDYBJhDwDvwsTz3K0Ktw=;
        b=ZSmiQyLcUUrrkBY6bsl5SxfysXYDCndwDoy45RjyLknjNfbZKCNNds3d7aMJGJF8UU
         stdHSWx/NGoqBXFqfCZMTseKQ36w/IPo50PVGXJmJwYJs9gvLx5mna50moSYmN2ZiGqp
         S830jJXWcpXFyvn8NAaAGWS1++rw22kXn7Wiz8pUjpIHXl8KeEYeaoKOTTqhB3RkvVs4
         /fTv3twRQ1fcGNHUm0NWrbR2WW7Q7ns0Qn5uYsdDcS6Aizzw0sjCeLHJk8udrsZcoLLU
         aFM/tzgRCk+9MMHKsHT+wgY9dbi+Iox8JO8q5xOijONn0FTMl/wINEIa8PrslgRYHcXr
         rDWw==
X-Forwarded-Encrypted: i=1; AJvYcCWZrhXYthTa2JvpGFTbv4AafZvjMI8mAk0o8g7WQ5x0HFwvqLy0RTCvt5i5bFt01HIW7ha039kK5i6O@vger.kernel.org
X-Gm-Message-State: AOJu0YzKf3b6GPSAkOF5K1Y3AZtkqL0WSFxtN34jqN75q+VAQHwxAwGn
	1yBcy+7UrfvRczbCNJFB2UQvkyPb5USWmXSmtY7kI3YiGPWzNjVu0H/y2gndVHStZnAwnWonqtX
	Ci23XDb1bumQnxNVwitDQD9LmgOl0kVRHEV5t6SFGo725feTTOTeuHA5k/LmYKl1n
X-Gm-Gg: AZuq6aLBNHDP142TlGQWd99vEqGO4PlIm16YUp2eV52YQby0aswkBC3XZeyHMaOnQSv
	mqkt7R50/xLw2MbDu9jYe+QasmvnmasXmMQ4G5EsyHCbJ7KzwLVysaB8a7cDt1sbe6u7vMxhrCV
	fYLUGS/mDs3EQp2PEKlN+CLLyW1qfCy7kYW2x/hami2pTCakM+it3H5vYrfxxhhZApjkQIaigYp
	Sc2yfQYZH4o2pHiYROXs8ZSycEVhIEA2JFOUwD3xF2+e84/5zVNlK6Io2AYgE2IoHXAmqFAHywE
	yHeGL7Ji/7KNei75vTyM2P90I3MzUAbJ+eIhTRVcpvxwz8pv81dxwta+p1TDWgrNye40qJTzFwq
	iuV5RzsUlYT9G2rLIrNDF6XX7E/XhGkZqSLeumozTGnhNwa8DyLalTWODRdOoo3CWXonFLpUakT
	bTnePfMB75n9e439oEfwqWHww5mP/z2glCk0g=
X-Received: by 2002:a05:620a:28d6:b0:8c0:cec4:b6fa with SMTP id af79cd13be357-8cb740ea9c9mr493857685a.65.1771483924216;
        Wed, 18 Feb 2026 22:52:04 -0800 (PST)
X-Received: by 2002:a05:620a:28d6:b0:8c0:cec4:b6fa with SMTP id af79cd13be357-8cb740ea9c9mr493856585a.65.1771483923802;
        Wed, 18 Feb 2026 22:52:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5ba17dsm5020256e87.90.2026.02.18.22.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 22:52:03 -0800 (PST)
Date: Thu, 19 Feb 2026 08:52:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sdm845-axolotl: Drop redundant
 VSYNC pin state
Message-ID: <okqsroaklw6xopjbavsx2czn6cmvurtjz67oafni2cl5lgniyo@czmoerfzob5x>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-3-2799b8a4184e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-3-2799b8a4184e@oss.qualcomm.com>
X-Proofpoint-GUID: vVxYRlviASZxnKDEHw5-NKcE21rodyeg
X-Proofpoint-ORIG-GUID: vVxYRlviASZxnKDEHw5-NKcE21rodyeg
X-Authority-Analysis: v=2.4 cv=P5k3RyAu c=1 sm=1 tr=0 ts=6996b314 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=NMe5sQuIffPLTvoV0ecA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA2MSBTYWx0ZWRfXxmtQNusaR/bZ
 y2B4apFR2IVB2sGx+xaE/Y5Z3Et3THpuRMmIVCI7jYgstwlGdAPx4zOgjDjj7b1bmSBEk90bFnn
 /G7/WLUAGwW58iCA9fYVefJdYT7ehi/QByc0Sj94URY/Z93zDHp685cNhsuqc51ZkpvcemyPdu2
 qCNIepw9TR/XQWLcNNtgEQ4MUU7OWbDDMY5QpOFudh3YMlFtUUOBpvJDXJfDJVeanN+4qaRqFQu
 LnSpjF4sQBhAqoUzJdoCtVPvXt86djqSzKvRbhCZjLWB/XKzRBZk1NL4UlTdfDHLBNAPIkn1wag
 3fi+QeFU1GswC0zNQi930ucptVZhu+yZ1p/wO0VjCIqRDSzf7M3cSEdB++wTPhdZnhtr2d6jXic
 b5JP7SzFLH0F8H17jmb5ASgbP5BhSi0VE+vO7ev83qCKu6U+/I2w1Cx8Dv8aTGmWJuZ+KJtkpsx
 5DOE7CFShJMCJsWD94w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190061
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266573-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4E5E515C818
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 06:24:25PM +0100, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

