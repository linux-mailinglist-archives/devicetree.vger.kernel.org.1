Return-Path: <devicetree+bounces-269513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wK/MNpa8omkS5QQAu9opvQ
	(envelope-from <devicetree+bounces-269513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:59:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7001C1D99
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8389302CE9F
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 09:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF7F3396D3D;
	Sat, 28 Feb 2026 09:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZJeE+RtN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dTmaxdAH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E941D5CC9
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 09:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772272788; cv=none; b=OPbFTuLZlIR636v9wkL0+e2RuHn+7DZ+bQxfZwBt7yOuAmJskkh0ls/3lqvheC5XDoOLY7uSft+OpVLL4FGezlmtVwnoAMVAy9c+jhgPIEJg2E9CE+oDO2trHN2xjUJhuzO3e0C4NxkJYY0quAAEgBobnpqOxd3nUNyGbAVDtbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772272788; c=relaxed/simple;
	bh=lJ0jJU4tc7DuvZ1i7dNHVS+DrIzvVhKRJn3GLb3Tn1U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T7ZOpGUYM8KjR2ym34AUzsFJzIsyiRnuv0p44Pjdu/108Nuh5eVKD0qxpZmK4UpN1xF/fHb/r6st/bAQpidLXjQO7ZhPnkJ1+FogJTOSc3cJ2HIY6t5qSvOIYwjqrc7uW1IZxM0aT57uGMK1XM1uYl1hPYHDAMeYl8zUhsml3b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZJeE+RtN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dTmaxdAH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90AEj4137605
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 09:59:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oeUyHl+z+24C+mBajKJ/XFxOl45rVre6JxTCTLkK/jo=; b=ZJeE+RtNNCCleEtV
	7XKwcIjJ+ZFq9TNiqyPv7kT2DmqXB/ka2Ki0KREGjNabQBFQdhI8ykcz1PO1orsS
	4MWL3Ycspoccda+v2kuALOOR2mM1l8eTxWsjt2ZCnjlkc3zuKvxJk7VviMR+crAa
	UFgJVMCUbASkjDu9ACwWd4Mz1S3l2ldXgmH6Tg766S8B3mEaDsn+GVGCKAezAgBj
	3lPanOjiIDZhYEhFe6F41EBrSwmX8IlMT+fIx7m+7gSAPJzECmdBlJ8k0FgGmDih
	A3Nza6I9bwsrWW/J8C+KWYqS+EgjDY0IK02djzV5OKKyQsHU7wSbvHx7P4jxweyo
	dv4LzA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf8gqcf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 09:59:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3d11b913so2376645485a.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 01:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772272786; x=1772877586; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oeUyHl+z+24C+mBajKJ/XFxOl45rVre6JxTCTLkK/jo=;
        b=dTmaxdAH/vtjMH19pCOlP6rqjXQFTPRNbASo1Sl+vxrn+yLh5V/lVc+bXABsd3p+W0
         2Q6aZWOfzh6Z+RMhIRksbNqEiyORNNfew8pDn+SgbnzAxo/rCeWWDhj+yDy4I/BgoAQV
         7d5AiyGcoIJqaf5N+PQSi9+vWzfpXO1wUJHVhRF7pMvOhqQM1BwtVBF0kRNU8scq+9Oc
         P7my1Z8O+YuisPoBMKkOnOIkVXKOEgqQiH9fP+o++0HET+l6vQkQwzrXaaOoQP8Om/Jp
         mGQD7xsBKAnmTuqR6b6jV41gMmFx/mhmLcaOUDOQL840LWud0Hc4H8J5Eqj18pb7Drgz
         vhXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772272786; x=1772877586;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oeUyHl+z+24C+mBajKJ/XFxOl45rVre6JxTCTLkK/jo=;
        b=OvcMkUBhH0SOfh7mBluo16X4tfn+05e+1RG6RRDJTkXbR666cqHrBbELa03A2L49u6
         nFzbBddEY4FOw3pn8nvGEHHN0Ca+I8MwyKbwDISGQiSpKFbVmBx6bxfIamwtvukAZlJH
         jd3lr8JmHNJZNX4d1asl6y3kyiYFASqrH0mWJzZITdqMFqyPihB6Ala93AvpaxI0F3uU
         j7uBOwNnCRHTQb8OFE4qL+0aC1BxB4N9L+CjS2iJPM8s5DIDqDJ+Lrpmrak3vO6HPEzx
         RyZhi6p/kZWEPtZZNZuk/LH00TkTfLf2OeKeo8dALnCYyUhs7WVkhDThGi8V67EhHGtc
         KtWQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8MQLD56laHYFjRAfFkrSqlAoLlTVHRf819+El0XcghJP9JbDruJidoXevNv0VR6vSwZxmjVbWJFkO@vger.kernel.org
X-Gm-Message-State: AOJu0YwJIYqJtQjPu3ik+SQDUNzAC7yTxYgnEsKqMVyZObWs2IVLhsU2
	JCm5b96fNhiFu8Ck7oS1UZFcmkCsOrS98aja3LLAHu2OrHdBgyedfht/CZ4v/rfRjvayWQw/ZZ6
	bQIdeXIrcihlnWIYK56eZw6XI/7kRe3EDGUZK6oxW+F8yyCeee5mWBz01oqWEE6KN
X-Gm-Gg: ATEYQzyEFyfBmviK9MBX3JHm8YOs+Srei5Pv9CCn5Ooa4ovqw05AgpDeWFVDGaLdeHM
	bq6NGCOb6VMGCooLwZTpAExTDDwUUzdbR8HqfOos2ToPAtE0vhMLSZR5SCJ6Oo7Js3k5oWoS47Y
	GlT+NehHurak9fNdGyIG0AqBq7Fo6eI9+gqnLl+LnRUlXK3LUi9AbfZ+U5n/Fo82mfuNZbmVD7s
	s2EWH1RA95PKbSDbWkW62ytNE284q1XMgxgd/c1NuWqo3Yx0BPmpMWmQTpNLIBSDdlGylU1mbrG
	Usos1Y9AUCHy5PTebltEK+WYJ/dh38KuIXK0Zyyjz2GuIhW9LShtvT9xHS6Z+oPsoUPcmsFl3sZ
	lFfJnKFhGGErxJFSA9ZH05Yug7kOH31Zy5J3h5yLWs8vDv5pRWlIAwKzW9cgq/davG04uNXpVUP
	7NTW5Z8NC4XztmKJH+ST8se2UAChJrG0MehR4=
X-Received: by 2002:a05:620a:280d:b0:8ca:4288:b179 with SMTP id af79cd13be357-8cbc8dc28c9mr707121885a.5.1772272785801;
        Sat, 28 Feb 2026 01:59:45 -0800 (PST)
X-Received: by 2002:a05:620a:280d:b0:8ca:4288:b179 with SMTP id af79cd13be357-8cbc8dc28c9mr707119685a.5.1772272785318;
        Sat, 28 Feb 2026 01:59:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bc9fb4sm481670e87.23.2026.02.28.01.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 01:59:44 -0800 (PST)
Date: Sat, 28 Feb 2026 11:59:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: lemans-evk: Enable the tertiary
 USB controller
Message-ID: <uwmxnps6b3przlwzoapf4lfmtrhslvvxikiukeoy3edzs5jjd7@m3hcnyayqvmq>
References: <20260226060835.608239-1-swati.agarwal@oss.qualcomm.com>
 <20260226060835.608239-4-swati.agarwal@oss.qualcomm.com>
 <ogtehltf7onbtwnn7kvkjhjyfoh4zhjltgzq4gf3f3lwoyhkmt@le3lrprfdvgw>
 <CAHz4bYuP6KnfEwvEucoE_50G1-CjhMHQXhxbK+jee1XyCKJDDg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHz4bYuP6KnfEwvEucoE_50G1-CjhMHQXhxbK+jee1XyCKJDDg@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDA5MiBTYWx0ZWRfXzEKt4zP8KnYn
 Df+fb86mI5Qa02hUG3fPO84b7K2dj4XVLjc/zMCgiKKIQ87ucOC1mxJj51fWBA8zz6bpbDjNzrj
 3ZNj/pgLdl+hcVb/c0h8x2/qdsO5GPa9QNmvyOMyZjaRVDZCAL3BjAA0oS3Kro9/uYyYuYVogdA
 0hLQXIL9lV5YC6F2nNELC26utmK63d0bs4Z3v1yhWoEOJ3SHGLf4iUlGGVmoQd7ckOP9YgWSlqA
 jRZMeyc7GHjgsEEJ0DQCAnJ0x/aui3kwuT0/lv8PtPO7tYSxhzGHmgXvr8ktajq5hg3eV2RA96I
 /yjJZCjd52SUIBnMMwWHd5W6G7WvpDhke6zFavQhwI1wscO6sgd+Zs2QRXTXQn240vVMOhOXbcR
 gJVLgQrP3E22dNmOVm36r6CtUBEAjPC1hUqEAdjfo2dJ51Gy0WBzAYlskitLsRvjXCyuYHc6GlO
 FlZan4jpx7knrpQJVSg==
X-Proofpoint-ORIG-GUID: JjdVCS3JreK9SalpRBh-ALGn-HkZqNtb
X-Proofpoint-GUID: JjdVCS3JreK9SalpRBh-ALGn-HkZqNtb
X-Authority-Analysis: v=2.4 cv=I5dohdgg c=1 sm=1 tr=0 ts=69a2bc92 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=OU6IiKEG9ziWOZ1dIgkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269513-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6A7001C1D99
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 11:26:07AM +0530, Swati Agarwal wrote:
> On Thu, Feb 26, 2026 at 12:36 PM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Thu, Feb 26, 2026 at 11:38:35AM +0530, Swati Agarwal wrote:
> > > Enable the tertiary usb controller connected to micro usb port in OTG mode
> > > on Lemans EVK platform.
> > >
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
> > >  1 file changed, 52 insertions(+)
> > >
> > > @@ -132,6 +151,15 @@ platform {
> > >               };
> > >       };
> > >
> > > +     usb2_vbus: regulator-usb2-vbus {
> >
> > What is the name (and the label) for the VBus regulator for the first
> > connector? It's visible just under your chunk. Why your chunk doesn't
> > use a similar name?
> Hi Dmitry,
> 
> As per Bjorn previous comment on v2 patch, "use supply name as per
> schematics" so that's the reason I followed that and created a label
> as per regulator name.
> For eg:- if the regulator name is vmmc_sdc then label vmmc_sdc:
> regulator-vmmc-sdc.
> In my case the regulator name in schematics is usb2_vbus, then the
> label I used is usb2_vbus: regulator-usb2-vbus .

Then please add a commit, bringing the other VBUS supply into the shape.
It doesn't look correct to have two VBUS supplies, which are defined
differently.

> 
> Regards,
> Swati

-- 
With best wishes
Dmitry

