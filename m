Return-Path: <devicetree+bounces-257643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kByjFMsIcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:59:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id F16A74D5EF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:59:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1C697945DEF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58503D3312;
	Tue, 20 Jan 2026 22:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pd3x2ZPL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LqoYZ/79"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676A034575D
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768947897; cv=none; b=VfXXjVBgeKqwaaXEe34pd95zns0I/sTMt7XDR3+ThLhuLHaySn/VhE9bzH5k2giiA0HxSlHYVaVegW5OeyPvxZF8oH0I93Kfc0cO/AXOJj2/CzL2mTTwWIkwM8blfTTa/NYUfMOOErl2rZFwePdyqSX+8YYQI8SYoP/evIXn0oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768947897; c=relaxed/simple;
	bh=BrSgaNZx+HQfBwpu4sn/zg+03psniiStvPrgOycbRaE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N/5u14YpCJ3P1OH5mlapaiZVopIR/DM+sSxuyuhuSBOYl89raKR/ZDYeRo0k68TuRasi7neCZi0/dr9PSocqKb0xt873FTtxiLHNved/NfFofbIPdGhogo5IBUaeTG6weNP0OrxP9PAir1v4qtHzvF/efQ3/NbwuPnWOBmjTiJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pd3x2ZPL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LqoYZ/79; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KMK6hr428970
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:24:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DeZEMvDv+Ew3EjInq8QMcaKT
	LAuKh7vFSCIGrUk0dNY=; b=Pd3x2ZPL6HJaTTQH8pU2R5z1KGFqbAUwAx7vbQF5
	9bE1RKZkaVNAW6viBIODsA3HZMC+YQWzfZl2SkRGpIT8cTX5CuGtF+OfAA71GoPU
	u959InI1Vc6uGa9hfmaZXJghd0YuuPlE3nFroLYkxME1CBPHidUN+eYRrQ8A9XFy
	7DWIxMTWvr8DonfUnz0HjdsKlTTEADgi0oCjDJbvpXTef+641MOCV+AJ327WSzuy
	UY1vS2GazAHWsvKU7/Is0crXCmdKkZlQz7UqGUMs7S7wGH7iSn1T5NRh4qsZcZAa
	49EGY8qv8dAH0fd9mDJt6kRw9dlPYAB7CmBM1/7W3/SvMA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt4ps2xhm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:24:44 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c53919fbfcso1439646785a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768947884; x=1769552684; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DeZEMvDv+Ew3EjInq8QMcaKTLAuKh7vFSCIGrUk0dNY=;
        b=LqoYZ/79Hxrt+3/KmvGfaTrmv8/HFv+uWuBbDKr/08iDgLrNpQp5KShgAybwu6roDX
         /EqVT/k1NR12Y1kjcjBn03UOaA9kk3rMt7ePQYHnRfCga18K+If3VmNXwqhT89paeFQ8
         LZU96N/J8TLVMJpKu7HYN6vtkvTWvlbCGISsF5/kiOtd+wuRF+R2veAhW+pBT3cVbhSf
         xJ4Wlg/fVMWCmWlnw/FBTwCgK2WZVZ4u29Bn+2vIrioqKaQEUpTKBADN9O1f+NihbBEl
         VogdQ0raFllCn9UTEXUbBGZCdaytW5LoQIWKgGht5nKedZQvNPh7V9kuYAGJffjOWBOK
         vdMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768947884; x=1769552684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DeZEMvDv+Ew3EjInq8QMcaKTLAuKh7vFSCIGrUk0dNY=;
        b=Ftk7txYBhqi+kF82qGabnjdkLTBz/MuNF9lhm9E1keGhsBtLegmWaJ0u745P//Wcql
         OM+NH6FyeASDy8G8Kb/h3W6DX3LVvbGd12HXQ731aKD1Bpoy/6TYkZZY9U+qYQjmGXsU
         tjfTrC+kyfI/1s8fMjIgjR+wLrzy8KpjmTDw/ndievRqblZyggN93ET2SAXDV13BCteH
         adizpcU6I9Mac7KDCm4M2ITWwYT+aVs2fBlYDQcUwEuqQiPxFHwNN1od/3u6SElA4BW7
         uOdBRKHkO/IeIphfxZUJJO+fruGtYhhIYe/7uohNKH8lL1pWqIHWskmmB7BE11YGOQNp
         npiA==
X-Forwarded-Encrypted: i=1; AJvYcCVDwJwwz66fEfmtIBJ2QIy2NZTJedmrByrSktrZR2ssP2TI3MykUQkMLxSidB/9M8zirFX1JInpNP2E@vger.kernel.org
X-Gm-Message-State: AOJu0YxobQGnWkl7n+QGHitLdvZoGtFl+S3Xjffzc0r1BSqX3vrNmMr9
	9+WNNXZboA3KlqeRIjt7PJXU9MpHnPVohFPN9+/uoQLLW0ltJ96jIGqSQElV/if9LLkxGkstIP1
	iP0Yagi9I+hRRAwENUIyeZuJE87mr5wwFVRFp9H5rGVdfwuZz4xNTRnZ2EHQKJcLe
X-Gm-Gg: AY/fxX4i9yQODTJoKRpevJEdbfWP9J3VMAu/g1l3wzzdN0NrKy2KEuGnJtxHzqpxe7R
	W3DZIXLCiR274fdhY1sk5lzT0yeaHPzDbeb3zAa9RAmIE9aVNfDtHGQwWrApWKiGSGKDnN+tTDc
	zIe+49X1vib3w/SWmaos3WXOQalEik0+q/jZuo1aR3EdJv4e0zfbEyUKiKqzrSzAiRSoDEw4z9K
	Zd8h0ITAua5GIUOPmjJv0DYiBbaE+WAV461Y8TnTDow1a6qJMB+cvxJMKLfVdMezvue1DzFYSB5
	nAEZFwhaZ3ZNFRz8leBATrELDT04URU/Hfi0LXY/SDfonOXEgZKXLPXP5LONnH/sx66xsQULGB1
	tOfjTxcm+64sVpcYIjakDrmTsZrox5/xBv6mm+r6uNw3XaCYfsN/tbOHcuLuGJiR/vdiQsvdeUh
	m32ro9NsG27PGKnmck0qzCTWY=
X-Received: by 2002:a05:620a:7102:b0:8a7:2373:1c75 with SMTP id af79cd13be357-8c6a675aee6mr2039827385a.49.1768947884135;
        Tue, 20 Jan 2026 14:24:44 -0800 (PST)
X-Received: by 2002:a05:620a:7102:b0:8a7:2373:1c75 with SMTP id af79cd13be357-8c6a675aee6mr2039822885a.49.1768947883535;
        Tue, 20 Jan 2026 14:24:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf1fdc3bsm4348474e87.0.2026.01.20.14.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 14:24:42 -0800 (PST)
Date: Wed, 21 Jan 2026 00:24:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] pinctrl: qcom: glymur: Add Mahua TLMM support
Message-ID: <c3vo6vuvq2vwwmu3iqpmdpqajtsfdpzyja6toaycxn7gmvjv5a@yqrapjovdb6k>
References: <20260120-pinctrl-qcom-mahua-tlmm-v3-0-8809a09dc628@oss.qualcomm.com>
 <20260120-pinctrl-qcom-mahua-tlmm-v3-2-8809a09dc628@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-pinctrl-qcom-mahua-tlmm-v3-2-8809a09dc628@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Oj0hVEwJTemoXOJZ45Fx90cHNIfORA3C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE4NiBTYWx0ZWRfX/IoAXV7Nfzf1
 2HsCTw6R+oR2HCOvTjWsWsIV6dnu/o9zBpf0qsc3zl00IlYCESz8Zy998HljdN7Dvz2lbajUvzV
 mKFlWxLouLjSYyD99gbdnYT2pwcWdDcB5B8dydhmiHs5qhWwkSd3nM+0Ws3MMj40jW8KRLtOBcT
 QoUVpLFBNY5TmFZQh1z/w0Dt1hSqci89+M3jNl346S4VGdtJCGzUZ8CKlkwrir46f/UMh+nh1cI
 Ap9/uM1ousEzOLvf3wv0jtjqbfqs3YooJqBbsEqLz4ckhys1YaCqyWev8rV5+9v5EEFdcIWG7ME
 awtnhGglMCl3f04KIzxnKKTnGAb7xLFSGbc/jSsuZIRQQhJ2jgXJe9GqSXC8ZAeu4Ec0wrv34bT
 zVxET4gxFEA/8uQQbdeEMuAtZlCPKYuCvhOqPSD52BZ7sSHaGjkNY3+r7PVW4asKAUm74ToB5pz
 Kcc8iXvfBdjjLoyAa6Q==
X-Authority-Analysis: v=2.4 cv=PdfyRyhd c=1 sm=1 tr=0 ts=697000ac cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1AF_eU0i6fnmeDSNickA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: Oj0hVEwJTemoXOJZ45Fx90cHNIfORA3C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200186
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257643-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F16A74D5EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 09:22:51AM -0800, Gopikrishna Garmidi wrote:
> Mahua TLMM block is identical to Glymur, but the PDC wake IRQ map
> differs since PDC handles the interrupt for GPIO 155 instead of GPIO 143
> as seen on Glymur. Hence add the Mahua-specific PDC map to the Glymur
> TLMM driver.
> 
> Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
> ---
>  drivers/pinctrl/qcom/pinctrl-glymur.c | 46 ++++++++++++++++++++++++++++++++---
>  1 file changed, 43 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

