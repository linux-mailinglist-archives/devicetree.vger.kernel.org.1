Return-Path: <devicetree+bounces-272682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MuqNshWrmmbCQIAu9opvQ
	(envelope-from <devicetree+bounces-272682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:12:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60949233DD1
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D92223010506
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 05:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB4B2D77FF;
	Mon,  9 Mar 2026 05:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hllbChy3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lb3Wfjcl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1174127816C
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 05:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773033144; cv=none; b=t/1AQXJHvRvaFnFZpWLViiYyDVR2TjCvw9CRA2TjF4IrEQ/KFHUN+pzHykNfp5bTjDx26ZW9+gmFdJmR8gAbpkvK9yu6ABczum3I//shReLQru1IKPICiUNZtj4cMqDi5GaGj/Cta739lbvh3hlOId1AWLcoaf7q6kiPCLW3q10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773033144; c=relaxed/simple;
	bh=h8jSNkOBnQ+GylGQE3LqQLFkNywKdIbN4DUr0Uyrirk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S76Ym6RIhrlWgsl+GZkI8Prm75eRMl1rN4XqbcCxflldVTecaFtND6cfaZ+kFiBIMAXGPpPBrd5xmWls0JrV3geXF3yfQBbX/d5wW5B+T3pr8ezTc7ZlVzS8fJ0n0Fur0xZNJhFEp6u8ija7ULeRNKIhrT+N+OwLLr7nIU/vS74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hllbChy3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lb3Wfjcl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628Mxm7q197322
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 05:12:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hr78HlUmGdHP31zlQxyj/wEv
	oINm0CJ5zfAaDu212cw=; b=hllbChy3UZMTRxQUZobuvrgFysQIGINoS7GIbDsz
	NBN/IlAairjrNAx7aEmj6hIlCyefyDJhgkfjDefDfxTmIhU9MTjbUpGj9aFO6MjO
	+dK2E1iQxpHePjxHNFb9Bc65C/MU579ExFl9RCeWNIn8PP9Eg+v+6qjzx8TUhDKW
	AW7CWy1VZM1sNCxp3UXRyJRBKnNS2HKjC8b/wBQq4nwbzu1Am6aQBNzkpUrXO1yh
	W1LxUnMR3o/BBRyIlZt+p77VW2RMR8tyf4hOZ5GTXZNA9arniE4qIn37SNa+Lsy7
	x/FYK9w3zuJjuBbzTjB3IJsBEabHxguOCgzawSgddAUcRw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crc3vbw71-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:12:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd85e08fddso766310885a.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 22:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773033140; x=1773637940; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hr78HlUmGdHP31zlQxyj/wEvoINm0CJ5zfAaDu212cw=;
        b=Lb3WfjcltY2H0KMWqiDmt2ew87FEJwm8oLWmHG8Of9ciEI6jUmqHCRpLUyZSlfbZmx
         Ch2j5RDoMVkHw5T/mkgolfrOInEUA+JPpZlBCzg5MEI0zLe3KSjPCeqPgNAdxRvFqHmV
         1Z32aGHOI7nQh1iPs1yPdUjcV6BxaSy/m3ZdsAXV0CyOvm8QvVHIw+d6iduzqgX9QJKc
         zt0Y5n8l1WA4zdP3S6B1s/qKardXOfRx+gQ1kNcG7BvhqToThyswAH9MsCvnHiGgHAE6
         OXPvpgy128AfomyJd97NoRjfiaxuqcH/fm/05r/fAh6Du0FIG/myps8RheB1IE5LFoPh
         SFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773033140; x=1773637940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hr78HlUmGdHP31zlQxyj/wEvoINm0CJ5zfAaDu212cw=;
        b=wzobWwZRxvhR0jPDgCSVPw41u/P+HXRvJTrKbRa7FiwobVZJd5eegu3Kp+mSCBisz6
         WM21eYvYr/cWZYFisGKdy/PnaqiSpdeuYyefRUIHYh1NElxAO+u4zTpjHR3Zn8tS1Zgv
         aKM/puYiD+ez0z30+jHVw+sPuouN0rZC8VWpMWntv4iTPolvBeHEkux2FZQY22oQGNfI
         yD6kOWN6j83naVQ08sgXtuCKpnPwpx5mtq+NSGa0PiazuiXXuA07z1hByMruq4Bffpxp
         jDrnwU5cY6UMpzZ3xLXsfveGWNb0hzmiLOt3wO35AVXTcqY+X6dT4q/bvlbgPn1MThXS
         wz8g==
X-Forwarded-Encrypted: i=1; AJvYcCXzFkXCEPpRBStBvklWnLFHBdf6ueMTwZ7pDSazOZe3BUwfhGZzAa/pJlAJ6MUgTCzzPEIhBSlzOoUh@vger.kernel.org
X-Gm-Message-State: AOJu0YxVc3XYVkQIpIVAOKjxgly5IslmDIdpIIEnYzo+lvnN/ew/KvVz
	of2I1x1iA1HnKVkS+QBZb9zTzznMRcT7kdxvg8CIE7pjRbeL7WWX48sbn6UDI+v68+HY4fpYGc6
	e9QKTxsgJWCb8uiaV1y/wJBaVmqprLl1oHURkOxLIW7JoVB9lYr/+iNeSYZzVsgqh
X-Gm-Gg: ATEYQzw7jKN1oQhZ9j4xAHv8Dy0IGY/yPgA+87d8wNTaDE3O5XFVh1FtiThNpXMNopk
	k8m2WWGRyXpaxBSsCKLr0+CHclSkMbM6kkyGK13/Y0AMpK9Uwb5CNdkF3gwwA0CdSKLdQadQQlC
	G516x1BIeAY7ZsQ6nateCE086xVgLOpbfNOzR7uwDhTCO2T888wf4xCWuJhK0YjduCg9pQJeI5l
	bBLoQcmLBgjIrEehOGTmJTlF1Xjj/kywnVtG9WIFs/jUwz8Me0WORZvQcotuXyMdJkFYRc4J7Lo
	BmKq351Uu+MZIqByPLn20yzvqg8gREVtXQGUhiLUXcw5ta44mztJeZhoGMH+T4PZhy/qazRgzGL
	RJ6jqsersUu7K5MGBxRBdTcFlqTgaMoyCMdVks6JFLGc/F/9jrpIl0NHEUEhwKLf2+yt/xCpT3/
	9WgCvhT/H8I2L3JoA4ahqh63xopHUnHqv53vA=
X-Received: by 2002:a05:620a:711a:b0:8cb:4de9:ead6 with SMTP id af79cd13be357-8cd6d3f0ad6mr1264443985a.9.1773033140385;
        Sun, 08 Mar 2026 22:12:20 -0700 (PDT)
X-Received: by 2002:a05:620a:711a:b0:8cb:4de9:ead6 with SMTP id af79cd13be357-8cd6d3f0ad6mr1264441985a.9.1773033139936;
        Sun, 08 Mar 2026 22:12:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a42074f3bsm12865931fa.44.2026.03.08.22.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 22:12:18 -0700 (PDT)
Date: Mon, 9 Mar 2026 07:12:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: milos: Add fastrpc nodes
Message-ID: <wxsormh4e5iplfa4vlamflwi7ye2qbn2v6hlpy35iegbinhuxn@ozrftvtgj3iy>
References: <20260306-milos-fastrpc-gpr-v1-0-893eb98869ce@fairphone.com>
 <20260306-milos-fastrpc-gpr-v1-1-893eb98869ce@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260306-milos-fastrpc-gpr-v1-1-893eb98869ce@fairphone.com>
X-Proofpoint-ORIG-GUID: dKJAPbhnL-lt3MOzcKUmLZcpfezSWUkP
X-Proofpoint-GUID: dKJAPbhnL-lt3MOzcKUmLZcpfezSWUkP
X-Authority-Analysis: v=2.4 cv=OOQqHCaB c=1 sm=1 tr=0 ts=69ae56b5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=lN0czBGB9QGq1imfh90A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA0NiBTYWx0ZWRfX7M9QkmBmsOJx
 kZPydpEqVsv+q0EQi+fV2GJi8SK+Y0SeQeEwQDvzTX2PBw82alFRlOHRy/4GFCb0NSyiFI0yxhu
 0i8yyxvzU8CoCCfHfpx7OVGRkQjvb2+gCki1EKaW/e9zVsu/fewOMYN5YJqqUHRqNQ+2rlsMGw3
 q415kUvnzvVzO2R6DOvnYH+7N2X0ViypuKeMMSXp2jXBRlM3SgkEXOYLwIp4GoB+vWIFJE0f/iA
 1dObGZWtGLEBl6sJtyESljDetzaIupSsUTcB4KU9dT6zNTsjCMwx3W/92RhVU9pbAzJg4UGFYxY
 /vdL9lisUvbaGB1De+kMCQ9Hv6+fp9u/dR5QwsH2OFZun4UdTlnK363q0WM2+ZoqmwAZkrV1VZS
 2bsVbFOt+pJnMlfRCJhEPtpsrITAw2yt17J73Q4vQlyjMcTv84KlGThEfYX4Q2xAsRM9Q1SQ/m0
 UsLagGmGdT4CrgdfjIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090046
X-Rspamd-Queue-Id: 60949233DD1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272682-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 03:01:19PM +0100, Luca Weiss wrote:
> Add fastrpc nodes for both ADSP and CDSP.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 144 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 144 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

