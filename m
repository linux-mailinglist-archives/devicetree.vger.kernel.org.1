Return-Path: <devicetree+bounces-273249-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WM3QCTOUr2kragIAu9opvQ
	(envelope-from <devicetree+bounces-273249-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:46:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 32528244FEB
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5D41E3016B1C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1800E3B961F;
	Tue, 10 Mar 2026 03:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E+CbJ+nl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a22F8Eq4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB112C11E8
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773114412; cv=none; b=BG/yT2+RFHRo9x453h24F6DQMH4QR3PjCW7zP9ozMDaQzENZ2r87aYZBBboYl7QI8OZxEpMaAbVqnHWlv1Wgvw7icWH9fGsWz8gyEMzg86P4E/IhUPAPMJsEJ1Bm6MAX3J7tqkrsGXNosrtS2xeFStHjPyNR7h5GLZqfHxGakio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773114412; c=relaxed/simple;
	bh=EuD6g6RNFYBCMCyD5nCeQMTTjq6/Y5prChgeatFAeIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WyLOtZ4agaTP0KQGwhs1uBSntBWi5PwDtE4h24DAmZRNVsz0fnpQJo+NP6FOd/H3p+uh3s2GflnpALy/A73X20jYBybdH9+N0TiBgOmeRdY3pEDIgBaVzkIaornvKiCPDOLoYxX+RrlW1j70CkfZG9ODcusCWMTZgExcvVn1dnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E+CbJ+nl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a22F8Eq4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EK3d2363191
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:46:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1O0unU++X74+aWtoWQlyW8T4
	RoRx1uAMlD6DQ2sKW5g=; b=E+CbJ+nleFqIKvJpALTsC84i4lom6w9vZCob6K7a
	qUJRs0L68MbiYaUgJYhAJKqRpSSGA63OKBE2/+Uk7HxiMbYqZ4Hs70r7F5msBFqi
	gaSm3wvC1rA7aa85MXlAZYe78JqhPtUJ/1ezopzOJMA7acRnmaCKMttydWRdNnTx
	yqMybGRzKM4yhjIgeYmcPvesyCf/ezQQxLWbYBpKq8ll60g0wO8JhWB849bMh48X
	RMQoh0CrIon2dlRWzuf1vjVe4CoKMrIQFpEJsR2tD+AyI1dxlsXLnzgMVhoK+wFk
	DrIXgYTbUl1iGbW48xpHszD9cwSc0vn/DuFhamdi7UK0cg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct032ad87-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:46:50 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94eb847f11cso7078292241.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773114409; x=1773719209; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1O0unU++X74+aWtoWQlyW8T4RoRx1uAMlD6DQ2sKW5g=;
        b=a22F8Eq48EIN91iMQ9+7Cb3JUaTDZiHEXP2CqXm/Vt/fJwvQoNkl/P23BdJ0fiEFQo
         Mqj7IA4AH4jT0DNEyu05pyzLaTtseXKcfhgth+UUZ2WQOh6XnqcdnkAwMwv7MCRLCHDs
         thijcMoxlmPsv3M2c2CE7GJb1fOe+BkxZXjJbfNqXPLmYFBm7kJRrQMHWDeRmcTAFa6I
         ciVRVH1e9IHcuwOcJzHlPvv8ViG0AB6Gu8ECGkk5LWZD0ztpgn9WdtheO3BMUp74zP3V
         pIQKMuZCUU5nIDOocOZURcIELKkAOkOJeK9lUxIZ54u0i258wOZzNyi0+yeZ5v2bbbtl
         7U1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773114409; x=1773719209;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1O0unU++X74+aWtoWQlyW8T4RoRx1uAMlD6DQ2sKW5g=;
        b=D78yrUy4lIAJFCYEMHzQyQs1/kLP1lpCaQWeTtxpHTs7TFu4HXxVaryiwQjJRlMKYe
         JVoQuQykkPVX7PwUVH+aFy9X6cfx8zGhVsNyqox1XGqpRctck1UkwtSOVjNld7de201G
         vEWASdhCIBNUd7W+V3cSr10Mg0ecapazZeL8wjBbDLWVMlVngnoFhrDAomp9FEkBhv/2
         QaP2AKasDHNZUA9oKX+IymKIGms+M0+vBgtsD7ERDl6GSClFjOy6d2kW6OVokZ0X7IOM
         77XcLRyyN3OBiBaHg4DxhveR+uXHsENsFVFX/1MS7aGPgiFjHIBdl7oXLOkfoF8s8Qa5
         RUaQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7JmwBb3ExJsoVKDp22JuJASoZC82Rl66TMokdhKo7QB1lH29UJTQ54rMU9j+QhyRvkJpWR5URySwD@vger.kernel.org
X-Gm-Message-State: AOJu0YxjWQMrAq3cRN7x4w85Mt+Zx4kG8HzlILp5jkXLwSIXDGJShbX5
	DMwd7H+9UVt0WIuIfmi43GSK+vIs1g3JVgAdBkBx37g9K0ojQSVNIICAKJufBKbOdpRLtBFJ2PQ
	v1hz1o0I0F9oFbfpg66lLyLqFXn+OrkD+bpQJzW3ALPw4p+LhODYGK96YyyclsxRi
X-Gm-Gg: ATEYQzzJxAChjvL/XedZG7x3QWYY5fhZ2E09Muju2/+joNW7vp1o22TrhXohQHJzZLi
	NJFCrPmVOFlrjmEc96mUUtuh+BRy35w65QIm0E1ltpmAEpciKgSqh1kg/hBRB7wIsO/j8DGWyX/
	zuAtgg5pdRfS+FpMP4kgHMBQo7RChbNmtq3x+DNNFrmiyz7YREli0DSqQSf8gA+mRq+urCcjVCk
	72rCYTyZj3XIZKfJdV4rCsxiEJC4a2UrvqImkfYHgxfK8oB73M6twrUdi3fKxZETFerJ1vfpUzs
	woQJudWFY0TD8tAf56o+lkbFD/ezQTLX4Fb8t/v9OoyjqGlJAAo4ql1g/V/pDU3suyiphI2qm8E
	faZToNG1S+1dCdJBN6cJZ8f7HA0iE2ww/1XwgjFbxGuNuAgnsK3xTpArRA+/DfK5aAhY2oW6xfN
	F5H7Teb8ighKIw1uPqaunvqF8dF8SALuRnfHs=
X-Received: by 2002:a05:6102:54ab:b0:5ef:b0d3:295f with SMTP id ada2fe7eead31-5ffe5eba430mr5759730137.8.1773114409164;
        Mon, 09 Mar 2026 20:46:49 -0700 (PDT)
X-Received: by 2002:a05:6102:54ab:b0:5ef:b0d3:295f with SMTP id ada2fe7eead31-5ffe5eba430mr5759713137.8.1773114408786;
        Mon, 09 Mar 2026 20:46:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5cfa1264sm2509461fa.9.2026.03.09.20.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:46:47 -0700 (PDT)
Date: Tue, 10 Mar 2026 05:46:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sdm670: add lpi pinctrl
Message-ID: <o6qyvhcmozixpj6yph6dfd3ddzvv77xgx73setsuq34hnmirf7@ovnrmqmm6liq>
References: <20260310012446.32226-1-mailingradian@gmail.com>
 <20260310012446.32226-5-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310012446.32226-5-mailingradian@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAyNyBTYWx0ZWRfX0TkxVrK5Kt24
 +gKn5HcyI593zYsvVucUGwgEbmkrFu8F28xNuCS6Sv0v179SX5YZhIGn3BpKsxExIPQ0L/DDXe3
 GA7sPIyIx3k6d06WxF/hq9BzUG2fHhvRKAvWJxiauFVpEcQPh6QB1LBe3Hj8n0877hgcAM06iOs
 F7uJX31wWeUrFSIpDhVmre2kejQUxIZpzoOWpwxQKNj3GQwX8lcUxPA+bGq7+Y4mYgWqpTqnBH+
 ZaA8ce34Zr0FLo/JeudyqImZw0tlSSB16UHaF4ThxeBLzjCKvL2Ul1Q9gKFHFuEbjESmtMK/wQW
 TTzq/CmhhV3ZhS3T9ulrQxFRXo2l3wKFwBXppU8cOMdiEFQOV2yl7aa93gwwveTuva1Fs++OCew
 wzmpQgF3DluIp1KyPLD317XzLQuRlnJ27hGwDp08LUHEtMH2SOxWjB9bMy9srv3A5Jcv33qM5Ly
 G/okZZqDWCFZKUXFaIw==
X-Proofpoint-ORIG-GUID: 9XV-1KWHfGkaPAo5gZ7_j5SYWRDAbJ6J
X-Proofpoint-GUID: 9XV-1KWHfGkaPAo5gZ7_j5SYWRDAbJ6J
X-Authority-Analysis: v=2.4 cv=WtEm8Nfv c=1 sm=1 tr=0 ts=69af942a cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=TIhwJpUIZt9fiVsXp24A:9 a=CjuIK1q_8ugA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100027
X-Rspamd-Queue-Id: 32528244FEB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273249-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 09:24:45PM -0400, Richard Acayan wrote:
> The Snapdragon 670 has a separate TLMM for audio pins. Add the device
> node for it.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm670.dtsi | 73 ++++++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

