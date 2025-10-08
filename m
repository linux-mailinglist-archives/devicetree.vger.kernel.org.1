Return-Path: <devicetree+bounces-224415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 18392BC3B65
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 09:41:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D30F34F9D80
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 07:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5D122F5474;
	Wed,  8 Oct 2025 07:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CnxfQovD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507792F25F4
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 07:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759908962; cv=none; b=BK4qTvM3xTLgJN331sN7C2FxLL1N1Uj1mqgQI8IbvnhoTW/UOR8g6w8smzkqDAGLksOsQ4ykg8i70QxfXFirv1YSWUIFp4FFpo2XhDNcnW4yTXVa/FZzxbPT4FeJ+r4gMJN1UMv4bAwHvxAkwyoLLgzgYKx8SWOEVqgyBMn2mrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759908962; c=relaxed/simple;
	bh=ovPhlT67EBW8wa69dniODvAyxrycxNseuMkV8IOqDZk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MjaSy58YIHUNWsqZCDjH0DgB1Ca4ngurhNVLafai7xQuZDm3ZrnPpzvTtQCJQJ8Q3DWZZpfxQbCxmJGqVivo1kxwiY6HAqr+wv3U2NyMUkyEV2Qf/6oe/1BbPRXyVOo91nTmJ3QronNI+ajk0c4Gjtxpbp8V5AX76KwNWiz89K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CnxfQovD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59803fkU003616
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 07:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	44EHVLBf9lEv9QfcJCGopHnLha1JTNsWJh+6EDiLAuc=; b=CnxfQovDpDSuCKsq
	mJiJluf7prd/H3TimnWlOsRvD9e+xz/Ed2K9GGsh2kOiSo5dY2ttM54m978OP6bO
	+SCp5SjeGOMH3U8HVbIi2LvWbMRuCto2+COyE7TdHjmuXSgHBcJoeRsChEe5c9ar
	F+8XrIwNcEqbMnqVkemS5qm2FVz2fCRQ+Jlqi1L61TsqGO7TFNaOsACAwA51ZtPr
	axa8eeaM89KDXbrxQEQqednWqoY2i4xCiutUr+C1UF9gFt4I4snR7fb+4BMBx/6a
	PEGMccJaEeaqm0CpxinijBAnyVvoR11Qc8wuxegIUbUGUegvqhNJD844OmjUxrns
	/gQyTg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvv7shqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 07:36:00 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2681642efd9so71240585ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 00:36:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759908960; x=1760513760;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=44EHVLBf9lEv9QfcJCGopHnLha1JTNsWJh+6EDiLAuc=;
        b=IBzHARYDu9h/g1c+ebuwMV5rTGSgmzTiGElhBaEIvOgJrS2Q/GdQ/tZB6D+yf6yjl7
         YSAoLDN3cM894tN2sqmZCqtQk4YneMt0bZKDQ4vA0zGDQYY9ZQ6jNzeQIMg2sNlwgjrV
         5U71RAtY97WdeLs0n+s2ilqJiZKWdTzZE2sGq+2WcLkh49/W49KaZ4cWfY6VWTd0rK4p
         XR5EFS+k7YWgjaNSuvRC1/Azh94YRfNPXpyfl5IM3xQnQbGp/oWaEw/yYkApz9FmCmSF
         tG6jwsGlGWkpj7YVd7bKL8bIuTHfG32RUCKCKrnGB+965B5NJAYHwzCScWI29ppAAjVM
         N+gQ==
X-Forwarded-Encrypted: i=1; AJvYcCWf6tXd5xhnMMB5h4KcrkaOq8cUdYjN+pinASfrsqkydVApfhssI83oaUrvZ5lzBfDJSAa3BHSiktqq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2pV1kJUrhEZe7+fvgHKO9GMkmQVv519052f4xZgKyP1daljug
	wEdM+veO7PQZsmqX8mMrQdJokzYhizJO0hMHws+gPVy0SkWSfNcZ6zHc/Zfp5J/bYfU/PIVQtr/
	X/ClOF2RLE2IOFvlE1P9PqY5HysrhPiud2pyIt4YooKRlJrpEGhPVR7tGiVuDHm1b
X-Gm-Gg: ASbGncuruMOUQghK3+6Ml0yV7ybSOo9mg7poxN9C9xH8tEvNT46WeW5hSDiSG46Hnku
	THFTH5Tsj7ObGLEcS8et4/674FFBg23ALl3O5XIhFH8Z+g4wkrMQh87knC+GKyAaFZ6rb6Db/eQ
	S3iRcVPvR4eczn4nwjSOJ75iBFq2bziAXpFvt6hu923k37F7ZG/hHchc5ZFmNlmM7TFi0SDAR+a
	CS3mOuS+Em93eUU3jtkq4b1jwMo9q23FeRQaroHUmJ1njTd6aeHtqWfDxhePa/p/I59h/wi5b5l
	Gm48H7fr0A2XIjRc+KL/L0BbtnKzMvRczFkq0fa5XF5eZEr/rukLnsP7TWMPJJnSSfSN2Xrx
X-Received: by 2002:a17:902:f546:b0:269:b2e5:ee48 with SMTP id d9443c01a7336-29027391bdcmr36922155ad.52.1759908959647;
        Wed, 08 Oct 2025 00:35:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGA0HIpa1eYGM2/2CWP/TMlSB1Ie2IF9ksZjRnCg+UoYWsRxcudmptOHTzrOTYahOydcSCUPA==
X-Received: by 2002:a17:902:f546:b0:269:b2e5:ee48 with SMTP id d9443c01a7336-29027391bdcmr36921745ad.52.1759908959015;
        Wed, 08 Oct 2025 00:35:59 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d134859sm188696395ad.57.2025.10.08.00.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 00:35:58 -0700 (PDT)
Date: Wed, 8 Oct 2025 13:05:53 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 04/12] soc: qcom: mdtloader: Add PAS context aware
 qcom_mdt_pas_load() function
Message-ID: <20251008073553.qnjvb76ygkd6rybj@hu-mojha-hyd.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
 <20251007-kvm_rprocv4_next-20251007-v4-4-de841623af3c@oss.qualcomm.com>
 <jlpxaewyitfnms7qmesrsghkwkowabgzo4i4n25kiyp4n5ccvb@cs6txshdju4b>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <jlpxaewyitfnms7qmesrsghkwkowabgzo4i4n25kiyp4n5ccvb@cs6txshdju4b>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNyBTYWx0ZWRfX94gWra6IB1At
 nrx2YvxTm+OQ32NNifJfpS2s+dSTegtS8WqQfa6BCIcZafuMI+568rnrWsSxjSCCwpUb8slkoqO
 Nex0HF+Na7FKBeRhnQ9a4xwPS0PVDRxNq/eu1EfltyXKMwlF/FkRbPnbPw0zYmeGA96pZJQkB6A
 W8dY+Q/5D2HoF115GfJdayF2mFmS7HFJSefnAiBiLrJTeB5rTqIMYOGToGRW1oC2PBQRKuAZUZM
 Spu+jJcmytTAkUlEhPjnoiNbHgbogBshLAFpDOE/T3V+OT8AKgul1MdEl7cSkMtUQnnerpnkMGc
 QWlVPF5mF6J7IIkWpoZO6W2ENjXQ4Ion81CZzyj9SXfGLTPgSBxvlUrK2WJY8/eYDPv7d0/Fpz+
 YnW9RYbySPWW8FjjyNWBznX+UZjhgA==
X-Proofpoint-ORIG-GUID: _LM-0uXRr9dZCr0lLTzucv8_ZW9Y7Yp5
X-Authority-Analysis: v=2.4 cv=WIdyn3sR c=1 sm=1 tr=0 ts=68e61460 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=hN60wAwBI9Lfv06IXC4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: _LM-0uXRr9dZCr0lLTzucv8_ZW9Y7Yp5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040037

On Tue, Oct 07, 2025 at 02:29:20PM -0700, Manivannan Sadhasivam wrote:
> On Tue, Oct 07, 2025 at 10:18:49PM +0530, Mukesh Ojha wrote:
> > Add a PAS context-aware qcom_mdt_pas_load() function for remote
> > processor drivers, which can use the context pointer returned from
> > qcom_scm_pas_ctx_init() to perform metadata verification and memory
> > setup via SMC calls.
> > 
> > The qcom_mdt_pas_load() and qcom_mdt_load() functions are almost
> > similar. Clients using the PAS context-based data structure can adopt
> > qcom_mdt_pas_load(), and in the future, all users of qcom_mdt_load()
> > could be migrated to use qcom_mdt_pas_load() instead.
> > 
> > Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > ---
> >  drivers/soc/qcom/mdt_loader.c       | 29 +++++++++++++++++++++++++++++
> >  include/linux/soc/qcom/mdt_loader.h | 11 +++++++++++
> >  2 files changed, 40 insertions(+)
> > 
> > diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
> > index a5c80d4fcc36..31855836b251 100644
> > --- a/drivers/soc/qcom/mdt_loader.c
> > +++ b/drivers/soc/qcom/mdt_loader.c
> > @@ -486,5 +486,34 @@ int qcom_mdt_load_no_init(struct device *dev, const struct firmware *fw,
> >  }
> >  EXPORT_SYMBOL_GPL(qcom_mdt_load_no_init);
> >  
> > +/**
> > + * qcom_mdt_pas_load() - load the firmware which header is loaded as fw
> > + *
> 
> Could you please reword it to make it clear?

Sure.

> 
> - Mani
> 
> -- 
> மணிவண்ணன் சதாசிவம்

-- 
-Mukesh Ojha

