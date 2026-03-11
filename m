Return-Path: <devicetree+bounces-273805-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JHZIk7WsGnLngIAu9opvQ
	(envelope-from <devicetree+bounces-273805-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:41:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9F525B0B6
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 03:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3AA72307519D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F5BA274B3B;
	Wed, 11 Mar 2026 02:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y8uvxFl6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jpw1kE3m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA41A34678C
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773196828; cv=none; b=KXXGw8+AokD4IEoIBJaEUoVgmBZfXorZJsJgq9j2J3NjQ+cvLnFrsWggZ4bQv9FxGLzgpjCpIM1XgqBl7yyTXMXvyqEMpXjHJurcenLSm++x5xokLqQ83QzqKAHUq50hEpnqjSo9gaOh/nji6QV0Wr+CyZ9OhKBkbYYLaIE5ITo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773196828; c=relaxed/simple;
	bh=ALKIhyzyR2P7aRhrGL/fGQa/Y3A2stwwFfrTkzVYohc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uFtKvKBmPcPBNm19sBplCCEoBCCIDHKncysK5HJo8LRQ+gKOv2GZVEZDgTzpmMvU38390MG9tSjTVBikysRz3t4E1IgYWUhIVTE/0lCJc5H7BPUocFKvioLG4bGYiaU2TaTgl8K0QNzN/XX7EolkTlaj/QcPfkwwyfSx8ySYRQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y8uvxFl6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jpw1kE3m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62AHbLdp248344
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:40:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7IFtWnEo3egCtAamMSi471pR
	KF2Zqxlfyhr7ZeOZFt4=; b=Y8uvxFl6jU/l51N+a3CUg2MaQ3/Y7Rrzv4PIoiwW
	9WLJfAO5km6zp+CN+MToY85iIfQpeWPRvIoNyCyOaQzy9IhUwPFGMt2GFV6pFCfS
	lvHcp/XvDjR0lu5sbEzOMFuh2u71AFxIPqxJHoBxTrPm4NbkpJO7pDNKQCrcqouO
	7HkyqEvsrAzxK+NEWheh4PfdPOwZw1W27A4Ts4p+vh7Z2OLReTmVJ7W+zoP+NxPs
	o5Ja0XfhYyBgVcxQ0n8r5BNEMNCziFMqL9jw4oQXVKNYrMGNCoYnkSk03+i2ZT9M
	dCEHxSOL+TCGEmNBAlSKXvpBYaKMrFzsxvnY8u4rHKqfOA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqv11hru-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 02:40:25 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7de0e161so2000317585a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 19:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773196825; x=1773801625; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7IFtWnEo3egCtAamMSi471pRKF2Zqxlfyhr7ZeOZFt4=;
        b=jpw1kE3mb1RECVccyvDxhTMDI/gTaatHSXBFYPpEC2IkmgCRK4NZu2M0osjQ3vqD/B
         RCUq8tCZHLqaBDFd6Xy38399y4Slff4MyfMDPqGX23/RPz8DqTuaTO+0tnXTd68ZUj6u
         VSvDwd4kTkjg6sCKdF/alaspMsdcH9aaL5zmYTC5Z64NlxO1w5BC02GoW8u49dabtucM
         Wtg1c7FgMJirwn1rSl0PS3Zy3eP8e2Fv4u1M4n87hbt0685OEUwtfHQTtYvye06rfIoj
         UyRfqbAxiolXPwdwD9jf3rZJwk1rUSVmCBuo/agG7jBBkC4++P6rSnUSsA89cjjViXOk
         d6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773196825; x=1773801625;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7IFtWnEo3egCtAamMSi471pRKF2Zqxlfyhr7ZeOZFt4=;
        b=ZSl/4f9xm8syI2nRfw+82Zcr2Bxpgh7VrnUeY9fzuOI4z3cAoHd3BME/z4cHAyseWL
         VD+kXs3rAfSuJ9qaCjvEer9JCZM0MYeOiZiiabpgs6Q/CUwHkS5sr+dOLAIgLGU8z16i
         Q98tC9eVdL9OAWY7J5+/Iy37PhFMeiXX0FW9WAoUhryTTuPru6wcg/mZQm5VRR20etyg
         k5nQkBDLD7+hXDCMoC9N9IiVOTJUQkGtLuVb23Qb7G82zJPSu326WhQpS8mpJKKkLhpz
         p/34MJ8eIn6cJIN9abUo+BjOf0YXlvkMd05QcdJvMevmT1DhCWgwwPN/m2PneGbaDg/3
         yeiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwlecmCm6wyq8d1YYctIvxtNqx3qhyT5s6HEwlKaAEGzoRb7n1+J0otR2Ix049cMepPd3G9YyPQ5h7@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq6jNhXoscJQZTvTzXgNTjO34EO9tayImeZJ28W2+uPsuyhpZY
	ICaDkqjK+8+Y9RWWcuuqYqUvasNwjFIrjsQQQXJ/Ltu1Goi7LoC/PHpiQ6UEtJQQ9JUx6fneYTD
	JJBYt/K3wfO0oyEvc+WqPnDviZVCl6GrEp3VsiFfL2nDufgww6IV6k3NWkZiaXTtT
X-Gm-Gg: ATEYQzzSXIVk/tPSOeHy2kaJqoB/eS3zCuYXjGurAzj5/q/7Y3Bq5pJTNgV6/28ArdQ
	RmmCH2F9xLTNZvQFRXJbmRbkQ1DtYTRJiItwtVCTeoPZBfTcyROxwimg1BdGP5DFWHcl5d5W7mD
	wK1xJx9MWRxwI6Ka/ZjaAPIkJQOkbcaJYOBaPemjTCs+sLy32rrPXjH4q19+B0VZ51ES1H4rc0h
	8J1jBmbRNYUFsowIXSfIO6rY1khtRgNnfJcfLdlly4FM21ZF2dTX/rfD0nj789J5Lftd7H+MoBu
	2rxTcdmgGyYaQWpbNhMtg52j+IcZvRh0Wq5L+EeIT/L68BPV/+cbns8u93J8qhopDoNTca0LEtb
	y4o6yRBdTXr7n2FoHuokJg7OhvfixyO0PRzIELJyPSKTQ+SgLuaUnu0AoKNlU/rywN5i7wsektS
	CpOoNH0Nie+SH4vbBNKv/IaeBdNZc09lqCc/8=
X-Received: by 2002:a05:620a:1923:b0:8cd:8380:d8e1 with SMTP id af79cd13be357-8cda193ea52mr140166285a.8.1773196825116;
        Tue, 10 Mar 2026 19:40:25 -0700 (PDT)
X-Received: by 2002:a05:620a:1923:b0:8cd:8380:d8e1 with SMTP id af79cd13be357-8cda193ea52mr140163885a.8.1773196824637;
        Tue, 10 Mar 2026 19:40:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e60csm160185e87.33.2026.03.10.19.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 19:40:23 -0700 (PDT)
Date: Wed, 11 Mar 2026 04:40:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine:
 disable wcn6750 and wpss
Message-ID: <zutya6ebksaqkpjen4qb62kit4lgannbfbvvfie3bpzbf5cgfi@v5xbzjuf3tyy>
References: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAyMSBTYWx0ZWRfX/UBkJ3gV97KV
 W3L/MTep0XQATJk4rxLSUSBLXCblq3KHkmOfyJKMu1NOMh1Rq7g257ycAVCYa5gJ3COY8VsTrlS
 NNP/XUNAHMAkDhU37eKofW5sO3cxm/i+vlTGMXACb7M+Km5l15hQG+kCgjHGHHqdJaq0NFHycNJ
 +uo0tCkmWPjZSHOmvZXs5qpprJUiZWOwqv/XY1HthgCQ78+P4/VZ6FalLVouZ55jHsuEOEaP/b3
 aZhkQ3w0k/+fK5rcV5FKGL/ZxQN8MxipEFJhU6iehYARiy4CgxUnu9HTCq5R7Qw8+RtlufPXZ+w
 8ijJMli8ICLjVg4oDdt40XOA62qn2iuHb1g2WBbKBmJVBrj+xMLteN9CTgyf0NKglaPLextvT1I
 6fovgZk73DsH+fq3fHJy0PPvUmByJw2Akfho2eKtaaUV1Q2oL5R5kq7MZ8LOod2Quf6WXK/hbtW
 gjMQrHD7dJPt4bliV8A==
X-Proofpoint-GUID: t86m9xqGmppcO0AIcD5XjnwWluwN5YUE
X-Authority-Analysis: v=2.4 cv=S5vUAYsP c=1 sm=1 tr=0 ts=69b0d619 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=OSSaywwjf6zdp-3i244A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: t86m9xqGmppcO0AIcD5XjnwWluwN5YUE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110021
X-Rspamd-Queue-Id: 1D9F525B0B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273805-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 10:32:19AM +0800, Hangtian Zhu wrote:
> From: Hangtian Zhu <hangtian@oss.qualcomm.com>
> 
> Disable wcn6750 and wpss on industrial mezzanine. On rb3gen2 industrial

RB3 Gen2, WCN6750, WPSS, etc.

> mezzanine platform, pcie0 lines are moved from wcn6750 to qps615 pcie
> bridge. Hence disable wpss and wcn6750 nodes for industrial mezzanine
> platform.

Are they rerouted on the mezzanine or should the user toggle a DIP
switch somewhere?

> 
> Depends-on: [PATCH v4 1/2] arm64: dts: qcom:
> qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for PCIe0
> Depends-on: [PATCH v4 2/2] arm64: dts: qcom:
> qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node
> for PCIe1

ENOSUCH tag, please learn to use b4 or git-send-email to define
dependencies.

> 
> Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
> ---
>  .../dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso    | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

-- 
With best wishes
Dmitry

