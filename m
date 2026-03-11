Return-Path: <devicetree+bounces-273780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHnHBqHCsGlSmwIAu9opvQ
	(envelope-from <devicetree+bounces-273780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:17:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7EF25A4AA
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:17:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40E16302F38C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C26209F43;
	Wed, 11 Mar 2026 01:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hEQ9cFCc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d08ZXZKZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963A534CDD
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773191819; cv=none; b=YIgfXoLuxrcTt775Nvz1+xAm9RYEriaZhctQ/nsfNja0Kk1dUuj0bXKLoV+1BujDcwavo4wgwl0fdg9WlD+peYpPEBfY2fIJ/w08X5yTGVi2S1FL8hw93YWHXvxiwnGlhsd1GaKihSCIWnILvTd8JxFTzJRNkcRcy5mC8AGaPhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773191819; c=relaxed/simple;
	bh=Rbg6zbLAB/XefCUL0Uc+MBOYdiq8uLsjDEpbN1K8V3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UlogIU3Jo1s53O5cdNCIWIBAyEqjXnbFJyajSSZqty99GxYhZCVEm40tXnO/j6GjLIcX2+bMAqgwGfl1Mk/4NactKspqFOFhS+1VpoUTJ57403RZMBDXq6GKbPe2ns74fIWtvDSTn5xbmcLlnLlaPWJIWzcnZiki1vy43SRkmg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hEQ9cFCc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d08ZXZKZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ANoKjj145097
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:16:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=t7CvJNk94EzJxq5Cw9FP4YCE
	Diz04Ee4l6aQWsWL9aA=; b=hEQ9cFCcktvaTaRn55PLT3hH2ZeljY1EX0Xq3sGf
	uMa2jeDLkrNL4fNSWTpYNHmAoV+Sp1ThqhK6TqTtu01ksL6Tlf0E1MvzGVMjBQVp
	Jws/iYmuR+HJKJB1ZD6yLeDE5/fmjxotcMm7R1TS0te4ZwfVYsxgUHwwZ1/DlSPP
	itWaTUzqpaGsN0Zb2rsrVSFdNj+3Z1QyShd4f1wD9UETEzRaZV9lqmOnpwelxMLo
	0uNNAnsoBWnRGcviDxtgrsMJpb0AMRha4+uNaq11hfxXY1hOQsszsRhczkMrtlYF
	kBOQUF6frJ+a5GrEhF89HsHiWYn4ldkAlzdkaMNKxaoxKA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctwav860e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:16:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd81c571a5so1565713485a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 18:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773191817; x=1773796617; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t7CvJNk94EzJxq5Cw9FP4YCEDiz04Ee4l6aQWsWL9aA=;
        b=d08ZXZKZyNKuajOoau7lz/ldIV2EkdLjdKKFEIZxpwklsi97C0BPkz1yGEh0SFO12O
         wP0tViJJzT0qLcXk/gv2D4/1AnRWL8TJeRVhddjcsu8//3GMmTd0QC81ZyydY1GYYQK5
         gwlYTvLzUmOnLGtkPswsHpKtIbV3jEaldYqNro+fVTn24+C3rib3GTr2rw2Oc+jGbfIl
         xgvgyPppkLzOQb6/oIJFVrlMg1omfSRjHIlDWfHKQDmF6MvjOrqEefbX+qv1LW2ngsYK
         gcPFRN3OhFeaAYv7jtj/33RPjW2BE0iX+tbVo6ZzN4yoyDXpKodp7bmhbIbdH/d1Q+Gf
         NLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773191817; x=1773796617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t7CvJNk94EzJxq5Cw9FP4YCEDiz04Ee4l6aQWsWL9aA=;
        b=KeyGKYTapMJcvC8peqxvRQ9Rb6+JtBq1K4QatDN/bcDDXi/pC1D23wEP2Oy0qSjnwD
         kj0RcEk30BK7jOMmy3PJKOMBu/G6WJdYNE5oHW9xtViUVOvoqNKHEKt4/oBoYXgg93z6
         CrpfGxWws4ZDYx9DNpDqZkIZeo9O7k6sB04fQsV5KaQ+tK6uAzvBJXbzuSRVnOsK/sPq
         0MAsspLoKBUYdSUkisMXOMshixBXdVzKELRixFz8bzXmEgpe5UrnWRuT/yC0i9hkXC7g
         SeitWWmtiJYo/Vev4ufM3WjZ8re11PaBqZbmw0RjG5hUi8PrRlhuHDxz6+3usdfpC76l
         OznA==
X-Forwarded-Encrypted: i=1; AJvYcCUhkc2lANK5th3Ia3sRveeJFY/uhS0LmLj0YPQ1/pnav0fPNeWYMxJ6pn+IueKWQ4rlxcaX9rxYZgYS@vger.kernel.org
X-Gm-Message-State: AOJu0YzvseE12snMQhSTfW9K+9bwsjCmSfVdAmpyMsFwUmK3IEMWIWPx
	bKZ6zpbOxLqmpSZ+pKBOXfWwB8t6WocvbhL2QIfLSgLPQ1hwxdYqISf8bpTNsVv+nn5ZJb3l1wF
	IQ+cwMdPKUO8efRp2Xmg57s0IDZDgmoza8sKHj80pLzLi2IggYqoj3w7CvF1v3/8k
X-Gm-Gg: ATEYQzxlsX+ZLKXJhndMIM8dhlacWJ/xE2k7mGpqEmDW9EauZ2dDQKyy42OjQtt29z9
	wxke0o6H2rm4GEw2AY6x45sWdmV4QMyipBLDTssXaHc7Gdbosgc4JpU4L6Bj2pqZ4AprMY0iAE9
	D6MqWjHJ1D3OS790UTi0BGiIxjF+MVyU0CMn15iRmzlnhj9n3qzoDp8Fga5yHL3H+/bt5jjigaw
	Tjy7tZEqPrUUcLThmiI7/bpELRwNSAUhVEVxkSIst21f4KLetuI8QQwX1TFJJsCcKVxhdvoEMIH
	tcfLTRSlxgk3wHrsdwp89assyloMRN4gfI1KxxVgr3Xte8i3oVlXIViPiWCHhKvJbVyzHw8al9C
	dZ33iQmRYQVev2nA/3+LokannzN9jQlySPKkSK0vlpn0oLL5krXA6QTPmK5YUcqxCbnEdgcCVou
	a6ReEj3X0c9Z2j0rW+O/l/kOahQVJfud7mx0A=
X-Received: by 2002:a05:620a:1aa4:b0:8cd:81cc:5583 with SMTP id af79cd13be357-8cda1a18554mr117255885a.38.1773191816775;
        Tue, 10 Mar 2026 18:16:56 -0700 (PDT)
X-Received: by 2002:a05:620a:1aa4:b0:8cd:81cc:5583 with SMTP id af79cd13be357-8cda1a18554mr117253785a.38.1773191816310;
        Tue, 10 Mar 2026 18:16:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1560348e5sm131772e87.39.2026.03.10.18.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 18:16:55 -0700 (PDT)
Date: Wed, 11 Mar 2026 03:16:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: sm8550-hdk: add support for the Display Card
 overlay
Message-ID: <bovuc2guy62dddbkqxtyhi2bycuz3m2rviowixp4aww2ssuapv@c3mevmxidl6j>
References: <20260311001238.4191034-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311001238.4191034-1-vladimir.zapolskiy@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDAwOCBTYWx0ZWRfX0faBUEL8KMDm
 +KGfxAy12QnAaUUWUEPCF521IgGPW+1Z0iWON1sGRy5p0w8ezdvqK8tjsFMg0ffET7t/a6dio79
 Wy1TkqXzMj/CHAhDyA9LfGyTWejuTR/U4KFT8iGuTvNNVBruxuFVZJ2842k/am4BDcReXKs+ffb
 6BSAVQQ8u9CbBrlPzMYtfl5dDU47XLhcdfy7Fa1sEUlrmie5FEdUTMzgjfc552nczAL4kmXO6qv
 QP1cbZ7+QrqPP4nEbN7MU2xgrmaMYCkY6oXKheICRcEM2HGD7CP/5r7jCcwl/b5pXs5XM65i8Kz
 vY9U7mS061l/1gfJXtXK79FVCcty6HGzHSpQ1FG/tLiEBlUQ8Uh+U0Jo/rE3tVgtOshKvfBV+At
 amHeeDAOFnaBqnzrsfAlcAg7/rEjOrphH3bQPlL/YvzlAOa0yo3Ik53MjFkrO/F1u5hTXBn1uBA
 I8lf0HBE6WfDUBSbNWw==
X-Proofpoint-GUID: CZZQ3JQeheYXTK68-E_STHpjKlyEiHXE
X-Authority-Analysis: v=2.4 cv=K/Yv3iWI c=1 sm=1 tr=0 ts=69b0c289 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=HdtbYBmCxEGgRJ4B5xMA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: CZZQ3JQeheYXTK68-E_STHpjKlyEiHXE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110008
X-Rspamd-Queue-Id: 6A7EF25A4AA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273780-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 02:12:38AM +0200, Vladimir Zapolskiy wrote:
> The SM8550-HDK board may be connected to a Display Card external PCB,
> which is identical to the already supported SM8650-HDK Display Card,
> it provides a VTDR6130 display with Goodix Berlin Touch controller, see
> also commit bc90f56a1699 ("arm64: dts: sm8650-hdk: add support for the
> Display Card overlay") for additional details.
> 
> Two overlays are added to support SM8550-HDK plus Display Card and
> SM8550-HDK plus Display Card plus Rear Camera Card setups.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../dts/qcom/sm8550-hdk-display-card.dtso     | 132 ++++++++++++++++++
>  2 files changed, 136 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8550-hdk-display-card.dtso
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

