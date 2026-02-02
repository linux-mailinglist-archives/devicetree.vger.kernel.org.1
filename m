Return-Path: <devicetree+bounces-261879-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGbyHKLCgGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261879-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:28:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 184FCCE375
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 25DE7300B466
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F17FD37AA97;
	Mon,  2 Feb 2026 15:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FBovvPWy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BJ7z85r9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E853793DA
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770046108; cv=none; b=gZtggEWz9IYZnp2r9B1UyZUcd5M9hvGkvxMU5HpnB20R+dGUwK5LEVlBP1tAttGhuxj03SwsavB/5FtiE7o5chrFSriq5JQ7zBV5Ajlw1RVCej6lrs8C38svk68+1B/7fwZ/Kcr3xUXpr1mkW0fSI7U/PdM5SxHECX5X4rUQpTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770046108; c=relaxed/simple;
	bh=1I322/dM+NuBo9CkzAYX3QYx0C17eFG2BAzLvHNf+jY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KttQJHVv9/DnZposlVdIFXQfprfn2jPH7CjVudvb8MZw+rtaEpmgv0o5/17arPI8Bcc1sZ/D2Jw0jbOEovmPFCrtk38w6K/rXBVOiVYqq2BAwqVylzIF2rFODrrS1Rb+jDlYp/4B6L7jEoTFf+zj8RAg99PWwtEt9J6oW8WJh48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FBovvPWy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BJ7z85r9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612AtJkV3915998
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 15:28:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AHkXeN+o7WvzaWGkxUhekKQW
	QkWVCeVyHZlgLTqTpbs=; b=FBovvPWy1RCcvl0Jk2aZ1lN1M0LvwJdmlOtzNhYa
	Oegz2oFTdTrJJhYq0peH3Vc+MqXvZyk6qoWkoDDjdBD/YF+kjIfvgkgsk4K0NH/m
	nG6tdMJ1ctZ2WM8UWXnViw2CM80wYe02KxfvpJ61C4UXvbQ9Fjda68XzGPZoj+rl
	8e1yaHKnjhue4uuQk7wJ+XptW0QzDz7qvxOD4FMW6C86G9vTXkNWHIxOCKVoAiEH
	1sx+uD5oWG3eZ8lBGLDGhbX6+qwQJ5G3hYT9ixpkabkkrFdauhYpqZGhpe1lRpRA
	ELZCYR8m2JKJirWTf5OU8ItoWSTl9ypInHqIVt/HLHSgSw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tkmgs5x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 15:28:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52d3be24cso730933085a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770046106; x=1770650906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AHkXeN+o7WvzaWGkxUhekKQWQkWVCeVyHZlgLTqTpbs=;
        b=BJ7z85r9rzLC7d+p8ICA/RZ+vGcaxV7cI97g+zX4EbxG4YYexNanc4gKDUgthMG/up
         4YLsJGk2JLNCvFJilh4jKlezJ34QNlBPmOhjelooIcSeP96Ucfaua7XX5gYOejPYzK94
         DNdFvs4bi0kJwYO4sS+L9dyE+PX/MudPQv0RxitjxDpTWludvjjyLErXloHnNZEIri/3
         UpDAHOMI9ioRA0nuS+FwEWbrYUsIGscP7xv/kfvmeq4o8w6ULUN2CLsyqUAMDMt84DBc
         DsVYlEbaa+lDMRFPJoV9hxXYnmBrwtZfHl4Ip2LLrQnoF46R2pRQyoMdRUCdQP9uCXgR
         9Zsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770046106; x=1770650906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AHkXeN+o7WvzaWGkxUhekKQWQkWVCeVyHZlgLTqTpbs=;
        b=Ti3zNDVqxcuNJ66Qp0LoDFk4qKcgiTZ7auILbeL1BnwkMyOr3xvLof8DFS9+KmsqrS
         +fFdMtXlVBE0lCaUqluuPu8trhyDuYKP3fMjxAruk9mm5t4KN4DzAcPnFYI8CzEc41Ue
         I4RNmVgXN105eKGCqV8qg/zJp4Oc9ZX5QZ/mZQZKHRRmOLt+e5//dH3cSiMg/6+j2O6i
         215Gvn67RHxmQ9P+aL8X1XJvkqZrtHC0Y0t6zm9HozP/n4oSY1AKBALlAVb6/+JTwhgf
         mz0j+oRRBDRphpax82IKKfpe0a+pfi8Nr5jQzfdDX4QuJNTrmEhfiZ26mK7QM2kWtlhY
         68yg==
X-Forwarded-Encrypted: i=1; AJvYcCUk1OKRYXC4r9+uvFyS4M5qaf7TjlJRs3GoP1Du6APzoysFitJZ2XC1JCtPMk4+fm9OGqsUvjsu4fG3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7rCrbGUAQO68m6F0L394MSSUEfHOARPLjSCZnpRHHpOjug7AL
	bR1GE/9nSyUeLkLDIuOKXKsfcZVpIOXQg1svIEuMir4mxMxB0Ua8gvaD6NrzttR8qX4nUrkX0NJ
	DqYHZxGmEyDz2sWIPnryHR8KWqjQpOMTI6Jk1tCB8JmRT/9YjPGqcRhAnQeXD3VZ4
X-Gm-Gg: AZuq6aK6V/JBlNF66etZgy/D6/x86l4tzGT8wN4dOhLl8C9KQrzT9lyoMbfSBog7QWa
	eMW1ULwIm3s1t4c0VaGZMx2Kd9zJUqZ9hKQ3BPkjbl0ZZWeFOJ+PJ4hoWehqVcTfflNHOcDDgGJ
	aXUV7Jmy70A+YiEEgj7jnIz4JbFkNEJ7oZ5zAFsipdZ/ndA+RXv0dwiqb2Ck55Kfyuiggahm9lf
	lsHeUBQoORYTOr9EY+48hYKR3/2RQ5avMRl2b+6EqU6zd3QLzWbdvEtToqVPddb7JAb5+y6WtAR
	+/F8VO6eg/lNZLqJpunNDy3sqJ9vg0q5BzBb07QJ+AP6YLnh05J9iQJJGbJkr07Eqct777IVieZ
	LpJz6tIknUJM/Ke9/vCg638em
X-Received: by 2002:a05:620a:4708:b0:8c5:3202:8bb1 with SMTP id af79cd13be357-8c9eb227ccemr1519104985a.13.1770046105452;
        Mon, 02 Feb 2026 07:28:25 -0800 (PST)
X-Received: by 2002:a05:620a:4708:b0:8c5:3202:8bb1 with SMTP id af79cd13be357-8c9eb227ccemr1519100185a.13.1770046104805;
        Mon, 02 Feb 2026 07:28:24 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10ee040sm44303982f8f.11.2026.02.02.07.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:28:24 -0800 (PST)
Date: Mon, 2 Feb 2026 17:28:22 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Xin Liu <xin.liu@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, jie.gan@oss.qualcomm.com
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa: Add remoteproc in EL2 device
 trees
Message-ID: <dwf5hn3ijjmr7hguk2msaeidhvwi4kf5p7ih723klqyrko3tig@xhjrmthsdzfi>
References: <20260202055436.818098-1-xin.liu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202055436.818098-1-xin.liu@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=TaebdBQh c=1 sm=1 tr=0 ts=6980c29a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rdvWTO9h8kAPeaJoiacA:9
 a=CjuIK1q_8ugA:10 a=eSe6kog-UzkA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: v-HOWm01k37jabv6AujCj0VzfJfX_x9r
X-Proofpoint-ORIG-GUID: v-HOWm01k37jabv6AujCj0VzfJfX_x9r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyMiBTYWx0ZWRfXwa8oeWdStzNN
 S1pcEWKw9MPuiU1WxCu0vHGx24Zg8YRhD4sfoV4qvteWQBXcmICD5As23FPS0QkNNPYw5UoY/gA
 xWmdIhFQ1RBe6F8TH3e2RI08bwDhu2F/nUWV4XkgeJCjkBPtYkZlglB9Ee6iI+sSEwR0QwrWBTL
 Hob2YQH9ekYCrc9ilwZfOnbY5ZsJktg2aLrlSXzL9JfhG7WfZV5A7fAuhoj+9NWZ+6SsT8JIxCZ
 AUiFCZuVGcRZpkrIn2jYjx0KKHY+fbDOLwyXz5qQmZ3adwmXD9SoV0WmwjhoulRKqpaLiGuWsgT
 3XiE7WlSZUl/7q/jDCq+y9637tZlo/m1BX/JE//TIGKvMbxBGydyq58sEh9R41Als6PrRhlR1jX
 3uqPJIWkLkfnIdGATh5SZX8EsCrDsKV7EH4VGDwyf++VfQ2BMtdU6xbs9hR0PiiiarkSfm1kVTV
 f0eAZh/Kwak4AhwU8Tg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020122
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261879-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 184FCCE375
X-Rspamd-Action: no action

On 26-02-01 21:54:36, Xin Liu wrote:
> All the existing variants Hamoa boards are using Gunyah hypervisor
> which means that, so far, Linux-based OS could only boot in EL1 on
> those devices. However, it is possible for us to boot Linux at EL2
> on these devices [1].
> 
> When running under Gunyah, the remote processor firmware IOMMU streams
> are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
> by the consumer of this DeviceTree. Therefore, describe the firmware
> streams for each remote processor.
> 
> Add remoteproc to the EL2 device trees to generate the corresponding
> -el2.dtb files.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>

I think subject line is misleading. You are not adding the remoteprocs,
but rather overriding iommus properties.

With that fixed:

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

