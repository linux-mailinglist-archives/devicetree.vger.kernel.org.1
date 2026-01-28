Return-Path: <devicetree+bounces-260348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OmZIQX2eWkE1QEAu9opvQ
	(envelope-from <devicetree+bounces-260348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:41:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 951F8A0AAE
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:41:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0B2A03003BE6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991182DFF19;
	Wed, 28 Jan 2026 11:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JOiVB/47";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P/ibJ4yQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8BF134D4D3
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599573; cv=none; b=Ip/B17iiZrUQbfucpFTYBVt7Gqe9P4E6Q1yT3YZL1GUjyG0sec5o2bpInW+OgaLn7DDXmQ2wSe1tIuPFVoTI0Q6aV6y7+7Znkql/L48k0jML/lA9NN2Xab5xkuSFY6aYl64vxc/qi9A/LCdraYk7g4iORaQg6PUxKeGqTNUR3lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599573; c=relaxed/simple;
	bh=0EmrqGC2R8r+EMt/hGAUyo/s8p0gxfJHDhcCzDl9yjQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CbIBrLRhjts8thoh+TStU6rKryEvwltHJKjsY7q2GqsScBAWQ8h9nKbXzJCx8hFqlXoelgndTv3EpXa4ryOmhOyk2Rx1Yvq0nbd5NpwULDyQBt6ifdKuv2FIRVOTT19pkNCUE6hazcgF6pxUXLe3q4bPDhGP+5F9Bzwvgar0Fy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JOiVB/47; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P/ibJ4yQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S928AT320309
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:26:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+dtH0gsaiv63D6FJ6lGxMPX3Bt/oiCLpxKmOH0S/rHg=; b=JOiVB/47GEY29+7c
	tyZ7zuuAoSwDCKYobegMurNqDL2xMr8q9lgyWl9+MytsvPe0GWqd6//GnStisdr0
	H2gSq0wnNgnXBwG5OhP2Gc373shEN8EI2mD0pcOQ++FxoVOc2In3BCh+cApKiLNA
	F4WZtM2Y+qQVGQJUtqekKWyYftuSEnJWSNQZjOhsKJsSLlYPm2mtULhskK8Ed/Dr
	czouPkt+e18J8jO529G3MwMpW/EHoSrT4L47dzIT9o/EqxBAGku4/rBdOF6R+DA2
	cHtH7azYVabT98BfOUrj7B0maMDdLPOLQZqlEoUUZxjOcDFve17HzEAKyElUOltm
	j1v99Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by4sjtgtn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:26:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70c91c8b0so54297985a.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769599570; x=1770204370; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+dtH0gsaiv63D6FJ6lGxMPX3Bt/oiCLpxKmOH0S/rHg=;
        b=P/ibJ4yQe4wYeEJGOMcaOqgmaRZp/Pz5CMsu+goAb2PSzQSS+giVKOKG3JP71w5dGn
         9UEFUcOG/M9sFgubcn7W7uft5uLLXYm82h7QW59laq77SMnrEvaBv7QvvDomSN6telQ1
         tvFXex9TBRbhRBmDMVmF/gCSuVbnifTNpPkQgGnb9olnLqag8e6DdqaQBen+TlctxEG7
         /B5vXOzk6N6OKUtOcAjp7ocFgoohEh9PcRAngp4XDsdb9cXKY717XyeIWpg3APTvKf7p
         DK5gw9qG32USVlgvic2kPfzFVc6eETbXUGutGdMZQFp2TOrlC7c2Izosa406mMrrDe9S
         Oyzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599570; x=1770204370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+dtH0gsaiv63D6FJ6lGxMPX3Bt/oiCLpxKmOH0S/rHg=;
        b=LQrfKs4mw2Y9W4gLvejfv1tMHeNyfDLcH9l5kh8lWjjR2xLyDSKQDLNkKDc8SYylDe
         Y7sj7ZVESHTTYPFJt0zTPpLAc2h9yRpkCLTDrzfRdp/4Jg6zTAam0C8Oere4u5qPv8n2
         YGcPL8H8grleHpMkzzMIxupG+UKvLl/9+8wTdIuokDm2g0tp51RT9p5TqvqN17jKblfT
         MEz421VpdfthapMPYoevz/2a39w88YADZjftAJ1Qb9u/3/dUUknCq9MJ44kv0JAvcaY2
         nw95c9mDAzDdX8sScunz3a3oa6Vg/uJxFZ13/F4t6KPOXHL1SsAEYWc1ei4CseQRWgGo
         WoWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaOF2QfWSpD1z7CSUGiViPOhP88SWn1J0M2GRfDonN0DBZlTbINlvFFPFLxJQ1WFdog11hg+bvvAdb@vger.kernel.org
X-Gm-Message-State: AOJu0YyuHL11Cb3M8XUqS7O/2woN0P2kU7Ieo6/kglIh/ztytE+vA7M0
	/7EMpSu77EJpKMPx8MjiIkPesbIuQFscUbl1VW2Z7OT5OU4MYSDBAYj1EpZWcxySkgYiUPxwfAw
	UPbCpK72FnwoFcDCBFSfKUtUGZChDasE7Sit+zJlieCkZVjBWA5IL8davaukVJt54
X-Gm-Gg: AZuq6aLGvHfRbi8m3cjkwa7uubyNQQgkyRfGxawxn4YCGBecm/EnPej7FNBOeCkf0YI
	Gfy0ZnZAXgAdzV6vPbjZdcqu4DgeFOb+Xm2Llgn0YK47bHQL4gwY05XnT8yGvKIHymUCHR57mKq
	VxkO7TnmcYrfTH5cVZjKdtZ9sqYY7Xu451k3O28bCz9b7IijQY8OyKdHBVYo8fU7ONlZ5E05Z+X
	nvhaW+FM7rgfrMzBT1SC/WEkh74zl942xXAd4MG+p0HrU+OnQGaPIyYBzuo9hxAzGkUjt+2N9m3
	4NURw5S0inZp1eGF+JaAWR2YVSskoHaTSEI/+G7ppnzzHuDx8lk351oMF6XsYNZ0qfrXgdl2e3V
	OgodvSEw3l0So2jN5QwhYM8hV9kARbT5zgaEVFwwe+1KEr1kFcMn0lW1cdaH7trhjHAc=
X-Received: by 2002:a05:620a:5817:b0:8c7:17af:7ae with SMTP id af79cd13be357-8c717af0904mr41074785a.7.1769599569879;
        Wed, 28 Jan 2026 03:26:09 -0800 (PST)
X-Received: by 2002:a05:620a:5817:b0:8c7:17af:7ae with SMTP id af79cd13be357-8c717af0904mr41072685a.7.1769599569390;
        Wed, 28 Jan 2026 03:26:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf183cbesm111830666b.38.2026.01.28.03.26.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 03:26:08 -0800 (PST)
Message-ID: <37689820-4d67-4422-98a8-d01275cf4904@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 12:26:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qcs6490-rubikpi3: Use lt9611 DSI
 Port B
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Roger Shimizu <rosh@debian.org>
References: <20260128-rubikpi-next-20260116-v2-0-ba51ce8d2bd2@thundersoft.com>
 <20260128-rubikpi-next-20260116-v2-3-ba51ce8d2bd2@thundersoft.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128-rubikpi-next-20260116-v2-3-ba51ce8d2bd2@thundersoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA5MyBTYWx0ZWRfX4/SzPREjXdFC
 TowT+mGRp30HznEavD3SoLasRv+tM90YLOF3t5tlJhGv6BrGaD0VYUymTmYveADJBqMnS3FhnzY
 WsF4MO6znNeP2r9dE8nLSt1nk23BKKZ92Vkk74BkNHgYDVZHgGRavg3gcmeaqXiJ/PuqfvGEMS5
 a5/0GUAA8S+gV2KjvBHwM19b0JlY2qsrlewpYi/YAttQo4yuoto1Zd+0VDSHxAYSweNjwfReHRx
 7N84QEJtcSkHXQyACN8IHnwSNBIPVTBLKx2XeKZQbw5dUOtZH8/D8K3DKGKqj4ROpUtkyYXsJ4Y
 15nP1d1pZFjxcCkaXSgmG8E8pQ1dDdd7dQ8zf2XMCw+rjRuv7RvyWBAK4FhfhVjDtMX33JTlnsR
 kkBQwp/tnAw5zXiz28C0aczLwQ/NJdBwpIRtYyN9awJoWVdOdtSO8yYxSGtBOz8plJTxD+ctGSQ
 1DO008QFiOZFrk7zmeQ==
X-Proofpoint-ORIG-GUID: -MfSJUDz-84r-d69XJ8JDvrL8UK708E8
X-Authority-Analysis: v=2.4 cv=KezfcAYD c=1 sm=1 tr=0 ts=6979f252 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Wdb1h0LgAAAA:8 a=xNf9USuDAAAA:8 a=EUspDBNiAAAA:8
 a=6TRhWV5S5Ysso8lYXqYA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=j5gyrzqu0rbr1vhfHjzO:22
X-Proofpoint-GUID: -MfSJUDz-84r-d69XJ8JDvrL8UK708E8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [8.84 / 15.00];
	URIBL_BLACK(7.50)[thundersoft.com:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	TAGGED_FROM(0.00)[bounces-260348-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,thundersoft.com:email];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[thundersoft.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:104.64.211.4:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 951F8A0AAE
X-Rspamd-Action: add header
X-Spam: Yes

On 1/28/26 12:15 PM, Hongyang Zhao wrote:
> The LT9611 HDMI bridge on RubikPi3 has DSI physically connected to
> Port B. Update the devicetree to use port@1 which corresponds to
> Port B input on the LT9611.
> 
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> Reviewed-by: Roger Shimizu <rosh@debian.org>
> ---

Fixes: f055a39f6874 ("arm64: dts: qcom: Add qcs6490-rubikpi3 board dts")

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

