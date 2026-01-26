Return-Path: <devicetree+bounces-259662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKeGOTntd2kVmgEAu9opvQ
	(envelope-from <devicetree+bounces-259662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:39:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9301B8DFC0
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 23:39:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A77BE3006789
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B74309F0D;
	Mon, 26 Jan 2026 22:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UV1nWz2K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AlVHJHrw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB456245031
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 22:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769467191; cv=none; b=LhUx6SfBzytJHPkT+44vx5pn7kFqGccjbFCZ4GFAU49z21qiodP5IJD44ZP4qZ9t3fGvniS/uEmbedNMCQESqB9bfTXzKeUYBZV7FBMLlexwSr4lghrrek0wFd9aqx546CsyMXTHB6ECPF05uDnzn6444RIWDeSlKfbWBSMylkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769467191; c=relaxed/simple;
	bh=1CCpl/FguMqumi7zRxf48d8V0/qPwB7xQXq5yu5h6LI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PaxayCxfB/t6J3/VEyy6x5r1jqSj+Zr97Mvy1uaBncScUhFhKqh1K5/15KAcSKxXEbiXiS70+8Hec71rYjnONmqsD2eS9qrcS7GlVW94lVkiAP4l402EQe0B6eB9dlucTko2rJolR5dFBnZ1Z+UXySfWeY6eXzg6Kkrkm0ScEeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UV1nWz2K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AlVHJHrw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgSc62733898
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 22:39:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BJw1pKWD+0SPxOFs+hgSTtgs
	qq17jNCU4R5tqp1NYsk=; b=UV1nWz2KyUcZWvBfeF2yJOLVa6E66dOUMDqGzki1
	0J79beU421bKKmtfK2jGLF72tS/dUUwHTDhDKIDzE/2ZEml0Z0w5JFWXrdh7CGxL
	7EgFjFqrFNXIywOabPaAO/iJqNDDHb1NWCKUtOJQu6i2sBy8Da+pHAJNLGOqGR6D
	2SfiC17FZ/mqyHY7r1U3umy/+pUE7AGNVO4Sg0enprFKkGNZ5eDynfQhqTq8znrc
	P2HRaPkCFT4lgZO9MHsv0eqDQLKQGlqtIGoD3iNecFvYFfKMD8r2EFiMfWTPUw6k
	OTeXEHs521L0Uj9eJr/sH8JRdatUXgD5aPm1WO1SYp444A==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv08kxw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 22:39:48 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5ece01183ffso5689989137.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769467188; x=1770071988; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BJw1pKWD+0SPxOFs+hgSTtgsqq17jNCU4R5tqp1NYsk=;
        b=AlVHJHrwf22kbYA+aD0hFWP62COO2SUTSMRDUsnJzivopV+v2Z65OwPU4NOO1kn8ty
         Ck9E9gmQyNvzXd5lphQ7aQN8PbB7SlvtTWNgUG7W4H2jN0V3H+Exho3/MarjqdTcn8KG
         aKnYGEtPHvL+pkHuPvjHA1XT5ItiVtCvGDoe5ORylzOgSEVrxhCNPxDFHsgQ21pq/Alp
         Q10YUaCLDdEnpuj88QQxPXN//CBeAoh4BuoJ3Tt2TvdEUmOuqc21n0rtSwSh0sEt1H5f
         eqxA+aLONB0DnbKd4fuwz0B1OZU/Wf+7psw7Pzss4CZy3SjbY0+nGmANZQ7eh+MSRwFG
         7H5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769467188; x=1770071988;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BJw1pKWD+0SPxOFs+hgSTtgsqq17jNCU4R5tqp1NYsk=;
        b=KJzJRW9qsGLFlqE4NKexvKS5boirWo+KmwhYAeysI47GuCVdAo6iu5NTFnOFR88rUA
         VlBIeMM+Hbr8kYw4cKd7CpLijYtE5EGzxlgE3Yr2csAPk3CikIKO3wM6uG6J2Iu8wE/m
         ClkjoJBVCjvJPeDGH9BIfT2rXgmGDB186hnG72dx/Fz8/D8ykOePwV/1hfq2/tqPdxZP
         kP9dvF5/NeFaMgh2jed1BEQj/RX3hEfBtp6RqhP0ZoQgTR+2hvSwoZRalMnq3pS679oC
         E7mEGkLN2bEB+jTmUS67vUUyrYXoNcyXud0fe6YaGF4HCgp8Ik4vQ8Fti7mOXkdhpv6W
         nzSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUf9Mords+EBdpcUNSGktKh8+l0lcrXvMHaKiaBCXbGQ+CGCB0nda78TouJRgcDlgk+8vyIX7i0qYU7@vger.kernel.org
X-Gm-Message-State: AOJu0YxFRSmCay8evQCfrufWtzLnNKILywXWnW5CVMB79QtdINJvylI4
	FP0veyAqOYuFpyHTACmCHe84Aq7ely7uU3iwbIB3NCvVstpDi1AcklMTGb6H/Ev/tsbjAoiEkYK
	ti1Z+o7hW0FHaH26nWWED6sQMtJ5wUZZv5Ogb32SenUkkm3IVwT2M9GHrA+z2f6xT
X-Gm-Gg: AZuq6aJdyuPK2Cj+mSKljL8EhBR3qpuVU66dy+Z/gpLIqquyHNV10vVzrrTuQbBlztB
	kNPsK5nYtj8OkQ9F/+pxvmhSAfpnxBz1qyv3T4cm2VpnevibPLDmmEvY2mxhbYPlQJGYQHbmPaZ
	AytmAsejafXlO4tJ9yzaaAJQub5bSwgdWnBximj6BuiRmTjwLqUBXBLZuNkGJqQa7hBUQ3PnDe9
	pc0UDszGtSVMTgi8nmQ1/5zXnXidPNc1ii1lnMg343ZsECJVeNcIkArjHnDNNSVKF6YgL4ZINj6
	QQmDj8mt0XNznCCekhkayYDIhht2SSOgVhgM6naEkyWKxLg8E0qIzlXrHIJiBAjn6Pm7adGSlaZ
	cPbvyJ2Gf7mSe4tvumimQ9BmPxfL9K9qvkh4capfO2cZm09mDtlpzMuojCEWR/aFE/1B9P62i06
	T3wnPi05ueyvl7omo0DLSss4g=
X-Received: by 2002:a05:6102:3a11:b0:5f5:40e5:24c7 with SMTP id ada2fe7eead31-5f7235e41acmr180305137.7.1769467188233;
        Mon, 26 Jan 2026 14:39:48 -0800 (PST)
X-Received: by 2002:a05:6102:3a11:b0:5f5:40e5:24c7 with SMTP id ada2fe7eead31-5f7235e41acmr180300137.7.1769467187848;
        Mon, 26 Jan 2026 14:39:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de45b28cbsm3016634e87.0.2026.01.26.14.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 14:39:47 -0800 (PST)
Date: Tue, 27 Jan 2026 00:39:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lijuan Gao <quic_lijuang@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: talos: Add missing clock-names to GCC
Message-ID: <hhfovqv7rsvhfomvbejv6kt5es43teicsooxwu7j73tva6ts2f@sgjttfe5offu>
References: <20260126-topic-talos_dt_warn-v1-1-c452afc647ad@oss.qualcomm.com>
 <tw2lcfppz6lrmnpcfm5yh5j6iln5amedo2fxbyapx5ralclhjl@tyiretqzszcm>
 <5227ff03-3008-48d4-a22b-f9a9b1d9bec4@oss.qualcomm.com>
 <pjambgdh3fh2ypbun5qnmcpwrz2ajbiulcz64g7epegjy2j4eh@a2zkzepj5ro3>
 <ispsq6ntw47gf5befoe3kpomhnsszolnxbzqpwzu36dr4jbbow@zepv7cxdbsez>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ispsq6ntw47gf5befoe3kpomhnsszolnxbzqpwzu36dr4jbbow@zepv7cxdbsez>
X-Proofpoint-GUID: 5hpQv1_Q-DhApLMf-2cIAcmeh9ox7rIT
X-Authority-Analysis: v=2.4 cv=SvedKfO0 c=1 sm=1 tr=0 ts=6977ed34 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=LKecUyDuG6RTbdPUQNEA:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-ORIG-GUID: 5hpQv1_Q-DhApLMf-2cIAcmeh9ox7rIT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDE5NCBTYWx0ZWRfXwTUP5rq5oQz7
 PPe2gGS5LScIeDHDeYkZEODgj3f8/7O7v/f4ZpQ2B7wvKJHjAwqV4GDuX2VcBWE0idwdsUMuRYI
 E1vOPeYetcZkhc9xyqW0KxKN9odaNjtrecsBUr5pWCRhjASFbhVSKbS64pb9TFv9ypgFnO7kAW2
 3cL4iJl70/7V0W4aHEzOs5uwkHAsOJJM9Bt6GqVzA4z5r3oetXvSMl01lGtgCJ12WIK1CmxVy0T
 JJCMX2t3kDB0tmddlhMySM2Rh+ALr8bKGNYCqJ1MDDMgDEDHX8DxCfUTQGC5GxVITjkGhoB9lTx
 wlvuCZA9Xcq0YVMy7w2cY2N8yL9+xJBYOlS8TjaFeWeShPawSyQa0PzWKTLDtUpLKDSDOfkqDq6
 BVbTfvwujtWq0oX+T90t6hqWF1c0ImDNmAAp/7e2IAljRJ3zZXVLAWpUcgfVs4+/bcmqwNJovrI
 bhd3KI8cNFv7VqGxriw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260194
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259662-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9301B8DFC0
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 02:42:12PM -0600, Bjorn Andersson wrote:
> On Mon, Jan 26, 2026 at 07:53:44PM +0200, Dmitry Baryshkov wrote:
> > On Mon, Jan 26, 2026 at 02:46:20PM +0100, Konrad Dybcio wrote:
> > > On 1/26/26 2:33 PM, Dmitry Baryshkov wrote:
> > > > On Mon, Jan 26, 2026 at 10:45:03AM +0100, Konrad Dybcio wrote:
> > > >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > >>
> > > >> The binding for this clock controller requires that clock-names are
> > > >> present. They're not really used by the kernel driver, but they're
> > > >> marked as required, so someone might have assumed it's done on purpose
> > > >> (where in reality we try to stay away from that since index-based
> > > >> references are faster, take up less space and are already widely used)
> > > >> and referenced it in drivers for another OS.
> > > >>
> > > >> Hence, do the least painful thing and add the missing entries.
> > > > 
> > > > One (me included) would assume that the presense of clock-names imples
> > > > that the clocks are fetched according to those names and become very
> > > > surprised if they are not. As such I'd suggest fixing the bindings instead.
> > > 
> > > The reason why I chose otherwise is in the commit message
> > 
> > Should we then change the driver to also start using clock-names?
> > 
> 
> That's not necessary.
> 
> The binding does define that the DeviceTree must contain clock-names,
> but it doesn't mandate any implementation to actually consider this
> information.

Ack.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> Given that the order of the entries in the "clocks" property is defined
> by the binding an implementation can choose to rely on that and ignore
> the clock-names.
> 
> Regards,
> Bjorn
> 
> > > Let's try to review bindings better next time
> > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

