Return-Path: <devicetree+bounces-265449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALOQJbBdj2mZQgEAu9opvQ
	(envelope-from <devicetree+bounces-265449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:21:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1B4138973
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9DE683024477
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C9FC3644CD;
	Fri, 13 Feb 2026 17:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pcZbj/gi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cv7exGfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241682DB79C
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771003305; cv=none; b=UxUD5ACUvhZ/bZJAcLPgVfMvEro7Dw70iL8JEk49ECz840mRkLp/77J7KKNHKgsxo6Hu9pla7aLO5cdrANgIgTxdtHECIUN8HTJYaELUiRUA2XHGL7l+WBAd9zOC2y3sJ+kdXRDzS1FTDKsKBwXt59AY9VLplqSEwmYYlyLPTAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771003305; c=relaxed/simple;
	bh=t/uqNyTYD54/4f85HiM+EZ5n+aj59DPdBAaKhPlP3h0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SD1ArGcL8OW4Wwfj1kbI+A68juYZiWTaR8r8xjamy2xpYI5o3LJt5gVbe2JzFXImtfwoZ8dT1SMD7IILOmdsN5nsaMnM1RsGBXVsxQTvs7qXYQA2uMcbM9hYFoIaxKyJlmp8zg8pug4t4BP/AQDURUBTx6La4SUqLFsQczN6U4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pcZbj/gi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cv7exGfO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DFXOCe3043463
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:21:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kivQ43A27uvAmPAQ6L05kIqO
	MtzdQ3TdAouFNPVkN8A=; b=pcZbj/giOr50Xqa5xAlVzpy4mNH09o9KHCO+aYzp
	aiSwQKydjPlRU6tYzj8WxyrFB0msRXuqiZQ6S7vEU62iwKbWN/iV2aBjx+7NLAn6
	jpKozUrIOT8rBuEQ4mTgPV33n+5t/LhbG6NiiZxtwwkQMfosxMXVmgDku6xcwQzh
	uVeGMJkdZM1uCI4dCQdaKismu5Ar6g1u2g+aYX6ockfwGeN2OgIvuadlTtSx3jY6
	BpYh+Vg6KIcCkGz2AuZ8Z9P54ilmFI47OTiVb4Bz4Gm3BZfDrQELRsmAK3+9R2C3
	9jojAqKHFPO4WUXMhTigN5hxe3eNU7KAYmq1WXixu1FZeA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ps2uwrw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:21:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3b0d938dso438451985a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 09:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771003302; x=1771608102; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kivQ43A27uvAmPAQ6L05kIqOMtzdQ3TdAouFNPVkN8A=;
        b=cv7exGfORgQUIeck1Og3zAi/anheKQ1R2dIA9mZviDwol/N8+pua8Y10J3KuksQABU
         A5rK+4+nt1mz4oj6LwaCusaD5K6R5suV+K/ampWmCH4/Pegk0DzMPeEMXk/lqDTnDkGV
         8UIkbG6qvVuo2xoL7v+Y+fVdaqbTIOj2/PzYoG1aNORpwuxngyb4QCxB+elCzZ9AL2P0
         9XHw+w3TYXbPTKEjNlGa123p9FAIIG76CrYO2Xexxv6mUtLaZNAbIll33/qse1Y6cR54
         /QSJ8t+LtuOF6qnvPNTwQlqKwfNSk6APlDjIaSM1x/yFtiDWWauevqY3btQmL2x3cHlE
         foCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771003302; x=1771608102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kivQ43A27uvAmPAQ6L05kIqOMtzdQ3TdAouFNPVkN8A=;
        b=o9Z31TunHHbNYJMXb8py4ZvXOLMxixCNNbJ26fomJm47zQdXzqzwUSdP6xnuzOkC6/
         mj7iKSjU533PBIAO0LepqIwm/xUnamb5Lf6cU8Xsipvr2rQxd/wkPcPpIOg72AX60suz
         oIOecNjl26/515H4g4Gey3Q6JAyDIcgvCunX7C2OpctLwhD35C8hJYI/xTIxtvt2ozy4
         x4Zd0gmWV5vzGvXhq7KwG7wJgZguE8DT6/aMkCGd6q1Oxy4inzlr7iw3KF9mFe00eTib
         aFsSysLOF+FUaDOsS14Dpjw/GKygU7qb52W2M9ClUwHvJC4RQcGNtF9gWJHBubOixJvU
         lA6w==
X-Forwarded-Encrypted: i=1; AJvYcCVZTZxojnCtjbxz5gqhoof7e4t3myNiujC3Vr4fbGOt110+Y2aXXa2MZLEQNmg0fIaYccwN7sAJnAaI@vger.kernel.org
X-Gm-Message-State: AOJu0YzbZ9vsW96rtvKPBehHMlMbE3g+AlYfU+mNut8WclIy7t+mEk01
	RcpJyMxf5gu65HKKNvQ8vYBVdrCcOUqhMOAMPEpUcceXzKkXcfjVeDg51mcULChshAf7ah6JaVq
	LwzEnUvqHmUUpzFYODyTP/nkjtgVEywNsbRwD3RQiP2CwyTAa8Bq8qmSwGjGI5J9H
X-Gm-Gg: AZuq6aJq0Qa/qvFh9hGA9fPE50gwTxAeAGmg/CL+vhI/0R1L4cdPyavBSsvIaZtj3WX
	xHA+sxllULRJR0zMS+TkZdf1amOJU2NYHUnrC63u3nY4q6iLFlcPELcRnCwTVg7HB23mXKMKZWK
	cQ70fFAevTYRFaLR+rqgLO9I7S9UCmNNas+wpZn6K/yvZwJuk0gniP0FPhnqmC4qXkmrtig7qXA
	Nxy0otTHaz8E1HtkWkh5dBmkMfAHb4/Ikgs/zzKvV6pHifsR7s+o0zWa8VSl3QtwMVg6xz+1JIN
	uE/jOYisw7Yjc3Fhv3qoMgNwecIk7MfwJyG9oMFhCfLOgQJ5a1sn9wLK8teOxOTvVkRJ5+2+O60
	IIyMsWCTdKrTnXaU4sgHlyKybUis61RSRRGiUtq/Yi/LFtga3AyO9sJpbIJFuK7KnAgnCxZbrwO
	3zGJ81R2t7+hIFDxo5Pt0gC+rcmII5XeRyskQ=
X-Received: by 2002:a05:620a:1a29:b0:8c9:f996:81f2 with SMTP id af79cd13be357-8cb42252bb0mr314104485a.17.1771003302321;
        Fri, 13 Feb 2026 09:21:42 -0800 (PST)
X-Received: by 2002:a05:620a:1a29:b0:8c9:f996:81f2 with SMTP id af79cd13be357-8cb42252bb0mr314100285a.17.1771003301813;
        Fri, 13 Feb 2026 09:21:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a50e5sm1678959e87.53.2026.02.13.09.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 09:21:41 -0800 (PST)
Date: Fri, 13 Feb 2026 19:21:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        yifei@zhan.science
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sdm670-google: add common device
 tree include
Message-ID: <pyqfeuepbadviyigknugbucuf5lw2piqe2xvk6otgo5q3vtxsq@eqnxns5oefx4>
References: <20260210023300.15785-1-mailingradian@gmail.com>
 <20260210023300.15785-6-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210023300.15785-6-mailingradian@gmail.com>
X-Proofpoint-ORIG-GUID: 19PFlWgFLZu1NY_nUoAWqpQ2bQdHPZlX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzMyBTYWx0ZWRfXzCT6W+1BB5fv
 kj28yp4kHayK/lqWb7A0XlL7vHmLJlOtnhaJsooP347kvXzK5q+wFIxJL3kDcfxjyz3gQf9CDPp
 EoW5hLXIyk1ICBDClKZLULwfEHobrjzoHLczl+u/ugy3TPdepkIWV3AB2BUXlMz+FL7qdwNltWg
 GzWd5qpMzW1tzAeTLWsaUL1Y29YA7uE2XXxtjAUniqeLctwaKVcUYBhGVov5eVFIChovAajKFcF
 QdfMlDUBVNRelp8ZdpE5elxAay47VyQJnEiqsWMoKYkVndd7QXfmHGbZ0IASTlVEGSinY1Cc2h6
 aTBJ6p3119Qgx1t1wtmD3dS2GGD74ubVeNmmtxD4Mjh/Lnwyuomp0FPuXDQijJV+DfG2sowIrtL
 Pf7LSlHd5UbMBQuy1NjaIrFdQnPDNefjW5bny6aEI3cUQqPEcm0BxnePYX7x8SL12dnLBwdk1mU
 LhHCGH8vtRjHvZQgqUQ==
X-Authority-Analysis: v=2.4 cv=LoOfC3dc c=1 sm=1 tr=0 ts=698f5da7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=abYoSyeH6r3HoE31TXAA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 19PFlWgFLZu1NY_nUoAWqpQ2bQdHPZlX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130133
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265449-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org,zhan.science];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E1B4138973
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 09:32:59PM -0500, Richard Acayan wrote:
> The Pixel 3a XL can be supported by reusing most of the device tree from
> the Pixel 3a. Move the common elements to a common device tree include
> like with other devices.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  ...le-sargo.dts => sdm670-google-common.dtsi} |  17 +-
>  .../boot/dts/qcom/sdm670-google-sargo.dts     | 710 +-----------------
>  2 files changed, 20 insertions(+), 707 deletions(-)
>  copy arch/arm64/boot/dts/qcom/{sdm670-google-sargo.dts => sdm670-google-common.dtsi} (97%)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

