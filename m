Return-Path: <devicetree+bounces-274571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIO+Jy6wsmlGOwAAu9opvQ
	(envelope-from <devicetree+bounces-274571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:23:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F64271A40
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 229403009833
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4424F227599;
	Thu, 12 Mar 2026 12:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I7sClG/g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="akY7TTJl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8FC1E8332
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773318182; cv=none; b=HstjNVCL2sEGoau0cYb4mN6/o5GFn7WZVUIw6j2mmCulmpxjItOtuYstoZ7AaA5UTKQdEiX9Hzx2NSbHeoBOdT/Wgoh13zPIIM58hvk3rmyFDkTnMAwglLr4kg9zJlF5ZiMUtfMJcQVYsDzT1Z/eRVaGrGOBOTgwvrWEd6cc99Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773318182; c=relaxed/simple;
	bh=QSn0gTtQR7OpFQpCdYNc55uVptdfnCfi6CdDZ7lx1P0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jOpoNVSmMGvLazJA1g7lFJY6Xan2itTxbuvoBDBYK71CiRAMrV+gt6Jdg81sGcCGg2+2CJvzI3D6+2AS2OXHb8EVDzk8OxiyH3puhV6DF8pZzf+ufMYBS/+6ekUay+1pb/DWu+sKwNfMUgCVGvWMMxn/j2iSEhFPVRt0FdwYDFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I7sClG/g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=akY7TTJl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9SNKQ4025754
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:23:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CsSNj7IKgbVQOonk5NNnLn/E
	FkTff98E+R8aowBio8U=; b=I7sClG/g2zQ4u9RqQnXsvhcC/EOBuZhteWCpj3QT
	AQACODkt2QZYkXygo07usbtOBn7lSFA105jbWG/u6XaSSfQs8QoOOgkFBz5zvHT7
	84aFPDXJBvSSMayVOOSwMZrJ0xs9TfE1SeR/r7nWckBCQzWFtYEkOsxk3JlaHlqR
	Df/fKOuz+yNDsYu3t/zE3ewDK9VElsxG6KAn2y2mTaxL9tfw2123c+8SFfCLflIZ
	xPR6LJvCllv7jo3m6GEpIitAd5WKq8UbMklig60fzLVyCPUYK3CZMcIUzW6K7XSz
	5TO64TF56wHvH3leDdro+Ar/9lRSF/8zSq0lLWc38bfa4w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh50t0wa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:23:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd827a356aso630241585a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 05:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773318179; x=1773922979; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CsSNj7IKgbVQOonk5NNnLn/EFkTff98E+R8aowBio8U=;
        b=akY7TTJlzrhwdM/4ZyVHPX1d+x2YLX2xIjXaHpkiluT1mX+X/2kDKA7WGpuzQZ+gDS
         0c2rdJkBZlBbu1JZ8fBtHKvoMjh13V6BkTr+h9CvH4y8/Dd51NmoKRR8U7e1bfMspRPg
         Zx+BO0Oz13YI6HzudBSza6FAAk5lW7wUq6T4TzxfrRNEgUXgyUVeiz8sgd6DQC8cTkj5
         ThUHb+s4lxM9zS6mTlH2cb38ONfmygKZsJ1G1JkhcJfpUltFLS0xDn3RwfXqG4fcoMeb
         2FwCyVv9k6zITUYyWtFLgbaRhtcEA8Yufs/e4BfZZQQRXdj1IXXd91hlSe7+MtPVqV/3
         aPAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773318179; x=1773922979;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CsSNj7IKgbVQOonk5NNnLn/EFkTff98E+R8aowBio8U=;
        b=hid7+/ejtgIB7zGf3tNtLJLRtcmH/6ue/lDZm64PsnJ69bQb6BYRF1fPpMGjloukFr
         F14A+n4jXtWvFEKP2miwaI9YJiWxHaqg4+xKAyX8MuBdL+Ty28GDsFgp6aC2UO7Xs5tK
         a+payFqyo+lHwrkyZjNmc01qZiWnrKPGTDGXJSlIRx7R8s7aPCaveSJ3NZ1bJ0A+D392
         I9oSolcvEa59Vd/64v1p4K/c10wkQg8bnN7rHukZeyqdfJVD9yVsdn1PpvR6mHxyqF7I
         HJjmYJnisp2MvIps7StBs52SnHmq0Uk5jpa/QMKyNtyJstmPrBD0MiK70Z0B25P10/4Q
         gWPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaw97J9P400U6pK7rNT7+TeTIHwLFqK3B36/y4gUTqGSuJ7TKxFtve/RdWi31ks+abyaP+BNIZ82BW@vger.kernel.org
X-Gm-Message-State: AOJu0YzJb5NswhaLMKNSk6HzVfMKvgQkPKPvJeLsCeBfM96erhEOJkN9
	Z3noR4rT8xua0IdeNSzGI+smRq2Ga7u846psvnR++lJtKLTBp3M+TGNfWG8ATdsgDBYCIoze84X
	KRvhaE3RSgymCIdwUhET+b2rBVauQvRaflb7TcZVaxv9CFYuo84Pxh6K1Ny9wzVkF
X-Gm-Gg: ATEYQzzxQkX/tav0uxcKlMmA0D+0YllzdzhbeT/M1LYNri0B6jD5c+d9fAuqMdNY/Ve
	Hb6fJZyi/Bt401TlaU1TS2kf7bo9DK/u6yszi2kgl1sUXqPCyFBEf9e0Ia2MSdwkznBP6N4U+f6
	UL1aBdKziUD8YH3L6BLma1pXr5vW28PFcYAwRj2zCRmUGl0iChXgYgE37tB77oJEd8Dsx0nASMr
	c69y5WYjdrjlq4YZUQPG3GMSkz/Z8UH6la4SjcmbCOOoyjEHAoJ0ib0AebFtCDvjAPFsPUny9SI
	au0hFu0EtsFLHN9jDDwd8pi9s9RzOnNfSET0jVo10eXicbgN/9peaVKZg2Dp5fGu1Mexl/S/DEp
	/Sae0oP5enZ7m/sjuPnAwFmXGH7SfuHaWRw==
X-Received: by 2002:a05:620a:2994:b0:8cd:7cea:aea4 with SMTP id af79cd13be357-8cda19e4ffcmr723887285a.9.1773318179256;
        Thu, 12 Mar 2026 05:22:59 -0700 (PDT)
X-Received: by 2002:a05:620a:2994:b0:8cd:7cea:aea4 with SMTP id af79cd13be357-8cda19e4ffcmr723882585a.9.1773318178610;
        Thu, 12 Mar 2026 05:22:58 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aa73easm217442035e9.3.2026.03.12.05.22.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 05:22:49 -0700 (PDT)
Date: Thu, 12 Mar 2026 14:22:45 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
Message-ID: <3ct2n3prdcjbf356qkdhrcd6uj7kywoa4onyvljlmwv3joyspu@4bozoqkmpf3i>
References: <20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com>
 <20260224-eliza-base-dt-v1-3-54e8e3a5fe43@oss.qualcomm.com>
 <8016eafd-9a6e-47d9-add3-3e3f31f1facb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8016eafd-9a6e-47d9-add3-3e3f31f1facb@oss.qualcomm.com>
X-Proofpoint-GUID: LEXJA9UuFdHdNzuIrexNKWG-onjyz2Ut
X-Authority-Analysis: v=2.4 cv=LvKfC3dc c=1 sm=1 tr=0 ts=69b2b024 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=CrkQYY-1ogOf0s88gfEA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: LEXJA9UuFdHdNzuIrexNKWG-onjyz2Ut
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA5NyBTYWx0ZWRfX/yLletyUuUBd
 A8iSiVfRWyAWD+X9SkvbgoQ2OasdxCdjMtCMVGk/WCo1kGBdVeOR4+KRd9kj5TCfBYgDpmWw5AI
 Wxsfo8ea9HZ2mtEzbL7w+h80HQlkbVaSMWtQK2qTQV/x2QL9tHpM0fFFaLv7MY1vgqPZj+EohvC
 fxTPVHNiX4EU/vVeJsVegJTjGqzEB9THNH/I6luYqQUOQB8+oFlIPtW+FQT5gWMR5HaWPCXXHH/
 uYpRVmcDeEawnabZQlauluVQPBycrz/VteJJEW83XJ2tsGa7nLn9iM9gkD/2EnyZj1O8h2atEEb
 YzIgQYwZA6We0/DaZ5M+5H1k1hQxumyesv19bUJ9o9FnqgsAQeYghlcPyXlo9K688sBetnCy3ur
 507Y6XGpSq6TBn4Ki5mi7wJLFx7DP5OYF8Ms1x757KWUWYqAAa9aYJfKWR8WMvf8tyg314Yn/KB
 n4Qz4rcamR+pA2CNytg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120097
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274571-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 73F64271A40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-02-24 14:09:39, Konrad Dybcio wrote:
> On 2/24/26 1:13 PM, Abel Vesa wrote:
> > The Mobile Test Platform (MTP) is a reference development board
> > based on the Eliza SoC. So add dedicated board dts for it.
> > 
> > The initial support enables:
> > - UART debug console
> > - Ob-board UFS storage
> > - Qualcomm RPMh regulators (PMIC) and VPH_PWR
> > - board specific clocks & reserved GPIO ranges
> > 
> > Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> I didn't cross-check the regulator settings, but I hope you don't like
> this kind of fried chips!

Will double check.

> 
> 
> > +&qupv3_2 {
> > +	status = "okay";
> > +};
> 
> These are normally mass-AC-allowed for a given platform, feel free to
> enable by default

Sure, but then this will make this SoC the one-off, AFAICT.

> 
> > +
> > +&tlmm {
> > +	/* reserved for secure world */
> > +	gpio-reserved-ranges = <20 4>, <111 2>, <118 1>;
> 
> Would you know what they connect to? Please describe (like in x1-crd.dtsi)

Yep. Will describe.

> 
> > +};
> > +
> > +&uart14 {
> > +	compatible = "qcom,geni-debug-uart";
> > +	status = "okay";
> 
> Please keep a \n before status for consistency

Will do.

Thanks for reviewing.

