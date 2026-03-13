Return-Path: <devicetree+bounces-274817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIKjIjpis2lcVgAAu9opvQ
	(envelope-from <devicetree+bounces-274817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:02:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F7727C238
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:02:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0AF5131A8456
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F981214813;
	Fri, 13 Mar 2026 01:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j3ctPEEZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kh0nUhZ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21951D5146
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773363624; cv=none; b=ACbyce5QRlQReMlq4nRM6aDu2ufU1LgzHhhXmPMw4UFnjGBugL1uNZV0XzpDbwdXPkXDFrmIj9+o+rVT1uAF1G6aRt2U/oMUvj7AR1lT93bY2pdj29pcvNb5cOStrM8CBQCOqfLIDArpc4PPnmc/Xu8deFIvljNXu6QjWkx1aIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773363624; c=relaxed/simple;
	bh=FXQfJcR+VBdT6Df4JpN0DbxF0y4BA+diX8kArJlf1/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DpDmVc2MPiyjGn9pIhBZn7oLqTsRIcAEPJyd6sgujQfQflkyPfrS0Q0iqxW7dof1vnREaK+Nyas1ZP9UDfcOK8E/Mhnc4tKOzjCMhD5xtV5mdFFwSN+TukFuDa5DuVQogyGRHEuFArvZIBTY2LzBmdJo6IVYyF5MhV27ro0V/Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j3ctPEEZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kh0nUhZ9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CIjkTE3137274
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=umDVeTcpAWbzP3AnJt/b1Qw3
	MTgZdpp50Uw96KR4UKE=; b=j3ctPEEZ2FYcTTo7fqN8LwYXG9Mvg58KFTctyaFz
	goCDA7M80johF/r8lcYtiOrRrdo+SdLNSgdexUdhC1V89FoHsv778AL/CR2HFcgo
	S6ifn4F5uqJ8DBML8lhW/Qn6IPaZ60sJvLu8RCbpSDI+3fxfzueEfKsuUe/iodQy
	CmmQk00ek4mdpb1HQ76wbY4w1OMymzHRnnterk0WThA9gBSpzlcFNTDxSNSL7F5f
	9n87E6IT/aWqqIVX+OOuxuqDpniqCb1fzMUZJErMG2Wvv++a94wRR+s9+9liYB3G
	PTcPf4ZfZc7Dom9gPW/IkQNp7i8y0RtYitjKvbhChqqtkQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wbxuj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:00:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7fc27cf7so891970785a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773363619; x=1773968419; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=umDVeTcpAWbzP3AnJt/b1Qw3MTgZdpp50Uw96KR4UKE=;
        b=kh0nUhZ9Z135fRUx35oq0pdBw4G/cqCvZ0p9xBJZKvofig6sfgYI103QDs3n2RgWBk
         0AfmANZfYmFJiEX9UKz6BYqLuvfQQVxqy5AQJ9cbD706OKGIFvVoXgH1V5Uz6KjRjbik
         m7oolEJcDm2MpdRSjnPx2gOE40LCSZN9bvq8aw+7Vws1Mv1JvedCWxlIJDTcoC0Z+Z52
         D37CyJ2UgZHSNMt9wG1LwZpS14ngAxWJk8jelta9/NJGGU3uGYT7mUb9odsekvfIVyzS
         w5BAFi+/TmLb9GYr8NTdiQTWo/LQC5aoHy0YLhrM4vipquupd3U+G3z0u8Yti+045lZq
         grhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773363619; x=1773968419;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=umDVeTcpAWbzP3AnJt/b1Qw3MTgZdpp50Uw96KR4UKE=;
        b=nrBDuAqHwy/mLkMO7hc8kCiM6udhNZoKrXz8PdrqH5TEPV9ADApqt23qXIMZYOn7bp
         j5f/QfyN2bOo/g5DEWFJ5p2MEs90R5g8HDkxJePd8ldHOEtdIAqhQObesOAxOnO97gWd
         ni6qiD8ZJpYfzeX6tB0VkDFtNnGdymr/gfowM0jpT4hWHVCD7oFOI54BSBxRje8O47b+
         c546oQKbIdQ9fmwPcB88RTECGFvcXyvFwBPr3oOuFOSaSm+wUEeIoCVQH5InXPzpRYSD
         3Tz8LFScNa/iatLKM1B22hCfDOVSRZzsBWv762Tjy6A/oNdMO7raGffYrqNZjDEK0UlM
         0+UA==
X-Forwarded-Encrypted: i=1; AJvYcCWwiT95pDTj4L/ysM9lTH3e/cLnPMjAqA26mcVYU6/Ico8GL2G6bxF7pq+i2ezTwKy1aFNWNtmR8Nks@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2gOTOa/ZvzhMrnt80LD29nM/a5YUj1pUjGSSbNw1jaO/hHx6H
	8YyLuKAL/EtCbk8ZoQp5fMNM63iEqf6i4ypvIL7v0brSP777xZt8hzy9D1pJnyLsrx1uOuUhpId
	R0MGVB2GMQXfhvskds/nUS4GyMYTEBp24cKKcaJVF7/8tzJ35C/BlPQG86g124Rcw
X-Gm-Gg: ATEYQzzga7WmdrYrR4nd+yRVcLz5e+8IX1LjGxFUh0AMuq6pIsX37oIGNW45dtl0VC3
	IXyhDXB7iJdqBYIa1iUOmdwK+TPkonz2OhX9wfoKtUXnEhc5Hia9hMAQ2iaqZL+f2YH0cFgMTMZ
	RnAPK/eaaVCF/owWl2fJih7Pv56OfsoE2S9wKfTLxBXEMWQ0e4G9Qr9Sj0DTWcg53o7K6j+RZ95
	K/kXR13fNQuxQRKZSsihAcqRJL4gCVgM1ayy3dLeaylIaRyrx9pWJM1R1Q+Lp/KgMPGR/RMmdjR
	J5EnureMQgDvSqZBrGW44m5MkzJOz4QH49TT+kaMqCUJH2qVlYwoCN7slDClxdDvHUA1/IE+jEO
	noI4MJCcH/YxF7pcXw97et7eVxs6iTw1U0n9CbzZAjDw7Nr+kHG4wYFcyG2i9NQIN2GEe4t4YKK
	63oWBWi1QQ6hrjZXYzgsqZkMw75K/6N9wBgYE=
X-Received: by 2002:a05:620a:2954:b0:8b2:2066:ffca with SMTP id af79cd13be357-8cdb5bc5d2cmr232025585a.82.1773363618968;
        Thu, 12 Mar 2026 18:00:18 -0700 (PDT)
X-Received: by 2002:a05:620a:2954:b0:8b2:2066:ffca with SMTP id af79cd13be357-8cdb5bc5d2cmr232015585a.82.1773363618301;
        Thu, 12 Mar 2026 18:00:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e6dd87sm11964741fa.35.2026.03.12.18.00.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 18:00:17 -0700 (PDT)
Date: Fri, 13 Mar 2026 03:00:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/7] dt-bindings: remoteproc: qcom: Document pas for
 SoCCP on Kaanapali and Glymur platforms
Message-ID: <xpgemxotxbybecseyvyuu4v2m2yz2kerwo2tf2xvi7xdda6w7p@ezvoc47pqopt>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-4-0a91575e0e7e@oss.qualcomm.com>
 <oqvq52az6iknhg4negqaprfsx5dfo527acoeas3tusqpqvak2c@wrdmsydyy6ns>
 <20260311-unique-daft-nightingale-584252@quoll>
 <tpoksnga6erjhoh37vohoqw32fe62wbhjg74tvulgyn4jt2nbi@kamwahlyuqvo>
 <bfcaf538-470f-4766-8ff7-122901872a75@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfcaf538-470f-4766-8ff7-122901872a75@kernel.org>
X-Proofpoint-ORIG-GUID: xGqUN_tx6bD1H-AOrSKpaYSW3pXSflhR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDAwNiBTYWx0ZWRfX6+1m9u63D/Ue
 rPJeaPxvLVxx8IgTMVq21EakXUNiKOZzc9OXsfARdh9wAZMah+yfwjSqLQt7C2K1JJ7Hsee9qfN
 mM9cCg1frs6A5Qx0cy3U4NN+2LtJZz3O96hs1LqeiiOubTqN6s0M8T3JONyNRNIbNfHtTy+Cnol
 PfLkD9CBQSrIaKBT9BCfhLVdXV4pn44h1XRiaQ+yiBMwer40nEYOJw9Lrt95aMHXtGL5gzTM9eF
 ulqCSY859YROuxhrCpkv0tlxhpaROx09VDW6uixBG7sCgNPoPXsAYKSJR7MAvZ/WBbWk3sY7nvv
 LppQY9ToGTx8XwQFR0Wt8UAAIPzY9TZ4i3x2LBPgCZee2O9ScHMXFivJftq8owe1UlO8ZgIGXpG
 +A8eX3fw2/skgmH3uLfH51O5pclaCXQVTQqNU6tH6/7c+B2gg0fBbK2iBs3clroPjppsTLlsk13
 A1s2DPAeLucZYt7P3TA==
X-Authority-Analysis: v=2.4 cv=YucChoYX c=1 sm=1 tr=0 ts=69b361a4 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=xUKN_BiNDskXMR9hgyUA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: xGqUN_tx6bD1H-AOrSKpaYSW3pXSflhR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130006
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274817-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E1F7727C238
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 05:08:46PM +0100, Krzysztof Kozlowski wrote:
> On 12/03/2026 05:53, Dmitry Baryshkov wrote:
> > gn Wed, Mar 11, 2026 at 07:26:38AM +0100, Krzysztof Kozlowski wrote:
> >> On Wed, Mar 11, 2026 at 04:04:09AM +0200, Dmitry Baryshkov wrote:
> >>> On Tue, Mar 10, 2026 at 03:03:20AM -0700, Jingyi Wang wrote:
> >>>> Document the component used to boot SoCCP on Kaanapali SoC and add
> >>>> compatible for Glymur SoCCP which could fallback to Kaanapali. Extend
> >>>> the "qcom,smem-states", "qcom,smem-state-names" in the pas-common.
> >>>>
> >>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>>> ---
> >>>>  .../remoteproc/qcom,kaanapali-soccp-pas.yaml       | 154 +++++++++++++++++++++
> >>>>  .../bindings/remoteproc/qcom,pas-common.yaml       |   6 +-
> >>>>  2 files changed, 159 insertions(+), 1 deletion(-)
> >>>
> >>> With all the changes to pas-common, what is being left in it? Would it
> >>
> >> You need place for definition of properties - smd/glink-edge and
> >> qcom,smem-states. The latter is actually not properly defined in one
> >> place, becuse there are bindings having  it but not refencing
> >> pas-common.
> > 
> > So do we for schemas definig smd-edge.
> > 
> >>
> >> It can also define common order of interrupts, but as you pointed out
> >> this does not work for this new device anymore.
> > 
> > Nor does it work for SocCP smem-states. I think that having such a
> 
> It only does not work in full constraints, but for defining the type it
> works.
> 
> > pas-common overcomplicates existing schema. What about splitting
> > qcom,dsp-common from qcom,pas-common with the latter keeping properties
> > that are common to existing DSP and SoCCP, while the former being used
> > only for DSPs?
> > 
> 
> What would be in the dsp-common then?

All items that got spread to individual DSP schemas:
- single item in smem-states / smem-state-names (and maybe the value of that item)
- 6 standard interrupts with minItems:5
- XO clock

Ideally after this we can split qcom,adsp.yaml into several smaller
schemas de-monstrifying the if-pile.

Anyway, current patchset has another issue, I'll comment in a minute.

> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

