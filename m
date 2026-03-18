Return-Path: <devicetree+bounces-277261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CI7LG3awumlXagIAu9opvQ
	(envelope-from <devicetree+bounces-277261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:02:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 417102BC8B7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:02:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4ED031AE5F3
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A51D23D904B;
	Wed, 18 Mar 2026 13:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E3f/Xky9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FphQGdJY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6041D3D75A2
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841929; cv=none; b=inOKOEFiFeDUOlVipFRIl9jPHZOWh9D7YTpDbBzAiQPgw3u1oa9Z0lmWvqRTLmn3GDmwbSw1UHczHQEehrWLlJ5AS10d6tgON16lHC0T3O/GrsHyYmMzUybj+miwlhbtP/2YCK9qe69HyH2frdgimDkoIgHZZFQ3Pn4tNVVL47s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841929; c=relaxed/simple;
	bh=5lGcFECjlirgOLotjq12UYVAQ+q4pmwvjctjKuAVe3w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OsdFRAIZRVBLaoCObu2in4OLWLHuSRJQ1/bfOmDUBbzTeLqzMqRcnoPZ086pIgDQIiAM0vX1FY54Uch2jJoxwFLEvY43kMQaPs4HfBQcuuRI43l8TN71NXdgisE4e0ZnjpYzyTeQidUReElnTux+OJUpKh7ZxkKmZw6oLks/ALo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E3f/Xky9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FphQGdJY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IAi4qa008787
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:52:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5Z8dinx8Xl/BUcqhfmPWtdPa
	vfkmF9tTU6QfvQAr2Ag=; b=E3f/Xky9VJS7tqy+PcfgXVF+qTpw5+UPA811JcHD
	GmazioExvtCyZWg2PwUj6SDb62aJwlw6CyWaN9p9+/r5JXbcu+djiLhepzbaBagJ
	bl2xSXAiANLRawDNlK+eYmnXeVtuIiqicAECwhMnNViRW3dVTmjp2L7+Hn/5hhWH
	jaL0EzY5PXL6/XdlAc1qHv8eUV/zmDo9gQcy9trKxjUscsfIi0cfssUbAm4yuedq
	kaJ9D9XcBGEIW0A+qXbOKHyRE5Ny2ED/qtLWzmsBWU+yDzTqLX1jv4OFb0CYOnXw
	TqmBo7/eJsDGRNIbg14OB/aAZvGDEzt1eRpVJS+fUhkJTA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytj50n78-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:52:07 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-509162597f9so142504791cf.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773841927; x=1774446727; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Z8dinx8Xl/BUcqhfmPWtdPavfkmF9tTU6QfvQAr2Ag=;
        b=FphQGdJYUOzVBMJKLSNrW2Oe9IIfuk3BZfpKlwyZdds/wBTlqt4kAj9QdxCZUfd3Ka
         h6VCDEvIzpkdBJ9kTJZK4ce6SWxw+HciqPKBQ4IYXEI1Dg51/o3yXdcj2epFa9UaPqSi
         qAiUJEt1XNpPYadrAVJsW2Dhyc5Iaws7dY7L1//GlNnmToYE7agwENcN3mKa2DHa/tmj
         SavUsKBgLA8LB8IUTis7Ozqjaej/4ohSDNW+Wgxn3WT0iDlRayY0E6xrwnNRNCIAoGr9
         fseBP2czsz+jZtJLzDVwNsdeCp6XvFTe5lXG13o99rLBcDygw61KzkgF5Q93aha17fTU
         4OYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773841927; x=1774446727;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Z8dinx8Xl/BUcqhfmPWtdPavfkmF9tTU6QfvQAr2Ag=;
        b=kc3IoyDb7vZMrtzN+v2wUzj7KwkAbBxGSRgGKMYJotqst0GKQ+IeD3N+12d6enKQDL
         hQQqcHahPDi94reWQuXTfUPnrhDQM5jxiZXCOE6NL1cdToyZJ3jLdalSu8EzBHSNJ3JP
         OAp7VB6mKrR1cVk/0k7JTTD98xAZUHMJCqiPmRTxYLl6m9zeK3de76OGEDv4dpr1tAvT
         JklhOSHNZy/5uy1xnsbX+eOjyq5U85H37KraUHXrhhgmIKtCZ4El7YDvg63IGRYCE0bQ
         VVmbWl7mIEf/e4KzGT4wqd/j9XOGS6MafBnBUOFdvZLaCV9c5AQQFIzzSevm+Y5OH4+A
         ygFA==
X-Forwarded-Encrypted: i=1; AJvYcCXmIGmrrgoTE9fDN3eyIirkFuqkvcH5DumRRHFk63whYMuV8egTgEW9BFZY1s7XVPBVyRWG9/1s+gjA@vger.kernel.org
X-Gm-Message-State: AOJu0YzEUzcCcfsxJ3Ke8eFx0SH9Baoo+LLHpqFNeAiFuFfOgD8+oqLm
	fN1qyap99O3xF5U0XJ7KvNJ8X8THMkVIvBSYrIFmVu8U3oDQR8+o5jO/zyFbIBlsfPPfoNrdhT/
	15A+wZPKGGPmZuGqQgrmAw3xvfwHVEFaR7ALULtWoKzQq1AbAmq1J5QACFVnhWGQ1
X-Gm-Gg: ATEYQzwYtNFo3dsm8tC6gh9uUGwa6Vy5PsLTR1OskDcSzmU/qgmQXiKTib5UWHaJyiO
	J+R3mQz8t7TXHNH5h8A9BPaEUGPh3sb1ncQhy92YnrMDluKcQ5GGHutCw5o6XJd8BbR4OzwuelF
	UVVaAy44X9PeRUj94vuwn450Nph6akDgvnwW090MbPduEA2vJj4QAT1OCt4d/B6vyW/XOQmH8fa
	I9I2s8y6bL0kXImn8awnaY6rdJN7LnVx3tgjv+rdHqU/wjU8Kp/Yh/6wqUpOGdhBP4h4DHwGlQX
	FK/gRYWDY1IlbcMRY5m9gSY9l4hJ9oJLFIJApPZ8fheVMK23JDEcb+bmGXjfTDZYS+alubdFUOr
	/e+vQHMIbzRQL4mo/GLrFGgwzevYzDCI9iWD2FuIh8gmxcbzVC1yKK3BYWRq9qa3TW25p7yKXya
	g1ad01B/4n8e+h0S0zIKITcTzXQ8jQ8PCyLYs=
X-Received: by 2002:ac8:5a54:0:b0:509:4294:d18b with SMTP id d75a77b69052e-50b14887770mr41778721cf.54.1773841926870;
        Wed, 18 Mar 2026 06:52:06 -0700 (PDT)
X-Received: by 2002:ac8:5a54:0:b0:509:4294:d18b with SMTP id d75a77b69052e-50b14887770mr41778251cf.54.1773841926398;
        Wed, 18 Mar 2026 06:52:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c2c152sm550302e87.23.2026.03.18.06.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 06:52:05 -0700 (PDT)
Date: Wed, 18 Mar 2026 15:52:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com, pankaj.patil@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Add Mahua SoC and CRD
Message-ID: <c64tkkmgnvbkzpwheyid2m3gzere57p7c2aimzixau6ckz3vzb@r6cwfsxol3yh>
References: <20260318124100.212992-1-gopikrishna.garmidi@oss.qualcomm.com>
 <20260318124100.212992-4-gopikrishna.garmidi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318124100.212992-4-gopikrishna.garmidi@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDExOCBTYWx0ZWRfX1vWgigLDsHyW
 kZlo2Bf1+CkDzgy48chUGIy9WSAIO5PP6MzRzCrJ67VCGePbb8rJHSeqCZ8RvX4MAAA5nSflzAR
 gOQgcVKOcKjYl+QM8lNN4xYXhR4vcEpLiSvXHyWjOOd5qG2wuUpG0C6iY5t8dd10MXgXP2CKdAE
 ZD2WN7KXd7XGaXAFqbZ3ti+TnQ4Hn0cUXFIYA3IIeiBROwaNPrshE5KjXtSxVckbbOKTcwMHQY+
 nf3L4mrCcxHOXFv+Bk/3H+fgEO+iM5cMOjS//vimhvl/U5BOsxt9O1scl1/8EcBlz1KsaWNtrG1
 iA92dDNfvWzYEq56CF1g361YudOhzJYtrcb9k2AW8zVJWCmzaODoOt3OAdhRreu1a9Gpb5RDok3
 5qBr5yeAtiwxAYZ+96JJX/4Au7HC5y2CD2SA8SjddUWmlHg7yHx50pbPZvfWRDAe4/EqAxbQjdL
 PvID5s4C/rivFFMb2Kw==
X-Proofpoint-ORIG-GUID: m7ohi-tax2geybuoC_dUQHKeitFGxALw
X-Proofpoint-GUID: m7ohi-tax2geybuoC_dUQHKeitFGxALw
X-Authority-Analysis: v=2.4 cv=dM+rWeZb c=1 sm=1 tr=0 ts=69baae07 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=Nb7YlQY-ZbWq2oqyhYMA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180118
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277261-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 417102BC8B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 05:41:00AM -0700, Gopikrishna Garmidi wrote:
> Introduce support for the Mahua SoC and the CRD based on it. Some of
> the notable differences are the absent CPU cluster, interconnect, TLMM,
> thermal zones and adjusted PCIe west clocks. Everything else should
> work as-is.
> 
> Co-developed-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile            |   1 +
>  arch/arm64/boot/dts/qcom/glymur.dtsi         |   2 +-
>  arch/arm64/boot/dts/qcom/mahua-crd.dts       |  21 ++
>  arch/arm64/boot/dts/qcom/mahua.dtsi          | 299 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |   2 +-
>  arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |   4 +-
>  6 files changed, 325 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/mahua-crd.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/mahua.dtsi
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

